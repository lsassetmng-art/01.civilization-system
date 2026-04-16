# ============================================================
# SHIFT MANAGER ERP INTEGRATION SPECIFICATION
# ============================================================

status: draft-fixed-candidate
type: erp-integration-specification
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. BASIC POLICY
# ============================================================

ShiftManager is the operational front
for shift creation, publication, and sharing.
ERP is the formal authority
for enterprise masters and company-wide formal integration.

integration_principles:
- ShiftManager is the primary field-operation UI
- ERP is the formal enterprise integration target
- only published shifts may be exported
- drafts must never be exported
- ERP masters are referenced from ERP
- export failure must be visible and retryable

# ============================================================
# 2. PURPOSES OF ERP LINKAGE
# ============================================================

- align with employee formal data
- align with department / office / organization masters
- share published shifts formally at enterprise scope
- connect to downstream core processing
- maintain enterprise operational control

# ============================================================
# 3. RESPONSIBILITY BOUNDARY
# ============================================================

shiftmanager_side:
- draft creation
- editing
- publication
- republication
- share settings
- publication fixing
- ERP export request
- export status monitoring

erp_side:
- employee master
- company / organization master
- department master
- office master
- enterprise acceptance
- downstream core processing

# ============================================================
# 4. BASIC DIRECTION
# ============================================================

recommended_direction:
- main direction is ShiftManager -> ERP
- reference direction is ERP -> ShiftManager for masters

natural_flow:
- reference formal masters from ERP
- create and publish shifts in ShiftManager
- export published shifts to ERP

# ============================================================
# 5. ERP MASTER REFERENCES
# ============================================================

employee_reference:
- person_id
- employee_code
- display_name
- active_flag
- employment_status
- department_id
- team_id
- office_id

organization_reference:
- company_id
- department_id
- department_code
- department_name
- parent_department_id

team_reference:
- team_id
- team_code
- team_name
- department_id

office_reference:
- office_id
- office_code
- office_name
- office_type

management_scope_reference:
- manager_person_id
- manageable_department_id
- manageable_team_id
- manageable_office_id

# ============================================================
# 6. ERP EXPORT TARGET
# ============================================================

only_published_data:
ERP export target must be published shift data only.

recommended_export_unit:
publication

reasons:
- export fixed published state
- prevent draft contamination
- simpler republication replacement handling

header_fields:
- publication_id
- schedule_id
- company_id
- schedule_code
- schedule_name
- target_scope_type
- target_scope_id
- period_start_date
- period_end_date
- publication_version_no
- published_at
- published_by_person_id

detail_fields:
- publication_assignment_id
- person_id
- shift_date
- start_time
- end_time
- role_code
- office_id
- department_id
- team_id
- memo

meta_fields:
- export_mode
- exported_by
- exported_at
- source_application = ShiftManager

# ============================================================
# 7. EXPORT TIMING
# ============================================================

base_recommendation:
- export becomes possible after publication
- both manual and automatic modes should be supported eventually

initial_recommendation:
- store erp_export_required on publication
- execute export manually or semi-automatically
- manage export state in list form

future_extensions:
- automatic export after publication
- night batch export
- republication resend
- bulk resend by department

# ============================================================
# 8. EXPORT MODES
# ============================================================

manual:
- initiated by operator
- safer
- suitable for initial rollout

automatic:
- sent automatically after publication
- lower operation burden
- requires strong monitoring

retry:
- used after failure
- retried per publication

# ============================================================
# 9. EXPORT STATUS
# ============================================================

export_status_values:
- not_required
- pending
- exporting
- success
- failed

meanings:
- not_required: not an ERP target
- pending: waiting for export
- exporting: in progress
- success: completed
- failed: failed and observable

# ============================================================
# 10. REPUBLICATION RULE
# ============================================================

recommended_rule:
- new publication becomes export target
- old publication becomes superseded
- ERP should be able to identify the latest version

recommended_identifiers:
- schedule_id + publication_version_no
or
- publication_id as the ERP-side reference

important_rule:
send whole new published state,
not only raw draft differences.

# ============================================================
# 11. MASTER MISMATCH HANDLING
# ============================================================

examples:
- invalid person_id in ERP
- missing department_id
- invalid office_id
- unknown management scope

policy:
1. detect as much as possible before publication
2. revalidate on ERP export
3. set state to failed on error
4. store error details
5. allow resend after correction

# ============================================================
# 12. FAILURE OPERATION
# ============================================================

mandatory_capabilities:
- visible failed state list
- publication-based retry
- store last error
- store request_id / external_reference_id

recommended_display:
- target period
- publication_id
- export_status
- last error
- updated_at
- retry availability

# ============================================================
# 13. ERP ACCEPTANCE EXPECTATION
# ============================================================

header_acceptance:
- which company
- which department / office / scope
- which period
- which publication version

detail_acceptance:
- who
- on which date
- from when to when
- where
- in which role

state_acceptance:
- active publication
- superseded publication
- resend marker

# ============================================================
# 14. INTEGRATION AUDIT
# ============================================================

store_audit_items:
- export_requested_by
- export_requested_at
- exported_at
- export_mode
- export_status
- retry_count
- last_error_code
- last_error_message
- external_reference_id

# ============================================================
# 15. SUPPORTING APIs
# ============================================================

supporting_apis:
- GET /api/shift-manager/v1/erp-linkages
- POST /api/shift-manager/v1/publications/{publication_id}/export-erp
- POST /api/shift-manager/v1/publications/{publication_id}/retry-export-erp
- GET /api/shift-manager/v1/publications/{publication_id}/erp-linkage

# ============================================================
# 16. MVP MINIMUM ERP RANGE
# ============================================================

mvp_minimum:
- ERP master reference keys
- publication-based export
- manual export
- export state management
- retry after failure
- export history view

later:
- automatic export
- diff export
- advanced consistency audit
- bidirectional sync
- actuals linkage

# ============================================================
# 17. CURRENT RECOMMENDED FIXATION
# ============================================================

recommended_defaults:
- export only published state
- export unit is publication_id
- initial mode is manual export + retry
- ERP is the formal master reference source
- ShiftManager remains the field creation / publish / share front

