set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.0.00.31'
,p_default_workspace_id=>1731201623220696
,p_default_application_id=>101
,p_default_owner=>'PLAYGROUND'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 101 - Plugin Test
--
-- Application Export:
--   Application:     101
--   Name:            Plugin Test
--   Date and Time:   19:13 Saturday September 21, 2019
--   Exported By:     RANGE
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.0.00.31
--   Instance ID:     103859871020892
--

-- Application Statistics:
--   Pages:                      2
--     Items:                    3
--     Processes:                4
--     Regions:                  7
--     Buttons:                  1
--     Dynamic Actions:          3
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               8
--       Plug-ins:               2
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,101)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'PLAYGROUND')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Plugin Test')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_101')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'44CA0EC87CAE70A7665BF763F5F9445DCA7993B511DD9F146D476FC63D900347'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'0'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(5383544016343152)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Plugin Test'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'RANGE'
,p_last_upd_yyyymmddhh24miss=>'20190921185311'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(5341164630342806)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5384779063343250)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(5383242404343095)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5383428529343139)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(5340898765342802)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(5340929805342806)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(5341059386342806)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(5384647529343244)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5385028572343254)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(5341221996342843)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5341396219342861)
,p_page_template_id=>wwv_flow_api.id(5341221996342843)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5341415956342861)
,p_page_template_id=>wwv_flow_api.id(5341221996342843)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5341560094342861)
,p_page_template_id=>wwv_flow_api.id(5341221996342843)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5341697017342861)
,p_page_template_id=>wwv_flow_api.id(5341221996342843)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5341790079342861)
,p_page_template_id=>wwv_flow_api.id(5341221996342843)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5341892677342861)
,p_page_template_id=>wwv_flow_api.id(5341221996342843)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5341912095342861)
,p_page_template_id=>wwv_flow_api.id(5341221996342843)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5342023427342861)
,p_page_template_id=>wwv_flow_api.id(5341221996342843)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(5342169314342878)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5342275588342878)
,p_page_template_id=>wwv_flow_api.id(5342169314342878)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5342310420342878)
,p_page_template_id=>wwv_flow_api.id(5342169314342878)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5342451069342878)
,p_page_template_id=>wwv_flow_api.id(5342169314342878)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5342505086342878)
,p_page_template_id=>wwv_flow_api.id(5342169314342878)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5342699115342878)
,p_page_template_id=>wwv_flow_api.id(5342169314342878)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5342712102342878)
,p_page_template_id=>wwv_flow_api.id(5342169314342878)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5342885618342878)
,p_page_template_id=>wwv_flow_api.id(5342169314342878)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5342903096342878)
,p_page_template_id=>wwv_flow_api.id(5342169314342878)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5343059749342878)
,p_page_template_id=>wwv_flow_api.id(5342169314342878)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(5343185994342878)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5343244669342878)
,p_page_template_id=>wwv_flow_api.id(5343185994342878)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5343372356342878)
,p_page_template_id=>wwv_flow_api.id(5343185994342878)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(5343470419342878)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5343502934342878)
,p_page_template_id=>wwv_flow_api.id(5343470419342878)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5343668267342878)
,p_page_template_id=>wwv_flow_api.id(5343470419342878)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5343754929342878)
,p_page_template_id=>wwv_flow_api.id(5343470419342878)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5343821892342878)
,p_page_template_id=>wwv_flow_api.id(5343470419342878)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5343998390342878)
,p_page_template_id=>wwv_flow_api.id(5343470419342878)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5344095043342878)
,p_page_template_id=>wwv_flow_api.id(5343470419342878)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5344128333342878)
,p_page_template_id=>wwv_flow_api.id(5343470419342878)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5344269658342878)
,p_page_template_id=>wwv_flow_api.id(5343470419342878)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5344367867342879)
,p_page_template_id=>wwv_flow_api.id(5343470419342878)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(5344482338342882)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5344545208342883)
,p_page_template_id=>wwv_flow_api.id(5344482338342882)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5344643670342883)
,p_page_template_id=>wwv_flow_api.id(5344482338342882)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5344731745342883)
,p_page_template_id=>wwv_flow_api.id(5344482338342882)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5344842091342883)
,p_page_template_id=>wwv_flow_api.id(5344482338342882)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5344916500342883)
,p_page_template_id=>wwv_flow_api.id(5344482338342882)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5345005707342883)
,p_page_template_id=>wwv_flow_api.id(5344482338342882)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5345157604342883)
,p_page_template_id=>wwv_flow_api.id(5344482338342882)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(5345224901342883)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5345328184342884)
,p_page_template_id=>wwv_flow_api.id(5345224901342883)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5345454368342884)
,p_page_template_id=>wwv_flow_api.id(5345224901342883)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5345578710342884)
,p_page_template_id=>wwv_flow_api.id(5345224901342883)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(5345638202342884)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5345717790342884)
,p_page_template_id=>wwv_flow_api.id(5345638202342884)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5345810128342884)
,p_page_template_id=>wwv_flow_api.id(5345638202342884)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5345971238342884)
,p_page_template_id=>wwv_flow_api.id(5345638202342884)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5346004113342884)
,p_page_template_id=>wwv_flow_api.id(5345638202342884)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5346188922342884)
,p_page_template_id=>wwv_flow_api.id(5345638202342884)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5346266982342884)
,p_page_template_id=>wwv_flow_api.id(5345638202342884)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5346388635342884)
,p_page_template_id=>wwv_flow_api.id(5345638202342884)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5346402048342884)
,p_page_template_id=>wwv_flow_api.id(5345638202342884)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(5346583442342884)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5346688631342886)
,p_page_template_id=>wwv_flow_api.id(5346583442342884)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5346709824342886)
,p_page_template_id=>wwv_flow_api.id(5346583442342884)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5346886368342886)
,p_page_template_id=>wwv_flow_api.id(5346583442342884)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5346926273342886)
,p_page_template_id=>wwv_flow_api.id(5346583442342884)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5347089041342886)
,p_page_template_id=>wwv_flow_api.id(5346583442342884)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5347150051342886)
,p_page_template_id=>wwv_flow_api.id(5346583442342884)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5347257080342886)
,p_page_template_id=>wwv_flow_api.id(5346583442342884)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(5347303144342886)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5347403088342887)
,p_page_template_id=>wwv_flow_api.id(5347303144342886)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5347507534342887)
,p_page_template_id=>wwv_flow_api.id(5347303144342886)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5347643476342887)
,p_page_template_id=>wwv_flow_api.id(5347303144342886)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(5378098512342973)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(5378198325342978)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(5378207951342978)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(5347722543342893)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(5347877215342905)
,p_plug_template_id=>wwv_flow_api.id(5347722543342893)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(5349240324342916)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(5349310809342917)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(5349438841342917)
,p_plug_template_id=>wwv_flow_api.id(5349310809342917)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(5349502746342917)
,p_plug_template_id=>wwv_flow_api.id(5349310809342917)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(5350297653342917)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(5350331468342918)
,p_plug_template_id=>wwv_flow_api.id(5350297653342917)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(5350437964342918)
,p_plug_template_id=>wwv_flow_api.id(5350297653342917)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(5353645622342919)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(5353701162342919)
,p_plug_template_id=>wwv_flow_api.id(5353645622342919)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(5353871164342919)
,p_plug_template_id=>wwv_flow_api.id(5353645622342919)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(5355799185342923)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(5355852759342923)
,p_plug_template_id=>wwv_flow_api.id(5355799185342923)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(5355930161342923)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(5356006517342924)
,p_plug_template_id=>wwv_flow_api.id(5355930161342923)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(5356847443342925)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(5357195656342926)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(5357260253342927)
,p_plug_template_id=>wwv_flow_api.id(5357195656342926)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(5357392185342927)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(5357423877342927)
,p_plug_template_id=>wwv_flow_api.id(5357392185342927)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(5357572819342927)
,p_plug_template_id=>wwv_flow_api.id(5357392185342927)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(5359446238342928)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(5359534467342928)
,p_plug_template_id=>wwv_flow_api.id(5359446238342928)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(5359624227342928)
,p_plug_template_id=>wwv_flow_api.id(5359446238342928)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(5360682182342928)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(5361197206342928)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(5361266105342928)
,p_plug_template_id=>wwv_flow_api.id(5361197206342928)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(5369309019342953)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(5371015552342958)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(5373143644342960)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-'
||'badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(5373901218342961)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(5374836238342962)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(5375377890342962)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(5375470381342962)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(5375516592342963)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav t-Body-nav--dark" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(5375671181342964)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(5376509147342964)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(5377082650342964)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(5361744517342934)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(5361868149342939)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(5363598306342941)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(5365647382342944)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(5366037118342944)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(5366165016342944)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(5366165016342944)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(5367459522342945)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(5368478455342946)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(5377591346342968)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(5377600713342971)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(5377774073342971)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(5377878535342971)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(5377975661342972)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(5378679698342982)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(5378852539342998)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(5378791275342993)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(5379268080343010)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>wwv_flow_api.id(4070917134413059350)
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(5346583442342884)
,p_default_dialog_template=>wwv_flow_api.id(5345224901342883)
,p_error_template=>wwv_flow_api.id(5343185994342878)
,p_printer_friendly_template=>wwv_flow_api.id(5346583442342884)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(5343185994342878)
,p_default_button_template=>wwv_flow_api.id(5378198325342978)
,p_default_region_template=>wwv_flow_api.id(5357392185342927)
,p_default_chart_template=>wwv_flow_api.id(5357392185342927)
,p_default_form_template=>wwv_flow_api.id(5357392185342927)
,p_default_reportr_template=>wwv_flow_api.id(5357392185342927)
,p_default_tabform_template=>wwv_flow_api.id(5357392185342927)
,p_default_wizard_template=>wwv_flow_api.id(5357392185342927)
,p_default_menur_template=>wwv_flow_api.id(5360682182342928)
,p_default_listr_template=>wwv_flow_api.id(5357392185342927)
,p_default_irr_template=>wwv_flow_api.id(5356847443342925)
,p_default_report_template=>wwv_flow_api.id(5366165016342944)
,p_default_label_template=>wwv_flow_api.id(5377600713342971)
,p_default_menu_template=>wwv_flow_api.id(5378679698342982)
,p_default_calendar_template=>wwv_flow_api.id(5378791275342993)
,p_default_list_template=>wwv_flow_api.id(5373143644342960)
,p_default_nav_list_template=>wwv_flow_api.id(5376509147342964)
,p_default_top_nav_list_temp=>wwv_flow_api.id(5376509147342964)
,p_default_side_nav_list_temp=>wwv_flow_api.id(5375516592342963)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(5349310809342917)
,p_default_dialogr_template=>wwv_flow_api.id(5349240324342916)
,p_default_option_label=>wwv_flow_api.id(5377600713342971)
,p_default_required_label=>wwv_flow_api.id(5377878535342971)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(5375470381342962)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(5378913561343002)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(5379044296343003)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(5379168229343003)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5348087458342910)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5348259129342916)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5348470715342916)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5349657210342917)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5349839644342917)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5350513621342918)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5350917965342918)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5351570136342918)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5352158646342918)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5352310876342918)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5353224940342919)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5354833045342922)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5356258221342925)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5359727605342928)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5359928034342928)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5360311362342928)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5360750372342928)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5361352921342929)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5361920996342939)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5362115824342939)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5363759812342941)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5364422062342942)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5364798647342942)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5365416306342944)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5365782742342944)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5366275915342945)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5366575314342945)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5366747813342945)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5367569808342945)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5369493722342956)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5370256848342956)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5371281722342958)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5371985294342959)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5372219926342959)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5372937013342960)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5373668525342961)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5376066108342964)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5377181279342964)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5378304412342978)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5379397092343085)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5379578718343086)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5379753306343086)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5379927112343086)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5380145818343086)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5380553703343087)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5381206866343087)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5381690605343087)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5381847707343087)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5382065359343087)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5382243658343088)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5382554598343088)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5382881597343088)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5347967459342909)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(5347722543342893)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5348119392342913)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5347722543342893)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(5348087458342910)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5348352993342916)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5347722543342893)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(5348259129342916)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5348578965342916)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5347722543342893)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(5348470715342916)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5348663067342916)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(5347722543342893)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(5348087458342910)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5348747859342916)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(5347722543342893)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(5348259129342916)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5348830556342916)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(5347722543342893)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(5348087458342910)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5348982144342916)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5347722543342893)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(5348259129342916)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5349092437342916)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5347722543342893)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(5348087458342910)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5349122579342916)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5347722543342893)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(5348470715342916)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5349795969342917)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(5349310809342917)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(5349657210342917)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5349904994342917)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(5349310809342917)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(5349839644342917)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5350034034342917)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(5349310809342917)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(5349657210342917)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5350111309342917)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(5349310809342917)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(5349839644342917)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5350689283342918)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(5350513621342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5350755118342918)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(5350513621342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5350898903342918)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(5350513621342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5351010872342918)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(5350917965342918)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5351122777342918)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(5350917965342918)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5351235450342918)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(5350917965342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5351392166342918)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(5350513621342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5351478517342918)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(5350917965342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5351673184342918)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(5351570136342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5351712259342918)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(5351570136342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5351864830342918)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(5351570136342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5351956089342918)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(5351570136342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5352054769342918)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(5351570136342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5352205711342918)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(5352158646342918)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5352481472342918)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(5352310876342918)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5352514114342918)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(5352158646342918)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5352668652342918)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5352772645342918)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(5349657210342917)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5352803132342919)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5352916579342919)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(5352310876342918)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5353002691342919)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5353192566342919)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5353305358342919)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(5353224940342919)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5353496287342919)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(5353224940342919)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5353572487342919)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5350297653342917)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(5349657210342917)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5353982114342919)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5353645622342919)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(5350917965342918)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5354083747342919)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5353645622342919)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(5350917965342918)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5354127618342919)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(5353645622342919)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(5350917965342918)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5354225918342919)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(5353645622342919)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(5350917965342918)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5354340740342922)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5353645622342919)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(5351570136342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5354481205342922)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5353645622342919)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(5351570136342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5354551292342922)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(5353645622342919)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(5351570136342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5354682461342922)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(5353645622342919)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(5351570136342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5354755805342922)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(5353645622342919)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(5351570136342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5354914674342922)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5353645622342919)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(5354833045342922)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5355022768342923)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5353645622342919)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(5354833045342922)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5355142614342923)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5353645622342919)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(5352310876342918)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5355299097342923)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5353645622342919)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5355394063342923)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5353645622342919)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(5349657210342917)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5355411453342923)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(5353645622342919)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(5349657210342917)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5355587601342923)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5353645622342919)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(5352310876342918)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5355613710342923)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5353645622342919)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(5349657210342917)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5356187581342924)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5355930161342923)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5356302232342925)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(5355930161342923)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(5356258221342925)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5356495161342925)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5355930161342923)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(5356258221342925)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5356502737342925)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5355930161342923)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5356653429342925)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(5355930161342923)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5356711078342925)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5355930161342923)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(5356258221342925)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5356944721342926)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5356847443342925)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5357085068342926)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5356847443342925)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5357642477342927)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5357392185342927)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(5350917965342918)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5357735650342927)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5357392185342927)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(5350917965342918)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5357840414342927)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(5357392185342927)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(5350917965342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5357976233342927)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(5357392185342927)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(5350917965342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5358005824342927)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5357392185342927)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(5351570136342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5358183784342927)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5357392185342927)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(5351570136342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5358211678342927)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(5357392185342927)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(5351570136342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5358326795342927)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(5357392185342927)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(5351570136342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5358456558342928)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(5357392185342927)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(5351570136342918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5358513680342928)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5357392185342927)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(5352158646342918)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5358692766342928)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5357392185342927)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(5352310876342918)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5358758275342928)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5357392185342927)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(5352158646342918)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5358814093342928)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5357392185342927)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5358920782342928)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5357392185342927)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(5349657210342917)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5359083630342928)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(5357392185342927)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(5349657210342917)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5359128502342928)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5357392185342927)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(5352310876342918)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5359249287342928)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5357392185342927)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5359321089342928)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5357392185342927)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(5349657210342917)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5359821864342928)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5359446238342928)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(5359727605342928)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5360020856342928)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5359446238342928)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(5359928034342928)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5360164173342928)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5359446238342928)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5360228177342928)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5359446238342928)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(5359928034342928)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5360444643342928)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5359446238342928)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(5360311362342928)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5360528418342928)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5359446238342928)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(5360311362342928)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5360891286342928)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(5360682182342928)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(5360750372342928)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5360974831342928)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(5360682182342928)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5361085993342928)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(5360682182342928)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(5360750372342928)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5361403683342929)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(5361197206342928)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(5361352921342929)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5361526448342929)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5361197206342928)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(5361352921342929)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5361679785342929)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(5361197206342928)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5362066650342939)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(5361868149342939)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(5361920996342939)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5362236907342939)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(5361868149342939)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(5362115824342939)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5362322710342939)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(5361868149342939)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(5361920996342939)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5362422292342939)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(5361868149342939)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(5362115824342939)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5362522636342939)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(5361868149342939)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(5361920996342939)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5362629126342940)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(5361868149342939)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(5362115824342939)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5362725943342940)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(5361868149342939)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(5362115824342939)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5362840521342940)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(5361868149342939)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(5361920996342939)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5362950846342940)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(5361868149342939)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(5361920996342939)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5363011876342940)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(5361868149342939)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(5362115824342939)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5363198927342941)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(5361868149342939)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(5362115824342939)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5363244111342941)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(5361868149342939)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(5362115824342939)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5363369764342941)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(5361868149342939)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5363451521342941)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(5361868149342939)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(5362115824342939)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5363611485342941)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(5363598306342941)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(5362115824342939)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5363843329342941)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(5363598306342941)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(5363759812342941)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5363974732342941)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(5363598306342941)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(5362115824342939)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5364008911342941)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(5363598306342941)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(5363759812342941)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5364145002342942)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(5363598306342941)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(5362115824342939)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5364235749342942)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(5363598306342941)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(5363759812342941)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5364382572342942)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(5363598306342941)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(5362115824342939)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5364589697342942)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(5363598306342941)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(5364422062342942)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5364611095342942)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(5363598306342941)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(5364422062342942)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5364805051342942)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(5363598306342941)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(5364798647342942)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5364925221342942)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(5363598306342941)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(5364798647342942)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5365057001342943)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(5363598306342941)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(5364422062342942)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5365141170342943)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(5363598306342941)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(5362115824342939)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5365263433342943)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(5363598306342941)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(5363759812342941)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5365346381342944)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(5363598306342941)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(5362115824342939)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5365517611342944)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(5363598306342941)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(5365416306342944)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5365867793342944)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(5365647382342944)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(5365782742342944)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5365987223342944)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(5365647382342944)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(5365782742342944)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5366391197342945)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(5366165016342944)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(5366275915342945)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5366416193342945)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(5366165016342944)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(5366275915342945)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5366669321342945)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(5366165016342944)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(5366575314342945)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5366859545342945)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(5366165016342944)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(5366747813342945)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5366970894342945)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(5366165016342944)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(5366747813342945)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5367014035342945)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(5366165016342944)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(5366747813342945)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5367126866342945)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(5366165016342944)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(5366575314342945)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5367244525342945)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(5366165016342944)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5367363679342945)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(5366165016342944)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(5366747813342945)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5367657182342945)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(5367459522342945)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(5367569808342945)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5367778469342945)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(5367459522342945)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(5367569808342945)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5367881176342945)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(5367459522342945)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(5367569808342945)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5367923201342946)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(5367459522342945)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(5362115824342939)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5368020429342946)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(5367459522342945)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(5362115824342939)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5368111101342946)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(5367459522342945)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(5367569808342945)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5368204844342946)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(5367459522342945)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(5367569808342945)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5368375748342946)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(5367459522342945)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(5367569808342945)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5368542659342946)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(5368478455342946)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(5367569808342945)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5368654544342946)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(5368478455342946)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(5367569808342945)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5368756908342946)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(5368478455342946)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(5367569808342945)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5368875361342946)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(5368478455342946)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(5362115824342939)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5368929059342946)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(5368478455342946)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(5362115824342939)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5369051632342946)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(5368478455342946)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(5367569808342945)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5369196239342946)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(5368478455342946)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(5367569808342945)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5369242189342946)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(5368478455342946)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(5367569808342945)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5369578009342956)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(5369309019342953)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5369681496342956)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(5369309019342953)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5369784440342956)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(5369309019342953)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5369892861342956)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(5369309019342953)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5369929185342956)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(5369309019342953)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5370076438342956)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(5369309019342953)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5370159051342956)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(5369309019342953)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5370371465342956)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(5369309019342953)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(5370256848342956)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5370441833342956)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(5369309019342953)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(5370256848342956)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5370580616342956)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(5369309019342953)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5370624344342957)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(5369309019342953)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(5370256848342956)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5370704074342958)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(5369309019342953)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5370888676342958)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(5369309019342953)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(5370256848342956)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5370915549342958)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(5369309019342953)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(5370256848342956)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5371145157342958)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(5371015552342958)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5371313749342958)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(5371015552342958)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(5371281722342958)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5371401801342958)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(5371015552342958)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5371564747342958)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(5371015552342958)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(5371281722342958)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5371693317342958)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(5371015552342958)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5371740452342959)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(5371015552342958)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(5371281722342958)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5371820088342959)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(5371015552342958)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5372058692342959)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(5371015552342958)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(5371985294342959)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5372140516342959)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(5371015552342958)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(5371985294342959)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5372386599342959)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(5371015552342958)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(5372219926342959)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5372436420342959)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(5371015552342958)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(5372219926342959)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5372536468342960)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(5371015552342958)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(5371985294342959)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5372697271342960)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(5371015552342958)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5372729030342960)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(5371015552342958)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(5371281722342958)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5372897725342960)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(5371015552342958)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5373062126342960)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(5371015552342958)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(5372937013342960)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5373219512342961)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(5373143644342960)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(5371985294342959)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5373393928342961)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(5373143644342960)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5373422944342961)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(5373143644342960)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5373524436342961)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(5373143644342960)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5373712119342961)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(5373143644342960)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(5373668525342961)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5373846982342961)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(5373143644342960)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(5373668525342961)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5374007654342961)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(5373901218342961)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5374173411342961)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(5373901218342961)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5374252741342962)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(5373901218342961)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5374376545342962)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(5373901218342961)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5374412989342962)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(5373901218342961)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5374559558342962)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(5373901218342961)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5374669419342962)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(5373901218342961)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5374746054342962)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(5373901218342961)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5374970708342962)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(5374836238342962)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5375082760342962)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(5374836238342962)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5375154776342962)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(5374836238342962)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5375236208342962)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(5374836238342962)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5375717140342964)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(5375671181342964)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(5372219926342959)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5375809188342964)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(5375671181342964)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(5369493722342956)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5375965745342964)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(5375671181342964)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(5372219926342959)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5376122501342964)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(5375671181342964)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(5376066108342964)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5376286184342964)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(5375671181342964)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(5371985294342959)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5376305372342964)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(5375671181342964)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(5371985294342959)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5376418242342964)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(5375671181342964)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(5376066108342964)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5376629823342964)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(5376509147342964)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5376790145342964)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(5376509147342964)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5376838781342964)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(5376509147342964)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5376915579342964)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(5376509147342964)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5377293075342964)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(5377082650342964)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(5377181279342964)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5377336996342964)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(5377082650342964)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(5377181279342964)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5377472470342964)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(5377082650342964)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(5377181279342964)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5378498101342978)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(5378207951342978)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(5378304412342978)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5378598726342979)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(5378207951342978)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(5378304412342978)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5379477184343086)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(5379397092343085)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5379657136343086)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(5379578718343086)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5379863456343086)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(5379753306343086)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5380058202343086)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(5379927112343086)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5380244927343086)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(5380145818343086)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5380309026343086)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(5379578718343086)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5380431986343087)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(5379753306343086)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5380620506343087)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(5380553703343087)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5380731006343087)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(5380553703343087)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5380821194343087)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(5380553703343087)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5380997248343087)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(5379397092343085)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5381074171343087)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(5380145818343086)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5381146199343087)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(5379927112343086)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5381340933343087)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(5381206866343087)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5381410174343087)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(5379397092343085)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5381511768343087)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(5379397092343085)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5381790674343087)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(5381690605343087)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5381973918343087)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(5381847707343087)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5382131552343087)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(5382065359343087)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5382338999343088)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(5382243658343088)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5382442795343088)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(5382243658343088)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5382613022343088)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(5382554598343088)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5382738943343088)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(5381847707343087)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5382940017343088)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(5382881597343088)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5383092165343090)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(5383148279343090)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(5382881597343088)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(5383544016343152)
,p_name=>'APEX'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/region_type/test_plugin
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(5386300325350760)
,p_plugin_type=>'REGION TYPE'
,p_name=>'TEST_PLUGIN'
,p_display_name=>'Test Plugin'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','TEST_PLUGIN'),'')
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
end;
/
prompt --application/shared_components/plugins/region_type/material_kanban
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(5400289535396652)
,p_plugin_type=>'REGION TYPE'
,p_name=>'MATERIAL.KANBAN'
,p_display_name=>'Material Kanban Board'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','MATERIAL.KANBAN'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
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
'    VR_ALLOW_DRAG_N_DROP   VARCHAR(1) := P_REGION.ATTRIBUTE_02;    ',
'    VR_INLINE_CSS          APEX_APPLICATION_PAGE_REGIONS.ATTRIBUTE_04%TYPE := P_REGION.ATTRIBUTE_04;',
'BEGIN',
'    APEX_CSS.ADD_FILE(',
'        P_NAME        => ''responsive-grid.min'',',
'        P_DIRECTORY   => P_PLUGIN.FILE_PREFIX,',
'        P_VERSION     => NULL',
'    );',
'',
'    APEX_CSS.ADD_FILE(',
'        P_NAME        => ''style.min'',',
'        P_DIRECTORY   => P_PLUGIN.FILE_PREFIX,',
'        P_VERSION     => NULL',
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
'        FALSE',
'    ) ||',
'    '');'');',
'',
'    RETURN NULL;',
'END;'))
,p_render_function=>'F_RENDER'
,p_ajax_function=>'F_AJAX'
,p_standard_attributes=>'SOURCE_SQL:AJAX_ITEMS_TO_SUBMIT:NO_DATA_FOUND_MESSAGE:ESCAPE_OUTPUT'
,p_sql_min_column_count=>1
,p_sql_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Visit my Plug-in Sample App for more examples: https://apex.oracle.com/pls/apex/f?p=PLUGINSBYRANGE:2',
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
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'This plugin allows easy integration of a Kanban board into your own application. Your business processes can be grouped and visualized clearly. With Drag''n Drop you can move the cards between a dynamic number of columns. Adjust the icons, colors and '
||'other attributes to your personal needs. Expand the cards with any HTML content to display more information and enable more functions. For licenses please take a look at the comments.',
'',
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
,p_version_identifier=>'1.0.1'
,p_about_url=>'https://github.com/McRange/Material-Kanban-Board'
,p_plugin_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Licenses:',
'',
'Material Kanban:',
'',
'https://github.com/McRange/Material-Kanban-Board',
'Copyright © 2018-2019 Matthias Range',
'MIT License',
'',
'Material Cards:',
'',
'https://github.com/RonnyWeiss/Material-Dashboard-Cards-as-HTML-or-for-Apex',
'MIT License',
'Copyright © 2018 Ronny Weiß',
'',
'Dragula:',
'',
'https://github.com/bevacqua/dragula',
'MIT License',
'Copyright © 2015-2016 Nicolas Bevacqua',
'',
'',
'Cards Css:',
'',
'https://github.com/creativetimofficial/material-dashboard',
'MIT License',
'Copyright © 2017 Creative Tim',
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
,p_files_version=>5
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(5410263767415059)
,p_plugin_id=>wwv_flow_api.id(5400289535396652)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'ConfigJSON'
,p_attribute_type=>'JAVASCRIPT'
,p_is_required=>true
,p_default_value=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
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
'    "printDataToConsole": false',
'}'))
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
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
'    "printDataToConsole": false',
'}',
'</pre>'))
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
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
'  <dt>printDataToConsole (boolean)</dt><dd>Debug feature: print loaded json data to console.</dd>',
'</dl>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(5410589079417654)
,p_plugin_id=>wwv_flow_api.id(5400289535396652)
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
 p_id=>wwv_flow_api.id(5410888713423304)
,p_plugin_id=>wwv_flow_api.id(5400289535396652)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Drag and Drop PL/SQL Code'
,p_attribute_type=>'PLSQL'
,p_is_required=>true
,p_default_value=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
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
,p_depending_on_attribute_id=>wwv_flow_api.id(5410589079417654)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
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
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
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
 p_id=>wwv_flow_api.id(5411107387426140)
,p_plugin_id=>wwv_flow_api.id(5400289535396652)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Inline CSS'
,p_attribute_type=>'JAVASCRIPT'
,p_is_required=>false
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
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
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(5421365209433974)
,p_plugin_id=>wwv_flow_api.id(5400289535396652)
,p_name=>'materialkanbandataloaded'
,p_display_name=>'Items Loaded'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(5421773865433975)
,p_plugin_id=>wwv_flow_api.id(5400289535396652)
,p_name=>'materialkanbandatarendered'
,p_display_name=>'Items Rendered'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(5420221212433946)
,p_plugin_id=>wwv_flow_api.id(5400289535396652)
,p_name=>'materialkanbandrag'
,p_display_name=>'Drag Item'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(5420928169433974)
,p_plugin_id=>wwv_flow_api.id(5400289535396652)
,p_name=>'materialkanbandrop'
,p_display_name=>'Drop Item'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(5420502630433973)
,p_plugin_id=>wwv_flow_api.id(5400289535396652)
,p_name=>'materialkanbandroperror'
,p_display_name=>'Drop Error'
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
 p_id=>wwv_flow_api.id(5400556127402402)
,p_plugin_id=>wwv_flow_api.id(5400289535396652)
,p_file_name=>'dragula.min.js'
,p_mime_type=>'application/javascript'
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
wwv_flow_api.g_varchar2_table(22) := '3A66756E6374696F6E28612C722C6E2C742C6F2C732C642C69297B66756E6374696F6E206328297B6966287229652E6C6F616465722E73746172742866292C617065782E7365727665722E706C7567696E28722C7B706167654974656D733A6F2C783031';
wwv_flow_api.g_varchar2_table(23) := '3A2267657444617461227D2C7B737563636573733A66756E6374696F6E2865297B762E7472696767657228226D6174657269616C6B616E62616E646174616C6F6164656422292C4F2865292C762E7472696767657228226D6174657269616C6B616E6261';
wwv_flow_api.g_varchar2_table(24) := '6E6461746172656E646572656422297D2C6572726F723A66756E6374696F6E2865297B662E656D70747928292C636F6E736F6C652E6C6F6728652E726573706F6E736554657874297D2C64617461547970653A226A736F6E227D293B656C736520747279';
wwv_flow_api.g_varchar2_table(25) := '7B652E6C6F616465722E73746172742866292C73657454696D656F75742866756E6374696F6E28297B4F28646174614A534F4E297D2C353030297D63617463682865297B636F6E736F6C652E6C6F6728226E6565642064617461206A736F6E22292C636F';
wwv_flow_api.g_varchar2_table(26) := '6E736F6C652E6C6F672865297D7D66756E6374696F6E204F2861297B6966284C2E7072696E7444617461546F436F6E736F6C65262628636F6E736F6C652E6C6F67284A534F4E2E737472696E67696679286129292C636F6E736F6C652E6C6F6728612929';
wwv_flow_api.g_varchar2_table(27) := '2C493D612E726F772C662E656D70747928292C4C2E64796E616D6963436F6C756D6E73297B76617220743D5B5D3B652E67726F7570427928612E726F772C66756E6374696F6E2865297B72657475726E20652E434F4C554D4E5F49447D292E666F724561';
wwv_flow_api.g_varchar2_table(28) := '63682866756E6374696F6E28652C612C72297B612626742E7075736828655B305D297D292C753D747D696628242E6561636828752C66756E6374696F6E28612C72297B2131213D3D64262628722E434F4C554D4E5F49443D652E65736361706548544D4C';
wwv_flow_api.g_varchar2_table(29) := '28722E434F4C554D4E5F4944292C722E434F4C554D4E5F5449544C453D652E65736361706548544D4C28722E434F4C554D4E5F5449544C45292C722E434F4C554D4E5F49434F4E3D652E65736361706548544D4C28722E434F4C554D4E5F49434F4E292C';
wwv_flow_api.g_varchar2_table(30) := '722E434F4C554D4E5F49434F4E5F434F4C4F523D652E65736361706548544D4C28722E434F4C554D4E5F49434F4E5F434F4C4F52292C722E434F4C554D4E5F4845414445525F5354594C453D652E65736361706548544D4C28722E434F4C554D4E5F4845';
wwv_flow_api.g_varchar2_table(31) := '414445525F5354594C45292C722E434F4C554D4E5F434F4C4F523D652E65736361706548544D4C28722E434F4C554D4E5F434F4C4F5229292C766F696420303D3D722E434F4C554D4E5F434F4C4F52262628722E434F4C554D4E5F434F4C4F523D226873';
wwv_flow_api.g_varchar2_table(32) := '6C28222B34362A61253335302B222C203535252C203630252922292C722E434F4C554D4E5F494E4445583D722E434F4C554D4E5F494E4445583F722E434F4C554D4E5F494E4445583A617D292C752626752E6C656E6774683E30297B5F3D4C2E67726F75';
wwv_flow_api.g_varchar2_table(33) := '70457874656E73696F6E3F3130302F2831322A752E6C656E6774682F4C2E67726F7570436F6C57696474682B31293A302C673D283130302D5F292F752E6C656E6774682C5F3D4D6174682E666C6F6F72283130302A5F292F3130302C673D4D6174682E66';
wwv_flow_api.g_varchar2_table(34) := '6C6F6F72283130302A67292F3130302C66756E6374696F6E2865297B76617220613D6C2865293B696628612E616464436C61737328226B622D726F7722292C4C2E67726F7570457874656E73696F6E297B76617220723D2428223C6469763E3C2F646976';
wwv_flow_api.g_varchar2_table(35) := '3E22293B722E616464436C61737328226B622D636F6C206B622D636F6C2D68656164657222292C722E6174747228227374796C65222C2277696474683A222B5F2B222522292C612E617070656E642872297D242E6561636828752C66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(36) := '652C6E297B28723D2428223C6469763E3C2F6469763E2229292E616464436C61737328226B622D636F6C206B622D636F6C2D68656164657222292C722E6174747228227374796C65222C2277696474683A222B672B222522292C722E6174747228226964';
wwv_flow_api.g_varchar2_table(37) := '222C6E2E434F4C554D4E5F4944293B76617220743D2428223C6469763E3C2F6469763E22293B742E616464436C61737328226B622D636F6C2D6865616465722D636F6E74656E7422293B766172206F3D22626F726465722D746F702D636F6C6F723A2022';
wwv_flow_api.g_varchar2_table(38) := '2B6E2E434F4C554D4E5F434F4C4F522B223B223B742E6174747228227374796C65222C6E2E434F4C554D4E5F4845414445525F5354594C457C7C6F293B76617220733D766F69642030213D6E2E434F4C554D4E5F5449544C453F6E2E434F4C554D4E5F54';
wwv_flow_api.g_varchar2_table(39) := '49544C453A22223B742E617070656E6428273C7020636C6173733D227469746C65223E272B732B223C2F703E22292C722E617070656E642874292C612E617070656E642872297D297D2866293B76617220733D6C2866293B696628612E726F772626612E';
wwv_flow_api.g_varchar2_table(40) := '726F772E6C656E6774683E30297B652E67726F7570427928612E726F772C66756E6374696F6E2865297B72657475726E204C2E67726F7570457874656E73696F6E3F652E47524F55505F49443A317D292E666F72456163682866756E6374696F6E28612C';
wwv_flow_api.g_varchar2_table(41) := '722C6E297B69662872297B76617220743D6C2873293B742E616464436C61737328226B622D726F7722292C742E61747472282267726F75706964222C72292C4C2E67726F7570457874656E73696F6E262666756E6374696F6E28612C72297B2131213D3D';
wwv_flow_api.g_varchar2_table(42) := '64262628722E47524F55505F49443D652E65736361706548544D4C28722E47524F55505F4944292C722E47524F55505F49434F4E3D652E65736361706548544D4C28722E47524F55505F49434F4E292C722E47524F55505F49434F4E5F434F4C4F523D65';
wwv_flow_api.g_varchar2_table(43) := '2E65736361706548544D4C28722E47524F55505F49434F4E5F434F4C4F52292C722E47524F55505F4845414445525F5354594C453D652E65736361706548544D4C28722E47524F55505F4845414445525F5354594C45292C722E47524F55505F5449544C';
wwv_flow_api.g_varchar2_table(44) := '453D652E65736361706548544D4C28722E47524F55505F5449544C45292C722E47524F55505F464F4F5445523D652E65736361706548544D4C28722E47524F55505F464F4F54455229293B766172206E3D2428223C6469763E3C2F6469763E22293B6E2E';
wwv_flow_api.g_varchar2_table(45) := '616464436C61737328226B622D636F6C206B622D67726F75702D726567696F6E22292C6E2E6174747228227374796C65222C2277696474683A222B5F2B222522292C612E617070656E64286E292C43286E2C7B697347726F7570436172643A21302C4944';
wwv_flow_api.g_varchar2_table(46) := '3A722E47524F55505F49442C49434F4E3A722E47524F55505F49434F4E2C49434F4E5F434F4C4F523A722E47524F55505F49434F4E5F434F4C4F522C4845414445525F5354594C453A722E47524F55505F4845414445525F5354594C452C5449544C453A';
wwv_flow_api.g_varchar2_table(47) := '722E47524F55505F5449544C452C464F4F5445523A722E47524F55505F464F4F5445522C4C494E4B3A722E47524F55505F4C494E4B7D297D28742C615B305D292C242E6561636828752C66756E6374696F6E28722C6E297B2166756E6374696F6E28612C';
wwv_flow_api.g_varchar2_table(48) := '722C6E297B76617220743D2428223C6469763E3C2F6469763E22293B742E616464436C61737328226B622D636F6C206B622D6974656D2D726567696F6E22292C742E6174747228227374796C65222C2277696474683A222B672B222522292C612E617070';
wwv_flow_api.g_varchar2_table(49) := '656E642874293B766172206F3D2428223C6469763E3C2F6469763E22293B6F2E616464436C61737328226B622D636F6C2D636F6E74656E7422293B76617220733D22626F726465722D6C6566742D636F6C6F723A20222B6E2E434F4C554D4E5F434F4C4F';
wwv_flow_api.g_varchar2_table(50) := '522B223B223B6F2E6174747228227374796C65222C6E2E434F4C554D4E5F4845414445525F5354594C457C7C73292C742E617070656E64286F293B76617220693D2428223C6469763E3C2F6469763E22293B692E616464436C61737328226B622D636F6C';
wwv_flow_api.g_varchar2_table(51) := '2D696E6E65722D68656164657222293B76617220633D766F69642030213D6E2E434F4C554D4E5F5449544C453F6E2E434F4C554D4E5F5449544C453A22223B692E617070656E6428273C7020636C6173733D227469746C65223E272B632B223C2F703E22';
wwv_flow_api.g_varchar2_table(52) := '292C6F2E617070656E642869293B766172204F3D2428223C6469763E3C2F6469763E22293B6966284F2E616464436C61737328226B622D6974656D2D636F6E7461696E657222292C4F2E617474722822636F6C756D6E6964222C6E2E434F4C554D4E5F49';
wwv_flow_api.g_varchar2_table(53) := '44292C6F2E617070656E64284F292C303D3D6E2E434F4C554D4E5F494E444558297B766172206C3D722E66696C7465722866756E6374696F6E2865297B72657475726E20652E47524F55505F4E45575F4954454D5F4C494E4B7D293B6C2E6C656E677468';
wwv_flow_api.g_varchar2_table(54) := '3E302626284F2E616464436C61737328226B622D6974656D2D636F6E7461696E65722D776974682D6E65772D6361726422292C66756E6374696F6E28652C61297B76617220723D2428223C6469763E3C2F6469763E22293B722E616464436C6173732822';
wwv_flow_api.g_varchar2_table(55) := '6B622D6E65772D6361726422293B766172206E3D2428223C693E3C2F693E22293B6E2E616464436C617373282266612066612D706C757322292C722E617070656E64286E293B76617220743D2428223C613E3C2F613E22293B742E617474722822687265';
wwv_flow_api.g_varchar2_table(56) := '66222C61292C742E617070656E642872293B766172206F3D2428223C6469763E3C2F6469763E22293B6F2E616464436C61737328226B622D6E65772D6974656D2D726567696F6E22292C6F2E617070656E642874292C652E617070656E64286F297D286F';
wwv_flow_api.g_varchar2_table(57) := '2C6C5B305D2E47524F55505F4E45575F4954454D5F4C494E4B29297D2166756E6374696F6E28612C722C6E297B612626612E6C656E6774683E302626242E6561636828612C66756E6374696F6E28612C74297B2131213D3D64262628742E49443D652E65';
wwv_flow_api.g_varchar2_table(58) := '736361706548544D4C28742E4944292C742E49434F4E3D652E65736361706548544D4C28742E49434F4E292C742E49434F4E5F434F4C4F523D652E65736361706548544D4C28742E49434F4E5F434F4C4F52292C742E4845414445525F5354594C453D65';
wwv_flow_api.g_varchar2_table(59) := '2E65736361706548544D4C28742E4845414445525F5354594C45292C742E5449544C453D652E65736361706548544D4C28742E5449544C45292C742E464F4F5445523D652E65736361706548544D4C28742E464F4F54455229292C4328722C7B69734772';
wwv_flow_api.g_varchar2_table(60) := '6F7570436172643A21312C49443A742E49442C49434F4E3A742E49434F4E2C49434F4E5F434F4C4F523A742E49434F4E5F434F4C4F522C4845414445525F5354594C453A742E4845414445525F5354594C452C5449544C453A742E5449544C452C464F4F';
wwv_flow_api.g_varchar2_table(61) := '5445523A742E464F4F5445522C4C494E4B3A742E4C494E4B7D2C6E297D297D28722E66696C7465722866756E6374696F6E2865297B72657475726E20652E434F4C554D4E5F49443D3D6E2E434F4C554D4E5F49442626652E49447D292C4F2C6E297D2874';
wwv_flow_api.g_varchar2_table(62) := '2C612C6E297D297D7D292C69262666756E6374696F6E28297B76617220653D302C613D6E756C6C3B4E3D64726167756C61282428762E66696E6428222E6B622D6974656D2D636F6E7461696E65722229292E746F417272617928292C7B64697265637469';
wwv_flow_api.g_varchar2_table(63) := '6F6E3A22766572746963616C222C616363657074733A66756E6374696F6E28652C612C722C6E297B72657475726E21214C2E616C6C6F77447261674974656D734265747765656E47726F7570737C7C242872292E636C6F7365737428222E6B622D726F77';
wwv_flow_api.g_varchar2_table(64) := '22292E61747472282267726F7570696422293D3D242861292E636C6F7365737428222E6B622D726F7722292E61747472282267726F7570696422297D7D292C2428222E6B622D6361726422292E656163682866756E6374696F6E28652C61297B612E6164';
wwv_flow_api.g_varchar2_table(65) := '644576656E744C697374656E65722822746F7563686D6F7665222C66756E6374696F6E2865297B652E70726576656E7444656661756C7428297D297D292C4E2E6F6E282264726167222C66756E6374696F6E28722C6E297B76617220743D242872292C6F';
wwv_flow_api.g_varchar2_table(66) := '3D24286E293B653D742E696E64657828293B76617220733D742E6E65787428293B613D732E6C656E6774683E303F2428735B305D293A6E756C6C3B76617220643D7B6974656D49643A742E6174747228226974656D696422292C736F7572636547726F75';
wwv_flow_api.g_varchar2_table(67) := '7049643A6F2E636C6F7365737428222E6B622D726F7722292E61747472282267726F7570696422292C736F75726365436F6C756D6E49643A6F2E617474722822636F6C756D6E696422292C736F757263654974656D496E6465783A657D3B762E74726967';
wwv_flow_api.g_varchar2_table(68) := '67657228226D6174657269616C6B616E62616E64726167222C5B645D297D292C4E2E6F6E282264726F70222C66756E6374696F6E286E2C742C732C64297B76617220693D24286E292C633D242874292C4F3D242873292C6C3D7B6974656D49643A692E61';
wwv_flow_api.g_varchar2_table(69) := '74747228226974656D696422292C736F7572636547726F757049643A4F2E636C6F7365737428222E6B622D726F7722292E61747472282267726F7570696422292C736F75726365436F6C756D6E49643A4F2E617474722822636F6C756D6E696422292C73';
wwv_flow_api.g_varchar2_table(70) := '6F757263654974656D496E6465783A652C74617267657447726F757049643A632E636C6F7365737428222E6B622D726F7722292E61747472282267726F7570696422292C746172676574436F6C756D6E49643A632E617474722822636F6C756D6E696422';
wwv_flow_api.g_varchar2_table(71) := '292C7461726765744974656D496E6465783A692E696E64657828297D3B7472797B617065782E7365727665722E706C7567696E28722C7B706167654974656D733A6F2C7830313A226D6F76654974656D222C7830323A6C2E6974656D49642C7830333A6C';
wwv_flow_api.g_varchar2_table(72) := '2E736F7572636547726F757049642C7830343A6C2E736F75726365436F6C756D6E49642C7830353A6C2E736F757263654974656D496E6465782C7830363A6C2E74617267657447726F757049642C7830373A6C2E746172676574436F6C756D6E49642C78';
wwv_flow_api.g_varchar2_table(73) := '30383A6C2E7461726765744974656D496E6465787D2C7B737563636573733A66756E6374696F6E2865297B7D2C6572726F723A66756E6374696F6E2865297B613F692E696E736572744265666F72652861293A4F2E617070656E642869292C7028692C4F';
wwv_flow_api.g_varchar2_table(74) := '2E617474722822636F6C756D6E69642229292C636F6E736F6C652E6572726F7228652E726573706F6E736554657874292C762E7472696767657228226D6174657269616C6B616E62616E64726F706572726F72222C5B6C5D297D2C64617461547970653A';
wwv_flow_api.g_varchar2_table(75) := '226A736F6E227D297D63617463682865297B636F6E736F6C652E6C6F67282243616E27742063616C6C20736572766572206F6E2064726167276E2064726F70206576656E742E2041706578206973206D697373696E6722292C636F6E736F6C652E6C6F67';
wwv_flow_api.g_varchar2_table(76) := '2865297D7028692C632E617474722822636F6C756D6E69642229292C762E7472696767657228226D6174657269616C6B616E62616E64726F70222C5B6C5D297D297D28297D656C736520732E63737328226D696E2D686569676874222C2222292C652E6E';
wwv_flow_api.g_varchar2_table(77) := '6F446174614D6573736167652E73686F7728732C6E297D656C736520636F6E736F6C652E6C6F6728224E6F20636F6C756D6E7320646566696E65642122297D66756E6374696F6E206C2865297B76617220613D2428223C6469763E3C2F6469763E22293B';
wwv_flow_api.g_varchar2_table(78) := '72657475726E20612E616464436C6173732822732D672D726F7722292C652E617070656E642861292C617D66756E6374696F6E204328652C612C72297B766172206E3D2428223C6469763E3C2F6469763E22293B6E2E616464436C61737328226B622D63';
wwv_flow_api.g_varchar2_table(79) := '61726422292C6E2E6174747228226974656D6964222C612E4944293B76617220743D2428223C6469763E3C2F6469763E22293B696628742E616464436C6173732822636172642D68656164657222292C612E49434F4E7C7C722626722E434F4C554D4E5F';
wwv_flow_api.g_varchar2_table(80) := '49434F4E297B766172206F3D2428223C693E3C2F693E22293B6F2E616464436C6173732822666120222B28612E49434F4E7C7C722E434F4C554D4E5F49434F4E29292C28612E49434F4E5F434F4C4F522626612E49434F4E5F434F4C4F522E6C656E6774';
wwv_flow_api.g_varchar2_table(81) := '683E307C7C722626722E434F4C554D4E5F49434F4E5F434F4C4F522626722E434F4C554D4E5F49434F4E5F434F4C4F522E6C656E6774683E302926266F2E6174747228227374796C65222C22636F6C6F723A222B28612E49434F4E5F434F4C4F527C7C72';
wwv_flow_api.g_varchar2_table(82) := '2E434F4C554D4E5F49434F4E5F434F4C4F5229292C742E617070656E64286F297D612E4845414445525F5354594C453F742E6174747228227374796C65222C612E4845414445525F5354594C45293A722626722E434F4C554D4E5F434F4C4F522626742E';
wwv_flow_api.g_varchar2_table(83) := '6174747228227374796C65222C226261636B67726F756E643A222B722E434F4C554D4E5F434F4C4F52292C6E2E617070656E642874293B76617220733D2428223C6469763E3C2F6469763E22293B732E616464436C6173732822636172642D636F6E7465';
wwv_flow_api.g_varchar2_table(84) := '6E7422293B76617220643D612E5449544C453F612E5449544C453A22223B696628732E617070656E6428273C7020636C6173733D227469746C65223E272B642B223C2F703E22292C612E4C494E4B297B76617220693D2428223C613E3C2F613E22293B69';
wwv_flow_api.g_varchar2_table(85) := '2E61747472282268726566222C612E4C494E4B292C692E617070656E642873292C6E2E617070656E642869297D656C7365206E2E617070656E642873293B696628612E464F4F544552297B76617220633D2428223C6469763E3C2F6469763E22293B632E';
wwv_flow_api.g_varchar2_table(86) := '616464436C6173732822636172642D666F6F74657222293B766172204F3D2428223C6469763E3C2F6469763E22293B4F2E617070656E6428612E464F4F544552292C632E617070656E64284F292C6E2E617070656E642863297D652E617070656E64286E';
wwv_flow_api.g_varchar2_table(87) := '297D66756E6374696F6E207028652C61297B76617220723D652E6174747228226974656D696422292C6E3D492E66696E642866756E6374696F6E2865297B72657475726E20652E49443D3D727D292C743D752E66696E642866756E6374696F6E2865297B';
wwv_flow_api.g_varchar2_table(88) := '72657475726E20652E434F4C554D4E5F49443D3D617D292C6F3D652E66696E6428222E636172642D68656164657222292C733D6F2E66696E6428226922293B286E26266E2E49434F4E7C7C742626742E434F4C554D4E5F49434F4E29262628732E72656D';
wwv_flow_api.g_varchar2_table(89) := '6F7665436C61737328292E616464436C6173732822666120222B286E2E49434F4E7C7C742E434F4C554D4E5F49434F4E29292C286E2E49434F4E5F434F4C4F5226266E2E49434F4E5F434F4C4F522E6C656E6774683E307C7C742626742E434F4C554D4E';
wwv_flow_api.g_varchar2_table(90) := '5F49434F4E5F434F4C4F522626742E434F4C554D4E5F49434F4E5F434F4C4F522E6C656E6774683E30292626732E6174747228227374796C65222C22636F6C6F723A222B286E2E49434F4E5F434F4C4F527C7C742E434F4C554D4E5F49434F4E5F434F4C';
wwv_flow_api.g_varchar2_table(91) := '4F522929292C216E2E4845414445525F5354594C452626742626742E434F4C554D4E5F434F4C4F5226266F2E6174747228227374796C65222C226261636B67726F756E643A222B742E434F4C554D4E5F434F4C4F52297D766172204C3D7B7D2C753D284C';
wwv_flow_api.g_varchar2_table(92) := '3D652E6A736F6E53617665457874656E64287B726566726573683A302C737461746963436F6C756D6E733A5B7B434F4C554D4E5F49443A2231222C434F4C554D4E5F5449544C453A22546F20446F222C434F4C554D4E5F49434F4E3A2266612D63616C65';
wwv_flow_api.g_varchar2_table(93) := '6E646172227D2C7B434F4C554D4E5F49443A2232222C434F4C554D4E5F5449544C453A22496E2050726F6772657373222C434F4C554D4E5F49434F4E3A2266612D7772656E6368227D2C7B434F4C554D4E5F49443A2233222C434F4C554D4E5F5449544C';
wwv_flow_api.g_varchar2_table(94) := '453A22446F6E65222C434F4C554D4E5F49434F4E3A2266612D636865636B227D5D2C64796E616D6963436F6C756D6E733A21312C67726F7570457874656E73696F6E3A21312C67726F7570436F6C57696474683A362C616C6C6F77447261674974656D73';
wwv_flow_api.g_varchar2_table(95) := '4265747765656E47726F7570733A21312C7072696E7444617461546F436F6E736F6C653A21317D2C742C213129292E737461746963436F6C756D6E732C493D6E756C6C2C4E3D6E756C6C2C663D6E756C6C2C5F3D302C673D3130302C763D24282223222B';
wwv_flow_api.g_varchar2_table(96) := '61293B696628762E6C656E6774683E30297B663D66756E6374696F6E2865297B76617220613D2428223C6469763E3C2F6469763E22293B72657475726E20612E616464436C6173732822732D672D636F6E7461696E657222292C612E63737328226D696E';
wwv_flow_api.g_varchar2_table(97) := '2D686569676874222C22313730707822292C652E617070656E642861292C617D2876292C6328293B7472797B617065782E6A5175657279282223222B73292E62696E6428226170657872656672657368222C66756E6374696F6E28297B303D3D662E6368';
wwv_flow_api.g_varchar2_table(98) := '696C6472656E28227370616E22292E6C656E6774682626284E26264E2E64657374726F7928292C632829297D297D63617463682865297B636F6E736F6C652E6C6F67282243616E27742062696E642072656672657368206576656E74206F6E20222B732B';
wwv_flow_api.g_varchar2_table(99) := '222E2041706578206973206D697373696E6722292C636F6E736F6C652E6C6F672865297D4C2E726566726573683E302626736574496E74657276616C2866756E6374696F6E28297B303D3D662E6368696C6472656E28227370616E22292E6C656E677468';
wwv_flow_api.g_varchar2_table(100) := '2626284E26264E2E64657374726F7928292C632829297D2C3165332A4C2E72656672657368297D656C736520636F6E736F6C652E6C6F67282243616E27742066696E6420706172656E7449443A20222B61297D7D7D28293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(5400924649403396)
,p_plugin_id=>wwv_flow_api.id(5400289535396652)
,p_file_name=>'script.min.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
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
wwv_flow_api.g_varchar2_table(9) := '653B6261636B67726F756E643A236661666166613B6D617267696E3A303B706F736974696F6E3A72656C61746976653B6F766572666C6F773A68696464656E7D2E6B622D636172643A686F7665727B6261636B67726F756E643A236666663B626F782D73';
wwv_flow_api.g_varchar2_table(10) := '6861646F773A3020313070782032307078207267626128302C302C302C2E3139292C302036707820367078207267626128302C302C302C2E3233297D2E6B622D63617264202E636172642D6865616465727B666C6F61743A6C6566743B746578742D616C';
wwv_flow_api.g_varchar2_table(11) := '69676E3A63656E7465723B6D617267696E3A367078203020367078203670783B626F782D736861646F773A3020313270782032307078202D313070782072676261283233302C3233302C3233302C2E3238292C3020347078203230707820302072676261';
wwv_flow_api.g_varchar2_table(12) := '28302C302C302C2E3132292C302037707820387078202D3570782072676261283233302C3233302C3233302C2E32293B7472616E736974696F6E3A616C6C20317320656173657D2E6B622D63617264202E636172642D68656164657220697B666F6E742D';
wwv_flow_api.g_varchar2_table(13) := '73697A653A313870783B6C696E652D6865696768743A323870783B77696474683A323870783B6865696768743A323870783B636F6C6F723A236666663B7472616E736974696F6E3A616C6C20317320656173657D2E6B622D63617264202E636172642D63';
wwv_flow_api.g_varchar2_table(14) := '6F6E74656E747B746578742D616C69676E3A6C6566743B70616464696E673A30203670783B6F766572666C6F773A68696464656E3B6D696E2D6865696768743A343070783B646973706C61793A7461626C657D2E6B622D63617264202E7469746C657B66';
wwv_flow_api.g_varchar2_table(15) := '6F6E742D73697A653A31656D3B646973706C61793A7461626C652D63656C6C3B766572746963616C2D616C69676E3A6D6964646C657D2E6B622D63617264202E636172642D666F6F7465727B6D617267696E3A302032307078203670783B70616464696E';
wwv_flow_api.g_varchar2_table(16) := '672D746F703A3370783B626F726465722D746F703A31707820736F6C696420236565653B636F6C6F723A233939397D2E6B622D63617264202E636172642D666F6F7465723E6469767B646973706C61793A696E6C696E652D626C6F636B3B77696474683A';
wwv_flow_api.g_varchar2_table(17) := '313030257D2E6B622D6E65772D6974656D2D726567696F6E7B636C6561723A626F74687D2E6B622D6974656D2D636F6E7461696E65727B6865696768743A313030253B6D696E2D6865696768743A313070783B70616464696E673A3570787D2E6B622D69';
wwv_flow_api.g_varchar2_table(18) := '74656D2D636F6E7461696E6572202E6B622D636172647B666C6F61743A6C6566743B6D617267696E3A357078203570783B6D696E2D6865696768743A2E31323572656D3B77696474683A63616C632831303025202D2031307078293B6D61782D77696474';
wwv_flow_api.g_varchar2_table(19) := '683A32303070787D2E6B622D6974656D2D636F6E7461696E65722D776974682D6E65772D636172647B6865696768743A63616C632831303025202D2034307078297D2E6B622D6E65772D636172647B666C6F61743A6C6566743B746578742D616C69676E';
wwv_flow_api.g_varchar2_table(20) := '3A63656E7465723B6D617267696E3A3370782031307078203130707820313070783B7472616E736974696F6E3A616C6C202E33732063756269632D62657A696572282E32352C2E382C2E32352C31293B626F782D736861646F773A302031707820337078';
wwv_flow_api.g_varchar2_table(21) := '207267626128302C302C302C2E3132292C302031707820327078207267626128302C302C302C2E3234293B6261636B67726F756E643A233535633535357D2E6B622D6E65772D636172643A686F7665727B626F782D736861646F773A3020313070782032';
wwv_flow_api.g_varchar2_table(22) := '307078207267626128302C302C302C2E3139292C302036707820367078207267626128302C302C302C2E3233297D2E6B622D6E65772D6361726420697B666F6E742D73697A653A313870783B6C696E652D6865696768743A323870783B77696474683A32';
wwv_flow_api.g_varchar2_table(23) := '3870783B6865696768743A323870783B636F6C6F723A236666667D2E6B622D67726F75702D726567696F6E202E636172642D6865616465727B6261636B67726F756E643A233339613664617D406D65646961206F6E6C792073637265656E20616E642028';
wwv_flow_api.g_varchar2_table(24) := '6D61782D77696474683A3731397078297B2E6B622D726F777B646973706C61793A2D6D732D696E6C696E652D626F783B646973706C61793A2D7765626B69742D696E6C696E652D626F783B646973706C61793A696E6C696E652D626C6F636B7D2E6B622D';
wwv_flow_api.g_varchar2_table(25) := '636F6C2D6865616465727B646973706C61793A6E6F6E657D2E6B622D636F6C2D6865616465722C2E6B622D67726F75702D726567696F6E2C2E6B622D6974656D2D726567696F6E7B77696474683A3130302521696D706F7274616E747D2E6B622D636172';
wwv_flow_api.g_varchar2_table(26) := '647B6D61782D77696474683A6E6F6E6521696D706F7274616E747D2E6B622D6974656D2D726567696F6E7B646973706C61793A2D6D732D666C65783B646973706C61793A2D7765626B69742D666C65783B646973706C61793A666C65787D2E6B622D636F';
wwv_flow_api.g_varchar2_table(27) := '6C2D636F6E74656E747B626F726465722D7261646975733A3570783B626F726465722D6C6566743A35707820736F6C696420236161617D2E6B622D636F6C2D696E6E65722D6865616465727B646973706C61793A696E6C696E652D626C6F636B7D2E6B62';
wwv_flow_api.g_varchar2_table(28) := '2D67726F75702D726567696F6E7B626F726465723A6E6F6E657D2E6B622D67726F75702D726567696F6E3E6469767B6D617267696E3A33707821696D706F7274616E743B77696474683A63616C632831303025202D20367078293B626F726465722D7261';
wwv_flow_api.g_varchar2_table(29) := '646975733A3570783B626F726465722D746F703A35707820736F6C696420236161613B626F726465722D6C6566743A35707820736F6C696420236161617D2E6B622D67726F75702D726567696F6E202E6B622D636172647B646973706C61793A696E6865';
wwv_flow_api.g_varchar2_table(30) := '7269747D2E6B622D726F773A3A61667465727B6D617267696E2D626F74746F6D3A323070787D7D2E67752D6D6972726F727B706F736974696F6E3A666978656421696D706F7274616E743B6D617267696E3A3021696D706F7274616E743B7A2D696E6465';
wwv_flow_api.g_varchar2_table(31) := '783A3939393921696D706F7274616E743B6F7061636974793A2E387D2E67752D686964657B646973706C61793A6E6F6E6521696D706F7274616E747D2E67752D756E73656C65637461626C657B2D7765626B69742D757365722D73656C6563743A6E6F6E';
wwv_flow_api.g_varchar2_table(32) := '6521696D706F7274616E743B2D6D6F7A2D757365722D73656C6563743A6E6F6E6521696D706F7274616E743B2D6D732D757365722D73656C6563743A6E6F6E6521696D706F7274616E743B757365722D73656C6563743A6E6F6E6521696D706F7274616E';
wwv_flow_api.g_varchar2_table(33) := '747D2E67752D7472616E7369747B6F7061636974793A2E327D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(5401316367404708)
,p_plugin_id=>wwv_flow_api.id(5400289535396652)
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
 p_id=>wwv_flow_api.id(5401720755405576)
,p_plugin_id=>wwv_flow_api.id(5400289535396652)
,p_file_name=>'responsive-grid.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(5383356658343098)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(5341164630342806)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(5375516592342963)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(5383242404343095)
,p_nav_bar_list_template_id=>wwv_flow_api.id(5375470381342962)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(5383356658343098)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RANGE'
,p_last_upd_yyyymmddhh24miss=>'20190921185311'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5385136634343262)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(5360682182342928)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(5384647529343244)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(5378679698342982)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5460314228486002)
,p_plug_name=>'Tabs'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_api.id(5359446238342928)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5460271475486001)
,p_plug_name=>'Simple Board'
,p_region_name=>'simplekanban'
,p_parent_plug_id=>wwv_flow_api.id(5460314228486002)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(5357392185342927)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'    1000 + LEVEL AS ID,',
'    DBMS_RANDOM.STRING(''U'', 1) || DBMS_RANDOM.STRING(''L'', DBMS_RANDOM.VALUE(6, 12)) || '' '' || DBMS_RANDOM.STRING(''L'', DBMS_RANDOM.VALUE(6, 12)) AS TITLE,',
'    TRUNC(DBMS_RANDOM.VALUE(1, 4)) AS COLUMN_ID',
'FROM',
'    DUAL',
'CONNECT BY',
'    LEVEL <= DBMS_RANDOM.VALUE(20, 30)'))
,p_plug_source_type=>'PLUGIN_MATERIAL.KANBAN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
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
'    "printDataToConsole": false',
'}'))
,p_attribute_02=>'Y'
,p_attribute_03=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
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
,p_attribute_04=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#simplekanban .kb-col-header-content .title {',
'    margin: 0 0 1.6rem;',
'}'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5460437972486003)
,p_plug_name=>'Grouping'
,p_region_name=>'groupingkanban'
,p_parent_plug_id=>wwv_flow_api.id(5460314228486002)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(5357392185342927)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
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
'    USING ( GROUP_ID )'))
,p_plug_source_type=>'PLUGIN_MATERIAL.KANBAN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'{',
'    "staticColumns":[{',
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
'    "groupExtension": true,',
'    "groupColWidth": 6',
'}'))
,p_attribute_02=>'Y'
,p_attribute_03=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
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
,p_attribute_04=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#groupingkanban .kb-col-header-content .title {',
'    margin: 0 0 1.6rem;',
'}',
'#groupingkanban .kb-item-container .kb-card {',
'    max-width: none;',
'}'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5460595398486004)
,p_plug_name=>'Dynamic Columns'
,p_region_name=>'dyncolumnskanban'
,p_parent_plug_id=>wwv_flow_api.id(5460314228486002)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(5357392185342927)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'WITH C AS ( SELECT',
'                LEVEL   AS COLUMN_ID,',
'                ''Column '' || LEVEL AS COLUMN_TITLE,',
'                CASE',
'                    WHEN MOD(ROWNUM, 3) = 0 THEN',
'                        ''fa-pie-chart''',
'                    WHEN MOD(ROWNUM, 3) = 1 THEN',
'                        ''fa-bar-chart''',
'                    WHEN MOD(ROWNUM, 3) = 2 THEN',
'                        ''fa-area-chart''',
'                END AS COLUMN_ICON,',
'                ''hsl('' || TRUNC(DBMS_RANDOM.VALUE(0, 360)) || '', 55%, 60%)'' AS COLUMN_COLOR,',
'                NULL AS COLUMN_HEADER_STYLE',
'            FROM',
'                DUAL',
'            CONNECT BY',
'                LEVEL <= DBMS_RANDOM.VALUE(2, 8)',
'), G AS ( SELECT',
'              LEVEL   AS GROUP_ID,',
'              ''Group '' || LEVEL AS GROUP_TITLE,',
'              ''fa-cogs'' AS GROUP_ICON,',
'              ''<i class="fa fa-cogs" style="font-size: 3.5em;margin-left: 5px;">'' AS GROUP_FOOTER',
'          FROM',
'              DUAL',
'          CONNECT BY',
'              LEVEL <= 3',
'), I AS ( SELECT',
'              1000 + LEVEL AS ID,',
'              TRUNC(DBMS_RANDOM.VALUE(1,(SELECT',
'                                             MAX(COLUMN_ID) + 1',
'                                         FROM',
'                                             C',
'                                        ))) AS COLUMN_ID,',
'              TRUNC(DBMS_RANDOM.VALUE(1,(SELECT',
'                                             MAX(GROUP_ID) + 1',
'                                         FROM',
'                                             G',
'                                        ))) AS GROUP_ID,',
'              ''Item '' || LEVEL AS TITLE,',
'              ''<i class="fa fa-euro" style="font-size: 3.5em;margin-left: 5px;">'' AS FOOTER',
'          FROM',
'              DUAL',
'          CONNECT BY',
'              LEVEL <= TRUNC(DBMS_RANDOM.VALUE(10, 20))',
')',
'SELECT',
'    COLUMN_ID,',
'    COLUMN_TITLE,',
'    COLUMN_ICON,',
'    COLUMN_COLOR,',
'    COLUMN_HEADER_STYLE,',
'    GROUP_ID,',
'    GROUP_TITLE,',
'    GROUP_ICON,',
'    GROUP_FOOTER,',
'    ID,',
'    TITLE,',
'    FOOTER',
'FROM',
'    G LEFT',
'    JOIN I',
'    USING ( GROUP_ID )',
'    RIGHT JOIN C',
'    USING ( COLUMN_ID )',
'ORDER BY',
'    COLUMN_ID,',
'    GROUP_ID'))
,p_plug_source_type=>'PLUGIN_MATERIAL.KANBAN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'{',
'    "refresh": 0,',
'    "dynamicColumns": true,',
'    "groupExtension": true,',
'    "groupColWidth": 12,',
'"printDataToConsole": true',
'}'))
,p_attribute_02=>'N'
,p_attribute_04=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#dyncolumnskanban .kb-col-header-content .title {',
'    margin: 0 0 1.6rem;',
'}',
'#dyncolumnskanban .kb-item-container .kb-card {',
'    max-width: 100px !important;',
'    height: 100px;',
'}',
'#dyncolumnskanban .kb-group-region .kb-card {',
'    height: 100%;',
'}',
'#dyncolumnskanban .card-footer img{',
'    height: 50px;',
'    width: 50px;',
'}'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5460696225486005)
,p_plug_name=>'Events'
,p_region_name=>'eventkanban'
,p_parent_plug_id=>wwv_flow_api.id(5460314228486002)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(5357392185342927)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'WITH G AS ( SELECT',
'                50 + LEVEL AS GROUP_ID,',
'                ''Group '' || (50 + LEVEL) AS GROUP_TITLE,',
'                ''fa-cogs'' AS GROUP_ICON',
'            FROM',
'                DUAL',
'            CONNECT BY',
'                LEVEL <= 3',
'), I AS ( SELECT',
'              1000 + LEVEL AS ID,',
'              TRUNC(DBMS_RANDOM.VALUE(1, 4)) AS COLUMN_ID,',
'              50 + TRUNC(DBMS_RANDOM.VALUE(1, 4)) AS GROUP_ID,',
'              ''Item '' || (1000 + LEVEL) AS TITLE,',
'              CASE WHEN LEVEL < 3 THEN',
'                 ''fa-close''',
'             ELSE NULL END AS ICON,',
'              CASE WHEN LEVEL < 3 THEN',
'                 ''background:#ff7777''',
'             ELSE ''background:#77BB77'' END AS HEADER_STYLE',
'          FROM',
'              DUAL',
'          CONNECT BY',
'              LEVEL <= 7',
')',
'SELECT',
'    COLUMN_ID,',
'    GROUP_ID,',
'    GROUP_TITLE,',
'    GROUP_ICON,',
'    ID,',
'    TITLE,',
'    ICON,',
'    HEADER_STYLE',
'FROM',
'    G LEFT',
'    JOIN I',
'    USING ( GROUP_ID )',
'ORDER BY',
'    COLUMN_ID,',
'    GROUP_ID'))
,p_plug_source_type=>'PLUGIN_MATERIAL.KANBAN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'{',
'    "staticColumns": [{',
'        "COLUMN_ID": "1",',
'        "COLUMN_TITLE": "Column 1",',
'        "COLUMN_ICON": "fa-wrench",',
'        "COLUMN_COLOR": "#AAAAAA"',
'                        }, {',
'        "COLUMN_ID": "2",',
'        "COLUMN_TITLE": "Column 2",',
'        "COLUMN_ICON": "fa-wrench",',
'        "COLUMN_COLOR": "#AAAAAA"',
'                        }, {',
'        "COLUMN_ID": "3",',
'        "COLUMN_TITLE": "Column 3",',
'        "COLUMN_ICON": "fa-wrench",',
'        "COLUMN_COLOR": "#AAAAAA"',
'    }],',
'    "groupExtension": true,',
'    "groupColWidth": 6,',
'    "allowDragItemsBetweenGroups": true',
'}'))
,p_attribute_02=>'Y'
,p_attribute_03=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'    VR_ITEM_ID         VARCHAR2(200) := :APEX$ITEM_ID;',
'    VR_OLD_GROUP_ID    VARCHAR2(200) := :APEX$OLD_GROUP_ID;',
'    VR_OLD_COLUMN_ID   VARCHAR2(200) := :APEX$OLD_COLUMN_ID;',
'    VR_OLD_INDEX       VARCHAR2(200) := :APEX$OLD_INDEX;',
'    VR_NEW_GROUP_ID    VARCHAR2(200) := :APEX$NEW_GROUP_ID;',
'    VR_NEW_COLUMN_ID   VARCHAR2(200) := :APEX$NEW_COLUMN_ID;',
'    VR_NEW_INDEX       VARCHAR2(200) := :APEX$NEW_INDEX;',
'BEGIN',
'    IF VR_ITEM_ID < 1003 THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''movement is not allowed'');',
'    END IF;',
'END;'))
,p_attribute_04=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#eventkanban .kb-col-header-content .title {',
'    margin: 0 0 1.6rem;',
'}'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5460781560486006)
,p_name=>'P1_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5460696225486005)
,p_prompt=>'Action Output'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(5377600713342971)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5460862286486007)
,p_name=>'On Drop'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(5460696225486005)
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_MATERIAL.KANBAN|REGION TYPE|materialkanbandrop'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5460918599486008)
,p_event_id=>wwv_flow_api.id(5460862286486007)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_TEXT'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var dropData = this.data;',
'apex.item("P1_TEXT").setValue("Moved item " +',
'    dropData.itemId + " from group " +',
'    dropData.sourceGroupId + " column " +',
'    dropData.sourceColumnId + " position " + ',
'    dropData.sourceItemIndex + " to group " +',
'    dropData.targetGroupId + " column " +',
'    dropData.targetColumnId + " position " + ',
'    dropData.targetItemIndex',
');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5461063420486009)
,p_name=>'On Drag'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(5460696225486005)
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_MATERIAL.KANBAN|REGION TYPE|materialkanbandrag'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5461163451486010)
,p_event_id=>wwv_flow_api.id(5461063420486009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_TEXT'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var dragata = this.data;',
'apex.item("P1_TEXT").setValue("Drag item " +',
'    dragata.itemId + " from group " +',
'    dragata.sourceGroupId + " column " +',
'    dragata.sourceColumnId + " position " +',
'    dragata.sourceItemIndex',
');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5461211534486011)
,p_name=>'On Drop Error'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(5460696225486005)
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_MATERIAL.KANBAN|REGION TYPE|materialkanbandroperror'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5461391475486012)
,p_event_id=>wwv_flow_api.id(5461211534486011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_TEXT'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var dropData = this.data;',
'apex.item( "P1_TEXT" ).setValue( "Error when item moved from " +',
'    dropData.itemId + " from group " +',
'    dropData.sourceGroupId + " column " +',
'    dropData.sourceColumnId + " position " + ',
'    dropData.sourceItemIndex+ " to group " +',
'    dropData.targetGroupId + " column " +',
'    dropData.targetColumnId + " position " + ',
'    dropData.targetItemIndex',
');'))
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(5383356658343098)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Plugin Test - Log In'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(5343185994342878)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20190921172343'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5383827844343211)
,p_plug_name=>'Log In'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(5357392185342927)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5384144541343228)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5383827844343211)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5378198325342978)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5383905092343221)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5383827844343211)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(5377600713342971)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5384018540343228)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5383827844343211)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(5377600713342971)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5384347586343244)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5384225427343236)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5384584416343244)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5384478726343244)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
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
