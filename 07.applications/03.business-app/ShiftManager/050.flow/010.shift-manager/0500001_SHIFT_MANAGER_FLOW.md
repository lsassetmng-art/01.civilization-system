# ============================================================
# SHIFT MANAGER FLOW
# ============================================================

status: canonical
layer: flow
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

flow_1_create_shift:
1. authorized user opens editor
2. creates or updates draft schedule
3. stores assignments in draft state
4. reviews completeness

flow_2_publish_shift:
1. authorized user publishes draft
2. publication version is created
3. public visibility is refreshed
4. notifications may be queued
5. ERP export eligibility becomes available

flow_3_share_shift:
1. sharing rule exists or is updated
2. visibility scope is recalculated
3. permitted users can view schedule
4. non-permitted users remain blocked

flow_4_view_shift_mobile:
1. user opens mobile app
2. application resolves visibility
3. latest permitted published shift is returned
4. user sees day/week/month or detail view

flow_5_revise_shift:
1. manager edits next draft or correction draft
2. revised schedule is republished
3. recipients see updated published version
4. history remains preserved

flow_6_erp_export:
1. published schedule is marked for company-wide linkage
2. ERP connector sends formal data
3. linkage status is recorded
