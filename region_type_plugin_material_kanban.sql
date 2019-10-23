prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.10.04'
,p_release=>'19.2.0.00.15'
,p_default_workspace_id=>31794622593588931092
,p_default_application_id=>96778
,p_default_id_offset=>0
,p_default_owner=>'RAINER'
);
end;
/
 
prompt APPLICATION 96778 - Plug-in Samples
--
-- Application Export:
--   Application:     96778
--   Name:            Plug-in Samples
--   Date and Time:   23:03 Tuesday October 22, 2019
--   Exported By:     MCRANGE@GMX.DE
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 89964721284116067985
--   Manifest End
--   Version:         19.2.0.00.15
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_api.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/region_type/material_kanban
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(89964721284116067985)
,p_plugin_type=>'REGION TYPE'
,p_name=>'MATERIAL.KANBAN'
,p_display_name=>'Material Kanban Board'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION F_AJAX (',
'    P_REGION   IN         APEX_PLUGIN.T_REGION,',
'    P_PLUGIN   IN         APEX_PLUGIN.T_PLUGIN',
') RETURN APEX_PLUGIN.T_REGION_AJAX_RESULT IS',
'BEGIN',
'    IF APEX_APPLICATION.G_X01 = ''getData'' THEN',
'        APEX_UTIL.JSON_FROM_SQL(SQLQ   => P_REGION.SOURCE);',
'    ELSIF APEX_APPLICATION.G_X01 = ''moveItem'' THEN',
'        -- hint: pl sql code could call RAISE_APPLICATION_ERROR',
'        EXECUTE IMMEDIATE P_REGION.ATTRIBUTE_03',
'            USING APEX_APPLICATION.G_X02, -- APEX$ITEM_ID',
'             APEX_APPLICATION.G_X03, -- APEX$OLD_GROUP_ID',
'             APEX_APPLICATION.G_X04, -- APEX$OLD_COLUMN_ID',
'             APEX_APPLICATION.G_X05, -- APEX$OLD_INDEX',
'             APEX_APPLICATION.G_X06, -- APEX$NEW_GROUP_ID',
'             APEX_APPLICATION.G_X07, -- APEX$NEW_COLUMN_ID',
'             APEX_APPLICATION.G_X08; -- APEX$NEW_INDEX      ',
'        ',
'        -- all ok',
'        HTP.P(''{ }'');',
'    ELSIF APEX_APPLICATION.G_X01 = ''moveGroup'' THEN',
'        -- hint: pl sql code could call RAISE_APPLICATION_ERROR',
'        EXECUTE IMMEDIATE P_REGION.ATTRIBUTE_06',
'            USING APEX_APPLICATION.G_X02, -- APEX$GROUP_ID',
'             APEX_APPLICATION.G_X03, -- APEX$OLD_INDEX',
'             APEX_APPLICATION.G_X04; -- APEX$NEW_INDEX      ',
'        ',
'        -- all ok',
'        HTP.P(''{ }'');',
'    END IF;',
'',
'    RETURN NULL;',
'END;',
'',
'FUNCTION F_RENDER (',
'    P_REGION                IN                      APEX_PLUGIN.T_REGION,',
'    P_PLUGIN                IN                      APEX_PLUGIN.T_PLUGIN,',
'    P_IS_PRINTER_FRIENDLY   IN                      BOOLEAN',
') RETURN APEX_PLUGIN.T_REGION_RENDER_RESULT IS',
'',
'    VR_CONF_JSON           APEX_APPLICATION_PAGE_REGIONS.ATTRIBUTE_01%TYPE := P_REGION.ATTRIBUTE_01;',
'    VR_ITEMS2SUBMIT        APEX_APPLICATION_PAGE_REGIONS.AJAX_ITEMS_TO_SUBMIT%TYPE := APEX_PLUGIN_UTIL.PAGE_ITEM_NAMES_TO_JQUERY(P_REGION.AJAX_ITEMS_TO_SUBMIT);',
'    VR_REGION_ID           VARCHAR2(200) := ''mk-'' || P_REGION.STATIC_ID;',
'    VR_DATA_BUFFER         APEX_PLUGIN_UTIL.T_COLUMN_VALUE_LIST;',
'    VR_COLUMNS_JSON        VARCHAR2(4000) := NULL;',
'    VR_ALLOW_DRAG_N_DROP   VARCHAR(1) := P_REGION.ATTRIBUTE_02;',
'    VR_ALLOW_DRAG_GROUPS   VARCHAR(1) := P_REGION.ATTRIBUTE_05;',
'    VR_INLINE_CSS          APEX_APPLICATION_PAGE_REGIONS.ATTRIBUTE_04%TYPE := P_REGION.ATTRIBUTE_04;',
'BEGIN',
'    APEX_CSS.ADD_FILE(',
'        P_NAME        => ''responsive-grid.min'',',
'        P_DIRECTORY   => P_PLUGIN.FILE_PREFIX,',
'        P_VERSION     => NULL,',
'        P_KEY         => ''responsivegridstylesource''',
'    );',
'',
'    APEX_CSS.ADD_FILE(',
'        P_NAME        => ''style.min'',',
'        P_DIRECTORY   => P_PLUGIN.FILE_PREFIX,',
'        P_VERSION     => NULL,',
'        P_KEY         => ''materialkanbanstylesource''',
'    );',
'    ',
'    IF VR_INLINE_CSS IS NOT NULL THEN',
'        APEX_CSS.ADD(',
'            P_CSS         => VR_INLINE_CSS,',
'            P_KEY         => P_REGION.STATIC_ID || ''inlinestyle''',
'        );',
'    END IF;',
'    ',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME        => ''dragula.min'',',
'        P_DIRECTORY   => P_PLUGIN.FILE_PREFIX,',
'        P_VERSION     => NULL,',
'        P_KEY         => ''dragulasource''',
'    );',
'',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME        => ''script.min'',',
'        P_DIRECTORY   => P_PLUGIN.FILE_PREFIX,',
'        P_VERSION     => NULL,',
'        P_KEY         => ''materialkanbansource''',
'    );',
'',
'    SYS.HTP.P(''<div id="'' ||',
'    APEX_PLUGIN_UTIL.ESCAPE(',
'        VR_REGION_ID,',
'        TRUE',
'    ) ||',
'    ''"></div>'');',
'',
'    APEX_JAVASCRIPT.ADD_ONLOAD_CODE(''materialKanban.initialize('' ||',
'    APEX_JAVASCRIPT.ADD_VALUE(',
'        VR_REGION_ID,',
'        TRUE',
'    ) ||',
'    APEX_JAVASCRIPT.ADD_VALUE(',
'        APEX_PLUGIN.GET_AJAX_IDENTIFIER,',
'        TRUE',
'    ) ||',
'    APEX_JAVASCRIPT.ADD_VALUE(',
'        P_REGION.NO_DATA_FOUND_MESSAGE,',
'        TRUE',
'    ) ||',
'    APEX_JAVASCRIPT.ADD_VALUE(',
'        VR_CONF_JSON,',
'        TRUE',
'    ) ||',
'    APEX_JAVASCRIPT.ADD_VALUE(',
'        VR_ITEMS2SUBMIT,',
'        TRUE',
'    ) ||',
'    APEX_JAVASCRIPT.ADD_VALUE(',
'        P_REGION.STATIC_ID,',
'        TRUE',
'    ) ||',
'    APEX_JAVASCRIPT.ADD_VALUE(',
'        P_REGION.ESCAPE_OUTPUT,',
'        TRUE',
'    ) ||',
'    APEX_JAVASCRIPT.ADD_VALUE(',
'        CASE',
'            WHEN VR_ALLOW_DRAG_N_DROP = ''Y'' THEN',
'                1',
'            ELSE 0',
'        END,',
'        TRUE',
'    ) ||',
'    APEX_JAVASCRIPT.ADD_VALUE(',
'        CASE',
'            WHEN VR_ALLOW_DRAG_GROUPS = ''Y'' THEN',
'                1',
'            ELSE 0',
'        END,',
'        FALSE',
'    ) ||',
'    '');'');',
'',
'    RETURN NULL;',
'END;'))
,p_api_version=>2
,p_render_function=>'F_RENDER'
,p_ajax_function=>'F_AJAX'
,p_standard_attributes=>'SOURCE_SQL:AJAX_ITEMS_TO_SUBMIT:NO_DATA_FOUND_MESSAGE:ESCAPE_OUTPUT'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'This plugin allows easy integration of a Kanban board into your own application. Your business processes can be grouped and visualized clearly. With Drag''n Drop you can move the cards between a dynamic number of columns. Adjust the icons, colors and '
||'other attributes to your personal needs. Expand the cards with any HTML content to display more information and enable more functions. For licenses please take a look at the comments.'
,p_version_identifier=>'1.1.0'
,p_about_url=>'https://github.com/McRange/Material-Kanban-Board'
,p_plugin_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Licenses:',
'',
'Material Kanban:',
'',
'https://github.com/McRange/Material-Kanban-Board',
unistr('Copyright \00A9 2018-2019 Matthias Range'),
'MIT License',
'',
'Material Cards:',
'',
'https://github.com/RonnyWeiss/Material-Dashboard-Cards-as-HTML-or-for-Apex',
'MIT License',
unistr('Copyright \00A9 2018 Ronny Wei\00DF'),
'',
'Dragula:',
'',
'https://github.com/bevacqua/dragula',
'MIT License',
unistr('Copyright \00A9 2015-2016 Nicolas Bevacqua'),
'',
'',
'Cards Css:',
'',
'https://github.com/creativetimofficial/material-dashboard',
'MIT License',
unistr('Copyright \00A9 2017 Creative Tim'),
'',
'',
'The MIT License (MIT)',
'',
'Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modi'
||'fy, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:',
'',
'The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.',
'',
'THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDE'
||'RS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.'))
,p_files_version=>45
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(89964778386377085775)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'ConfigJSON'
,p_attribute_type=>'JAVASCRIPT'
,p_is_required=>true
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "refresh": 0,',
'    "staticColumns": [{',
'        "COLUMN_ID": "1",',
'        "COLUMN_TITLE": "To Do",',
'        "COLUMN_ICON": "fa-calendar"',
'                        }, {',
'        "COLUMN_ID": "2",',
'        "COLUMN_TITLE": "In Progress",',
'        "COLUMN_ICON": "fa-wrench"',
'                        }, {',
'        "COLUMN_ID": "3",',
'        "COLUMN_TITLE": "Done",',
'        "COLUMN_ICON": "fa-check"',
'    }],',
'    "dynamicColumns": false,',
'    "groupExtension": false,',
'    "groupColWidth": 6,',
'    "allowDragItemsBetweenGroups": false,',
'    "groupCollapsible": false,',
'    "printDataToConsole": false',
'}'))
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'{',
'    "refresh": 0,',
'    "staticColumns": [{',
'        "COLUMN_ID": "1",',
'        "COLUMN_TITLE": "To Do",',
'        "COLUMN_ICON": "fa-calendar"',
'                        }, {',
'        "COLUMN_ID": "2",',
'        "COLUMN_TITLE": "In Progress",',
'        "COLUMN_ICON": "fa-wrench"',
'                        }, {',
'        "COLUMN_ID": "3",',
'        "COLUMN_TITLE": "Done",',
'        "COLUMN_ICON": "fa-check"',
'    }],',
'    "dynamicColumns": false,',
'    "groupExtension": false,',
'    "groupColWidth": 6,',
'    "allowDragItemsBetweenGroups": false,',
'    "groupCollapsible": false,',
'    "printDataToConsole": false',
'}',
'</pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>refresh (number)</dt><dd>Refresh time of the kanban board in seconds. If 0 then no refresh will be set.</dd>',
'  <dt>staticColumns (array)</dt><dd>defines columns and their attributes:',
'    <ul>',
'      <li><dt>COLUMN_ID</dt><dd>Identifier of the column. Items with the same value are assigned to this column</dd></li>',
'      <li><dt>COLUMN_TITLE</dt><dd>Titel of the column</dd></li>',
'      <li><dt>COLUMN_ICON</dt><dd>Default icon for all items in column</dd></li>',
'      <li><dt>COLUMN_COLOR</dt><dd>Default icon background color for all items in column</dd></li>',
'      <li><dt>COLUMN_HEADER_STYLE</dt><dd>Custom style attributes for column header</dd></li>',
'    </ul>',
'  </dd>',
'  <dt>dynamicColumns (boolean)</dt><dd>If true then the columns are defined dynamically by SQL statement instead of the staticColumns attribute.</dd>',
'  <dt>groupExtension (boolean)</dt><dd>If true then the group extension is activated and items must serve the column <b>GROUP_ID</b> in the SQL statement.</dd>',
'  <dt>groupColWidth (number)</dt><dd>Relative size of the group column in relation to the other columns (4 = 33%, 6 = 50%, 12 = 100%).</dd>',
'  <dt>allowDragItemsBetweenGroups (boolean)</dt><dd>Allow moving items across group boundaries.</dd>',
'  <dt>groupCollapsible(boolean)</dt><dd>Allow collapse and expend groups with separate buttons</dd>',
'  <dt>printDataToConsole (boolean)</dt><dd>Debug feature: print loaded json data to console.</dd>',
'</dl>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(89964815617065089185)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Drag and Drop'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_help_text=>'Set to <b>Yes</b> to activate the Drag''n Drop feature for items'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(89964830195470095513)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Drag and Drop PL/SQL Code'
,p_attribute_type=>'PLSQL'
,p_is_required=>true
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VR_ITEM_ID VARCHAR2(200) := :APEX$ITEM_ID;',
'    VR_OLD_GROUP_ID VARCHAR2(200) := :APEX$OLD_GROUP_ID;',
'    VR_OLD_COLUMN_ID VARCHAR2(200) := :APEX$OLD_COLUMN_ID;',
'    VR_OLD_INDEX VARCHAR2(200) := :APEX$OLD_INDEX;',
'    VR_NEW_GROUP_ID VARCHAR2(200) := :APEX$NEW_GROUP_ID;',
'    VR_NEW_COLUMN_ID VARCHAR2(200) := :APEX$NEW_COLUMN_ID;',
'    VR_NEW_INDEX VARCHAR2(200) := :APEX$NEW_INDEX;',
'BEGIN',
'    APEX_DEBUG.MESSAGE ( ''moved item '' ||',
'                        VR_ITEM_ID || '' from '' ||',
'                        VR_OLD_GROUP_ID || ''/'' ||',
'                        VR_OLD_COLUMN_ID || ''/'' ||',
'                        VR_OLD_INDEX|| '' to '' ||',
'                        VR_NEW_GROUP_ID || ''/'' ||',
'                        VR_NEW_COLUMN_ID || ''/'' ||',
'                        VR_NEW_INDEX',
'                    );',
'',
'    --Raise_Application_Error (-20001, ''my error'');                   ',
'END;'))
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(89964815617065089185)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'DECLARE',
'    VR_ITEM_ID VARCHAR2(200) := :APEX$ITEM_ID;',
'    VR_OLD_GROUP_ID VARCHAR2(200) := :APEX$OLD_GROUP_ID;',
'    VR_OLD_COLUMN_ID VARCHAR2(200) := :APEX$OLD_COLUMN_ID;',
'    VR_OLD_INDEX VARCHAR2(200) := :APEX$OLD_INDEX;',
'    VR_NEW_GROUP_ID VARCHAR2(200) := :APEX$NEW_GROUP_ID;',
'    VR_NEW_COLUMN_ID VARCHAR2(200) := :APEX$NEW_COLUMN_ID;',
'    VR_NEW_INDEX VARCHAR2(200) := :APEX$NEW_INDEX;',
'BEGIN',
'    APEX_DEBUG.MESSAGE ( ''moved item '' ||',
'                        VR_ITEM_ID || '' from '' ||',
'                        VR_OLD_GROUP_ID || ''/'' ||',
'                        VR_OLD_COLUMN_ID || ''/'' ||',
'                        VR_OLD_INDEX|| '' to '' ||',
'                        VR_NEW_GROUP_ID || ''/'' ||',
'                        VR_NEW_COLUMN_ID || ''/'' ||',
'                        VR_NEW_INDEX',
'                    );',
'',
'    --Raise_Application_Error (-20001, ''my error'');                   ',
'END;',
'</pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This PL SQL code is executed when an item is dropped to a new location.',
'<br>',
'',
'<h3>Binding Variables:</h3>',
'<b>HINT: Do not change the order or count of the binding variables!!!!!111!</b>',
'(Required for compatibility reasons with APEX 5.x)',
'<dl> ',
'    <ul>',
'      <li><dt>APEX$ITEM_ID</dt><dd>Identifier of the moved item</dd></li>',
'      <li><dt>APEX$OLD_GROUP_ID</dt><dd>Identifier of the group from which the item was taken</dd></li>',
'      <li><dt>APEX$OLD_COLUMN_ID</dt><dd>Identifier of the column from which the item was taken</dd></li>',
'      <li><dt>APEX$OLD_INDEX</dt><dd>Index of the item within the group from which the item was taken</dd></li>',
'      <li><dt>APEX$NEW_GROUP_ID</dt><dd>Identifier of the group to which the item was moved</dd></li>',
'      <li><dt>APEX$NEW_COLUMN_ID</dt><dd>Identifier of the column to which the item was moved</dd></li>',
'      <li><dt>APEX$NEW_INDEX</dt><dd>Index of the item within the group to which the item was moved</dd></li>',
'    </ul>',
'</dl>',
'<br>',
'Raise an application error if you want to revoke the movement of the item.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(91926202551303178013)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Inline CSS'
,p_attribute_type=>'JAVASCRIPT'
,p_is_required=>false
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'.kb-item-container .kb-card {',
'    max-width: none;',
'    height: 100px;',
'}',
'.kb-group-region .kb-card {',
'    height: 100%;',
'}',
'</pre>'))
,p_help_text=>'Add your custom style attributes to override or extend the default behavior.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(76931850424180337313)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>31
,p_prompt=>'Drag and Drop Groups'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(89964815617065089185)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Set to <b>Yes</b> to activate the Drag''n Drop feature for groups'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(76932261871265384899)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>32
,p_prompt=>'Drag and Drop Group PL/SQL Code'
,p_attribute_type=>'PLSQL'
,p_is_required=>true
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VR_GROUP_ID VARCHAR2(200) := :APEX$GROUP_ID;',
'    VR_OLD_INDEX VARCHAR2(200) := :APEX$OLD_INDEX;',
'    VR_NEW_INDEX VARCHAR2(200) := :APEX$NEW_INDEX;',
'BEGIN',
'    APEX_DEBUG.MESSAGE ( ''moved group '' ||',
'                        VR_GROUP_ID || '' from '' ||',
'                        VR_OLD_INDEX|| '' to '' ||',
'                        VR_NEW_INDEX',
'                    );',
'',
'    --Raise_Application_Error (-20001, ''my error'');                   ',
'END;'))
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(76931850424180337313)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'DECLARE',
'    VR_GROUP_ID VARCHAR2(200) := :APEX$GROUP_ID;',
'    VR_OLD_INDEX VARCHAR2(200) := :APEX$OLD_INDEX;',
'    VR_NEW_INDEX VARCHAR2(200) := :APEX$NEW_INDEX;',
'BEGIN',
'    APEX_DEBUG.MESSAGE ( ''moved group '' ||',
'                        VR_GROUP_ID || '' from '' ||',
'                        VR_OLD_INDEX|| '' to '' ||',
'                        VR_NEW_INDEX',
'                    );',
'',
'    --Raise_Application_Error (-20001, ''my error'');                   ',
'END;',
'</pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This PL SQL code is executed when a group is dropped to a new location.',
'<br>',
'',
'<h3>Binding Variables:</h3>',
'<b>HINT: Do not change the order or count of the binding variables!!!!!111!</b>',
'(Required for compatibility reasons with APEX 5.x)',
'<dl> ',
'    <ul>',
'      <li><dt>APEX$GROUP_ID</dt><dd>Identifier of the moved group</dd></li>',
'      <li><dt>APEX$OLD_INDEX</dt><dd>Index of the group within the Kanbanboard</dd></li>',
'      <li><dt>APEX$NEW_INDEX</dt><dd>Index of the group within the Kanbanboard</dd></li>',
'    </ul>',
'</dl>',
'<br>',
'Raise an application error if you want to revoke the movement of the group.'))
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(89964721485579067989)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_name=>'SOURCE_SQL'
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   ',
'    /* required - identifier of the item */',
'    LEVEL AS ID,',
'    /* required - titel of the item */',
'    DBMS_RANDOM.STRING(''U'', 1) || DBMS_RANDOM.STRING(''L'', DBMS_RANDOM.VALUE(6, 12)) AS TITLE,',
'    /* required - define column at first occurrence (when useDynamicColumns = true) and assign item to it */',
'    TRUNC(DBMS_RANDOM.VALUE(1, 4)) AS COLUMN_ID,',
'    /* optional - content of the item footer */',
'    ''this is item '' ||LEVEL AS FOOTER,',
'    /* optional - override default column icon */',
'    NULL AS ICON,',
'    /* optional - override default column icon color */',
'    NULL AS ICON_COLOR,',
'    /* optional - set custom style attributes for item header */',
'    NULL AS HEADER_STYLE,',
'    /* optional - add link to item titel */',
'    NULL AS LINK,    ',
'    /* optional - define group at first occurrence (groups feature) and assign item to it */',
'    NULL AS GROUP_ID,',
'    /* optional - titel of the group */',
'    NULL AS GROUP_TITLE,',
'    /* optional - content of the group footer */',
'    NULL AS GROUP_FOOTER,',
'    /* optional - set icon of the group */',
'    NULL AS GROUP_ICON,',
'    /* optional - set icon color of the group */',
'    NULL AS GROUP_ICON_COLOR,',
'    /* optional - set custom style attributes for group header */',
'    NULL AS GROUP_HEADER_STYLE,',
'    /* optional - add link to group titel */',
'    NULL AS GROUP_LINK,',
'    /* optional - add button with this link in first column to group */',
'    NULL AS GROUP_NEW_ITEM_LINK,',
'    /* optional - set 1 to collapse group on load */',
'    NULL AS GROUP_COLLAPESED,',
'    /* optional - add button with this link under the last group */',
'    NULL AS NEW_GROUP_LINK,',
'    /* optional - titel of the column */',
'    NULL AS COLUMN_TITLE,',
'    /* optional - set default icon for all items in column */',
'    NULL AS COLUMN_ICON,',
'    /* optional - set default icon background color for all items in this column */',
'    NULL AS COLUMN_COLOR,',
'    /* optional - set custom style attributes for column header */',
'    NULL AS COLUMN_HEADER_STYLE',
'FROM',
'    DUAL',
'CONNECT BY',
'    LEVEL <= DBMS_RANDOM.VALUE(20, 30)'))
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_depending_on_has_to_exist=>true
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Visit my Plug-in Sample App for more examples: https://apex.oracle.com/pls/apex/f?p=PLUGINSBYRANGE:2',
'',
'<h3>Group Extension:</h3>',
'<pre>',
'WITH G AS ( SELECT',
'                LEVEL   AS GROUP_ID,',
'                DBMS_RANDOM.STRING(''U'', 1) || DBMS_RANDOM.STRING(''L'', DBMS_RANDOM.VALUE(6, 12)) || '' '' || DBMS_RANDOM.STRING(''L'', DBMS_RANDOM.VALUE(6, 12)) AS GROUP_TITLE,',
'                DBMS_RANDOM.STRING(''L'', DBMS_RANDOM.VALUE(8, 15)) || '' '' || DBMS_RANDOM.STRING(''L'', DBMS_RANDOM.VALUE(8, 15)) || '' '' || DBMS_RANDOM.STRING(''L'', DBMS_RANDOM.VALUE(8, 15)) || '' '' || DBMS_RANDOM',
'                .STRING(''L'', DBMS_RANDOM.VALUE(8, 15)) AS GROUP_FOOTER,',
'                ''fa-cogs'' AS GROUP_ICON,',
'                APEX_UTIL.PREPARE_URL(P_URL => ''f?p='' || :APP_ID || '':101:'' || :APP_SESSION || ''::'' || :DEBUG || '':::'') AS GROUP_LINK,',
'                APEX_UTIL.PREPARE_URL(P_URL => ''f?p='' || :APP_ID || '':101:'' || :APP_SESSION || ''::'' || :DEBUG || '':::'') AS GROUP_NEW_ITEM_LINK',
'            FROM',
'                DUAL',
'            CONNECT BY',
'                LEVEL <= 4',
'), I AS ( SELECT',
'              1000 + LEVEL AS ID,',
'              TRUNC(DBMS_RANDOM.VALUE(1, 4)) AS COLUMN_ID,',
'              TRUNC(DBMS_RANDOM.VALUE(1, 4)) AS GROUP_ID,',
'              DBMS_RANDOM.STRING(''U'', 1) || DBMS_RANDOM.STRING(''L'', DBMS_RANDOM.VALUE(6, 12)) || '' '' || DBMS_RANDOM.STRING(''L'', DBMS_RANDOM.VALUE(6, 12)) AS TITLE,',
'              DBMS_RANDOM.STRING(''L'', DBMS_RANDOM.VALUE(8, 15)) || '' '' || DBMS_RANDOM.STRING(''L'', DBMS_RANDOM.VALUE(8, 15)) || '' '' || DBMS_RANDOM.STRING(''L'', DBMS_RANDOM.VALUE(8, 15)) || '' '' || DBMS_RANDOM',
'              .STRING(''L'', DBMS_RANDOM.VALUE(8, 15)) AS FOOTER,',
'              APEX_UTIL.PREPARE_URL(P_URL => ''f?p='' || :APP_ID || '':101:'' || :APP_SESSION || ''::'' || :DEBUG || '':::'') AS LINK',
'          FROM',
'              DUAL',
'          CONNECT BY',
'              LEVEL <= 15',
')',
'SELECT',
'    GROUP_ID,',
'    GROUP_TITLE,',
'    GROUP_FOOTER,',
'    GROUP_ICON,',
'    GROUP_LINK,',
'    GROUP_NEW_ITEM_LINK,',
'    ID,',
'    COLUMN_ID,',
'    TITLE,',
'    FOOTER,',
'    LINK',
'FROM',
'    G',
'    LEFT JOIN I',
'    USING ( GROUP_ID )',
'</pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'SELECT   ',
'    /* required - identifier of the item */',
'    LEVEL AS ID,',
'    /* required - titel of the item */',
'    DBMS_RANDOM.STRING(''U'', 1) || DBMS_RANDOM.STRING(''L'', DBMS_RANDOM.VALUE(6, 12)) AS TITLE,',
'    /* required - define column at first occurrence (when useDynamicColumns = true) and assign item to it */',
'    TRUNC(DBMS_RANDOM.VALUE(1, 4)) AS COLUMN_ID,',
'    /* optional - content of the item footer */',
'    ''this is item '' ||LEVEL AS FOOTER,',
'    /* optional - override default column icon */',
'    NULL AS ICON,',
'    /* optional - override default column icon color */',
'    NULL AS ICON_COLOR,',
'    /* optional - set custom style attributes for item header */',
'    NULL AS HEADER_STYLE,',
'    /* optional - add link to item titel */',
'    NULL AS LINK,    ',
'    /* optional - define group at first occurrence (groups feature) and assign item to it */',
'    NULL AS GROUP_ID,',
'    /* optional - titel of the group */',
'    NULL AS GROUP_TITLE,',
'    /* optional - content of the group footer */',
'    NULL AS GROUP_FOOTER,',
'    /* optional - set icon of the group */',
'    NULL AS GROUP_ICON,',
'    /* optional - set icon color of the group */',
'    NULL AS GROUP_ICON_COLOR,',
'    /* optional - set custom style attributes for group header */',
'    NULL AS GROUP_HEADER_STYLE,',
'    /* optional - add link to group titel */',
'    NULL AS GROUP_LINK,',
'    /* optional - add button with this link in first column to group */',
'    NULL AS GROUP_NEW_ITEM_LINK,',
'    /* optional - set 1 to collapse group on load */',
'    NULL AS GROUP_COLLAPESED,',
'    /* optional - add button with this link under the last group */',
'    NULL AS NEW_GROUP_LINK,',
'    /* optional - titel of the column */',
'    NULL AS COLUMN_TITLE,',
'    /* optional - set default icon for all items in column */',
'    NULL AS COLUMN_ICON,',
'    /* optional - set default icon background color for all items in this column */',
'    NULL AS COLUMN_COLOR,',
'    /* optional - set custom style attributes for column header */',
'    NULL AS COLUMN_HEADER_STYLE',
'FROM',
'    DUAL',
'CONNECT BY',
'    LEVEL <= DBMS_RANDOM.VALUE(20, 30)',
'</pre>'))
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(89966460032608111041)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_name=>'materialkanbandataloaded'
,p_display_name=>'Items Loaded'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(89966460425065111042)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_name=>'materialkanbandatarendered'
,p_display_name=>'Items Rendered'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(89966448985900111038)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_name=>'materialkanbandrag'
,p_display_name=>'Drag Item'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(76931838719096329229)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_name=>'materialkanbandraggroup'
,p_display_name=>'Drag Group'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(89966459639834111041)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_name=>'materialkanbandrop'
,p_display_name=>'Drop Item'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(89966459191882111040)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_name=>'materialkanbandroperror'
,p_display_name=>'Drop Error'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(76931838987472329229)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_name=>'materialkanbandropgroup'
,p_display_name=>'Drop Group'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(553363391213587724)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_name=>'materialkanbangroupcollapsed'
,p_display_name=>'Group Collapsed'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E63742D6C6F616465727B706F736974696F6E3A6162736F6C7574653B746F703A373070783B77696474683A313030253B7A2D696E6465783A313B746578742D616C69676E3A63656E7465727D2E6B622D636F6C7B646973706C61793A696E6C696E652D';
wwv_flow_api.g_varchar2_table(2) := '626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030253B766572746963616C2D616C69676E3A746F703B626F726465722D7261646975733A3570783B626F726465723A33707820736F6C696420236666667D2E6B622D636F';
wwv_flow_api.g_varchar2_table(3) := '6C2D636F6E74656E747B6865696768743A313030253B77696474683A313030257D2E6B622D636F6C2D6865616465722D636F6E74656E747B626F726465722D7261646975733A3570783B626F726465722D746F703A35707820736F6C696420236161613B';
wwv_flow_api.g_varchar2_table(4) := '6865696768743A333070783B6D617267696E3A357078203570782030203570787D2E6B622D636F6C2D6865616465722D636F6E74656E74202E7469746C657B706F736974696F6E3A72656C61746976653B6C6566743A313570783B636F6C6F723A233030';
wwv_flow_api.g_varchar2_table(5) := '303B666F6E742D73697A653A312E33656D7D2E6B622D636F6C2D696E6E65722D6865616465727B646973706C61793A6E6F6E657D2E6B622D636F6C2D696E6E65722D686561646572202E7469746C657B706F736974696F6E3A72656C61746976653B636F';
wwv_flow_api.g_varchar2_table(6) := '6C6F723A233030303B666F6E742D73697A653A312E33656D3B6D617267696E3A3570782031307078203020313070787D2E6B622D726F777B646973706C61793A2D6D732D666C65783B646973706C61793A2D7765626B69742D666C65783B646973706C61';
wwv_flow_api.g_varchar2_table(7) := '793A666C65787D2E6B622D6974656D2D726567696F6E7B6261636B67726F756E643A236637663766373B6D696E2D6865696768743A333070787D2E6B622D636172647B646973706C61793A696E6C696E652D626C6F636B3B77696474683A313030253B62';
wwv_flow_api.g_varchar2_table(8) := '6F782D736861646F773A3020317078203470782030207267626128302C302C302C2E3434293B626F726465722D7261646975733A3170783B636F6C6F723A7267626128302C302C302C2E3837293B7472616E736974696F6E3A616C6C202E347320656173';
wwv_flow_api.g_varchar2_table(9) := '653B6261636B67726F756E643A236661666166613B6D617267696E3A303B706F736974696F6E3A72656C61746976653B6F766572666C6F773A68696464656E7D2E6B622D636172642D647261676761626C657B637572736F723A677261627D2E6B622D63';
wwv_flow_api.g_varchar2_table(10) := '6172643A686F7665727B6261636B67726F756E643A236666663B626F782D736861646F773A3020313070782032307078207267626128302C302C302C2E3139292C302036707820367078207267626128302C302C302C2E3233297D2E6B622D6361726420';
wwv_flow_api.g_varchar2_table(11) := '2E636172642D6865616465727B666C6F61743A6C6566743B746578742D616C69676E3A63656E7465723B6D617267696E3A367078203020367078203670783B626F782D736861646F773A3020313270782032307078202D31307078207267626128323330';
wwv_flow_api.g_varchar2_table(12) := '2C3233302C3233302C2E3238292C302034707820323070782030207267626128302C302C302C2E3132292C302037707820387078202D3570782072676261283233302C3233302C3233302C2E32293B7472616E736974696F6E3A616C6C20317320656173';
wwv_flow_api.g_varchar2_table(13) := '657D2E6B622D63617264202E636172642D68656164657220697B666F6E742D73697A653A313870783B6C696E652D6865696768743A323870783B77696474683A323870783B6865696768743A323870783B636F6C6F723A236666663B7472616E73697469';
wwv_flow_api.g_varchar2_table(14) := '6F6E3A616C6C20317320656173657D2E6B622D63617264202E636172642D636F6E74656E747B746578742D616C69676E3A6C6566743B70616464696E673A30203670783B6F766572666C6F773A68696464656E3B6D696E2D6865696768743A343070783B';
wwv_flow_api.g_varchar2_table(15) := '646973706C61793A7461626C657D2E6B622D63617264202E7469746C657B666F6E742D73697A653A31656D3B646973706C61793A7461626C652D63656C6C3B766572746963616C2D616C69676E3A6D6964646C657D2E6B622D63617264202E636172642D';
wwv_flow_api.g_varchar2_table(16) := '666F6F7465727B6D617267696E3A302032307078203670783B70616464696E672D746F703A3370783B626F726465722D746F703A31707820736F6C696420236565653B636F6C6F723A233939397D2E6B622D63617264202E636172642D666F6F7465723E';
wwv_flow_api.g_varchar2_table(17) := '6469767B646973706C61793A696E6C696E652D626C6F636B3B77696474683A313030257D2E6B622D6E65772D6974656D2D726567696F6E7B636C6561723A626F74687D2E6B622D6974656D2D636F6E7461696E65727B6865696768743A313030253B6D69';
wwv_flow_api.g_varchar2_table(18) := '6E2D6865696768743A313070783B70616464696E673A3570787D2E6B622D6974656D2D636F6E7461696E6572202E6B622D636172647B666C6F61743A6C6566743B6D617267696E3A357078203570783B6D696E2D6865696768743A2E31323572656D3B77';
wwv_flow_api.g_varchar2_table(19) := '696474683A63616C632831303025202D2031307078293B6D61782D77696474683A32303070787D2E6B622D6974656D2D636F6E7461696E65722D776974682D6E65772D636172647B6865696768743A63616C632831303025202D2034307078297D2E6B62';
wwv_flow_api.g_varchar2_table(20) := '2D6E65772D636172647B666C6F61743A6C6566743B746578742D616C69676E3A63656E7465723B6D617267696E3A3370782031307078203130707820313070783B7472616E736974696F6E3A616C6C202E33732063756269632D62657A696572282E3235';
wwv_flow_api.g_varchar2_table(21) := '2C2E382C2E32352C31293B626F782D736861646F773A302031707820337078207267626128302C302C302C2E3132292C302031707820327078207267626128302C302C302C2E3234293B6261636B67726F756E643A233535633535357D2E6B622D6E6577';
wwv_flow_api.g_varchar2_table(22) := '2D636172643A686F7665727B626F782D736861646F773A3020313070782032307078207267626128302C302C302C2E3139292C302036707820367078207267626128302C302C302C2E3233297D2E6B622D6E65772D6361726420697B666F6E742D73697A';
wwv_flow_api.g_varchar2_table(23) := '653A313870783B6C696E652D6865696768743A323870783B77696474683A323870783B6865696768743A323870783B636F6C6F723A236666667D2E6B622D67726F75702D726567696F6E202E636172642D6865616465727B6261636B67726F756E643A23';
wwv_flow_api.g_varchar2_table(24) := '3339613664617D2E6B622D636F6C6C61707361626C657B666C6F61743A6C6566743B746578742D616C69676E3A63656E7465723B6D617267696E3A3670782031707820367078203770783B637572736F723A706F696E7465727D2E6B622D636F6C6C6170';
wwv_flow_api.g_varchar2_table(25) := '7361626C6520697B666F6E742D73697A653A313570783B6C696E652D6865696768743A323870783B77696474683A313870783B636F6C6F723A233030307D2E6B622D636F6C6C61707361626C653A686F7665727B6D617267696E3A357078203020357078';
wwv_flow_api.g_varchar2_table(26) := '203670783B626F726465723A31707820736F6C696420236565657D2E6B622D636F6C6C61707365647B77696474683A3130302521696D706F7274616E747D406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A37313970';
wwv_flow_api.g_varchar2_table(27) := '78297B2E6B622D726F777B646973706C61793A2D6D732D696E6C696E652D626F783B646973706C61793A2D7765626B69742D696E6C696E652D626F783B646973706C61793A696E6C696E652D626C6F636B7D2E6B622D636F6C2D6865616465727B646973';
wwv_flow_api.g_varchar2_table(28) := '706C61793A6E6F6E657D2E6B622D636F6C2D6865616465722C2E6B622D67726F75702D726567696F6E2C2E6B622D6974656D2D726567696F6E7B77696474683A3130302521696D706F7274616E747D2E6B622D636172647B6D61782D77696474683A6E6F';
wwv_flow_api.g_varchar2_table(29) := '6E6521696D706F7274616E747D2E6B622D6974656D2D726567696F6E7B646973706C61793A2D6D732D666C65783B646973706C61793A2D7765626B69742D666C65783B646973706C61793A666C65787D2E6B622D636F6C2D636F6E74656E747B626F7264';
wwv_flow_api.g_varchar2_table(30) := '65722D7261646975733A3570783B626F726465722D6C6566743A35707820736F6C696420236161617D2E6B622D636F6C2D696E6E65722D6865616465727B646973706C61793A696E6C696E652D626C6F636B7D2E6B622D67726F75702D726567696F6E7B';
wwv_flow_api.g_varchar2_table(31) := '626F726465723A6E6F6E657D2E6B622D67726F75702D726567696F6E3E6469767B6D617267696E3A33707821696D706F7274616E743B77696474683A63616C632831303025202D20367078293B626F726465722D7261646975733A3570783B626F726465';
wwv_flow_api.g_varchar2_table(32) := '722D746F703A35707820736F6C696420236161613B626F726465722D6C6566743A35707820736F6C696420236161617D2E6B622D6E65772D67726F75702D726567696F6E3E6469767B626F726465722D746F703A6E6F6E657D2E6B622D67726F75702D72';
wwv_flow_api.g_varchar2_table(33) := '6567696F6E202E6B622D636172647B646973706C61793A696E68657269747D2E6B622D726F773A3A61667465727B6D617267696E2D626F74746F6D3A323070787D7D2E67752D6D6972726F727B706F736974696F6E3A666978656421696D706F7274616E';
wwv_flow_api.g_varchar2_table(34) := '743B6D617267696E3A3021696D706F7274616E743B7A2D696E6465783A3939393921696D706F7274616E743B6F7061636974793A2E387D2E67752D686964657B646973706C61793A6E6F6E6521696D706F7274616E747D2E67752D756E73656C65637461';
wwv_flow_api.g_varchar2_table(35) := '626C657B2D7765626B69742D757365722D73656C6563743A6E6F6E6521696D706F7274616E743B2D6D6F7A2D757365722D73656C6563743A6E6F6E6521696D706F7274616E743B2D6D732D757365722D73656C6563743A6E6F6E6521696D706F7274616E';
wwv_flow_api.g_varchar2_table(36) := '743B757365722D73656C6563743A6E6F6E6521696D706F7274616E747D2E67752D7472616E7369747B6F7061636974793A2E327D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(89964734266815074314)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_file_name=>'style.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E732D672D636F6E7461696E65727B77696474683A3938253B6D617267696E2D6C6566743A6175746F3B6D617267696E2D72696768743A6175746F7D2E732D672D726F777B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E73';
wwv_flow_api.g_varchar2_table(2) := '2D672D726F77205B636C6173735E3D732D672D636F6C5D7B666C6F61743A6C6566743B6D617267696E3A2E3572656D2032253B6D696E2D6865696768743A2E31323572656D7D2E732D672D636F6C2D312C2E732D672D636F6C2D31302C2E732D672D636F';
wwv_flow_api.g_varchar2_table(3) := '6C2D31312C2E732D672D636F6C2D31322C2E732D672D636F6C2D322C2E732D672D636F6C2D332C2E732D672D636F6C2D342C2E732D672D636F6C2D352C2E732D672D636F6C2D362C2E732D672D636F6C2D372C2E732D672D636F6C2D382C2E732D672D63';
wwv_flow_api.g_varchar2_table(4) := '6F6C2D397B77696474683A3936257D2E732D672D636F6C2D312D736D7B77696474683A342E3333257D2E732D672D636F6C2D322D736D7B77696474683A31322E3636257D2E732D672D636F6C2D332D736D7B77696474683A3231257D2E732D672D636F6C';
wwv_flow_api.g_varchar2_table(5) := '2D342D736D7B77696474683A32392E3333257D2E732D672D636F6C2D352D736D7B77696474683A33372E3636257D2E732D672D636F6C2D362D736D7B77696474683A3436257D2E732D672D636F6C2D372D736D7B77696474683A35342E3333257D2E732D';
wwv_flow_api.g_varchar2_table(6) := '672D636F6C2D382D736D7B77696474683A36322E3636257D2E732D672D636F6C2D392D736D7B77696474683A3731257D2E732D672D636F6C2D31302D736D7B77696474683A37392E3333257D2E732D672D636F6C2D31312D736D7B77696474683A38372E';
wwv_flow_api.g_varchar2_table(7) := '3636257D2E732D672D636F6C2D31322D736D7B77696474683A3936257D2E732D672D726F773A3A61667465727B636F6E74656E743A22223B646973706C61793A7461626C653B636C6561723A626F74687D2E68696464656E2D736D7B646973706C61793A';
wwv_flow_api.g_varchar2_table(8) := '6E6F6E657D406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A33332E3735656D297B2E732D672D636F6E7461696E65727B77696474683A3938257D7D406D65646961206F6E6C792073637265656E20616E6420286D69';
wwv_flow_api.g_varchar2_table(9) := '6E2D77696474683A3630656D297B2E732D672D636F6C2D312C2E732D672D636F6C2D322C2E732D672D636F6C2D332C2E732D672D636F6C2D342C2E732D672D636F6C2D352C2E732D672D636F6C2D367B77696474683A3436257D2E732D672D636F6C2D31';
wwv_flow_api.g_varchar2_table(10) := '302C2E732D672D636F6C2D31312C2E732D672D636F6C2D31322C2E732D672D636F6C2D372C2E732D672D636F6C2D382C2E732D672D636F6C2D397B77696474683A3936257D2E68696464656E2D736D7B646973706C61793A626C6F636B7D7D406D656469';
wwv_flow_api.g_varchar2_table(11) := '61206F6E6C792073637265656E20616E6420286D696E2D77696474683A3636656D297B2E732D672D636F6E7461696E65727B77696474683A3938257D2E732D672D636F6C2D317B77696474683A342E3333257D2E732D672D636F6C2D327B77696474683A';
wwv_flow_api.g_varchar2_table(12) := '31322E3636257D2E732D672D636F6C2D337B77696474683A3231257D2E732D672D636F6C2D347B77696474683A32392E3333257D2E732D672D636F6C2D357B77696474683A33372E3636257D2E732D672D636F6C2D367B77696474683A3436257D2E732D';
wwv_flow_api.g_varchar2_table(13) := '672D636F6C2D377B77696474683A35342E3333257D2E732D672D636F6C2D387B77696474683A36322E3636257D2E732D672D636F6C2D397B77696474683A3731257D2E732D672D636F6C2D31307B77696474683A37392E3333257D2E732D672D636F6C2D';
wwv_flow_api.g_varchar2_table(14) := '31317B77696474683A38372E3636257D2E732D672D636F6C2D31327B77696474683A3936257D2E68696464656E2D736D7B646973706C61793A626C6F636B7D7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(89964751318880072982)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_file_name=>'responsive-grid.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2166756E6374696F6E2865297B696628226F626A656374223D3D747970656F66206578706F727473262622756E646566696E656422213D747970656F66206D6F64756C65296D6F64756C652E6578706F7274733D6528293B656C7365206966282266756E';
wwv_flow_api.g_varchar2_table(2) := '6374696F6E223D3D747970656F6620646566696E652626646566696E652E616D6429646566696E65285B5D2C65293B656C73657B766172206E3B6E3D22756E646566696E656422213D747970656F662077696E646F773F77696E646F773A22756E646566';
wwv_flow_api.g_varchar2_table(3) := '696E656422213D747970656F6620676C6F62616C3F676C6F62616C3A22756E646566696E656422213D747970656F662073656C663F73656C663A746869732C6E2E64726167756C613D6528297D7D2866756E6374696F6E28297B72657475726E2066756E';
wwv_flow_api.g_varchar2_table(4) := '6374696F6E2065286E2C742C72297B66756E6374696F6E206F28752C63297B69662821745B755D297B696628216E5B755D297B76617220613D2266756E6374696F6E223D3D747970656F6620726571756972652626726571756972653B69662821632626';
wwv_flow_api.g_varchar2_table(5) := '612972657475726E206128752C2130293B696628692972657475726E206928752C2130293B76617220663D6E6577204572726F72282243616E6E6F742066696E64206D6F64756C652027222B752B222722293B7468726F7720662E636F64653D224D4F44';
wwv_flow_api.g_varchar2_table(6) := '554C455F4E4F545F464F554E44222C667D766172206C3D745B755D3D7B6578706F7274733A7B7D7D3B6E5B755D5B305D2E63616C6C286C2E6578706F7274732C66756E6374696F6E2865297B76617220743D6E5B755D5B315D5B655D3B72657475726E20';
wwv_flow_api.g_varchar2_table(7) := '6F28743F743A65297D2C6C2C6C2E6578706F7274732C652C6E2C742C72297D72657475726E20745B755D2E6578706F7274737D666F722876617220693D2266756E6374696F6E223D3D747970656F6620726571756972652626726571756972652C753D30';
wwv_flow_api.g_varchar2_table(8) := '3B753C722E6C656E6774683B752B2B296F28725B755D293B72657475726E206F7D287B313A5B66756E6374696F6E28652C6E2C74297B2275736520737472696374223B66756E6374696F6E20722865297B766172206E3D755B655D3B72657475726E206E';
wwv_flow_api.g_varchar2_table(9) := '3F6E2E6C617374496E6465783D303A755B655D3D6E3D6E65772052656745787028632B652B612C226722292C6E7D66756E6374696F6E206F28652C6E297B76617220743D652E636C6173734E616D653B742E6C656E6774683F72286E292E746573742874';
wwv_flow_api.g_varchar2_table(10) := '297C7C28652E636C6173734E616D652B3D2220222B6E293A652E636C6173734E616D653D6E7D66756E6374696F6E206928652C6E297B652E636C6173734E616D653D652E636C6173734E616D652E7265706C6163652872286E292C222022292E7472696D';
wwv_flow_api.g_varchar2_table(11) := '28297D76617220753D7B7D2C633D22283F3A5E7C5C5C7329222C613D22283F3A5C5C737C2429223B6E2E6578706F7274733D7B6164643A6F2C726D3A697D7D2C7B7D5D2C323A5B66756E6374696F6E28652C6E2C74297B2866756E6374696F6E2874297B';
wwv_flow_api.g_varchar2_table(12) := '2275736520737472696374223B66756E6374696F6E207228652C6E297B66756E6374696F6E20742865297B72657475726E2D31213D3D6C652E636F6E7461696E6572732E696E6465784F662865297C7C66652E6973436F6E7461696E65722865297D6675';
wwv_flow_api.g_varchar2_table(13) := '6E6374696F6E20722865297B766172206E3D653F2272656D6F7665223A22616464223B6F28532C6E2C226D6F757365646F776E222C4F292C6F28532C6E2C226D6F7573657570222C4C297D66756E6374696F6E20632865297B766172206E3D653F227265';
wwv_flow_api.g_varchar2_table(14) := '6D6F7665223A22616464223B6F28532C6E2C226D6F7573656D6F7665222C4E297D66756E6374696F6E206D2865297B766172206E3D653F2272656D6F7665223A22616464223B775B6E5D28532C2273656C6563747374617274222C43292C775B6E5D2853';
wwv_flow_api.g_varchar2_table(15) := '2C22636C69636B222C43297D66756E6374696F6E206828297B72282130292C4C287B7D297D66756E6374696F6E20432865297B63652626652E70726576656E7444656661756C7428297D66756E6374696F6E204F2865297B6E653D652E636C69656E7458';
wwv_flow_api.g_varchar2_table(16) := '2C74653D652E636C69656E74593B766172206E3D31213D3D692865297C7C652E6D6574614B65797C7C652E6374726C4B65793B696628216E297B76617220743D652E7461726765742C723D542874293B7226262863653D722C6328292C226D6F75736564';
wwv_flow_api.g_varchar2_table(17) := '6F776E223D3D3D652E74797065262628702874293F742E666F63757328293A652E70726576656E7444656661756C74282929297D7D66756E6374696F6E204E2865297B6966286365297B696628303D3D3D692865292972657475726E20766F6964204C28';
wwv_flow_api.g_varchar2_table(18) := '7B7D293B696628766F696420303D3D3D652E636C69656E74587C7C652E636C69656E7458213D3D6E657C7C766F696420303D3D3D652E636C69656E74597C7C652E636C69656E7459213D3D7465297B69662866652E69676E6F7265496E70757454657874';
wwv_flow_api.g_varchar2_table(19) := '53656C656374696F6E297B766172206E3D792822636C69656E7458222C65292C743D792822636C69656E7459222C65292C723D782E656C656D656E7446726F6D506F696E74286E2C74293B696628702872292972657475726E7D766172206F3D63653B63';
wwv_flow_api.g_varchar2_table(20) := '282130292C6D28292C4428292C42286F293B76617220613D752857293B5A3D7928227061676558222C65292D612E6C6566742C65653D7928227061676559222C65292D612E746F702C452E6164642869657C7C572C2267752D7472616E73697422292C4B';
wwv_flow_api.g_varchar2_table(21) := '28292C552865297D7D7D66756E6374696F6E20542865297B69662821286C652E6472616767696E6726264A7C7C7428652929297B666F7228766172206E3D653B762865292626742876286529293D3D3D21313B297B69662866652E696E76616C69642865';
wwv_flow_api.g_varchar2_table(22) := '2C6E292972657475726E3B696628653D762865292C21652972657475726E7D76617220723D762865293B6966287226262166652E696E76616C696428652C6E29297B766172206F3D66652E6D6F76657328652C722C6E2C67286529293B6966286F297265';
wwv_flow_api.g_varchar2_table(23) := '7475726E7B6974656D3A652C736F757263653A727D7D7D7D66756E6374696F6E20582865297B72657475726E2121542865297D66756E6374696F6E20592865297B766172206E3D542865293B6E262642286E297D66756E6374696F6E20422865297B2428';
wwv_flow_api.g_varchar2_table(24) := '652E6974656D2C652E736F757263652926262869653D652E6974656D2E636C6F6E654E6F6465282130292C6C652E656D69742822636C6F6E6564222C69652C652E6974656D2C22636F70792229292C513D652E736F757263652C573D652E6974656D2C72';
wwv_flow_api.g_varchar2_table(25) := '653D6F653D6728652E6974656D292C6C652E6472616767696E673D21302C6C652E656D6974282264726167222C572C51297D66756E6374696F6E205028297B72657475726E21317D66756E6374696F6E204428297B6966286C652E6472616767696E6729';
wwv_flow_api.g_varchar2_table(26) := '7B76617220653D69657C7C573B4D28652C76286529297D7D66756E6374696F6E204928297B63653D21312C63282130292C6D282130297D66756E6374696F6E204C2865297B6966284928292C6C652E6472616767696E67297B766172206E3D69657C7C57';
wwv_flow_api.g_varchar2_table(27) := '2C743D792822636C69656E7458222C65292C723D792822636C69656E7459222C65292C6F3D61284A2C742C72292C693D71286F2C742C72293B692626286965262666652E636F7079536F7274536F757263657C7C2169657C7C69213D3D51293F4D286E2C';
wwv_flow_api.g_varchar2_table(28) := '69293A66652E72656D6F76654F6E5370696C6C3F5228293A4128297D7D66756E6374696F6E204D28652C6E297B76617220743D762865293B6965262666652E636F7079536F7274536F7572636526266E3D3D3D512626742E72656D6F76654368696C6428';
wwv_flow_api.g_varchar2_table(29) := '57292C6B286E293F6C652E656D6974282263616E63656C222C652C512C51293A6C652E656D6974282264726F70222C652C6E2C512C6F65292C6A28297D66756E6374696F6E205228297B6966286C652E6472616767696E67297B76617220653D69657C7C';
wwv_flow_api.g_varchar2_table(30) := '572C6E3D762865293B6E26266E2E72656D6F76654368696C642865292C6C652E656D69742869653F2263616E63656C223A2272656D6F7665222C652C6E2C51292C6A28297D7D66756E6374696F6E20412865297B6966286C652E6472616767696E67297B';
wwv_flow_api.g_varchar2_table(31) := '766172206E3D617267756D656E74732E6C656E6774683E303F653A66652E7265766572744F6E5370696C6C2C743D69657C7C572C723D762874292C6F3D6B2872293B6F3D3D3D213126266E26262869653F722626722E72656D6F76654368696C64286965';
wwv_flow_api.g_varchar2_table(32) := '293A512E696E736572744265666F726528742C726529292C6F7C7C6E3F6C652E656D6974282263616E63656C222C742C512C51293A6C652E656D6974282264726F70222C742C722C512C6F65292C6A28297D7D66756E6374696F6E206A28297B76617220';
wwv_flow_api.g_varchar2_table(33) := '653D69657C7C573B4928292C7A28292C652626452E726D28652C2267752D7472616E73697422292C75652626636C65617254696D656F7574287565292C6C652E6472616767696E673D21312C616526266C652E656D697428226F7574222C652C61652C51';
wwv_flow_api.g_varchar2_table(34) := '292C6C652E656D6974282264726167656E64222C65292C513D573D69653D72653D6F653D75653D61653D6E756C6C7D66756E6374696F6E206B28652C6E297B76617220743B72657475726E20743D766F69642030213D3D6E3F6E3A4A3F6F653A67286965';
wwv_flow_api.g_varchar2_table(35) := '7C7C57292C653D3D3D512626743D3D3D72657D66756E6374696F6E207128652C6E2C72297B66756E6374696F6E206F28297B766172206F3D742869293B6966286F3D3D3D21312972657475726E21313B76617220753D4828692C65292C633D5628692C75';
wwv_flow_api.g_varchar2_table(36) := '2C6E2C72292C613D6B28692C63293B72657475726E20613F21303A66652E6163636570747328572C692C512C63297D666F722876617220693D653B692626216F28293B29693D762869293B72657475726E20697D66756E6374696F6E20552865297B6675';
wwv_flow_api.g_varchar2_table(37) := '6E6374696F6E206E2865297B6C652E656D697428652C662C61652C51297D66756E6374696F6E207428297B7326266E28226F76657222297D66756E6374696F6E207228297B616526266E28226F757422297D6966284A297B652E70726576656E74446566';
wwv_flow_api.g_varchar2_table(38) := '61756C7428293B766172206F3D792822636C69656E7458222C65292C693D792822636C69656E7459222C65292C753D6F2D5A2C633D692D65653B4A2E7374796C652E6C6566743D752B227078222C4A2E7374796C652E746F703D632B227078223B766172';
wwv_flow_api.g_varchar2_table(39) := '20663D69657C7C572C6C3D61284A2C6F2C69292C643D71286C2C6F2C69292C733D6E756C6C213D3D64262664213D3D61653B28737C7C6E756C6C3D3D3D64292626287228292C61653D642C742829293B76617220703D762866293B696628643D3D3D5126';
wwv_flow_api.g_varchar2_table(40) := '26696526262166652E636F7079536F7274536F757263652972657475726E20766F696428702626702E72656D6F76654368696C64286629293B766172206D2C683D4828642C6C293B6966286E756C6C213D3D68296D3D5628642C682C6F2C69293B656C73';
wwv_flow_api.g_varchar2_table(41) := '657B69662866652E7265766572744F6E5370696C6C213D3D21307C7C69652972657475726E20766F69642869652626702626702E72656D6F76654368696C64286629293B6D3D72652C643D517D286E756C6C3D3D3D6D2626737C7C6D213D3D6626266D21';
wwv_flow_api.g_varchar2_table(42) := '3D3D67286629292626286F653D6D2C642E696E736572744265666F726528662C6D292C6C652E656D69742822736861646F77222C662C642C5129297D7D66756E6374696F6E205F2865297B452E726D28652C2267752D6869646522297D66756E6374696F';
wwv_flow_api.g_varchar2_table(43) := '6E20462865297B6C652E6472616767696E672626452E61646428652C2267752D6869646522297D66756E6374696F6E204B28297B696628214A297B76617220653D572E676574426F756E64696E67436C69656E745265637428293B4A3D572E636C6F6E65';
wwv_flow_api.g_varchar2_table(44) := '4E6F6465282130292C4A2E7374796C652E77696474683D642865292B227078222C4A2E7374796C652E6865696768743D732865292B227078222C452E726D284A2C2267752D7472616E73697422292C452E616464284A2C2267752D6D6972726F7222292C';
wwv_flow_api.g_varchar2_table(45) := '66652E6D6972726F72436F6E7461696E65722E617070656E644368696C64284A292C6F28532C22616464222C226D6F7573656D6F7665222C55292C452E6164642866652E6D6972726F72436F6E7461696E65722C2267752D756E73656C65637461626C65';
wwv_flow_api.g_varchar2_table(46) := '22292C6C652E656D69742822636C6F6E6564222C4A2C572C226D6972726F7222297D7D66756E6374696F6E207A28297B4A262628452E726D2866652E6D6972726F72436F6E7461696E65722C2267752D756E73656C65637461626C6522292C6F28532C22';
wwv_flow_api.g_varchar2_table(47) := '72656D6F7665222C226D6F7573656D6F7665222C55292C76284A292E72656D6F76654368696C64284A292C4A3D6E756C6C297D66756E6374696F6E204828652C6E297B666F722876617220743D6E3B74213D3D65262676287429213D3D653B29743D7628';
wwv_flow_api.g_varchar2_table(48) := '74293B72657475726E20743D3D3D533F6E756C6C3A747D66756E6374696F6E205628652C6E2C742C72297B66756E6374696F6E206F28297B766172206E2C6F2C692C753D652E6368696C6472656E2E6C656E6774683B666F72286E3D303B753E6E3B6E2B';
wwv_flow_api.g_varchar2_table(49) := '2B297B6966286F3D652E6368696C6472656E5B6E5D2C693D6F2E676574426F756E64696E67436C69656E745265637428292C632626692E6C6566742B692E77696474682F323E742972657475726E206F3B69662821632626692E746F702B692E68656967';
wwv_flow_api.g_varchar2_table(50) := '68742F323E722972657475726E206F7D72657475726E206E756C6C7D66756E6374696F6E206928297B76617220653D6E2E676574426F756E64696E67436C69656E745265637428293B72657475726E207528633F743E652E6C6566742B642865292F323A';
wwv_flow_api.g_varchar2_table(51) := '723E652E746F702B732865292F32297D66756E6374696F6E20752865297B72657475726E20653F67286E293A6E7D76617220633D22686F72697A6F6E74616C223D3D3D66652E646972656374696F6E2C613D6E213D3D653F6928293A6F28293B72657475';
wwv_flow_api.g_varchar2_table(52) := '726E20617D66756E6374696F6E202428652C6E297B72657475726E22626F6F6C65616E223D3D747970656F662066652E636F70793F66652E636F70793A66652E636F707928652C6E297D76617220473D617267756D656E74732E6C656E6774683B313D3D';
wwv_flow_api.g_varchar2_table(53) := '3D47262641727261792E697341727261792865293D3D3D21312626286E3D652C653D5B5D293B766172204A2C512C572C5A2C65652C6E652C74652C72652C6F652C69652C75652C63652C61653D6E756C6C2C66653D6E7C7C7B7D3B766F696420303D3D3D';
wwv_flow_api.g_varchar2_table(54) := '66652E6D6F76657326262866652E6D6F7665733D6C292C766F696420303D3D3D66652E6163636570747326262866652E616363657074733D6C292C766F696420303D3D3D66652E696E76616C696426262866652E696E76616C69643D50292C766F696420';
wwv_flow_api.g_varchar2_table(55) := '303D3D3D66652E636F6E7461696E65727326262866652E636F6E7461696E6572733D657C7C5B5D292C766F696420303D3D3D66652E6973436F6E7461696E657226262866652E6973436F6E7461696E65723D66292C766F696420303D3D3D66652E636F70';
wwv_flow_api.g_varchar2_table(56) := '7926262866652E636F70793D2131292C766F696420303D3D3D66652E636F7079536F7274536F7572636526262866652E636F7079536F7274536F757263653D2131292C766F696420303D3D3D66652E7265766572744F6E5370696C6C26262866652E7265';
wwv_flow_api.g_varchar2_table(57) := '766572744F6E5370696C6C3D2131292C766F696420303D3D3D66652E72656D6F76654F6E5370696C6C26262866652E72656D6F76654F6E5370696C6C3D2131292C766F696420303D3D3D66652E646972656374696F6E26262866652E646972656374696F';
wwv_flow_api.g_varchar2_table(58) := '6E3D22766572746963616C22292C766F696420303D3D3D66652E69676E6F7265496E7075745465787453656C656374696F6E26262866652E69676E6F7265496E7075745465787453656C656374696F6E3D2130292C766F696420303D3D3D66652E6D6972';
wwv_flow_api.g_varchar2_table(59) := '726F72436F6E7461696E657226262866652E6D6972726F72436F6E7461696E65723D782E626F6479293B766172206C653D62287B636F6E7461696E6572733A66652E636F6E7461696E6572732C73746172743A592C656E643A442C63616E63656C3A412C';
wwv_flow_api.g_varchar2_table(60) := '72656D6F76653A522C64657374726F793A682C63616E4D6F76653A582C6472616767696E673A21317D293B72657475726E2066652E72656D6F76654F6E5370696C6C3D3D3D213026266C652E6F6E28226F766572222C5F292E6F6E28226F7574222C4629';
wwv_flow_api.g_varchar2_table(61) := '2C7228292C6C657D66756E6374696F6E206F28652C6E2C722C6F297B76617220693D7B6D6F75736575703A22746F756368656E64222C6D6F757365646F776E3A22746F7563687374617274222C6D6F7573656D6F76653A22746F7563686D6F7665227D2C';
wwv_flow_api.g_varchar2_table(62) := '753D7B6D6F75736575703A22706F696E7465727570222C6D6F757365646F776E3A22706F696E746572646F776E222C6D6F7573656D6F76653A22706F696E7465726D6F7665227D2C633D7B6D6F75736575703A224D53506F696E7465725570222C6D6F75';
wwv_flow_api.g_varchar2_table(63) := '7365646F776E3A224D53506F696E746572446F776E222C6D6F7573656D6F76653A224D53506F696E7465724D6F7665227D3B742E6E6176696761746F722E706F696E746572456E61626C65643F775B6E5D28652C755B725D2C6F293A742E6E6176696761';
wwv_flow_api.g_varchar2_table(64) := '746F722E6D73506F696E746572456E61626C65643F775B6E5D28652C635B725D2C6F293A28775B6E5D28652C695B725D2C6F292C775B6E5D28652C722C6F29297D66756E6374696F6E20692865297B696628766F69642030213D3D652E746F7563686573';
wwv_flow_api.g_varchar2_table(65) := '2972657475726E20652E746F75636865732E6C656E6774683B696628766F69642030213D3D652E7768696368262630213D3D652E77686963682972657475726E20652E77686963683B696628766F69642030213D3D652E627574746F6E73297265747572';
wwv_flow_api.g_varchar2_table(66) := '6E20652E627574746F6E733B766172206E3D652E627574746F6E3B72657475726E20766F69642030213D3D6E3F31266E3F313A32266E3F333A34266E3F323A303A766F696420307D66756E6374696F6E20752865297B766172206E3D652E676574426F75';
wwv_flow_api.g_varchar2_table(67) := '6E64696E67436C69656E745265637428293B72657475726E7B6C6566743A6E2E6C6566742B6328227363726F6C6C4C656674222C2270616765584F666673657422292C746F703A6E2E746F702B6328227363726F6C6C546F70222C2270616765594F6666';
wwv_flow_api.g_varchar2_table(68) := '73657422297D7D66756E6374696F6E206328652C6E297B72657475726E22756E646566696E656422213D747970656F6620745B6E5D3F745B6E5D3A532E636C69656E744865696768743F535B655D3A782E626F64795B655D7D66756E6374696F6E206128';
wwv_flow_api.g_varchar2_table(69) := '652C6E2C74297B76617220722C6F3D657C7C7B7D2C693D6F2E636C6173734E616D653B72657475726E206F2E636C6173734E616D652B3D222067752D68696465222C723D782E656C656D656E7446726F6D506F696E74286E2C74292C6F2E636C6173734E';
wwv_flow_api.g_varchar2_table(70) := '616D653D692C727D66756E6374696F6E206628297B72657475726E21317D66756E6374696F6E206C28297B72657475726E21307D66756E6374696F6E20642865297B72657475726E20652E77696474687C7C652E72696768742D652E6C6566747D66756E';
wwv_flow_api.g_varchar2_table(71) := '6374696F6E20732865297B72657475726E20652E6865696768747C7C652E626F74746F6D2D652E746F707D66756E6374696F6E20762865297B72657475726E20652E706172656E744E6F64653D3D3D783F6E756C6C3A652E706172656E744E6F64657D66';
wwv_flow_api.g_varchar2_table(72) := '756E6374696F6E20702865297B72657475726E22494E505554223D3D3D652E7461674E616D657C7C225445585441524541223D3D3D652E7461674E616D657C7C2253454C454354223D3D3D652E7461674E616D657C7C6D2865297D66756E6374696F6E20';
wwv_flow_api.g_varchar2_table(73) := '6D2865297B72657475726E20653F2266616C7365223D3D3D652E636F6E74656E744564697461626C653F21313A2274727565223D3D3D652E636F6E74656E744564697461626C653F21303A6D2876286529293A21317D66756E6374696F6E20672865297B';
wwv_flow_api.g_varchar2_table(74) := '66756E6374696F6E206E28297B766172206E3D653B646F206E3D6E2E6E6578745369626C696E673B7768696C65286E262631213D3D6E2E6E6F646554797065293B72657475726E206E7D72657475726E20652E6E657874456C656D656E745369626C696E';
wwv_flow_api.g_varchar2_table(75) := '677C7C6E28297D66756E6374696F6E20682865297B72657475726E20652E746172676574546F75636865732626652E746172676574546F75636865732E6C656E6774683F652E746172676574546F75636865735B305D3A652E6368616E676564546F7563';
wwv_flow_api.g_varchar2_table(76) := '6865732626652E6368616E676564546F75636865732E6C656E6774683F652E6368616E676564546F75636865735B305D3A657D66756E6374696F6E207928652C6E297B76617220743D68286E292C723D7B70616765583A22636C69656E7458222C706167';
wwv_flow_api.g_varchar2_table(77) := '65593A22636C69656E7459227D3B72657475726E206520696E2072262621286520696E2074292626725B655D696E2074262628653D725B655D292C745B655D7D76617220623D652822636F6E7472612F656D697474657222292C773D65282263726F7373';
wwv_flow_api.g_varchar2_table(78) := '76656E7422292C453D6528222E2F636C617373657322292C783D646F63756D656E742C533D782E646F63756D656E74456C656D656E743B6E2E6578706F7274733D727D292E63616C6C28746869732C22756E646566696E656422213D747970656F662067';
wwv_flow_api.g_varchar2_table(79) := '6C6F62616C3F676C6F62616C3A22756E646566696E656422213D747970656F662073656C663F73656C663A22756E646566696E656422213D747970656F662077696E646F773F77696E646F773A7B7D297D2C7B222E2F636C6173736573223A312C22636F';
wwv_flow_api.g_varchar2_table(80) := '6E7472612F656D6974746572223A352C63726F737376656E743A367D5D2C333A5B66756E6374696F6E28652C6E2C74297B6E2E6578706F7274733D66756E6374696F6E28652C6E297B72657475726E2041727261792E70726F746F747970652E736C6963';
wwv_flow_api.g_varchar2_table(81) := '652E63616C6C28652C6E297D7D2C7B7D5D2C343A5B66756E6374696F6E28652C6E2C74297B2275736520737472696374223B76617220723D6528227469636B7922293B6E2E6578706F7274733D66756E6374696F6E28652C6E2C74297B65262672286675';
wwv_flow_api.g_varchar2_table(82) := '6E6374696F6E28297B652E6170706C7928747C7C6E756C6C2C6E7C7C5B5D297D297D7D2C7B7469636B793A397D5D2C353A5B66756E6374696F6E28652C6E2C74297B2275736520737472696374223B76617220723D65282261746F6122292C6F3D652822';
wwv_flow_api.g_varchar2_table(83) := '2E2F6465626F756E636522293B6E2E6578706F7274733D66756E6374696F6E28652C6E297B76617220743D6E7C7C7B7D2C693D7B7D3B72657475726E20766F696420303D3D3D65262628653D7B7D292C652E6F6E3D66756E6374696F6E286E2C74297B72';
wwv_flow_api.g_varchar2_table(84) := '657475726E20695B6E5D3F695B6E5D2E707573682874293A695B6E5D3D5B745D2C657D2C652E6F6E63653D66756E6374696F6E286E2C74297B72657475726E20742E5F6F6E63653D21302C652E6F6E286E2C74292C657D2C652E6F66663D66756E637469';
wwv_flow_api.g_varchar2_table(85) := '6F6E286E2C74297B76617220723D617267756D656E74732E6C656E6774683B696628313D3D3D722964656C65746520695B6E5D3B656C736520696628303D3D3D7229693D7B7D3B656C73657B766172206F3D695B6E5D3B696628216F2972657475726E20';
wwv_flow_api.g_varchar2_table(86) := '653B6F2E73706C696365286F2E696E6465784F662874292C31297D72657475726E20657D2C652E656D69743D66756E6374696F6E28297B766172206E3D7228617267756D656E7473293B72657475726E20652E656D6974746572536E617073686F74286E';
wwv_flow_api.g_varchar2_table(87) := '2E73686966742829292E6170706C7928746869732C6E297D2C652E656D6974746572536E617073686F743D66756E6374696F6E286E297B76617220753D28695B6E5D7C7C5B5D292E736C6963652830293B72657475726E2066756E6374696F6E28297B76';
wwv_flow_api.g_varchar2_table(88) := '617220693D7228617267756D656E7473292C633D746869737C7C653B696628226572726F72223D3D3D6E2626745B227468726F7773225D213D3D2131262621752E6C656E677468297468726F7720313D3D3D692E6C656E6774683F695B305D3A693B7265';
wwv_flow_api.g_varchar2_table(89) := '7475726E20752E666F72456163682866756E6374696F6E2872297B742E6173796E633F6F28722C692C63293A722E6170706C7928632C69292C722E5F6F6E63652626652E6F6666286E2C72297D292C657D7D2C657D7D2C7B222E2F6465626F756E636522';
wwv_flow_api.g_varchar2_table(90) := '3A342C61746F613A337D5D2C363A5B66756E6374696F6E28652C6E2C74297B2866756E6374696F6E2874297B2275736520737472696374223B66756E6374696F6E207228652C6E2C742C72297B72657475726E20652E6164644576656E744C697374656E';
wwv_flow_api.g_varchar2_table(91) := '6572286E2C742C72297D66756E6374696F6E206F28652C6E2C74297B72657475726E20652E6174746163684576656E7428226F6E222B6E2C6628652C6E2C7429297D66756E6374696F6E206928652C6E2C742C72297B72657475726E20652E72656D6F76';
wwv_flow_api.g_varchar2_table(92) := '654576656E744C697374656E6572286E2C742C72297D66756E6374696F6E207528652C6E2C74297B76617220723D6C28652C6E2C74293B72657475726E20723F652E6465746163684576656E7428226F6E222B6E2C72293A766F696420307D66756E6374';
wwv_flow_api.g_varchar2_table(93) := '696F6E206328652C6E2C74297B66756E6374696F6E207228297B76617220653B72657475726E20702E6372656174654576656E743F28653D702E6372656174654576656E7428224576656E7422292C652E696E69744576656E74286E2C21302C21302929';
wwv_flow_api.g_varchar2_table(94) := '3A702E6372656174654576656E744F626A656374262628653D702E6372656174654576656E744F626A6563742829292C657D66756E6374696F6E206F28297B72657475726E206E65772073286E2C7B64657461696C3A747D297D76617220693D2D313D3D';
wwv_flow_api.g_varchar2_table(95) := '3D762E696E6465784F66286E293F6F28293A7228293B652E64697370617463684576656E743F652E64697370617463684576656E742869293A652E666972654576656E7428226F6E222B6E2C69297D66756E6374696F6E206128652C6E2C72297B726574';
wwv_flow_api.g_varchar2_table(96) := '75726E2066756E6374696F6E286E297B766172206F3D6E7C7C742E6576656E743B6F2E7461726765743D6F2E7461726765747C7C6F2E737263456C656D656E742C6F2E70726576656E7444656661756C743D6F2E70726576656E7444656661756C747C7C';
wwv_flow_api.g_varchar2_table(97) := '66756E6374696F6E28297B6F2E72657475726E56616C75653D21317D2C6F2E73746F7050726F7061676174696F6E3D6F2E73746F7050726F7061676174696F6E7C7C66756E6374696F6E28297B6F2E63616E63656C427562626C653D21307D2C6F2E7768';
wwv_flow_api.g_varchar2_table(98) := '6963683D6F2E77686963687C7C6F2E6B6579436F64652C722E63616C6C28652C6F297D7D66756E6374696F6E206628652C6E2C74297B76617220723D6C28652C6E2C74297C7C6128652C6E2C74293B72657475726E20682E70757368287B777261707065';
wwv_flow_api.g_varchar2_table(99) := '723A722C656C656D656E743A652C747970653A6E2C666E3A747D292C727D66756E6374696F6E206C28652C6E2C74297B76617220723D6428652C6E2C74293B69662872297B766172206F3D685B725D2E777261707065723B72657475726E20682E73706C';
wwv_flow_api.g_varchar2_table(100) := '69636528722C31292C6F7D7D66756E6374696F6E206428652C6E2C74297B76617220722C6F3B666F7228723D303B723C682E6C656E6774683B722B2B296966286F3D685B725D2C6F2E656C656D656E743D3D3D6526266F2E747970653D3D3D6E26266F2E';
wwv_flow_api.g_varchar2_table(101) := '666E3D3D3D742972657475726E20727D76617220733D652822637573746F6D2D6576656E7422292C763D6528222E2F6576656E746D617022292C703D742E646F63756D656E742C6D3D722C673D692C683D5B5D3B742E6164644576656E744C697374656E';
wwv_flow_api.g_varchar2_table(102) := '65727C7C286D3D6F2C673D75292C6E2E6578706F7274733D7B6164643A6D2C72656D6F76653A672C6661627269636174653A637D7D292E63616C6C28746869732C22756E646566696E656422213D747970656F6620676C6F62616C3F676C6F62616C3A22';
wwv_flow_api.g_varchar2_table(103) := '756E646566696E656422213D747970656F662073656C663F73656C663A22756E646566696E656422213D747970656F662077696E646F773F77696E646F773A7B7D297D2C7B222E2F6576656E746D6170223A372C22637573746F6D2D6576656E74223A38';
wwv_flow_api.g_varchar2_table(104) := '7D5D2C373A5B66756E6374696F6E28652C6E2C74297B2866756E6374696F6E2865297B2275736520737472696374223B76617220743D5B5D2C723D22222C6F3D2F5E6F6E2F3B666F72287220696E2065296F2E746573742872292626742E707573682872';
wwv_flow_api.g_varchar2_table(105) := '2E736C696365283229293B6E2E6578706F7274733D747D292E63616C6C28746869732C22756E646566696E656422213D747970656F6620676C6F62616C3F676C6F62616C3A22756E646566696E656422213D747970656F662073656C663F73656C663A22';
wwv_flow_api.g_varchar2_table(106) := '756E646566696E656422213D747970656F662077696E646F773F77696E646F773A7B7D297D2C7B7D5D2C383A5B66756E6374696F6E28652C6E2C74297B2866756E6374696F6E2865297B66756E6374696F6E207428297B7472797B76617220653D6E6577';
wwv_flow_api.g_varchar2_table(107) := '20722822636174222C7B64657461696C3A7B666F6F3A22626172227D7D293B72657475726E22636174223D3D3D652E74797065262622626172223D3D3D652E64657461696C2E666F6F7D6361746368286E297B7D72657475726E21317D76617220723D65';
wwv_flow_api.g_varchar2_table(108) := '2E437573746F6D4576656E743B6E2E6578706F7274733D7428293F723A2266756E6374696F6E223D3D747970656F6620646F63756D656E742E6372656174654576656E743F66756E6374696F6E28652C6E297B76617220743D646F63756D656E742E6372';
wwv_flow_api.g_varchar2_table(109) := '656174654576656E742822437573746F6D4576656E7422293B72657475726E206E3F742E696E6974437573746F6D4576656E7428652C6E2E627562626C65732C6E2E63616E63656C61626C652C6E2E64657461696C293A742E696E6974437573746F6D45';
wwv_flow_api.g_varchar2_table(110) := '76656E7428652C21312C21312C766F69642030292C747D3A66756E6374696F6E28652C6E297B76617220743D646F63756D656E742E6372656174654576656E744F626A65637428293B72657475726E20742E747970653D652C6E3F28742E627562626C65';
wwv_flow_api.g_varchar2_table(111) := '733D426F6F6C65616E286E2E627562626C6573292C742E63616E63656C61626C653D426F6F6C65616E286E2E63616E63656C61626C65292C742E64657461696C3D6E2E64657461696C293A28742E627562626C65733D21312C742E63616E63656C61626C';
wwv_flow_api.g_varchar2_table(112) := '653D21312C742E64657461696C3D766F69642030292C747D7D292E63616C6C28746869732C22756E646566696E656422213D747970656F6620676C6F62616C3F676C6F62616C3A22756E646566696E656422213D747970656F662073656C663F73656C66';
wwv_flow_api.g_varchar2_table(113) := '3A22756E646566696E656422213D747970656F662077696E646F773F77696E646F773A7B7D297D2C7B7D5D2C393A5B66756E6374696F6E28652C6E2C74297B76617220722C6F3D2266756E6374696F6E223D3D747970656F6620736574496D6D65646961';
wwv_flow_api.g_varchar2_table(114) := '74653B723D6F3F66756E6374696F6E2865297B736574496D6D6564696174652865297D3A66756E6374696F6E2865297B73657454696D656F757428652C30297D2C6E2E6578706F7274733D727D2C7B7D5D7D2C7B7D2C5B325D292832297D293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(89964751876809074576)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_file_name=>'dragula.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '766172206D6174657269616C4B616E62616E3D66756E6374696F6E28297B2275736520737472696374223B76617220653D7B76657273696F6E3A22312E302E3262222C65736361706548544D4C3A66756E6374696F6E2865297B6966286E756C6C3D3D3D';
wwv_flow_api.g_varchar2_table(2) := '652972657475726E206E756C6C3B696628766F69642030213D3D65297B696628226F626A656374223D3D747970656F662065297472797B653D4A534F4E2E737472696E676966792865297D63617463682865297B7D7472797B72657475726E2061706578';
wwv_flow_api.g_varchar2_table(3) := '2E7574696C2E65736361706548544D4C28537472696E67286529297D63617463682861297B72657475726E28653D537472696E67286529292E7265706C616365282F262F672C2226616D703B22292E7265706C616365282F3C2F672C22266C743B22292E';
wwv_flow_api.g_varchar2_table(4) := '7265706C616365282F3E2F672C222667743B22292E7265706C616365282F222F672C222671756F743B22292E7265706C616365282F272F672C2226237832373B22292E7265706C616365282F5C2F2F672C2226237832463B22297D7D7D2C6C6F61646572';
wwv_flow_api.g_varchar2_table(5) := '3A7B73746172743A66756E6374696F6E2865297B7472797B617065782E7574696C2E73686F775370696E6E65722824286529297D63617463682874297B76617220613D2428223C7370616E3E3C2F7370616E3E22293B612E6174747228226964222C226C';
wwv_flow_api.g_varchar2_table(6) := '6F61646572222B65292C612E616464436C617373282263742D6C6F616465722066612D737461636B2066612D337822293B76617220723D2428223C693E3C2F693E22293B722E616464436C617373282266612066612D636972636C652066612D73746163';
wwv_flow_api.g_varchar2_table(7) := '6B2D327822292C722E6373732822636F6C6F72222C2272676261283132312C3132312C3132312C302E362922293B766172206E3D2428223C693E3C2F693E22293B6E2E616464436C617373282266612066612D726566726573682066612D7370696E2066';
wwv_flow_api.g_varchar2_table(8) := '612D696E76657273652066612D737461636B2D317822292C6E2E6373732822616E696D6174696F6E2D6475726174696F6E222C22312E387322292C612E617070656E642872292C612E617070656E64286E292C242865292E617070656E642861297D7D2C';
wwv_flow_api.g_varchar2_table(9) := '73746F703A66756E6374696F6E2865297B2428652B22203E202E752D50726F63657373696E6722292E72656D6F766528292C2428652B22203E202E63742D6C6F6164657222292E72656D6F766528297D7D2C6A736F6E53617665457874656E643A66756E';
wwv_flow_api.g_varchar2_table(10) := '6374696F6E28652C612C72297B766F696420303D3D72262628723D2130293B766172206E3D7B7D3B69662822737472696E67223D3D747970656F662061297472797B613D4A534F4E2E70617273652861297D63617463682865297B636F6E736F6C652E65';
wwv_flow_api.g_varchar2_table(11) := '72726F7228224572726F72207768696C652074727920746F207061727365207564436F6E6669674A534F4E2E20506C6561736520636865636B20796F757220436F6E666967204A534F4E2E205374616E6461726420436F6E6669672077696C6C20626520';
wwv_flow_api.g_varchar2_table(12) := '757365642E22292C636F6E736F6C652E6572726F722865292C636F6E736F6C652E6572726F722861297D656C7365206E3D613B7472797B6E3D242E657874656E6428722C5B5D2C652C61297D63617463682861297B636F6E736F6C652E6572726F722822';
wwv_flow_api.g_varchar2_table(13) := '4572726F72207768696C652074727920746F206D65726765207564436F6E6669674A534F4E20696E746F205374616E64617264204A534F4E20696620616E7920617474726962757465206973206D697373696E672E20506C6561736520636865636B2079';
wwv_flow_api.g_varchar2_table(14) := '6F757220436F6E666967204A534F4E2E205374616E6461726420436F6E6669672077696C6C20626520757365642E22292C636F6E736F6C652E6572726F722861292C6E3D652C636F6E736F6C652E6572726F72286E297D72657475726E206E7D2C6E6F44';
wwv_flow_api.g_varchar2_table(15) := '6174614D6573736167653A7B73686F773A66756E6374696F6E28652C61297B76617220723D2428223C6469763E3C2F6469763E22292E63737328226D617267696E222C223132707822292E6373732822746578742D616C69676E222C2263656E74657222';
wwv_flow_api.g_varchar2_table(16) := '292E637373282270616464696E67222C2236347078203022292E616464436C61737328226E6F64617461666F756E646D65737361676522292C6E3D2428223C6469763E3C2F6469763E22292C743D2428223C7370616E3E3C2F7370616E3E22292E616464';
wwv_flow_api.g_varchar2_table(17) := '436C6173732822666122292E616464436C617373282266612D73656172636822292E616464436C617373282266612D327822292E6373732822686569676874222C223332707822292E63737328227769647468222C223332707822292E6373732822636F';
wwv_flow_api.g_varchar2_table(18) := '6C6F72222C222344304430443022292E63737328226D617267696E2D626F74746F6D222C223136707822293B6E2E617070656E642874293B766172206F3D2428223C7370616E3E3C2F7370616E3E22292E746578742861292E6373732822646973706C61';
wwv_flow_api.g_varchar2_table(19) := '79222C22626C6F636B22292E6373732822636F6C6F72222C222337303730373022292E6373732822666F6E742D73697A65222C223132707822293B722E617070656E64286E292E617070656E64286F292C242865292E617070656E642872297D2C686964';
wwv_flow_api.g_varchar2_table(20) := '653A66756E6374696F6E2865297B242865292E6368696C6472656E28222E6E6F64617461666F756E646D65737361676522292E72656D6F766528297D7D2C67726F757042793A66756E6374696F6E28652C61297B76617220723D6E6577204D61703B7265';
wwv_flow_api.g_varchar2_table(21) := '7475726E20652E666F72456163682866756E6374696F6E2865297B766172206E3D612865293B722E686173286E293F722E676574286E292E707573682865293A722E736574286E2C5B655D297D292C727D7D3B72657475726E7B696E697469616C697A65';
wwv_flow_api.g_varchar2_table(22) := '3A66756E6374696F6E28612C722C6E2C742C6F2C642C732C692C6C297B66756E6374696F6E206328297B6966287229652E6C6F616465722E73746172742845292C617065782E7365727665722E706C7567696E28722C7B706167654974656D733A6F2C78';
wwv_flow_api.g_varchar2_table(23) := '30313A2267657444617461227D2C7B737563636573733A66756E6374696F6E2865297B622E7472696767657228226D6174657269616C6B616E62616E646174616C6F6164656422292C702865292C622E7472696767657228226D6174657269616C6B616E';
wwv_flow_api.g_varchar2_table(24) := '62616E6461746172656E646572656422297D2C6572726F723A66756E6374696F6E2865297B452E656D70747928292C636F6E736F6C652E6C6F6728652E726573706F6E736554657874297D2C64617461547970653A226A736F6E227D293B656C73652074';
wwv_flow_api.g_varchar2_table(25) := '72797B652E6C6F616465722E73746172742845292C73657454696D656F75742866756E6374696F6E28297B7028646174614A534F4E297D2C353030297D63617463682865297B636F6E736F6C652E6C6F6728226E6565642064617461206A736F6E22292C';
wwv_flow_api.g_varchar2_table(26) := '636F6E736F6C652E6C6F672865297D7D66756E6374696F6E20702861297B696628662E7072696E7444617461546F436F6E736F6C65262628636F6E736F6C652E6C6F67284A534F4E2E737472696E67696679286129292C636F6E736F6C652E6C6F672861';
wwv_flow_api.g_varchar2_table(27) := '29292C493D612E726F772C452E656D70747928292C662E64796E616D6963436F6C756D6E73297B76617220743D5B5D3B652E67726F7570427928612E726F772C66756E6374696F6E2865297B72657475726E20652E434F4C554D4E5F49447D292E666F72';
wwv_flow_api.g_varchar2_table(28) := '456163682866756E6374696F6E28652C612C72297B612626742E7075736828655B305D297D292C763D747D696628242E6561636828762C66756E6374696F6E28612C72297B2131213D3D73262628722E434F4C554D4E5F49443D652E6573636170654854';
wwv_flow_api.g_varchar2_table(29) := '4D4C28722E434F4C554D4E5F4944292C722E434F4C554D4E5F5449544C453D652E65736361706548544D4C28722E434F4C554D4E5F5449544C45292C722E434F4C554D4E5F49434F4E3D652E65736361706548544D4C28722E434F4C554D4E5F49434F4E';
wwv_flow_api.g_varchar2_table(30) := '292C722E434F4C554D4E5F49434F4E5F434F4C4F523D652E65736361706548544D4C28722E434F4C554D4E5F49434F4E5F434F4C4F52292C722E434F4C554D4E5F4845414445525F5354594C453D652E65736361706548544D4C28722E434F4C554D4E5F';
wwv_flow_api.g_varchar2_table(31) := '4845414445525F5354594C45292C722E434F4C554D4E5F434F4C4F523D652E65736361706548544D4C28722E434F4C554D4E5F434F4C4F5229292C766F696420303D3D722E434F4C554D4E5F434F4C4F52262628722E434F4C554D4E5F434F4C4F523D22';
wwv_flow_api.g_varchar2_table(32) := '68736C28222B34362A61253335302B222C203535252C203630252922292C722E434F4C554D4E5F494E4445583D722E434F4C554D4E5F494E4445583F722E434F4C554D4E5F494E4445583A617D292C762626762E6C656E6774683E30297B543D662E6772';
wwv_flow_api.g_varchar2_table(33) := '6F7570457874656E73696F6E3F3130302F2831322A762E6C656E6774682F662E67726F7570436F6C57696474682B31293A302C683D283130302D54292F762E6C656E6774682C543D4D6174682E666C6F6F72283130302A54292F3130302C683D4D617468';
wwv_flow_api.g_varchar2_table(34) := '2E666C6F6F72283130302A68292F3130302C66756E6374696F6E2865297B76617220613D4F2865293B696628612E616464436C61737328226B622D726F7722292C662E67726F7570457874656E73696F6E297B76617220723D2428223C6469763E3C2F64';
wwv_flow_api.g_varchar2_table(35) := '69763E22293B722E616464436C61737328226B622D636F6C206B622D636F6C2D68656164657222292C722E6174747228227374796C65222C2277696474683A222B542B222522292C612E617070656E642872297D242E6561636828762C66756E6374696F';
wwv_flow_api.g_varchar2_table(36) := '6E28652C6E297B28723D2428223C6469763E3C2F6469763E2229292E616464436C61737328226B622D636F6C206B622D636F6C2D68656164657222292C722E6174747228227374796C65222C2277696474683A222B682B222522292C722E617474722822';
wwv_flow_api.g_varchar2_table(37) := '6964222C6E2E434F4C554D4E5F4944293B76617220743D2428223C6469763E3C2F6469763E22293B742E616464436C61737328226B622D636F6C2D6865616465722D636F6E74656E7422293B766172206F3D22626F726465722D746F702D636F6C6F723A';
wwv_flow_api.g_varchar2_table(38) := '20222B6E2E434F4C554D4E5F434F4C4F522B223B223B742E6174747228227374796C65222C6E2E434F4C554D4E5F4845414445525F5354594C457C7C6F293B76617220643D766F69642030213D6E2E434F4C554D4E5F5449544C453F6E2E434F4C554D4E';
wwv_flow_api.g_varchar2_table(39) := '5F5449544C453A22223B742E617070656E6428273C7020636C6173733D227469746C65223E272B642B223C2F703E22292C722E617070656E642874292C612E617070656E642872297D297D2845293B76617220643D4F2845293B696628642E616464436C';
wwv_flow_api.g_varchar2_table(40) := '61737328226B622D67726F75702D636F6E7461696E657222292C612E726F772626612E726F772E6C656E6774683E30297B652E67726F7570427928612E726F772C66756E6374696F6E2865297B72657475726E20662E67726F7570457874656E73696F6E';
wwv_flow_api.g_varchar2_table(41) := '3F652E47524F55505F49443A317D292E666F72456163682866756E6374696F6E28612C722C6E297B69662872297B76617220743D4F2864293B742E616464436C61737328226B622D726F7722292C742E61747472282267726F75706964222C72292C662E';
wwv_flow_api.g_varchar2_table(42) := '67726F7570457874656E73696F6E262666756E6374696F6E28612C72297B2131213D3D73262628722E47524F55505F49443D652E65736361706548544D4C28722E47524F55505F4944292C722E47524F55505F49434F4E3D652E65736361706548544D4C';
wwv_flow_api.g_varchar2_table(43) := '28722E47524F55505F49434F4E292C722E47524F55505F49434F4E5F434F4C4F523D652E65736361706548544D4C28722E47524F55505F49434F4E5F434F4C4F52292C722E47524F55505F4845414445525F5354594C453D652E65736361706548544D4C';
wwv_flow_api.g_varchar2_table(44) := '28722E47524F55505F4845414445525F5354594C45292C722E47524F55505F5449544C453D652E65736361706548544D4C28722E47524F55505F5449544C45292C722E47524F55505F464F4F5445523D652E65736361706548544D4C28722E47524F5550';
wwv_flow_api.g_varchar2_table(45) := '5F464F4F54455229293B766172206E3D2428223C6469763E3C2F6469763E22293B6E2E616464436C61737328226B622D636F6C206B622D67726F75702D726567696F6E22292C6E2E6174747228227374796C65222C2277696474683A222B542B22252229';
wwv_flow_api.g_varchar2_table(46) := '2C612E617070656E64286E293B76617220743D75286E2C7B697347726F7570436172643A21302C49443A722E47524F55505F49442C49434F4E3A722E47524F55505F49434F4E2C49434F4E5F434F4C4F523A722E47524F55505F49434F4E5F434F4C4F52';
wwv_flow_api.g_varchar2_table(47) := '2C4845414445525F5354594C453A722E47524F55505F4845414445525F5354594C452C5449544C453A722E47524F55505F5449544C452C464F4F5445523A722E47524F55505F464F4F5445522C4C494E4B3A722E47524F55505F4C494E4B7D293B696628';
wwv_flow_api.g_varchar2_table(48) := '742E616464436C61737328226B622D67726F75702D6361726422292C662E67726F7570436F6C6C61707369626C65297B766172206F3D2428223C693E3C2F693E22293B6F2E616464436C617373282266612066612D63686576726F6E2D646F776E22293B';
wwv_flow_api.g_varchar2_table(49) := '76617220643D2428223C6469763E3C2F6469763E22293B642E616464436C61737328226B622D636F6C6C61707361626C65206B622D636F6C6C6170736522292C642E617070656E64286F292C2428742E66696E6428222E636172642D6865616465722229';
wwv_flow_api.g_varchar2_table(50) := '5B305D292E6265666F72652864293B76617220693D2428223C693E3C2F693E22293B692E616464436C617373282266612066612D63686576726F6E2D757022293B766172206C3D2428223C6469763E3C2F6469763E22293B6C2E616464436C6173732822';
wwv_flow_api.g_varchar2_table(51) := '6B622D636F6C6C61707361626C65206B622D657870616E6422292C6C2E617070656E642869292C2428742E66696E6428222E636172642D68656164657222295B305D292E6265666F7265286C292C6C2E6174747228227374796C65222C22646973706C61';
wwv_flow_api.g_varchar2_table(52) := '793A6E6F6E6522297D7D28742C615B305D292C242E6561636828762C66756E6374696F6E28722C6E297B2166756E6374696F6E28612C722C6E297B76617220743D2428223C6469763E3C2F6469763E22293B742E616464436C61737328226B622D636F6C';
wwv_flow_api.g_varchar2_table(53) := '206B622D6974656D2D726567696F6E22292C742E6174747228227374796C65222C2277696474683A222B682B222522292C612E617070656E642874293B766172206F3D2428223C6469763E3C2F6469763E22293B6F2E616464436C61737328226B622D63';
wwv_flow_api.g_varchar2_table(54) := '6F6C2D636F6E74656E7422293B76617220643D22626F726465722D6C6566742D636F6C6F723A20222B6E2E434F4C554D4E5F434F4C4F522B223B223B6F2E6174747228227374796C65222C6E2E434F4C554D4E5F4845414445525F5354594C457C7C6429';
wwv_flow_api.g_varchar2_table(55) := '2C742E617070656E64286F293B76617220693D2428223C6469763E3C2F6469763E22293B692E616464436C61737328226B622D636F6C2D696E6E65722D68656164657222293B766172206C3D766F69642030213D6E2E434F4C554D4E5F5449544C453F6E';
wwv_flow_api.g_varchar2_table(56) := '2E434F4C554D4E5F5449544C453A22223B692E617070656E6428273C7020636C6173733D227469746C65223E272B6C2B223C2F703E22292C6F2E617070656E642869293B76617220633D2428223C6469763E3C2F6469763E22293B696628632E61646443';
wwv_flow_api.g_varchar2_table(57) := '6C61737328226B622D6974656D2D636F6E7461696E657222292C632E617474722822636F6C756D6E6964222C6E2E434F4C554D4E5F4944292C6F2E617070656E642863292C303D3D6E2E434F4C554D4E5F494E444558297B76617220703D722E66696C74';
wwv_flow_api.g_varchar2_table(58) := '65722866756E6374696F6E2865297B72657475726E20652E47524F55505F4E45575F4954454D5F4C494E4B7D293B702E6C656E6774683E30262628632E616464436C61737328226B622D6974656D2D636F6E7461696E65722D776974682D6E65772D6361';
wwv_flow_api.g_varchar2_table(59) := '726422292C43286F2C705B305D2E47524F55505F4E45575F4954454D5F4C494E4B29297D2166756E6374696F6E28612C722C6E297B612626612E6C656E6774683E302626242E6561636828612C66756E6374696F6E28612C74297B2131213D3D73262628';
wwv_flow_api.g_varchar2_table(60) := '742E49443D652E65736361706548544D4C28742E4944292C742E49434F4E3D652E65736361706548544D4C28742E49434F4E292C742E49434F4E5F434F4C4F523D652E65736361706548544D4C28742E49434F4E5F434F4C4F52292C742E484541444552';
wwv_flow_api.g_varchar2_table(61) := '5F5354594C453D652E65736361706548544D4C28742E4845414445525F5354594C45292C742E5449544C453D652E65736361706548544D4C28742E5449544C45292C742E464F4F5445523D652E65736361706548544D4C28742E464F4F54455229292C75';
wwv_flow_api.g_varchar2_table(62) := '28722C7B697347726F7570436172643A21312C49443A742E49442C49434F4E3A742E49434F4E2C49434F4E5F434F4C4F523A742E49434F4E5F434F4C4F522C4845414445525F5354594C453A742E4845414445525F5354594C452C5449544C453A742E54';
wwv_flow_api.g_varchar2_table(63) := '49544C452C464F4F5445523A742E464F4F5445522C4C494E4B3A742E4C494E4B7D2C6E297D297D28722E66696C7465722866756E6374696F6E2865297B72657475726E20652E434F4C554D4E5F49443D3D6E2E434F4C554D4E5F49442626652E49447D29';
wwv_flow_api.g_varchar2_table(64) := '2C632C6E297D28742C612C6E297D292C662E67726F7570457874656E73696F6E2626662E67726F7570436F6C6C61707369626C65262628742E66696E6428222E6B622D636F6C6C61707361626C6522292E636C69636B2866756E6374696F6E28297B4C28';
wwv_flow_api.g_varchar2_table(65) := '742C2130297D292C313D3D3D615B305D2E47524F55505F434F4C4C41504553454426264C28742C213129297D7D293B76617220633D612E726F772E66696C7465722866756E6374696F6E2865297B72657475726E20652E4E45575F47524F55505F4C494E';
wwv_flow_api.g_varchar2_table(66) := '4B7D293B662E67726F7570457874656E73696F6E2626632E6C656E6774683E30262666756E6374696F6E28652C61297B76617220723D4F2865293B722E616464436C61737328226B622D726F7722293B76617220653D722C6E3D2428223C6469763E3C2F';
wwv_flow_api.g_varchar2_table(67) := '6469763E22293B6E2E616464436C61737328226B622D67726F75702D726567696F6E206B622D6E65772D67726F75702D726567696F6E22292C652E617070656E64286E292C43286E2C61297D28452C635B305D2E4E45575F47524F55505F4C494E4B292C';
wwv_flow_api.g_varchar2_table(68) := '6926262866756E6374696F6E28297B76617220653D302C613D6E756C6C3B4E3D64726167756C61282428622E66696E6428222E6B622D6974656D2D636F6E7461696E65722229292E746F417272617928292C7B646972656374696F6E3A22766572746963';
wwv_flow_api.g_varchar2_table(69) := '616C222C616363657074733A66756E6374696F6E28652C612C722C6E297B72657475726E2121662E616C6C6F77447261674974656D734265747765656E47726F7570737C7C242872292E636C6F7365737428222E6B622D726F7722292E61747472282267';
wwv_flow_api.g_varchar2_table(70) := '726F7570696422293D3D242861292E636C6F7365737428222E6B622D726F7722292E61747472282267726F7570696422297D7D292C2428222E6B622D6974656D2D636F6E7461696E6572203E202E6B622D6361726422292E656163682866756E6374696F';
wwv_flow_api.g_varchar2_table(71) := '6E28652C61297B242861292E616464436C61737328226B622D636172642D647261676761626C6522292C612E6164644576656E744C697374656E65722822746F7563686D6F7665222C66756E6374696F6E2865297B652E70726576656E7444656661756C';
wwv_flow_api.g_varchar2_table(72) := '7428297D297D292C4E2E6F6E282264726167222C66756E6374696F6E28722C6E297B76617220743D242872292C6F3D24286E293B653D742E696E64657828293B76617220643D742E6E65787428293B613D642E6C656E6774683E303F2428645B305D293A';
wwv_flow_api.g_varchar2_table(73) := '6E756C6C3B76617220733D7B6974656D49643A742E6174747228226974656D696422292C736F7572636547726F757049643A6F2E636C6F7365737428222E6B622D726F7722292E61747472282267726F7570696422292C736F75726365436F6C756D6E49';
wwv_flow_api.g_varchar2_table(74) := '643A6F2E617474722822636F6C756D6E696422292C736F757263654974656D496E6465783A657D3B622E7472696767657228226D6174657269616C6B616E62616E64726167222C5B735D297D292C4E2E6F6E282264726F70222C66756E6374696F6E286E';
wwv_flow_api.g_varchar2_table(75) := '2C742C642C73297B76617220693D24286E292C6C3D242874292C633D242864292C703D7B6974656D49643A692E6174747228226974656D696422292C736F7572636547726F757049643A632E636C6F7365737428222E6B622D726F7722292E6174747228';
wwv_flow_api.g_varchar2_table(76) := '2267726F7570696422292C736F75726365436F6C756D6E49643A632E617474722822636F6C756D6E696422292C736F757263654974656D496E6465783A652C74617267657447726F757049643A6C2E636C6F7365737428222E6B622D726F7722292E6174';
wwv_flow_api.g_varchar2_table(77) := '7472282267726F7570696422292C746172676574436F6C756D6E49643A6C2E617474722822636F6C756D6E696422292C7461726765744974656D496E6465783A692E696E64657828297D3B7472797B617065782E7365727665722E706C7567696E28722C';
wwv_flow_api.g_varchar2_table(78) := '7B706167654974656D733A6F2C7830313A226D6F76654974656D222C7830323A702E6974656D49642C7830333A702E736F7572636547726F757049642C7830343A702E736F75726365436F6C756D6E49642C7830353A702E736F757263654974656D496E';
wwv_flow_api.g_varchar2_table(79) := '6465782C7830363A702E74617267657447726F757049642C7830373A702E746172676574436F6C756D6E49642C7830383A702E7461726765744974656D496E6465787D2C7B737563636573733A66756E6374696F6E2865297B7D2C6572726F723A66756E';
wwv_flow_api.g_varchar2_table(80) := '6374696F6E2865297B613F692E696E736572744265666F72652861293A632E617070656E642869292C6728692C632E617474722822636F6C756D6E69642229292C636F6E736F6C652E6572726F7228652E726573706F6E736554657874292C622E747269';
wwv_flow_api.g_varchar2_table(81) := '6767657228226D6174657269616C6B616E62616E64726F706572726F72222C5B705D297D2C64617461547970653A226A736F6E227D297D63617463682865297B636F6E736F6C652E6C6F67282243616E27742063616C6C20736572766572206F6E206472';
wwv_flow_api.g_varchar2_table(82) := '6167276E2064726F70206576656E742E2041706578206973206D697373696E6722292C636F6E736F6C652E6C6F672865297D6728692C6C2E617474722822636F6C756D6E69642229292C622E7472696767657228226D6174657269616C6B616E62616E64';
wwv_flow_api.g_varchar2_table(83) := '726F70222C5B705D297D297D28292C662E67726F7570457874656E73696F6E26266C262666756E6374696F6E28297B76617220653D302C613D6E756C6C3B5F3D64726167756C61282428622E66696E6428222E6B622D67726F75702D636F6E7461696E65';
wwv_flow_api.g_varchar2_table(84) := '722229292E746F417272617928292C7B646972656374696F6E3A22766572746963616C222C6D6F7665733A66756E6374696F6E28652C612C72297B766172206E3D242872292E636C6F7365737428222E6B622D67726F75702D6361726422293B72657475';
wwv_flow_api.g_varchar2_table(85) := '726E206E2E6C656E6774683E307D7D292C2428222E6B622D67726F75702D726567696F6E203E202E6B622D6361726422292E656163682866756E6374696F6E28652C61297B242861292E616464436C61737328226B622D636172642D647261676761626C';
wwv_flow_api.g_varchar2_table(86) := '6522292C612E6164644576656E744C697374656E65722822746F7563686D6F7665222C66756E6374696F6E2865297B652E70726576656E7444656661756C7428297D297D292C5F2E6F6E282264726167222C66756E6374696F6E28722C6E297B76617220';
wwv_flow_api.g_varchar2_table(87) := '743D242872293B653D742E696E64657828293B766172206F3D742E6E65787428293B613D6F2E6C656E6774683E303F24286F5B305D293A6E756C6C3B76617220643D7B67726F757049643A742E61747472282267726F7570696422292C736F7572636547';
wwv_flow_api.g_varchar2_table(88) := '726F7570496E6465783A657D3B622E7472696767657228226D6174657269616C6B616E62616E6472616767726F7570222C5B645D297D292C5F2E6F6E282264726F70222C66756E6374696F6E286E2C742C642C73297B76617220693D24286E292C6C3D28';
wwv_flow_api.g_varchar2_table(89) := '242874292C24286429292C633D7B67726F757049643A692E61747472282267726F7570696422292C736F7572636547726F7570496E6465783A652C74617267657447726F7570496E6465783A692E696E64657828297D3B7472797B617065782E73657276';
wwv_flow_api.g_varchar2_table(90) := '65722E706C7567696E28722C7B706167654974656D733A6F2C7830313A226D6F766547726F7570222C7830323A632E67726F757049642C7830333A632E736F7572636547726F7570496E6465782C7830343A632E74617267657447726F7570496E646578';
wwv_flow_api.g_varchar2_table(91) := '7D2C7B737563636573733A66756E6374696F6E2865297B7D2C6572726F723A66756E6374696F6E2865297B613F692E696E736572744265666F72652861293A6C2E617070656E642869292C636F6E736F6C652E6572726F7228652E726573706F6E736554';
wwv_flow_api.g_varchar2_table(92) := '657874292C622E7472696767657228226D6174657269616C6B616E62616E64726F706572726F72222C5B635D297D2C64617461547970653A226A736F6E227D297D63617463682865297B636F6E736F6C652E6C6F67282243616E27742063616C6C207365';
wwv_flow_api.g_varchar2_table(93) := '72766572206F6E2064726167276E2064726F70206576656E742E2041706578206973206D697373696E6722292C636F6E736F6C652E6C6F672865297D622E7472696767657228226D6174657269616C6B616E62616E64726F7067726F7570222C5B635D29';
wwv_flow_api.g_varchar2_table(94) := '7D297D2829297D656C736520642E63737328226D696E2D686569676874222C2222292C652E6E6F446174614D6573736167652E73686F7728642C6E297D656C736520636F6E736F6C652E6C6F6728224E6F20636F6C756D6E7320646566696E6564212229';
wwv_flow_api.g_varchar2_table(95) := '7D66756E6374696F6E204F2865297B76617220613D2428223C6469763E3C2F6469763E22293B72657475726E20612E616464436C6173732822732D672D726F7722292C652E617070656E642861292C617D66756E6374696F6E207528652C612C72297B76';
wwv_flow_api.g_varchar2_table(96) := '6172206E3D2428223C6469763E3C2F6469763E22293B6E2E616464436C61737328226B622D6361726422292C6E2E6174747228226974656D6964222C612E4944293B76617220743D2428223C6469763E3C2F6469763E22293B696628742E616464436C61';
wwv_flow_api.g_varchar2_table(97) := '73732822636172642D68656164657222292C612E49434F4E7C7C722626722E434F4C554D4E5F49434F4E297B766172206F3D2428223C693E3C2F693E22293B6F2E616464436C6173732822666120222B28612E49434F4E7C7C722E434F4C554D4E5F4943';
wwv_flow_api.g_varchar2_table(98) := '4F4E29292C28612E49434F4E5F434F4C4F522626612E49434F4E5F434F4C4F522E6C656E6774683E307C7C722626722E434F4C554D4E5F49434F4E5F434F4C4F522626722E434F4C554D4E5F49434F4E5F434F4C4F522E6C656E6774683E302926266F2E';
wwv_flow_api.g_varchar2_table(99) := '6174747228227374796C65222C22636F6C6F723A222B28612E49434F4E5F434F4C4F527C7C722E434F4C554D4E5F49434F4E5F434F4C4F5229292C742E617070656E64286F297D612E4845414445525F5354594C453F742E6174747228227374796C6522';
wwv_flow_api.g_varchar2_table(100) := '2C612E4845414445525F5354594C45293A722626722E434F4C554D4E5F434F4C4F522626742E6174747228227374796C65222C226261636B67726F756E643A222B722E434F4C554D4E5F434F4C4F52292C6E2E617070656E642874293B76617220643D24';
wwv_flow_api.g_varchar2_table(101) := '28223C6469763E3C2F6469763E22293B642E616464436C6173732822636172642D636F6E74656E7422293B76617220733D612E5449544C453F612E5449544C453A22223B696628642E617070656E6428273C7020636C6173733D227469746C65223E272B';
wwv_flow_api.g_varchar2_table(102) := '732B223C2F703E22292C612E4C494E4B297B76617220693D2428223C613E3C2F613E22293B692E61747472282268726566222C612E4C494E4B292C692E617070656E642864292C6E2E617070656E642869297D656C7365206E2E617070656E642864293B';
wwv_flow_api.g_varchar2_table(103) := '696628612E464F4F544552297B766172206C3D2428223C6469763E3C2F6469763E22293B6C2E616464436C6173732822636172642D666F6F74657222293B76617220633D2428223C6469763E3C2F6469763E22293B632E617070656E6428612E464F4F54';
wwv_flow_api.g_varchar2_table(104) := '4552292C6C2E617070656E642863292C6E2E617070656E64286C297D72657475726E20652E617070656E64286E292C6E7D66756E6374696F6E204328652C61297B76617220723D2428223C6469763E3C2F6469763E22293B722E616464436C6173732822';
wwv_flow_api.g_varchar2_table(105) := '6B622D6E65772D6361726422293B766172206E3D2428223C693E3C2F693E22293B6E2E616464436C617373282266612066612D706C757322292C722E617070656E64286E293B76617220743D2428223C613E3C2F613E22293B742E617474722822687265';
wwv_flow_api.g_varchar2_table(106) := '66222C61292C742E617070656E642872293B766172206F3D2428223C6469763E3C2F6469763E22293B6F2E616464436C61737328226B622D6E65772D6974656D2D726567696F6E22292C6F2E617070656E642874292C652E617070656E64286F297D6675';
wwv_flow_api.g_varchar2_table(107) := '6E6374696F6E206728652C61297B76617220723D652E6174747228226974656D696422292C6E3D492E66696E642866756E6374696F6E2865297B72657475726E20652E49443D3D727D292C743D762E66696E642866756E6374696F6E2865297B72657475';
wwv_flow_api.g_varchar2_table(108) := '726E20652E434F4C554D4E5F49443D3D617D292C6F3D652E66696E6428222E636172642D68656164657222292C643D6F2E66696E6428226922293B286E26266E2E49434F4E7C7C742626742E434F4C554D4E5F49434F4E29262628642E72656D6F766543';
wwv_flow_api.g_varchar2_table(109) := '6C61737328292E616464436C6173732822666120222B286E2E49434F4E7C7C742E434F4C554D4E5F49434F4E29292C286E2E49434F4E5F434F4C4F5226266E2E49434F4E5F434F4C4F522E6C656E6774683E307C7C742626742E434F4C554D4E5F49434F';
wwv_flow_api.g_varchar2_table(110) := '4E5F434F4C4F522626742E434F4C554D4E5F49434F4E5F434F4C4F522E6C656E6774683E30292626642E6174747228227374796C65222C22636F6C6F723A222B286E2E49434F4E5F434F4C4F527C7C742E434F4C554D4E5F49434F4E5F434F4C4F522929';
wwv_flow_api.g_varchar2_table(111) := '292C216E2E4845414445525F5354594C452626742626742E434F4C554D4E5F434F4C4F5226266F2E6174747228227374796C65222C226261636B67726F756E643A222B742E434F4C554D4E5F434F4C4F52297D66756E6374696F6E204C28652C61297B65';
wwv_flow_api.g_varchar2_table(112) := '2E66696E6428222E6B622D636F6C6C61707361626C6522292E746F67676C6528292C652E66696E6428222E636172642D666F6F74657222292E746F67676C6528292C652E66696E6428222E6B622D6974656D2D726567696F6E22292E746F67676C652829';
wwv_flow_api.g_varchar2_table(113) := '3B76617220723D652E66696E6428222E6B622D67726F75702D726567696F6E22293B696628722E746F67676C65436C61737328226B622D636F6C6C617073656422292C61297B766172206E3D7B67726F757049643A652E61747472282267726F75706964';
wwv_flow_api.g_varchar2_table(114) := '22292C636F6C6C61707365643A722E686173436C61737328226B622D636F6C6C617073656422297D3B622E7472696767657228226D6174657269616C6B616E62616E67726F7570636F6C6C6170736564222C5B6E5D297D7D76617220663D7B7D2C763D28';
wwv_flow_api.g_varchar2_table(115) := '663D652E6A736F6E53617665457874656E64287B726566726573683A302C737461746963436F6C756D6E733A5B7B434F4C554D4E5F49443A2231222C434F4C554D4E5F5449544C453A22546F20446F222C434F4C554D4E5F49434F4E3A2266612D63616C';
wwv_flow_api.g_varchar2_table(116) := '656E646172227D2C7B434F4C554D4E5F49443A2232222C434F4C554D4E5F5449544C453A22496E2050726F6772657373222C434F4C554D4E5F49434F4E3A2266612D7772656E6368227D2C7B434F4C554D4E5F49443A2233222C434F4C554D4E5F544954';
wwv_flow_api.g_varchar2_table(117) := '4C453A22446F6E65222C434F4C554D4E5F49434F4E3A2266612D636865636B227D5D2C64796E616D6963436F6C756D6E733A21312C67726F7570457874656E73696F6E3A21312C67726F7570436F6C57696474683A362C616C6C6F77447261674974656D';
wwv_flow_api.g_varchar2_table(118) := '734265747765656E47726F7570733A21312C67726F7570436F6C6C61707369626C653A21312C7072696E7444617461546F436F6E736F6C653A21317D2C742C213129292E737461746963436F6C756D6E732C493D6E756C6C2C4E3D6E756C6C2C5F3D6E75';
wwv_flow_api.g_varchar2_table(119) := '6C6C2C453D6E756C6C2C543D302C683D3130302C623D24282223222B61293B696628622E6C656E6774683E30297B453D66756E6374696F6E2865297B76617220613D2428223C6469763E3C2F6469763E22293B72657475726E20612E616464436C617373';
wwv_flow_api.g_varchar2_table(120) := '2822732D672D636F6E7461696E657222292C612E63737328226D696E2D686569676874222C22313730707822292C652E617070656E642861292C617D2862292C6328293B7472797B617065782E6A5175657279282223222B64292E62696E642822617065';
wwv_flow_api.g_varchar2_table(121) := '7872656672657368222C66756E6374696F6E28297B303D3D452E6368696C6472656E28227370616E22292E6C656E6774682626284E26264E2E64657374726F7928292C5F26265F2E64657374726F7928292C632829297D297D63617463682865297B636F';
wwv_flow_api.g_varchar2_table(122) := '6E736F6C652E6C6F67282243616E27742062696E642072656672657368206576656E74206F6E20222B642B222E2041706578206973206D697373696E6722292C636F6E736F6C652E6C6F672865297D662E726566726573683E302626736574496E746572';
wwv_flow_api.g_varchar2_table(123) := '76616C2866756E6374696F6E28297B303D3D452E6368696C6472656E28227370616E22292E6C656E6774682626284E26264E2E64657374726F7928292C5F26265F2E64657374726F7928292C632829297D2C3165332A662E72656672657368297D656C73';
wwv_flow_api.g_varchar2_table(124) := '6520636F6E736F6C652E6C6F67282243616E27742066696E6420706172656E7449443A20222B61297D7D7D28293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(89964765566370081103)
,p_plugin_id=>wwv_flow_api.id(89964721284116067985)
,p_file_name=>'script.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
