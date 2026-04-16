# ============================================================
# SHIFT MANAGER
# FULL GENERATION INPUT FORMAT
# ============================================================

status: draft-fixed-candidate
type: full-generation-input-format
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. BASIC INFORMATION
# ============================================================

project_id:
project_name: ShiftManager
application_name: ShiftManager
application_summary:
A BusinessOS-distributed mobile-first business application
for shift creation, condition-based auto draft generation,
publication, controlled sharing, and realtime smartphone viewing.

application_goal:
Enable managers to create or auto-generate shift drafts quickly,
review and publish them safely,
and enable permitted users to view updated shifts in realtime.

business_purpose:
Provide a practical field-operation front
for shift creation, auto draft assistance, and controlled sharing,
while supporting ERP formal integration.

target_users:
- shift administrators
- department managers
- team leaders
- staff
- enterprise administrators
- ERP integration operators

target_platforms:
- android

target_environment:
- termux
- android-companion

target_languages:
- java
- sql
- bash

generation_mode:
- full

review_mode:
- mandatory

approval_mode:
- mandatory

git_mode:
- commit-only

build_mode:
- if_available

ui_language:
- japanese

input_assist_language:
- japanese

design_output_language:
- english

test_output_language:
- japanese

bug_output_language:
- japanese

review_output_language:
- japanese

release_output_language:
- japanese

fallback_language:
- japanese

# ============================================================
# 2. PROJECT SCOPE
# ============================================================

project_scope:
- shift creation
- shift editing
- condition-based auto draft generation
- shift publication
- shift republication
- controlled sharing
- realtime smartphone viewing
- notification
- ERP export linkage

included_modules:
- bootstrap
- access check
- dashboard
- shift list
- shift create
- shift edit
- draft confirmation
- publish confirmation
- republish confirmation
- share rule list
- share scope setting
- my shift
- today shift
- week view
- month view
- shift detail
- notification center
- ERP linkage status
- publication history
- share history
- auto generation condition setting
- auto generation execute confirmation
- auto generation result review
- generation warning list

excluded_modules:
- payroll
- accounting
- core attendance engine
- enterprise HR authority
- ERP replacement
- advanced multilingual notification management
- automatic ERP export in initial phase
- automatic publication without human review

target_release_scope:
- MVP mobile-first shift creation and sharing application
- BusinessOS distribution
- permission-based viewing
- manual ERP export with retry
- condition-based automatic draft generation with manual publication

future_scope:
- automatic ERP export
- bulk assignment update
- advanced month editing
- team / department visual summary
- additional notification channels
- multilingual notifications
- more advanced audit views
- richer generation priority logic
- advanced balancing engine

out_of_scope:
- payroll calculation
- accounting posting
- company-wide HR processing
- full ERP workflows
- general workflow engine
- fully automatic publication without human confirmation

# ============================================================
# 3. REQUIREMENTS SUMMARY
# ============================================================

functional_requirements:
- user can open app through BusinessOS-distributed access
- authorized user can create shift drafts
- authorized user can edit shift drafts
- authorized user can save auto generation conditions
- authorized user can execute condition-based auto draft generation
- authorized user can review generation warnings and shortages
- authorized user can manually adjust generated drafts
- authorized user can validate before publication
- authorized user can publish and republish shifts
- authorized user can configure share scope
- permitted user can view own shifts
- permitted user can view explicitly shared shifts
- app can notify publication and republication
- app can show today's shift and weekly shift
- app can export published shifts to ERP manually
- app can retry failed ERP export
- app can show ERP linkage status

non_functional_requirements:
- mobile-first
- realtime reflection after publication
- permission-first visibility
- auditability required
- practical low-friction operation
- draft and publication must be clearly separated
- published visibility must be share-controlled
- auto generation must not bypass human confirmation

business_rules:
- only published shifts may be shared
- only published shifts may be exported to ERP
- drafts must not be exported
- visibility must be explicitly permitted
- team_leader cannot publish
- team_leader cannot change share rules
- staff can view self + explicit shared scope only
- department_manager is limited to own department
- integration_operator is linkage-centered and cannot edit content
- same_day default notification time is 1 hour before shift start
- auto generation creates draft only
- auto-generated draft must be reviewable and editable
- auto generation warnings must remain visible
- publish remains manual after auto generation

constraints:
- BusinessOS distribution model
- NameCardManager-like sharing boundary
- ERP is formal master reference source
- schema name fixed to app_shift_manager
- initial ERP export mode is manual + retry
- initial API separation is permission-based, not URL-based
- auto generation belongs to draft-side responsibility

assumptions:
- authenticated context resolves company_id and person_id
- resolved role set is available to application/API
- ERP master references are accessible
- smartphone is main usage device
- push notification infrastructure may be available in implementation phase
- generation rules can be represented by stored condition data

success_conditions:
- MVP screens are defined and implementable
- DB schema is implementation-ready
- API contract is fixed enough for implementation
- ERP export boundary is clear
- sharing and visibility policy is explicit
- auto generation flow is consistent with draft/publication split
- full generation input is internally consistent

# ============================================================
# 4. DESIGN INPUT POLICY
# ============================================================

design_input_mode:
- full_generation_format

imported_design_documents:
- 000_SHIFT_MANAGER_OVERVIEW.md
- 00_SHIFT_MANAGER_INTEGRATED.md
- SHIFT_MANAGER_APPLICATION_DEFINITION
- SHIFT_MANAGER_PRE_IMPLEMENTATION_DECISION_SHEET
- SHIFT_MANAGER_SCREEN_INVENTORY
- SHIFT_MANAGER_ROLE_AND_SHARE_RULES
- SHIFT_MANAGER_PHYSICAL_DATABASE_SCHEMA
- SHIFT_MANAGER_API_EXACT_CONTRACT
- SHIFT_MANAGER_ERP_INTEGRATION_SPECIFICATION
- SHIFT_MANAGER_NOTIFICATION_SPECIFICATION
- SHIFT_MANAGER_RLS_AND_AUTHORIZATION_DDL_POLICY
- SHIFT_MANAGER_FINAL_DECISION_SHEET
- SHIFT_MANAGER_PACKAGE_AND_MODULE_ARCHITECTURE
- SHIFT_MANAGER_API_DTO_INVENTORY
- SHIFT_MANAGER_SCREEN_NAVIGATION_DESIGN
- SHIFT_MANAGER_AUTO_SHIFT_GENERATION_DESIGN
- SHIFT_MANAGER_STATE_TRANSITION_WITH_AUTO_GENERATION

readiness_override_policy:
- normal

missing_spec_policy:
- warn_and_continue

ambiguity_policy:
- safest_default

fallback_policy:
- reuse_shared_first
- reuse_user_private_second
- generate_new_if_needed

# ============================================================
# 5. TARGET SYSTEM INTEGRATION
# ============================================================

integrations:
- businessos
- erp
- notification infrastructure
- local/mobile client
- database

businessos_integration:
  enabled: true
  integration_targets:
  - app distribution
  - app access control
  - permission-based app usage
  - common notification foundation candidate

civilization_integration:
  enabled: false

external_services:
- ERP
- push notification service

storage_usage:
- application database
- local mobile cache
- optional notification payload storage

git_repository:
  provider:
  repository_name: ShiftManager
  default_branch: main
  working_branch_prefix: feature/shiftmanager-

git_branch_policy:
  direct_main_update: false
  review_before_push: true
  approval_before_push: true
  tag_on_release: optional

package_repository_policy:
  enabled: false
  target:

# ============================================================
# 6. REUSABLE COMPONENT POLICY
# ============================================================

reuse_policy:
  prefer_reuse: true
  allow_businessos_shared: true
  allow_user_private: true
  allow_project_local: true

businessos_shared_components:
- authentication context
- access control base
- audit logger
- notification common foundation
- standard dashboard base
- standard list screen base

user_private_components:
- boss custom formatter
- existing business-side shared patterns where compatible

project_local_components:
- shift publication validator
- share preview logic
- ERP export payload builder
- auto generation rule evaluator
- auto generation warning summarizer

preferred_components:
- standard audit logger
- standard repository base
- BusinessOS distribution and permission base
- common notification foundation

forbidden_components:
- deprecated legacy auth v1
- unrestricted visibility shortcuts
- direct payroll/accounting coupling in app layer
- automatic publication shortcuts bypassing review

component_selection_notes:
Prefer existing compatible shared components first,
especially for authentication, audit, notification, and access control.

# ============================================================
# 7. DATABASE DEFINITION
# ============================================================

database_required: true

database_role:
- application main data store
- shift draft storage
- published shift storage
- share rule storage
- visibility scope storage
- ERP linkage state storage
- notification state storage
- audit/history support
- auto generation rule storage
- auto generation result storage
- generation warning storage

connection_profile:
  profile_name:
  environment: application
  read_write_scope: app_shift_manager
  ddl_allowed: true
  production_allowed: false

database_type:
- postgresql

schema_strategy:
- app schema
- shared schema reference
- ERP master reference

tables:
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

views:
- v_current_active_publication
- v_publication_export_status
- v_my_visible_shift_today
- v_my_visible_shift_week

functions:
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

procedures:
- optional publish orchestration
- optional ERP export orchestration
- optional auto generation orchestration

triggers:
- updated_at auto update
- optional publish-side queue triggers

seed_data:
- notification types
- schedule statuses
- publication statuses
- export statuses
- generation warning types

migration_policy:
- additive preferred
- destructive changes require warning
- draft/publication separation must be preserved
- auto generation must not collapse into publication state

# ============================================================
# 8. DATABASE EXECUTION POLICY
# ============================================================

sql_generation_enabled: true
sql_execution_enabled: false
sql_review_mode: mandatory
sql_approval_mode: mandatory

sql_safety_policy:
  select_auto_allowed: true
  dml_requires_approval: true
  ddl_requires_review: true
  drop_requires_strong_confirmation: true

ddl_policy:
  allow_create: true
  allow_alter: true
  allow_drop: false

dml_policy:
  allow_insert: true
  allow_update: true
  allow_delete: soft-delete-only-preferred

production_db_policy:
  direct_execution: false
  review_required: true
  backup_required: true

# ============================================================
# 9. SCREEN / UI DEFINITION
# ============================================================

ui_required: true

screen_list:
- startup_initial_judge
- login_access_confirmation
- home_dashboard
- notification_center
- settings
- account_affiliation_info
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
- share_rule_list
- share_scope_setting
- person_share_setting
- team_share_setting
- department_share_setting
- management_scope_setting
- stop_share_confirmation
- publish_target_confirmation
- my_shift
- today_shift
- week_view
- month_view
- shift_detail
- visible_shift_list
- other_person_shift_view
- erp_linkage_status
- erp_export_confirmation
- erp_export_history
- error_detail
- publication_history
- share_history
- auto_generation_condition_setting
- auto_generation_execute_confirmation
- auto_generation_result_review
- generation_warning_list

screen_details:
  home_dashboard:
    purpose: entry point for management and receiving use
    actions:
    - create_shift
    - open_shift_list
    - open_notifications
    - open_share_settings
    - open_erp_status
    - open_auto_generation
    fields:
    - today_summary
    - draft_count
    - published_count
    - unread_notification_count
    - erp_error_flag

  shift_edit:
    purpose: central draft editing screen
    actions:
    - add_assignment
    - edit_assignment
    - save_draft
    - open_draft_confirmation
    fields:
    - target_period
    - assignment_list
    - unassigned_warning
    - schedule_header
    - generation_mode
    - generation_warning_summary

  draft_confirmation:
    purpose: final review before publication
    actions:
    - validate
    - go_publish
    fields:
    - assignment_summary
    - warnings
    - share_target_summary
    - erp_export_ready_flag
    - generation_warning_summary

  publish_confirmation:
    purpose: publish current draft
    actions:
    - publish
    - toggle_notification
    - toggle_erp_export_required
    fields:
    - publish_target_summary
    - share_scope_summary
    - realtime_reflect_note

  share_scope_setting:
    purpose: define who may see the shift
    actions:
    - add_share_rule
    - edit_share_rule
    - disable_share_rule
    fields:
    - scope_type
    - target
    - visibility_level

  auto_generation_condition_setting:
    purpose: define rules and constraints for automatic draft generation
    actions:
    - save_generation_rule
    - execute_auto_generation
    fields:
    - target_period
    - target_scope
    - slot_requirements
    - person_constraints
    - priority_policy

  auto_generation_execute_confirmation:
    purpose: confirm auto generation execution
    actions:
    - execute
    - cancel
    fields:
    - target_summary
    - overwrite_policy
    - generation_rule_summary

  auto_generation_result_review:
    purpose: inspect generated draft result
    actions:
    - open_shift_edit
    - open_generation_warning_list
    - continue_to_draft_confirmation
    fields:
    - generated_assignment_count
    - unassigned_count
    - warning_count
    - generation_summary

  generation_warning_list:
    purpose: inspect shortages and warnings needing human fix
    actions:
    - open_related_edit_area
    fields:
    - warning_type
    - warning_level
    - target_date
    - target_slot
    - related_person
    - message

  my_shift:
    purpose: personal shift viewing
    actions:
    - open_shift_detail
    fields:
    - shift_date
    - start_time
    - end_time
    - office
    - role
    - memo

  week_view:
    purpose: weekly shift view
    actions:
    - open_shift_detail
    - move_week
    fields:
    - week_grid
    - daily_items

  notification_center:
    purpose: show notifications and allow read state update
    actions:
    - mark_read
    - open_shift_detail
    fields:
    - notification_type
    - title
    - body
    - read_state

  erp_linkage_status:
    purpose: inspect export state
    actions:
    - export_erp
    - retry_export
    - open_error_detail
    fields:
    - publication_id
    - export_status
    - updated_at
    - last_error

navigation_structure:
- startup_initial_judge -> login_access_confirmation
- startup_initial_judge -> home_dashboard
- home_dashboard -> shift_list
- home_dashboard -> notification_center
- home_dashboard -> share_rule_list
- home_dashboard -> erp_linkage_status
- home_dashboard -> auto_generation_condition_setting
- shift_list -> shift_create
- shift_list -> shift_edit
- shift_edit -> draft_confirmation
- draft_confirmation -> publish_confirmation
- publish_confirmation -> share_scope_setting
- auto_generation_condition_setting -> auto_generation_execute_confirmation
- auto_generation_execute_confirmation -> auto_generation_result_review
- auto_generation_result_review -> shift_edit
- auto_generation_result_review -> generation_warning_list
- home_dashboard -> my_shift
- my_shift -> week_view
- week_view -> shift_detail
- notification_center -> shift_detail

main_actions:
- create
- edit
- save_draft
- validate
- publish
- republish
- share
- disable_share
- view
- read_notification
- export_erp
- retry_export
- save_generation_rule
- auto_generate
- review_generation_result

input_items:
- schedule_name
- target_scope_type
- target_scope_id
- target_period_type
- period_start_date
- period_end_date
- person_id
- shift_date
- start_time
- end_time
- role_code
- office_id
- department_id
- team_id
- memo
- share_scope_type
- visibility_level
- notification_requested
- erp_export_required
- generation_rule_name
- slot_requirement
- person_constraint
- priority_policy

display_items:
- draft_status
- publication_status
- share_scope_summary
- weekly shift grid
- today shift card
- notification list
- ERP export state
- publication history
- share history
- generation_mode
- generation_warning_summary
- unassigned_summary

validation_rules:
- required fields must not be empty
- period_end_date must be >= period_start_date
- end_time must be > start_time
- only published shifts may be shared
- only published shifts may be exported to ERP
- staff cannot edit drafts
- team_leader cannot publish
- share preview must be confirmable before wider publication
- auto generation creates draft only
- auto-generated draft must remain editable before publication

ui_style_notes:
- mobile-first
- week-centered editing for MVP
- draft vs published state must be visually obvious
- urgent change must be visually emphasized
- visibility scope must be understandable before publish
- generation warnings must be easy to locate and fix

# ============================================================
# 10. DOMAIN / MODEL DEFINITION
# ============================================================

domain_entities:
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

entity_relations:
- shift_schedule has many shift_assignments
- shift_schedule has many shift_publications
- shift_publication has many shift_publication_assignments
- shift_share_rule has many shift_share_rule_targets
- shift_publication has many shift_view_scopes
- shift_publication may have one erp_linkage_state
- shift_publication may generate many shift_notifications
- shift_generation_rule may generate many shift_generation_results
- shift_generation_result belongs to one schedule
- shift_generation_result has many shift_generation_warnings

required_fields:
  shift_schedule:
  - schedule_id
  - company_id
  - schedule_code
  - schedule_name
  - target_scope_type
  - target_period_type
  - period_start_date
  - period_end_date
  - status

  shift_assignment:
  - assignment_id
  - schedule_id
  - person_id
  - shift_date
  - start_time
  - end_time

  shift_publication:
  - publication_id
  - schedule_id
  - publication_version_no
  - publication_status
  - published_by_person_id
  - published_at

  shift_share_rule:
  - share_rule_id
  - company_id
  - rule_name
  - scope_type
  - visibility_level

  shift_view_scope:
  - view_scope_id
  - publication_id
  - viewer_person_id
  - visible_person_id
  - visibility_reason

  shift_notification:
  - notification_id
  - notification_type
  - target_person_id
  - title
  - delivery_status
  - queued_at

  erp_linkage_state:
  - linkage_id
  - publication_id
  - schedule_id
  - export_status
  - export_mode

  shift_generation_rule:
  - generation_rule_id
  - company_id
  - rule_name

  shift_generation_result:
  - generation_result_id
  - schedule_id
  - generation_rule_id
  - generated_at

  shift_generation_warning:
  - generation_warning_id
  - generation_result_id
  - warning_type
  - warning_level
  - message

optional_fields:
  shift_schedule:
  - target_scope_id
  - current_publication_id
  - generation_mode
  - auto_generation_summary_json
  - auto_generated_at
  - auto_generated_by_person_id

  shift_assignment:
  - role_code
  - office_id
  - department_id
  - team_id
  - memo

  shift_publication:
  - publication_note
  - superseded_at

  shift_notification:
  - body
  - read_at
  - deep_link_path
  - payload_json

status_definitions:
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

generation_mode_definitions:
- manual
- auto_generated
- auto_generated_then_edited

lifecycle_notes:
- shift_schedule starts as draft
- auto generation may create draft and add generation metadata
- publication creates fixed published version
- republish supersedes prior published version
- share rules determine visibility
- shift_view_scope represents evaluated visibility result
- ERP export is based on publication only

# ============================================================
# 11. OUTPUT POLICY
# ============================================================

required_outputs:
- architecture draft
- screen definition
- Java source skeleton
- SQL DDL draft
- API contract files
- RLS policy draft
- notification specification
- ERP integration draft
- auto generation specification
- test skeleton
- git project structure

optional_outputs:
- seed data
- release note draft
- sample API payloads
- operational runbook draft

code_style_policy:
- reuse shared base classes if possible
- explicit naming
- safe defaults
- separate draft logic and published logic
- separate visibility evaluation from raw share rules
- keep auto generation inside draft-side responsibility

package_policy:
- feature-based package split
- dto/service/repository separation
- admin and mobile use-cases separated in service layer
- ERP connector isolated from core editing service
- auto generation isolated from publication service

test_policy:
- unit test skeleton required
- repository test optional
- SQL verification script preferred
- permission and visibility tests required
- publish/republish tests required
- auto generation warning/result tests required

release_output_policy:
- commit-ready
- push-ready later
- tag optional

# ============================================================
# 12. REVIEW / APPROVAL SETTINGS
# ============================================================

design_review_mode: mandatory
code_review_mode: mandatory
sql_review_mode: mandatory
git_review_mode: recommended
apply_review_mode: mandatory

design_approval_mode: mandatory
code_approval_mode: mandatory
sql_approval_mode: mandatory
git_push_approval_mode: mandatory

safety_escalation_enabled: true

# ============================================================
# 13. BACKUP / ROLLBACK SETTINGS
# ============================================================

backup_mode:
- mandatory

backup_targets:
- design files
- Java source
- SQL migration draft
- API contract files
- git restore point

rollback_enabled: true

rollback_points:
- before apply
- before SQL execution
- before git commit
- before git push

restore_policy:
- manual approval required

# ============================================================
# 14. VERSION MANAGEMENT SETTINGS
# ============================================================

versioning_enabled: true
versioning_mode: semantic_versioning

version_targets:
- design_docs
- source_code
- sql
- tests
- release_artifacts

auto_increment_on_bugfix: true
link_design_and_code_versions: true
link_git_versions: true

custom_version_rule:
- draft design version may advance before implementation version
- publish/visibility model changes require explicit version note
- auto generation rule changes require explicit version note

# ============================================================
# 15. BUG MANAGEMENT SETTINGS
# ============================================================

bug_tracking_enabled: true

bug_status_flow:
- new
- triaged
- investigating
- fixing
- fixed
- retesting
- closed
- reopened

bug_priority_levels:
- low
- medium
- high
- critical

bug_severity_levels:
- minor
- major
- serious
- blocker

bug_required_fields:
- title
- summary
- status
- priority
- severity
- reproduction_steps
- expected_result
- actual_result

bug_list_view_policy:
- sort by severity then priority
- visibility and permission bugs are high attention
- publication / ERP export bugs are high attention
- auto generation mismatch bugs are high attention

# ============================================================
# 16. TEST GENERATION SETTINGS
# ============================================================

java_unit_test_generation:
  enabled: true
  mode: automatic

integration_test_generation:
  mode: test-item-sheet

system_test_generation:
  mode: test-item-sheet

acceptance_test_generation:
  mode: test-item-sheet

test_item_sheet_required_fields:
- test_phase
- test_category
- test_viewpoint
- target_function
- preconditions
- action_or_input
- expected_result
- priority
- notes

# ============================================================
# 17. TEST / PROGRESS MANAGEMENT SETTINGS
# ============================================================

test_progress_management: true
project_progress_management: true
manual_test_update_enabled: true
manual_progress_update_enabled: true

progress_categories:
- design
- ui
- code
- sql
- api
- rls
- generation_logic
- unit_test
- integration_test_sheet
- bug_fix
- git
- release

test_status_values:
- not_started
- in_progress
- done
- blocked
- on_hold

test_result_values:
- not_run
- pass
- fail
- retest_needed
- skipped

# ============================================================
# 18. FULL GENERATION ACCEPTANCE CRITERIA
# ============================================================

generation_acceptance:
- all required design-to-generation files generated
- no unresolved required core entity
- draft/publication split preserved
- share and visibility model preserved
- ERP export boundary preserved
- auto generation remains draft-side only
- human publication confirmation remains preserved

build_acceptance:
- Java project structure valid
- required packages generated
- MVP screen structure represented
- core service classes generated
- auto generation responsibility represented in draft-side module

sql_acceptance:
- required tables defined
- prohibited destructive SQL not emitted
- RLS draft policy included
- publication-only ERP export model preserved
- generation rule/result/warning model represented

git_acceptance:
- branch created if policy allows
- commit draft generated
- push executed only if policy allows

release_acceptance:
- package manifest generated
- release checklist generated
- MVP output is internally consistent

# ============================================================
# 19. USER CONFIRMATION
# ============================================================

user_confirmation:

I confirm that:
- this specification is intended for generation
- review / approval settings are understood
- SQL execution policy is understood
- Git policy is understood
- backup policy is understood
- version / bug / progress policies are understood

confirmed_by: Boss
confirmed_at:

# ============================================================
# 20. MINIMUM REQUIRED SECTIONS FOR FULL GENERATION
# ============================================================

minimum_required_sections:
- basic information
- project scope
- requirements summary
- design input policy
- database definition
- screen / ui definition
- domain / model definition
- output policy
- review / approval settings
- backup / rollback settings
- full generation acceptance criteria

generation_rule:
If minimum required sections are present and readiness is sufficient,
App Development Studio may enter full generation mode.
If readiness is insufficient,
App Development Studio should switch to manual confirmation mode
and show missing / ambiguous items.

# SHIFT_MANAGER_PDF_EXPORT_REFERENCE_BEGIN
# ============================================================
# PDF EXPORT EXTENSION
# ============================================================

project_scope_addition:
- pdf export
- printable publication output

included_modules_addition:
- pdf export setting
- pdf export preview
- pdf export history

functional_requirements_addition:
- authorized user can export draft PDF for internal review
- authorized user can export publication PDF for printable distribution
- permitted user can export personal PDF where allowed

required_outputs_addition:
- PDF export specification
- PDF export payload definition

# SHIFT_MANAGER_PDF_EXPORT_REFERENCE_END

# SHIFT_MANAGER_SUBSCRIPTION_POLICY_BEGIN
# ============================================================
# SUBSCRIPTION / TRIAL / READ-ONLY POLICY
# ============================================================

business_purpose_addition:
- simple fixed monthly pricing
- easy-to-understand application positioning
- no initial fee
- quick trial onboarding

functional_requirements_addition:
- application can resolve subscription status
- trial users can use major functions during trial period
- inactive users are restricted to read-only viewing mode
- feature availability is controlled by subscription status

business_rules_addition:
- pricing model is 900 JPY monthly fixed
- unlimited users
- no initial fee
- initial 3-day trial exists
- inactive state is read-only mode
- read-only mode allows viewing only
- create/edit/generate/publish/share/export are disabled when inactive

wording_policy_addition:
Prefer:
- subscription-based application
- monthly-use application

Avoid:
- SaaS

# SHIFT_MANAGER_SUBSCRIPTION_POLICY_END

# SHIFT_MANAGER_LICENSE_DEVICE_POLICY_BEGIN
# ============================================================
# LICENSE / DEVICE POLICY
# ============================================================

business_purpose_addition:
- easy site-based rollout
- easy pricing explanation for enterprise adoption
- multi-operator usage without user-count pricing

functional_requirements_addition:
- application can resolve site-based subscription state
- application can allow both PC and smartphone usage under one site license
- feature control follows site subscription state

business_rules_addition:
- pricing model is 900 JPY per site / month
- unlimited users within site
- no initial fee
- initial 3-day trial exists
- PC and smartphone are both allowed under same site license
- do not model pricing as separate PC/smartphone paid licenses

wording_policy_addition:
Prefer:
- subscription-based application
- monthly-use application
- site-based fixed monthly pricing

Avoid:
- SaaS
- separate PC license / smartphone license wording

# SHIFT_MANAGER_LICENSE_DEVICE_POLICY_END

# SHIFT_MANAGER_DEVICE_FUNCTION_POLICY_BEGIN
# ============================================================
# DEVICE FUNCTION POLICY
# ============================================================

functional_requirements_addition:
- PC and smartphone support the same core feature set
- device difference is limited to UI optimization
- feature availability is controlled by subscription state, role, and visibility, not device type

business_rules_addition:
- do not define separate business permissions by device type
- read-only policy must behave consistently across PC and smartphone

# SHIFT_MANAGER_DEVICE_FUNCTION_POLICY_END

# SHIFT_MANAGER_ADDITIONAL_FEATURES_BEGIN
# ============================================================
# ADDITIONAL COMPETITIVE FEATURES
# ============================================================

functional_requirements_addition:
- headquarters can view site-level operational dashboard
- system can visualize shortages/differences/unconfirmed changes
- staff can submit requested day off
- affected viewers can mark change confirmed
- multi-site lightweight analytics can be shown
- system can run scheduled automatic draft generation

business_rules_addition:
- scheduled automatic generation supports weekly / monthly_fixed_day / monthly_last_day
- scheduled automatic generation creates draft only
- scheduled automatic generation must not auto-publish
- inactive subscription skips scheduled execution

future_scope_addition:
- shift exchange request
- support request

# SHIFT_MANAGER_ADDITIONAL_FEATURES_END

# SHIFT_MANAGER_MULTILINGUAL_POLICY_BEGIN
# ============================================================
# MULTILINGUAL SUPPORT POLICY
# ============================================================

functional_requirements_addition:
- UI supports multilingual labels/messages
- notification text supports multilingual rendering
- PDF visible labels support multilingual rendering
- API field names remain fixed and language-neutral

business_rules_addition:
- internal enum/code values remain fixed
- initial supported languages are japanese and english
- display layer may expand to more languages later

# SHIFT_MANAGER_MULTILINGUAL_POLICY_END

# SHIFT_MANAGER_SUPPORTED_DEVICE_POLICY_BEGIN
# ============================================================
# SUPPORTED DEVICE POLICY
# ============================================================

functional_requirements_addition:
- ShiftManager supports iphone, android, pc, and tablet
- the same core feature set is available across supported devices
- differences are limited to layout/usability optimization

business_rules_addition:
- device type must not fundamentally change business capability
- authorization is controlled by subscription state, role, and visibility scope

# SHIFT_MANAGER_SUPPORTED_DEVICE_POLICY_END
