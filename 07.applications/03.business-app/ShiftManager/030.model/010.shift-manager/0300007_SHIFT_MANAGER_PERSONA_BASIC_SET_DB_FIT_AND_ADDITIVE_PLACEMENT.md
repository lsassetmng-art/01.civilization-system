# ============================================================
# SHIFT MANAGER PERSONA BASIC SET DB FIT AND ADDITIVE PLACEMENT
# ============================================================

status: design-extension
type: persona-basic-set-db-fit-and-additive-placement
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes how ShiftManager should be aligned
against the Persona-side DB dump
when that dump contains only the basic set.

important_position:
The Persona dump is treated as:
- existing foundation reference
not as:
- proof that ShiftManager additional tables already exist

# ============================================================
# 2. BASIC ASSUMPTION
# ============================================================

basic_assumption:
- Persona-side dump contains the base/foundation set
- ShiftManager-specific additional feature tables are not assumed to exist yet
- new ShiftManager tables should therefore be treated as additive placement targets

# ============================================================
# 3. WHAT SHOULD BE REUSED FROM THE BASIC SET
# ============================================================

foundation_reference_axes:
- company_id
- person_id
- site_id
- office/department/team reference axes if available
- user/account/affiliation reference axes if available

meaning:
ShiftManager should align to the basic identity and affiliation axes,
rather than inventing conflicting parallel IDs.

# ============================================================
# 4. WHAT SHOULD REMAIN SHIFTMANAGER-OWNED
# ============================================================

shiftmanager_owned_tables:
- shift_schedule
- shift_assignment
- shift_publication
- shift_publication_assignment
- shift_share_rule
- shift_view_scope
- shift_notification
- shift_generation_rule
- shift_generation_result
- shift_generation_warning
- shift_pdf_export_history
- shift_site_license
- shift_site_subscription_status
- shift_site_feature_gate_log
- shift_requested_day_off
- shift_publication_difference
- shift_change_confirmation
- shift_auto_generation_schedule
- shift_auto_generation_execution
- shift_site_dashboard_snapshot
- shift_site_analytics_snapshot

meaning:
Business/application behavior remains app-owned,
while identity/affiliation linkage should fit the basic set.

# ============================================================
# 5. ADDITIVE PLACEMENT RULE
# ============================================================

additive_placement_rule:
- do not assume ShiftManager tables already exist in Persona dump
- place new tables additively under ShiftManager schema/domain
- align foreign-key-style reference direction to existing basic IDs
- avoid redefining person/company/site master concepts inside ShiftManager tables

# ============================================================
# 6. NAMING FIT RULE
# ============================================================

naming_fit_rule:
- preserve existing ID naming where foundation already implies it
- use company_id/person_id/site_id consistently
- avoid alternate names like employee_id/member_id/store_member_id unless foundation truly requires them
- keep internal status/code naming in existing ShiftManager style

# ============================================================
# 7. PRACTICAL FIT REVIEW CHECKLIST
# ============================================================

fit_review_checklist:
- does the basic set already define company identity axis
- does the basic set already define person identity axis
- does the basic set already define site/store axis
- are department/team/office concepts already named in a reusable way
- do new ShiftManager tables use those existing axes consistently
- do new tables avoid duplicating foundation master semantics

# ============================================================
# 8. TABLE GROUPS BY FIT TYPE
# ============================================================

fit_type_a_direct_foundation_reference:
- shift_schedule
- shift_assignment
- shift_publication
- shift_publication_assignment
- shift_requested_day_off
- shift_change_confirmation
- shift_site_dashboard_snapshot
- shift_site_analytics_snapshot

fit_type_b_app_internal_behavior_tables:
- shift_share_rule
- shift_view_scope
- shift_generation_rule
- shift_generation_result
- shift_generation_warning
- shift_pdf_export_history
- shift_auto_generation_schedule
- shift_auto_generation_execution

fit_type_c_subscription/license_tables:
- shift_site_license
- shift_site_subscription_status
- shift_site_feature_gate_log

# ============================================================
# 9. IMPORTANT NON-ASSUMPTION
# ============================================================

important_non_assumption:
The Persona basic-set dump should not be used to conclude:
- that ShiftManager additional tables already exist
- that ShiftManager naming is fully confirmed by live schema
- that all additional foreign keys can be finalized today

Instead it should be used to:
- confirm foundation ID axes
- confirm basic naming direction
- confirm additive placement safety

# ============================================================
# 10. CONCLUSION
# ============================================================

ShiftManager should be fitted to the Persona basic set
as an additive application domain.

Foundation identity axes are reused.
ShiftManager operational tables are added on top.

