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
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
