# ============================================================
# SHIFT MANAGER SCREEN NAVIGATION DESIGN
# ============================================================

status: design-fixed-candidate
type: screen-navigation-design
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the navigation structure of ShiftManager,
including admin-side flow and viewer-side flow.

This is a screen-structure design document, not implementation.

# ============================================================
# 2. NAVIGATION PRINCIPLES
# ============================================================

principles:
1. startup must always pass through initial judge
2. admin-side starts from dashboard
3. staff-side starts from today's shift
4. publication must pass through draft confirmation
5. share scope / publish target confirmation must be emphasized
6. notifications should lead deeply into target shift detail

# ============================================================
# 3. WHOLE NAVIGATION MAP
# ============================================================

whole_map:
startup
-> initial judge
-> login / access confirmation
-> role-based home
   - admin side: dashboard
   - staff side: today shift

admin_side:
dashboard
-> shift list
-> shift create / edit
-> draft confirmation
-> publish confirmation
-> share scope setting
-> publish target confirmation
-> publish complete
-> notification / ERP status

viewer_side:
today shift
-> week view
-> month view
-> shift detail

common:
notification center
-> target shift detail

erp_side:
dashboard
-> ERP linkage status
-> export confirmation / retry / error detail

# ============================================================
# 4. STARTUP FLOW
# ============================================================

startup_flow:
A01 startup_initial_judge
-> A02 login_access_confirmation
-> A03 home_dashboard
or
-> D02 today_shift
or
-> access_denied_guide

initial_decision_inputs:
- authentication state
- BusinessOS distribution eligibility
- app access permission
- user role
- default home type

default_home_rule:
admin_roles:
- enterprise_admin
- shift_admin
- department_manager
- team_leader
-> A03 home_dashboard

staff_role:
- staff
-> D02 today_shift

# ============================================================
# 5. ADMIN MAIN FLOW
# ============================================================

admin_main_flow:
A03 home_dashboard
-> B01 shift_list
-> B02 shift_create
-> B03 shift_edit
-> B08 draft_confirmation
-> B09 publish_confirmation
-> C02 share_scope_setting
-> C08 publish_target_confirmation
-> publish_complete

existing_shift_edit_flow:
A03 home_dashboard
-> B01 shift_list
-> B03 shift_edit
-> B08 draft_confirmation
-> B09 publish_confirmation

republish_flow:
A03 home_dashboard
-> B01 shift_list
-> B03 shift_edit
-> B08 draft_confirmation
-> B10 republish_confirmation
-> C08 publish_target_confirmation
-> republish_complete

edit_branching:
B03 shift_edit
- B04 day_edit
- B05 week_edit
- B06 month_edit
- B07 person_assignment_edit

mvp_edit_focus:
- B05 week_edit is the primary edit style

# ============================================================
# 6. SHARE FLOW
# ============================================================

share_main_flow:
A03 home_dashboard
-> C01 share_rule_list
-> C02 share_scope_setting
-> C03 person_share_setting
or C04 team_share_setting
or C05 department_share_setting
or C06 management_scope_setting

publish_side_share_flow:
B09 publish_confirmation
-> C02 share_scope_setting
-> C08 publish_target_confirmation
-> publish_execute

share_stop_flow:
C01 share_rule_list
-> C07 stop_share_confirmation
-> share_stop_complete
-> C01 share_rule_list

share_history_flow:
C01 share_rule_list
-> E06 share_history

# ============================================================
# 7. VIEWER FLOW
# ============================================================

viewer_main_flow:
D02 today_shift
-> D03 week_view
-> D05 shift_detail

month_flow:
D03 week_view
-> D04 month_view
-> D05 shift_detail

visible_shift_flow:
A03 home_dashboard
or D02 today_shift
-> D06 visible_shift_list
-> D07 other_person_shift_view
-> D05 shift_detail

important_rule:
D07 other_person_shift_view is limited to explicit allowed scope only

# ============================================================
# 8. NOTIFICATION FLOW
# ============================================================

notification_flow:
A03 home_dashboard
-> A04 notification_center
-> D05 shift_detail

push_deep_link_flow:
push notification
-> A04 notification_center
or
-> D05 shift_detail

urgent_change_flow:
urgent_change notification
-> D05 shift_detail
-> latest publication review

# ============================================================
# 9. ERP FLOW
# ============================================================

erp_main_flow:
A03 home_dashboard
-> E01 erp_linkage_status
-> E02 erp_export_confirmation
-> E03 erp_export_history
-> E04 error_detail

publish_to_erp_flow:
B09 publish_confirmation
-> publish_complete
-> E02 erp_export_confirmation
-> E01 erp_linkage_status

retry_flow:
E01 erp_linkage_status
-> E04 error_detail
-> retry_execute
-> E01 erp_linkage_status

# ============================================================
# 10. ROLE-BASED KEY FLOWS
# ============================================================

shift_admin_flow:
dashboard
-> shift_list
-> edit
-> draft_confirmation
-> publish_confirmation
-> share_scope_setting
-> publish_target_confirmation
-> ERP check

department_manager_flow:
dashboard
-> department shift list
-> edit
-> draft_confirmation
-> publish_confirmation
-> department share setting

team_leader_flow:
dashboard
-> team shift list
-> edit support
-> draft confirmation

staff_flow:
today_shift
-> week_view
-> shift_detail
-> notification_center

integration_operator_flow:
dashboard
-> ERP linkage status
-> error detail
-> retry

# ============================================================
# 11. MVP MINIMUM FLOW
# ============================================================

mvp_minimum_flow:
startup
-> initial judge
-> login / access confirmation
-> admin: dashboard
-> staff: today shift

admin:
dashboard
-> shift list
-> shift edit
-> draft confirmation
-> publish confirmation
-> share scope setting
-> publish target confirmation

staff:
today shift
-> week view
-> shift detail

common:
dashboard / today shift
-> notification center
-> shift detail

admin:
dashboard
-> ERP linkage status

# ============================================================
# 12. IMPORTANT DECISIONS
# ============================================================

important_points:
- draft_confirmation is mandatory before publication
- publish_target_confirmation must exist for share safety
- staff starts from today_shift
- urgent_change should lead deeply to detail
- ERP flow is connected but not fused into core edit flow

# ============================================================
# 13. CONCLUSION
# ============================================================

ShiftManager naturally separates into:
- admin navigation
- viewer navigation

key_flows:
admin:
dashboard -> shift_list -> shift_edit -> draft_confirmation -> publish_confirmation -> share_scope_setting

viewer:
today_shift -> week_view -> shift_detail

