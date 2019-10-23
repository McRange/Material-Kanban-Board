var materialKanban = (function () {
    "use strict";
    var scriptVersion = "1.1.0";
    var util = {
        version: "1.0.2b",
        escapeHTML: function (str) {
            if (str === null) {
                return null;
            }
            if (typeof str === "undefined") {
                return;
            }
            if (typeof str === "object") {
                try {
                    str = JSON.stringify(str);
                } catch (e) {
                    /*do nothing */
                }
            }
            try {
                return apex.util.escapeHTML(String(str));
            } catch (e) {
                str = String(str);
                return str
                    .replace(/&/g, "&amp;")
                    .replace(/</g, "&lt;")
                    .replace(/>/g, "&gt;")
                    .replace(/"/g, "&quot;")
                    .replace(/'/g, "&#x27;")
                    .replace(/\//g, "&#x2F;");
            }
        },
        loader: {
            start: function (id) {

                try {
                    apex.util.showSpinner($(id));
                } catch (e) {
                    /* define loader */
                    var faLoader = $("<span></span>");
                    faLoader.attr("id", "loader" + id);
                    faLoader.addClass("ct-loader fa-stack fa-3x");

                    /* define circle for loader */
                    var faCircle = $("<i></i>");
                    faCircle.addClass("fa fa-circle fa-stack-2x");
                    faCircle.css("color", "rgba(121,121,121,0.6)");

                    /* define refresh icon with animation */
                    var faRefresh = $("<i></i>");
                    faRefresh.addClass("fa fa-refresh fa-spin fa-inverse fa-stack-1x");
                    faRefresh.css("animation-duration", "1.8s");

                    /* append loader */
                    faLoader.append(faCircle);
                    faLoader.append(faRefresh);
                    $(id).append(faLoader);
                }
            },
            stop: function (id) {
                $(id + " > .u-Processing").remove();
                $(id + " > .ct-loader").remove();
            }
        },
        jsonSaveExtend: function (srcConfig, targetConfig, deepMerge) {
            /* set deep merge parameter to true when not set */
            if (deepMerge == undefined)
                deepMerge = true;

            var finalConfig = {};
            /* try to parse config json when string or just set */
            if (typeof targetConfig === 'string') {
                try {
                    targetConfig = JSON.parse(targetConfig);
                } catch (e) {
                    console.error("Error while try to parse udConfigJSON. Please check your Config JSON. Standard Config will be used.");
                    console.error(e);
                    console.error(targetConfig);
                }
            } else {
                finalConfig = targetConfig;
            }
            /* try to merge with standard if any attribute is missing */
            try {
                finalConfig = $.extend(deepMerge,
                    [], srcConfig, targetConfig);
            } catch (e) {
                console.error('Error while try to merge udConfigJSON into Standard JSON if any attribute is missing. Please check your Config JSON. Standard Config will be used.');
                console.error(e);
                finalConfig = srcConfig;
                console.error(finalConfig);
            }
            return finalConfig;
        },
        noDataMessage: {
            show: function (id, text) {
                var div = $("<div></div>")
                    .css("margin", "12px")
                    .css("text-align", "center")
                    .css("padding", "64px 0")
                    .addClass("nodatafoundmessage");

                var subDiv = $("<div></div>");

                var subDivSpan = $("<span></span>")
                    .addClass("fa")
                    .addClass("fa-search")
                    .addClass("fa-2x")
                    .css("height", "32px")
                    .css("width", "32px")
                    .css("color", "#D0D0D0")
                    .css("margin-bottom", "16px");

                subDiv.append(subDivSpan);

                var span = $("<span></span>")
                    .text(text)
                    .css("display", "block")
                    .css("color", "#707070")
                    .css("font-size", "12px");

                div
                    .append(subDiv)
                    .append(span);

                $(id).append(div);
            },
            hide: function (id) {
                $(id).children('.nodatafoundmessage').remove();
            }
        },
        groupBy: function (list, keyGetter) {
            var map = new Map();
            list.forEach(function (item) {
                var key = keyGetter(item);
                if (!map.has(key)) {
                    map.set(key, [item]);
                } else {
                    map.get(key).push(item);
                }
            });
            return map;
        }
    };

    return {
        /* Initialize function for cards */
        initialize: function (
            parentID, ajaxID, noDataFoundMessage, udConfigJSON, items2Submit, bindRefreshOnId, escapeRequired, enableDragnDrop, enableDragnDropGroups) {
            var stdConfigJSON = {
                "refresh": 0,
                "staticColumns": [{
                    "COLUMN_ID": "1",
                    "COLUMN_TITLE": "To Do",
                    "COLUMN_ICON": "fa-calendar"
                                    }, {
                    "COLUMN_ID": "2",
                    "COLUMN_TITLE": "In Progress",
                    "COLUMN_ICON": "fa-wrench"
                                    }, {
                    "COLUMN_ID": "3",
                    "COLUMN_TITLE": "Done",
                    "COLUMN_ICON": "fa-check"
                }],
                "dynamicColumns": false,
                "groupExtension": false,
                "groupColWidth": 6,
                "allowDragItemsBetweenGroups": false,
                "groupCollapsible": false,
                "printDataToConsole": false
            };

            var configJSON = {};
            configJSON = util.jsonSaveExtend(stdConfigJSON, udConfigJSON, false);

            var columnsData = configJSON.staticColumns;
            var lastItemsData = null;
            var drakeItems = null;
            var drakeGroups = null;
            var container = null;
            var groupColWidth = 0;
            var itemColWidth = 100;

            /* get parent */
            var parent = $("#" + parentID);

            if (parent.length > 0) {

                /* define container and add it to parent */
                container = drawContainer(parent);

                /* get data and draw */
                getData();

                /* try to bind apex refreh event if "apex" exists */
                try {
                    apex.jQuery("#" + bindRefreshOnId).bind("apexrefresh", function () {
                        if (container.children('span').length == 0) {
                            if (drakeItems) {
                                drakeItems.destroy();
                            }
                            if (drakeGroups) {
                                drakeGroups.destroy();
                            }
                            getData();
                        }
                    });
                } catch (e) {
                    console.log("Can't bind refresh event on " + bindRefreshOnId + ". Apex is missing");
                    console.log(e);
                }

                /* Used to set a refresh via json configuration */
                if (configJSON.refresh > 0) {
                    setInterval(function () {
                        if (container.children('span').length == 0) {
                            if (drakeItems) {
                                drakeItems.destroy();
                            }
                            if (drakeGroups) {
                                drakeGroups.destroy();
                            }
                            getData();
                        }
                    }, configJSON.refresh * 1000);
                }


            } else {
                console.log("Can't find parentID: " + parentID);
            }


            /***********************************************************************
             **
             ** function to get data from Apex
             **
             ***********************************************************************/
            function getData() {
                if (ajaxID) {
                    util.loader.start(container);

                    apex.server.plugin(
                        ajaxID, {
                            pageItems: items2Submit,
                            x01: "getData",
                        }, {
                            success: function (data) {
                                parent.trigger('materialkanbandataloaded');
                                drawKanbanRegion(data);
                                parent.trigger('materialkanbandatarendered');
                            },
                            error: function (data) {
                                container.empty();
                                console.log(data.responseText);
                                //container.append("<span>Error occured please check console for more information</span>");
                            },
                            dataType: "json"
                        });
                } else {
                    try {
                        util.loader.start(container);
                        /* just wait 5 seconds to see loader */
                        setTimeout(function () {
                            drawKanbanRegion(dataJSON);
                        }, 500);

                    } catch (e) {
                        console.log('need data json');
                        console.log(e);
                    }
                }
            }

            /************************************************************************
             **
             ** Used to draw the whole region
             **
             ***********************************************************************/
            function drawKanbanRegion(itemsData) {

                if (configJSON.printDataToConsole) {
                    console.log(JSON.stringify(itemsData));
                    console.log(itemsData);
                }
                lastItemsData = itemsData.row;

                /* empty container for new stuff */
                container.empty();

                if (configJSON.dynamicColumns) {
                    var dynamicColumnsData = [];
                    /* try to find dynmaic columns from items */
                    var columnsGroupedData = util.groupBy(itemsData.row, function (itemData) {
                        return itemData.COLUMN_ID;
                    });
                    columnsGroupedData.forEach(function (itemsByGroupData, key, map) {
                        /* skip column items with no COLUMN_ID */
                        if (key) {
                            dynamicColumnsData.push(itemsByGroupData[0]);
                        }
                    });
                    columnsData = dynamicColumnsData;
                }

                /* escape column attributes */
                $.each(columnsData, function (index, columnData) {
                    if (escapeRequired !== false) {
                        columnData.COLUMN_ID = util.escapeHTML(columnData.COLUMN_ID);
                        columnData.COLUMN_TITLE = util.escapeHTML(columnData.COLUMN_TITLE);
                        columnData.COLUMN_ICON = util.escapeHTML(columnData.COLUMN_ICON);
                        columnData.COLUMN_ICON_COLOR = util.escapeHTML(columnData.COLUMN_ICON_COLOR);
                        columnData.COLUMN_HEADER_STYLE = util.escapeHTML(columnData.COLUMN_HEADER_STYLE);
                        columnData.COLUMN_COLOR = util.escapeHTML(columnData.COLUMN_COLOR);
                    }

                    if (columnData.COLUMN_COLOR == undefined) {
                        columnData.COLUMN_COLOR = "hsl(" + (index * 46) % 350 + ", 55%, 60%)";
                    }
                    columnData.COLUMN_INDEX = columnData.COLUMN_INDEX ? columnData.COLUMN_INDEX : index;
                });


                if (columnsData && columnsData.length > 0) {
                    /* calculate column width depeding on column count and group extension */

                    groupColWidth = (configJSON.groupExtension ? (100 / ((columnsData.length * 12 / configJSON.groupColWidth) + 1)) : 0);
                    itemColWidth = (100 - groupColWidth) / columnsData.length;

                    groupColWidth = Math.floor(groupColWidth * 100) / 100;
                    itemColWidth = Math.floor(itemColWidth * 100) / 100;

                    drawHeaderRegion(container);
                    var cardContainer = drawRow(container);
                    cardContainer.addClass("kb-group-container");

                    /* draw items and add it to the container */
                    if (itemsData.row && itemsData.row.length > 0) {

                        /* group items by defined groups if group extension is set */
                        var itemsGroupedData = util.groupBy(itemsData.row,
                            function (itemGroupData) {
                                return configJSON.groupExtension ? itemGroupData.GROUP_ID : 1
                            });

                        /* create for each group a row */
                        itemsGroupedData.forEach(function (itemGroupedData, key, map) {
                            /* skip group items with no GROUP_ID */
                            if (!key) return;

                            var groupRow = drawRow(cardContainer);
                            groupRow.addClass("kb-row");
                            groupRow.attr("groupid", key);

                            if (configJSON.groupExtension) {
                                drawGroupRegion(groupRow, itemGroupedData[0]);
                            };

                            $.each(columnsData, function (index, columnData) {
                                drawItemRegion(groupRow, itemGroupedData, columnData);
                            });

                            // add collapsable feature to buttons
                            if (configJSON.groupExtension && configJSON.groupCollapsible) {
                                groupRow.find(".kb-collapsable").click(function () {
                                    toggleGroup(groupRow, true);
                                });

                                // set initial collapse status
                                if (itemGroupedData[0].GROUP_COLLAPESED === 1) {
                                    toggleGroup(groupRow, false);
                                }
                            }

                        });

                        /* check for new group link */
                        var itemsWithNewGroupLink = itemsData.row.filter(
                            function (itemData) {
                                return itemData.NEW_GROUP_LINK;
                            });


                        // add new group button
                        if (configJSON.groupExtension && itemsWithNewGroupLink.length > 0) {
                            drawNewGroupCard(container, itemsWithNewGroupLink[0].NEW_GROUP_LINK);
                        }

                        /* add drag'n drop feature */
                        if (enableDragnDrop) {
                            addDragulaToItems();
                            if (configJSON.groupExtension && enableDragnDropGroups) {
                                addDragulaToGroups();
                            }

                        }

                    } else {
                        cardContainer.css("min-height", "");
                        util.noDataMessage.show(cardContainer, noDataFoundMessage);
                    }


                } else {
                    console.log("No columns defined!");
                }

            }

            /***********************************************************************
             **
             ** Used to draw a container
             **
             ***********************************************************************/
            function drawContainer(parent) {
                var div = $("<div></div>");
                div.addClass("s-g-container");
                div.css("min-height", "170px")
                parent.append(div);
                return (div);
            }

            /***********************************************************************
             **
             ** Used to draw a row
             **
             ***********************************************************************/
            function drawRow(parent) {
                var div = $("<div></div>");
                div.addClass("s-g-row");
                parent.append(div);
                return (div);
            }

            /************************************************************************
             **
             ** Used to draw the header region
             **
             ***********************************************************************/
            function drawHeaderRegion(parent) {
                var row = drawRow(parent);
                row.addClass("kb-row");
                /* add empty region in left corner then using group extension */
                if (configJSON.groupExtension) {
                    var col = $("<div></div>");
                    col.addClass("kb-col kb-col-header");
                    col.attr("style", "width:" + groupColWidth + "%");
                    row.append(col);
                }

                $.each(columnsData, function (index, columnData) {

                    /* define new column for rows */
                    col = $("<div></div>");
                    col.addClass("kb-col kb-col-header");
                    col.attr("style", "width:" + itemColWidth + "%");
                    col.attr("id", columnData.COLUMN_ID);

                    var colHeader = $("<div></div>");

                    /* add header styles */
                    colHeader.addClass("kb-col-header-content");
                    var stripeStdStyle = "border-top-color: " + columnData.COLUMN_COLOR + ";";
                    colHeader.attr("style", columnData.COLUMN_HEADER_STYLE || stripeStdStyle);

                    /* add title */
                    var title = (columnData.COLUMN_TITLE != undefined) ? columnData.COLUMN_TITLE : '';
                    colHeader.append('<p class="title">' + title + '</p>');

                    col.append(colHeader);
                    row.append(col);
                });
            }

            /***********************************************************************
             **
             ** Used to draw region for group header with card item
             **
             ***********************************************************************/
            function drawGroupRegion(parent, groupData) {
                if (escapeRequired !== false) {
                    groupData.GROUP_ID = util.escapeHTML(groupData.GROUP_ID);
                    groupData.GROUP_ICON = util.escapeHTML(groupData.GROUP_ICON);
                    groupData.GROUP_ICON_COLOR = util.escapeHTML(groupData.GROUP_ICON_COLOR);
                    groupData.GROUP_HEADER_STYLE = util.escapeHTML(groupData.GROUP_HEADER_STYLE);
                    groupData.GROUP_TITLE = util.escapeHTML(groupData.GROUP_TITLE);
                    groupData.GROUP_FOOTER = util.escapeHTML(groupData.GROUP_FOOTER);
                }

                var groupRegionCol = $("<div></div>");
                groupRegionCol.addClass("kb-col kb-group-region");
                groupRegionCol.attr("style", "width:" + groupColWidth + "%");
                parent.append(groupRegionCol);

                var groupcard = drawItemCard(
                    groupRegionCol, {
                        "isGroupCard": true,
                        "ID": groupData.GROUP_ID,
                        "ICON": groupData.GROUP_ICON,
                        "ICON_COLOR": groupData.GROUP_ICON_COLOR,
                        "HEADER_STYLE": groupData.GROUP_HEADER_STYLE,
                        "TITLE": groupData.GROUP_TITLE,
                        "FOOTER": groupData.GROUP_FOOTER,
                        "LINK": groupData.GROUP_LINK
                    });

                groupcard.addClass("kb-group-card");

                // add de/collapsible button
                if (configJSON.groupCollapsible) {
                    var collapsIcon = $("<i></i>");
                    collapsIcon.addClass("fa fa-chevron-down");
                    var collapsButton = $("<div></div>");
                    collapsButton.addClass("kb-collapsable kb-collapse");
                    collapsButton.append(collapsIcon);
                    $(groupcard.find(".card-header")[0]).before(collapsButton);

                    var expandIcon = $("<i></i>");
                    expandIcon.addClass("fa fa-chevron-up");
                    var expandButton = $("<div></div>");
                    expandButton.addClass("kb-collapsable kb-expand");
                    expandButton.append(expandIcon);
                    $(groupcard.find(".card-header")[0]).before(expandButton);
                    expandButton.attr("style", "display:none");
                }
            }

            /***********************************************************************
             **
             ** Used to draw region for items with card items
             **
             ***********************************************************************/
            function drawItemRegion(parent, itemsData, columnData) {

                var regionCol = $("<div></div>");
                regionCol.addClass("kb-col kb-item-region");
                regionCol.attr("style", "width:" + itemColWidth + "%");
                parent.append(regionCol);

                var regionContent = $("<div></div>");
                regionContent.addClass("kb-col-content");
                var stripeStdStyle = "border-left-color: " + columnData.COLUMN_COLOR + ";";
                regionContent.attr("style", columnData.COLUMN_HEADER_STYLE || stripeStdStyle);
                regionCol.append(regionContent);

                var innerheader = $("<div></div>");
                innerheader.addClass("kb-col-inner-header");
                var title = (columnData.COLUMN_TITLE != undefined) ? columnData.COLUMN_TITLE : '';
                innerheader.append('<p class="title">' + title + '</p>');
                regionContent.append(innerheader);

                var itemRegion = $("<div></div>");
                itemRegion.addClass("kb-item-container");
                itemRegion.attr("columnid", columnData.COLUMN_ID);
                regionContent.append(itemRegion);

                /* draw new item card in the first column if link is given */

                if (columnData.COLUMN_INDEX == 0) {
                    var itemsWithNewItemLink = itemsData.filter(function (itemData) {
                        return itemData.GROUP_NEW_ITEM_LINK;
                    });

                    if (itemsWithNewItemLink.length > 0) {
                        itemRegion.addClass("kb-item-container-with-new-card");
                        drawNewCard(regionContent, itemsWithNewItemLink[0].GROUP_NEW_ITEM_LINK);
                    }
                }

                var filteredItems = itemsData.filter(function (itemData) {
                    return itemData.COLUMN_ID == columnData.COLUMN_ID && itemData.ID;
                });
                drawCards(filteredItems, itemRegion, columnData);
            }

            /***********************************************************************
             **
             ** Used to draw cards
             **
             ***********************************************************************/
            function drawCards(cardsData, parent, columnData) {
                /* check data and draw cards */
                if (cardsData && cardsData.length > 0) {
                    /* define row and add it to the container */

                    $.each(cardsData, function (index, cardData) {
                        if (escapeRequired !== false) {
                            cardData.ID = util.escapeHTML(cardData.ID);
                            cardData.ICON = util.escapeHTML(cardData.ICON);
                            cardData.ICON_COLOR = util.escapeHTML(cardData.ICON_COLOR);
                            cardData.HEADER_STYLE = util.escapeHTML(cardData.HEADER_STYLE);
                            cardData.TITLE = util.escapeHTML(cardData.TITLE);
                            cardData.FOOTER = util.escapeHTML(cardData.FOOTER);
                        }

                        drawItemCard(
                            parent, {
                                "isGroupCard": false,
                                "ID": cardData.ID,
                                "ICON": cardData.ICON,
                                "ICON_COLOR": cardData.ICON_COLOR,
                                "HEADER_STYLE": cardData.HEADER_STYLE,
                                "TITLE": cardData.TITLE,
                                "FOOTER": cardData.FOOTER,
                                "LINK": cardData.LINK
                            },
                            columnData);
                    });
                }
            }

            /***********************************************************************
             **
             ** Used to draw a card
             **
             ***********************************************************************/
            function drawItemCard(parent, cardData, columnData) {

                /* columnData can be undefined */

                /* define card */
                var card = $("<div></div>");
                card.addClass("kb-card");

                card.attr("itemid", cardData.ID);

                /* define header for card */
                var cardHeader = $("<div></div>");
                cardHeader.addClass("card-header");

                /* add icon to card header */
                if (cardData.ICON || (columnData && columnData.COLUMN_ICON)) {
                    var icon = $("<i></i>");
                    icon.addClass("fa " + (cardData.ICON || columnData.COLUMN_ICON));

                    if ((cardData.ICON_COLOR && cardData.ICON_COLOR.length > 0) || (columnData && columnData.COLUMN_ICON_COLOR && columnData.COLUMN_ICON_COLOR.length > 0)) {

                        icon.attr("style", "color:" + (cardData.ICON_COLOR || columnData.COLUMN_ICON_COLOR));
                    }

                    cardHeader.append(icon);
                }

                /* add header styles */
                if (cardData.HEADER_STYLE) {
                    /* add header styles */
                    cardHeader.attr("style", cardData.HEADER_STYLE);
                } else if (columnData && columnData.COLUMN_COLOR) {
                    cardHeader.attr("style", "background:" + columnData.COLUMN_COLOR);
                }

                /* append header to cards */
                card.append(cardHeader);

                /* define card body */
                var cardBody = $("<div></div>");
                cardBody.addClass("card-content");

                /* add title to body */
                var title = (cardData.TITLE) ? cardData.TITLE : '';
                cardBody.append('<p class="title">' + title + '</p>');

                /* append body to card */
                if (cardData.LINK) {
                    var link = $("<a></a>");
                    link.attr("href", cardData.LINK);
                    link.append(cardBody);
                    card.append(link);
                } else {
                    card.append(cardBody);
                }

                if (cardData.FOOTER) {
                    /* define footer */
                    var cardFooter = $("<div></div>");
                    cardFooter.addClass("card-footer");

                    /* define footer text */
                    var cardFooterContent = $("<div></div>");
                    cardFooterContent.append(cardData.FOOTER);

                    /* add footer text to footer */
                    cardFooter.append(cardFooterContent);

                    /* add footer to card */
                    card.append(cardFooter);
                }

                parent.append(card);
                return card;
            }

            /***********************************************************************
             **
             ** Used to draw new card 
             **
             ***********************************************************************/
            function drawNewCard(parent, url) {
                var cardNew = $("<div></div>");
                cardNew.addClass("kb-new-card");

                var icon = $("<i></i>");
                icon.addClass("fa fa-plus");
                cardNew.append(icon);

                var link = $("<a></a>");
                link.attr("href", url);
                link.append(cardNew);

                var newItemRegion = $("<div></div>");
                newItemRegion.addClass("kb-new-item-region");
                newItemRegion.append(link);

                parent.append(newItemRegion);
            }

            /***********************************************************************
             **
             ** Draw new group card
             **
             ***********************************************************************/
            function drawNewGroupCard(parent, url) {
                var newGroupRow = drawRow(parent);
                newGroupRow.addClass("kb-row");

                var parent = newGroupRow;
                var groupRegionCol = $("<div></div>");
                groupRegionCol.addClass("kb-group-region kb-new-group-region");
                parent.append(groupRegionCol);

                drawNewCard(groupRegionCol, url);
            }

            /***********************************************************************
             **
             ** Used to update icons and colors of a card depends on given column
             **
             ***********************************************************************/
            function updateCardHeader(_card, columnId) {

                /* try to find data of the card */
                var cardId = _card.attr("itemid");

                var cardData = lastItemsData.find(function (itemData) {
                    return itemData.ID == cardId;
                });

                var columnData = columnsData.find(function (columnData) {
                    return columnData.COLUMN_ID == columnId;
                });

                var cardHeader = _card.find(".card-header");
                var icon = cardHeader.find("i");

                if ((cardData && cardData.ICON) || (columnData && columnData.COLUMN_ICON)) {

                    icon.removeClass().addClass("fa " + (cardData.ICON || columnData.COLUMN_ICON));

                    if ((cardData.ICON_COLOR && cardData.ICON_COLOR.length > 0) || (columnData && columnData.COLUMN_ICON_COLOR && columnData.COLUMN_ICON_COLOR.length > 0)) {
                        icon.attr("style", "color:" + (cardData.ICON_COLOR || columnData.COLUMN_ICON_COLOR));
                    }
                }

                if (!cardData.HEADER_STYLE && columnData && columnData.COLUMN_COLOR) {
                    cardHeader.attr("style", "background:" + columnData.COLUMN_COLOR);
                }
            }

            /***********************************************************************
             **
             ** Used to toggle collapse / expande group
             **
             ***********************************************************************/
            function toggleGroup(groupRow, triggerEvent) {
                groupRow.find(".kb-collapsable").toggle();
                groupRow.find(".card-footer").toggle();
                groupRow.find(".kb-item-region").toggle();
                var group = groupRow.find(".kb-group-region");
                group.toggleClass("kb-collapsed");

                if (triggerEvent) {
                    var collapsedData = {
                        "groupId": groupRow.attr("groupid"),
                        "collapsed": group.hasClass("kb-collapsed")
                    };
                    parent.trigger('materialkanbangroupcollapsed', [collapsedData]);
                }
            }

            /***********************************************************************
             **
             ** Used to handle drag'n Drop events for items
             **
             ***********************************************************************/
            function addDragulaToItems() {

                var sourceItemIndex = 0;
                var sourceItemSibling = null;

                drakeItems = dragula($(parent.find('.kb-item-container')).toArray(), {
                    direction: 'vertical',
                    accepts: function (el, target, source, sibling) {

                        if (configJSON.allowDragItemsBetweenGroups) {
                            return true;
                        }

                        /* check if the Group ID of target and source group are equal */
                        return $(source).closest('.kb-row').attr("groupid") == $(target).closest('.kb-row').attr("groupid");
                    }
                });

                /*                    
                On mobile this prevents the default page scrolling while dragging an item. 
                https://github.com/bevacqua/dragula/issues/487
                */
                $('.kb-item-container > .kb-card').each(function (index, card) {
                    $(card).addClass("kb-card-draggable");
                    card.addEventListener('touchmove', function (event) {
                        event.preventDefault();
                    });
                });

                drakeItems.on("drag", function (el, source) {
                    var _el = $(el);
                    var _source = $(source);

                    sourceItemIndex = _el.index();
                    var next = _el.next();
                    sourceItemSibling = next.length > 0 ? $(next[0]) : null;

                    var dragData = {
                        "itemId": _el.attr("itemid"),
                        "sourceGroupId": _source.closest('.kb-row').attr("groupid"),
                        "sourceColumnId": _source.attr("columnid"),
                        "sourceItemIndex": sourceItemIndex
                    };

                    parent.trigger('materialkanbandrag', [dragData]);
                });
                drakeItems.on("drop", function (el, target, source, sibling) {
                    var _el = $(el);
                    var _target = $(target);
                    var _source = $(source);

                    var dropData = {
                        "itemId": _el.attr("itemid"),
                        "sourceGroupId": _source.closest('.kb-row').attr("groupid"),
                        "sourceColumnId": _source.attr("columnid"),
                        "sourceItemIndex": sourceItemIndex,
                        "targetGroupId": _target.closest('.kb-row').attr("groupid"),
                        "targetColumnId": _target.attr("columnid"),
                        "targetItemIndex": _el.index()
                    };

                    /*
                    console.log("moved item " +
                        dropData.itemId + " from " +
                        dropData.sourceGroupId + "/" +
                        dropData.sourceColumnId + "/" + 
                        dropData.sourceItemIndex + " to " +
                        dropData.targetGroupId + "/" +
                        dropData.targetColumnId + "/" + 
                        dropData.targetItemIndex
                    );
                    */

                    try {
                        apex.server.plugin(
                            ajaxID, {
                                pageItems: items2Submit,
                                x01: "moveItem",
                                x02: dropData.itemId,
                                x03: dropData.sourceGroupId,
                                x04: dropData.sourceColumnId,
                                x05: dropData.sourceItemIndex,
                                x06: dropData.targetGroupId,
                                x07: dropData.targetColumnId,
                                x08: dropData.targetItemIndex
                            }, {
                                success: function (d) {
                                    /*console.log(d);*/
                                },
                                error: function (d) {
                                    /* move item back to last knwon position */
                                    if (sourceItemSibling) {
                                        _el.insertBefore(sourceItemSibling);
                                    } else {
                                        _source.append(_el);
                                    }
                                    updateCardHeader(_el, _source.attr("columnid"));

                                    console.error(d.responseText);

                                    parent.trigger('materialkanbandroperror', [dropData]);
                                },
                                dataType: "json"
                            });
                    } catch (e) {
                        console.log("Can't call server on drag'n drop event. Apex is missing");
                        console.log(e);
                    }

                    updateCardHeader(_el, _target.attr("columnid"));

                    parent.trigger('materialkanbandrop', [dropData]);
                });
            }

            /***********************************************************************
             **
             ** Used to handle drag'n Drop events for groups
             **
             ***********************************************************************/
            function addDragulaToGroups() {

                var sourceItemIndex = 0;
                var sourceItemSibling = null;

                drakeGroups = dragula($(parent.find('.kb-group-container')).toArray(), {
                    direction: 'vertical',
                    moves: function (el, container, handle) {
                        var groupcard = $(handle).closest('.kb-group-card');
                        return groupcard.length > 0;
                    }
                });

                /*                    
                On mobile this prevents the default page scrolling while dragging an item. 
                https://github.com/bevacqua/dragula/issues/487
                */
                $('.kb-group-region > .kb-card').each(function (index, card) {
                    $(card).addClass("kb-card-draggable");
                    card.addEventListener('touchmove', function (event) {
                        event.preventDefault();
                    });
                });


                drakeGroups.on("drag", function (el, source) {
                    var _el = $(el);
                    sourceItemIndex = _el.index();
                    var next = _el.next();
                    sourceItemSibling = next.length > 0 ? $(next[0]) : null;

                    var dragData = {
                        "groupId": _el.attr("groupid"),
                        "sourceGroupIndex": sourceItemIndex
                    };

                    /*
                    console.log("drag group " +
                        dragData.groupId + " from " +
                        dragData.sourceGroupIndex
                    );
                    */

                    parent.trigger('materialkanbandraggroup', [dragData]);
                });
                drakeGroups.on("drop", function (el, target, source, sibling) {
                    var _el = $(el);
                    var _target = $(target);
                    var _source = $(source);

                    var dropData = {
                        "groupId": _el.attr("groupid"),
                        "sourceGroupIndex": sourceItemIndex,
                        "targetGroupIndex": _el.index()
                    };

                    /*
                    console.log("moved group " +
                        dropData.groupId + " from " +
                        dropData.sourceGroupIndex + " to " +
                        dropData.targetGroupIndex
                    );
                    */

                    try {
                        apex.server.plugin(
                            ajaxID, {
                                pageItems: items2Submit,
                                x01: "moveGroup",
                                x02: dropData.groupId,
                                x03: dropData.sourceGroupIndex,
                                x04: dropData.targetGroupIndex
                            }, {
                                success: function (d) {
                                    /*console.log(d);*/
                                },
                                error: function (d) {
                                    /* move item back to last knwon position */
                                    if (sourceItemSibling) {
                                        _el.insertBefore(sourceItemSibling);
                                    } else {
                                        _source.append(_el);
                                    }

                                    console.error(d.responseText);

                                    parent.trigger('materialkanbandroperror', [dropData]);
                                },
                                dataType: "json"
                            });
                    } catch (e) {
                        console.log("Can't call server on drag'n drop event. Apex is missing");
                        console.log(e);
                    }

                    parent.trigger('materialkanbandropgroup', [dropData]);
                });
            }
        }
    }
})();
