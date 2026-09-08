prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.3'
,p_default_workspace_id=>34137721162556151264
,p_default_application_id=>176399
,p_default_id_offset=>36719486020479575479
,p_default_owner=>'WKSP_TIPONCIO'
);
end;
/
 
prompt APPLICATION 176399 - Países
--
-- Application Export:
--   Application:     176399
--   Name:            Países
--   Date and Time:   22:27 Tuesday September 8, 2026
--   Exported By:     CARLOSJ.INFO@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     27
--       Items:                   51
--       Validations:              2
--       Processes:               22
--       Regions:                 65
--       Buttons:                 41
--       Dynamic Actions:          9
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:          8
--       Navigation:
--         Lists:                  8
--         Breadcrumbs:            1
--           Entries:              3
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  11
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.3
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_TIPONCIO')
,p_name=>nvl(wwv_flow_application_install.get_application_name,unistr('Pa\00EDses'))
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,unistr('PA\00CDSES'))
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'DA3734EBA6862312C735789485EC29640B570C13F15C69CC6EA8F3EA674BBD00'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'pt-br'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(70139073669738924028)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>unistr('Pa\00EDses')
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>unistr('Pa\00EDses')
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908214642Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'CARLOSJ.INFO@GMAIL.COM'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461285224840
,p_version_scn=>'15827213747756'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>36719492936701575678
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(70139074566940924029)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(70139075406954924035)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_155360_push_notifications_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>36719492936701575678
,p_name=>'App 155360 Push Notifications Credentials'
,p_static_id=>'app-155360-push-notifications-credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
,p_created_on=>wwv_flow_imp.dz('20260901224849Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224849Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(70139069244622924021)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(70139069540634924022)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(70139069850478924022)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(70139070167658924023)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(70139070515749924023)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(70139070788872924024)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(70139071089216924024)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(70139071372511924024)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(70139071653062924025)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(70139072015078924025)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(70139072306137924026)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(70139072597481924026)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(70139072831309924026)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(70139073143947924027)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(70140151573232924846)
,p_name=>'Access Control'
,p_static_id=>'access-control'
,p_required_patch=>wwv_flow_imp.id(70139077916299924039)
,p_version_scn=>'SH256:SRrlwOpEOtcZYC08lMmFp0G-LPy7x0ZTHeLbRgkoPSE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140154003979924847)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_static_id=>'access-control'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140152911992924847)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_static_id=>'users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(70140146240481924843)
,p_name=>'Activity Reports'
,p_static_id=>'activity-reports'
,p_required_patch=>wwv_flow_imp.id(70139077998888924039)
,p_version_scn=>'SH256:n9v9_LHR-bw15GLjspBv-Um-gdn0-xc5G698U26HwOs'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140148592564924844)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_static_id=>'application-error-log'
,p_list_item_link_target=>'f?p=&APP_ID.:10022:&APP_SESSION.::&DEBUG.:10022::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140151000957924846)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_static_id=>'automations-log'
,p_list_item_link_target=>'f?p=&APP_ID.:10025:&APP_SESSION.::&DEBUG.:RR,10025::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>'Report of automation executions and messages logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140147398413924843)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_static_id=>'dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140149840598924845)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_static_id=>'page-performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10023:&APP_SESSION.::&DEBUG.:10023::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140150371077924845)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_static_id=>'page-views'
,p_list_item_link_target=>'f?p=&APP_ID.:10024:&APP_SESSION.::&DEBUG.:RR,10024::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140148076487924844)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_static_id=>'top-users'
,p_list_item_link_target=>'f?p=&APP_ID.:10021:&APP_SESSION.::&DEBUG.:10021::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(70140145070282924841)
,p_name=>'Application Configuration'
,p_static_id=>'application-configuration'
,p_required_patch=>wwv_flow_imp.id(70139078287931924039)
,p_version_scn=>'SH256:01z6ukJ0-1Z6Us8cQjg4pfcVIVbOCpaLhLFvRKRxDnA'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140145981869924842)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_static_id=>'configuration-options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_imp.id(70139078287931924039)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(70140154888105924848)
,p_name=>'Feedback'
,p_static_id=>'feedback'
,p_required_patch=>wwv_flow_imp.id(70139078102910924039)
,p_version_scn=>'SH256:iG3U6Iy4Ao7mUAg8x9MXb0NR0xR8yW5tPSDSCp-n__s'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140155544943924848)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_static_id=>'user-feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10043:&APP_SESSION.::&DEBUG.:10043::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(70139075406954924035)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:dQPxiAWX7v3EeU5eASJ_7ayjDcBDEC4U-aqb_O_wLe4'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224849Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140137102985924835)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'About'
,p_static_id=>'about'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(70139078603593924039)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140139638444924837)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'About Page'
,p_static_id=>'about-page'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&APP_SESSION.::&DEBUG.:10050::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(70140137102985924835)
,p_required_patch=>wwv_flow_imp.id(70139078603593924039)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140135497046924833)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_static_id=>'action-a-pwa-install'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140140200461924837)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140136802783924834)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_static_id=>'feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&APP_SESSION.::&DEBUG.:RP,10040:P10040_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(70139078102910924039)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140138843738924836)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(70140137102985924835)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140141030938924838)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'---'
,p_static_id=>'list_item-2'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(70140140200461924837)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140137900402924835)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Help'
,p_static_id=>'page-help'
,p_list_item_link_target=>'f?p=&APP_ID.:10051:&APP_SESSION.::&DEBUG.::P10051_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(70140137102985924835)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(70139078603593924039)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140210244257924876)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_static_id=>'settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(70140140200461924837)
,p_required_patch=>wwv_flow_imp.id(70140191075886924865)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224849Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224849Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140142007313924838)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(70140140200461924837)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(70139074566940924029)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:kmV2KqMzrG1C7p6V30KCwHBib34ap_5z5ai0B6O0MQM'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140143162586924840)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_static_id=>'administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(70139080345072924043)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70139090419839924057)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70139573028889924061)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('Pa\00EDses')
,p_static_id=>unistr('pa\00EDses')
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-globe'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(70139682755291924493)
,p_name=>'Page Navigation'
,p_static_id=>'page-navigation'
,p_version_scn=>'SH256:dLlBPAETkKvlujQRAXq2GTi3K-kFymqOKdbsVrp-n50'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70139683309980924494)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('Pa\00EDses')
,p_static_id=>unistr('pa\00EDses')
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-globe'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(70140199980781924870)
,p_name=>'User Settings'
,p_static_id=>'user-settings'
,p_required_patch=>wwv_flow_imp.id(70140191075886924865)
,p_version_scn=>'SH256:OQGnb1n7GAjW62UabHIgG9OuJxcFn8bMLZXt-Fu7xMI'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224849Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70140200772234924871)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_static_id=>'push-notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(70140190415524924865)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260901224849Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224849Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800000B74494441547801EC9D7D6C14C715C0DFECF96CB00D0E840009A0F0950443432A41490B2809C5365425B4442ACA1F853B92341555555189862A497D772E8DD4A8';
wwv_flow_imp.g_varchar2_table(2) := '89C81F8D5284E8D9E93F492A514A12C5D80E14092824514A690B69C297F83409366063B0EF6E27F3D66709B09DB033B3B7377BEFB4EF965B7666DEFBBD9FF73E7C080BE84604140890400AF06828000944162811208194F0D16012881C5022400229E1A3';
wwv_flow_imp.g_varchar2_table(3) := 'C1241039A044405A20A5556970600890408169A53F859040FE700FCCAA2450605AE94F2124903FDC03B32A09149856FA530809E40FF7C0AC9A7B816E01DD335B9F1816DF111DFBDB96C894BAF77EFCC0FA96557313CDD1EA4463F4D18208512BD68CB523';
wwv_flow_imp.g_varchar2_table(4) := '0364814C6E015DCE4FF15520CE81C51BA3D312CD2B2389A6C8AB89E6C88762DF53569AB9CCD2FCAC6DC3673C14FA57C6B67703E7DBC1E27F2F8810B562CD583B324016C804D920A37853F48F09C10CD921C39C5B73DD823915E8857757DD11DF1E591A6F';
wwv_flow_imp.g_varchar2_table(5) := '8EFEAEAE29D254D71C6967163F049C25454EAB81C32CB10F8BA06D60026164C480FF0C043364870C91A5906B3D5E9DE3EF3D3972E0A1DE1CCD9940F893920A67E68AE2D731CE9FE50055A2A40A11B4A911A8C8B27C4E5C9DD741516A2EB2569BF2D6477B';
wwv_flow_imp.g_varchar2_table(6) := '2ED09F3E7C3A9C688AFE44FCA41C06607F03C6E602DDBC22308F71B6ADAE79E5A14473E44964EFD5427DF37A2AD0FA9695E3CE5DECDE0BC0378A05EF15415B4E08B0FB80C3A673EDDD7BF06583974B7A2650BC79D5F48CCDF68942F0758D9735D0DC8313';
wwv_flow_imp.g_varchar2_table(7) := '989D0ADB7BEBDE8FCC18FC14B5BFF144A058D38AF98CDB7B446AE34468DA681A490253780676D76D5FF1B0E4F8AF1CA65D20BCF25860358A55E905B28090275B0567D6BB5E5C89B40A14DFF674A9B8F2BC25A0958AA02DBF0894F234BC813DD299965681';
wwv_flow_imp.g_varchar2_table(8) := '5849CFAB22B9E92268CB47020C66647BA42D3B6D02D56D8F4681F188B6CC68226F08881E39BDD234BB16815EDEF3A3A1DCE22F6BCA89A6F1980067FC255D4F655A04EAEC2C8B88B7EB233CAE9BA6D74760A455D2B352C774CA02712E9EB898BD4647321E';
wwv_flow_imp.g_varchar2_table(9) := 'CD41D30E40405C857E81BD1BE0AF5C1D521628D1125D04203EF904BA1946A0B2B7776A592B0BC438D0D507CCBCE9E89D9240F11DD121E2F75CD566E2A3ACB177F806488584924090866F8BC5D5E61013D0E61B01EBF295B2075556576ABE188C02A9AC4F';
wwv_flow_imp.g_varchar2_table(10) := '637D26A0DA43315EBE020ECE15487E021AE93B01D51E4A0BD4FB1690CFF79D80870914C6D45CE959445AA0C4CEE81801F87611B4994D60CC0BCD2BA5FB282D90C5B9F4A266F30E5EF6698B8D95AD4A5A20B0197D6543967ABE8D53E8A58240191228DF44';
wwv_flow_imp.g_varchar2_table(11) := '90CDC796EFA5B440CC0A0D95CD97C6E517010E56916C46D20265B8BCB5B2C9D2386F08581693FEC79CD2023166D11568B07E1A765CE562A02090BCB586F10D7CBA2A170369812063A7034F960AFC5A02F2027DEDD47442211008844099B40D3D57D3D0DD';
wwv_flow_imp.g_varchar2_table(12) := '9532223057CC390882192D1036E18B9397A0F5583B7C71EA125C387DD988C05C9D9C45EE5883C922192D50DB990EE8B99686B123EF82C50F3E064BBEB3DC5560E3CA8694C39C1973A5A27C68394E019593A7BB8A7B2755C2B0B2614EEEED673B9C394CBD';
wwv_flow_imp.g_varchar2_table(13) := '3356203BC321D59D86DBCA47C2DA1FFE1EAA662C83472A1F7515D8B472D1C89993E6804C9466059A3CFE3E7013F74C98060FCDAA8292E2124722DBE6980A0098B73356A04C3AE3D0AE9C38D3D99B78377A54EFEF303329DBC4F49D9C8D15C8C95EDC8543';
wwv_flow_imp.g_varchar2_table(14) := 'C5E2DECC2D6485B289D315280B82768546C0F82B50A1352CDFEA2581F2AD2386E5430219D6B07C4B9704CAB78EC8E5E3DB2812C837F4C15898040A461F7DAB8204F20D7D3016268182D147DFAA20817C431F8C8549A060F4D1B72A8C1768D781EDB076F3';
wwv_flow_imp.g_varchar2_table(15) := '0AA940EAAD17CEC2A6B73748C5F9B6733805BCB36B8B541C3F75D419EFE79DEADAC60B84DFC99930E66E90098457142A823B468E960A1C8B734CBBFB7E9009FC2A0A8E37398C1768E25D5361D1B7964905360EBFD835E71BF3402686950FC729E0A985CF';
wwv_flow_imp.g_varchar2_table(16) := '48C5FD53CCFF7F688C17C8E920DDF9468004F20D7D3016268182D147DFAA20817C431F8C8549A060F431F75564572481B220682747800492E346A3B20448A02C08DAC9112081E4B8D1A82C0112280B827672044820396E342A4B8004CA82A09D1C01F702';
wwv_flow_imp.g_varchar2_table(17) := 'C9AD43A3024AC078818E9FF90C1A3FD82215D8D38E2B1DB0FF3FBBA5A2A3F3324E019B5A5E948A83473E72C69B7C67BC409D573BE164EB09A9C0C6A53369F8BCEDBC54E0589CE3F089832013173BDB70B8D161BC4093C64F86EF3FB44C2AB07313EF9C0A';
wwv_flow_imp.g_varchar2_table(18) := '7F78E275A9C0B138C7534BD6804CCC98F2000E373A8C17C868FA01489E040A4013FD2C8104F2937E00D6CEA14001A04525F4234002F5434207DC102081DCD0A273FB112081FA21A1036E0890406E68D1B9FD089040FD90D0013704482037B4E8DC7E044C';
wwv_flow_imp.g_varchar2_table(19) := '10A85FD274207F08182C107328A6EDDEFFF2C07960D85D2A9DCA66DC5B4BF681513B63050A857B536F3D7F06FA7E2B6E12F9EE74379C387BC449B9A8B8B716E7816177C6666E590C869415438FF829DEB1BF11FE7FF2101C3DF589ABC05E5DEC68839D87';
wwv_flow_imp.g_varchar2_table(20) := 'B649058EC539FE7D6C3FB8898F3EDD0B6FB66C86EE9E6EA706C6E80A841C731E15A3CBA0784811F4A47AE0D36387E1D0D1FFB90A4C18BF93F3F6DE374126702CCEB1FFBF7BC04D7CFCC93EE84E753BB9630D3887A961EC150881878A2C1835A102C64C1A';
wwv_flow_imp.g_varchar2_table(21) := '01A3C657C0EDE3861B1198AB93B3C81D6BC05A4C0DA305EA838E4D281E5A0425A561230273C59CFBF237791F0881066B001DF79E0009E43DE340AF202D90CD7857A0C91450719CDB5765CB951628C44224902CF53C1BA7D24B6981B89D91B636CFF8157C';
wwv_flow_imp.g_varchar2_table(22) := '3A2ABD9416082CBA0205C63C855E2A0844AF818223907C2FA505B2ED50709FC20263C6AD15A2D24B69812064D38BE85BEB4FFE9FA5D04B6981CE0C2BBE20C85C13419BD904AE657B295585B4401B676F4C01B07D4037C309B07DBDBD942B435AA0EC723B';
wwv_flow_imp.g_varchar2_table(23) := 'B37BDA994B40A9874A027100A5C5816EBE1350EDA192405004FF1404E875908060E8762DDB43E9F495048A2F480A79D856E9D50337D0B482D8D6DE1ECAE7AD24102E2B2E811B704F611E011DBD5316285E9D144F63F46ECC3C7DD8BEDEDEA965AE2C102E';
wwv_flow_imp.g_varchar2_table(24) := 'CF18D05508CCBAE9EA991681ECD0F1BF02875366212CE86C4F3B3DD380408B40F1053BD3C0F8CF35E44353E48280CD563B3DD3B0961681308F5875C35660EC15FC33451E13103D8A2D4A6ED395A1368130A1B1B715FF4AEC3F10419B3B0239399B01ECCC';
wwv_flow_imp.g_varchar2_table(25) := 'F648DB7A5A05FAA9F8FD184FB3E522BB8B2268CB2F02AD21167E1C7BA4332DAD026162F1EF258F33E0DF0506C7816E7942809F6099D0A2E7AA36B5EA4E48BB4098606D75C3C761E0B3C525B3191F53F8478031FE7E98C1ACDAC59B0F789185270261A2CF';
wwv_flow_imp.g_varchar2_table(26) := '56355C98D6DEB5587CDAF91A3EA6F081008397A6B55DADC15E78B5BA670261C2CB97BF958957D7AF669CAD168F7B44D0961B0257C5C72A8FC7AAEAD7620FBC5CD25381FA12AFAD49BE16B2F864C621268E9D14419B17049C0F73795CB0BE2756D5F08617';
wwv_flow_imp.g_varchar2_table(27) := '4BDC3C674E04C2459F5FD870BAB6A6BEAEB2BD6B1270FE18006B0400F10C27EE699326200666C41B16FC5C6749E5C5AE89E2F3B804B216C773B2E54CA0BE6AF0921AAB69D812AB4E2E2E819211DC868785506B80B37A71CE41116911B40D4C00D91C143F';
wwv_flow_imp.g_varchar2_table(28) := '750D0CD82F19B71F19323434423C552D8D55D7BF836C071EE6DDD19C0B747D29BFAEDE7829BEA87E9710EA95584D322A20CC1411BED2151ACE8BD89D9605535926F3CD9065CD03C66AC0664B0B2244AD5833D66E0906C80299201B1133C5EBCA486D7572';
wwv_flow_imp.g_varchar2_table(29) := '436DCDEBFF58377F73C7F54C73FD675F051AACD8177FB0B923BE2079EE370BEB8FD42EFECB81E717FE794FAC2AD9841FC11744885AB166AC1D19200B6432182F3F8FE7A5407E02A1B5DD112081DCF1A2B36F224002DD04841EBA234002B9E3159CB33555';
wwv_flow_imp.g_varchar2_table(30) := '4202690259A8D3904085DA794D7593409A4016EA342450A1765E53DD24902690853A0D0954A89DD7543709A40964E14C7363A524D08D3CE8914B0224904B6074FA8D04BE040000FFFF74803A240000000649444154030019AEAA8A11103D4C0000000049';
wwv_flow_imp.g_varchar2_table(31) := '454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(70139076740598924038)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C070000084C494441547801EC9CBB6F1C5514872F7EADE3471C63C92121152215510A248428A0830268D2039110250505FF407A0A2A0A846810350DA10812421429104808';
wwv_flow_imp.g_varchar2_table(2) := '4101482910491C09DBC1367EECDA0EB98B7D3D5AB1ECECCE7D9D733FA4B1EFEECEDC73CEF79B8F759A19BBF6E5D5071C3028F51E1833FC078182092040C1E133BA3108C05D50340104283A7E862F5800C287007F02710F144E806F80C26F80D2C74780D2';
wwv_flow_imp.g_varchar2_table(3) := 'EF80C2E74780C26F80D2C7478012EF0066760410C0A1605122010428317566760410C0A1605122010428317566760410C0A160510281DE1911A09708AF8B22800045C5CDB0BD0410A09708AF8B22800045C5CDB0BD0410A09708AF8B2250900045E5CAB0';
wwv_flow_imp.g_varchar2_table(4) := '350920404D509CA6930002E8CC95A96A1240809AA0384D270104D0992B53D52480003541893E8DE6FB124080BE68F8A00402085042CACCD8970002F445C30725104080125266C6BE0410A02F1A3ED04060D00C083088109FAB268000AAE365B841041060';
wwv_flow_imp.g_varchar2_table(5) := '10213E574D000154C7CB70830820C020427CAE9A80620154E7C6709E08208027906C23930002C8CC8DAE3D1140004F20D94626010490991B5D7B2280009E4066B50DCDD4268000B55171A2460208A0315566AA4D00016AA3E2448D04104063AACC549B00';
wwv_flow_imp.g_varchar2_table(6) := '02D446C58912080CDB23020C4B8CF355114000557132CCB004106058629CAF8A0002A88A936186258000C312E37C55041409A02A17868944A00801B637F6CCDA9D4D73EFD6BAB9F3DB2AC7FF30B08C2CAB9DCDBD48B760DA32AA0538D83F34AB7F6C98FB';
wwv_flow_imp.g_varchar2_table(7) := 'F7B6CCEEDF6D7370709896B680EA969165B5BEB265566F6F18CB5040DB23B7A85A80F5BB9B666FA733329CD22FDCDBEE98FB0F45D0CC41AD00DB7FED99F6EE7E37BB33738BE68D97DE36D75EFBC0BCF7E627DE8F6E91A31F6FBDFA8E09791C95E9FE7AE5';
wwv_flow_imp.g_varchar2_table(8) := '852BC6F7F1E2732F9BA79F7AC6B45AAD6E0DFB3F10FB2764F785C21F6A05B05FE3C7795D79FEAAB97CE159333B357FFC96AEDF1EA7999A6C99734B17CCA5272FBB5D77B7DA6EAD6DA1568076E54F9F8BCB97B4E5167C9EA5856557A373F44DEADE50B450';
wwv_flow_imp.g_varchar2_table(9) := '2BC0E1E10317D3D4F8BF5FE7EE0D1603094C4E4CB973EC3F8CDD0B650BB50228CB8971021140804060D9560601049091135DF621D0F46D04684A90EB45134000D1F1D17C530208D09420D78B268000A2E3A3F9A60410A02941AE174D40B000A2B9D37C26';
wwv_flow_imp.g_varchar2_table(10) := '041020932068230D010448C39DAA991040804C82A08D340410200D77AA66420001320962A83638D91B0104F086928D2412400089A9D1B3370208E00D251B492480001253A3676F0410C01B4A368A41C0770D04F04D94FD4411284280773F7EDD843CAA89';
wwv_flow_imp.g_varchar2_table(11) := '7FF4F9FB26E451AD75FD9BCF4CC8A35A4BEBBA0801B486C75CCD0920407386EC2098401102847C54A1DDBB9ABFEF4715F6EE57AD15E2318FD53DABB5B4AE0509A03502E64A49000152D2A776720208903C021A4849000152D2A776720208903C021A4849';
wwv_flow_imp.g_varchar2_table(12) := '000152D2AF5B9BF3821140806068D9580201049090123D06238000C1D0B2B10402082021257A0C46000182A165631F0442EF8100A109B37FD6041020EB78682E340104084D98FDB326800059C74373A109204068C2EC9F35818C05C89A1BCD292180004A';
wwv_flow_imp.g_varchar2_table(13) := '82648CD10820C068DCB84A090104501224638C46000146E3C6554A0820408E41D253340208100D35857224508400211F5568F7AE061BF2518576EF6AAD908F7BB47B576B695D172180D6F098AB39010468CE901D0413284280DEC70BFA7E5DCDBFFA68C1';
wwv_flow_imp.g_varchar2_table(14) := '10EB6A2DFB58C69047B556AC75EC3A4508101B2AF5E41040003959D16900020810002A5BCA21800072B2A2D3000410200054B69443202301E440A3533D0410404F964C3202010418011A97E82180007AB26492110820C008D0B8440F0104C8214B7A4846';
wwv_flow_imp.g_varchar2_table(15) := '000192A1A7700E0410208714E82119010448869EC2391040801C52A08764041020197A0A5B02A90F04489D00F593124080A4F8299E9A0002A44E80FA4909204052FC144F4D40AD00E3E327A3750E3AA9398BABBFD7D9753D5759BA37952C4EEE92E80385';
wwv_flow_imp.g_varchar2_table(16) := '2D38393DE10AAC6DFCE9D62CEA11B8BBFEBB3BB1CAD2BDA964A1568099D32D17D1CFBFFC6056D66E9BCE7EDBBDC7E2BF09ECB4B7CDAD955FCDCD1FBF7627CC2C9CB0746F2A59A815607A6ECA4CCF4E7563DA69EF9AEF7FFAD6DCB879DDD8C70BFA3EBA45';
wwv_flow_imp.g_varchar2_table(17) := '8E7ED8470A863C8ECA747FD9C732FA3E3EBDF1A1F9EABB2FCCF6EE76B78665688FEE0B853FC614CEE4465A589E35AD9949F79AC570042CBB3367E786BB48D8D9AA05189F18334B8F9F368B8FCD75BF0D34FF63CED77D67199D7AF8ED6999597663E38FF8';
wwv_flow_imp.g_varchar2_table(18) := 'DA3ACB7D540B704CFCD47CCB3C7A7EDE9C7D62D19CBFB894FEC8B807CB68F1DCBCB1CC8EF969FE5D84009A0364B6660410A0193FAE164E0001840748FBCD082040337E5C2D9C0002080F505AFBB9F58B00B925423F5109204054DC14CB8D0002E49608FD';
wwv_flow_imp.g_varchar2_table(19) := '442580005171532C370208905B22F41395404401A2CE453108D4228000B5307192560208A03559E6AA4500016A61E224AD0410406BB2CC558B0002D4C2D4F0242ECF960002641B0D8DC5208000312853235B0208906D343416830002C4A04C8D6C092040';
wwv_flow_imp.g_varchar2_table(20) := 'B6D1E8682CF7291020F784E82F280104088A97CD73278000B927447F4109204050BC6C9E3B0104C83D21FA0B4A20A00041FB667308782180005E30B289540208203539FAF6420001BC606413A90410406A72F4ED85000278C1D8B3092FC51040003151D1';
wwv_flow_imp.g_varchar2_table(21) := '6808020810822A7B8A21800062A2A2D1100410200455F614430001C44425A351695D2280B4C4E8D72B0104F08A93CDA41140006989D1AF570208E015279B49238000D212A35FAF043C0AE0B52F3683401402081005334572258000B926435F5108204014';
wwv_flow_imp.g_varchar2_table(22) := 'CC14C9950002E49A0C7D452180003E30B38758020820363A1AF74100017C50640FB10410406C7434EE830002F8A0C81E62092080D8E8F2685C7A17FF000000FFFF68B003C600000006494441540300DDA7CD4CBF55E5770000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(70139077054338924038)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D0B705CD579C7BF7357966DD9D81610C63C8DB1213676C08E181E86D87890849B1230149866C6B664B7D34CDB49CB34EED02658BA929C94';
wwv_flow_imp.g_varchar2_table(2) := '69E9949699B4CD34B6648764060218021D6CC9B579070AB10D931870701C6308C940FC7E49DA7BF21DADB4DA95645BDABDE771F7FC77EEA7BDF7EEDEEFF1FBCEF9EFDDBBD22A20DC400004BC250001F0B6F5281C04882000180520E031010880C7CD47E9';
wwv_flow_imp.g_varchar2_table(3) := '7E1350D5430014051808784A0002E069E351360828021000450106029E12800078DA7894ED3781BEEA21007D24700F021E12800078D874940C027D0420007D24700F021E12800078D87494EC3781DCEA2100B934B00E029E11800078D670940B02B90420';
wwv_flow_imp.g_varchar2_table(4) := '00B934B00E029E11800078D67094EB378181D543000612C1360878440002E051B3512A080C240001184804DB20E01101088047CD46A97E1318AA7A08C05054B00F043C210001F0A4D128130486220001188A0AF68180270420009E341A65FA4DE054D543';
wwv_flow_imp.g_varchar2_table(5) := '004E4506FB41C003021080014DFE8FFFFDFAE8704BFD24B6C9AB5F587E71CB0B4BA7B66CAABF3CEC587E65D8B1ECAA70F3F22F366FACAB82B9C740F5A6A747DC2BD533D53BD543D54BB649AAB703DAEDFDA69702D0B2B96E5AD85E7F57D851D7D4D45EBF';
wwv_flow_imp.g_varchar2_table(6) := 'A1A9BD6E1BDB476C72FFA8432744B7DCCFF69B7467B437EA0C764742BE2F64F47321C50E11456FC980DE84B9C740F5A6A747DC2BD5B3887BA77AA87AC9B65FF556F5984DF59A7B5EBF418D81CC585871998F6AE08500849BEAE73475D4AF6AEAA87B819B';
wwv_flow_imp.g_varchar2_table(7) := '7F248AE89782E41342520391BC831B3F87ED02362C7E1050BDE69ECB3BD418103D6321FD811A1BFC82B0B5B9BDEE81E6E7575C5D2A284E5747490A40F8D83DE53CE9BFCC0DFD2EDB5E21E43692B29924CD6718E3D8B080C05004786CC80592A845A6D2DB';
wwv_flow_imp.g_varchar2_table(8) := '79ECECE6178E879B36D5DDA2C6D45007247D5F490940F8FC92E9DCACEF88CA8ADD3CE99FE3E6FC25DBC56C5840A0100253F985E36F4950871A536147FDB7D5182BC491ABC7245E00C22DF78C6F6EAF5FC16AFD9248A57671B3FE91615FC8860504E22470';
wwv_flow_imp.g_varchar2_table(9) := 'A190F29B6A8CF1587BB179537DBD1A7B7106B0E12BD102D0B469D99DA2ABE2A792E4F719DE4D6C5840C004812F4921D78A74C5D6A6F6A5B79A0858688C331D974801E0ABB637B30ABF46423C4982669DA9483C0E025A0848AA220A9E5763518D492D3134';
wwv_flow_imp.g_varchar2_table(10) := '3B4D9400A853AE7053DD8FF8AAED16E6723D1B16107081C0F56A4CF2478AEBD5187521A1E1E690180108372F9F27BA2B7608417F3ADCE2F03C103049803F525CC26374BBFA253193718B89950801E0CF6597892852AFFA5EFEB246310DC6B1C6094C9301';
wwv_flow_imp.g_varchar2_table(11) := 'BDAAC6ACF1C803020E67D36901909284FAE84512B57131E56C5840200904CAD5980DDBEB5A5C4FD6590150BF78D1D2B1ECC7EAA317D721223F10188A80207A8045A04D8DE5A11E77619F9302106EB9B92CA8AC784292B8CB0548C801040A25C022B08CC7';
wwv_flow_imp.g_varchar2_table(12) := 'F2E36A4C17EA43E7714E0A80E89EB24E12DDA6B370F806015304782CDF4EE9296B4DC55371866BCE09405347FD839CFC57D9B08040C910509F10F48E6DA76A724A009ADBEBEF2329EF778A10920181B808F0D8EE19E371F98BC18F3302D0BCA9EE4649F2';
wwv_flow_imp.g_varchar2_table(13) := '5F63A8092E40C059023CC61F6A6C5FEACCAFAD3B2100EA2AA9143D1FF539918FB3A307899502815440C15A35E675153312BF4E4C3871F6B8664E7A1A1B1610F081C0F4DE316FBD56EB02106E5C3A9BDFF7AFB44E02098080490252AEE4EB015F301972A8';
wwv_flow_imp.g_varchar2_table(14) := '58D6054004A9D59C588A0D0B08F84420C51F0FB6D82ED8AA00A83FF0E9FD4E3EDB1C101F042C109077C47D4170A445581500914EFFCB4813C6F341A0940804D473066CAD246B021076D42F2621E659AB1C8141C009027201CF8545B652B1260042D27D84';
wwv_flow_imp.g_varchar2_table(15) := '1B088000F15CF8075B18AC08C0EACD7F3685DFFBCFB75534E282805B04E4FC968D4BA7169B5321C75B118074945ECEC90A362C20000244220A527564E1665C00D4977C1045F5166A4548107098805C96991B6653342E004D1DF5D711097E0B40B8810008';
wwv_flow_imp.g_varchar2_table(16) := 'F413989A991BFD3B4CAC191700216831E1060220308800BF272EF8D38041CE86B9C3B800F0E9BFF12287C9024F0301DB048CCF0DA302106E5A71014971956DCA880F026E1290D73ED8FE17134DE6665400028A6AB9383ED3E19F584000040612109DA2F3';
wwv_flow_imp.g_varchar2_table(17) := '8F06EED4B96D54002411FE9B8FCE6EC277E209C8886EA611DE8A79BA510120417308371000815313303C478C094018861C4BE2FDFFA95B8F47408009C82F64E60AAF1A5878521A88A242CCDBA326FF58B50A0301103825810ABA61CF15A77C34E6078C09';
wwv_flow_imp.g_varchar2_table(18) := '0007C2FBFF989B0777A5492048D1B0DF2A5391379E97457A18E6E17C01D05851C34C094F03012709989C2BC604802F005EEA246D240502AE119034C3544A0605209A6CAA28C4018144131091B1174B730220050420D1A312C91B2330CCB912473E4604A0';
wwv_flow_imp.g_varchar2_table(19) := 'F7638D73E248183E40C0030267F7CE19EDA51A11806373F78EE34ACAD8B08000089C99C028AAFA78CC999F56FC338C0840C58428557CAAF000021E1118DF596EA25A2302409D6923C598008618206084C019E64C5C39181180516325CE00E2EA18FC7841';
wwv_flow_imp.g_varchar2_table(20) := 'C0D49C312200F2F828BCFFF762D8A2C8B808989A334604A03BC219405C03037EFC20606ACE181180543904C08F618B2AE32270BA3913570CE5C788005014E122A0A20D03816112484B332F9A6604609845E369200002190229084006047E820008E82380';
wwv_flow_imp.g_varchar2_table(21) := '33007D6CE11904622710B7430840DC44E10F041244000290A066215510889B0004206EA2F0070209220001D0D8AC13473AE9D0A7C7E8B38F0ED167FB602362C0CC143BC550638B12E55A47B210000D543B8F77D3EFF61CA0DFFFE6301DD97F9C4E1EEBA2';
wwv_flow_imp.g_varchar2_table(22) := '93C7612362C0CC143BC550B1EC64A61A5AE5BD4B0840CC43404DF64FF71DA4EEAE74CC9EFD75A7582AA68AADBF14F4540E0188916B14493AF0DB23791EAF9A5E458BAEBB8B6EBBE15E2D961B6CF6F43974EDAC795A6DD6B4AB7343D2CCCBAED462574C9D';
wwv_flow_imp.g_varchar2_table(23) := '41933F777E5E2CC55631CEDB898DA20840008AC2977FF089C39D94EE8E7A768E291F4BDFFAEABFD1B2F9F751F5AC3BE9E6995FD1623DC17A7F5C71D16CBA6AEAB55A6DC625B37BA365EE2EBBE8F3A4C32EBF782655CDBC9E165E574BA954E68F49155B5F';
wwv_flow_imp.g_varchar2_table(24) := 'AF096468C7FF13021023D3AE93DD596F37CC5E489563CFCD6E63A5300215A3C7D194F32FC91EDC75A29F717627560A2600012818DDE0037305E0BC49F9A7AF839F8D3DC325306EDC84EC537319677762A56002108082D10D3E50CAFE7D2951D6BF81B5A2';
wwv_flow_imp.g_varchar2_table(25) := '08A482FE619ACBB828A738B887403FD99E4DFC000110708D80CE7C20003AE9C23708384E0002E07883901E08E8240001D04917BE41C071021000C71B84F4FC26A0BB7A08806EC2F00F020E13800038DC1CA40602BA0940007413867F1070980004C0E1E6';
wwv_flow_imp.g_varchar2_table(26) := '2035BF0998A81E02608232628080A30420008E36066981800902100013941103041C25000170B43148CB6F02A6AA870098228D3820E020010880834D414A20608A0004C01469C40101070940001C6C0A52F29B80C9EA2100266923160838460002E05843';
wwv_flow_imp.g_varchar2_table(27) := '900E089824000130491BB140C031021000C71A8274FC2660BA7A088026E23FDCFCDFB472CD52ED969BFE935B7F40FFF3ECC35AED892D8FE686A4E75E7C4ABB6DDFF9B3BC98D8888F0004203E96F0040289230001485CCB903008C4470002101FCB3C4F73';
wwv_flow_imp.g_varchar2_table(28) := '3F7F2DDDFEA57BB55B6ED0B933AB68DEDCF95A6DCECC2FE686A4AF2F6ED06E35D7DC9E17B354376CD40501D0447DE2F84A3A6FE205DA2D37FDB3C64DA4CAB3CED16A13C64DCA0D4953CEBE5CBB9D3B71725E4C6CC4470002101F4B780281C411800024AE';
wwv_flow_imp.g_varchar2_table(29) := '65481804E2230001888F253C8140C1046C1D0801B0451E7141C001021000079A801440C0160108802DF2880B020E10800038D004A4E037019BD543006CD2476C10B04C000260B901080F02360940006CD2476C10B04C000260B90108EF3701DBD543006C';
wwv_flow_imp.g_varchar2_table(30) := '7700F141C02201088045F8080D02B60940006C7700F141C02201088045F808ED370117AA8700B8D005E40002960840002C8147581070810004C0852E200710B044000260093CC2FA4DC095EA2100AE7402798080050210000BD01112045C21000170A513';
wwv_flow_imp.g_varchar2_table(31) := 'C803042C10800058808E907E1370A97A0880A66E1C3CB29F7E77F063ED969BFEE1A30769FFE1CFB4DAA1A3077243D2AF7FBF4BBB7D7AF093BC98D8888F0004203E96799EB6BDF7063DF3D263DA2D37E8B69D6FD1ABDB5ED46A03FF51E7231B9A49B7B5BF';
wwv_flow_imp.g_varchar2_table(32) := 'F94C6E99588F91000420469870050249230001485AC7906FA209B8963C04405347E6CCA8A23F9E7FA776CB4D7FE5DDDFA18756ACD76A2BEFFE766E48FAF3DBEED36E0BAA6AF36262233E021080F858C21308248E000420712D43C220101F0108407C2CE1';
wwv_flow_imp.g_varchar2_table(33) := '09044E4BC0C50721002E76053981802102100043A01106045C24000170B12BC809040C11800018028D307E1370B57A0880AB9D415E2060800004C00064840001570940005CED0CF202010304200006202384DF045CAE1E02E07277901B0868260001D00C';
wwv_flow_imp.g_varchar2_table(34) := '18EE41C06502100097BB83DC40403301088066C070EF3701D7AB8700B8DE21E407021A09400034C2856B10709D0004C0F50E213F10D0480002A0112E5CFB4D2009D5430092D025E408029A0840003481855B1048020108408C5D12A2DF592464FF06D68A';
wwv_flow_imp.g_varchar2_table(35) := '222065943D3E97717627560A2600012818DDE003CBCA53D99D274E1CCFAE63A53802478E1FCA3AC8659CDDE9E04A52528200C4D8A95163CAB2DE3EFAE4438A725EB9B20F60654404D2519A76ED7D377B4C2EE3EC4EAC144C00025030BAC1078E3D6B34A5';
wwv_flow_imp.g_varchar2_table(36) := '5219A4478F1FA197DEFA3FFA60DFBBB47BDF7BDA2C378BD7776DA1AD3B7FA2D55EDFB5353724BDFDAB37B4D90EF6BDE1E51FD2E1A3993300C55631CE4B001B4511C88CD6A25CE0E03E02412068D2E4F17D9B74E4D8617A77F74EDAB9FB17DA2C1B8C575E';
wwv_flow_imp.g_varchar2_table(37) := 'DAD14ECFBEF69856533138547679E3E7AF922EFB7FF6BDFFD067D9588AAD629CDD8195A20940008A4698EF6074C5283AFB82B30803359F4B315B8AA562AAD816E3C7D4B1498A0301D0D0AD31E3CAE9735326D1F8CAB1A44E59478F1D45B0913350EC1443';
wwv_flow_imp.g_varchar2_table(38) := 'C55231D5D02AEF5D4200340D8154594013CEADA04A7E4B70CE4513083672068A9D62A8586A6A93F76E03EF09000008784C0002E071F3517AFC0492E6110290B48E215F108891000420469870050249230001485AC7902F08C448000210234CB8F29B4012';
wwv_flow_imp.g_varchar2_table(39) := 'AB3722006921D24984839C41C01A8120E83411DB8800A42000267A8918254420DD69E645D38800982AA684FA8F523C275016949000982AC6F33183F22D12883BB418DBD51DB7CFA1FC1939033055CC5005621F08249140D7F1123A03E84A97E1EB719238';
wwv_flow_imp.g_varchar2_table(40) := '0A91B33D02E5A9D2B90848E71D3D668F242283400209189A3346DE0284B31E576A7632816D40CA207046021A9E70B277CE68709DEFD288006442CA4F32F7F8090220707A02E6E68A4101082000A7EF3A1E05815E02C19EDE15ED7781F608FD012000FD2C';
wwv_flow_imp.g_varchar2_table(41) := 'B00602A723606CAE98130041FDDFED7CBAD2F1180824888096540595DE198020DA4EB88100089C9180C9B962EC0C204A13048070038133133039578C0900BD76E9FB5C7AFF3F79E30D2C20000283081CEB9D2B831ED0B1C398008461C8935FEED251047C';
wwv_flow_imp.g_varchar2_table(42) := '82800D027A628A773273458FF7815E8D0940267080B7011910F8090243139064748E0464F0780430FC000005EF4944415426246D25DC4000044E49C0E40540958451018846753DCB41251B16100081C1046444C1338377EBDB635400C2858FEE2321DFD6';
wwv_flow_imp.g_varchar2_table(43) := '570E3C838019025AA2F0DC086BD77CACC5F7299C1A15804C0EC1F3997BFC040110C827607E6E18170029090290DF756C81400F019E1B1B7A560CFE302E00E75796BF42247F6DB0468402812410D84B657BDE349DA87101F8DA35DFEB220A5A4D178A7820';
wwv_flow_imp.g_varchar2_table(44) := '1017013D7EC4DA70E15623DF03989B7F90BB616A3D15A4D6722CC98605044080A83BA2F41A1B20AC08C003B77C9FDF02884D360A464C10708F8078AEA966FD5E1B795911005528BFFC3FA8EE6120E03B019E0B0FDB62604D00C29AD6AD446223E1060209';
wwv_flow_imp.g_varchar2_table(45) := '22107FAA6263662EC4EF79381EAD09804A4EA483FBD53D0C047C252088FEDE66ED5605A061D19A1D44E269C20D04BC24209E6EA8697DC766E9560540152ED3DD2BF9FE081B1610F089C0D12090DFB05DB075010817FDE09782C42ADB20101F04CE4420CE';
wwv_flow_imp.g_varchar2_table(46) := 'C785142B57DDD2F6419C3E0BF1655D0054D233F61F7D84EF5F66C302023E1078A5A1B6F5BF5C28D40901B8F7DEC7D3329D5ECE40F0568021602969027CEA4F75AE54E884002818EAAD00DFD7B3456C5840A014094424E552174EFDFBE03A23002AA1C69A';
wwv_flow_imp.g_varchar2_table(47) := 'B627F87AC0B7D43A0C045C2210472E3CB6BFD158BBEEA9387CC5E5C329015045F1C722EA3704D5DF0AA84D180894060121FE9DC7B6B5DFF83B1544E70440253AB972F4D74852BB5A878140E209087A4ABE7CE9DFB958879302A0FE64589E1CBD58907CD2';
wwv_flow_imp.g_varchar2_table(48) := '4568C80904864F403C2D8F8F5E1286EA6BF1877F94A9673A2900AAF8F02BDF3BB6AA7ADDDD9268B5DA8681802D0205C795F44F0DD5AD77AAB15CB00FCD073A2B00AA6EC1A700614DDB2A41A43E3649AB7D30104800814E12B4A4B1B6ED9B6A0CBB9CAFD3';
wwv_flow_imp.g_varchar2_table(49) := '02D007AEA1A66D9D88A21B89E47B7DFB700F028E127847CAE8C6C6EAB6471DCD2F2FAD440880CAB8E1D6F5AFCBB2600E916822A22E362C20E012812E92B2852F605785B5EB8D7FB75FA12082420FB4715CB8B0F544634D6B28859CCDA7583FB1910362FA';
wwv_flow_imp.g_varchar2_table(50) := '456018D5F270A41FCB74FA4AFE8CBF415DC01EC631CE3C255102D0472DAC5EF73E9F62DD2E24DDC4FB5E61C30202C609F0B5A9AD7C99AAAAA1B6ED9EDEDF64359E43B1011329007D4533F8571A6BDA6E92246EE0EB03EB79FF49362C20A093801A638FAA';
wwv_flow_imp.g_varchar2_table(51) := '171FBE36B5B0A166DD369DC174FB4EB400F4C1096B5A7FDA58B36E992CEBBC8855597DC38AF53FB3ECCB0DF7254360B71074BF1A638D356D4BD48B4F2954561202D0D78870E18F3E6DA8697B881B349D285AC46706DFE5C73E64C302022326C007A8B1F3';
wwv_flow_imp.g_varchar2_table(52) := '9F24442D8FA9690DD56DFFACC618EF2F99A5A40420B72B8D35EBD5972DFE3537EE12914ECDE133835524E8457ECE51362C20301481A33D6344880629C55C3576D8FEAAB1BAB5647F2DBD640520B7BBEABB071B6ADA563756B72DE0868E9722358DCF0EFE';
wwv_flow_imp.g_varchar2_table(53) := '440A6AA6CC77126E2722A3FF9595E361B14740F59A7B2E9E5663408D8520A0E96A6CF48C91EAD696B0B6951FB797A0A9C85E08C0409861F59ADD7CDDE0C9B0BAADB1B1A67571634D9B52FB0BF95E54764D1823CB4425DBF9A9F2E092A03CBA2C90E20A29';
wwv_flow_imp.g_varchar2_table(54) := '8259FC79CFD53208AA4444D7C0DC63A07AD3D323EE95EA99EA9DEAA1EA255BA5EAADEA319BEAF5DC46EEBD1A036A2CB8F437FA03C7ABCE6D2F05E07440FFE6CB8F9C0C17B61E60FBE481056B3F5CB560FDAF56D5B6EE0AABD7FE823F7E7C3BBC65EDCF1A';
wwv_flow_imp.g_varchar2_table(55) := '6E6D7B0BE61E03D59B9E1E71AF54CF54EF540F552FD90EA8DE9EAEF7B98FF9B20E01F0A5D3A813048620000118020A7681802F042000BE741A7582C0100420004340C12EBF09F8543D04C0A76EA35610184000023000083641C0270210009FBA8D5A4160';
wwv_flow_imp.g_varchar2_table(56) := '000108C00020D8F49B806FD543007CEB38EA05811C0210801C18580501DF0840007CEB38EA05811C0210801C1858F59B808FD543007CEC3A6A06815E0210805E10B803011F0940007CEC3A6A06815E0210805E10B8F39B80AFD543007CED3CEA06012600';
wwv_flow_imp.g_varchar2_table(57) := '0160085840C0570210005F3B8FBA4180094000180216BF09F85C3D04C0E7EEA376EF094000BC1F0200E033010880CFDD47EDDE138000783F04FC06E07BF57F000000FFFF615B1DF800000006494441540300342810C429BE07380000000049454E44AE42';
wwv_flow_imp.g_varchar2_table(58) := '6082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(70139077419730924038)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF40000014F494441547801EC94314BC35014858F29E9646221D1D6580745081D7470A86BC0D9DFE0E0AF70F457F81F5CDD14C1C5A10E820E96426841AAA598A2A220B684';
wwv_flow_imp.g_varchar2_table(2) := 'CA5D2E898B97C78392F2021FBC03F75D0E87BC639D5C1E4E678985197FC68049C024508C04EC6F07BBFE3EE38E03D4CB618EC9A884A5B4CAFCBC4D450D234A607BBD89A871C06C050DEC6C3473F8151F9BF59059716BFA0C8836290E891250DC2DBA2632';
wwv_flow_imp.g_varchar2_table(3) := '10BFB471DD3E67483FF46E9125794FD0ED7718D212072203EEA2839A1730A497BD2AB2EC85118EA26386B436039245AA33A20454974BEE15C3406F10E3E6F18221BD30B191E5BEDBC259EB9421AD2D81BF25433A5B4C745EF5D772C5445A9B01C922D599';
wwv_flow_imp.g_varchar2_table(4) := '62FC03AF9F432E182A1B2A996C31D179903CE78AE969148B42112550AE001FA521637B29EE92AB1CA9FB85FEB8C3584EAACF806893E2902801C5DDA26BC6804960FE13F8EF29FC020000FFFF8A342ABA00000006494441540300E6F5F2814A4CF4380000';
wwv_flow_imp.g_varchar2_table(5) := '000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(70139076467728924038)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDC698C5DF7791EF0F7CE3E1C0E39A44845B664C54A64B7961D7991572D2E92B4756DB98D6BBB2D8A02DD10B74D3F158993A24051201F8A1A';
wwv_flow_imp.g_varchar2_table(2) := '289A16EDC7A24E8302AD6324A99DD68563C56B5CEF96172DA99726B62C4BA244712787B3E79CB12C91D4DC73EFCCDCE59CF3FE281D7278CFB9E7FC9FDF7BEFE53377869CF8F5FBFEDE968D81C780C780C780C780C740AEC7C044F8418000010204082413';
wwv_flow_imp.g_varchar2_table(3) := '885000D28D5C600204081020A000780C10204080008174026560EF00940A360204081020904C4001483670710910204020BBC08FF22B003F72F03301020408104825A000A41AB7B004081020905DE0C7F915801F4BF895000102040824125000120D5B54';
wwv_flow_imp.g_varchar2_table(4) := '02040810C82EF05C7E05E0390B1F11204080008134020A409A510B4A80000102D905AECCAF005CA9E163020408102090444001483268310910204020BBC0D5F91580AB3DFC8E0001020408A4105000528C594802040810C82E706D7E05E05A11BF274080';
wwv_flow_imp.g_varchar2_table(5) := '000102090414800443169100010204B20B3C3FBF02F07C13B7102040800081D60B2800AD1FB18004081020905D60A7FC0AC04E2A6E2340800001022D1750005A3E60F10810204020BBC0CEF915809D5DDC4A80000102045A2DA000B47ABCC21120408040';
wwv_flow_imp.g_varchar2_table(6) := '76816EF915806E326E2740800001022D1650005A3C5CD10810204020BB40F7FC0A40771B7B0810204080406B051480D68E563002040810C82E50955F01A8D2B18F0001020408B454400168E960C52240800081EC02D5F915806A1F7B0910204080402B05';
wwv_flow_imp.g_varchar2_table(7) := '1480568E552802040810C82ED02BBF02D04BC87E0204081020D0420105A08543158900010204B20BF4CEAF00F43672040102040810689D8002D0BA910A4480000102D905FAC9AF00F4A3E4180204081020D0320105A06503158700010204B20BF4975F01';
wwv_flow_imp.g_varchar2_table(8) := 'E8CFC9510408102040A055020A40ABC6290C010204086417E837BF02D0AF94E30810204080408B041480160D531402040810C82ED07F7E05A07F2B47122040800081D6082800AD19A52004081020905D6037F91580DD6839960001020408B444400168C9';
wwv_flow_imp.g_varchar2_table(9) := '20C52040800081EC02BBCBAF00ECCECBD10408102040A015020A402BC62804010204086417D86D7E0560B7628E2740800001022D1050005A3044110810204020BBC0EEF32B00BB37730F0204081020D0780105A0F123148000010204B20BEC25BF02B017';
wwv_flow_imp.g_varchar2_table(10) := '35F72140800001020D1750001A3E40CB2740800081EC027BCBAF00ECCDCDBD081020408040A3051480468FCFE20910204020BBC05EF32B007B95733F0204081020D0600105A0C1C3B37402040810C82EB0F7FC0AC0DEEDDC9300010204083456400168EC';
wwv_flow_imp.g_varchar2_table(11) := 'E82C9C00010204B20BEC27BF02B01F3DF72540800001020D1550001A3A38CB2640800081EC02FBCBAF00ECCFCFBD09102040804023051480468ECDA20910204020BBC07EF32B00FB15747F0204081020D0400105A08143B36402040810C82EB0FFFC0AC0';
wwv_flow_imp.g_varchar2_table(12) := 'FE0D9D810001020408344E400168DCC82C9800010204B20B0C22BF02300845E72040800001020D1350001A3630CB2540800081EC0283C9AF000CC6D159081020408040A3041480468DCB620910204020BBC0A0F22B008392741E0204081020D0200105A0';
wwv_flow_imp.g_varchar2_table(13) := '41C3B25402040810C82E30B8FC0AC0E02C9D8900010204083446400168CCA82C9400010204B20B0C32BF0230484DE72240800001020D1150001A3228CB2440800081EC0283CDAF000CD6D3D908102040804023041480468CC9220910204020BBC0A0F32B';
wwv_flow_imp.g_varchar2_table(14) := '008316753E0204081020D0000105A00143B24402040810C82E30F8FC0AC0E04D9D910001020408D45E4001A8FD882C9000010204B20B0C23BF02300C55E7244080000102351750006A3E20CB2340800081EC02C3C9AF000CC7D559091020408040AD0514';
wwv_flow_imp.g_varchar2_table(15) := '805A8FC7E20810204020BBC0B0F22B00C392755E020408102050630105A0C6C3B13402040810C82E30BCFC0AC0F06C9D990001020408D4564001A8ED682C8C00010204B20B0C33BF02304C5DE7264080000102351550006A3A18CB2240800081EC02C3CD';
wwv_flow_imp.g_varchar2_table(16) := 'AF000CD7D7D90910204080402D0514805A8EC5A20810204020BBC0B0F32B00C316767E020408102050430105A08643B12402040810C82E30FCFC0AC0F08D5D810001020408D44E4001A8DD482C8800010204B20B8C22BF02300A65D72040800001023513';
wwv_flow_imp.g_varchar2_table(17) := '50006A3610CB2140800081EC02A3C9AF008CC6D955081020408040AD0414805A8DC3620810204020BBC0A8F22B00A392761D020408102050230105A046C3B01402040810C82E30BAFC0AC0E8AC5D890001020408D4464001A8CD282C8400010204B20B8C';
wwv_flow_imp.g_varchar2_table(18) := '32BF02304A6DD7224080000102351150006A3208CB2040800081EC02A3CDAF008CD6DBD50810204080402D0414805A8CC1220810204020BBC0A8F32B00A316773D020408102050030105A00643B00402040810C82E30FAFC0AC0E8CD5D9100010204088C';
wwv_flow_imp.g_varchar2_table(19) := '5D400118FB082C8000010204B20B8C23BF02300E75D724408000010263165000C63C00972740800081EC02E3C9AF008CC7DD550910204080C058051480B1F2BB3801020408641718577E05605CF2AE4B8000010204C628A0008C11DFA50910204020BBC0';
wwv_flow_imp.g_varchar2_table(20) := 'F8F22B00E3B37765020408102030360105606CF42E4C80000102D905C6995F0118A7BE6B132040800081310928006382775902040810C82E30DEFC0AC078FD5D9D00010204088C454001180BBB8B1220408040768171E75700C63D01D727408000010263';
wwv_flow_imp.g_varchar2_table(21) := '105000C680EE9204081020905D60FCF91580F1CFC00A0810204080C0C80514809193BB20010204086417A8437E05A00E53B00602040810203062010560C4E02E4780000102D905EA915F01A8C71CAC8200010204088C5440011829B78B11204080407681';
wwv_flow_imp.g_varchar2_table(22) := 'BAE45700EA3209EB204080000102231450004688ED5204081020905DA03EF91580FACCC24A0810204080C0C80414809151BB10010204086417A8537E05A04ED3B0160204081020302201056044D02E4380000102D905EA955F01A8D73CAC860001020408';
wwv_flow_imp.g_varchar2_table(23) := '8C4440011809B38B5C29B0B515B155FCB4B9B9159B1B5BB1B1BE696390EE31503EF6CBE740F95C289E0E573E457CDC5281BAC55200EA369196AEA77C815BBDBC1E17CF5E8E734F5D8C538F9D8FA71F3D17277F7076FBD7F263DB3916C56322CBE360FBB1';
wwv_flow_imp.g_varchar2_table(24) := '5F3CFECBE7C2B99317E3D2B995585BD928CA714B5F04C4AA9D800250BB91B46B41E567F7679FBC184FFEE9E978BA78B12B3F2E4BC0CAA5B5E2C56E3DD6D7366C0CD23E06D65637A27C2E5C3C7339CE9EB810271F391327FEE4549C2D4A72F9DC69D7AB41';
wwv_flow_imp.g_varchar2_table(25) := 'F634F5CBAF00D46F26AD5851F9B6E6E50BAB71EA87E7B63FEBDFD8D88CE29DFF56641382C03004CAE747B9955F16280B41F9CEC0F2F915EF080C03DB39B70514806D063F0D52A0FCCCA5FC4CFFF4E3E7A3FC0C6790E7762E025904D656D6E3CC1317E2EC';
wwv_flow_imp.g_varchar2_table(26) := '93178A125056832CC9DB99B38EA914803A4EA5C16B2A5FB49E2ADEC62CBF9EE925ABC183B4F45A0894CFA1F2B9F4D4F7CF6E7F99A4168BB288D6082800AD19E5F883AC175FCF7CBA78CBBFFCEEE6F1AFC60A08B447A0FC5E99D38F9DDFFE9B12ED499529';
wwv_flow_imp.g_varchar2_table(27) := '493DB32A00F59C4BE35655BEED7FE6C485EDBFD6D7B8C55B30810608945F4E2BBF2FA0FCFE9A062CD7121B20A0003460484D58E285D3CB51FE35BFDDAC7572622A8E1E3C1EC70FBFA075DB9183C7627A6AA627C75461B030BB188BF34B71E8C09134DBC2';
wwv_flow_imp.g_varchar2_table(28) := 'DC6294D97B014D4C4CC6ECF45C1C985D68D5363FB310B353737D19C4153FCA2FB15D38B57CC52D3E6C82405DD7A800D475320D5A57F907FFE5F3AB7DAD786E763E5E71EBABE2DE3BDF1D7FF72DFF34FEE6CFFDC3F8DB3FFF9EF8C76FFBB5566DEFB9F7BD';
wwv_flow_imp.g_varchar2_table(29) := 'F1F6BBDE1D9D4EA7AB4B5910DE70C79DF157EEFE6B71EFDDEF8C7BEFCAB3BDF5AEBF1EAFBDFD8DD129FEEB0A54EC78F99FBB2DDEF89ABBE24DAFB9A755DBEB5FF58678EDAB5F1F77DCFEBA78D94B5F1EC78F1F2B0AE35491B8F7FFE55FA32DDF71EB7DA4';
wwv_flow_imp.g_varchar2_table(30) := '2308540B2800D53EF6F621507E4652FE35BFAA4327263BF1BADBEE8A5F7DE7FBE2EFBFF957E267FFFC2FC4CB5FF0BAB8F5D82BE2E6A597C4D2FCB1566DD72FDC18AFFDC99FDDFE2CAF9BCBE2DCA178F1D197C691F9E37170F65094EF0464D996E68FC64F';
wwv_flow_imp.g_varchar2_table(31) := '5F7F5B4C4D4E75E389C962DF0D476EDAB6999B9E8F366D07E70EC7D2FC7571ECD00DF15337BC345EFFB27BE2EE3B7E2E5EF4A29B6362A2D3D5A4DC517E8FCDA5B397CB0F6D8D10A8EF221580FACEA6112B2BFFCE72F90F99542D76727222FECECFFF52FC';
wwv_flow_imp.g_varchar2_table(32) := '8D37FEA3385CBCF0571DDBA67D1756CEC5C6D646D74893C5DBFF5313B35DF7B77DC7CA5AF55BD99DE2D5696D6BBDED0CCFE62BBFCC71FB2D77C42B6FBBA3C7FB2211CBC53B6EEB6BDD1F5BCF9ED407042A048AA758C55EBB08F410D8FEC3BFFC777EBB1C';
wwv_flow_imp.g_varchar2_table(33) := '577E2E73CFABFF52FCCC4D6F8889E2BF2E87B5F2E68D5E7F7815389D4EF1532BD3F70EB5B1D9FB0FB08CDFF0F6C2A32F8A9FBAE5A72B01CB2F01AC5ECA538E2A316ABEB3CECB5300EA3C9D06AC6D6D79BDF25FF83B72F468FCC5DBDE55FCD1EFA1D68071';
wwv_flow_imp.g_varchar2_table(34) := '5A624D045E7CC3ADB1B878B0EB6ACA62547E4360D703EC20D0878057E53E901CB2B3C0F68BD06AF567212F7FF1AB636E6A7EE713B89500811D05E6A60FC4B123C7A3EA47F9EF6E54EDB7AF0E02F55E830250EFF9D47A755B9B111B6BC54F5D5639597C8D';
wwv_flow_imp.g_varchar2_table(35) := 'FBE663D56F6576B9AB9B09A41738B278ACD26073A3FB73AFF28E7612784640017806C22FBB1728DF01A87A113A7460298E1D7CE1EE4FEC1E0408C4DC4CF53B67E537E062AAB740DD57A700D47D42355F5FC5F7FFC5C1D9C53872A0FA6DCC9AC7B33C0263';
wwv_flow_imp.g_varchar2_table(36) := '13989C988C891EDF245AF5FC1BDBC25DB83102138D59A985D64EA07C07202A5E81CABFC73D3775A076EBB620024D10D88AADE814FF55AF75AB7AB7BD6314A8FFA51580FACFC80A0910204080C0C005148081933A2101020408641768427E05A00953B246';
wwv_flow_imp.g_varchar2_table(37) := '02040810203060010560C0A04E4780000102D9059A915F0168C69CAC9200010204080C5440011828A79311204080407681A6E457009A3229EB244080000102031450000688E95404081020905DA039F91580E6CCCA4A0910204080C0C004148081513A11';
wwv_flow_imp.g_varchar2_table(38) := '01020408641768527E05A049D3B2560204081020302001056040904E4380000102D9059A955F0168D6BCAC9600010204080C4440011808A39310204080407681A6E557009A3631EB254080000102031050000680E81404081020905DA079F91580E6CDCC';
wwv_flow_imp.g_varchar2_table(39) := '8A0910204080C0BE0514807D133A0101020408641768627E05A08953B3660204081020B04F0105609F80EE4E80000102D9059A995F0168E6DCAC9A0001020408EC4B4001D8179F3B13204080407681A6E657009A3A39EB264080000102FB105000F681E7';
wwv_flow_imp.g_varchar2_table(40) := 'AE04081020905DA0B9F91580E6CECECA0910204080C09E0514803DD3B92301020408641768727E05A0C9D3B3760204081020B0470105608F70EE4680000102D9059A9D5F0168F6FCAC9E0001020408EC494001D8139B3B11204080407681A6E757009A3E';
wwv_flow_imp.g_varchar2_table(41) := '41EB2740800001027B105000F680E62E04081020905DA0F9F91580E6CF50020204081020B06B010560D764EE4080000102D905DA905F0168C31465204080000102BB1450007609E67002040810C82ED08EFC0A403BE628050102040810D8958002B02B2E';
wwv_flow_imp.g_varchar2_table(42) := '0713204080407681B6E45700DA3249390810204080C02E0414805D60399400010204B20BB4D4789EB6000010004944415427BF02D09E594A428000010204FA165000FAA6722001020408641768537E05A04DD394850001020408F429A000F409E5300204';
wwv_flow_imp.g_varchar2_table(43) := '0810C82ED0AEFC0A40BBE6290D0102040810E84B4001E88BC94104081020905DA06DF91580B64D541E0204081020D0878002D00792430810204020BB40FBF22B00ED9BA9440408102040A0A78002D093C80104081020905DA08DF91580364E5526020408';
wwv_flow_imp.g_varchar2_table(44) := '1020D0434001E801643701020408641768677E05A09D73AD45AA95F59558595FAEC55AC6B188859943D1E974BA5E7A63633D3636D7BAEE6FFB8EB9990311DD79626B3362B293F7256A7A6A3A62226FFEF063E8021E5D4327CE7B8133179E8E6F9DF87A2C';
wwv_flow_imp.g_varchar2_table(45) := 'AF5D8A53979E8C93179F48B35D5ABB184F9C7D24D6D7BBFF017F71E5423C76E691582D8AD2B9E53371F6D2E9345B590E4F9E3D51F8AC777D829405E9ECF953B1BAB61A970AAB8B97CF47966D6D6335CE5C38131BEBDD7DBAC2D9317081B69E500168EB64';
wwv_flow_imp.g_varchar2_table(46) := '6B906B79F5627CF0E3EF8F7FFDC17F16BFF17BFF32FEC3FFFC5769B6F7FDCEAFC47FFEC8BF8DCDF2D3D82EB35859BB1C9FFAD2C7E2039FF82FF1A1CFFCF7F8F01FFD8F345BF9B8F8F897FF776C15FF75E1D9BEF96B0FDD1F9FFAF21FC467BFFAC9F8BFF7';
wwv_flow_imp.g_varchar2_table(47) := '7F2ACDF6C92FFE417CE3A1AF44D53B24E107817D0A2800FB0474F76A81F5CDF5B8BCB21C9757736D97962F4699BD5A278A2F016CC4EAEA6A949FE566DA56D6568A72B4D58BA7386633D68ACF82336E9B3DCA514F3C070C48A0BDA75100DA3B5BC9081020';
wwv_flow_imp.g_varchar2_table(48) := '408040570105A02B8D1D04081020905DA0CDF91580364F57360204081020D0454001E802E36602040810C82ED0EEFC0A40BBE72B1D0102040810D8514001D891C58D831298999A8DA585A371F4E0F138BA787D9A6DE9C0D128B3F7729C9A9C8E859983B1';
wwv_flow_imp.g_varchar2_table(49) := '387F38D57660F66094D9A3C78FF99985B861E9C6B8E9D82DA9B61B8ACC73E53F94D4C3C7EEE10AB4FDEC0A40DB273CC67C33533371E7EBEE89B7DCF90B71EFDDEF8AB7DFFDEE34DBBDF7BC2BEEBAE32FC444C55FE42EFF007CE52B6FDF36BAF38E7B8AE3';
wwv_flow_imp.g_varchar2_table(50) := 'DF9C677BED3DF18A97BDA2D2A77CE8968F9B5F7CDBAFC63F79DBBF885F4AB49599DFFAA677543C7A4A1D1B81FD094CECEFEEEE4DA0BBC0E2FC52DC78E896589C3D1CB3537331333993669B9F5E889B966E8DC9F29F73ED42345F981C9DBFBE30998BA989';
wwv_flow_imp.g_varchar2_table(51) := 'E9989C984AB3CD4CCEC5B18337446772B28B4EC4CCF46CBCEC86D7C4D2DC753137355F3C86F26C65E6DB5EF8BA982EDE41EB0A64C79005DA7FFA89F64794705C0213C5E777D313B3E3BAFCD8AF7B79ED626C55FC4B80E51F7E939DA9B1AF735C0B585D5F';
wwv_flow_imp.g_varchar2_table(52) := 'ADBC74A778752AFF49E5CA835ABCF3D2CAF9CAC74F8BA38B362281E22936A22BB94C3A814EA7932EF39581B7B6B68A17F0EEFFDA5DA7D8D5E9E4352A74AEE4DAF1E3AD8A02B5E31D5A74E356F1F869519CC645C9B0600520C39465244080000102D70828';
wwv_flow_imp.g_varchar2_table(53) := '00D780F82D010204086417C8915F01C83167290910204080C055020AC0551C7E4380000102D905B2E45700B24C5A4E0204081020708580027005860F0910204020BB409EFC0A409E594B4A80000102049E1550009EA5F001010204086417C8945F01C834';
wwv_flow_imp.g_varchar2_table(54) := '6D590910204080C033020AC033107E2140800081EC02B9F22B00B9E62D2D0102040810D8165000B619FC4480000102D905B2E55700B24D5C5E0204081020500828000582FF0910204020BB40BEFC0A40BE994B4C80000102044201F0202040800081F402';
wwv_flow_imp.g_varchar2_table(55) := '190114808C53979900010204D20B2800E91F0200081020905D20677E0520E7DCA52640800081E4020A40F20780F8040810C82E9035BF029075F27213204080406A010520F5F885274080407681BCF91580BCB3979C00010204120B280089872F3A010204';
wwv_flow_imp.g_varchar2_table(56) := 'B20B64CEAF00649EBEEC0408102090564001483B7AC1091020905D20777E0520F7FCA52740800081A4020A40D2C18B4D800081EC02D9F32B00D91F01F213204080404A010520E5D885264080407601F915008F0102040810209050400148387491091020';
wwv_flow_imp.g_varchar2_table(57) := '905D40FE0805C0A380000102040824145000120E5D64020408E41690BE1450004A051B01020408104826A000241BB8B8040810C82E20FF8F0414801F39F8990001020408A4125000528D5B58020408641790FFC7020AC08F25FC4A800001020412092800';
wwv_flow_imp.g_varchar2_table(58) := '89862D2A010204B20BC8FF9C8002F09C858F0810204080401A010520CDA805254080407601F9AF145000AED4F03101020408104822A0002419B498040810C82E20FFD5020AC0D51E7E4780000102045208280029C62C24010204B20BC87FAD800270AD88';
wwv_flow_imp.g_varchar2_table(59) := 'DF13204080008104020A4082218B48800081EC02F23F5F400178BE895B081020408040EB051480D68F58400204086417907F270105602715B7112040800081960B28002D1FB078040810C82E20FFCE020AC0CE2E6E254080000102AD1650005A3D5EE108';
wwv_flow_imp.g_varchar2_table(60) := '1020905D40FE6E020A403719B7132040800081160B28002D1EAE68040810C82E207F770105A0BB8D3D0408102040A0B5020A406B472B18010204B20BC85F25A00054E9D8B72F81D5CDD5582BB67D9DA4C1779E9F3D10139DEE4FB1F5CD8DD8D8DA6870C2';
wwv_flow_imp.g_varchar2_table(61) := 'FD2D7D6E7AB6F2045B9B11B3537395C7B479E781D9C59898986C7344D9C62CD0FDD569CC0B73F9E60B5C5C3E1FDF7FF23B71E1F2B93879EE443C75F68934DBF922F3E3A77E10EB1BEB5D07B9B2B61C4F9E7E2C96572EC5D98B67E2CC855369B6CBAB97E2';
wwv_flow_imp.g_varchar2_table(62) := 'C9332762A3C267756D25BEFDF837E3F4A593F183D3FF3FD5767AF9A9F8D6E3DF8895B5CB5D1F3F76F4167044B5800250ED63EF3E04D63656E3B35FFB647CF0E3BF19BFFF471F88FFF5D9DF4EB3FDCEC7FF6BFCE1973E125BC57FDD08D737D7E3EB0F7D2D';
wwv_flow_imp.g_varchar2_table(63) := '3EF5C58FC5E7BEFAA9F8FCFD9F49B37DF20B1F8B6FFCF1FDDD689EBDFD773FFDDFE2DFFCF62FC77FFAD0AFA7DADEF781F7C6EF7EFAB79E75F0018161082800C35075CEAB0436B7B622DBB651BE7F7D9542F7DF6C162521E3D65DE4EA3DD91E3B65DEDD3C';
wwv_flow_imp.g_varchar2_table(64) := '7EAED6F2BBE7047CD44B4001E825643F010204081068A18002D0C2A18A44800081EC02F2F71650007A1B39820001020408B44E400168DD4805224080407601F9FB115000FA51720C010204081068998002D0B281D62DCEECD46C2C1D588AA38BD7C59183';
wwv_flow_imp.g_varchar2_table(65) := '79B6C30B4B315364EF358FC3078EC42D3FF192B8F585B7C54B126D2F2E321F9A5FEAC513F3330B71FCF00DF182A33716DB4D69B6E34B37C4DCCC819E3E0ED859C0ADFD092800FD39396A0F02D313D371FB2B5F15AF7FF59DF1C657DD1D6F7ACD3DA9B657';
wwv_flow_imp.g_varchar2_table(66) := 'FDCCAB2BFF25C085B9C578FB9BDF1DFFE02FFF72BCE72DBF566CFF3CCDF68B6F796FFCD537FFAD9898A87E09BAF38E7BE2AD77BE23DEFAA67715DB3B136DEF289E337745A7D3D9C333CF5D08F42750FDECEBEF1C8E22B0A3C0DCEC81589ABF2EA627678B';
wwv_flow_imp.g_varchar2_table(67) := '17B289E824FA6FB233B59DBDD3E9EC6853DE7864E1BAB8F5BADBE3C0F4C198EC4C6E9785F29F0ECEB0CD4D1D28B2BF22A626A74B8A1DB7E962DFF58B37C6CCE45C2A9B72FE65E6EB176F8AC909FF14F08E0F8ECA1BEDEC5760A2DF031D4760B7029DE20F';
wwv_flow_imp.g_varchar2_table(68) := 'FCA9E8FE02BFDBF335EDF895F5D5CA254F167FC0CD4DE77D9BF7C2EAB94A9F4EF1EAB4BAB152794C9B776EFF33C05B6D4E28DBB8058AA7D8B897E0FA045A2AB0D5CFAB77A7A5E10713AB2FC2C15CAA8667E9E7F153C3658F79492EDFBF8002D0BF952309';
wwv_flow_imp.g_varchar2_table(69) := '10204080406B041480D68C52100204086417907F37020AC06EB41C4B80000102045A22A000B464906210204020BB80FCBB13500076E7E5680204081020D00A0105A015631482000102D905E4DFAD8002B05B31C7132040800081160828002D18A2080408';
wwv_flow_imp.g_varchar2_table(70) := '10C82E20FFEE051480DD9BB907010204081068BC8002D0F8110A40800081EC02F2EF454001D88B9AFB102040800081860B28000D1FA0E513204020BB80FC7B135000F6E6E65E0408102040A0D1020A40A3C767F1040810C82E20FF5E051480BDCAB91F01';
wwv_flow_imp.g_varchar2_table(71) := '0204081068B08002D0E0E1593A010204B20BC8BF77010560EF76EE4980000102041A2BA000347674164E800081EC02F2EF474001D88F9EFB122040800081860A28000D1D9C6513204020BB80FCFB135000F6E7E7DE0408102040A091020A4023C766D104';
wwv_flow_imp.g_varchar2_table(72) := '0810C82E20FF7E051480FD0ABA3F010204081068A08002D0C0A15932010204B20BC8BF7F010560FF86CE4080000102041A27A000346E64164C800081EC02F20F4240011884A273102040800081860928000D1B98E512204020BB80FC8311500006E3E82C';
wwv_flow_imp.g_varchar2_table(73) := '0408102040A051020A40A3C665B1040810C82E20FFA004148041493A0F010204081068908002D0A061592A010204B20BC83F380105607096CE4480000102041A23A000346654164A800081EC02F20F52400118A4A673112040800081860828000D199465';
wwv_flow_imp.g_varchar2_table(74) := '12204020BB80FC8315500006EBE96C0408102040A011020A4023C66491040810C82E20FFA0051480418B3A1F010204081068808002D080215922010204B20BC83F78010560F0A6CE4880000102046A2FA000D47E441648800081EC02F20F4340011886AA';
wwv_flow_imp.g_varchar2_table(75) := '731220408000819A0B2800351F90E511204020BB80FCC311500086E3EAAC0408102040A0D6020A40ADC76371040810C82E20FFB004148061C93A2F0102040810A8B1800250E3E1581A010204B20BC83F3C01056078B6CE4C80000102046A2BA000D47634';
wwv_flow_imp.g_varchar2_table(76) := '1646800081EC02F20F53400118A6AE731320408000819A0A2800351D4C1396D5E97422CA2D76FEB1B5B5199B5B1B3BEF742B01023D05B68AE750CF835A7C8068C315500086EBDBFAB357FCF91FEB9B1BB1BC7AB1F50602121886C0D6561405BAF8A9E2E4';
wwv_flow_imp.g_varchar2_table(77) := '9D4E51C22BF6DB45A04A4001A8D2B1AF52A0D3E94467A2D3F598B5F595B8B8A2007405B283408540599EB7A27B01E874BA3FF72A4EDBA05D963A6C010560D8C22D3E7FA778F44C4C163F75C9B8BEB91E972E29005D78DC4CA052E0E9B34F55EE9F985400';
wwv_flow_imp.g_varchar2_table(78) := '2A81ECEC29D0FDD5BBE75D1D905DA0D3E9C4CCDC5425C389938FC7D666F7CF622AEF6C2781A40265797EECA9EF57A69F9A99ACDCDFF49DD63F7C8189E15FC215DA2C30BB305D19EFD49953F1E853DFAB3CC64E0204AE16F8D6230FC4134F3F7EF58D57FC';
wwv_flow_imp.g_varchar2_table(79) := 'AEFCDC7F66AEFAB977C5E13E24B0A38002B0238B1BFB15983D301D9D4EF972D4FD1E0F7EE71BF1E8C93FED7E404BF754ABB434B458FB16F8EE8987E3F30F7EBAF23CE567FFBDCA77E5096ABFD3024721A0008C42B9C5D7E8743A31BF38539970B3F812C0';
wwv_flow_imp.g_varchar2_table(80) := '371FFE7A3CF0BDAFC6C5D57395C7B669E7CCCC6C659CF58DB55859BF54794C9B772ECC2E16E5B17BC2AD8DAD9899AC7E6C75BF77F3F69CB9FC747CEEFFDD179FF9F27D3D173FBB301393535EBE7B4239A052C023A892C7CE7E040E1C9E8B891EDF90547E';
wwv_flow_imp.g_varchar2_table(81) := '17C0238F3C125F7EE073F1C09FDC1F274E3D1667CF9F8EF317CFC5F2F272ACAFAEB76B5B5B8FA74F3F159B9B9B5D09CF5D3A1DDF3DF150ACAEAF44F957BE326DEB9B6BF1BD27BF1D6B6B6B5D7DD63737B61F27ABABABB1BEB6D9AA6DA5C874F6E2E9387D';
wwv_flow_imp.g_varchar2_table(82) := 'FEE9E2DDB1EFC517BEF589F8E8173E140F7FF7A1D8ACF8CEFF126B7272A228DDB3E587ADDD041B8D8002301AE7565F65666E2AE60FF6F78274F1E2723CF2E8F7E32B0F7E31BE5894816F3C7C7F7CFDE1AFC4971FFC42ABB62F3DF0F978E8BB0F162FE565';
wwv_flow_imp.g_varchar2_table(83) := 'F5891D7F9C5F3E1B1FFDE2EFC56F7DFC3FC6FBEFFB77F19B7FF81B69B6F77FECDFC747BEF0C1D8ACF8876EB60A3BFC3BA300000A1849444154BDAF3CFCF9F8D8977E3FEEFBCA875BB57DE2ABFF273E7DFF7D45B60FC7478B3FF81FFCCE37E3C285F33B3E';
wwv_flow_imp.g_varchar2_table(84) := '4EAEBD7161692EA6677D03E0B52E7EBF7B010560F766EEB183C0E2B1033DFF46C0B5775B5B5F8DB3CBA7E3D4C59371EAC253ADDA4E5F381997577BBFBD7FF2DC89F8D60FBF197FFCE8D7E3E11F7C2DCDF6EDC71E88A7CF3F79ED43E279BF2F4BD213671E';
wwv_flow_imp.g_varchar2_table(85) := '8D1F3EFDFD966DDF8B27CF3E16E79777F725B1B26C2F1C997F9E53BB6E906654020AC0A8A45B7E9D89894E1CBDF1504C4DFBCCA4E5A3166F4C02D3B353B174C3C1CAEF9B18D3D25CB6A1020A40430757C7659725E0C80B1663DADF4FAEE378ACA9C102E5';
wwv_flow_imp.g_varchar2_table(86) := '1FFE87AF5F4851B01B3CA6C62D5D0168DCC8EABDE0F26B93475EB818E55B95F55EA9D511688640F95C3AEA39D58C61356C950A40C306D684E5965F06B8EEA6C3B17874BEE7DF0E68421E6B24300E81F2BBFD0F1F5F88632F3A1C9369FECADF38A4F35E53';
wwv_flow_imp.g_varchar2_table(87) := '01C83BFBA126EF742216AF3B10C76F5E8AB20894A5A0B829FC2040A0BB40F91C299F2B078FCC6F7F4FCDC2D25CF8416058020AC0B0649D775BA0FCCCA52C02E55B98878AAF61CECE4F47F902373939B1FDEE40F9AB6D2218E4339898EC3CF71C283EC39F';
wwv_flow_imp.g_varchar2_table(88) := '5B988943C573E4E88D8B71E8D88128BF9C16C97E883B5A010560B4DE69AF363533190B87E7E2BA9B0EC5F52F5E8AEB6F29B69F3C12C76E3E1CD7BDE8908D41BAC740F9D6FEF19B97B69F0B3F71CB91385A7C9DBF7C8E940539ED0B85E02315500046CAED';
wwv_flow_imp.g_varchar2_table(89) := '623F16E8743A3FFAECA7F8CCA77CC1B34D6EBF33C22197C364F1F8EF743AE14729601BB58002306A71D7234080000102351050006A30044B204080407601F9472FA0008CDEDC150910204080C0D8051480B18FC002081020905D40FE71082800E350774D';
wwv_flow_imp.g_varchar2_table(90) := '02040810203066010560CC0370790204086417907F3C020AC078DC5D9500010204088C554001182BBF8B13204020BB80FCE3125000C625EFBA0408102040608C020AC018F15D9A000102D905E41F9F8002303E7B5726408000010263135000C646EFC204';
wwv_flow_imp.g_varchar2_table(91) := '0810C82E20FF3805148071EABB3601020408101893800230267897254080407601F9C72BA0008CD7DFD50910204080C058041480B1B0BB28010204B20BC83F6E010560DC13707D020408102030060105600CE82E49800081EC02F28F5F400118FF0CAC80';
wwv_flow_imp.g_varchar2_table(92) := '00010204088C5C40011839B90B12204020BB80FC75105000EA30056B20408000010223165000460CEE72040810C82E207F3D0414807ACCC12A0810204080C0480514809172BB18010204B20BC85F170105A02E93B00E0204081020304201056084D82E45';
wwv_flow_imp.g_varchar2_table(93) := '800081EC02F2D7474001A8CF2CAC8400010204088C4C40011819B50B11204020BB80FC75125000EA340D6B214080000102231250004604ED32040810C82E207FBD0414807ACDC36A0810204080C0480414809130BB08010204B20BC85F370105A06E13B1';
wwv_flow_imp.g_varchar2_table(94) := '1E0204081020300201056004C82E41800081EC02F2D74F4001A8DF4CAC8800010204080C5D4001183AB10B10204020BB80FC75145000EA38156B22408000010243165000860CECF4040810C82E207F3D0514807ACEC5AA0810204080C050051480A1F23A';
wwv_flow_imp.g_varchar2_table(95) := '39010204B20BC85F570105A0AE93B12E0204081020304401056088B84E4D800081EC02F2D7574001A8EF6CAC8C00010204080C4D4001181AAD1313204020BB80FC75165000EA3C1D6B234080000102431250008604EBB4040810C82E207FBD0514807ACF';
wwv_flow_imp.g_varchar2_table(96) := 'C7EA0810204080C050041480A1B03A29010204B20BC85F770105A0EE13B23E0204081020300401056008A84E49800081EC02F2D75F4001A8FF8CAC9000010204080C5C40011838A91312204020BB80FC4D1050009A30256B24408000010203165000060C';
wwv_flow_imp.g_varchar2_table(97) := 'EA74040810C82E207F3304148066CCC92A0910204080C04005148081723A19010204B20BC8DF140105A02993B24E0204081020304001056080984E45800081EC02F23747400168CEACAC9400010204080C4C40011818A51311204020BB80FC4D1250009A';
wwv_flow_imp.g_varchar2_table(98) := '342D6B254080000102031250000604E934040810C82E207FB304148066CDCB6A0910204080C04004148081303A09010204B20BC8DF340105A06913B35E0204081020300001056000884E41800081EC02F2374F400168DECCAC980001020408EC5B4001D8';
wwv_flow_imp.g_varchar2_table(99) := '37A11310204020BB80FC4D1450009A38356B264080000102FB145000F609E8EE040810C82E207F3305148066CECDAA0910204080C0BE0414807DF1B933010204B20BC8DF540105A0A993B36E0204081020B00F0105601F78EE4A800081EC02F237574001';
wwv_flow_imp.g_varchar2_table(100) := '68EEECAC9C0001020408EC594001D8339D3B12204020BB80FC4D1650009A3C3D6B2740800001027B145000F608E76E040810C82E207FB305148066CFCFEA0910204080C09E0414803DB1B913010204B20BC8DF740105A0E913B47E0204081020B0070105';
wwv_flow_imp.g_varchar2_table(101) := '600F68EE42800081EC02F2375F400168FE0C25204080000102BB165000764DE60E040810C82E207F1B041480364C51060204081020B04B01056097600E274080407601F9DB21A000B4638E521020408000815D092800BBE27230010204B20BC8DF160105';
wwv_flow_imp.g_varchar2_table(102) := 'A02D9394830001020408EC424001D8059643091020905D40FEF6082800ED99A5240408102040A06F0105A06F2A0712204020BB80FC6D125000DA344D590810204080409F020A409F500E234080407601F9DB25A000B46B9ED2102040800081BE041480BE';
wwv_flow_imp.g_varchar2_table(103) := '981C44800081EC02F2B74D400168DB44E52140800001027D0828007D203984000102D905E46F9F8002D0BE994A4480000102047A0A28003D891C40800081EC02F2B751400168E354652240800001023D0414801E407613204020BB80FCED145000DA3957';
wwv_flow_imp.g_varchar2_table(104) := 'A9081020408040A5800250C96327010204B20BC8DF560105A0AD93958B00010204085408280015387611204020BB80FCED155000DA3B5BC9081020408040570105A02B8D1D040810C82E207F9B051480364F57360204081020D0454001E802E366020408';
wwv_flow_imp.g_varchar2_table(105) := '641790BFDD020A40BBE72B1D0102040810D8514001D891C58D040810C82E207FDB051480B64F583E0204081020B0838002B0038A9B081020905D40FEF60B2800ED9FB1840408102040E079020AC0F348DC40800081EC02F267105000324C594602040810';
wwv_flow_imp.g_varchar2_table(106) := '20708D8002700D88DF12204020BB80FC390414801C73969200010204085C25A0005CC5E137040810C82E207F16010520CBA4E5244080000102570828005760F890000102D905E4CF23A000E499B5A40408102040E0590105E0590A1F10204020BB80FC99';
wwv_flow_imp.g_varchar2_table(107) := '0414804CD3969500010204083C23A0003C03E1170204086417903F978002906BDED21220408000816D0105609BC14F040810C82E207F36010520DBC4E52540800001028580025020F89F000102D905E4CF27A000E49BB9C404081020402014000F020204';
wwv_flow_imp.g_varchar2_table(108) := '08A4170090514001C83875990910204020BD800290FE2100800081EC02F2E714500072CE5D6A02040810482EA000247F00884F80407601F9B30A280059272F3701020408A4165000528F5F780204B20BC89F574001C83B7BC90910204020B180029078F8';
wwv_flow_imp.g_varchar2_table(109) := 'A21320905D40FECC020A40E6E9CB4E8000010269051480B4A3179C0081EC02F2E716F833000000FFFFABAD7D7A00000006494441540300B521B3F0D714F6760000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(70139077623661924039)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(70139080345072924043)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'name', 'Administrator',
  'type', 'A')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:3yhrn6vMomFS9lJSiUELavVJBvfPg1Nm_2g2zEGMqLs'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(70139080584528924043)
,p_name=>'Contribution Rights'
,p_static_id=>'contribution-rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'name', 'Administrator,Contributor',
  'type', 'A')).to_clob
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>'SH256:ciFz4rcxddalYIUr3Jinzh7tWbPXCTrEEDvj0GvJb6Y'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(70139080503545924043)
,p_name=>'Reader Rights'
,p_static_id=>'reader-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'if nvl(apex_app_setting.get_value(',
    '    p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
    '    -- allow user not in the ACL to access the application',
    '    return true;',
    'else',
    '    -- require user to have at least one role',
    '    return apex_acl.has_user_any_roles (',
    '        p_application_id => :APP_ID, ',
    '        p_user_name      => :APP_USER);',
    'end if;')))).to_clob
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>'SH256:rraFlo6EMInHtSUuxfoZXPob0ulO3Y_yKNkQ5x_t8NI'
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(70139079972344924042)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>'SH256:dheqzA6FvJpxO1XvRjEkdmp8Sopp4a5_9FwX9SJ6d2A'
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(70139080166079924042)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>'SH256:E1I9yvnWl7TTVCZZdLycGZM5J4upKtPrWG-og_uLylc'
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(70139080236670924043)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>'SH256:vmP-ozbK0YK2PWJBw-FIve6SxhPxsqFi7yI6JPE-efc'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(70139081634588924045)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(70139077916299924039)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>'SH256:wtFSXAJO6ZfBIDZaLT-NWeHYfr8jXR6d7K_DuhjTxbQ'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(70139081331666924045)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(70139078102910924039)
,p_version_scn=>'SH256:zBoHxELbCF64JiYwSzQdItfu58AlSVUWmbfwVhVGpyo'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
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
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(70140041981591924746)
,p_lov_name=>'ACCESS_ROLES'
,p_static_id=>'access-roles'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>'SH256:hw1yHwou0QVtzlsCnrLSXndSn95AkdZHJv9ZCO7rHeg'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(70139683984909924495)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(70139683984909924495)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(70139684669107924497)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(70139684229423924496)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/eba_country_intermediates_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(70861647254814829947)
,p_lov_name=>'EBA_COUNTRY_INTERMEDIATES.NAME'
,p_static_id=>'eba-country-intermediates-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EBA_COUNTRY_INTERMEDIATES'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:76gJZOGoir4vlMon5rfQY7HL8zmMLuxccm_ZRDLlFyU'
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903214619Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/eba_country_organizations_code
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(70861648216160829948)
,p_lov_name=>'EBA_COUNTRY_ORGANIZATIONS.CODE'
,p_static_id=>'eba-country-organizations-code'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EBA_COUNTRY_ORGANIZATIONS'
,p_return_column_name=>'ID'
,p_display_column_name=>'CODE'
,p_default_sort_column_name=>'CODE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:LKP-nqpQLVpQD7odoy4j2KZqrtUtauKi6_LHjyL3GOQ'
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903214619Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/eba_country_regions_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(70861645899193829944)
,p_lov_name=>'EBA_COUNTRY_REGIONS.NAME'
,p_static_id=>'eba-country-regions-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EBA_COUNTRY_REGIONS'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:PrhUX1JNPzREWhEGGktwWvoW_nW6ZmMXs2Mw9a_thW4'
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903214619Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/eba_country_sub_regions_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(70861646593437829946)
,p_lov_name=>'EBA_COUNTRY_SUB_REGIONS.NAME'
,p_static_id=>'eba-country-sub-regions-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EBA_COUNTRY_SUB_REGIONS'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:PV4DUOqs_NmNsnX2NEicOTi5RDP52U42LSkfVh1QJcA'
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903214619Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(70140051198398924755)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_static_id=>'email-username-format'
,p_lov_query=>'.'||wwv_flow_imp.id(70140051198398924755)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:og77UyB456nZ1KlCr4DAkFaNaKZm9jBHGC16mBmSJsk'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(70140051786753924755)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
,p_static_id=>'email'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(70140077158928924776)
,p_lov_name=>'FEEDBACK_RATING'
,p_static_id=>'feedback-rating'
,p_lov_query=>'.'||wwv_flow_imp.id(70140077158928924776)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:QHID2_AL91pivdhRvWMf8rTxRdNvsqexHwq5MFyhCN4'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(70140078445372924778)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_static_id=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(70140077921970924777)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_static_id=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(70140077591133924776)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_static_id=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(70140092480618924790)
,p_lov_name=>'FEEDBACK_STATUS'
,p_static_id=>'feedback-status'
,p_lov_query=>'.'||wwv_flow_imp.id(70140092480618924790)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:PpuBEbIoOUhSzFsElNFuOJRnL162R3kqFnYCQDsmzNw'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(70140092802672924790)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
,p_static_id=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(70140093356918924791)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
,p_static_id=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(70140093988499924792)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
,p_static_id=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(70140094380172924792)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
,p_static_id=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(70139710402486924543)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_static_id=>'timeframe-4-weeks'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
,p_version_scn=>'SH256:MHjq8a1C6UKgUTdUiXoLyw_rytnwJPhwCeLln9D4WW8'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(70139770306132924678)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_static_id=>'view-as-report-chart'
,p_lov_query=>'.'||wwv_flow_imp.id(70139770306132924678)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:-NiiYPWYjIc3Pc-aCWde6UlxvjCf8ukbfArqZU7onD4'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(70139772402407924680)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_static_id=>'chart'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(70139771299472924679)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_static_id=>'report'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(70139081949427924046)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(70140189171932924864)
,p_group_name=>'User Settings'
,p_static_id=>'user-settings'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(70139074114130924028)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(70140144641329924841)
,p_short_name=>'Administration'
,p_static_id=>'administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(70139074223095924029)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(70139670804138924478)
,p_short_name=>unistr('Pa\00EDses')
,p_static_id=>unistr('pa\00EDses')
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(70139074937154924030)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>2243014446517417
,p_default_page_template=>4073832297226169690
,p_default_dialog_template=>2101883943284197310
,p_error_template=>2102634289808461002
,p_printer_friendly_template=>4073832297226169690
,p_login_template=>2102634289808461002
,p_default_button_template=>4073839297780169708
,p_default_region_template=>4073835273271169698
,p_default_chart_template=>4073835273271169698
,p_default_form_template=>4073835273271169698
,p_default_reportr_template=>4073835273271169698
,p_default_wizard_template=>4073835273271169698
,p_default_menur_template=>2532939663579242476
,p_default_listr_template=>4073835273271169698
,p_default_irr_template=>2102002977963900996
,p_default_report_template=>2540130677583398057
,p_default_label_template=>1610598304472262251
,p_default_menu_template=>4073839682315169711
,p_default_list_template=>4073837480889169704
,p_default_top_nav_list_temp=>2528231041045349458
,p_default_side_nav_list_temp=>2469215554099805162
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2127905476394690047
,p_default_dialogr_template=>4502917002193490937
,p_default_option_label=>1610598304472262251
,p_default_required_label=>1610598484065263269
,p_default_navbar_list_template=>2849019392706229583
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4073840274158169736,2000,'universal-theme',8842.261)
,p_version_scn=>'SH256:RQZ7_KKNFF7leXIrwskeQw4WaazlZwly2sNGWk8hwQo'
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
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
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(70139073337182924027)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(70139078603593924039)
,p_build_option_name=>'Feature: About Page'
,p_static_id=>'feature-about-page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:XJT0LyDPwECBH8IlgFn2KNvjd0rsRDXoOWkE0Llo7dI'
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(70139077916299924039)
,p_build_option_name=>'Feature: Access Control'
,p_static_id=>'feature-access-control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:oflPhSoxb6RLGIrI0NPG8HuaDVyLNnJobFXxm8ThcXA'
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(70139077998888924039)
,p_build_option_name=>'Feature: Activity Reporting'
,p_static_id=>'feature-activity-reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:lzgblhVTHdsLZ2SVZQtKCpccbHJ-NIdtYcemlW_ATts'
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(70139078287931924039)
,p_build_option_name=>'Feature: Configuration Options'
,p_static_id=>'feature-configuration-options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:9DZMtxxhBz9UCnZNQtIbo0Dy2HGKowerd3vWs4_gEhU'
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(70139078102910924039)
,p_build_option_name=>'Feature: Feedback'
,p_static_id=>'feature-feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:4w9c61-62VcsI0g96MpTWgQTDraGR_8MLzAozytdVqo'
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(70140190415524924865)
,p_build_option_name=>'Feature: Push Notifications'
,p_static_id=>'feature-push-notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:3WlknQG5FntlPjuOlArqfjFp2TNiokODRfRu8mMBFuw'
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(70140191075886924865)
,p_build_option_name=>'Feature: User Settings'
,p_static_id=>'feature-user-settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:JnASmz458-j5t7kNO3o77354WxlsY67o7JM4yPsoWsg'
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
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
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(70139073669738924028)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>unistr('Pa\00EDses')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139683544041924494)
,p_plug_name=>'Page Navigation'
,p_static_id=>'page-navigation'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(70139682755291924493)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2888245825625742894
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139091314366924060)
,p_plug_name=>unistr('Pa\00EDses')
,p_static_id=>unistr('pa\00EDses')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>unistr('Pa\00EDses')
,p_alias=>unistr('PA\00CDSES')
,p_step_title=>unistr('Pa\00EDses')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260903235302Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139669455716924477)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(70139074114130924028)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139597510680924345)
,p_plug_name=>'Countries'
,p_static_id=>unistr('pa\00EDses')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COUNTRY_ID,',
'       NAME,',
'       NATIONALITY,',
'       COUNTRY_CODE,',
'       CAPITAL,',
'       POPULATION,',
'       AREA,',
'       REGION,',
'       SUB_REGION,',
'       INTERMEDIATE_REGION,',
'       ORGNAIZATION_REGION',
'  from EBA_COUNTRIES_V'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260901224844Z')
,p_updated_on=>wwv_flow_imp.dz('20260903235302Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(70139597540607924345)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:P3_COUNTRY_ID:#COUNTRY_ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>33420111520128348866
,p_created_on=>wwv_flow_imp.dz('20260901224844Z')
,p_updated_on=>wwv_flow_imp.dz('20260903220114Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139662682734924469)
,p_db_column_name=>'AREA'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Area'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224844Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139660459175924466)
,p_db_column_name=>'CAPITAL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Capital'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224844Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139659391667924464)
,p_db_column_name=>'COUNTRY_CODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Country Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224844Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139655951586924458)
,p_db_column_name=>'COUNTRY_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Country ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224844Z')
,p_updated_on=>wwv_flow_imp.dz('20260903214045Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139665243812924473)
,p_db_column_name=>'INTERMEDIATE_REGION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Intermediate Region'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139657398911924461)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224844Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139658555738924463)
,p_db_column_name=>'NATIONALITY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nationality'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224844Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139666427485924475)
,p_db_column_name=>'ORGNAIZATION_REGION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Orgnaization Region'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139661225246924467)
,p_db_column_name=>'POPULATION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Population'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224844Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139663664902924470)
,p_db_column_name=>'REGION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Region'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139664043409924471)
,p_db_column_name=>'SUB_REGION'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Sub Region'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(70139673217990924480)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NAME:NATIONALITY:COUNTRY_CODE:CAPITAL:POPULATION:AREA:REGION:SUB_REGION:INTERMEDIATE_REGION:ORGNAIZATION_REGION'
,p_sort_column_1=>'NAME'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69829224697944346195)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70139597510680924345)
,p_button_name=>'CRIAR'
,p_static_id=>'criar'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Criar Pa\00EDs')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3::'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260903222706Z')
,p_updated_on=>wwv_flow_imp.dz('20260903235302Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70139667803054924476)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(70139597510680924345)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260903235302Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69829224735502346196)
,p_name=>unistr('Atualiza Relat\00F3rio')
,p_static_id=>unistr('atualiza-relat\00F3rio')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(70139597510680924345)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
,p_created_on=>wwv_flow_imp.dz('20260903223854Z')
,p_updated_on=>wwv_flow_imp.dz('20260903223854Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69829224890377346197)
,p_event_id=>wwv_flow_imp.id(69829224735502346196)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70139597510680924345)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260903223854Z')
,p_updated_on=>wwv_flow_imp.dz('20260903223854Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>unistr('Manter Pa\00EDs')
,p_alias=>unistr('MANTER-PA\00CDS')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Manter Pa\00EDs')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260903214618Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908214642Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'CARLOSJ.INFO@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70861652370127829952)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903214619Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70861642172078829939)
,p_plug_name=>unistr('Manter Pa\00EDs')
,p_static_id=>unistr('manter-pa\00EDs')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'EBA_COUNTRIES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903214619Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70861652740747829953)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70861652370127829952)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903214619Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(70861653277861829953)
,p_button_id=>wwv_flow_imp.id(70861652740747829953)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903214619Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70861654550708829955)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(70861652370127829952)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_COUNTRY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903214619Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70861653803628829954)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(70861652370127829952)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_COUNTRY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903214619Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70861654204426829954)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(70861652370127829952)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_COUNTRY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903214619Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70861645339905829944)
,p_name=>'P3_AREA_KM2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_item_source_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_prompt=>'Area Km2'
,p_source=>'AREA_KM2'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903215425Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70861644580850829943)
,p_name=>'P3_CAPITAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_item_source_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_prompt=>'Capital'
,p_source=>'CAPITAL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903215425Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70861643743722829942)
,p_name=>'P3_COUNTRY_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_item_source_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_prompt=>'Country Code'
,p_source=>'COUNTRY_CODE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903215425Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70861642536358829941)
,p_name=>'P3_COUNTRY_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_item_source_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_source=>'COUNTRY_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903225151Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70861647136677829947)
,p_name=>'P3_INTERMEDIATE_REGION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_item_source_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_prompt=>'Intermediate Region Id'
,p_source=>'INTERMEDIATE_REGION_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EBA_COUNTRY_INTERMEDIATES.NAME'
,p_lov_display_null=>'YES'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903215425Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70861644209424829942)
,p_name=>'P3_ISO_ALPHA2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_item_source_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_prompt=>'Iso Alpha2'
,p_source=>'ISO_ALPHA2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>2
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903215425Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70861642978337829941)
,p_name=>'P3_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_item_source_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_prompt=>'Name'
,p_source=>'NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_colspan=>6
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903235506Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70861643383868829942)
,p_name=>'P3_NATIONALITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_item_source_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_prompt=>'Nationality'
,p_source=>'NATIONALITY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903215425Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70861648041566829948)
,p_name=>'P3_ORGANIZATION_REGION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_item_source_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_prompt=>'Organization Region Id'
,p_source=>'ORGANIZATION_REGION_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EBA_COUNTRY_ORGANIZATIONS.CODE'
,p_lov_display_null=>'YES'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903215425Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70861644998845829943)
,p_name=>'P3_POPULATION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_item_source_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_prompt=>'Population'
,p_source=>'POPULATION'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903215425Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70861645788202829944)
,p_name=>'P3_REGION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_item_source_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_prompt=>'Region'
,p_source=>'REGION_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EBA_COUNTRY_REGIONS.NAME'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Selecione - '
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260908214642Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'CARLOSJ.INFO@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70861646434304829946)
,p_name=>'P3_SUB_REGION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_item_source_plug_id=>wwv_flow_imp.id(70861642172078829939)
,p_prompt=>'Sub Region Id'
,p_source=>'SUB_REGION_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EBA_COUNTRY_SUB_REGIONS.NAME'
,p_lov_display_null=>'YES'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903215425Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70861655760434829956)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>34142169739955254477
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903214619Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70861654978900829955)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(70861642172078829939)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Manter Pa\00EDs')
,p_static_id=>unistr('initialize-form-manter-pa\00EDs')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>34142168958421254476
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903214619Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70861655328482829956)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(70861642172078829939)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Process form Manter Pa\00EDs')
,p_static_id=>unistr('process-form-manter-pa\00EDs')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>34142169308003254477
,p_created_on=>wwv_flow_imp.dz('20260903214619Z')
,p_updated_on=>wwv_flow_imp.dz('20260903214619Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>unistr('Pa\00EDses - Log In')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139083767735924049)
,p_plug_name=>unistr('Pa\00EDses')
,p_static_id=>unistr('pa\00EDses')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70139085894442924053)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(70139083767735924049)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70139084781123924052)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(70139083767735924049)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70139085613147924053)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(70139083767735924049)
,p_prompt=>'Remember me'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70139085176778924052)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(70139083767735924049)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70139084398943924051)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70139083767735924049)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70139089979727924057)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>33419603959248348578
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70139089528012924056)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>33419603507533348577
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70139086274226924054)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>33419600253747348575
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(70139087249848924055)
,p_page_process_id=>wwv_flow_imp.id(70139086274226924054)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(70139087764034924055)
,p_page_process_id=>wwv_flow_imp.id(70139086274226924054)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(70139086816884924054)
,p_page_process_id=>wwv_flow_imp.id(70139086274226924054)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70139088141199924055)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>33419602120720348576
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(70139089158580924056)
,p_page_process_id=>wwv_flow_imp.id(70139088141199924055)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(70139088660684924056)
,p_page_process_id=>wwv_flow_imp.id(70139088141199924055)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260901224840Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224840Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(70139080345072924043)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140159506234924850)
,p_plug_name=>'Access Control'
,p_static_id=>'access-control'
,p_parent_plug_id=>wwv_flow_imp.id(70140158983522924850)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(70139077916299924039)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140176866847924859)
,p_plug_name=>'Access Control Actions'
,p_static_id=>'access-control-actions'
,p_parent_plug_id=>wwv_flow_imp.id(70140159506234924850)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(70140151573232924846)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140160910003924851)
,p_plug_name=>'ACL Information'
,p_static_id=>'acl-information'
,p_parent_plug_id=>wwv_flow_imp.id(70140159506234924850)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140158099569924849)
,p_plug_name=>'Activity Reports'
,p_static_id=>'activity-reports'
,p_parent_plug_id=>wwv_flow_imp.id(70140156144132924849)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(70140146240481924843)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(70139077998888924039)
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140143869631924840)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(70139074114130924028)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140156144132924849)
,p_plug_name=>'Column 1'
,p_static_id=>'column-1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140158983522924850)
,p_plug_name=>'Column 2'
,p_static_id=>'column-2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140157304957924849)
,p_plug_name=>'Configuration'
,p_static_id=>'configuration'
,p_parent_plug_id=>wwv_flow_imp.id(70140156144132924849)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(70140145070282924841)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(70139078287931924039)
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140178138207924859)
,p_plug_name=>'Feedback'
,p_static_id=>'feedback'
,p_parent_plug_id=>wwv_flow_imp.id(70140158983522924850)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(70139078102910924039)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140187228367924864)
,p_plug_name=>'Feedback'
,p_static_id=>'feedback-2'
,p_parent_plug_id=>wwv_flow_imp.id(70140178138207924859)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(70140154888105924848)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(70140179134620924860)
,p_name=>'Report'
,p_static_id=>'report'
,p_parent_plug_id=>wwv_flow_imp.id(70140178138207924859)
,p_template=>4073835273271169698
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value                              as feedback_status, ',
'       (select count(*)',
'          from apex_team_feedback f',
'         where f.application_id  = :APP_ID',
'           and f.feedback_status = l.return_value ) as feedback_count ',
'  from apex_application_lov_entries l',
' where l.application_id      = :APP_ID',
'   and l.list_of_values_name = ''FEEDBACK_STATUS''',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2101991461423792139
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70140185003667924863)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70140183341907924862)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(70140162297877924852)
,p_name=>'User Counts Report'
,p_static_id=>'user-counts-report'
,p_parent_plug_id=>wwv_flow_imp.id(70140159506234924850)
,p_template=>4073835273271169698
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name,',
'       (select count(*)',
'          from apex_appl_acl_user_roles ur',
'         where r.role_id = ur.role_id) user_count,',
'       r.role_id',
'  from apex_appl_acl_roles r',
' where r.application_id = :APP_ID',
' group by r.role_name, r.role_id',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2101991461423792139
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70140171391494924857)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70140167908943924855)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70140169603307924856)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140160470699924850)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70140159506234924850)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-user-plus'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70140174153627924858)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(70140160470699924850)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70140175271054924858)
,p_event_id=>wwv_flow_imp.id(70140174153627924858)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70140162297877924852)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Configuration Options'
,p_alias=>'CONFIGURATION-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(70139080345072924043)
,p_required_patch=>wwv_flow_imp.id(70139078287931924039)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139685062644924498)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139685254260924498)
,p_plug_name=>'Configuration Options'
,p_static_id=>'configuration-options'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end )) "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from sys.dual) m',
' where application_id = :APP_ID ',
' and (feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'',''APPLICATION_CONFIGURATION'') or feature_identifier is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(70139685865702924498)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>33420199845223349019
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139687580150924506)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Feature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139689595640924514)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Current Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139688393696924509)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139687171235924503)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139687964358924507)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_allow_filtering=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139688794074924511)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139689163863924512)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(70139692407598924519)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70139693782221924521)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70139685062644924498)
,p_button_name=>'APPLY_CHANGES'
,p_static_id=>'apply-changes'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70139693065826924520)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(70139685254260924498)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(70139694649240924522)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70139694162669924521)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_static_id=>'update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Configuration Options updated. '
,p_internal_uid=>33420208142190349042
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Activity Dashboard'
,p_alias=>'ACTIVITY-DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(70139080345072924043)
,p_required_patch=>wwv_flow_imp.id(70139077998888924039)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139695758216924522)
,p_plug_name=>'Filters'
,p_static_id=>'filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139694953552924522)
,p_plug_name=>'Hourly Page Events'
,p_static_id=>'hourly-page-events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(70139695048915924522)
,p_region_id=>wwv_flow_imp.id(70139694953552924522)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(70139697097220924524)
,p_chart_id=>wwv_flow_imp.id(70139695048915924522)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from sys.dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10020_TIMEFRAME,1) ) )',
')',
'select w.start_tm log_time,',
'       ( select count(*)',
'           from apex_activity_log l',
'          where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10020_TIMEFRAME'
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(70139698267123924525)
,p_chart_id=>wwv_flow_imp.id(70139695048915924522)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(70139697719749924524)
,p_chart_id=>wwv_flow_imp.id(70139695048915924522)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(70139695679279924522)
,p_name=>'Latest Activity'
,p_static_id=>'latest-activity'
,p_template=>4073835273271169698
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc       as username,',
'       max(time_stamp) as last_activity',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10020_TIMEFRAME )',
'   and userid_lc  is not null',
' group by userid_lc',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10020_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70139707186952924539)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70139706772890924538)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139695218100924522)
,p_plug_name=>'Most Active Pages'
,p_static_id=>'most-active-pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(70139695254553924522)
,p_region_id=>wwv_flow_imp.id(70139695218100924522)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(70139702088324924529)
,p_chart_id=>wwv_flow_imp.id(70139695254553924522)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value',
'from ( select step_id,',
'              count(*) as value',
'         from apex_activity_log',
'        where flow_id = :app_id',
'          and time_stamp >= sysdate - ( 1/24/60/60 * :P10020_TIMEFRAME )',
'          and step_id is not null',
'        group by step_id',
'        order by 2 desc',
'     ) x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10020_TIMEFRAME'
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(70139702691366924529)
,p_chart_id=>wwv_flow_imp.id(70139695254553924522)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(70139703281443924529)
,p_chart_id=>wwv_flow_imp.id(70139695254553924522)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(70139695611565924522)
,p_name=>'Recent Errors'
,p_static_id=>'recent-errors'
,p_template=>4073835273271169698
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sqlerrm    label,',
'       time_stamp value',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10020_TIMEFRAME )',
'   and sqlerrm    is not null',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10020_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70139704494802924533)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70139704910435924534)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139695400101924522)
,p_plug_name=>'Top Users'
,p_static_id=>'top-users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(70139695458732924522)
,p_region_id=>wwv_flow_imp.id(70139695400101924522)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(70139699617500924526)
,p_chart_id=>wwv_flow_imp.id(70139695458732924522)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10020_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10020_TIMEFRAME'
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(70139700213951924527)
,p_chart_id=>wwv_flow_imp.id(70139695458732924522)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(70139700770284924527)
,p_chart_id=>wwv_flow_imp.id(70139695458732924522)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70139708488096924541)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70139694953552924522)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_static_id=>'view-activity-by-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10021:&APP_SESSION.::&DEBUG.:RP,10021::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70139709262952924542)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70139695400101924522)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_static_id=>'view-activity-by-user-2'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10021:&APP_SESSION.::&DEBUG.:RP,10021::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70139708913749924541)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70139695218100924522)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_static_id=>'view-activity-details'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10024:&APP_SESSION.::&DEBUG.:RP,10024::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70139709704441924542)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70139695611565924522)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_static_id=>'view-recent-errors'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10022:&APP_SESSION.::&DEBUG.:RP,10022::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70139695897468924522)
,p_name=>'P10020_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70139695758216924522)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70139695959208924522)
,p_name=>'Change Filters'
,p_static_id=>'change-filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10020_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70139711293328924545)
,p_event_id=>wwv_flow_imp.id(70139695959208924522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70139694953552924522)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70139711787553924546)
,p_event_id=>wwv_flow_imp.id(70139695959208924522)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70139695400101924522)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70139712251019924546)
,p_event_id=>wwv_flow_imp.id(70139695959208924522)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-3'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70139695218100924522)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70139712770657924547)
,p_event_id=>wwv_flow_imp.id(70139695959208924522)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-4'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70139695611565924522)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70139713231555924547)
,p_event_id=>wwv_flow_imp.id(70139695959208924522)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-5'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70139695679279924522)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224845Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10021
begin
wwv_flow_imp_page.create_page(
 p_id=>10021
,p_name=>'Top Users'
,p_alias=>'TOP-USERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(70139080345072924043)
,p_required_patch=>wwv_flow_imp.id(70139077998888924039)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139747984673924640)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139747878781924640)
,p_plug_name=>'Top Users'
,p_static_id=>'top-users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10021_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(70139749018590924641)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>33420262998111349162
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139755504485924660)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139750845845924650)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139754700953924658)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IR Search'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139752921459924655)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139756350120924662)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139752316775924652)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139753878661924656)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139750370745924648)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(70139762013902924671)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139748207629924640)
,p_plug_name=>'Top Users Chart'
,p_static_id=>'top-users-chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10021_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(70139748307207924640)
,p_region_id=>wwv_flow_imp.id(70139748207629924640)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(70139769037555924678)
,p_chart_id=>wwv_flow_imp.id(70139748307207924640)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'       count(*) as page_views',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10021_TIMEFRAME )',
'   and userid     is not null',
' group by userid_lc',
' order by 2'))
,p_ajax_items_to_submit=>'P10021_TIMEFRAME'
,p_series_type=>'donut'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70139763834964924673)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(70139747878781924640)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70139748536893924640)
,p_name=>'P10021_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70139747984673924640)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70139748366168924640)
,p_name=>'P10021_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(70139747984673924640)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70139748036074924640)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10021_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70139766108811924675)
,p_event_id=>wwv_flow_imp.id(70139748036074924640)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70139747878781924640)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70139973866032924682)
,p_event_id=>wwv_flow_imp.id(70139748036074924640)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70139747878781924640)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10022
begin
wwv_flow_imp_page.create_page(
 p_id=>10022
,p_name=>'Application Error Log'
,p_alias=>'APPLICATION-ERROR-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(70139080345072924043)
,p_required_patch=>wwv_flow_imp.id(70139077998888924039)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139740328484924621)
,p_plug_name=>'Application Error Log'
,p_static_id=>'application-error-log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id,',
'       userid,',
'       time_stamp err_time,',
'       sqlerrm,',
'       sqlerrm_component_type,',
'       sqlerrm_component_name',
'  from apex_activity_log',
' where flow_id = :app_id',
'   and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(70139740944212924621)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>33420254923733349142
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139743027452924630)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139743519804924632)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139744248789924635)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139743918123924633)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139742271813924626)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139742704764924628)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(70139746790108924639)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70139747507458924640)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(70139740328484924621)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10023
begin
wwv_flow_imp_page.create_page(
 p_id=>10023
,p_name=>'Page Performance'
,p_alias=>'PAGE-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(70139080345072924043)
,p_required_patch=>wwv_flow_imp.id(70139077998888924039)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139725847787924579)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139725788734924579)
,p_plug_name=>'Page Performance'
,p_static_id=>'page-performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10023_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(70139726384996924580)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>33420240364517349101
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139730035130924596)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139732853488924609)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139729650224924594)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139729248391924592)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139732038097924605)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139730892273924600)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139728513767924589)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139732462412924607)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139727645613924584)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139728070450924587)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139730518613924598)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139731643349924604)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139731315808924602)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139728858429924590)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(70139737819694924617)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70139738506963924618)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(70139725788734924579)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70139725678893924579)
,p_name=>'P10023_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70139725847787924579)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70139725991030924579)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10023_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70139739725655924620)
,p_event_id=>wwv_flow_imp.id(70139725991030924579)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70139725788734924579)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10024
begin
wwv_flow_imp_page.create_page(
 p_id=>10024
,p_name=>'Page Views'
,p_alias=>'PAGE-VIEWS'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(70139080345072924043)
,p_required_patch=>wwv_flow_imp.id(70139077998888924039)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139713974308924548)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139713857746924548)
,p_plug_name=>'Page Views'
,p_static_id=>'page-views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10024_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(70139714502071924548)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>33420228481592349069
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139718357288924564)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139717144044924558)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139719538734924568)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139719173388924567)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139718769320924565)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139717608497924560)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139717925363924562)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139716007928924552)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139716725085924556)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139716349291924554)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224845Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(70139723161296924575)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70139723821609924576)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(70139713857746924548)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70139713779730924548)
,p_name=>'P10024_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70139713974308924548)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70139714086695924548)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10024_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70139725178558924579)
,p_event_id=>wwv_flow_imp.id(70139714086695924548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70139713857746924548)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224846Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224846Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10025
begin
wwv_flow_imp_page.create_page(
 p_id=>10025
,p_name=>'Automations Log'
,p_alias=>'AUTOMATIONS-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Automations Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(70139080345072924043)
,p_required_patch=>wwv_flow_imp.id(70139077998888924039)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139974900710924682)
,p_plug_name=>'Automations Log'
,p_static_id=>'automations-log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id,',
'       l.start_timestamp,',
'       a.name automation_name,',
'       l.status,',
'       l.successful_row_count,',
'       l.error_row_count,',
'       (select count(1) from apex_automation_msg_log m where m.automation_log_id = l.id) msg_count,',
'       l.is_job,',
'       l.end_timestamp',
'  from apex_appl_automations a, apex_automation_log l',
' where a.automation_id = l.automation_id',
' and l.application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(70139975710722924683)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>33420489690243349204
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139982582259924692)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Automation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139987463875924702)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ended'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139985020190924697)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139979728466924688)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139986626229924700)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Scheduled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139985963021924698)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Message'
,p_column_link=>'f?p=&APP_ID.:10026:&APP_SESSION.::&DEBUG.:RP,10026:P10026_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139981109677924691)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139983358754924694)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70139984094152924695)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Successful Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(70139992181511924707)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70139992978824924708)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(70139974900710924682)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10026
begin
wwv_flow_imp_page.create_page(
 p_id=>10026
,p_name=>'Log Messages'
,p_alias=>'LOG-MESSAGES'
,p_page_mode=>'MODAL'
,p_step_title=>'Log Messages'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(70139080345072924043)
,p_required_patch=>wwv_flow_imp.id(70139077998888924039)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70139993973853924708)
,p_plug_name=>'Automation Execution'
,p_static_id=>'automation-execution'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(70139997922289924712)
,p_name=>'Messages'
,p_static_id=>'messages'
,p_template=>2102002977963900996
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select message_timestamp,',
'       message,',
'       message_type,',
'       pk_value',
'  from apex_automation_msg_log',
' where automation_log_id = :P10026_LOG_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>50
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70140002060728924716)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70140000913512924715)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70140003148352924716)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Message Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70140005190693924717)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Primary Key Value'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70139995027646924710)
,p_name=>'P10026_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(70139993973853924708)
,p_prompt=>'Automation'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70139994358670924709)
,p_name=>'P10026_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70139993973853924708)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70139995744895924710)
,p_name=>'P10026_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(70139993973853924708)
,p_prompt=>'Started'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70139996394085924711)
,p_name=>'P10026_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(70139993973853924708)
,p_prompt=>'Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70139997148208924711)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Log Detail'
,p_static_id=>'get-log-detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'  into :P10026_AUTOMATION_NAME,',
'       :P10026_START_TIMESTAMP,',
'       :P10026_STATUS',
'  from apex_automation_log',
' where id = :P10026_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>33420511127729349232
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_imp_page.create_page(
 p_id=>10030
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(70139080345072924043)
,p_required_patch=>wwv_flow_imp.id(70139077916299924039)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140009668274924720)
,p_plug_name=>'Access Control Configuration'
,p_static_id=>'access-control-configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140009731325924720)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140012802228924722)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(70140009731325924720)
,p_button_name=>'APPLY_CHANGES'
,p_static_id=>'apply-changes'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140013453591924722)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70140009731325924720)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(70140014254338924723)
,p_button_id=>wwv_flow_imp.id(70140013453591924722)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(70140016214437924724)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140016778312924724)
,p_name=>'P10030_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(70140009668274924720)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70140017786692924725)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_static_id=>'set-access-control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10030_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>33420531766213349246
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_imp_page.create_page(
 p_id=>10031
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(70139080345072924043)
,p_required_patch=>wwv_flow_imp.id(70139077916299924039)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140018414978924725)
,p_plug_name=>'Manage User Access'
,p_static_id=>'manage-user-access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(70140019414674924726)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:RP:P10032_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>33420533394195349247
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70140024712658924734)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70140022080084924730)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70140023445812924732)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(70140028878959924738)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140030973636924739)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(70140018414978924725)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_static_id=>'add-multiple-users'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140031386461924739)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(70140018414978924725)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140030371604924739)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(70140018414978924725)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70140018564443924725)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(70140018414978924725)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70140032414193924740)
,p_event_id=>wwv_flow_imp.id(70140018564443924725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70140018414978924725)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_imp_page.create_page(
 p_id=>10032
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(70139080345072924043)
,p_required_patch=>wwv_flow_imp.id(70139077916299924039)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140033362853924741)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140033314376924741)
,p_plug_name=>'Form on Manage User Access'
,p_static_id=>'form-on-manage-user-access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140036232746924742)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70140033362853924741)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(70140037298118924743)
,p_button_id=>wwv_flow_imp.id(70140036232746924742)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140039371467924744)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(70140033362853924741)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10032_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140038522351924743)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(70140033362853924741)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10032_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140039020418924744)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(70140033362853924741)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10032_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140040468856924745)
,p_name=>'P10032_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(70140033314376924741)
,p_item_source_plug_id=>wwv_flow_imp.id(70140033314376924741)
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140039805816924745)
,p_name=>'P10032_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70140033314376924741)
,p_item_source_plug_id=>wwv_flow_imp.id(70140033314376924741)
,p_source=>'ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140041792969924746)
,p_name=>'P10032_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(70140033314376924741)
,p_item_source_plug_id=>wwv_flow_imp.id(70140033314376924741)
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140041042693924746)
,p_name=>'P10032_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(70140033314376924741)
,p_item_source_plug_id=>wwv_flow_imp.id(70140033314376924741)
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10032_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(70140043638988924749)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_static_id=>'cannot-remove-yourself-from-administrator'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10032_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10032_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot remove administrator role from yourself.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70140045035274924750)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>33420559014795349271
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70140044125914924749)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(70140033314376924741)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_static_id=>'initialize-form-manage-user-access'
,p_internal_uid=>33420558105435349270
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70140044699292924750)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(70140033314376924741)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_static_id=>'process-form-manage-user-access'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'N',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'N',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>33420558678813349271
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_imp_page.create_page(
 p_id=>10033
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(70139080345072924043)
,p_required_patch=>wwv_flow_imp.id(70139077916299924039)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140045623508924750)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140045766946924750)
,p_plug_name=>'Wizard Container'
,p_static_id=>'wizard-container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140048462143924753)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70140045623508924750)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(70140048993444924753)
,p_button_id=>wwv_flow_imp.id(70140048462143924753)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140045885858924750)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70140045623508924750)
,p_button_name=>'NEXT'
,p_static_id=>'next'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(70140049465522924753)
,p_branch_action=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RP,10034::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(70140045885858924750)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140050702734924754)
,p_name=>'P10033_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(70140045766946924750)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140050052473924754)
,p_name=>'P10033_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(70140045766946924750)
,p_prompt=>'Roles'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140051027902924755)
,p_name=>'P10033_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(70140045766946924750)
,p_prompt=>'Username Format'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70140052612193924756)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_static_id=>'create-collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10033_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10033_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10033_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(70140045885858924750)
,p_internal_uid=>33420566591714349277
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_imp_page.create_page(
 p_id=>10034
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(70139080345072924043)
,p_required_patch=>wwv_flow_imp.id(70139077916299924039)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140045968135924750)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(70140046286681924750)
,p_name=>'Exceptions'
,p_static_id=>'exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(70140046071084924750)
,p_template=>2665811232373458102
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70140057042564924763)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70140056021032924762)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140046569840924750)
,p_plug_name=>'Hidden Items'
,p_static_id=>'hidden-items'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140063717889924767)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_static_id=>'no-valid-users-exist-page-info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140046460916924750)
,p_plug_name=>'&P10034_VALID_COUNT. Users to Add'
,p_static_id=>'p10034-valid-count-users-to-add'
,p_parent_plug_id=>wwv_flow_imp.id(70140046071084924750)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140062174222924766)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_static_id=>'valid-users-exist-page-info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10034_VALID_COUNT),',
'           apex_escape.html(:P10034_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140046071084924750)
,p_plug_name=>'Wizard Container'
,p_static_id=>'wizard-container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140065447607924769)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70140045968135924750)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(70140066224688924769)
,p_button_id=>wwv_flow_imp.id(70140065447607924769)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140065034870924768)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70140045968135924750)
,p_button_name=>'PREVIOUS'
,p_static_id=>'previous'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140046700697924750)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(70140045968135924750)
,p_button_name=>'SUBMIT'
,p_static_id=>'submit'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140067994086924770)
,p_name=>'P10034_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(70140046569840924750)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140067034976924769)
,p_name=>'P10034_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70140046569840924750)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10033_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224847Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224847Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140067515892924770)
,p_name=>'P10034_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(70140046569840924750)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70140068842394924771)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_static_id=>'add-users-to-access-control-list'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10033_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(70140046700697924750)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>33420582821915349292
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70140070013353924771)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>33420583992874349292
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_imp_page.create_page(
 p_id=>10040
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(70139078102910924039)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140070611861924771)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140070509735924771)
,p_plug_name=>'Form on Feedback'
,p_static_id=>'form-on-feedback'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140073769010924774)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70140070611861924771)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(70140074430852924774)
,p_button_id=>wwv_flow_imp.id(70140073769010924774)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140070635185924771)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70140070611861924771)
,p_button_name=>'SUBMIT'
,p_static_id=>'submit'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(70140083616039924782)
,p_branch_action=>'f?p=&APP_ID.:10041:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140074944190924774)
,p_name=>'P10040_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70140070509735924771)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140079494536924779)
,p_name=>'P10040_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(70140070509735924771)
,p_prompt=>'Feedback'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140075698889924775)
,p_name=>'P10040_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(70140070509735924771)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140076945112924776)
,p_name=>'P10040_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(70140070509735924771)
,p_prompt=>'Experience'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140076361967924775)
,p_name=>'P10040_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(70140070509735924771)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from sys.dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(70140082981442924781)
,p_validation_name=>'At least One Feedback Required'
,p_static_id=>'at-least-one-feedback-required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10040_FEEDBACK is null and :P10040_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please provide feedback or your experience.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70140079851084924779)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submit Feedback'
,p_static_id=>'submit-feedback'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_UTIL',
  'package_method', 'SUBMIT_FEEDBACK',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(70140070635185924771)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>33420593830605349300
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(70140081237238924780)
,p_page_process_id=>wwv_flow_imp.id(70140079851084924779)
,p_page_id=>10040
,p_name=>'p_application_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'APP_ID'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(70140080655564924780)
,p_page_process_id=>wwv_flow_imp.id(70140079851084924779)
,p_page_id=>10040
,p_name=>'p_comment'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10040_FEEDBACK'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(70140081747728924781)
,p_page_process_id=>wwv_flow_imp.id(70140079851084924779)
,p_page_id=>10040
,p_name=>'p_page_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10040_PAGE_ID'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(70140082251348924781)
,p_page_process_id=>wwv_flow_imp.id(70140079851084924779)
,p_page_id=>10040
,p_name=>'p_rating'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>4
,p_value_type=>'ITEM'
,p_value=>'P10040_RATING'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_imp_page.create_page(
 p_id=>10041
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Submitted'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(70139078102910924039)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140071090019924771)
,p_plug_name=>'Feedback Submitted'
,p_static_id=>'feedback-submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140070949390924771)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(70140071090019924771)
,p_button_name=>'CLOSE'
,p_static_id=>'close'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'w40p'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(70140085368630924783)
,p_button_id=>wwv_flow_imp.id(70140070949390924771)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10043
begin
wwv_flow_imp_page.create_page(
 p_id=>10043
,p_name=>'Manage Feedback'
,p_alias=>'MANAGE-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(70139080345072924043)
,p_required_patch=>wwv_flow_imp.id(70139078102910924039)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140072346883924771)
,p_plug_name=>'Manage Feedback'
,p_static_id=>'manage-feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(70140101690360924798)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10044:&APP_SESSION.::&DEBUG.:RP:P10044_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>33420615669881349319
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70140109710656924806)
,p_db_column_name=>'CREATED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70140111063884924808)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Filed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70140112644173924809)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70140106042942924803)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70140119148267924821)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70140108342947924805)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70140113218731924811)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(70140077158928924776)
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70140114134967924813)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70140115940141924815)
,p_db_column_name=>'RESPONSE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70140115186030924814)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(70140092480618924790)
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70140117520514924818)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70140118371247924819)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70140116788738924817)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(70140128699134924828)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140129802483924828)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(70140072346883924771)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70140072298161924771)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(70140072346883924771)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70140131033891924829)
,p_event_id=>wwv_flow_imp.id(70140072298161924771)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70140072346883924771)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_imp_page.create_page(
 p_id=>10044
,p_name=>'Feedback'
,p_alias=>'FEEDBACK1'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(70139080345072924043)
,p_required_patch=>wwv_flow_imp.id(70139078102910924039)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140071724733924771)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140071656155924771)
,p_plug_name=>'Form Items Region'
,p_static_id=>'form-items-region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140087447184924786)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70140071724733924771)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(70140088260131924786)
,p_button_id=>wwv_flow_imp.id(70140087447184924786)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140072060597924771)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(70140071724733924771)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10044_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140071825999924771)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70140071724733924771)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140091211054924789)
,p_name=>'P10044_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(70140071656155924771)
,p_prompt=>'Feedback'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140092401027924790)
,p_name=>'P10044_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(70140071656155924771)
,p_prompt=>'Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140090269869924788)
,p_name=>'P10044_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(70140071656155924771)
,p_prompt=>'Filed'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140089166287924787)
,p_name=>'P10044_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70140071656155924771)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140089577370924787)
,p_name=>'P10044_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(70140071656155924771)
,p_prompt=>'Page'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140090812422924788)
,p_name=>'P10044_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(70140071656155924771)
,p_prompt=>'Rating'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'format', 'HTML',
  'send_on_page_submit', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140091702846924789)
,p_name=>'P10044_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(70140071656155924771)
,p_prompt=>'Response'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140095457832924793)
,p_name=>'P10044_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(70140071656155924771)
,p_prompt=>'User Agent'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70140099849718924797)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(70140072060597924771)
,p_internal_uid=>33420613829239349318
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70140100280267924797)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>33420614259788349318
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70140098825914924796)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Delete Feedback'
,p_static_id=>'delete-feedback'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_UTIL',
  'package_method', 'DELETE_FEEDBACK',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(70140072060597924771)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>33420612805435349317
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(70140099447327924796)
,p_page_process_id=>wwv_flow_imp.id(70140098825914924796)
,p_page_id=>10044
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10044_ID'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70140095891748924794)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_static_id=>'load-data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_feedback in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negative"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutral"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positive"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10044_ID )',
'loop',
'   :P10044_PAGE_ID         := l_feedback.page_id||''. ''||l_feedback.page_name;',
'   :P10044_FILED           := l_feedback.filed;',
'   :P10044_RATING_ICON     := l_feedback.rating_icon;',
'   :P10044_FEEDBACK        := l_feedback.feedback;',
'   :P10044_RESPONSE        := l_feedback.public_response;',
'   :P10044_FEEDBACK_STATUS := l_feedback.feedback_status;',
'   :P10044_USER_AGENT      := l_feedback.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>33420609871269349315
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70140096539973924794)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Reply to Feedback'
,p_static_id=>'reply-to-feedback'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_UTIL',
  'package_method', 'REPLY_TO_FEEDBACK',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(70140071825999924771)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>33420610519494349315
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(70140097161663924795)
,p_page_process_id=>wwv_flow_imp.id(70140096539973924794)
,p_page_id=>10044
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10044_ID'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(70140098127544924795)
,p_page_process_id=>wwv_flow_imp.id(70140096539973924794)
,p_page_id=>10044
,p_name=>'p_public_response'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10044_RESPONSE'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(70140097696311924795)
,p_page_process_id=>wwv_flow_imp.id(70140096539973924794)
,p_page_id=>10044
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P10044_FEEDBACK_STATUS'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_imp_page.create_page(
 p_id=>10050
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70139081949427924046)
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(70139078603593924039)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140132378931924831)
,p_plug_name=>'About Page'
,p_static_id=>'about-page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_imp_page.create_page(
 p_id=>10051
,p_name=>'Help'
,p_alias=>'HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(70139078603593924039)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140133355278924831)
,p_plug_name=>'Search Dialog'
,p_static_id=>'search-dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_page in ( select page_title,',
'                       help_text',
'                  from apex_application_pages',
'                 where application_id = :APP_ID',
'                   and page_id = :P10051_PAGE_ID )',
'loop',
'    if l_page.help_text is null then',
'        return ''No help is available for this page.'';',
'    else',
'        return case when substr(l_page.help_text, 1, 3) != ''<p>'' then ''<p>'' end ||',
'               apex_application.do_substitutions(l_page.help_text) ||',
'               case when substr(trim(l_page.help_text), -4) != ''</p>'' then ''</p>'' end;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140133823280924832)
,p_name=>'P10051_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70140133355278924831)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>'Settings'
,p_alias=>'SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70140189171932924864)
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(70140191075886924865)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20260901224849Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224849Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140203279856924872)
,p_plug_name=>'&APP_USER.'
,p_static_id=>'app-user'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224849Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224849Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140205678379924873)
,p_plug_name=>'&APP_USER.'
,p_static_id=>'app-user-2'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER and workspace_id = :WORKSPACE_ID'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_created_on=>wwv_flow_imp.dz('20260901224849Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224849Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(70140206702748924874)
,p_region_id=>wwv_flow_imp.id(70140205678379924873)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260901224849Z')
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140208580642924874)
,p_plug_name=>'Settings'
,p_static_id=>'settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(70140199980781924870)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_created_on=>wwv_flow_imp.dz('20260901224849Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224849Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(70140189171932924864)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(70140190415524924865)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_last_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140194366695924867)
,p_plug_name=>'Push Notifications'
,p_static_id=>'push-notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70140193315594924867)
,p_plug_name=>'Push Notifications Not Supported'
,p_static_id=>'push-notifications-not-supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported u-DisplayNone'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70140192322677924866)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_static_id=>'back'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70140195738411924868)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70140194366695924867)
,p_prompt=>'Enable push notifications on this device'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70140196584421924869)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_static_id=>'change-p20010-enable-push'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70140197472296924869)
,p_event_id=>wwv_flow_imp.id(70140196584421924869)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_static_id=>'subscribe-to-push-notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'apex.pwa.subscribePushNotifications();')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70140198808504924869)
,p_event_id=>wwv_flow_imp.id(70140196584421924869)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_static_id=>'unsubscribe-from-push-notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'apex.pwa.unsubscribePushNotifications();')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260901224848Z')
,p_updated_on=>wwv_flow_imp.dz('20260901224848Z')
,p_created_by=>'LUIZ.SABENCA@DESOSP.COM'
,p_updated_by=>'LUIZ.SABENCA@DESOSP.COM'
);
end;
/
prompt --application/deployment/definition
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
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
