# ============================================================
# SHIFT MANAGER INTEGRATED
# ============================================================

status: canonical
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. APPLICATION IDENTITY
# ============================================================

official_japanese_name:
- シフト管理

official_english_name:
- ShiftManager

short_name:
- Shift

application_definition:
ShiftManager is a BusinessOS-distributed,
subscription-based, mobile-first shift management application
for:
- shift creation
- condition-based automatic draft generation
- controlled realtime sharing
- printable PDF export
- publication-based ERP integration
- multi-site operational visibility

It supports safe draft preparation,
human-reviewed publication,
explicit visibility control,
and practical operation across company PC and company smartphone.

# ============================================================
# 2. BUSINESS POSITIONING
# ============================================================

service_positioning:
- subscription-based application
- monthly-use application

avoid_expression:
- SaaS

core_business_message:
ShiftManager is designed to be:
- easy to understand
- easy to adopt per site/store
- fixed-price and low-friction
- operationally safe
- usable from both PC and smartphone

# ============================================================
# 3. PRICING / LICENSE / DEVICE MODEL
# ============================================================

pricing_model:
- 900 JPY per site / month
- unlimited users within site
- no initial fee
- initial 3-day trial

license_model:
- site-based fixed monthly pricing
- one site license covers both company PC and company smartphone usage
- pricing is not per user
- pricing is not separated into PC and smartphone paid licenses

business_value:
- no user-count pricing anxiety
- easy site/store rollout
- easier enterprise approval
- easier company-wide estimation by number of sites
- multiple shift operators can work inside one site license

device_policy:
- PC and smartphone support the same core feature set
- no fundamental business feature split by device type
- differences are limited to UI optimization and usability

device_rule:
Authorization and feature availability depend on:
- subscription state
- role
- visibility scope

They do not fundamentally depend on:
- device type

# ============================================================
# 4. SUBSCRIPTION / TRIAL / READ-ONLY MODEL
# ============================================================

subscription_status:
- trial
- active
- grace
- inactive

status_meaning:
trial:
- initial 3-day trial
- near-full feature access

active:
- full standard feature access

grace:
- temporary continuation after payment issue or renewal delay

inactive:
- read-only mode

inactive_allowed:
- self shift viewing
- already visible published shift viewing
- notification viewing

inactive_blocked:
- create
- edit
- auto generation
- publish / republish
- share management
- new PDF export
- ERP export
- generation rule management
- management-side setting change
- scheduled generation execution

important_subscription_rules:
- inactive must not expand visibility
- read-only mode still follows normal role and visibility rules
- read-only behavior must be consistent on both PC and smartphone

# ============================================================
# 5. PURPOSE AND VALUE
# ============================================================

business_purpose:
Provide a practical field-operation front
for shift creation, auto draft assistance, controlled sharing,
printable publication output,
multi-site operational visibility,
and enterprise linkage through ERP.

main_value:
- managers can create shifts quickly
- managers can auto-generate draft schedules from conditions
- staff can see updated shifts immediately
- only permitted people can view shared schedules
- draft and published states are clearly separated
- publication can be printed as formal PDF
- operational risk can be reduced with shortage/difference/unconfirmed visibility
- site/store adoption is easy because pricing is fixed and simple
- ERP linkage preserves enterprise consistency

non_goals:
- payroll calculation
- accounting posting
- enterprise HR formal authority
- ERP replacement
- giant all-in-one business suite
- fully automatic publication without human review

# ============================================================
# 6. PRIMARY USERS
# ============================================================

user_groups:
- enterprise_admin
- shift_admin
- department_manager
- team_leader
- staff
- integration_operator
- headquarters_operator

role_summary:
enterprise_admin:
- enterprise-wide supervision
- broad visibility with caution

headquarters_operator:
- multi-site monitoring
- site status review
- shortage/unconfirmed/failed export review

shift_admin:
- main operator for create / edit / publish / republish / share
- may use auto generation
- may use printable export
- may configure scheduled generation
- central owner of site operation

department_manager:
- create / edit / publish / share in own managed scope
- may use auto generation
- may use printable export
- may review requested day-off and confirmation status

team_leader:
- helper operator
- conditional draft create/edit
- conditional generation support
- publish not allowed
- share-rule edit not allowed

staff:
- self viewing
- explicitly shared range viewing only
- requested day-off submission
- change confirmation marking
- personal printable PDF only where allowed

integration_operator:
- ERP linkage state view
- export / retry
- content editing not allowed

# ============================================================
# 7. CORE FUNCTIONAL SCOPE
# ============================================================

shift_creation:
- create daily shifts
- create weekly shifts
- create monthly shifts
- assign people to time slots
- edit existing assignments
- save draft schedules

auto_draft_generation:
- save generation conditions
- generate draft schedules from rules/constraints
- preserve warning and shortage results
- allow manual correction after generation
- never auto-publish generated drafts

scheduled_auto_generation:
- schedule weekly generation by weekday and time
- schedule monthly generation by fixed day and time
- schedule monthly generation by last day and time
- generate next_week or next_month draft
- execution history tracking
- skip when inactive
- never auto-publish
- never auto-share
- never auto-export ERP
- never auto-distribute formal PDF

publication:
- validate before publication
- publish draft schedules
- republish corrected schedules
- preserve publication history
- preserve old/new publication separation

sharing:
- share to selected users
- share to teams
- share to departments
- share to management scopes
- stop sharing
- preview share result before wider exposure
- reflect updates in realtime

mobile_and_pc_viewing:
- today's shift
- weekly shift
- monthly shift
- shift detail
- realtime refresh after publication/republication
- same core features on PC and smartphone
- UI optimization differences only

notifications:
- publish notification
- republish notification
- same-day notification
- urgent change notification
- in-app notification center
- retry failed notifications

erp_linkage:
- employee / organization / office reference
- publication-based ERP export
- manual export in initial phase
- retry failed exports
- linkage state tracking

pdf_export:
- draft PDF for internal review
- publication PDF for formal printable distribution
- personal printable PDF
- department printable PDF
- board/posting PDF
- A4/A3 print-oriented layouts
- PDF export history

headquarters_features:
- site management dashboard
- site operational status
- shortage / warning / unpublished visibility
- unconfirmed change visibility
- lightweight analytics across sites

staff_and_safety_features:
- requested day-off submission
- change confirmation flag
- publication difference visibility
- shortage / difference / unconfirmed visualization

future_candidates:
- shift exchange request
- support request

# ============================================================
# 8. SAFETY AND BOUNDARY RULES
# ============================================================

critical_business_rules:
- only published shifts may be shared
- only published shifts may be exported to ERP
- drafts must not be exported to ERP
- visibility must be explicitly permitted
- publication does not mean visible to everyone
- team_leader cannot publish
- team_leader cannot manage share rules
- staff can view self + explicit shared scope only
- department_manager is limited to own department
- integration_operator is linkage-centered and cannot edit content
- same_day default notification timing is 1 hour before shift start
- auto generation creates draft only
- auto-generated draft must remain reviewable and editable
- warnings and shortages must remain visible
- publish remains manual after auto generation
- timer-based generation remains draft-only
- formal printable distribution should use publication_pdf
- draft PDF is internal review only
- inactive state is read-only
- scheduled generation must skip when inactive

authority_boundary:
shiftmanager_authority:
- shift drafts
- draft assignments
- auto-generation conditions/results/warnings
- scheduled generation definitions/executions
- publications
- republications
- share settings
- visibility scope evaluation
- mobile/pc delivery state
- notification state
- publication/share histories
- PDF export history
- requested day-off
- change confirmation
- site dashboard snapshots
- lightweight analytics snapshots

erp_authority:
- employee formal master
- organization formal master
- office formal master
- enterprise formal integration
- downstream payroll/accounting/HR processing

# ============================================================
# 9. SCREEN STRUCTURE
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
- publish_target_confirmation

viewing:
- my_shift
- today_shift
- week_view
- month_view
- shift_detail
- visible_shift_list
- other_person_shift_view

generation:
- auto_generation_condition_setting
- auto_generation_execute_confirmation
- auto_generation_result_review
- generation_warning_list

scheduled_generation:
- auto_generation_schedule_list
- auto_generation_schedule_create
- auto_generation_schedule_detail
- auto_generation_schedule_execution_history

pdf_export:
- pdf_export_setting
- pdf_export_preview
- pdf_export_history

staff_support:
- requested_day_off_submit
- requested_day_off_history
- change_confirmation_status

management_safety:
- shortage_difference_dashboard
- publication_difference_detail
- requested_day_off_review

headquarters:
- headquarters_site_dashboard
- site_status_detail
- multi_site_analytics

erp_and_admin:
- erp_linkage_status
- erp_export_confirmation
- erp_export_history
- error_detail
- publication_history
- share_history

ui_direction:
- mobile-first
- week-centered editing for MVP
- draft vs published visually obvious
- urgent change visually emphasized
- share scope understandable before publish
- generation warnings easy to locate and fix
- printable layouts monochrome-friendly
- same feature set on PC and smartphone
- UI density/layout may differ by device

# ============================================================
# 10. SHARE / VISIBILITY / CONFIRMATION MODEL
# ============================================================

share_units:
- person
- team
- department
- management_scope

share_principles:
- drafts are not shared
- published state enters visibility evaluation
- explicit sharing is required
- stop sharing should reflect quickly
- publish target confirmation is mandatory-grade

viewer_rules:
staff:
- own shifts visible
- explicit shared scope visible
- broad other-person viewing not allowed

team_leader:
- own handled scope draft/published visibility within authority

department_manager:
- own managed scope draft/published visibility

shift_admin:
- handled scope draft/published visibility
- can manage share settings

enterprise_admin:
- broad supervisory visibility as needed

change_confirmation_rules:
- after republish or urgent change,
  affected viewers may confirm they saw the change
- managers may see pending/confirmed counts
- confirmation does not override visibility rules

visibility_evaluation_model:
1. role evaluation
2. scope evaluation
3. explicit share evaluation
4. precomputed view_scope creation

# ============================================================
# 11. DATABASE MODEL SUMMARY
# ============================================================

schema_name:
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
- shift_pdf_export_history

subscription_tables:
- shift_site_license
- shift_site_subscription_status
- shift_site_feature_gate_log

additional_feature_tables:
- shift_site_dashboard_snapshot
- shift_publication_difference
- shift_change_confirmation
- shift_requested_day_off
- shift_site_analytics_snapshot
- shift_auto_generation_schedule
- shift_auto_generation_execution

future_candidate_tables:
- shift_support_request
- shift_exchange_request

critical_physical_decisions:
- separate draft assignments and publication assignments
- separate share rules and evaluated view scopes
- ERP export targets publication only
- auto generation remains on draft side
- scheduled generation triggers draft generation only
- printable export history should be traceable
- subscription state is site-based
- inactive state feature gating is explicit

# ============================================================
# 12. API MODEL SUMMARY
# ============================================================

api_groups:
- bootstrap
- subscription status / feature gate / trial summary
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
- scheduled generation
- PDF export
- requested day-off
- change confirmation
- headquarters dashboard / analytics

most_critical_endpoints:
- GET /api/shift-manager/v1/bootstrap
- GET /api/shift-manager/v1/subscription/status
- GET /api/shift-manager/v1/subscription/feature-gate
- POST /api/shift-manager/v1/schedules
- GET /api/shift-manager/v1/schedules
- GET /api/shift-manager/v1/schedules/{schedule_id}
- POST /api/shift-manager/v1/schedules/{schedule_id}/assignments
- PATCH /api/shift-manager/v1/assignments/{assignment_id}
- POST /api/shift-manager/v1/schedules/{schedule_id}/validate-for-publication
- POST /api/shift-manager/v1/schedules/{schedule_id}/publish
- POST /api/shift-manager/v1/schedules/{schedule_id}/republish
- POST /api/shift-manager/v1/generation-rules
- POST /api/shift-manager/v1/schedules/auto-generate
- POST /api/shift-manager/v1/auto-generation-schedules
- GET /api/shift-manager/v1/auto-generation-schedules
- POST /api/shift-manager/v1/auto-generation-schedules/{id}/run-now
- GET /api/shift-manager/v1/publications/{publication_id}/export-pdf
- POST /api/shift-manager/v1/publications/{publication_id}/export-erp

api_principles:
- separate draft APIs from publication APIs
- view APIs return only allowed results
- ERP export is publication_id based
- publish/share confirmation endpoints are first-class
- auto generation belongs to draft-side APIs
- scheduled generation config is separate from generation rule definition
- PDF export returns metadata/history, not raw binary in JSON
- initial role separation is permission-based, not URL-based

# ============================================================
# 13. ERP / NOTIFICATION / PDF / GENERATION SUMMARY
# ============================================================

erp_export_rules:
- export only published data
- export unit is publication_id
- initial mode is manual export + retry

notification_rules:
- notify only for published states
- notify only visible/permitted users
- same_day default timing is 1 hour before start
- failed notifications must be retryable

pdf_rules:
- main formal printable axis = publication_pdf + weekly_a4
- personal print = personal_pdf + personal_compact
- board print = board_pdf + board_a3
- draft output must visibly indicate DRAFT

generation_rules:
- auto generation = draft-side only
- scheduled generation = timer-driven draft preparation only
- hard rules absolute
- soft rules may relax with warnings
- required roles filled first
- harder slots processed first
- shortages remain visible
- explainability preferred over opaque optimization

# ============================================================
# 14. RLS / AUTHORIZATION / FEATURE GATE SUMMARY
# ============================================================

authorization_model:
- site subscription state
- company boundary
- role boundary
- share/view-scope boundary

rls_core_rules:
- draft side is management-responsibility based
- published side is view_scope based
- share_rule management is admin-side only
- notification visibility is target-person centered
- ERP linkage visibility is integration-role centered
- generation visibility is manager-side only
- subscription gate blocks mutation when inactive

critical_security_goal:
staff must never gain uncontrolled access
to other people's published shift data.

device_authorization_rule:
PC and smartphone follow the same core feature gate model.

# ============================================================
# 15. IMPLEMENTATION / READINESS SUMMARY
# ============================================================

target_platforms:
- android
- pc-compatible client surface

target_environment:
- termux
- android-companion

target_languages:
- java
- sql
- bash

implementation_priorities:
- MVP first
- mobile-first week-centered editing
- explicit publish/share flow
- additive ERP integration
- auto generation as draft-side extension
- scheduled generation as timer-driven draft extension
- PDF export as printable extension
- reuse shared BusinessOS components where compatible

implementation_facing_detail_fixed:
- API payloads
- validation matrix
- generation JSON
- generation algorithm direction
- notification templates
- screen input definitions
- SQL pack
- RLS SQL pack
- subscription / trial / feature gate
- license / device policy
- same-feature PC/smartphone rule
- additional competitive feature direction

remaining_later_deepening:
- exact print engine selection
- advanced exchange/support behavior
- advanced optimizer tuning
- final styling tokens

# ============================================================
# 16. COMMON COMPONENT REFERENCE
# ============================================================

common_component_canonical_location:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/00.application-common-components

existing_common_components_to_reuse:
- Submission Common
- ERP Publication Capability
- App-internal Sharing Common
- External Notification Delivery Common
- Channel Routing Common
- Draft / Work-in-progress Common
- Template / Generated Output Common
- Activity Log / Audit Trail Common

shiftmanager_derived_common_component_candidates:
- Publication / Versioned Snapshot Common
- Visibility Scope Evaluation Common
- Rule-based Draft Generation Common
- Generation Warning / Shortage Review Common
- Publish Target Confirmation Common
- Printable Publication Export Common

# ============================================================
# 17. CONCLUSION
# ============================================================

ShiftManager is defined as:

A BusinessOS-distributed, subscription-based, site-priced shift management application
for safe draft preparation, human-reviewed publication,
controlled realtime sharing, printable output,
timer-based draft preparation,
and practical multi-site operation.

Its design center is:
- create or auto-generate draft shifts
- review and adjust safely
- publish safely
- share only to permitted people
- let users see updates immediately
- print when needed
- reduce shortage/difference/unconfirmed risk
- preserve enterprise consistency through ERP linkage


# SHIFT_MANAGER_MULTILINGUAL_POLICY_BEGIN
# ============================================================
# MULTILINGUAL SUPPORT POLICY
# ============================================================

multilingual_policy:
- business logic remains language-neutral
- API / DB internal codes remain fixed
- UI / notification / PDF visible labels are localized
- initial languages are japanese and english
- later expansion is allowed

language_resolution_order:
- user preference
- site/company default
- application default

# SHIFT_MANAGER_MULTILINGUAL_POLICY_END

# SHIFT_MANAGER_COMMON_COMPONENT_REFERENCE_BEGIN
# marker restored for integrated-check compatibility
# SHIFT_MANAGER_COMMON_COMPONENT_REFERENCE_END

# SHIFT_MANAGER_PDF_EXPORT_REFERENCE_BEGIN
# marker restored for integrated-check compatibility
# SHIFT_MANAGER_PDF_EXPORT_REFERENCE_END

# SHIFT_MANAGER_FINAL_DETAIL_REFERENCE_BEGIN
# marker restored for integrated-check compatibility
# SHIFT_MANAGER_FINAL_DETAIL_REFERENCE_END

# SHIFT_MANAGER_SUBSCRIPTION_POLICY_BEGIN
# marker restored for integrated-check compatibility
# SHIFT_MANAGER_SUBSCRIPTION_POLICY_END

# SHIFT_MANAGER_LICENSE_DEVICE_POLICY_BEGIN
# marker restored for integrated-check compatibility
# SHIFT_MANAGER_LICENSE_DEVICE_POLICY_END

# SHIFT_MANAGER_DEVICE_FUNCTION_POLICY_BEGIN
# marker restored for integrated-check compatibility
# SHIFT_MANAGER_DEVICE_FUNCTION_POLICY_END

# SHIFT_MANAGER_ADDITIONAL_FEATURES_BEGIN
# marker restored for integrated-check compatibility
# SHIFT_MANAGER_ADDITIONAL_FEATURES_END

# SHIFT_MANAGER_SUPPORTED_DEVICE_POLICY_BEGIN
# ============================================================
# SUPPORTED DEVICE POLICY
# ============================================================

supported_devices:
- iphone
- android
- pc
- tablet

supported_device_rule:
- the same core feature set should be available across iphone, android, pc, and tablet
- differences should be limited to layout/usability optimization
- authorization should depend on subscription state, role, and visibility scope, not device type

# SHIFT_MANAGER_SUPPORTED_DEVICE_POLICY_END
