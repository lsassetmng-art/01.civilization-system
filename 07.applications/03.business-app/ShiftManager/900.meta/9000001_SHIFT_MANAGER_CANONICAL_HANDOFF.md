# ============================================================
# SHIFT MANAGER CANONICAL HANDOFF
# ============================================================

status: canonical-handoff
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. CURRENT POSITION
# ============================================================

ShiftManager has reached near-design-complete state.

This handoff fixes:
- application definition
- screen structure
- role / share rules
- physical DB schema direction
- API exact contract direction
- ERP integration direction
- notification direction
- RLS / authorization direction
- package / module split direction
- API DTO direction
- screen navigation direction
- auto draft generation direction
- state transition direction
- full generation input format

This application is now ready for:
- implementation-facing decomposition
- physical execution DDL refinement
- generation-oriented transformation
- next-chat continuation without concept loss

# ============================================================
# 1. APPLICATION DEFINITION
# ============================================================

official_japanese_name:
- シフト管理

official_english_name:
- ShiftManager

short_name:
- Shift

definition:
ShiftManager is a BusinessOS-distributed, mobile-first business application
whose central functions are:
- shift creation
- condition-based automatic draft generation
- controlled shift sharing

Authorized users can create, edit, validate, auto-generate,
publish, republish, and share shifts in realtime
to explicitly permitted people.
Permitted users can then view updated shifts on smartphones.

core_flow:
create or auto-generate draft
-> review / manual adjust
-> validate before publication
-> publish
-> share to permitted people
-> reflect updates in realtime
-> optionally export published state to ERP

# ============================================================
# 2. POSITIONING
# ============================================================

position:
- ShiftManager is the field-operation front
- ERP is the formal enterprise master / integration target
- ShiftManager is not payroll
- ShiftManager is not accounting
- ShiftManager is not ERP replacement

distribution_model:
- distributed through BusinessOS
- installable by allowed targets
- visible only to explicitly allowed people
- same sharing-boundary style as NameCardManager

# ============================================================
# 3. FIXED CORE DECISIONS
# ============================================================

fixed_core:
- center = shift creation + controlled sharing
- condition-based automatic draft generation is supported
- auto generation creates draft only
- auto-generated drafts must remain reviewable and editable
- smartphone realtime viewing is required
- only explicitly permitted people may view
- only published shifts may be shared
- only published shifts may be exported to ERP
- drafts must never be exported
- team_leader cannot publish
- team_leader cannot manage share rules
- staff can view self + explicit shared scope only
- department_manager is limited to own department
- integration_operator is linkage-centered and cannot edit content
- same_day default notification = 1 hour before shift start
- schema name = app_shift_manager
- ERP export initial mode = manual + retry
- API separation initial mode = permission-based, not URL-based

# ============================================================
# 4. USER / ROLE MODEL
# ============================================================

roles:
- enterprise_admin
- shift_admin
- department_manager
- team_leader
- staff
- integration_operator

role_summary:
enterprise_admin:
- enterprise-wide supervision

shift_admin:
- main operator for create / edit / publish / republish / share
- may use auto generation

department_manager:
- operate own department only
- may use auto generation in own department

team_leader:
- helper operator
- conditional draft create/edit
- conditional auto-generation support
- no publish
- no share-rule edit

staff:
- self viewing
- explicitly shared viewing only

integration_operator:
- ERP linkage state / export / retry
- no content edit

# ============================================================
# 5. SCREEN STRUCTURE
# ============================================================

screen_groups:
common:
- startup_initial_judge
- login_access_confirmation
- home_dashboard
- notification_center
- settings
- account_affiliation_info

creation:
- shift_list
- shift_create
- shift_edit
- day_edit
- week_edit
- month_edit
- person_assignment_edit
- draft_confirmation
- publish_confirmation
- republish_confirmation

sharing:
- share_rule_list
- share_scope_setting
- person_share_setting
- team_share_setting
- department_share_setting
- management_scope_setting
- stop_share_confirmation
- publish_target_confirmation

viewing:
- my_shift
- today_shift
- week_view
- month_view
- shift_detail
- visible_shift_list
- other_person_shift_view

auto_generation:
- auto_generation_condition_setting
- auto_generation_execute_confirmation
- auto_generation_result_review
- generation_warning_list

erp_and_admin:
- erp_linkage_status
- erp_export_confirmation
- erp_export_history
- error_detail
- publication_history
- share_history

mvp_required_screens:
- startup_initial_judge
- login_access_confirmation
- home_dashboard
- shift_list
- shift_edit
- draft_confirmation
- publish_confirmation
- share_rule_list
- share_scope_setting
- my_shift
- week_view
- shift_detail
- notification_center
- erp_linkage_status
- auto_generation_condition_setting
- auto_generation_result_review

ui_direction:
- mobile-first
- week-centered editing first
- draft vs published must be visually obvious
- urgent change must be emphasized
- share scope must be understandable before publish
- generation warnings must be easy to locate and fix

# ============================================================
# 6. SHARE / VISIBILITY MODEL
# ============================================================

share_units:
- person
- team
- department
- management_scope

rules:
- drafts are not shared
- published shifts enter visibility evaluation
- explicit sharing required
- wider scope changes require stronger confirmation
- publish target confirmation is mandatory-grade

viewer_rules:
staff:
- own shifts visible
- explicit shared scope visible
- broad other-person visibility denied

team_leader:
- own team published visibility
- draft visibility only in handled scope

department_manager:
- own department published visibility
- own department draft visibility

shift_admin:
- handled scope draft / published visibility
- can manage share settings

enterprise_admin:
- broad supervisory visibility as needed

visibility_model:
1. role evaluation
2. scope evaluation
3. explicit share evaluation
4. precomputed view_scope creation

# ============================================================
# 7. DATABASE MODEL SUMMARY
# ============================================================

schema:
- app_shift_manager

core_tables:
- shift_schedule
- shift_assignment
- shift_publication
- shift_publication_assignment
- shift_share_rule
- shift_share_rule_target
- shift_view_scope
- shift_notification
- erp_linkage_state
- shift_publish_history
- shift_share_history
- shift_access_audit
- shift_generation_rule
- shift_generation_result
- shift_generation_warning

critical_physical_decisions:
- separate draft assignments and publication assignments
- separate share rules and evaluated view scopes
- ERP export targets publication only
- auto generation remains draft-side only

status_sets:
shift_schedule:
- draft
- published
- superseded
- closed

shift_publication:
- active
- superseded
- cancelled

shift_notification:
- queued
- sent
- failed
- read

erp_linkage_state:
- not_required
- pending
- exporting
- success
- failed

generation_mode:
- manual
- auto_generated
- auto_generated_then_edited

recommended_functions:
- fn_set_updated_at
- fn_publish_shift
- fn_rebuild_shift_view_scope
- fn_queue_shift_notifications
- fn_mark_erp_export_pending
- fn_current_person_id
- fn_current_company_id
- fn_has_role
- fn_can_view_publication
- fn_can_view_person_in_publication
- fn_auto_generate_shift_draft

# ============================================================
# 8. API MODEL SUMMARY
# ============================================================

api_groups:
- bootstrap
- schedules
- assignments
- validate-for-publication
- publish / republish
- share rules
- share preview
- mobile/self views
- notifications
- ERP linkage
- audit/history
- generation rules/results/warnings

critical_endpoints:
- GET /api/shift-manager/v1/bootstrap
- POST /api/shift-manager/v1/schedules/{schedule_id}/validate-for-publication
- POST /api/shift-manager/v1/schedules/{schedule_id}/publish
- POST /api/shift-manager/v1/schedules/{schedule_id}/republish
- GET /api/shift-manager/v1/publications/{publication_id}/share-preview
- GET /api/shift-manager/v1/me/shifts/today
- GET /api/shift-manager/v1/me/shifts/week
- GET /api/shift-manager/v1/erp-linkages
- POST /api/shift-manager/v1/publications/{publication_id}/export-erp
- POST /api/shift-manager/v1/publications/{publication_id}/retry-export-erp
- POST /api/shift-manager/v1/generation-rules
- POST /api/shift-manager/v1/schedules/auto-generate
- GET /api/shift-manager/v1/schedules/{schedule_id}/generation-result
- GET /api/shift-manager/v1/schedules/{schedule_id}/generation-warnings

api_principles:
- separate draft APIs and publication APIs
- view APIs return only allowed results
- ERP export is publication_id based
- validate-for-publication and share-preview are first-class APIs
- auto generation belongs to draft-side APIs

# ============================================================
# 9. ERP INTEGRATION SUMMARY
# ============================================================

direction:
- ERP -> ShiftManager for formal master references
- ShiftManager -> ERP for publication export

rules:
- export only published state
- export unit = publication_id
- initial mode = manual export + retry
- republication sends whole new published state
- ERP remains formal master source

reference_items:
- person
- department
- team
- office
- management scope references if needed

# ============================================================
# 10. NOTIFICATION SUMMARY
# ============================================================

notification_types:
- publish
- republish
- same_day
- urgent_change

rules:
- notify only published states
- notify only permitted viewers
- in-app notification mandatory
- push notification recommended
- same_day default = 1 hour before
- urgent_change allowed for shift_admin and department_manager
- failed notification must be retryable
- auto generation itself does not notify staff before publication

# ============================================================
# 11. AUTO GENERATION SUMMARY
# ============================================================

position:
- draft-side support function
- not a publication function
- not a sharing function
- not an ERP trigger by itself

rules:
- generate draft only
- preserve shortage/warning information
- allow manual adjustment
- keep publish manual
- do not bypass validate-for-publication

outputs:
- generated draft
- generation summary
- warning list
- unassigned list

# ============================================================
# 12. RLS / AUTHORIZATION SUMMARY
# ============================================================

authorization_model:
- company boundary
- role boundary
- share/view-scope boundary

rls_core_rules:
- draft side = management responsibility based
- published side = view_scope based
- share-rule management = admin-side only
- notification visibility = target-person centered
- ERP linkage visibility = integration-role centered
- generation rule/result visibility = manager-side only

critical_security_goal:
staff must never gain uncontrolled access
to other people's published shifts.

# ============================================================
# 13. FULL GENERATION READINESS
# ============================================================

already_prepared:
- integrated design
- application definition
- pre-implementation decision sheet
- screen inventory
- role and share rules
- physical database schema
- API exact contract
- ERP integration specification
- notification specification
- RLS / authorization policy direction
- package / module split design
- API DTO inventory
- screen navigation design
- auto shift generation design
- state transition design with auto generation
- full generation input format

ready_for_next:
- implementation-facing decomposition
- exact physical DDL refinement
- App Development Studio input usage
- next chat continuation

# ============================================================
# 14. REMAINING NON-BLOCKING ITEMS
# ============================================================

non_blocking_open_items:
- final package confirmation
- UUID generation method
- exact push provider
- exact ERP transport shape
- bulk assignment API timing
- final color code tokens
- richer generation optimization rules

These are not core-concept blockers.

# ============================================================
# 15. RECOMMENDED NEXT STEPS
# ============================================================

recommended_order:
1. exact physical DDL execution version
2. implementation-facing package / module split refinement if needed
3. API DTO exact payload file set
4. RLS draft SQL file set
5. App Development Studio full generation execution input use

# ============================================================
# 16. CONCLUSION
# ============================================================

ShiftManager is now defined as:

A BusinessOS-distributed, mobile-first business application
for shift creation, condition-based automatic draft generation,
and controlled realtime sharing,
with explicit visibility control and publication-based ERP integration.

Its design center is:
- create or auto-generate draft shifts
- review and adjust safely
- publish safely
- share only to permitted people
- let users see updates immediately on smartphones
- preserve enterprise consistency through ERP linkage


# SHIFT_MANAGER_COMMON_COMPONENT_REFERENCE_BEGIN
# ============================================================
# 19. COMMON COMPONENT REFERENCE
# ============================================================

common_component_canonical_location:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/00.application-common-components

common_component_reference_rule:
ShiftManager should reuse shared application-common-components
where compatible,
instead of redefining duplicate app-local capabilities.

existing_common_components_to_reuse:
- Submission Common
- ERP Publication Capability
- Online Sync Common
- App-internal Sharing Common
- External Notification Delivery Common
- Channel Routing Common
- Approval / Review Surface Common
- Draft / Work-in-progress Common
- Activity Log / Audit Trail Common
- Assignment / Work Queue Common
- Install Guidance / Cross-app Launch Common

shiftmanager_derived_common_component_candidates:
- Publication / Versioned Snapshot Common
- Visibility Scope Evaluation Common
- Rule-based Draft Generation Common
- Generation Warning / Shortage Review Common
- Schedule / Time-slot Planning Common
- Publish Target Confirmation Common

reuse_mapping_summary:
publication_related:
- Submission Common
- ERP Publication Capability
- Approval / Review Surface Common
- Publication / Versioned Snapshot Common

sharing_and_visibility_related:
- App-internal Sharing Common
- Visibility Scope Evaluation Common
- Publish Target Confirmation Common

draft_and_generation_related:
- Draft / Work-in-progress Common
- Rule-based Draft Generation Common
- Generation Warning / Shortage Review Common
- Schedule / Time-slot Planning Common

notification_related:
- External Notification Delivery Common
- Channel Routing Common

audit_and_operation_related:
- Activity Log / Audit Trail Common
- Online Sync Common

installation_and_distribution_related:
- Install Guidance / Cross-app Launch Common

important_rule:
ShiftManager-specific design should remain app-local only when:
- the meaning is truly unique to ShiftManager
- no existing common component fits
- promoting it to common would reduce clarity

otherwise:
- reuse existing common component
- or add the new concept to the application-common-components canonical set

# SHIFT_MANAGER_COMMON_COMPONENT_REFERENCE_END

# SHIFT_MANAGER_PDF_EXPORT_REFERENCE_BEGIN
# ============================================================
# PDF EXPORT EXTENSION
# ============================================================

pdf_export_added:
- draft PDF review export
- publication PDF printable export
- personal printable export
- department / board printable export

important_rule:
publication_pdf is the formal printable distribution basis.

# SHIFT_MANAGER_PDF_EXPORT_REFERENCE_END

# SHIFT_MANAGER_FINAL_DETAIL_REFERENCE_BEGIN
# ============================================================
# FINAL IMPLEMENTATION-FACING DETAIL REFERENCE
# ============================================================

newly_fixed_after_handoff_base:
- physical DDL execution design
- API request/response exact payload spec
- API exact payload PDF extension
- auto generation condition JSON spec
- notification template fixed set
- screen input item definition table
- RLS SQL draft split set
- PDF export specification

current_readiness_after_detail_fix:
ShiftManager is now fixed not only at concept/design level,
but also across major implementation-facing detail layers.

this means:
- payload ambiguity is substantially reduced
- generation rule JSON shape is fixed
- security draft files are physically split
- printable PDF direction is included
- screen input scope is stabilized

recommended_next_step_order:
1. exact execution SQL pack
2. validation matrix by endpoint
3. print layout detail design
4. generation algorithm refinement
5. implementation start package if needed

# SHIFT_MANAGER_FINAL_DETAIL_REFERENCE_END

# SHIFT_MANAGER_SUBSCRIPTION_POLICY_BEGIN
# ============================================================
# SUBSCRIPTION / TRIAL / READ-ONLY POLICY
# ============================================================

newly_fixed_business_policy:
- monthly fixed price: 900 JPY
- unlimited users
- no initial fee
- initial 3-day trial
- inactive state becomes read-only viewing mode

inactive_read_only_scope:
- self shift viewing
- already visible published shift viewing
- notification viewing

disabled_when_inactive:
- create
- edit
- auto generation
- publish / republish
- share management
- new PDF export
- ERP export

wording_rule:
Use:
- subscription-based application
- monthly-use application

Do not prefer:
- SaaS

# SHIFT_MANAGER_SUBSCRIPTION_POLICY_END

# SHIFT_MANAGER_LICENSE_DEVICE_POLICY_BEGIN
# ============================================================
# LICENSE / DEVICE POLICY
# ============================================================

newly_fixed_business_model:
- site-based monthly pricing
- 900 JPY per site
- unlimited users within site
- no initial fee
- 3-day initial trial
- PC / smartphone dual-device usage under one site license

important_note:
Do not treat this as separate paid PC and smartphone licenses.
Treat it as one site-based license with multi-device usage.

business_effect:
- easier site rollout
- easier pricing explanation
- easier enterprise adoption path

# SHIFT_MANAGER_LICENSE_DEVICE_POLICY_END

# SHIFT_MANAGER_DEVICE_FUNCTION_POLICY_BEGIN
# ============================================================
# DEVICE FUNCTION POLICY
# ============================================================

newly_fixed_device_rule:
- same core features on PC and smartphone
- UI optimization difference only
- no business-capability split by device type

important_meaning:
This keeps:
- license clarity
- subscription clarity
- operational clarity
- multi-operator consistency

# SHIFT_MANAGER_DEVICE_FUNCTION_POLICY_END

# SHIFT_MANAGER_ADDITIONAL_FEATURES_BEGIN
# ============================================================
# ADDITIONAL COMPETITIVE FEATURES
# ============================================================

newly_adopted_extensions:
- headquarters site management dashboard
- shortage / difference / unconfirmed visualization
- requested day-off submission
- change confirmation flag
- lightweight multi-site analytics
- scheduled automatic draft generation

future_candidates:
- shift exchange request
- support request

important_rule:
Scheduled automatic generation remains draft-only
and must not publish automatically.

# SHIFT_MANAGER_ADDITIONAL_FEATURES_END

# SHIFT_MANAGER_MULTILINGUAL_POLICY_BEGIN
# ============================================================
# MULTILINGUAL SUPPORT POLICY
# ============================================================

newly_fixed_language_rule:
- Japanese-first
- English-ready
- code-fixed internals
- localized display/output layer only

important_note:
Do not localize API keys, DB columns, internal enum values, feature codes, or error codes.

# SHIFT_MANAGER_MULTILINGUAL_POLICY_END

# SHIFT_MANAGER_SUPPORTED_DEVICE_POLICY_BEGIN
# ============================================================
# SUPPORTED DEVICE POLICY
# ============================================================

newly_fixed_supported_device_rule:
- iphone supported
- android supported
- pc supported
- tablet supported
- same core feature set across all supported device types

# SHIFT_MANAGER_SUPPORTED_DEVICE_POLICY_END
