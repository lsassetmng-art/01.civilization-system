# ============================================================
# SHIFT MANAGER INTEGRATED
# ============================================================

status: integrated-regenerated
system: ShiftManager
system_japanese: シフト管理
short_name: Shift
owner: Boss
prepared_by: Zero
generated_at: 2026-04-11 22:23:37 +0900
generation_rule:
  - additive-only
  - regenerated from existing markdown files under ShiftManager
  - root markdown files are appended first
  - then canonical layer folders are appended in fixed order
  - existing integrated outputs are excluded from source pickup

# ============================================================
# SOURCE ORDER
# ============================================================

1. root markdown files directly under ShiftManager
2. 010.constitution
3. 020.architecture
4. 030.model
5. 040.runtime
6. 050.flow
7. 060.integration
8. 070.operations
9. 080.policy
10. 090.interface
11. 100.security
12. 110.infrastructure
13. 120.implementation
14. 130.development
15. 900.meta


# ============================================================
# BEGIN FILE: 000_SHIFT_MANAGER_INDEX.md
# ============================================================

# ============================================================
# SHIFT MANAGER INDEX
# ============================================================

status: canonical
layer: application-root
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

root_files:
- 000_SHIFT_MANAGER_INDEX.md
- 000_SHIFT_MANAGER_OVERVIEW.md
- 00_SHIFT_MANAGER_INTEGRATED.md

layers:
- 010.constitution
- 020.architecture
- 030.model
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 090.interface
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development
- 900.meta

purpose:
Defines the file map for the ShiftManager application design set.

core_scope:
- shift creation
- shift sharing
- realtime mobile viewing
- BusinessOS distribution
- share-permission control
- ERP company-wide integration


# ============================================================
# END FILE: 000_SHIFT_MANAGER_INDEX.md
# ============================================================


# ============================================================
# BEGIN FILE: 000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================

# ============================================================
# SHIFT MANAGER OVERVIEW
# ============================================================

status: canonical
layer: application-root
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

purpose:
ShiftManager is a BusinessOS-distributed application
for creating, updating, and sharing shift schedules
to authorized users in realtime on smartphones.

summary:
The application is centered on two business goals:
1. shift creation
2. shift sharing

positioning:
- not an ERP replacement
- not a payroll engine
- not a pure viewer-only app
- a practical mobile-first shift operation application

distribution_model:
- distributed through BusinessOS
- installable to target users
- shareable only to authorized people
- company-wide ERP linkage allowed

same-family-reference:
ShiftManager follows the same distribution and sharing boundary style
as NameCardManager, while the main managed object is shift data.

main_capabilities:
- create shifts
- edit shifts
- publish shifts
- share shifts with authorized people
- realtime reflect updates on mobile
- connect to ERP for company-wide formal linkage

authoritative_boundary:
ShiftManager is authoritative for shift creation, shift publication,
and application-level sharing state.
ERP is authoritative for enterprise master data and company-wide formal integration.


# ============================================================
# END FILE: 000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================


# ============================================================
# BEGIN FILE: 010.constitution/010.shift-manager/0100000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================

# ============================================================
# SHIFT MANAGER CONSTITUTION OVERVIEW
# ============================================================

status: canonical
layer: constitution
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional role of ShiftManager.

constitutional_role:
ShiftManager exists to make shift creation and controlled sharing
available in a practical realtime mobile form.

mandatory_principles:
- authorized sharing only
- realtime visibility after publication
- clear distinction between draft and published state
- no visibility beyond granted scope
- ERP boundary must remain explicit

# ============================================================
# END FILE: 010.constitution/010.shift-manager/0100000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================


# ============================================================
# BEGIN FILE: 010.constitution/010.shift-manager/0100001_SHIFT_MANAGER_CONSTITUTION.md
# ============================================================

# ============================================================
# SHIFT MANAGER CONSTITUTION
# ============================================================

status: canonical
layer: constitution
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional intent and highest-level rules of ShiftManager.

principles:
1. ShiftManager shall prioritize shift creation and shift sharing.
2. Sharing shall be permission-controlled.
3. Published shifts shall be viewable in realtime on smartphones.
4. ERP linkage shall support enterprise consistency without erasing application autonomy.
5. Draft data and published data shall be clearly separated.
6. Unauthorized users shall never receive shared schedule visibility.
7. The application shall remain useful as a light operational front even when ERP is the company formal integration backbone.

# ============================================================
# END FILE: 010.constitution/010.shift-manager/0100001_SHIFT_MANAGER_CONSTITUTION.md
# ============================================================


# ============================================================
# BEGIN FILE: 020.architecture/010.shift-manager/0200000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================

# ============================================================
# SHIFT MANAGER ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: architecture
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

architecture_blocks:
- shift planning block
- shift publication block
- shift sharing block
- mobile consumption block
- ERP linkage block
- permission control block

# ============================================================
# END FILE: 020.architecture/010.shift-manager/0200000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================


# ============================================================
# BEGIN FILE: 020.architecture/010.shift-manager/0200001_SHIFT_MANAGER_ARCHITECTURE.md
# ============================================================

# ============================================================
# SHIFT MANAGER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

purpose:
Defines the main structural architecture of ShiftManager.

components:
1. Shift Draft Manager
- stores editable unpublished schedules
- supports revision before release

2. Shift Publication Manager
- turns drafts into published schedules
- maintains published version identity
- triggers visibility refresh

3. Share Permission Manager
- defines who can see what
- supports individual, team, and department scope
- enforces visibility checks before delivery

4. Mobile View Delivery
- serves current schedules to smartphones
- presents day/week/month views
- refreshes published changes quickly

5. Notification Dispatcher
- sends publication/change notifications
- sends urgent update signals

6. ERP Linkage Connector
- receives master references
- sends formal shift outputs when needed
- exposes linkage status

7. Audit and History Manager
- records publication history
- records share changes
- records critical operation events

architecture_notes:
- creation and sharing are first-class architecture concerns
- ERP is external-authority-connected, not application-internalized
- mobile visibility is part of core architecture, not an optional add-on

# ============================================================
# END FILE: 020.architecture/010.shift-manager/0200001_SHIFT_MANAGER_ARCHITECTURE.md
# ============================================================


# ============================================================
# BEGIN FILE: 020.architecture/010.shift-manager/0200002_SHIFT_MANAGER_APPLICATION_DEFINITION.md
# ============================================================

# ============================================================
# SHIFT MANAGER APPLICATION DEFINITION
# ============================================================

status: canonical
type: application-definition
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FINAL DEFINITION
# ============================================================

ShiftManager is a BusinessOS-distributed, mobile-first business application
whose central functions are shift creation and shift sharing.

The application enables administrators or authorized operators
to create, edit, publish, republish, and share shifts in realtime
to permitted people on smartphones and operation screens.

Visibility is controlled by explicit sharing settings.
Only permitted users may view their own shifts
or other shifts within their allowed share scope.

ShiftManager owns:
- shift creation
- shift editing
- draft management
- publication / republication
- sharing settings
- visibility control
- mobile viewing
- notifications
- publication history
- share history

ShiftManager does not primarily own:
- payroll calculation
- accounting posting
- enterprise HR formal authority
- company-wide core approvals
- ERP replacement responsibility

ERP linkage is supported.
ERP remains the formal authority for company-wide master data
such as employee, organization, office, and enterprise integration processing.

The application distribution model and sharing boundary
follow the same style as NameCardManager:
- distributed through BusinessOS
- installable by allowed targets
- visible only to explicitly allowed people
- enterprise integration possible through ERP

The essential operating flow is:
create shift
-> publish shift
-> share to permitted people
-> reflect updates in realtime.

# ============================================================
# 2. ONE-LINE DEFINITION
# ============================================================

ShiftManager is a mobile-first business application
for shift creation and controlled realtime sharing,
with BusinessOS distribution and ERP integration support.

# ============================================================
# 3. SHORT DEFINITION
# ============================================================

A BusinessOS-distributed application
for creating shifts and sharing them in realtime
to permitted people.

# ============================================================
# 4. RESPONSIBILITY BOUNDARY
# ============================================================

ShiftManager responsibilities:
- shift creation
- shift editing
- draft holding
- publish / republish
- sharing settings
- visibility scope control
- mobile viewing
- change notification
- publication / share histories

ERP responsibilities:
- employee formal master
- organization formal master
- office formal master
- enterprise-wide formal integration
- payroll / accounting / HR formal processing

# ============================================================
# 5. NON-GOALS
# ============================================================

ShiftManager is not intended to become:
- a payroll application
- a core attendance engine
- an accounting application
- an ERP replacement
- a giant all-in-one business suite


# ============================================================
# END FILE: 020.architecture/010.shift-manager/0200002_SHIFT_MANAGER_APPLICATION_DEFINITION.md
# ============================================================


# ============================================================
# BEGIN FILE: 020.architecture/010.shift-manager/0200003_SHIFT_MANAGER_COMPETITIVE_FEATURE_EXTENSION_ARCHITECTURE.md
# ============================================================

# ============================================================
# SHIFT MANAGER COMPETITIVE FEATURE EXTENSION ARCHITECTURE
# ============================================================

status: design-extension
type: competitive-feature-extension-architecture
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document adds the competitive-strengthening features
that should extend ShiftManager beyond basic shift creation/sharing.

# ============================================================
# 2. ADDED FEATURE GROUPS
# ============================================================

added_feature_groups:
- headquarters site management dashboard
- shortage / difference / unconfirmed visualization
- requested day-off submission
- change confirmation flag
- lightweight multi-site analytics
- future candidate: shift exchange / support-request
- scheduled automatic draft generation

# ============================================================
# 3. HEADQUARTERS SITE MANAGEMENT DASHBOARD
# ============================================================

purpose:
Provide head-office level visibility
across multiple sites/stores without forcing heavy ERP screens.

core_values:
- see site subscription status
- see site publication status
- see shortage counts
- see warning counts
- see unconfirmed changes
- see ERP export failures
- see inactive/read-only sites quickly

initial_dashboard_cards:
- site count
- active trial inactive site counts
- unpublished site count
- shortage slot count
- warning count
- unconfirmed change count
- ERP export failed count

# ============================================================
# 4. SHORTAGE / DIFFERENCE / UNCONFIRMED VISUALIZATION
# ============================================================

purpose:
Reduce operational accidents after generation or republish.

visualization_targets:
- shortage count
- unassigned slot count
- republish differences
- changed time/person/role
- who has not yet confirmed change visibility

important_rule:
This layer is for operational safety,
not only for reporting.

# ============================================================
# 5. REQUESTED DAY-OFF SUBMISSION / CHANGE CONFIRMATION
# ============================================================

requested_day_off_submission:
- staff can submit requested day off
- manager can review before generation/manual planning
- submission remains draft/planning-side input

change_confirmation_flag:
- after republish or urgent change,
  affected viewers may mark change as confirmed
- manager can see confirmation progress

# ============================================================
# 6. LIGHTWEIGHT MULTI-SITE ANALYTICS
# ============================================================

purpose:
Provide simple operational insight
without turning ShiftManager into a heavy BI tool.

recommended_metrics:
- per-site unpublished count
- per-site shortage count
- warning count
- same-day change count
- PDF export count
- ERP failure count
- requested day-off pending count
- change confirmation pending count

# ============================================================
# 7. FUTURE CANDIDATE: SHIFT EXCHANGE / SUPPORT REQUEST
# ============================================================

future_candidates:
- shift exchange request
- support request to another site/team
- temporary open-shift response

important_note:
These are future candidates,
not required for the first implementation entry.

# ============================================================
# 8. SCHEDULED AUTOMATIC DRAFT GENERATION
# ============================================================

purpose:
Allow managers to reserve automatic draft generation
at configured weekly/monthly times.

important_rule:
Scheduled generation creates draft only.
It must never:
- auto publish
- auto share
- auto export to ERP
- auto perform formal PDF distribution

supported_schedule_patterns:
- weekly day-of-week + time
- monthly fixed day + time
- monthly last day + time
- optional manual run-now

target_period_modes:
- next_week
- next_month

# ============================================================
# 9. ARCHITECTURAL POSITION
# ============================================================

positioning:
- headquarters dashboard = management visibility layer
- shortage/difference/unconfirmed = operational safety layer
- requested day-off = planning input layer
- confirmation flag = publication follow-up layer
- lightweight analytics = operational insight layer
- scheduled generation = timer-driven draft-preparation layer

# ============================================================
# 10. CONCLUSION
# ============================================================

These additions strengthen ShiftManager by making it:
- easier to operate across many sites
- safer after generation/republication
- more useful to staff and managers
- more competitive without abandoning its simple pricing model


# ============================================================
# END FILE: 020.architecture/010.shift-manager/0200003_SHIFT_MANAGER_COMPETITIVE_FEATURE_EXTENSION_ARCHITECTURE.md
# ============================================================


# ============================================================
# BEGIN FILE: 030.model/010.shift-manager/0300000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================

# ============================================================
# SHIFT MANAGER MODEL OVERVIEW
# ============================================================

status: canonical
layer: model
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

main_models:
- shift_schedule
- shift_assignment
- shift_publication
- shift_share_rule
- shift_view_scope
- shift_notification
- erp_linkage_state

# ============================================================
# END FILE: 030.model/010.shift-manager/0300000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================


# ============================================================
# BEGIN FILE: 030.model/010.shift-manager/0300001_SHIFT_MANAGER_MODEL.md
# ============================================================

# ============================================================
# SHIFT MANAGER MODEL
# ============================================================

status: canonical
layer: model
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

model: shift_schedule
fields:
- schedule_id
- company_id
- unit_id
- period_type
- period_start
- period_end
- status
- version_no
- created_by
- updated_by
- created_at
- updated_at

model: shift_assignment
fields:
- assignment_id
- schedule_id
- person_id
- role_code
- shift_date
- start_time
- end_time
- place_id
- memo
- status

model: shift_publication
fields:
- publication_id
- schedule_id
- published_version_no
- published_at
- published_by
- publication_status
- realtime_reflect_flag

model: shift_share_rule
fields:
- share_rule_id
- company_id
- scope_type
- scope_target_id
- visibility_level
- active_flag
- created_at
- updated_at

scope_type_examples:
- person
- team
- department
- admin

model: shift_view_scope
fields:
- view_scope_id
- person_id
- visible_schedule_id
- visible_assignment_id
- visibility_reason
- evaluated_at

model: shift_notification
fields:
- notification_id
- notification_type
- target_person_id
- related_schedule_id
- related_publication_id
- queued_at
- delivered_at
- status

model: erp_linkage_state
fields:
- linkage_id
- schedule_id
- export_status
- export_requested_at
- exported_at
- last_error

# ============================================================
# END FILE: 030.model/010.shift-manager/0300001_SHIFT_MANAGER_MODEL.md
# ============================================================


# ============================================================
# BEGIN FILE: 030.model/010.shift-manager/0300002_SHIFT_MANAGER_PHYSICAL_DATABASE_SCHEMA.md
# ============================================================

# ============================================================
# SHIFT MANAGER PHYSICAL DATABASE SCHEMA
# ============================================================

status: draft-fixed-candidate
type: physical-database-schema-design
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. BASIC POLICY
# ============================================================

The database supports:
- shift drafts
- shift assignments
- publications
- share rules
- visibility scope
- notifications
- ERP linkage state
- audit and history

ERP remains the formal master authority.
ShiftManager stores application-operation data and required reference keys.

# ============================================================
# 2. SCHEMA POLICY
# ============================================================

recommended_schema:
app_shift_manager

reasons:
- clear application responsibility boundary
- easy separation from other apps
- clear maintenance scope
- easy boundary with shared / audit / ERP integration

# ============================================================
# 3. TABLES
# ============================================================

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

support_tables:
- shift_publish_history
- shift_share_history
- shift_access_audit

reference_assumption:
formal masters such as employee / department / team / office are ERP-side authorities

# ============================================================
# 4. TABLE DEFINITIONS
# ============================================================

table: app_shift_manager.shift_schedule
columns:
- schedule_id uuid pk
- company_id uuid not null
- schedule_code text not null
- schedule_name text not null
- target_scope_type text not null
- target_scope_id uuid null
- target_period_type text not null
- period_start_date date not null
- period_end_date date not null
- status text not null
- draft_version_no integer not null default 1
- current_publication_id uuid null
- created_by_person_id uuid not null
- updated_by_person_id uuid not null
- created_at timestamptz not null
- updated_at timestamptz not null
- deleted_at timestamptz null

status_examples:
- draft
- published
- superseded
- closed

table: app_shift_manager.shift_assignment
columns:
- assignment_id uuid pk
- schedule_id uuid not null
- person_id uuid not null
- shift_date date not null
- start_time time not null
- end_time time not null
- role_code text null
- office_id uuid null
- department_id uuid null
- team_id uuid null
- memo text null
- row_status text not null default active
- created_by_person_id uuid not null
- updated_by_person_id uuid not null
- created_at timestamptz not null
- updated_at timestamptz not null
- deleted_at timestamptz null

row_status_examples:
- active
- removed
- superseded

table: app_shift_manager.shift_publication
columns:
- publication_id uuid pk
- schedule_id uuid not null
- publication_version_no integer not null
- publication_status text not null
- publication_note text null
- published_by_person_id uuid not null
- published_at timestamptz not null
- superseded_at timestamptz null
- notification_requested boolean not null default true
- erp_export_required boolean not null default false
- created_at timestamptz not null

publication_status_examples:
- active
- superseded
- cancelled

table: app_shift_manager.shift_publication_assignment
columns:
- publication_assignment_id uuid pk
- publication_id uuid not null
- schedule_id uuid not null
- person_id uuid not null
- shift_date date not null
- start_time time not null
- end_time time not null
- role_code text null
- office_id uuid null
- department_id uuid null
- team_id uuid null
- memo text null
- created_at timestamptz not null

table: app_shift_manager.shift_share_rule
columns:
- share_rule_id uuid pk
- company_id uuid not null
- rule_name text not null
- scope_type text not null
- visibility_level text not null
- active_flag boolean not null default true
- applies_to_schedule_id uuid null
- applies_to_publication_id uuid null
- created_by_person_id uuid not null
- updated_by_person_id uuid not null
- created_at timestamptz not null
- updated_at timestamptz not null
- disabled_at timestamptz null

scope_type_examples:
- person
- team
- department
- management_scope

visibility_level_examples:
- self_only
- assigned_members
- team_visible
- department_visible
- manager_visible

table: app_shift_manager.shift_share_rule_target
columns:
- share_rule_target_id uuid pk
- share_rule_id uuid not null
- target_type text not null
- target_id uuid not null
- created_at timestamptz not null

target_type_examples:
- person
- team
- department
- role

table: app_shift_manager.shift_view_scope
columns:
- view_scope_id uuid pk
- publication_id uuid not null
- viewer_person_id uuid not null
- visible_person_id uuid not null
- visibility_reason text not null
- active_flag boolean not null default true
- evaluated_at timestamptz not null
- expires_at timestamptz null

visibility_reason_examples:
- self
- shared_person
- shared_team
- shared_department
- management_scope

table: app_shift_manager.shift_notification
columns:
- notification_id uuid pk
- notification_type text not null
- target_person_id uuid not null
- schedule_id uuid null
- publication_id uuid null
- title text not null
- body text null
- delivery_status text not null
- queued_at timestamptz not null
- delivered_at timestamptz null
- read_at timestamptz null
- retry_count integer not null default 0
- last_error text null

notification_type_examples:
- publish
- republish
- same_day
- urgent_change

delivery_status_examples:
- queued
- sent
- failed
- read

table: app_shift_manager.erp_linkage_state
columns:
- linkage_id uuid pk
- publication_id uuid not null
- schedule_id uuid not null
- export_status text not null
- export_mode text not null
- export_requested_by uuid null
- export_requested_at timestamptz null
- exported_at timestamptz null
- retry_count integer not null default 0
- external_reference_id text null
- last_error_code text null
- last_error_message text null
- updated_at timestamptz not null

export_status_examples:
- not_required
- pending
- exporting
- success
- failed

export_mode_examples:
- manual
- automatic

table: app_shift_manager.shift_publish_history
columns:
- publish_history_id uuid pk
- schedule_id uuid not null
- publication_id uuid not null
- action_type text not null
- action_by_person_id uuid not null
- action_at timestamptz not null
- action_note text null

action_type_examples:
- publish
- republish
- cancel_publication

table: app_shift_manager.shift_share_history
columns:
- share_history_id uuid pk
- share_rule_id uuid not null
- action_type text not null
- action_by_person_id uuid not null
- action_at timestamptz not null
- before_value_json jsonb null
- after_value_json jsonb null

action_type_examples:
- create_rule
- update_rule
- disable_rule
- expand_scope
- reduce_scope

table: app_shift_manager.shift_access_audit
columns:
- access_audit_id uuid pk
- publication_id uuid not null
- viewer_person_id uuid not null
- visible_person_id uuid not null
- access_type text not null
- accessed_at timestamptz not null
- client_type text null

access_type_examples:
- self_view
- team_view
- department_view
- manager_view

# ============================================================
# 5. INDEX POLICY
# ============================================================

recommended_indexes:
shift_schedule:
- (company_id, period_start_date, period_end_date)
- (status)
- (target_scope_type, target_scope_id)

shift_assignment:
- (schedule_id, shift_date)
- (person_id, shift_date)
- (department_id, shift_date)
- (team_id, shift_date)

shift_publication:
- (schedule_id, publication_version_no desc)
- (publication_status, published_at desc)

shift_publication_assignment:
- (publication_id, shift_date)
- (person_id, shift_date)

shift_view_scope:
- (viewer_person_id, publication_id)
- (viewer_person_id, visible_person_id)
- (publication_id, active_flag)

shift_notification:
- (target_person_id, delivery_status, queued_at desc)

erp_linkage_state:
- (publication_id)
- (export_status, updated_at desc)

# ============================================================
# 6. UNIQUE POLICY
# ============================================================

recommended_uniques:
- shift_schedule: unique(company_id, schedule_code)
- shift_publication: unique(schedule_id, publication_version_no)
- shift_view_scope: unique(publication_id, viewer_person_id, visible_person_id)
- erp_linkage_state: unique(publication_id)

# ============================================================
# 7. LOGICAL DELETE POLICY
# ============================================================

draft_side:
- deleted_at based logical delete allowed

publication_side:
- physical delete not recommended
- use publication_status = cancelled / superseded

audit_side:
- physical delete prohibited in principle

# ============================================================
# 8. IMPORTANT PHYSICAL DECISIONS
# ============================================================

important_points:
- separate draft assignments and publication assignments
- separate share rules and evaluated view scopes
- ERP export targets publication only

# ============================================================
# 9. RECOMMENDED VIEWS AND FUNCTIONS
# ============================================================

recommended_views:
- v_current_active_publication
- v_my_visible_shift_today
- v_my_visible_shift_week
- v_publication_export_status
- v_schedule_publish_summary

recommended_functions:
- fn_publish_shift(schedule_id, published_by)
- fn_rebuild_shift_view_scope(publication_id)
- fn_queue_shift_notifications(publication_id)
- fn_mark_erp_export_pending(publication_id)


# ============================================================
# END FILE: 030.model/010.shift-manager/0300002_SHIFT_MANAGER_PHYSICAL_DATABASE_SCHEMA.md
# ============================================================


# ============================================================
# BEGIN FILE: 030.model/010.shift-manager/0300003_SHIFT_MANAGER_PHYSICAL_DDL_EXECUTION_DESIGN.md
# ============================================================

# ============================================================
# SHIFT MANAGER PHYSICAL DDL EXECUTION DESIGN
# ============================================================

status: execution-ddl-design-candidate
type: physical-ddl-execution-design
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document refines the physical DDL draft
toward an execution-ready design level.

It is not yet the final production execution SQL itself,
but it is fixed at a granularity that can be translated into execution SQL.

# ============================================================
# 2. FIXED PRINCIPLES
# ============================================================

fixed_principles:
- schema name is app_shift_manager
- separate draft and publication
- separate share rules and evaluated view scopes
- ERP export targets publication only
- auto generation belongs to draft-side responsibility
- audit/history rows should not be casually deleted
- draft-side deletion prefers logical delete

execution_focus:
- tighter type fixation
- more check constraints
- clearer unique/index definition
- formalized generation-side tables

# ============================================================
# 3. SCHEMA STRUCTURE
# ============================================================

dedicated_schema:
- app_shift_manager

schema_contents:
- business tables
- generation tables
- helper functions
- app-specific views

possible_future_externalization:
- common audit foundation
- common notification transport foundation
- common ERP connector logs

initial_recommendation:
Keep them inside ShiftManager schema for the first phase.

# ============================================================
# 4. EXECUTION-LEVEL TABLE SET
# ============================================================

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

history_audit_tables:
- shift_publish_history
- shift_share_history
- shift_access_audit

generation_tables:
- shift_generation_rule
- shift_generation_result
- shift_generation_warning

# ============================================================
# 5. COLUMN FIXATION DIRECTION
# ============================================================

shift_schedule_additional_columns:
- generation_mode text not null default 'manual'
- auto_generated_flag boolean not null default false
- has_generation_warnings boolean not null default false
- generation_rule_id uuid null
- auto_generation_summary_json jsonb null
- auto_generated_at timestamptz null
- auto_generated_by_person_id uuid null

shift_schedule_additional_check:
- generation_mode in ('manual','auto_generated','auto_generated_then_edited')

shift_assignment_additional_candidate:
- source_type text not null default 'manual'

source_type_examples:
- manual
- auto_generated
- auto_adjusted

shift_publication_optional_candidate:
- source_generation_mode text null

shift_notification_additional_candidate:
- channel_type text not null default 'in_app'

channel_type_examples:
- in_app
- push
- line
- slack
- sms
- mail

# ============================================================
# 6. EXECUTION ORDER
# ============================================================

recommended_execution_order:
1. schema
2. core tables
3. generation tables
4. history/audit tables
5. indexes
6. helper functions
7. triggers
8. views
9. RLS enable
10. policies

# ============================================================
# 7. SHIFT_SCHEDULE EXECUTION-READY IMAGE
# ============================================================

create table if not exists app_shift_manager.shift_schedule (
  schedule_id uuid primary key,
  company_id uuid not null,
  schedule_code text not null,
  schedule_name text not null,
  target_scope_type text not null,
  target_scope_id uuid null,
  target_period_type text not null,
  period_start_date date not null,
  period_end_date date not null,
  status text not null,
  draft_version_no integer not null default 1,
  current_publication_id uuid null,
  generation_mode text not null default 'manual',
  auto_generated_flag boolean not null default false,
  has_generation_warnings boolean not null default false,
  generation_rule_id uuid null,
  auto_generation_summary_json jsonb null,
  auto_generated_at timestamptz null,
  auto_generated_by_person_id uuid null,
  created_by_person_id uuid not null,
  updated_by_person_id uuid not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  deleted_at timestamptz null,
  constraint uq_shift_schedule_company_code
    unique (company_id, schedule_code),
  constraint ck_shift_schedule_status
    check (status in ('draft', 'published', 'superseded', 'closed')),
  constraint ck_shift_schedule_target_period_type
    check (target_period_type in ('day', 'week', 'month')),
  constraint ck_shift_schedule_generation_mode
    check (generation_mode in ('manual', 'auto_generated', 'auto_generated_then_edited')),
  constraint ck_shift_schedule_period
    check (period_end_date >= period_start_date)
);

# ============================================================
# 8. SHIFT_GENERATION_RULE EXECUTION-READY IMAGE
# ============================================================

create table if not exists app_shift_manager.shift_generation_rule (
  generation_rule_id uuid primary key,
  company_id uuid not null,
  rule_name text not null,
  target_scope_type text not null,
  target_scope_id uuid null,
  period_type text not null,
  active_flag boolean not null default true,
  condition_json jsonb not null,
  priority_policy text null,
  created_by_person_id uuid not null,
  updated_by_person_id uuid not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint ck_shift_generation_rule_scope_type
    check (target_scope_type in ('team', 'department', 'office', 'mixed')),
  constraint ck_shift_generation_rule_period_type
    check (period_type in ('day', 'week', 'month'))
);

# ============================================================
# 9. SHIFT_GENERATION_RESULT EXECUTION-READY IMAGE
# ============================================================

create table if not exists app_shift_manager.shift_generation_result (
  generation_result_id uuid primary key,
  schedule_id uuid not null,
  generation_rule_id uuid null,
  generated_at timestamptz not null default now(),
  generated_by_person_id uuid not null,
  generated_assignment_count integer not null default 0,
  unassigned_count integer not null default 0,
  warning_count integer not null default 0,
  result_summary_json jsonb null,
  constraint fk_shift_generation_result_schedule
    foreign key (schedule_id)
    references app_shift_manager.shift_schedule(schedule_id),
  constraint fk_shift_generation_result_rule
    foreign key (generation_rule_id)
    references app_shift_manager.shift_generation_rule(generation_rule_id)
);

# ============================================================
# 10. SHIFT_GENERATION_WARNING EXECUTION-READY IMAGE
# ============================================================

create table if not exists app_shift_manager.shift_generation_warning (
  generation_warning_id uuid primary key,
  generation_result_id uuid not null,
  warning_type text not null,
  warning_level text not null,
  target_date date null,
  target_slot text null,
  related_person_id uuid null,
  message text not null,
  details_json jsonb null,
  created_at timestamptz not null default now(),
  constraint fk_shift_generation_warning_result
    foreign key (generation_result_id)
    references app_shift_manager.shift_generation_result(generation_result_id),
  constraint ck_shift_generation_warning_level
    check (warning_level in ('info', 'warning', 'high', 'critical'))
);

warning_type_examples:
- unassigned_slot
- requested_day_off_conflict
- consecutive_work_risk
- imbalance_warning
- skill_shortage
- priority_fallback

# ============================================================
# 11. INDEX POLICY
# ============================================================

generation_rule_indexes:
- (company_id, active_flag)
- (target_scope_type, target_scope_id)

generation_result_indexes:
- (schedule_id, generated_at desc)
- (generation_rule_id, generated_at desc)

generation_warning_indexes:
- (generation_result_id)
- (warning_level, target_date)

schedule_additional_indexes:
- (generation_mode)
- (auto_generated_flag, has_generation_warnings)

# ============================================================
# 12. TRIGGER / UPDATED_AT DIRECTION
# ============================================================

updated_at_trigger_targets:
- shift_schedule
- shift_assignment
- shift_share_rule
- erp_linkage_state
- shift_generation_rule

recommendation:
Reuse the same updated_at trigger strategy already planned.

# ============================================================
# 13. FK POLICY
# ============================================================

use_real_fk_inside_app_boundary:
- schedule -> assignment
- schedule -> publication relation side
- share_rule -> share_rule_target
- publication -> publication_assignment
- generation_result -> schedule
- generation_result -> generation_rule
- generation_warning -> generation_result

logical_reference_only_for_external_master:
- person_id
- company_id
- department_id
- team_id
- office_id

# ============================================================
# 14. ADDITIONAL CHECK CONSTRAINTS
# ============================================================

recommended_checks:
shift_assignment:
- start_time < end_time

shift_publication_assignment:
- start_time < end_time

shift_generation_result:
- generated_assignment_count >= 0
- unassigned_count >= 0
- warning_count >= 0

note:
Cross-table checks such as assignment date inside schedule period
are better handled in application logic or controlled functions
than with fragile DB-level cross-table constraints.

# ============================================================
# 15. HELPER FUNCTION CANDIDATES
# ============================================================

helper_candidates:
- fn_auto_generate_shift_draft(schedule_id uuid, generation_rule_id uuid, executed_by uuid)
- fn_apply_generation_result_to_draft(...)
- fn_collect_generation_warnings(...)

recommendation:
In this phase, tables and minimum helper direction are enough.
Generation logic functions may be fixed in the next step.

# ============================================================
# 16. CRITICAL DESIGN DECISIONS
# ============================================================

critical_points:
- generation_rule should stay jsonb-centered at first
- shift_schedule keeps generation metadata as auxiliary attributes
- warnings should be separate rows for review/fix flow
- auto-generated assignments still land in existing shift_assignment
- generation must not create a new publication state by itself

# ============================================================
# 17. CONCLUSION
# ============================================================

Execution-ready physical DDL design is stable with:
- the original core/history tables
- plus three generation tables

Even with auto generation added,
the design still preserves:
- main status simplicity
- manual publication control
- publication-only ERP export
- draft/publication separation


# ============================================================
# END FILE: 030.model/010.shift-manager/0300003_SHIFT_MANAGER_PHYSICAL_DDL_EXECUTION_DESIGN.md
# ============================================================


# ============================================================
# BEGIN FILE: 030.model/010.shift-manager/0300004_SHIFT_MANAGER_SITE_SUBSCRIPTION_MODEL.md
# ============================================================

# ============================================================
# SHIFT MANAGER SITE SUBSCRIPTION MODEL
# ============================================================

status: design-extension
type: site-subscription-model
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes how ShiftManager should model:
- licensed site/unit
- subscription status
- trial period
- feature gating basis

# ============================================================
# 2. CORE POSITION
# ============================================================

core_position:
- pricing is site-based
- one licensed site may use PC and smartphone
- unlimited users inside licensed site
- subscription state is evaluated per site/unit

# ============================================================
# 3. RECOMMENDED CORE TABLES
# ============================================================

recommended_tables:
- shift_site_license
- shift_site_subscription_status
- shift_site_feature_gate_log

# ============================================================
# 4. SHIFT_SITE_LICENSE
# ============================================================

purpose:
Represents the licensed operational site/unit.

recommended_columns:
- site_license_id uuid primary key
- company_id uuid not null
- site_id uuid not null
- site_code text not null
- site_name text not null
- active_flag boolean not null default true
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

recommended_constraints:
- unique(company_id, site_id)
- unique(company_id, site_code)

meaning:
One site license corresponds to one priced operation unit.

# ============================================================
# 5. SHIFT_SITE_SUBSCRIPTION_STATUS
# ============================================================

purpose:
Stores current and historical subscription state
for each licensed site.

recommended_columns:
- site_subscription_status_id uuid primary key
- site_license_id uuid not null
- subscription_status text not null
- trial_started_at timestamptz null
- trial_ends_at timestamptz null
- active_started_at timestamptz null
- grace_started_at timestamptz null
- grace_ends_at timestamptz null
- inactive_started_at timestamptz null
- current_period_started_at timestamptz null
- current_period_ends_at timestamptz null
- last_billing_reference text null
- status_changed_at timestamptz not null default now()
- status_changed_reason text null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

recommended_constraints:
- subscription_status in ('trial', 'active', 'grace', 'inactive')

recommended_rule:
Only one current active status row per site should be treated as authoritative,
or current state should be materialized separately depending on implementation style.

# ============================================================
# 6. SHIFT_SITE_FEATURE_GATE_LOG
# ============================================================

purpose:
Optional trace table for why a feature was allowed/blocked.

recommended_columns:
- feature_gate_log_id uuid primary key
- site_license_id uuid not null
- person_id uuid null
- feature_code text not null
- decision text not null
- evaluated_status text not null
- evaluated_at timestamptz not null default now()
- reason_code text null
- details_json jsonb null

recommended_constraints:
- decision in ('allowed', 'blocked')
- evaluated_status in ('trial', 'active', 'grace', 'inactive')

# ============================================================
# 7. SUBSCRIPTION STATUS MEANINGS
# ============================================================

trial:
- initial 3-day trial
- near-full feature usage allowed

active:
- paid active state
- standard full feature usage allowed

grace:
- temporary state after payment issue or renewal delay
- short continuation allowed

inactive:
- unpaid / inactive state
- read-only mode

# ============================================================
# 8. FEATURE GATE MODEL
# ============================================================

feature_gate_categories:
- viewing
- schedule_write
- generation
- publish
- share_manage
- pdf_export
- erp_export
- admin_setting

recommended_feature_codes:
- view_self_shift
- view_visible_publication
- create_schedule
- edit_schedule
- run_auto_generation
- publish_schedule
- republish_schedule
- manage_share_rule
- export_pdf
- export_erp
- manage_generation_rule

# ============================================================
# 9. GATE RULES BY STATUS
# ============================================================

trial:
- viewing = allowed
- schedule_write = allowed
- generation = allowed
- publish = allowed
- share_manage = allowed
- pdf_export = allowed
- erp_export = allowed
- admin_setting = allowed within standard scope

active:
- all standard features allowed

grace:
- same as active in short grace window by default

inactive:
- viewing only
- write/generate/publish/share/export blocked

# ============================================================
# 10. READ-ONLY SCOPE
# ============================================================

inactive_allowed_scope:
- self shift viewing
- already visible published shift viewing
- notification viewing
- minimal account/subscription status viewing

inactive_blocked_scope:
- create schedule
- edit schedule
- auto generation
- publish / republish
- share rule management
- new PDF export
- ERP export
- generation rule management
- management-side setting changes

# ============================================================
# 11. RELATION TO VISIBILITY MODEL
# ============================================================

important_rule:
Subscription inactivity must not expand visibility.

meaning:
Even in read-only mode,
the user can only view what was already permitted by normal visibility rules.

# ============================================================
# 12. CONCLUSION
# ============================================================

ShiftManager should model subscription at the site level,
with status values:
- trial
- active
- grace
- inactive

Feature gates should then be evaluated from:
- site subscription state
- normal role/visibility authority
- endpoint/feature type


# ============================================================
# END FILE: 030.model/010.shift-manager/0300004_SHIFT_MANAGER_SITE_SUBSCRIPTION_MODEL.md
# ============================================================


# ============================================================
# BEGIN FILE: 030.model/010.shift-manager/0300005_SHIFT_MANAGER_ADDITIONAL_FEATURE_MODEL_EXTENSION.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE MODEL EXTENSION
# ============================================================

status: design-extension
type: additional-feature-model-extension
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document adds the model candidates
for newly adopted competitive features.

# ============================================================
# 2. NEW TABLE CANDIDATES
# ============================================================

new_table_candidates:
- shift_site_dashboard_snapshot
- shift_publication_difference
- shift_change_confirmation
- shift_requested_day_off
- shift_site_analytics_snapshot
- shift_support_request
- shift_exchange_request
- shift_auto_generation_schedule
- shift_auto_generation_execution

# ============================================================
# 3. HEADQUARTERS / MULTI-SITE
# ============================================================

shift_site_dashboard_snapshot:
purpose:
- cache or summarize per-site operational indicators

suggested_fields:
- site_dashboard_snapshot_id
- company_id
- site_id
- snapshot_at
- subscription_status
- unpublished_count
- shortage_count
- warning_count
- unconfirmed_change_count
- erp_failed_count

shift_site_analytics_snapshot:
purpose:
- lightweight analytics by site

suggested_fields:
- site_analytics_snapshot_id
- company_id
- site_id
- period_start_date
- period_end_date
- same_day_change_count
- pdf_export_count
- erp_failure_count
- requested_day_off_pending_count
- change_confirmation_pending_count
- created_at

# ============================================================
# 4. DIFFERENCE / CONFIRMATION
# ============================================================

shift_publication_difference:
purpose:
- store meaningful republish differences

suggested_fields:
- publication_difference_id
- old_publication_id
- new_publication_id
- affected_person_id
- difference_type
- difference_summary
- before_value_json
- after_value_json
- created_at

difference_type_enum:
- time_changed
- person_changed
- role_changed
- office_changed
- assignment_added
- assignment_removed

shift_change_confirmation:
purpose:
- allow affected viewers to mark that they confirmed a change

suggested_fields:
- change_confirmation_id
- publication_difference_id
- publication_id
- target_person_id
- confirmation_status
- confirmed_at
- created_at

confirmation_status_enum:
- pending
- confirmed
- ignored

# ============================================================
# 5. REQUESTED DAY-OFF
# ============================================================

shift_requested_day_off:
purpose:
- collect requested day-off inputs before planning/generation

suggested_fields:
- requested_day_off_id
- company_id
- site_id
- person_id
- requested_date
- requested_status
- request_note
- requested_at
- reviewed_by_person_id
- reviewed_at

requested_status_enum:
- submitted
- approved
- rejected
- cancelled

# ============================================================
# 6. FUTURE CANDIDATES
# ============================================================

shift_support_request:
purpose:
- future support request between sites/teams

shift_exchange_request:
purpose:
- future shift exchange request

future_status_note:
These are future candidates and do not block current implementation entry.

# ============================================================
# 7. SCHEDULED AUTO GENERATION
# ============================================================

shift_auto_generation_schedule:
purpose:
- define timer-based draft generation reservation

suggested_fields:
- auto_generation_schedule_id
- company_id
- site_license_id
- target_scope_type
- target_scope_id
- generation_rule_id
- schedule_type
- execution_timezone
- weekly_day_of_week
- monthly_day
- monthly_use_last_day
- execution_time
- target_period_mode
- active_flag
- created_by_person_id
- updated_by_person_id
- created_at
- updated_at

schedule_type_enum:
- weekly
- monthly_fixed_day
- monthly_last_day
- once

target_period_mode_enum:
- next_week
- next_month

weekly_day_of_week_enum:
- mon
- tue
- wed
- thu
- fri
- sat
- sun

shift_auto_generation_execution:
purpose:
- record actual timer execution result

suggested_fields:
- auto_generation_execution_id
- auto_generation_schedule_id
- executed_at
- execution_status
- generated_schedule_id
- generation_result_id
- warning_count
- unassigned_count
- error_code
- error_message
- created_at

execution_status_enum:
- scheduled
- running
- success
- failed
- skipped

important_rule:
If subscription state is inactive,
timer execution must be skipped rather than performed.

# ============================================================
# 8. CONCLUSION
# ============================================================

These model extensions support:
- multi-site operation
- safer republish handling
- day-off input
- lightweight analytics
- future exchange/support features
- timer-based automatic draft generation


# ============================================================
# END FILE: 030.model/010.shift-manager/0300005_SHIFT_MANAGER_ADDITIONAL_FEATURE_MODEL_EXTENSION.md
# ============================================================


# ============================================================
# BEGIN FILE: 030.model/010.shift-manager/0300006_SHIFT_MANAGER_ADDITIONAL_FEATURE_PHYSICAL_DDL_EXECUTION_EXTENSION.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE PHYSICAL DDL EXECUTION EXTENSION
# ============================================================

status: design-extension
type: additional-feature-physical-ddl-execution-extension
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the execution-facing DDL direction
for the newly added competitive features.

# ============================================================
# 2. TARGET TABLES
# ============================================================

target_tables:
- shift_requested_day_off
- shift_publication_difference
- shift_change_confirmation
- shift_site_dashboard_snapshot
- shift_site_analytics_snapshot
- shift_auto_generation_schedule
- shift_auto_generation_execution

# ============================================================
# 3. KEY DDL DIRECTION
# ============================================================

ddl_direction:
- use uuid primary keys
- use company_id for company boundary wherever applicable
- keep enum-like values as checked text initially
- use created_at / updated_at timestamptz
- use logical status progression where review exists
- separate schedule definition and execution history for timer generation
- difference rows must remain publication-based
- analytics snapshots remain lightweight summary rows

# ============================================================
# 4. EXECUTION ORDER RECOMMENDATION
# ============================================================

execution_order:
1. shift_requested_day_off
2. shift_publication_difference
3. shift_change_confirmation
4. shift_auto_generation_schedule
5. shift_auto_generation_execution
6. shift_site_dashboard_snapshot
7. shift_site_analytics_snapshot
8. indexes
9. updated_at triggers
10. RLS / authorization policies

# ============================================================
# 5. CONCLUSION
# ============================================================

These tables should be added as explicit execution-facing DDL targets
before implementation of the related competitive features.


# ============================================================
# END FILE: 030.model/010.shift-manager/0300006_SHIFT_MANAGER_ADDITIONAL_FEATURE_PHYSICAL_DDL_EXECUTION_EXTENSION.md
# ============================================================


# ============================================================
# BEGIN FILE: 030.model/010.shift-manager/0300007_SHIFT_MANAGER_PERSONA_BASIC_SET_DB_FIT_AND_ADDITIVE_PLACEMENT.md
# ============================================================

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


# ============================================================
# END FILE: 030.model/010.shift-manager/0300007_SHIFT_MANAGER_PERSONA_BASIC_SET_DB_FIT_AND_ADDITIVE_PLACEMENT.md
# ============================================================


# ============================================================
# BEGIN FILE: 030.model/010.shift-manager/0300008_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_EXACTIFICATION_WITH_PERSONA_BASIC_SET.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE SQL EXACTIFICATION
# WITH PERSONA BASIC SET
# ============================================================

status: design-extension
type: additional-feature-sql-exactification-with-persona-basic-set
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes how the additional feature SQL pack
should be exactified
while the Persona-side DB dump is treated as a basic-set foundation reference.

This is not live-schema proof.
This is safe exactification direction.

# ============================================================
# 2. BASIC POSITION
# ============================================================

basic_position:
- Persona-side dump is a foundation reference only
- ShiftManager additional feature tables are additive
- SQL exactification should align to confirmed foundation axes
- unresolved foundation details should remain explicitly marked

foundation_axes_to_reuse:
- company_id
- person_id
- site_id

possible_foundation_axes_to_reuse_if_confirmed_later:
- office_id
- department_id
- team_id
- affiliation/user/account linkage axes

# ============================================================
# 3. EXACTIFICATION TARGET SQL FILES
# ============================================================

target_sql_files:
- 015_shift_manager_additional_feature_tables.sql
- 022_shift_manager_additional_feature_indexes.sql
- 109_shift_manager_rls_requested_day_off.sql
- 110_shift_manager_rls_additional_generation.sql
- 111_shift_manager_rls_difference_confirmation.sql
- 112_shift_manager_rls_headquarters_summary.sql

# ============================================================
# 4. CONFIRMED EXACTIFICATION RULES
# ============================================================

confirmed_rules:
- use company_id as the minimum company boundary
- use person_id for person-scoped ownership or confirmation
- use site_id where the business object is site/store scoped
- keep application-owned behavior tables inside app_shift_manager
- keep enum-like values as checked text until stronger foundation evidence is required
- keep created_at/updated_at timestamptz
- keep scheduled generation definition and execution separated
- keep publication difference rows publication-based
- keep dashboard/analytics rows lightweight snapshots

# ============================================================
# 5. NOT-YET-FINALIZED ITEMS
# ============================================================

not_yet_finalized_items:
- exact live foreign key targets for company_id/person_id/site_id
- whether office_id / department_id / team_id are foundation-owned or app-side copied references
- exact nullability for some future scope references
- whether headquarters_operator role is foundation-mapped or application-mapped
- exact UUID generation strategy
- exact view/helper dependency set in final SQL execution environment

rule_for_unfinalized_items:
Do not pretend these are fully live-confirmed.
Mark them as:
- foundation-fit expected
- final FK target pending foundation confirmation

# ============================================================
# 6. TABLE-BY-TABLE FIT DIRECTION
# ============================================================

shift_requested_day_off:
confirmed_fit:
- company_id required
- site_id required
- person_id required
reason:
request belongs to one person inside one site/company scope

shift_publication_difference:
confirmed_fit:
- company_id required
- publication IDs remain app-owned references
- affected_person_id optional but foundation-aligned
reason:
difference is app-owned but affected person should align to foundation person axis

shift_change_confirmation:
confirmed_fit:
- company_id required
- publication_difference_id / publication_id remain app-owned references
- target_person_id required and foundation-aligned
reason:
confirmation is person-specific and publication-follow-up-side

shift_auto_generation_schedule:
confirmed_fit:
- company_id required
- site_license_id app-owned
- target_scope_id app-owned reference direction, but must align logically to site/department/team scope meaning
- generation_rule_id app-owned
reason:
schedule definition is app-owned but company/site meaning must fit foundation

shift_auto_generation_execution:
confirmed_fit:
- company_id required
- auto_generation_schedule_id app-owned
- generated_schedule_id / generation_result_id app-owned
reason:
execution is fully app-owned history with company boundary

shift_site_dashboard_snapshot:
confirmed_fit:
- company_id required
- site_id required
reason:
snapshot is company/site summary row

shift_site_analytics_snapshot:
confirmed_fit:
- company_id required
- site_id required
reason:
analytics is lightweight site summary row

# ============================================================
# 7. INDEX EXACTIFICATION RULES
# ============================================================

index_rules:
- index by company boundary where business lookup is company-scoped
- index by person_id for self/request/confirmation lookup
- index by site_id for site dashboard/analytics lookup
- index by schedule/execution timestamps for timer history
- avoid speculative indexes for not-yet-implemented heavy BI reads

# ============================================================
# 8. RLS EXACTIFICATION RULES
# ============================================================

rls_rules:
- RLS should rely on confirmed company/person scope first
- requested day-off = self-first + manager scope
- scheduled generation = manager-side only
- difference/confirmation = affected person or manager-side summary
- headquarters snapshot/analytics = headquarters/enterprise summary scope
- inactive subscription blocking remains app/service gate, not RLS replacement

# ============================================================
# 9. SQL COMMENTING RULE FOR UNRESOLVED FOUNDATION FIT
# ============================================================

recommended_sql_comment_rule:
For any future FK-style line not yet foundation-confirmed,
use comments such as:
- foundation-fit expected
- final FK target pending Persona basic-set confirmation
- app-owned reference retained for now

# ============================================================
# 10. PRACTICAL EXACTIFICATION OUTCOME
# ============================================================

practical_outcome:
At this stage,
the SQL pack should be treated as:
- structurally exact enough for design
- aligned to confirmed foundation axes
- honest about unresolved FK certainty
- safe for later final execution review

# ============================================================
# 11. CONCLUSION
# ============================================================

Additional feature SQL exactification should proceed
by reusing confirmed Persona basic-set identity axes,
while keeping unresolved live-FK certainty explicitly pending.


# ============================================================
# END FILE: 030.model/010.shift-manager/0300008_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_EXACTIFICATION_WITH_PERSONA_BASIC_SET.md
# ============================================================


# ============================================================
# BEGIN FILE: 040.runtime/010.shift-manager/0400000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================

# ============================================================
# SHIFT MANAGER RUNTIME OVERVIEW
# ============================================================

status: canonical
layer: runtime
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

runtime_focus:
- draft editing
- publication switching
- realtime refresh
- visibility evaluation
- ERP output timing

# ============================================================
# END FILE: 040.runtime/010.shift-manager/0400000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================


# ============================================================
# BEGIN FILE: 040.runtime/010.shift-manager/0400001_SHIFT_MANAGER_RUNTIME.md
# ============================================================

# ============================================================
# SHIFT MANAGER RUNTIME
# ============================================================

status: canonical
layer: runtime
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

runtime_states:
schedule_status:
- DRAFT
- PUBLISHED
- SUPERSEDED
- CLOSED

runtime_rules:
1. Only published schedules are share-visible.
2. Draft schedules are editable by authorized creators only.
3. A publication event must invalidate older public views for the same active scope when replaced.
4. Visibility must be reevaluated when share rules change.
5. Mobile clients must fetch the latest published data allowed by scope.
6. ERP export shall use publication-based data, not arbitrary draft data.

realtime_behavior:
- after publication, the new version becomes visible
- after correction publication, clients receive latest publish state
- unauthorized cached visibility must not survive permission revocation

# ============================================================
# END FILE: 040.runtime/010.shift-manager/0400001_SHIFT_MANAGER_RUNTIME.md
# ============================================================


# ============================================================
# BEGIN FILE: 040.runtime/010.shift-manager/0400002_SHIFT_MANAGER_STATE_TRANSITION_WITH_AUTO_GENERATION.md
# ============================================================

# ============================================================
# SHIFT MANAGER STATE TRANSITION WITH AUTO GENERATION
# ============================================================

status: design-fixed-candidate
type: state-transition-design
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes major state transitions in ShiftManager.

targeted state domains:
- schedule main state
- publication state
- share/visibility state
- notification state
- ERP linkage state
- auto-generation-related draft attributes

# ============================================================
# 2. BASIC PRINCIPLES
# ============================================================

principles:
1. auto generation still keeps schedule inside draft-side lifecycle
2. nothing becomes shared/visible unless published
3. auto generation does not change publication state directly
4. visibility is evaluated after publication
5. ERP export moves only after publication

# ============================================================
# 3. SCHEDULE MAIN STATE
# ============================================================

fixed_schedule_status:
- draft
- published
- superseded
- closed

additional_attributes:
generation_mode:
- manual
- auto_generated
- auto_generated_then_edited

has_generation_warnings:
- true
- false

auto_generated_flag:
- true
- false

# ============================================================
# 4. MAIN SCHEDULE TRANSITION
# ============================================================

main_transition:
new_schedule
-> draft

draft
- manual edit continue
- auto generate execute -> draft (generation_mode=auto_generated)
- auto generated then manual fix -> draft (generation_mode=auto_generated_then_edited)
- validate-for-publication -> draft
- publish -> published
- close -> closed

published
- start next edit -> draft
- republish -> new publication while schedule remains published-side lifecycle
- close -> closed

old_published_meaning:
- superseded when replaced by newer published result

# ============================================================
# 5. AUTO GENERATION TRANSITION
# ============================================================

auto_generation_flow:
condition_not_set
-> condition_set
-> auto_generation_execute
-> draft_generated
   - warning_free
   - with_warnings
   - with_unassigned
-> manual_adjustment
-> validate-for-publication
-> publish

important_rules:
- auto generation failure should not destroy existing draft
- auto generation result must go through review
- draft generation may succeed even with warnings/unassigned slots

# ============================================================
# 6. PUBLICATION STATE
# ============================================================

publication_status:
- active
- superseded
- cancelled

publication_transition:
draft
-> publish
-> publication(active)

publication(active)
- republish -> old publication(superseded) + new publication(active)
- cancel -> cancelled
- keep -> active

important_note:
schedule status and publication status are not the same.
schedule is app-side lifecycle.
publication is fixed version lifecycle.

# ============================================================
# 7. VALIDATE-FOR-PUBLICATION POSITION
# ============================================================

validate_position:
draft
-> validate-for-publication
-> ready = true/false
-> still draft

meaning:
- no state switch
- returns warnings/gaps/duplicates/readiness
- affects whether publish should proceed

# ============================================================
# 8. SHARE / VISIBILITY TRANSITION
# ============================================================

share_visibility_flow:
draft
-> publish
-> publication(active)
-> share-rule evaluation
-> view-scope generated
-> visible

share_state_concepts:
- not_share_target
- share_rule_defined
- share_preview_confirmed
- view_scope_generated
- visible
- share_stopped

recommended_representation:
do not force one single status column.
represent using share rules and evaluated view scope.

viewer_side_visibility:
- invisible
- visible_self
- visible_shared
- visible_manager_scope
- revoked

viewer_transition_examples:
unpublished -> invisible
publication + self assignment -> visible_self
publication + explicit share -> visible_shared
publication + management scope -> visible_manager_scope
share stop / permission revoke -> revoked

# ============================================================
# 9. NOTIFICATION STATE
# ============================================================

notification_delivery_status:
- queued
- sent
- failed
- read

notification_transition:
publication(active)
-> notification queue created
-> queued
   - delivery success -> sent
   - delivery failure -> failed
      - retry -> queued
   - user read -> read

important_rules:
- read is post-delivery user-side state
- failed must be retryable
- draft must not create publication notifications

# ============================================================
# 10. ERP LINKAGE STATE
# ============================================================

erp_export_status:
- not_required
- pending
- exporting
- success
- failed

erp_transition:
publication(active)
- not ERP target -> not_required
- ERP target -> pending -> exporting -> success / failed
- failed -> retry -> pending

important_rules:
- ERP export target is publication only
- republish creates a new ERP export target publication

# ============================================================
# 11. REPUBLISH WHOLE FLOW
# ============================================================

republish_whole_flow:
old_publication(active)
-> new draft edit
-> draft
-> republish
-> new_publication(active)
-> old_publication(superseded)
-> share reevaluation
-> view_scope rebuild
-> republish notification
-> ERP export pending

# ============================================================
# 12. WHOLE FLOW WITH AUTO GENERATION
# ============================================================

whole_flow_with_auto_generation:
condition_setting
-> auto_generate_execute
-> draft(auto_generated)
-> warning_review
-> manual_adjustment
-> draft(auto_generated_then_edited)
-> validate-for-publication
-> publish
-> publication(active)
-> share preview / share rule evaluation
-> view_scope generated
-> visible
-> notification queued/sent
-> ERP pending/exporting/success

# ============================================================
# 13. FORBIDDEN ACTIONS BY STATE
# ============================================================

draft:
- do not share to staff/public viewers
- do not export to ERP
- do not send publication notifications

publication(active):
- do not directly edit fixed publication rows
- create next draft for changes instead

superseded publication:
- do not treat as current visible version
- keep as history

failed notification / failed ERP export:
- do not swallow errors
- keep retryable state

# ============================================================
# 14. CRITICAL FIXATION POINTS
# ============================================================

critical_points:
- auto generation is represented as draft-side attributes, not a separate main status
- publish and visible are different states
- republish supersedes old publication
- ERP state is publication-based

# ============================================================
# 15. CONCLUSION
# ============================================================

ShiftManager state transition is cleanly organized by:
- schedule state
- publication state
- notification state
- ERP linkage state

Auto generation is best handled
as a draft-generation mode and pre-publication support flow,
not as automatic publication.


# ============================================================
# END FILE: 040.runtime/010.shift-manager/0400002_SHIFT_MANAGER_STATE_TRANSITION_WITH_AUTO_GENERATION.md
# ============================================================


# ============================================================
# BEGIN FILE: 040.runtime/010.shift-manager/0400003_SHIFT_MANAGER_TIMER_BASED_AUTO_GENERATION_RUNTIME.md
# ============================================================

# ============================================================
# SHIFT MANAGER TIMER-BASED AUTO GENERATION RUNTIME
# ============================================================

status: design-extension
type: timer-based-auto-generation-runtime
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the runtime behavior
for scheduled automatic draft generation.

# ============================================================
# 2. CORE RULE
# ============================================================

core_rule:
Timer-based auto generation creates draft only.
It must never:
- publish automatically
- share automatically
- export to ERP automatically
- perform formal PDF distribution automatically

# ============================================================
# 3. EXECUTION FLOW
# ============================================================

execution_flow:
1. scheduler finds active auto_generation_schedule rows
2. execution time is matched in execution_timezone
3. subscription state is checked
4. existing target-period draft collision is checked
5. generation_rule validity is checked
6. auto-generate draft is executed
7. execution result is recorded
8. manager-facing result notification may be queued

# ============================================================
# 4. SKIP RULES
# ============================================================

skip_rules:
- subscription inactive
- target schedule already exists and policy forbids overwrite
- generation rule inactive
- target scope invalid
- required site/license context unresolved

recommended_skip_error_codes:
- SUBSCRIPTION_INACTIVE_READ_ONLY
- AUTO_GENERATION_TARGET_ALREADY_EXISTS
- GENERATION_RULE_INACTIVE
- SITE_LICENSE_NOT_FOUND

# ============================================================
# 5. SUPPORTED SCHEDULE TYPES
# ============================================================

supported_schedule_types:
weekly:
- weekly_day_of_week + execution_time

monthly_fixed_day:
- monthly_day + execution_time

monthly_last_day:
- last day of month + execution_time

once:
- one-time future execution

# ============================================================
# 6. TARGET PERIOD CALCULATION
# ============================================================

target_period_mode:
next_week:
- generate next week draft

next_month:
- generate next month draft

# ============================================================
# 7. SUBSCRIPTION RELATION
# ============================================================

subscription_relation:
trial:
- allowed

active:
- allowed

grace:
- allowed

inactive:
- skipped

# ============================================================
# 8. MANAGER REVIEW RELATION
# ============================================================

important_manager_rule:
Generated output remains:
- reviewable
- editable
- non-published
until a human publishes it.

# ============================================================
# 9. CONCLUSION
# ============================================================

Scheduled auto generation should act as
a timer-driven draft preparation mechanism,
not a hands-off publishing mechanism.


# ============================================================
# END FILE: 040.runtime/010.shift-manager/0400003_SHIFT_MANAGER_TIMER_BASED_AUTO_GENERATION_RUNTIME.md
# ============================================================


# ============================================================
# BEGIN FILE: 050.flow/010.shift-manager/0500000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================

# ============================================================
# SHIFT MANAGER FLOW OVERVIEW
# ============================================================

status: canonical
layer: flow
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

main_flows:
- create shift
- publish shift
- share shift
- view shift on mobile
- revise and republish
- ERP export

# ============================================================
# END FILE: 050.flow/010.shift-manager/0500000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================


# ============================================================
# BEGIN FILE: 050.flow/010.shift-manager/0500001_SHIFT_MANAGER_FLOW.md
# ============================================================

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

# ============================================================
# END FILE: 050.flow/010.shift-manager/0500001_SHIFT_MANAGER_FLOW.md
# ============================================================


# ============================================================
# BEGIN FILE: 050.flow/010.shift-manager/0500002_SHIFT_MANAGER_ADDITIONAL_FEATURE_FLOW.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE FLOW
# ============================================================

status: design-extension
type: additional-feature-flow
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. HEADQUARTERS DASHBOARD FLOW
# ============================================================

flow:
headquarters opens dashboard
-> site status/cards load
-> shortage/unpublished/unconfirmed sites identified
-> manager drills into site
-> site shift/publication state reviewed

# ============================================================
# 2. REQUESTED DAY-OFF FLOW
# ============================================================

flow:
staff submits requested day off
-> request stored
-> manager reviews
-> status approved/rejected
-> planning/generation uses approved requests as input

# ============================================================
# 3. CHANGE CONFIRMATION FLOW
# ============================================================

flow:
republish or urgent change occurs
-> difference rows created
-> affected viewers receive notice
-> viewer marks change confirmed
-> manager sees pending/confirmed counts

# ============================================================
# 4. SCHEDULED AUTO GENERATION FLOW
# ============================================================

flow:
manager defines auto generation schedule
-> timer waits until configured date/time
-> draft generation runs
-> execution result stored
-> manager reviews draft
-> manager publishes manually if acceptable

# ============================================================
# 5. LIGHTWEIGHT ANALYTICS FLOW
# ============================================================

flow:
site metrics aggregated
-> dashboard snapshot updated
-> headquarters or manager reviews
-> operational problem areas identified

# ============================================================
# 6. FUTURE EXCHANGE / SUPPORT FLOW
# ============================================================

future_flow:
staff requests exchange or support
-> manager reviews
-> approved change becomes schedule mutation
-> publication/republication follows normal rules


# ============================================================
# END FILE: 050.flow/010.shift-manager/0500002_SHIFT_MANAGER_ADDITIONAL_FEATURE_FLOW.md
# ============================================================


# ============================================================
# BEGIN FILE: 060.integration/010.shift-manager/0600000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================

# ============================================================
# SHIFT MANAGER INTEGRATION OVERVIEW
# ============================================================

status: canonical
layer: integration
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

integration_targets:
- ERP
- BusinessOS distribution control
- notification infrastructure

# ============================================================
# END FILE: 060.integration/010.shift-manager/0600000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================


# ============================================================
# BEGIN FILE: 060.integration/010.shift-manager/0600001_SHIFT_MANAGER_ERP_INTEGRATION.md
# ============================================================

# ============================================================
# SHIFT MANAGER ERP INTEGRATION
# ============================================================

status: canonical
layer: integration
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

purpose:
Defines ERP linkage boundary for ShiftManager.

erp_inputs:
- employee reference
- department reference
- office/store reference
- company reference

erp_outputs:
- published shift schedule
- assignment details
- publication metadata
- export result metadata

integration_principles:
- ERP is enterprise formal linkage target
- ShiftManager keeps application-level creation and sharing logic
- ERP export shall use published data only
- master mismatches must be observable

# ============================================================
# END FILE: 060.integration/010.shift-manager/0600001_SHIFT_MANAGER_ERP_INTEGRATION.md
# ============================================================


# ============================================================
# BEGIN FILE: 060.integration/010.shift-manager/0600002_SHIFT_MANAGER_ERP_INTEGRATION_SPECIFICATION.md
# ============================================================

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


# ============================================================
# END FILE: 060.integration/010.shift-manager/0600002_SHIFT_MANAGER_ERP_INTEGRATION_SPECIFICATION.md
# ============================================================


# ============================================================
# BEGIN FILE: 060.integration/010.shift-manager/0600003_SHIFT_MANAGER_PDF_EXPORT_SPECIFICATION.md
# ============================================================

# ============================================================
# SHIFT MANAGER PDF EXPORT SPECIFICATION
# ============================================================

status: design-extension
type: pdf-export-specification
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. POSITIONING
# ============================================================

PDF export in ShiftManager exists to support:
- printing
- in-store posting
- internal review
- fixed publication distribution
- paper-based operational handling

PDF export should be split into:
- draft PDF for internal review
- publication PDF for formal printable distribution

# ============================================================
# 2. BASIC PRINCIPLES
# ============================================================

principles:
1. draft PDF is internal review/use only
2. publication PDF is the formal printable/shareable output
3. formal distribution-oriented PDF should be publication-based
4. PDF export must respect visibility and authority boundaries
5. print-oriented A4 layout should be supported
6. output history should be traceable where needed

# ============================================================
# 3. EXPORT TYPES
# ============================================================

export_types:
- draft_pdf
- publication_pdf
- personal_pdf
- department_pdf
- board_pdf

meanings:
draft_pdf:
- internal review
- pre-publication checking
- correction discussion

publication_pdf:
- officially published printable version
- formal posting/distribution

personal_pdf:
- one person's printable shift view

department_pdf:
- department-oriented printable schedule

board_pdf:
- store/office wall-posting style printable output

# ============================================================
# 4. PRIMARY USE CASES
# ============================================================

primary_use_cases:
- manager prints weekly shift for store wall
- manager prints published department shift
- staff prints own schedule
- reviewer prints draft schedule before publication
- office prints monthly overview for posting

# ============================================================
# 5. AUTHORITY DIRECTION
# ============================================================

authority_direction:
draft_pdf:
- shift_admin
- department_manager
- conditional team_leader
- staff denied by default

publication_pdf:
- permitted published viewers
- manager-side printing allowed in scope

personal_pdf:
- self allowed
- managers allowed in managed scope

department_pdf / board_pdf:
- manager-side only in relevant scope

# ============================================================
# 6. OUTPUT BASIS
# ============================================================

draft_output_basis:
- shift_schedule
- shift_assignment

publication_output_basis:
- shift_publication
- shift_publication_assignment

important_rule:
Formal printable distribution should use publication output basis.

# ============================================================
# 7. SCREEN ADDITIONS
# ============================================================

screen_candidates:
- pdf_export_setting
- pdf_export_preview
- pdf_export_history

entry_points:
- shift_edit -> draft PDF export
- publish/publication area -> publication PDF export
- my_shift / week_view -> personal PDF export
- department/board view -> board PDF export

# ============================================================
# 8. API CANDIDATES
# ============================================================

api_candidates:
- POST /api/shift-manager/v1/schedules/{schedule_id}/export-pdf
- POST /api/shift-manager/v1/publications/{publication_id}/export-pdf
- GET /api/shift-manager/v1/pdf-exports/{pdf_export_id}

# ============================================================
# 9. DATA MODEL CANDIDATE
# ============================================================

candidate_table:
- shift_pdf_export_history

candidate_columns:
- pdf_export_id
- schedule_id
- publication_id
- export_type
- export_target_scope
- exported_by_person_id
- exported_at
- file_name
- storage_path
- page_count

# ============================================================
# 10. LAYOUT DIRECTION
# ============================================================

layout_direction:
- A4 print-friendly layout
- weekly printable layout
- monthly printable layout
- personal compact layout
- board/posting layout
- clear date/time/office/role visibility
- minimal color dependence for monochrome printing

# ============================================================
# 11. COMMON COMPONENT DIRECTION
# ============================================================

common_component_candidate:
- Printable Publication Export Common

purpose:
Provides reusable printable fixed-output/PDF export pattern
for publication-oriented applications.

# ============================================================
# 12. CONCLUSION
# ============================================================

ShiftManager should support printable PDF export,
with clear separation between:
- draft PDF for internal review
- publication PDF for formal printable distribution


# ============================================================
# END FILE: 060.integration/010.shift-manager/0600003_SHIFT_MANAGER_PDF_EXPORT_SPECIFICATION.md
# ============================================================


# ============================================================
# BEGIN FILE: 070.operations/010.shift-manager/0700000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================

# ============================================================
# SHIFT MANAGER OPERATIONS OVERVIEW
# ============================================================

status: canonical
layer: operations
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

operation_focus:
- publication reliability
- visibility correctness
- notification health
- ERP export monitoring

# ============================================================
# END FILE: 070.operations/010.shift-manager/0700000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================


# ============================================================
# BEGIN FILE: 070.operations/010.shift-manager/0700001_SHIFT_MANAGER_OPERATIONS.md
# ============================================================

# ============================================================
# SHIFT MANAGER OPERATIONS
# ============================================================

status: canonical
layer: operations
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

operation_items:
- monitor publication success
- monitor visibility recalculation failures
- monitor notification queue health
- monitor ERP linkage status
- support share-scope correction
- support urgent republish

recommended_logs:
- draft_saved
- schedule_published
- share_rule_changed
- visibility_rebuilt
- mobile_view_served
- notification_dispatched
- erp_export_requested
- erp_export_completed
- erp_export_failed

# ============================================================
# END FILE: 070.operations/010.shift-manager/0700001_SHIFT_MANAGER_OPERATIONS.md
# ============================================================


# ============================================================
# BEGIN FILE: 070.operations/010.shift-manager/0700002_SHIFT_MANAGER_NOTIFICATION_SPECIFICATION.md
# ============================================================

# ============================================================
# SHIFT MANAGER NOTIFICATION SPECIFICATION
# ============================================================

status: draft-fixed-candidate
type: notification-specification
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. BASIC POLICY
# ============================================================

ShiftManager notifications exist to reliably deliver
published results and important changes
to permitted viewers.

principles:
1. notification targets are tied to published shifts only
2. no publication notification is sent from draft state
3. only permitted viewers may receive notifications
4. republication may trigger renewed notifications
5. failed delivery must be visible and retryable
6. read-state is UX support and not authority replacement

# ============================================================
# 2. PURPOSES
# ============================================================

purposes:
- announce new publication
- announce change/republication
- remind same-day work
- deliver urgent change quickly
- provide navigation path to target shift
- reduce missed-publication accidents

# ============================================================
# 3. TARGETS
# ============================================================

notification_targets:
- self
- team-shared viewers
- department-shared viewers
- management-scope viewers
- managers in allowed scope

must_not_receive:
- unauthorized third parties
- share-removed users
- access-disabled users
- authority-revoked users

# ============================================================
# 4. NOTIFICATION TYPES
# ============================================================

notification_types:
publish:
- purpose: new publication notice
- trigger: initial publish

republish:
- purpose: updated publication notice
- trigger: republish execution

same_day:
- purpose: same-day reminder
- trigger: day-of configured time

urgent_change:
- purpose: urgent changed schedule notice
- trigger: urgent flagged important near-term change

# ============================================================
# 5. CHANNEL POLICY
# ============================================================

initial_channels:
- in-app notification
- push notification

future_channels:
- LINE
- Slack
- SMS
- mail

initial_mvp_recommendation:
- in-app mandatory
- push recommended

# ============================================================
# 6. TIMING
# ============================================================

timing_rules:
publish:
- after publish completion
- sync or async queue allowed

republish:
- after republish completion

same_day:
- default = 1 hour before shift start

urgent_change:
- immediate delivery preferred

# ============================================================
# 7. CONTENT
# ============================================================

common_content_fields:
- notification_type
- title
- summary body
- target_date
- target_time
- office
- role
- deep link to related shift

example_titles:
publish:
- シフトが公開されました

republish:
- シフトが更新されました

same_day:
- 本日の勤務予定

urgent_change:
- 至急確認：勤務予定が変更されました

# ============================================================
# 8. DATA MODEL RELATION
# ============================================================

main_table:
- shift_notification

required_fields:
- notification_id
- notification_type
- target_person_id
- title
- delivery_status
- queued_at

recommended_extra_fields:
- urgent_flag
- deep_link_path
- payload_json
- related_shift_date
- related_visible_person_id

delivery_status_values:
- queued
- sent
- failed
- read

# ============================================================
# 9. GENERATION RULES
# ============================================================

generation_rules:
publish:
- publication created
- evaluate share/view scope
- queue notifications for allowed viewers

republish:
- new publication created
- reevaluate viewers
- queue republish notifications

same_day:
- extract day-of targets
- queue reminder

urgent_change:
- manager-side urgent action
- queue urgent notification

important_rule:
Users who cannot view the shift must not be notified.

# ============================================================
# 10. READ / RETRY POLICY
# ============================================================

read_policy:
- read-state supports unread count and organization
- read does not change access authority

retry_policy:
- failed notifications are retryable
- retry allowed only while target remains valid and visible
- retry_count should be tracked

# ============================================================
# 11. SCREEN RELATION
# ============================================================

related_screen:
- notification_center

screen_capabilities:
- list notifications
- show unread/read
- open target shift detail
- mark as read
- allow admin-side retry where permitted

# ============================================================
# 12. API RELATION
# ============================================================

related_apis:
- GET /api/shift-manager/v1/me/notifications
- POST /api/shift-manager/v1/me/notifications/{notification_id}/read
- POST /api/shift-manager/v1/notifications/{notification_id}/retry

future_api_candidates:
- POST /api/shift-manager/v1/publications/{publication_id}/notify
- GET /api/shift-manager/v1/publications/{publication_id}/notification-summary

# ============================================================
# 13. IMPORTANT DECISIONS
# ============================================================

important_points:
- notify only published states
- notify only permitted viewers
- failed notification must remain visible
- same_day default = 1 hour before shift start
- auto generation itself does not notify staff

# ============================================================
# 14. CONCLUSION
# ============================================================

Notification in ShiftManager is not merely optional decoration.
It is part of the delivery path
from publication to permitted viewers.


# ============================================================
# END FILE: 070.operations/010.shift-manager/0700002_SHIFT_MANAGER_NOTIFICATION_SPECIFICATION.md
# ============================================================


# ============================================================
# BEGIN FILE: 070.operations/010.shift-manager/0700003_SHIFT_MANAGER_NOTIFICATION_TEMPLATE_FIXED_SET.md
# ============================================================

# ============================================================
# SHIFT MANAGER NOTIFICATION TEMPLATE FIXED SET
# ============================================================

status: implementation-facing-fixed-candidate
type: notification-template-fixed-set
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the initial Japanese notification templates
used by ShiftManager.

These templates are intended for:
- in-app notification
- push notification text basis
- publication/republication reminder wording

# ============================================================
# 2. BASIC RULES
# ============================================================

rules:
- templates start in Japanese
- wording should be short and operationally clear
- title and body should remain distinct
- publication-related wording should not imply universal visibility
- same_day wording should be concrete
- urgent_change wording should emphasize immediate review
- auto generation itself does not notify staff before publication

# ============================================================
# 3. TEMPLATE VARIABLES
# ============================================================

available_variables:
- period_label
- start_time
- end_time
- office_name
- shift_date
- publication_version_no

variable_notes:
period_label:
- example: 2026-04-13週
- example: 2026年4月第2週

start_time / end_time:
- display example: 09:00 / 18:00

office_name:
- display example: Tokyo Office

shift_date:
- display example: 2026-04-10

# ============================================================
# 4. PUBLISH
# ============================================================

notification_type:
- publish

title:
シフトが公開されました

body:
{period_label} のシフトが公開されました。内容を確認してください。

short_push_body:
{period_label} のシフトが公開されました。

usage_notes:
- used after initial publish
- should link to the newly published view
- should not imply that everyone can view it

# ============================================================
# 5. REPUBLISH
# ============================================================

notification_type:
- republish

title:
シフトが更新されました

body:
{period_label} のシフトに変更があります。最新内容を確認してください。

short_push_body:
{period_label} のシフトが更新されました。

usage_notes:
- used after republish
- intended to trigger re-check by already permitted viewers

# ============================================================
# 6. SAME_DAY
# ============================================================

notification_type:
- same_day

title:
本日の勤務予定

body:
本日の勤務は {start_time}〜{end_time}、{office_name} です。

short_push_body:
本日の勤務は {start_time}〜{end_time} です。

usage_notes:
- default timing = 1 hour before shift start
- should remain simple and concrete

# ============================================================
# 7. URGENT_CHANGE
# ============================================================

notification_type:
- urgent_change

title:
至急確認：勤務予定が変更されました

body:
勤務予定に重要な変更があります。最新内容を確認してください。

short_push_body:
勤務予定に重要な変更があります。至急確認してください。

usage_notes:
- should deep-link to the latest detail when possible
- should be used only for manager-authorized urgent changes

# ============================================================
# 8. OPTIONAL DETAIL EXTENSIONS
# ============================================================

optional_body_extensions:
- 対象日: {shift_date}
- 版番号: v{publication_version_no}

usage_policy:
- optional details may be appended for in-app display
- push display should remain shorter

# ============================================================
# 9. FUTURE EXTENSION DIRECTION
# ============================================================

future_extensions:
- multilingual template sets
- channel-specific wording differences
- richer urgent templates
- role-specific wording
- print/export-related notification wording if needed

# ============================================================
# 10. CONCLUSION
# ============================================================

This document fixes the initial operational Japanese notification wording
for ShiftManager:
- publish
- republish
- same_day
- urgent_change


# ============================================================
# END FILE: 070.operations/010.shift-manager/0700003_SHIFT_MANAGER_NOTIFICATION_TEMPLATE_FIXED_SET.md
# ============================================================


# ============================================================
# BEGIN FILE: 080.policy/010.shift-manager/0800000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================

# ============================================================
# SHIFT MANAGER POLICY OVERVIEW
# ============================================================

status: canonical
layer: policy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

policy_focus:
- who may create
- who may publish
- who may share
- who may view

# ============================================================
# END FILE: 080.policy/010.shift-manager/0800000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================


# ============================================================
# BEGIN FILE: 080.policy/010.shift-manager/0800001_SHIFT_MANAGER_POLICY.md
# ============================================================

# ============================================================
# SHIFT MANAGER POLICY
# ============================================================

status: canonical
layer: policy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

policy_rules:
1. Only authorized roles may create or edit shift drafts.
2. Only authorized roles may publish schedules.
3. Sharing visibility shall be explicitly granted.
4. Visibility shall be revocable.
5. Permission expansion shall be auditable.
6. ERP linkage scope shall follow company policy, not arbitrary user preference.

# ============================================================
# END FILE: 080.policy/010.shift-manager/0800001_SHIFT_MANAGER_POLICY.md
# ============================================================


# ============================================================
# BEGIN FILE: 080.policy/010.shift-manager/0800002_SHIFT_MANAGER_ROLE_AND_SHARE_RULES.md
# ============================================================

# ============================================================
# SHIFT MANAGER ROLE AND SHARE RULES
# ============================================================

status: draft-fixed-candidate
type: role-and-share-rule-definition
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. BASIC POLICY
# ============================================================

ShiftManager centers on shift creation and shift sharing.
Authority therefore separates into:
- who can create / edit / publish
- who can show
- who can view
- who can export ERP

principles:
- draft and publication are separate permissions
- sharing is explicit grant
- publication does not mean public-to-all
- viewing range is determined by both role and share rules
- ERP linkage is separate authority
- auditable actions require history
- least privilege is default

# ============================================================
# 2. ROLE DEFINITIONS
# ============================================================

enterprise_admin:
meaning:
enterprise-level supervision authority

main_permissions:
- enterprise-wide setting view
- enterprise share rule management
- publication history view
- ERP linkage state view
- enterprise exception handling
- upper-level authority management

shift_admin:
meaning:
main application business operator

main_permissions:
- create shift
- edit shift
- save drafts
- publish
- republish
- manage share rules
- stop sharing
- confirm publish targets
- view publish history
- execute ERP export in managed scope

department_manager:
meaning:
department-level manager

main_permissions:
- create department shift
- edit department shift
- publish department shift
- manage department share settings
- stop department sharing
- view department members
- view department publication history

limits:
- other departments disallowed in principle
- no enterprise-wide share policy edits

team_leader:
meaning:
team-level operation helper

candidate_permissions:
- create team drafts
- adjust team schedule
- pre-publish review
- view team members
- propose share candidates

current_recommendation:
treat as helper authority only.
no publish and no share-setting authority by default.

staff:
meaning:
general viewer / receiver

main_permissions:
- view own shifts
- view explicitly allowed shared shifts
- receive notifications
- open details

default_denied:
- create
- publish
- alter share scope
- ERP export

integration_operator:
meaning:
ERP linkage and linkage monitoring operator

main_permissions:
- check ERP state
- execute export
- retry export
- inspect export errors
- inspect linkage history

principle:
separated from shift content editing responsibility

# ============================================================
# 3. ROLE MATRIX
# ============================================================

legend:
- yes = allowed
- conditional = condition-based
- no = denied

matrix:
- permission: view own shifts
  enterprise_admin: yes
  shift_admin: yes
  department_manager: yes
  team_leader: yes
  staff: yes
  integration_operator: yes

- permission: view allowed shifts
  enterprise_admin: yes
  shift_admin: yes
  department_manager: yes
  team_leader: yes
  staff: yes
  integration_operator: conditional

- permission: create shift
  enterprise_admin: conditional
  shift_admin: yes
  department_manager: yes
  team_leader: conditional
  staff: no
  integration_operator: no

- permission: edit shift
  enterprise_admin: conditional
  shift_admin: yes
  department_manager: yes
  team_leader: conditional
  staff: no
  integration_operator: no

- permission: save draft
  enterprise_admin: conditional
  shift_admin: yes
  department_manager: yes
  team_leader: conditional
  staff: no
  integration_operator: no

- permission: publish
  enterprise_admin: conditional
  shift_admin: yes
  department_manager: yes
  team_leader: no
  staff: no
  integration_operator: no

- permission: republish
  enterprise_admin: conditional
  shift_admin: yes
  department_manager: yes
  team_leader: no
  staff: no
  integration_operator: no

- permission: manage share rules
  enterprise_admin: yes
  shift_admin: yes
  department_manager: yes
  team_leader: no
  staff: no
  integration_operator: no

- permission: stop sharing
  enterprise_admin: yes
  shift_admin: yes
  department_manager: yes
  team_leader: no
  staff: no
  integration_operator: no

- permission: enterprise-wide view
  enterprise_admin: yes
  shift_admin: conditional
  department_manager: no
  team_leader: no
  staff: no
  integration_operator: no

- permission: department view
  enterprise_admin: yes
  shift_admin: yes
  department_manager: yes
  team_leader: conditional
  staff: no
  integration_operator: no

- permission: team view
  enterprise_admin: yes
  shift_admin: yes
  department_manager: yes
  team_leader: yes
  staff: conditional
  integration_operator: no

- permission: publish history
  enterprise_admin: yes
  shift_admin: yes
  department_manager: yes
  team_leader: conditional
  staff: no
  integration_operator: conditional

- permission: share history
  enterprise_admin: yes
  shift_admin: yes
  department_manager: yes
  team_leader: no
  staff: no
  integration_operator: no

- permission: ERP state view
  enterprise_admin: yes
  shift_admin: conditional
  department_manager: conditional
  team_leader: no
  staff: no
  integration_operator: yes

- permission: ERP export
  enterprise_admin: yes
  shift_admin: conditional
  department_manager: no
  team_leader: no
  staff: no
  integration_operator: yes

- permission: ERP retry
  enterprise_admin: yes
  shift_admin: no
  department_manager: no
  team_leader: no
  staff: no
  integration_operator: yes

# ============================================================
# 4. SHARE MODEL
# ============================================================

Only published shifts are share targets.
Drafts are visible only to authorized creators / managers.

share_evaluation_steps:
1. role evaluation
2. scope evaluation
3. explicit share evaluation

share_scope_candidates:
- person
- team
- department
- management_scope
- enterprise_admin_scope

# ============================================================
# 5. SHARE UNITS
# ============================================================

person_share:
- for the person themself
- for exceptional specific viewers
- for specific coordinators

team_share:
- for same operational team members
- requires reevaluation on team membership change

department_share:
- for department-wide visibility
- broader range, needs caution

management_scope_share:
- for responsible managers over their area
- requires management scope master

# ============================================================
# 6. VIEW RANGE RULES
# ============================================================

staff:
- can view own shifts
- can view explicitly allowed scope only
- cannot view everyone by default

team_leader:
- can view published shifts in own team
- can view draft only in own handled scope
- cannot view other teams by default

department_manager:
- can view published shifts in own department
- can view draft in own department
- cannot view other departments by default

shift_admin:
- can manage draft and published states in handled scope
- can alter share evaluation settings

enterprise_admin:
- may have broader supervision visibility
- broader edit is not automatic

# ============================================================
# 7. PUBLICATION RULES
# ============================================================

draft:
- only creator-authorized people may view
- not shared
- not ERP export target

published:
- enters sharing evaluation
- may trigger notifications
- may become ERP export candidate

republished:
- old publication becomes superseded or replaced
- recipients receive updated state
- ERP may receive resend

# ============================================================
# 8. ACCIDENT PREVENTION RULES
# ============================================================

- publish target confirmation should be mandatory-grade
- share-scope expansion needs stronger confirmation
- department / management scope share changes require history
- share stop should be reflected immediately
- permission revocation should stop future visibility
- cache visibility must consider expiry

# ============================================================
# 9. AUDIT TARGET ACTIONS
# ============================================================

- shift create
- shift edit
- publish
- republish
- share rule change
- share stop
- visibility expansion
- ERP export
- ERP retry
- authority change

# ============================================================
# 10. CURRENT RECOMMENDED FIXATION
# ============================================================

recommended_defaults:
- team_leader cannot publish
- team_leader cannot manage share rules
- staff can view self + explicit scope only
- department_manager is limited to own department
- shift_admin is main owner of publish / republish / share
- integration_operator is linkage-centered and cannot edit content


# ============================================================
# END FILE: 080.policy/010.shift-manager/0800002_SHIFT_MANAGER_ROLE_AND_SHARE_RULES.md
# ============================================================


# ============================================================
# BEGIN FILE: 080.policy/010.shift-manager/0800003_SHIFT_MANAGER_SUBSCRIPTION_AND_TRIAL_POLICY.md
# ============================================================

# ============================================================
# SHIFT MANAGER SUBSCRIPTION AND TRIAL POLICY
# ============================================================

status: design-extension
type: subscription-and-trial-policy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. POSITIONING
# ============================================================

ShiftManager is positioned not as "SaaS"
but as a:
- subscription-based application
- monthly-use application

This wording should be preferred in future design and explanation.

# ============================================================
# 2. PRICING MODEL
# ============================================================

pricing_model:
- monthly fixed price: 900 JPY
- unlimited users
- no initial fee

value_positioning:
ShiftManager should be explained as:
- easy to understand
- fixed monthly cost
- install and use quickly
- no initial setup fee
- practical shift operation application

avoid_expression:
- SaaS

preferred_expression:
- subscription-based application
- monthly-use application

# ============================================================
# 3. TRIAL POLICY
# ============================================================

trial_policy:
- initial 3-day trial is available
- trial starts from first activation/use
- trial is intended to let users experience the core value quickly

trial_goal:
Allow the user to try:
- shift creation
- draft editing
- auto generation
- publication
- viewing
- printable PDF export

# ============================================================
# 4. SUBSCRIPTION STATUS MODEL
# ============================================================

subscription_status:
- trial
- active
- grace
- inactive

meaning:
trial:
- 3-day initial trial
- near-full feature access

active:
- paid active state
- full feature access

grace:
- temporary grace period after payment issue or renewal delay
- limited temporary continuation may be allowed

inactive:
- unpaid / non-active state
- read-only mode

# ============================================================
# 5. FEATURE ACCESS POLICY
# ============================================================

allowed_when_trial:
- shift create
- shift edit
- auto generation
- publish
- republish
- share rule management
- PDF export
- ERP export
- notification viewing
- shift viewing

allowed_when_active:
- all standard application features

allowed_when_grace:
- basically same as active in short grace period
- final exact grace duration may be fixed later

allowed_when_inactive:
- self shift viewing
- already visible published shift viewing
- notification viewing
- login/access
- minimal account/status confirmation

disabled_when_inactive:
- shift create
- shift edit
- auto generation
- publish
- republish
- share rule management
- new PDF export
- ERP export
- generation rule creation
- management-side setting changes

# ============================================================
# 6. READ-ONLY MODE PRINCIPLES
# ============================================================

read_only_mode_principles:
- do not suddenly hide already visible necessary shift information
- keep viewing possible
- stop management/change operations
- preserve practical field usability
- make paid value clear without causing operational confusion

important_rule:
Inactive users should be able to read,
but should not be able to change, generate, publish, share, export, or newly print.

# ============================================================
# 7. AUTHORITY / VISIBILITY INTERACTION
# ============================================================

important_interaction_rules:
- inactive does not expand visibility
- viewing remains limited to already permitted visibility scope
- inactive managers should not retain management actions
- inactive staff may still view self and already visible published shifts
- PDF new export is disabled in inactive state

# ============================================================
# 8. SUPPORT POLICY
# ============================================================

standard_support:
- basic support is provided through in-app AI chat

not_included:
- individual configuration代行
- individual custom development
- individual operational support

meaning:
The standard monthly fee covers application usage,
not project-specific service work.

# ============================================================
# 9. FUTURE OPEN ITEMS
# ============================================================

non_blocking_open_items:
- exact grace duration
- whether ERP export is fully enabled during trial
- whether board/department PDF export is fully enabled during trial
- final subscription status source and sync method

# ============================================================
# 10. CONCLUSION
# ============================================================

ShiftManager should be positioned as:
- a subscription-based application
- monthly fixed 900 JPY
- unlimited users
- no initial fee
- 3-day initial trial
- read-only viewing mode when inactive


# ============================================================
# END FILE: 080.policy/010.shift-manager/0800003_SHIFT_MANAGER_SUBSCRIPTION_AND_TRIAL_POLICY.md
# ============================================================


# ============================================================
# BEGIN FILE: 080.policy/010.shift-manager/0800004_SHIFT_MANAGER_LICENSE_AND_DEVICE_POLICY.md
# ============================================================

# ============================================================
# SHIFT MANAGER LICENSE AND DEVICE POLICY
# ============================================================

status: design-extension
type: license-and-device-policy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. POSITIONING
# ============================================================

ShiftManager should be positioned as:
- a subscription-based application
- a monthly-use application

It should not be positioned primarily as:
- per-user SaaS
- user-count pricing software

# ============================================================
# 2. LICENSE MODEL
# ============================================================

license_model:
- site-based monthly license
- 900 JPY per site / store / operation unit
- unlimited users inside the licensed site
- no initial fee
- 3-day initial trial available

meaning:
The license is not primarily tied to one named individual.
It is tied to the operational site/unit adopting ShiftManager.

# ============================================================
# 3. DEVICE POLICY
# ============================================================

device_policy:
- usable from company PC
- usable from company smartphone
- PC and smartphone should both be supported
- both device types may be used under the same site-based license

important_rule:
Do not position this as:
- separate paid PC license
- separate paid smartphone license

Recommended position:
- one site-based license
- multi-device usage allowed inside that licensed site

# ============================================================
# 4. PRICING EXPRESSION
# ============================================================

recommended_pricing_expression:
- 1 site = 900 JPY / month
- unlimited users within the site
- usable from company PC and company smartphone
- no initial fee
- initial 3-day trial

avoid_expression:
- per-user pricing
- separate PC and smartphone pricing
- SaaS-heavy wording

preferred_expression:
- subscription-based application
- monthly-use application
- site-based fixed monthly pricing

# ============================================================
# 5. BUSINESS VALUE
# ============================================================

business_value:
- no user-count anxiety
- easier budget explanation
- easier site/store rollout
- easier enterprise internal approval
- easier calculation at company-wide rollout
- practical multi-operator use for shift managers

example_value_message:
Even when multiple shift operators exist in one store/site,
the price remains fixed for that site.

# ============================================================
# 6. SUBSCRIPTION STATUS RELATION
# ============================================================

subscription_status:
- trial
- active
- grace
- inactive

relation_to_license:
- trial/active/inactive state should be evaluated per licensed site/unit
- feature control should follow the site subscription state
- inactive state becomes read-only mode for allowed viewers

# ============================================================
# 7. FEATURE CONTROL IN RELATION TO LICENSE
# ============================================================

active_or_trial:
- create
- edit
- auto generation
- publish / republish
- share management
- PDF export
- ERP export
- viewing
- notification viewing

inactive:
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
- generation rule management
- management-side configuration change

# ============================================================
# 8. ENTERPRISE ROLLOUT MEANING
# ============================================================

enterprise_rollout_meaning:
This model is designed to reduce adoption friction.

because:
- pricing can be explained per site/store
- multiple responsible people can still operate under one site license
- company-wide rollout can be estimated from number of sites
- internal approval becomes easier than per-user expansion pricing

# ============================================================
# 9. FUTURE OPEN ITEMS
# ============================================================

non_blocking_open_items:
- exact definition of site/store/operation unit
- whether headquarters-only management view needs separate policy
- whether central admin visibility crosses site license boundary
- exact billing system linkage

# ============================================================
# 10. CONCLUSION
# ============================================================

ShiftManager should use:
- site-based monthly pricing
- 900 JPY per site
- unlimited users within site
- PC/smartphone dual-device usage
- no initial fee
- 3-day trial

This is clearer and easier to adopt
than per-user or device-separated pricing.


# ============================================================
# END FILE: 080.policy/010.shift-manager/0800004_SHIFT_MANAGER_LICENSE_AND_DEVICE_POLICY.md
# ============================================================


# ============================================================
# BEGIN FILE: 080.policy/010.shift-manager/0800005_SHIFT_MANAGER_DEVICE_FUNCTION_POLICY.md
# ============================================================

# ============================================================
# SHIFT MANAGER DEVICE FUNCTION POLICY
# ============================================================

status: design-extension
type: device-function-policy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the device function policy for ShiftManager,
especially the relation between:
- PC usage
- smartphone usage
- feature availability
- UI optimization

# ============================================================
# 2. CORE POSITION
# ============================================================

core_position:
- PC and smartphone should support the same core feature set
- ShiftManager should not assume fundamental feature differences by device type
- differences should be limited mainly to UI optimization and usability adjustment

# ============================================================
# 3. IMPORTANT RULE
# ============================================================

important_rule:
Authorization and feature availability must be decided by:
- subscription state
- role
- visibility scope

They must not be fundamentally decided by:
- device type

# ============================================================
# 4. SAME FEATURE PRINCIPLE
# ============================================================

same_feature_principle:
The same business features should exist on:
- company PC
- company smartphone

covered_feature_examples:
- shift viewing
- shift create
- shift edit
- auto generation
- publish / republish
- share management
- PDF export
- ERP export visibility
- notification viewing

meaning:
A user should not be told that a feature exists only because they are on PC
or only because they are on smartphone,
except for temporary implementation-phase limitations.

# ============================================================
# 5. ALLOWED UI DIFFERENCES
# ============================================================

allowed_ui_differences:
- layout optimization
- navigation optimization
- table density adjustment
- button placement adjustment
- preview arrangement adjustment
- editing ergonomics adjustment

examples:
smartphone_optimized:
- today shift first
- week view emphasis
- compact confirmation flow
- simpler edit interaction
- notification-first access

pc_optimized:
- denser list/table view
- wider edit surface
- easier multi-row overview
- broader preview surface
- easier detailed management navigation

important_note:
These are usability differences,
not business capability differences.

# ============================================================
# 6. DISCOURAGED DIFFERENCES
# ============================================================

discouraged_differences:
- PC can publish but smartphone cannot
- smartphone can view but PC cannot
- PC can manage share but smartphone cannot
- smartphone can export PDF but PC cannot
- different business permission sets by device type

meaning:
Such differences increase operational confusion
and weaken pricing/license clarity.

# ============================================================
# 7. RELATION TO LICENSE MODEL
# ============================================================

relation_to_license_model:
- one site-based license covers both company PC and company smartphone
- device dual-usage is expected
- multiple operators may work across PC and smartphone under the same site license

reason:
This matches:
- site-based pricing
- unlimited users within site
- easy operational rollout

# ============================================================
# 8. RELATION TO SUBSCRIPTION / READ-ONLY
# ============================================================

subscription_relation:
If subscription state is inactive,
both PC and smartphone should enter the same read-only policy.

inactive_means_on_all_devices:
- self shift viewing allowed
- already visible published shift viewing allowed
- notification viewing allowed
- create/edit/generate/publish/share/export blocked

important_rule:
Read-only policy must be consistent across device types.

# ============================================================
# 9. IMPLEMENTATION RECOMMENDATION
# ============================================================

implementation_recommendation:
- keep the same backend capability model for PC and smartphone
- keep the same feature gate logic for PC and smartphone
- vary only UI composition and presentation density
- avoid device-specific business branching unless absolutely necessary

# ============================================================
# 10. CONCLUSION
# ============================================================

ShiftManager should assume:
- same core features on PC and smartphone
- different UI optimization only
- authorization based on subscription/role/visibility
- no fundamental business feature split by device type


# ============================================================
# END FILE: 080.policy/010.shift-manager/0800005_SHIFT_MANAGER_DEVICE_FUNCTION_POLICY.md
# ============================================================


# ============================================================
# BEGIN FILE: 080.policy/010.shift-manager/0800006_SHIFT_MANAGER_MULTILINGUAL_SUPPORT_POLICY.md
# ============================================================

# ============================================================
# SHIFT MANAGER MULTILINGUAL SUPPORT POLICY
# ============================================================

status: design-extension
type: multilingual-support-policy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the multilingual support policy
for ShiftManager.

The goal is:
- Japanese-first operation
- English-ready extension
- language-neutral business logic
- localized display/output surfaces

# ============================================================
# 2. BASIC POLICY
# ============================================================

basic_policy:
- business logic remains language-neutral
- UI text is language-switchable
- API payload keys remain fixed and language-neutral
- database enum/code values remain fixed internal codes
- only display labels/messages are translated

important_rule:
Do not localize:
- API field names
- DB column names
- enum internal values
- feature codes
- error codes

Translate:
- screen labels
- button labels
- helper text
- notification display text
- validation display messages
- PDF visible labels

# ============================================================
# 3. INITIAL LANGUAGE SCOPE
# ============================================================

initial_languages:
- japanese
- english

future_candidates:
- chinese_simplified
- chinese_traditional
- korean
- vietnamese
- indonesian
- thai

# ============================================================
# 4. TARGET SURFACES
# ============================================================

multilingual_target_surfaces:
- startup / login
- dashboard
- shift list / detail / edit
- publish / republish
- share settings
- requested day-off
- generation warnings
- subscription / read-only messages
- notification center
- headquarters dashboard
- PDF visible labels
- error display messages

# ============================================================
# 5. LANGUAGE RESOLUTION
# ============================================================

recommended_language_fields:
- ui_language
- notification_language
- pdf_language

resolution_order:
1. explicit user preference
2. site/company default language
3. application default language

recommended_defaults:
- application default: japanese
- site default: configurable
- user preference: optional override

# ============================================================
# 6. INTERNAL CODE POLICY
# ============================================================

internal_code_examples:
schedule_status:
- draft
- published
- superseded
- closed

subscription_status:
- trial
- active
- grace
- inactive

policy:
These remain fixed internally.
Only labels/messages shown to users change by language.

# ============================================================
# 7. NOTIFICATION POLICY
# ============================================================

notification_policy:
- notification_type remains internal fixed code
- rendered title/body may be localized
- template variables remain language-neutral input
- final notification text is localized at output layer

# ============================================================
# 8. PDF POLICY
# ============================================================

pdf_policy:
- PDF visible labels may be language-selected
- DRAFT / publication distinction must remain visually clear in every language
- site/company may choose a default PDF language
- internal export_type/layout_type codes remain fixed

# ============================================================
# 9. ERROR / VALIDATION POLICY
# ============================================================

error_policy:
- error_code remains fixed
- user-facing message is localized
- logs/debug rely on code-first structure
- support should not depend on translated wording alone

# ============================================================
# 10. CONCLUSION
# ============================================================

ShiftManager multilingual support should be implemented as:
- code-fixed internals
- localized display/output layer
- Japanese-first, English-next
- extensible to more languages later


# ============================================================
# END FILE: 080.policy/010.shift-manager/0800006_SHIFT_MANAGER_MULTILINGUAL_SUPPORT_POLICY.md
# ============================================================


# ============================================================
# BEGIN FILE: 080.policy/010.shift-manager/0800007_SHIFT_MANAGER_SUPPORTED_DEVICE_POLICY.md
# ============================================================

# ============================================================
# SHIFT MANAGER SUPPORTED DEVICE POLICY
# ============================================================

status: design-extension
type: supported-device-policy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the supported device policy
for ShiftManager.

# ============================================================
# 2. SUPPORTED DEVICE TYPES
# ============================================================

supported_devices:
- iphone
- android
- pc
- tablet

# ============================================================
# 3. CORE RULE
# ============================================================

core_rule:
ShiftManager should support the same core feature set across:
- iPhone
- Android
- PC
- tablet

Differences should be limited to:
- layout optimization
- usability optimization
- screen density optimization

# ============================================================
# 4. AUTHORIZATION RULE
# ============================================================

authorization_rule:
Feature availability must depend on:
- subscription state
- role
- visibility scope

Feature availability must not fundamentally depend on:
- device type

# ============================================================
# 5. BUSINESS POSITIONING RELATION
# ============================================================

business_positioning_relation:
This policy supports:
- site-based fixed pricing
- multi-operator usage
- PC and mobile operational flexibility
- tablet-friendly operation in field/store environments

# ============================================================
# 6. CONCLUSION
# ============================================================

ShiftManager should explicitly support:
- iPhone
- Android
- PC
- tablet

with the same core business feature set.


# ============================================================
# END FILE: 080.policy/010.shift-manager/0800007_SHIFT_MANAGER_SUPPORTED_DEVICE_POLICY.md
# ============================================================


# ============================================================
# BEGIN FILE: 090.interface/010.shift-manager/0900000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================

# ============================================================
# SHIFT MANAGER INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

ui_focus:
- fast editing
- clear publication state
- easy sharing controls
- strong mobile readability

# ============================================================
# END FILE: 090.interface/010.shift-manager/0900000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================


# ============================================================
# BEGIN FILE: 090.interface/010.shift-manager/0900001_SHIFT_MANAGER_INTERFACE.md
# ============================================================

# ============================================================
# SHIFT MANAGER INTERFACE
# ============================================================

status: canonical
layer: interface
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

main_screens:
1. dashboard
2. day view
3. week view
4. month view
5. shift editor
6. publication panel
7. share-setting panel
8. received shift view
9. notification center
10. ERP linkage status

ui_requirements:
- current publish state must be obvious
- draft vs published must never be confused
- share scope must be understandable
- mobile layout must prioritize readability
- edit operations should be low-friction

# ============================================================
# END FILE: 090.interface/010.shift-manager/0900001_SHIFT_MANAGER_INTERFACE.md
# ============================================================


# ============================================================
# BEGIN FILE: 090.interface/010.shift-manager/0900002_SHIFT_MANAGER_SCREEN_INVENTORY.md
# ============================================================

# ============================================================
# SHIFT MANAGER SCREEN INVENTORY
# ============================================================

status: draft-fixed-candidate
type: screen-inventory
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. SCREEN DESIGN PREMISE
# ============================================================

ShiftManager centers on:
- create
- publish
- share
- view
- notify changes

The UI naturally separates into:
- management screens
- receive / viewing screens

# ============================================================
# 2. SCREEN GROUPS
# ============================================================

common:
- A01 startup / initial judge
- A02 login / access confirmation
- A03 home / dashboard
- A04 notification center
- A05 settings
- A06 account / affiliation info

creation:
- B01 shift list
- B02 shift create
- B03 shift edit
- B04 day edit
- B05 week edit
- B06 month edit
- B07 person-based assignment edit
- B08 draft confirmation
- B09 publish confirmation
- B10 republish confirmation

sharing:
- C01 share-rule list
- C02 share-scope setting
- C03 person share setting
- C04 team share setting
- C05 department share setting
- C06 management scope setting
- C07 stop share confirmation
- C08 publish target confirmation

viewing:
- D01 my shift
- D02 today's shift
- D03 week view
- D04 month view
- D05 shift detail
- D06 visible shift list
- D07 other person's shift view

erp_and_admin:
- E01 ERP linkage status list
- E02 ERP export confirmation
- E03 ERP export history
- E04 error detail
- E05 publication history
- E06 share history

# ============================================================
# 3. CORE SCREEN DETAILS
# ============================================================

A03_home_dashboard:
purpose:
- show today's state
- lead to draft / published / notification / share state

main_display:
- today's own shift
- latest managed shift
- draft count
- published count
- unread notifications
- ERP error flag

main_actions:
- create new
- open list
- open notifications
- open share settings
- open linkage status

B03_shift_edit:
purpose:
- central draft editing screen

main_elements:
- target period header
- assignment list
- unassigned check
- save
- pre-publish confirmation link

B08_draft_confirmation:
purpose:
- final check before publication

check_items:
- unassigned
- duplicate
- target members
- target period
- planned share targets
- ERP export availability

B09_publish_confirmation:
purpose:
- switch draft to publication

main_checks:
- publish targets
- share scope
- notification on/off
- immediate reflect confirmation

C02_share_scope_setting:
purpose:
- define who may see the shift

scope_candidates:
- person
- team
- department
- management_scope

C08_publish_target_confirmation:
purpose:
- prevent visibility accident by confirming who can see

D01_my_shift:
purpose:
- confirm own working schedule

main_display:
- date
- time
- office
- role
- note

D03_week_view:
purpose:
- understand weekly schedule quickly

D05_shift_detail:
purpose:
- confirm details of one shift item

main_display:
- date
- start / end
- affiliation
- place
- role
- memo
- change summary

E01_erp_linkage_status:
purpose:
- show success / failure / not sent state

# ============================================================
# 4. MVP MINIMUM SCREENS
# ============================================================

mvp_required:
- A01 startup / initial judge
- A02 login / access confirmation
- A03 home / dashboard
- B01 shift list
- B03 shift edit
- B08 draft confirmation
- B09 publish confirmation
- C01 share-rule list
- C02 share-scope setting
- D01 my shift
- D03 week view
- D05 shift detail
- A04 notification center
- E01 ERP linkage status

mvp_later:
- B04 day edit
- B06 month edit
- B07 person-based assignment edit
- C03 to C06 specialized share screens
- E03 export history
- E04 error detail
- E06 share history

# ============================================================
# 5. NAVIGATION DIRECTION
# ============================================================

admin_flow:
home
-> shift list
-> shift edit
-> draft confirmation
-> publish confirmation
-> share settings
-> notification / ERP status

staff_flow:
home
-> today's shift
-> week view
-> shift detail
-> notification center

# ============================================================
# 6. CURRENT CONCLUSION
# ============================================================

The screen set is naturally grouped into:
- creation
- sharing
- viewing
- ERP / operation management

The most critical five screens are:
- home / dashboard
- shift edit
- publish confirmation
- share scope setting
- my shift


# ============================================================
# END FILE: 090.interface/010.shift-manager/0900002_SHIFT_MANAGER_SCREEN_INVENTORY.md
# ============================================================


# ============================================================
# BEGIN FILE: 090.interface/010.shift-manager/0900003_SHIFT_MANAGER_SCREEN_NAVIGATION_DESIGN.md
# ============================================================

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


# ============================================================
# END FILE: 090.interface/010.shift-manager/0900003_SHIFT_MANAGER_SCREEN_NAVIGATION_DESIGN.md
# ============================================================


# ============================================================
# BEGIN FILE: 090.interface/010.shift-manager/0900004_SHIFT_MANAGER_SCREEN_INPUT_ITEM_DEFINITION_TABLE.md
# ============================================================

# ============================================================
# SHIFT MANAGER SCREEN INPUT ITEM DEFINITION TABLE
# ============================================================

status: implementation-facing-fixed-candidate
type: screen-input-item-definition-table
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the primary input items
for major ShiftManager screens before implementation.

This is intended to stabilize:
- UI design
- payload design
- validation direction
- screen responsibility boundaries

# ============================================================
# 2. BASIC RULES
# ============================================================

rules:
- only user-entered or user-selected items are listed as screen inputs
- display-only fields are not treated as screen inputs here
- required/optional meaning follows current design direction
- final UI detail may add helper controls without changing business meaning

# ============================================================
# 3. SHIFT_CREATE
# ============================================================

screen:
- shift_create

inputs:
- schedule_name
- target_scope_type
- target_scope_id
- target_period_type
- period_start_date
- period_end_date
- note

required_inputs:
- schedule_name
- target_scope_type
- target_period_type
- period_start_date
- period_end_date

optional_inputs:
- target_scope_id
- note

# ============================================================
# 4. SHIFT_EDIT
# ============================================================

screen:
- shift_edit

inputs:
- person_id
- shift_date
- start_time
- end_time
- role_code
- office_id
- department_id
- team_id
- memo

required_inputs:
- person_id
- shift_date
- start_time
- end_time

optional_inputs:
- role_code
- office_id
- department_id
- team_id
- memo

# ============================================================
# 5. PUBLISH_CONFIRMATION
# ============================================================

screen:
- publish_confirmation

inputs:
- publication_note
- notification_requested
- erp_export_required

required_inputs:
- none

optional_inputs:
- publication_note
- notification_requested
- erp_export_required

# ============================================================
# 6. REPUBLISH_CONFIRMATION
# ============================================================

screen:
- republish_confirmation

inputs:
- publication_note
- notification_requested
- erp_export_required

required_inputs:
- none

optional_inputs:
- publication_note
- notification_requested
- erp_export_required

# ============================================================
# 7. SHARE_SCOPE_SETTING
# ============================================================

screen:
- share_scope_setting

inputs:
- rule_name
- scope_type
- visibility_level
- target_type
- target_id

required_inputs:
- rule_name
- scope_type
- visibility_level
- target_type
- target_id

optional_inputs:
- none

# ============================================================
# 8. AUTO_GENERATION_CONDITION_SETTING
# ============================================================

screen:
- auto_generation_condition_setting

inputs:
- rule_name
- target_scope_type
- target_scope_id
- period_type
- business_days
- slot_requirements
- person_constraints
- priority_policy
- hard_rules
- soft_rules

required_inputs:
- rule_name
- target_scope_type
- period_type
- slot_requirements

optional_inputs:
- target_scope_id
- business_days
- person_constraints
- priority_policy
- hard_rules
- soft_rules

# ============================================================
# 9. AUTO_GENERATION_EXECUTE_CONFIRMATION
# ============================================================

screen:
- auto_generation_execute_confirmation

inputs:
- schedule_name
- period_start_date
- period_end_date
- generation_rule_id
- overwrite_policy

required_inputs:
- schedule_name
- period_start_date
- period_end_date
- generation_rule_id
- overwrite_policy

optional_inputs:
- none

# ============================================================
# 10. PDF_EXPORT_SETTING
# ============================================================

screen:
- pdf_export_setting

inputs:
- export_type
- layout_type
- include_memo

required_inputs:
- export_type
- layout_type

optional_inputs:
- include_memo

# ============================================================
# 11. ERP_EXPORT_CONFIRMATION
# ============================================================

screen:
- erp_export_confirmation

inputs:
- export_mode

required_inputs:
- export_mode

optional_inputs:
- none

# ============================================================
# 12. INPUT ENUM REFERENCE
# ============================================================

target_scope_type:
- team
- department
- office
- mixed

target_period_type:
- day
- week
- month

scope_type:
- person
- team
- department
- management_scope

visibility_level:
- self_only
- assigned_members
- team_visible
- department_visible
- manager_visible

target_type:
- person
- team
- department
- role

overwrite_policy:
- create_new_schedule
- replace_existing_draft
- merge_into_existing_draft

export_type:
- draft_pdf
- publication_pdf
- personal_pdf
- department_pdf
- board_pdf

layout_type:
- weekly_a4
- monthly_a4
- personal_compact
- board_a4
- board_a3

export_mode:
- manual
- automatic

# ============================================================
# 13. VALIDATION DIRECTION SUMMARY
# ============================================================

validation_direction:
- schedule_name must not be empty
- period_end_date must be >= period_start_date
- start_time must be < end_time
- share target fields must not be partially missing
- slot_requirements must contain at least 1 slot
- generation_rule_id must exist for auto generation execution
- export_type/layout_type must be compatible
- publication/republish confirm fields remain optional toggles

# ============================================================
# 14. CONCLUSION
# ============================================================

This document fixes the main user-input definition set
for the core ShiftManager screens,
including:
- shift creation/edit
- publish/republish
- sharing
- auto generation
- PDF export
- ERP export


# ============================================================
# END FILE: 090.interface/010.shift-manager/0900004_SHIFT_MANAGER_SCREEN_INPUT_ITEM_DEFINITION_TABLE.md
# ============================================================


# ============================================================
# BEGIN FILE: 090.interface/010.shift-manager/0900005_SHIFT_MANAGER_ADDITIONAL_SCREEN_INVENTORY.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL SCREEN INVENTORY
# ============================================================

status: design-extension
type: additional-screen-inventory
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. ADDED SCREENS
# ============================================================

headquarters:
- headquarters_site_dashboard
- site_status_detail
- multi_site_analytics

safety_and_confirmation:
- shortage_difference_dashboard
- publication_difference_detail
- change_confirmation_status

requested_day_off:
- requested_day_off_submit
- requested_day_off_review
- requested_day_off_history

scheduled_generation:
- auto_generation_schedule_list
- auto_generation_schedule_create
- auto_generation_schedule_detail
- auto_generation_schedule_execution_history

future_candidates:
- shift_exchange_request_list
- shift_exchange_request_detail
- support_request_list
- support_request_detail


# ============================================================
# END FILE: 090.interface/010.shift-manager/0900005_SHIFT_MANAGER_ADDITIONAL_SCREEN_INVENTORY.md
# ============================================================


# ============================================================
# BEGIN FILE: 090.interface/010.shift-manager/0900006_SHIFT_MANAGER_ADDITIONAL_SCREEN_INPUT_ITEM_DEFINITION_EXTENSION.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL SCREEN INPUT ITEM DEFINITION EXTENSION
# ============================================================

status: design-extension
type: additional-screen-input-item-definition-extension
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the key input items
for newly added screens.

# ============================================================
# 2. REQUESTED DAY-OFF SUBMIT
# ============================================================

screen:
- requested_day_off_submit

input_items:
- requested_date
- request_note

rules:
- requested_date required
- request_note optional

# ============================================================
# 3. REQUESTED DAY-OFF REVIEW
# ============================================================

screen:
- requested_day_off_review

input_items:
- requested_status
- review_note

rules:
- requested_status required
- review_note optional

# ============================================================
# 4. AUTO GENERATION SCHEDULE CREATE / EDIT
# ============================================================

screen:
- auto_generation_schedule_create
- auto_generation_schedule_detail

input_items:
- rule_name
- target_scope_type
- target_scope_id
- generation_rule_id
- schedule_type
- execution_timezone
- weekly_day_of_week
- monthly_day
- monthly_use_last_day
- execution_time
- target_period_mode
- active_flag

rules:
- rule_name required
- target_scope_type required
- target_scope_id required
- generation_rule_id required
- schedule_type required
- execution_timezone required
- execution_time required
- target_period_mode required
- weekly_day_of_week required when schedule_type=weekly
- monthly_day required when schedule_type=monthly_fixed_day
- monthly_use_last_day=true when schedule_type=monthly_last_day

# ============================================================
# 5. CHANGE CONFIRMATION
# ============================================================

screen:
- change_confirmation_status

input_items:
- publication_difference_ids
- confirmation_status

rules:
- publication_difference_ids required
- confirmation_status required

# ============================================================
# 6. HEADQUARTERS DASHBOARD / ANALYTICS
# ============================================================

screen:
- headquarters_site_dashboard
- multi_site_analytics

filter_items:
- site_id
- period_start_date
- period_end_date
- subscription_status

rules:
- all filters optional in first version
- analytics stays lightweight summary only

# ============================================================
# 7. CONCLUSION
# ============================================================

These input definitions should be added
to the practical screen implementation baseline
for additional competitive features.


# ============================================================
# END FILE: 090.interface/010.shift-manager/0900006_SHIFT_MANAGER_ADDITIONAL_SCREEN_INPUT_ITEM_DEFINITION_EXTENSION.md
# ============================================================


# ============================================================
# BEGIN FILE: 090.interface/010.shift-manager/0900007_SHIFT_MANAGER_ADDITIONAL_SCREEN_NAVIGATION_EXTENSION.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL SCREEN NAVIGATION EXTENSION
# ============================================================

status: design-extension
type: additional-screen-navigation-extension
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the screen navigation direction
for newly added competitive features.

# ============================================================
# 2. REQUESTED DAY-OFF FLOW
# ============================================================

flow:
my_shift / home_dashboard
-> requested_day_off_submit
-> requested_day_off_history

manager_flow:
home_dashboard
-> requested_day_off_review
-> requested_day_off_history

# ============================================================
# 3. SCHEDULED AUTO GENERATION FLOW
# ============================================================

flow:
home_dashboard
-> auto_generation_schedule_list
-> auto_generation_schedule_create
-> auto_generation_schedule_detail
-> auto_generation_schedule_execution_history

optional_shortcut:
generation_rule_list
-> auto_generation_schedule_create

# ============================================================
# 4. DIFFERENCE / CONFIRMATION FLOW
# ============================================================

flow:
notification_center
-> publication_difference_detail
-> change_confirmation_status

manager_flow:
home_dashboard
-> shortage_difference_dashboard
-> publication_difference_detail
-> change_confirmation_status

# ============================================================
# 5. HEADQUARTERS FLOW
# ============================================================

flow:
headquarters_site_dashboard
-> site_status_detail
-> multi_site_analytics

# ============================================================
# 6. RULE
# ============================================================

rule:
Additional feature navigation should remain shallow,
operational, and easy to reach from dashboard/notification context.


# ============================================================
# END FILE: 090.interface/010.shift-manager/0900007_SHIFT_MANAGER_ADDITIONAL_SCREEN_NAVIGATION_EXTENSION.md
# ============================================================


# ============================================================
# BEGIN FILE: 090.interface/010.shift-manager/0900008_SHIFT_MANAGER_ADDITIONAL_SCREEN_RESPONSIBILITY_EXTENSION.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL SCREEN RESPONSIBILITY EXTENSION
# ============================================================

status: design-extension
type: additional-screen-responsibility-extension
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the responsibility boundaries
for additional feature screens.

# ============================================================
# 2. REQUESTED DAY-OFF
# ============================================================

requested_day_off_submit:
- input requested_date
- input request_note
- submit self request
- show submission result

requested_day_off_history:
- show own requests
- show submitted/approved/rejected/cancelled

requested_day_off_review:
- show pending requests in managed scope
- approve/reject/cancel review action
- show review history context

# ============================================================
# 3. SCHEDULED AUTO GENERATION
# ============================================================

auto_generation_schedule_list:
- show defined timer rules
- show active/inactive
- open create/detail
- run-now shortcut where allowed

auto_generation_schedule_create:
- define weekly/monthly schedule
- define execution time
- define target period mode
- connect generation rule

auto_generation_schedule_detail:
- edit timer rule
- enable/disable
- show basic next execution meaning

auto_generation_schedule_execution_history:
- show success/failed/skipped
- show warning/unassigned counts
- show generated schedule linkage

# ============================================================
# 4. DIFFERENCE / CONFIRMATION
# ============================================================

shortage_difference_dashboard:
- show shortage counts
- show warning counts
- show unconfirmed change counts
- route to detail

publication_difference_detail:
- show before/after summary
- show affected person scope
- show difference type grouping

change_confirmation_status:
- show pending/confirmed counts
- show who still needs confirmation where allowed
- allow self confirmation where allowed

# ============================================================
# 5. HEADQUARTERS
# ============================================================

headquarters_site_dashboard:
- show per-site status cards
- show subscription status
- show shortage/unpublished/warning summary

site_status_detail:
- show one site's operational status
- show unresolved attention points

multi_site_analytics:
- show lightweight summary only
- show period filters
- avoid heavy BI behavior


# ============================================================
# END FILE: 090.interface/010.shift-manager/0900008_SHIFT_MANAGER_ADDITIONAL_SCREEN_RESPONSIBILITY_EXTENSION.md
# ============================================================


# ============================================================
# BEGIN FILE: 100.security/010.shift-manager/1000000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================

# ============================================================
# SHIFT MANAGER SECURITY OVERVIEW
# ============================================================

status: canonical
layer: security
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

security_focus:
- access control
- visibility control
- permission revocation
- auditability

# ============================================================
# END FILE: 100.security/010.shift-manager/1000000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================


# ============================================================
# BEGIN FILE: 100.security/010.shift-manager/1000001_SHIFT_MANAGER_SECURITY.md
# ============================================================

# ============================================================
# SHIFT MANAGER SECURITY
# ============================================================

status: canonical
layer: security
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

security_requirements:
1. schedule visibility must require authorization.
2. publication actions must be attributable.
3. share-rule changes must be logged.
4. permission revocation must remove future visibility.
5. exported enterprise data must be traceable.
6. unauthorized access attempts should be observable.

# ============================================================
# END FILE: 100.security/010.shift-manager/1000001_SHIFT_MANAGER_SECURITY.md
# ============================================================


# ============================================================
# BEGIN FILE: 100.security/010.shift-manager/1000002_SHIFT_MANAGER_RLS_AND_AUTHORIZATION_DDL_POLICY.md
# ============================================================

# ============================================================
# SHIFT MANAGER RLS AND AUTHORIZATION DDL POLICY
# ============================================================

status: draft-fixed-candidate
type: rls-and-authorization-ddl-policy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. BASIC POLICY
# ============================================================

ShiftManager requires three-layer access control:
1. company boundary
2. role boundary
3. share/view-scope boundary

principle:
Same company does not mean full visibility.
Visibility is limited by role and explicit share/view scope.

# ============================================================
# 2. PRIMARY RLS TARGET TABLES
# ============================================================

draft_side_tables:
- shift_schedule
- shift_assignment

published_side_tables:
- shift_publication
- shift_publication_assignment
- shift_share_rule
- shift_share_rule_target
- shift_view_scope

notification_linkage_audit_tables:
- shift_notification
- erp_linkage_state
- shift_publish_history
- shift_share_history
- shift_access_audit
- shift_generation_rule
- shift_generation_result
- shift_generation_warning

# ============================================================
# 3. SESSION CONTEXT MODEL
# ============================================================

recommended_session_values:
- app.current_company_id
- app.current_person_id
- app.current_roles
- app.is_enterprise_admin
- app.is_shift_admin
- app.is_department_manager
- app.is_team_leader
- app.is_integration_operator

recommended_helper_style:
Use current_setting(..., true) based helper functions.

# ============================================================
# 4. ACCESS PRINCIPLES
# ============================================================

access_principles:
- company_id equality is minimum requirement
- draft visibility is stricter than published visibility
- published visibility is based on evaluated view_scope
- share_rule visibility is manager-side only
- ERP linkage visibility is integration-role centered

# ============================================================
# 5. TABLE-BY-TABLE POLICY DIRECTION
# ============================================================

shift_schedule:
select:
- creator
- shift_admin
- permitted department_manager
- conditional team_leader
- enterprise_admin as needed

insert:
- shift_admin
- department_manager
- conditional team_leader

update:
- draft only
- authorized draft managers only

delete:
- prefer logical delete only

shift_assignment:
select:
- follow shift_schedule draft visibility

insert_update_delete:
- follow draft edit authority

shift_publication:
select:
- permitted published viewers
- upper managers by policy

insert:
- publish / republish authority only

shift_publication_assignment:
select:
- only when fn_can_view_person_in_publication(publication_id, person_id) is true
- or upper authority exception

update_delete:
- prohibited in principle

shift_share_rule:
select:
- enterprise_admin
- shift_admin
- permitted department_manager

insert_update_disable:
- share-management authority only

shift_share_rule_target:
- same direction as shift_share_rule

shift_view_scope:
select:
- viewer_person_id = current person
- or upper authority exception

write:
- internal rebuild process only

shift_notification:
select:
- target_person_id = current person
- or manager-side limited operation view

update:
- self read update
- permitted retry handling

erp_linkage_state:
select:
- enterprise_admin
- integration_operator
- conditional shift_admin
- conditional department_manager

write:
- export/retry internal process or permitted operator process only

shift_publish_history / shift_share_history:
select:
- manager-side only

shift_access_audit:
select:
- enterprise_admin
- upper shift_admin
- audit authority

shift_generation_rule / result / warning:
select:
- manager-side only
- no staff visibility
- no integration_operator broad visibility by default

# ============================================================
# 6. HELPER FUNCTION DIRECTION
# ============================================================

recommended_helpers:
- fn_current_person_id()
- fn_current_company_id()
- fn_has_role(role_name text)
- fn_can_manage_schedule(schedule_id uuid)
- fn_can_view_publication(publication_id uuid)
- fn_can_view_person_in_publication(publication_id uuid, visible_person_id uuid)

sample_helpers:

create or replace function app_shift_manager.fn_current_person_id()
returns uuid
language sql
stable
as $$
  select nullif(current_setting('app.current_person_id', true), '')::uuid
$$;

create or replace function app_shift_manager.fn_current_company_id()
returns uuid
language sql
stable
as $$
  select nullif(current_setting('app.current_company_id', true), '')::uuid
$$;

create or replace function app_shift_manager.fn_has_role(p_role text)
returns boolean
language sql
stable
as $$
  select coalesce(
    p_role = any(string_to_array(current_setting('app.current_roles', true), ',')),
    false
  )
$$;

# ============================================================
# 7. PUBLICATION VISIBILITY HELPERS
# ============================================================

sample_publication_view_helper:

create or replace function app_shift_manager.fn_can_view_publication(p_publication_id uuid)
returns boolean
language sql
stable
as $$
  select
    app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or exists (
      select 1
      from app_shift_manager.shift_view_scope vs
      where vs.publication_id = p_publication_id
        and vs.viewer_person_id = app_shift_manager.fn_current_person_id()
        and vs.active_flag = true
    )
$$;

sample_person_visibility_helper:

create or replace function app_shift_manager.fn_can_view_person_in_publication(
  p_publication_id uuid,
  p_visible_person_id uuid
)
returns boolean
language sql
stable
as $$
  select
    app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or exists (
      select 1
      from app_shift_manager.shift_view_scope vs
      where vs.publication_id = p_publication_id
        and vs.viewer_person_id = app_shift_manager.fn_current_person_id()
        and vs.visible_person_id = p_visible_person_id
        and vs.active_flag = true
    )
$$;

# ============================================================
# 8. ENABLE RLS DIRECTION
# ============================================================

recommended_rls_enable_targets:

alter table app_shift_manager.shift_schedule enable row level security;
alter table app_shift_manager.shift_assignment enable row level security;
alter table app_shift_manager.shift_publication enable row level security;
alter table app_shift_manager.shift_publication_assignment enable row level security;
alter table app_shift_manager.shift_share_rule enable row level security;
alter table app_shift_manager.shift_share_rule_target enable row level security;
alter table app_shift_manager.shift_view_scope enable row level security;
alter table app_shift_manager.shift_notification enable row level security;
alter table app_shift_manager.erp_linkage_state enable row level security;
alter table app_shift_manager.shift_publish_history enable row level security;
alter table app_shift_manager.shift_share_history enable row level security;
alter table app_shift_manager.shift_access_audit enable row level security;

# ============================================================
# 9. SAMPLE POLICIES
# ============================================================

notification_self_select:

create policy p_shift_notification_select_self
on app_shift_manager.shift_notification
for select
using (
  target_person_id = app_shift_manager.fn_current_person_id()
);

view_scope_self_select:

create policy p_shift_view_scope_select_self
on app_shift_manager.shift_view_scope
for select
using (
  viewer_person_id = app_shift_manager.fn_current_person_id()
  or app_shift_manager.fn_has_role('enterprise_admin')
  or app_shift_manager.fn_has_role('shift_admin')
);

publication_assignment_select:

create policy p_shift_publication_assignment_select
on app_shift_manager.shift_publication_assignment
for select
using (
  app_shift_manager.fn_can_view_person_in_publication(publication_id, person_id)
);

publication_select:

create policy p_shift_publication_select
on app_shift_manager.shift_publication
for select
using (
  app_shift_manager.fn_can_view_publication(publication_id)
);

draft_schedule_select_direction:

create policy p_shift_schedule_select_draft_manager
on app_shift_manager.shift_schedule
for select
using (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    created_by_person_id = app_shift_manager.fn_current_person_id()
    or app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
  )
);

share_rule_insert_direction:

create policy p_shift_share_rule_insert_manager
on app_shift_manager.shift_share_rule
for insert
with check (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
  )
);

# ============================================================
# 10. IMPORTANT IMPLEMENTATION NOTES
# ============================================================

important_notes:
- publish / republish should go through internal function or trusted API layer
- view_scope rebuild should be internal process, not arbitrary user update
- service-role/internal-role bypass must be tightly controlled
- API/application layer should still perform explicit permission checks in addition to RLS
- department_manager target-scope resolution should be provided by trusted context

# ============================================================
# 11. CRITICAL SECURITY GOALS
# ============================================================

critical_goals:
- staff must not gain uncontrolled access to other people's published data
- published visibility must depend on explicit view_scope evaluation
- draft data must remain manager-side only
- ERP linkage state must remain operator/manager centered
- auto generation rules/results must remain manager-side only

# ============================================================
# 12. CONCLUSION
# ============================================================

ShiftManager authorization should combine:
- company boundary
- role boundary
- explicit evaluated view scope

The two most critical helper functions are:
- fn_can_view_publication(publication_id)
- fn_can_view_person_in_publication(publication_id, visible_person_id)


# ============================================================
# END FILE: 100.security/010.shift-manager/1000002_SHIFT_MANAGER_RLS_AND_AUTHORIZATION_DDL_POLICY.md
# ============================================================


# ============================================================
# BEGIN FILE: 100.security/010.shift-manager/1000003_SHIFT_MANAGER_SUBSCRIPTION_AUTHORIZATION_POLICY.md
# ============================================================

# ============================================================
# SHIFT MANAGER SUBSCRIPTION AUTHORIZATION POLICY
# ============================================================

status: design-extension
type: subscription-authorization-policy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines how site subscription state
interacts with authorization.

# ============================================================
# 2. AUTHORIZATION LAYERS
# ============================================================

authorization_layers:
1. site subscription state
2. role/operation authority
3. visibility scope authority

meaning:
Even if role/visibility would allow an action,
inactive subscription state may still block it.

# ============================================================
# 3. READ-ONLY BLOCK RULE
# ============================================================

read_only_block_rule:
If site subscription state is inactive,
mutation/management actions should be blocked first.

blocked_categories:
- create
- edit
- generate
- publish
- republish
- share_manage
- export_pdf
- export_erp
- generation_rule_manage
- admin_setting_change

allowed_categories:
- self viewing
- visible publication viewing
- notification viewing

# ============================================================
# 4. VIEWING STILL REQUIRES NORMAL AUTHORITY
# ============================================================

important_rule:
Inactive does not bypass role/visibility checks.

meaning:
Read-only mode still respects:
- self scope
- explicit share scope
- view_scope evaluation
- publication visibility rules

# ============================================================
# 5. RECOMMENDED SERVER CHECK ORDER
# ============================================================

recommended_server_check_order:
1. authenticate user
2. resolve site license
3. resolve site subscription status
4. evaluate feature gate
5. evaluate role/visibility authorization
6. execute business logic

# ============================================================
# 6. RECOMMENDED HELPER DIRECTION
# ============================================================

recommended_helpers:
- fn_current_site_license_id()
- fn_current_subscription_status()
- fn_is_feature_allowed(feature_code text)

recommendation:
Subscription gate may be applied in API/service layer first,
with DB/RLS focused mainly on role/visibility and data-scope safety.

# ============================================================
# 7. CONCLUSION
# ============================================================

ShiftManager authorization should treat subscription state
as an upper-layer feature gate,
without weakening the existing role and visibility model.


# ============================================================
# END FILE: 100.security/010.shift-manager/1000003_SHIFT_MANAGER_SUBSCRIPTION_AUTHORIZATION_POLICY.md
# ============================================================


# ============================================================
# BEGIN FILE: 100.security/010.shift-manager/1000004_SHIFT_MANAGER_ADDITIONAL_FEATURE_AUTHORIZATION_EXTENSION.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE AUTHORIZATION EXTENSION
# ============================================================

status: design-extension
type: additional-feature-authorization-extension
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes authorization direction
for newly added competitive features.

# ============================================================
# 2. REQUESTED DAY-OFF
# ============================================================

requested_day_off_authorization:
staff:
- create for self only
- view self requests only

department_manager / shift_admin:
- view/review within managed scope

enterprise_admin / headquarters_operator:
- only if business policy explicitly allows cross-site review

# ============================================================
# 3. CHANGE CONFIRMATION
# ============================================================

change_confirmation_authorization:
affected_viewer:
- confirm only own visible affected change rows

manager_side:
- view pending/confirmed summary in managed scope

# ============================================================
# 4. HEADQUARTERS DASHBOARD / ANALYTICS
# ============================================================

headquarters_authorization:
- headquarters_operator
- enterprise_admin
- explicitly allowed equivalent role

policy:
No uncontrolled cross-company or cross-scope visibility.

# ============================================================
# 5. SCHEDULED AUTO GENERATION
# ============================================================

scheduled_generation_authorization:
shift_admin:
- create/update/run-now in managed scope

department_manager:
- create/update/run-now in own managed scope

team_leader:
- optional later, not initial default

staff:
- denied

integration_operator:
- denied

# ============================================================
# 6. CONCLUSION
# ============================================================

Additional features must preserve the same principles:
- explicit authority
- explicit scope
- no device-based permission split
- inactive subscription blocks mutation features


# ============================================================
# END FILE: 100.security/010.shift-manager/1000004_SHIFT_MANAGER_ADDITIONAL_FEATURE_AUTHORIZATION_EXTENSION.md
# ============================================================


# ============================================================
# BEGIN FILE: 100.security/010.shift-manager/1000005_SHIFT_MANAGER_ADDITIONAL_FEATURE_RLS_SQL_PACK_NOTE.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE RLS SQL PACK NOTE
# ============================================================

status: design-extension
type: additional-feature-rls-sql-pack-note
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This note fixes the RLS SQL pack direction
for newly added competitive features.

# ============================================================
# 2. TARGET SQL FILES
# ============================================================

target_sql_files:
- 109_shift_manager_rls_requested_day_off.sql
- 110_shift_manager_rls_additional_generation.sql
- 111_shift_manager_rls_difference_confirmation.sql
- 112_shift_manager_rls_headquarters_summary.sql

# ============================================================
# 3. CORE DIRECTION
# ============================================================

core_direction:
- requested day-off = self-first + manager review visibility
- scheduled generation = manager-side only
- difference / confirmation = affected-person or manager-side visibility
- headquarters snapshot/analytics = headquarters/operator summary visibility only

# ============================================================
# 4. IMPORTANT RULE
# ============================================================

important_rule:
Subscription inactive blocking remains an app/service-layer mutation gate.
RLS should preserve scope safety,
not replace subscription feature-gate logic.

# ============================================================
# 5. CONCLUSION
# ============================================================

Additional features now have an explicit RLS SQL pack direction
aligned with the existing authorization model.


# ============================================================
# END FILE: 100.security/010.shift-manager/1000005_SHIFT_MANAGER_ADDITIONAL_FEATURE_RLS_SQL_PACK_NOTE.md
# ============================================================


# ============================================================
# BEGIN FILE: 110.infrastructure/010.shift-manager/1100000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================

# ============================================================
# SHIFT MANAGER INFRASTRUCTURE OVERVIEW
# ============================================================

status: canonical
layer: infrastructure
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

infrastructure_focus:
- mobile delivery
- publication storage
- visibility evaluation
- integration connectivity

# ============================================================
# END FILE: 110.infrastructure/010.shift-manager/1100000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================


# ============================================================
# BEGIN FILE: 110.infrastructure/010.shift-manager/1100001_SHIFT_MANAGER_INFRASTRUCTURE.md
# ============================================================

# ============================================================
# SHIFT MANAGER INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

infra_needs:
- persistent schedule storage
- publication version storage
- permission evaluation support
- notification transport
- ERP connectivity path
- mobile API delivery path

notes:
The exact stack may vary by implementation phase.
Infrastructure shall support realtime visible publication changes.

# ============================================================
# END FILE: 110.infrastructure/010.shift-manager/1100001_SHIFT_MANAGER_INFRASTRUCTURE.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================

# ============================================================
# SHIFT MANAGER IMPLEMENTATION OVERVIEW
# ============================================================

status: canonical
layer: implementation
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

implementation_focus:
- mobile-first app
- publication APIs
- share evaluation logic
- ERP export connector

# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200001_SHIFT_MANAGER_IMPLEMENTATION.md
# ============================================================

# ============================================================
# SHIFT MANAGER IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

implementation_guidance:
- keep clear distinction between draft and published state
- keep sharing logic centralized
- make mobile viewing lightweight
- publish operations should be explicit
- ERP connector should be additive, not tightly fused into UI logic

not_in_scope_yet:
- Java source generation
- physical DB schema
- exact API contracts

# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200001_SHIFT_MANAGER_IMPLEMENTATION.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200002_SHIFT_MANAGER_API_EXACT_CONTRACT.md
# ============================================================

# ============================================================
# SHIFT MANAGER API EXACT CONTRACT
# ============================================================

status: draft-fixed-candidate
type: api-exact-contract
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. BASIC POLICY
# ============================================================

API groups:
- authentication / bootstrap
- shift create / edit
- publish / republish
- share settings
- viewing
- notifications
- ERP linkage
- history / audit

design_principles:
- separate draft APIs and publication APIs
- viewing APIs return only already-allowed results
- ERP export targets publication only
- mobile viewing APIs should stay lightweight
- confirm-before-publish and share-preview endpoints are mandatory-grade

# ============================================================
# 2. COMMON RULES
# ============================================================

auth_premise:
- authenticated through BusinessOS
- person_id / company_id / role set resolved before use

common_headers:
- authorization
- x-company-id
- x-person-id
- x-client-type
- x-request-id

common_response_shape:
- ok
- data
- error
- meta.request_id

common_error_shape:
- error.code
- error.message
- error.details

# ============================================================
# 3. BOOTSTRAP
# ============================================================

GET /api/shift-manager/v1/bootstrap
purpose:
- determine app access
- return initial role / affiliation / capability set
- decide initial home

# ============================================================
# 4. SCHEDULE APIs
# ============================================================

GET /api/shift-manager/v1/schedules
purpose:
- admin schedule list
- filter by state / scope / period

GET /api/shift-manager/v1/schedules/{schedule_id}
purpose:
- draft header and summary for editing

POST /api/shift-manager/v1/schedules
purpose:
- create new draft schedule

PATCH /api/shift-manager/v1/schedules/{schedule_id}
purpose:
- update schedule header

GET /api/shift-manager/v1/schedules/{schedule_id}/assignments
purpose:
- list draft assignments

POST /api/shift-manager/v1/schedules/{schedule_id}/assignments
purpose:
- add draft assignment

PATCH /api/shift-manager/v1/assignments/{assignment_id}
purpose:
- update one draft assignment

DELETE /api/shift-manager/v1/assignments/{assignment_id}
purpose:
- logical delete recommended

POST /api/shift-manager/v1/schedules/{schedule_id}/validate-for-publication
purpose:
- validate before publish
- detect assignment gap / duplicate / share target / ERP readiness

# ============================================================
# 5. PUBLICATION APIs
# ============================================================

POST /api/shift-manager/v1/schedules/{schedule_id}/publish
purpose:
- create publication from current draft

POST /api/shift-manager/v1/schedules/{schedule_id}/republish
purpose:
- create next publication and supersede old one

GET /api/shift-manager/v1/schedules/{schedule_id}/publications
purpose:
- list publication versions

GET /api/shift-manager/v1/schedules/{schedule_id}/publish-history
purpose:
- publication audit history

# ============================================================
# 6. SHARE APIs
# ============================================================

GET /api/shift-manager/v1/share-rules
purpose:
- list share rules

POST /api/shift-manager/v1/share-rules
purpose:
- create share rule

PATCH /api/shift-manager/v1/share-rules/{share_rule_id}
purpose:
- update share rule

POST /api/shift-manager/v1/share-rules/{share_rule_id}/disable
purpose:
- disable share rule

GET /api/shift-manager/v1/publications/{publication_id}/share-preview
purpose:
- show who will be able to view
- prevent share accident

POST /api/shift-manager/v1/publications/{publication_id}/rebuild-view-scope
purpose:
- rebuild precomputed view scope after share changes

GET /api/shift-manager/v1/share-rules/{share_rule_id}/history
purpose:
- inspect share-rule history

# ============================================================
# 7. VIEWING APIs
# ============================================================

GET /api/shift-manager/v1/me/shifts/today
purpose:
- lightweight current-day view for mobile

GET /api/shift-manager/v1/me/shifts/week
purpose:
- weekly personal shift view

GET /api/shift-manager/v1/me/shifts/month
purpose:
- monthly personal shift view

GET /api/shift-manager/v1/me/visible-shifts
purpose:
- list visible shifts inside allowed range

GET /api/shift-manager/v1/publication-assignments/{publication_assignment_id}
purpose:
- open one visible published shift detail

# ============================================================
# 8. NOTIFICATION APIs
# ============================================================

GET /api/shift-manager/v1/me/notifications
purpose:
- list user notifications

POST /api/shift-manager/v1/me/notifications/{notification_id}/read
purpose:
- mark as read

POST /api/shift-manager/v1/notifications/{notification_id}/retry
purpose:
- resend failed notification
permission:
- shift_admin or integration_operator equivalent

# ============================================================
# 9. ERP APIs
# ============================================================

GET /api/shift-manager/v1/erp-linkages
purpose:
- list ERP export states

POST /api/shift-manager/v1/publications/{publication_id}/export-erp
purpose:
- request ERP export for publication

POST /api/shift-manager/v1/publications/{publication_id}/retry-export-erp
purpose:
- retry failed ERP export

GET /api/shift-manager/v1/publications/{publication_id}/erp-linkage
purpose:
- inspect one publication linkage result

# ============================================================
# 10. ACCESS AUDIT API
# ============================================================

GET /api/shift-manager/v1/publications/{publication_id}/access-audit
purpose:
- inspect access audit
permission:
- enterprise_admin or upper shift_admin scope

# ============================================================
# 11. KEY ERROR CODES
# ============================================================

auth_and_permission:
- SHIFT_AUTH_REQUIRED
- SHIFT_ACCESS_DENIED
- SHIFT_PERMISSION_DENIED
- SHIFT_ROLE_NOT_ALLOWED

business_state:
- SHIFT_SCHEDULE_NOT_FOUND
- SHIFT_ASSIGNMENT_NOT_FOUND
- SHIFT_PUBLICATION_NOT_FOUND
- SHIFT_ALREADY_PUBLISHED
- SHIFT_DRAFT_REQUIRED
- SHIFT_PUBLICATION_REQUIRED

share:
- SHIFT_SHARE_RULE_NOT_FOUND
- SHIFT_VIEW_SCOPE_REBUILD_FAILED
- SHIFT_SHARE_PREVIEW_FAILED
- SHIFT_VISIBLE_RANGE_DENIED

erp:
- SHIFT_ERP_EXPORT_NOT_ALLOWED
- SHIFT_ERP_EXPORT_FAILED
- SHIFT_ERP_RETRY_NOT_ALLOWED
- SHIFT_ERP_MASTER_MISMATCH

validation:
- SHIFT_VALIDATION_ERROR
- SHIFT_DATE_RANGE_INVALID
- SHIFT_TIME_RANGE_INVALID
- SHIFT_DUPLICATE_ASSIGNMENT
- SHIFT_TARGET_SCOPE_INVALID

# ============================================================
# 12. MVP MINIMUM API SET
# ============================================================

mvp_minimum:
- GET /bootstrap
- GET /schedules
- POST /schedules
- GET /schedules/{schedule_id}
- POST /schedules/{schedule_id}/assignments
- POST /schedules/{schedule_id}/validate-for-publication
- POST /schedules/{schedule_id}/publish
- GET /share-rules
- POST /share-rules
- GET /publications/{publication_id}/share-preview
- GET /me/shifts/today
- GET /me/shifts/week
- GET /me/notifications
- GET /erp-linkages

# ============================================================
# 13. IMPORTANT API DECISIONS
# ============================================================

important_points:
- independent validate-for-publication API
- independent share-preview API
- view APIs return only allowed results
- ERP export is publication_id based


# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200002_SHIFT_MANAGER_API_EXACT_CONTRACT.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200003_SHIFT_MANAGER_PACKAGE_AND_MODULE_ARCHITECTURE.md
# ============================================================

# ============================================================
# SHIFT MANAGER PACKAGE AND MODULE ARCHITECTURE
# ============================================================

status: design-fixed-candidate
type: package-and-module-architecture
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes how ShiftManager responsibilities
should be split before implementation begins.

This is not implementation.
It is a design-level responsibility split document.

# ============================================================
# 2. SPLIT PRINCIPLES
# ============================================================

ShiftManager should be split by business responsibility,
not only by screen.

reasons:
- draft and publication have different meanings
- share rules and visible result are different responsibilities
- receiving/viewing responsibility differs from management responsibility
- ERP linkage should remain isolated
- notification is a delivery responsibility, not only a minor helper

split_principles:
1. separate draft and publication
2. separate share rules and view results
3. isolate notification as its own responsibility
4. isolate ERP linkage as its own responsibility
5. externalize auth / permission context as common responsibility
6. do not mix business responsibility for UI convenience

# ============================================================
# 3. LOGICAL ROOT STRUCTURE
# ============================================================

recommended_root_packages:
- app
- bootstrap
- auth
- common
- dashboard
- draft
- publication
- share
- view
- notification
- erp
- audit
- settings
- infrastructure

# ============================================================
# 4. RESPONSIBILITY OF EACH PACKAGE
# ============================================================

app:
- application entry point
- overall initialization
- shared configuration loading
- top-level dependency grouping

bootstrap:
- startup / initial judge
- access confirmation
- initial role check
- first destination decision

auth:
- company_id / person_id / role context
- permission helper
- BusinessOS auth context adapter

common:
- shared DTO
- shared model
- shared exceptions
- shared date/time utilities
- shared UI parts
- constants

dashboard:
- home / dashboard summary
- entry points to draft / notification / ERP status

draft:
- create draft schedules
- edit draft schedules
- manage draft assignments
- support day/week/month/person-based editing
- stop before final publication responsibility

publication:
- publish
- republish
- publication fixation
- publication history
- draft to publication conversion responsibility

share:
- share-rule management
- share preview
- stop share
- publish target confirmation
- request view-scope rebuild

view:
- my shift
- today shift
- week/month viewing
- detail viewing
- visible shift list
- other-person shift view in allowed scope

notification:
- notification list
- mark read
- retry failed notifications
- deep link routing

erp:
- ERP linkage state
- publication export
- retry export
- payload builder
- ERP connector boundary

audit:
- publish history query
- share history query
- access audit query

settings:
- display settings
- notification settings
- week start setting

infrastructure:
- DB access
- API clients
- repository implementations
- notification transport
- ERP transport
- session context adapter

# ============================================================
# 5. CORE SIX RESPONSIBILITIES
# ============================================================

core_responsibilities:
- draft
- publication
- share
- view
- notification
- erp

# ============================================================
# 6. DEPENDENCY DIRECTION
# ============================================================

recommended_direction:
- bootstrap -> auth / dashboard
- dashboard -> draft / notification / erp via entry navigation
- draft -> publication handoff
- publication -> share / notification / erp coordination
- share -> view-scope rebuild request
- view -> publication + evaluated visibility result
- notification -> publication/view result reference
- erp -> publication fixed result reference

must_avoid:
- draft directly owning ERP connector
- view directly editing share rules
- notification owning share-rule logic itself
- UI directly calling DB implementation
- scattered permission logic per screen
- oversized common junk box

# ============================================================
# 7. MVP MINIMUM LOGICAL SPLIT
# ============================================================

mvp_minimum:
- app
- bootstrap
- auth
- common
- dashboard
- draft
- publication
- share
- view
- notification
- erp
- infrastructure

audit_and_settings:
- may be split later if needed

# ============================================================
# 8. CONCLUSION
# ============================================================

ShiftManager should be split by responsibility rather than only by screen.

especially_important:
- draft owns editable draft responsibility
- publication owns fixed published responsibility
- share owns visibility conditions
- view owns visible result
- notification owns delivery state
- erp owns external enterprise boundary


# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200003_SHIFT_MANAGER_PACKAGE_AND_MODULE_ARCHITECTURE.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200004_SHIFT_MANAGER_API_DTO_INVENTORY.md
# ============================================================

# ============================================================
# SHIFT MANAGER API DTO INVENTORY
# ============================================================

status: design-fixed-candidate
type: api-dto-inventory
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document organizes input/output DTO units
for ShiftManager APIs.

purpose:
- clarify which APIs use which DTOs
- keep draft DTO and publication DTO separate
- separate share-rule DTO and visible-result DTO
- isolate ERP export DTOs
- keep notification DTOs separate from viewing DTOs

# ============================================================
# 2. DTO SPLIT PRINCIPLES
# ============================================================

principles:
1. separate request DTO and response DTO
2. separate draft DTO and publication DTO
3. separate share-rule DTO and visible-result DTO
4. isolate ERP export DTO
5. do not create giant DTOs for UI convenience
6. separate list DTO and detail DTO

# ============================================================
# 3. DTO GROUPS
# ============================================================

dto_groups:
- common DTO
- bootstrap DTO
- schedule DTO
- assignment DTO
- validation DTO
- publication DTO
- share DTO
- view DTO
- notification DTO
- ERP DTO
- history / audit DTO

# ============================================================
# 4. COMMON DTO
# ============================================================

common_dto:
- ApiResultDto
- ApiErrorDto
- RequestMetaDto
- PageRequestDto
- PageResponseDto
- PeriodRangeDto

# ============================================================
# 5. BOOTSTRAP DTO
# ============================================================

bootstrap_dto:
- BootstrapResponseDto
- BootstrapProfileDto
- BootstrapCapabilitiesDto

# ============================================================
# 6. SCHEDULE DTO
# ============================================================

schedule_dto:
- ScheduleListItemDto
- ScheduleListResponseDto
- ScheduleDetailDto
- ScheduleSummaryDto
- ScheduleDetailResponseDto
- CreateScheduleRequestDto
- CreateScheduleResponseDto
- UpdateScheduleRequestDto

# ============================================================
# 7. ASSIGNMENT DTO
# ============================================================

assignment_dto:
- AssignmentDto
- AssignmentListResponseDto
- CreateAssignmentRequestDto
- CreateAssignmentResponseDto
- UpdateAssignmentRequestDto

# ============================================================
# 8. VALIDATION DTO
# ============================================================

validation_dto:
- ValidationWarningDto
- ValidationSummaryDto
- ValidateForPublicationResponseDto

# ============================================================
# 9. PUBLICATION DTO
# ============================================================

publication_dto:
- PublishRequestDto
- PublishResponseDto
- RepublishRequestDto
- RepublishResponseDto
- PublicationListItemDto
- PublicationListResponseDto

# ============================================================
# 10. SHARE DTO
# ============================================================

share_dto:
- ShareRuleTargetDto
- ShareRuleDto
- ShareRuleListResponseDto
- CreateShareRuleRequestDto
- CreateShareRuleResponseDto
- UpdateShareRuleRequestDto
- SharePreviewScopeBreakdownDto
- SharePreviewViewerDto
- SharePreviewResponseDto

# ============================================================
# 11. VIEW DTO
# ============================================================

view_dto:
- MyShiftItemDto
- MyShiftListResponseDto
- VisibleShiftListItemDto
- VisibleShiftListResponseDto
- ShiftDetailResponseDto

# ============================================================
# 12. NOTIFICATION DTO
# ============================================================

notification_dto:
- NotificationItemDto
- NotificationListResponseDto
- MarkNotificationReadResponseDto
- RetryNotificationResponseDto

# ============================================================
# 13. ERP DTO
# ============================================================

erp_dto:
- ErpLinkageListItemDto
- ErpLinkageListResponseDto
- ExportErpRequestDto
- ExportErpResponseDto
- RetryErpExportResponseDto
- ErpLinkageDetailResponseDto
- ErpExportHeaderDto
- ErpExportDetailDto
- ErpExportPayloadDto

# ============================================================
# 14. HISTORY / AUDIT DTO
# ============================================================

history_audit_dto:
- PublishHistoryItemDto
- PublishHistoryListResponseDto
- ShareHistoryItemDto
- ShareHistoryListResponseDto
- AccessAuditItemDto
- AccessAuditListResponseDto

# ============================================================
# 15. IMPORTANT DESIGN DECISIONS
# ============================================================

important_points:
- separate ScheduleDetailDto from publication DTOs
- separate ShareRuleDto from VisibleShiftListItemDto
- isolate ErpExportPayloadDto from internal app DTOs
- separate list DTOs and detail DTOs

# ============================================================
# 16. CONCLUSION
# ============================================================

ShiftManager DTOs are naturally grouped into:
- bootstrap
- draft-related
- publication
- share
- view
- notification
- erp
- history/audit

This keeps API exact-contract design stable before implementation.


# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200004_SHIFT_MANAGER_API_DTO_INVENTORY.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200005_SHIFT_MANAGER_BUNDLED_PRE_IMPLEMENTATION_DETAIL_FIX.md
# ============================================================

# ============================================================
# SHIFT MANAGER BUNDLED PRE-IMPLEMENTATION DETAIL FIX
# ============================================================

status: implementation-facing-detail-pack
type: bundled-pre-implementation-detail-fix
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the bundled late-stage pre-implementation details for ShiftManager.

It consolidates:
- API request / response exact payload direction
- enum / required / optional / null rules
- RLS SQL draft separation direction
- auto-generation condition JSON structure
- notification template wording
- screen input item definition

# ============================================================
# 2. COMMON API RESPONSE RULE
# ============================================================

common_success_response:
{
  "ok": true,
  "data": {},
  "error": null,
  "meta": {
    "request_id": "req_xxx"
  }
}

common_error_response:
{
  "ok": false,
  "data": null,
  "error": {
    "code": "SHIFT_VALIDATION_ERROR",
    "message": "validation error",
    "details": {
      "field_errors": []
    }
  },
  "meta": {
    "request_id": "req_xxx"
  }
}

common_rules:
- required fields must be present
- optional fields may be omitted
- nullable fields may be null
- list APIs return items array
- time format = HH:MM:SS
- date format = YYYY-MM-DD
- datetime format = ISO-8601 with offset
- enums are fixed strings
- booleans are always true/false

# ============================================================
# 3. EXACT PAYLOAD FIXATION
# ============================================================

bootstrap_response_shape:
- app_access_allowed
- person_id
- company_id
- roles[]
- default_home_type
- profile
- capabilities

default_home_type_enum:
- admin_dashboard
- staff_today_shift

schedule_create_request:
- schedule_name
- target_scope_type
- target_scope_id
- target_period_type
- period_start_date
- period_end_date
- note

target_scope_type_enum:
- team
- department
- office
- mixed

target_period_type_enum:
- day
- week
- month

schedule_create_response:
- schedule_id
- status
- draft_version_no
- generation_mode

assignment_create_request:
- person_id
- shift_date
- start_time
- end_time
- role_code
- office_id
- department_id
- team_id
- memo

assignment_create_response:
- assignment_id
- source_type

assignment_source_type_enum:
- manual
- auto_generated
- auto_adjusted

validate_for_publication_response:
- ready
- warnings[]
- summary

validation_warning_level_enum:
- info
- warning
- high
- critical

publish_request:
- publication_note
- notification_requested
- erp_export_required

publish_response:
- publication_id
- publication_version_no
- publication_status
- published_at

republish_request:
- publication_note
- notification_requested
- erp_export_required

republish_response:
- publication_id
- publication_version_no
- publication_status
- superseded_publication_id

share_rule_create_request:
- rule_name
- scope_type
- visibility_level
- applies_to_schedule_id
- targets[]

scope_type_enum:
- person
- team
- department
- management_scope

visibility_level_enum:
- self_only
- assigned_members
- team_visible
- department_visible
- manager_visible

target_type_enum:
- person
- team
- department
- role

share_preview_response:
- viewer_count
- scope_breakdown[]
- sample_viewers[]

my_shifts_today_response:
- items[]
  - publication_id
  - publication_assignment_id
  - shift_date
  - start_time
  - end_time
  - office_name
  - department_name
  - role_code
  - memo

notification_list_response:
- items[]
  - notification_id
  - notification_type
  - title
  - body
  - delivery_status
  - urgent_flag
  - related_shift_date
  - deep_link_path
  - queued_at
  - delivered_at
  - read_at
- page
- page_size
- total_count

notification_type_enum:
- publish
- republish
- same_day
- urgent_change

notification_delivery_status_enum:
- queued
- sent
- failed
- read

erp_export_request:
- export_mode

export_mode_enum:
- manual
- automatic

erp_export_response:
- publication_id
- export_status

erp_export_status_enum:
- not_required
- pending
- exporting
- success
- failed

generation_rule_create_request:
- rule_name
- target_scope_type
- target_scope_id
- period_type
- priority_policy
- condition_json

generation_rule_create_response:
- generation_rule_id
- active_flag

auto_generate_request:
- schedule_name
- target_scope_type
- target_scope_id
- target_period_type
- period_start_date
- period_end_date
- generation_rule_id
- overwrite_policy

overwrite_policy_enum:
- create_new_schedule
- replace_existing_draft
- merge_into_existing_draft

auto_generate_response:
- schedule_id
- generation_result_id
- generation_mode
- generated_assignment_count
- unassigned_count
- warning_count

generation_result_response:
- generation_result_id
- schedule_id
- generation_rule_id
- generated_at
- generated_assignment_count
- unassigned_count
- warning_count
- result_summary

generation_warning_response:
- items[]
  - generation_warning_id
  - warning_type
  - warning_level
  - target_date
  - target_slot
  - related_person_id
  - message
  - details

generation_warning_type_enum:
- unassigned_slot
- requested_day_off_conflict
- consecutive_work_risk
- imbalance_warning
- skill_shortage
- priority_fallback

generation_warning_level_enum:
- info
- warning
- high
- critical

# ============================================================
# 4. RLS SQL DRAFT SET SPLIT
# ============================================================

recommended_rls_sql_files:
- 001_shift_manager_rls_helpers.sql
- 002_shift_manager_rls_enable.sql
- 003_shift_manager_rls_draft.sql
- 004_shift_manager_rls_publication.sql
- 005_shift_manager_rls_share.sql
- 006_shift_manager_rls_notification.sql
- 007_shift_manager_rls_erp.sql
- 008_shift_manager_rls_generation.sql

generation_rls_direction:
shift_generation_rule:
- shift_admin
- department_manager
- conditional team_leader
- staff denied
- integration_operator denied

shift_generation_result:
- generation executor
- same managed scope managers
- staff denied

shift_generation_warning:
- follows generation_result visibility
- staff denied

# ============================================================
# 5. AUTO GENERATION CONDITION JSON SPEC
# ============================================================

base_shape:
{
  "business_days": [],
  "slot_requirements": [],
  "person_constraints": [],
  "priority_policy": {},
  "hard_rules": {},
  "soft_rules": {}
}

business_days_example:
["mon", "tue", "wed", "thu", "fri"]

slot_requirements_shape:
[
  {
    "slot_code": "morning",
    "start_time": "09:00:00",
    "end_time": "13:00:00",
    "required_headcount": 2,
    "required_roles": [
      {
        "role_code": "cashier",
        "count": 1
      }
    ]
  }
]

person_constraints_shape:
[
  {
    "person_id": "uuid",
    "available_weekdays": ["mon", "tue", "wed"],
    "available_time_ranges": [
      {
        "start_time": "09:00:00",
        "end_time": "18:00:00"
      }
    ],
    "requested_days_off": ["2026-04-08"],
    "blocked_dates": [],
    "max_daily_hours": 8,
    "max_weekly_assignments": 4,
    "max_consecutive_days": 3
  }
]

priority_policy_shape:
{
  "balanced_assignment": true,
  "prefer_same_role_continuity": true,
  "prefer_veteran": false,
  "prefer_low_cost": false
}

hard_rules_shape:
{
  "must_respect_requested_days_off": true,
  "must_respect_max_daily_hours": true,
  "must_respect_max_consecutive_days": true
}

soft_rules_shape:
{
  "prefer_balanced_distribution": true,
  "allow_priority_fallback": true,
  "warn_on_skill_shortage": true
}

# ============================================================
# 6. NOTIFICATION TEMPLATE FIXATION
# ============================================================

publish_template:
title:
- シフトが公開されました
body:
- {period_label} のシフトが公開されました。内容を確認してください。

republish_template:
title:
- シフトが更新されました
body:
- {period_label} のシフトに変更があります。最新内容を確認してください。

same_day_template:
title:
- 本日の勤務予定
body:
- 本日の勤務は {start_time}〜{end_time}、{office_name} です。

urgent_change_template:
title:
- 至急確認：勤務予定が変更されました
body:
- 勤務予定に重要な変更があります。最新内容を確認してください。

# ============================================================
# 7. SCREEN INPUT ITEM DEFINITION
# ============================================================

shift_create_inputs:
- schedule_name
- target_scope_type
- target_scope_id
- target_period_type
- period_start_date
- period_end_date
- note

shift_edit_inputs:
- person_id
- shift_date
- start_time
- end_time
- role_code
- office_id
- department_id
- team_id
- memo

publish_confirmation_inputs:
- publication_note
- notification_requested
- erp_export_required

share_scope_setting_inputs:
- rule_name
- scope_type
- visibility_level
- target_type
- target_id

auto_generation_condition_setting_inputs:
- rule_name
- target_scope_type
- target_scope_id
- period_type
- business_days
- slot_requirements
- person_constraints
- priority_policy
- hard_rules
- soft_rules

auto_generation_execute_confirmation_inputs:
- schedule_name
- period_start_date
- period_end_date
- generation_rule_id
- overwrite_policy

# ============================================================
# 8. CRITICAL FIXATION POINTS
# ============================================================

critical_points:
- API payloads should now follow these exact shapes
- generation remains draft-side responsibility
- notification wording starts in Japanese fixed templates
- RLS split must include generation-side files
- condition_json stays jsonb-centered initially

# ============================================================
# 9. CONCLUSION
# ============================================================

This bundled detail pack fixes the late-stage pre-implementation details
needed to move next into:
- saved exact payload spec documents
- RLS SQL draft files
- generation JSON-specific design refinement


# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200005_SHIFT_MANAGER_BUNDLED_PRE_IMPLEMENTATION_DETAIL_FIX.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200006_SHIFT_MANAGER_API_EXACT_PAYLOAD_PDF_EXTENSION.md
# ============================================================

# ============================================================
# SHIFT MANAGER API EXACT PAYLOAD PDF EXTENSION
# ============================================================

status: design-extension
type: api-exact-payload-pdf-extension
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PDF EXPORT REQUEST / RESPONSE
# ============================================================

schedule_pdf_export_request:
{
  "export_type": "draft_pdf",
  "layout_type": "weekly_a4",
  "include_memo": true
}

publication_pdf_export_request:
{
  "export_type": "publication_pdf",
  "layout_type": "weekly_a4",
  "include_memo": true
}

pdf_export_response:
{
  "ok": true,
  "data": {
    "pdf_export_id": "uuid",
    "export_type": "publication_pdf",
    "file_name": "shift_2026-04-week2.pdf",
    "storage_path": "shift-manager/pdf/2026/04/shift_2026-04-week2.pdf",
    "page_count": 2,
    "generated_at": "2026-04-10T14:00:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_pdf_export_001"
  }
}

pdf_export_detail_response:
{
  "ok": true,
  "data": {
    "pdf_export_id": "uuid",
    "schedule_id": "uuid",
    "publication_id": "uuid",
    "export_type": "publication_pdf",
    "layout_type": "weekly_a4",
    "file_name": "shift_2026-04-week2.pdf",
    "storage_path": "shift-manager/pdf/2026/04/shift_2026-04-week2.pdf",
    "page_count": 2,
    "exported_by_person_id": "uuid",
    "generated_at": "2026-04-10T14:00:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_pdf_export_detail_001"
  }
}

# ============================================================
# 2. ENUMS
# ============================================================

export_type_enum:
- draft_pdf
- publication_pdf
- personal_pdf
- department_pdf
- board_pdf

layout_type_enum:
- weekly_a4
- monthly_a4
- personal_compact
- board_a4
- board_a3

# ============================================================
# 3. IMPORTANT RULE
# ============================================================

important_rule:
Formal printable distribution should use publication_pdf.


# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200006_SHIFT_MANAGER_API_EXACT_PAYLOAD_PDF_EXTENSION.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200007_SHIFT_MANAGER_API_REQUEST_RESPONSE_EXACT_PAYLOAD_SPEC.md
# ============================================================

# ============================================================
# SHIFT MANAGER API REQUEST RESPONSE EXACT PAYLOAD SPEC
# ============================================================

status: implementation-facing-fixed-candidate
type: api-request-response-exact-payload-spec
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the exact request/response payload shapes
for the major ShiftManager APIs.

It is intended to remove ambiguity before implementation.

# ============================================================
# 2. COMMON COMPONENT REFERENCE
# ============================================================

payloads in this document are aligned to these reusable common components:
- Submission Common
- ERP Publication Capability
- App-internal Sharing Common
- External Notification Delivery Common
- Channel Routing Common
- Draft / Work-in-progress Common
- Template / Generated Output Common
- Publication / Versioned Snapshot Common
- Visibility Scope Evaluation Common
- Rule-based Draft Generation Common
- Generation Warning / Shortage Review Common
- Publish Target Confirmation Common

# ============================================================
# 3. GLOBAL RULES
# ============================================================

response_envelope:
{
  "ok": true,
  "data": {},
  "error": null,
  "meta": {
    "request_id": "req_xxx"
  }
}

error_envelope:
{
  "ok": false,
  "data": null,
  "error": {
    "code": "SHIFT_VALIDATION_ERROR",
    "message": "validation error",
    "details": {}
  },
  "meta": {
    "request_id": "req_xxx"
  }
}

global_rules:
- required fields must be present
- optional fields may be omitted
- nullable fields may be present as null
- arrays are always arrays, never object-or-array dual shape
- date = YYYY-MM-DD
- time = HH:MM:SS
- datetime = ISO-8601 with offset
- UUID fields are strings
- enum values are fixed lowercase strings unless otherwise stated
- booleans are only true/false
- list responses return items + page/page_size/total_count when pageable

# ============================================================
# 4. ENUM SETS
# ============================================================

default_home_type:
- admin_dashboard
- staff_today_shift

target_scope_type:
- team
- department
- office
- mixed

target_period_type:
- day
- week
- month

schedule_status:
- draft
- published
- superseded
- closed

generation_mode:
- manual
- auto_generated
- auto_generated_then_edited

assignment_source_type:
- manual
- auto_generated
- auto_adjusted

publication_status:
- active
- superseded
- cancelled

share_scope_type:
- person
- team
- department
- management_scope

visibility_level:
- self_only
- assigned_members
- team_visible
- department_visible
- manager_visible

share_target_type:
- person
- team
- department
- role

notification_type:
- publish
- republish
- same_day
- urgent_change

notification_delivery_status:
- queued
- sent
- failed
- read

validation_level:
- info
- warning
- high
- critical

export_mode:
- manual
- automatic

export_status:
- not_required
- pending
- exporting
- success
- failed

overwrite_policy:
- create_new_schedule
- replace_existing_draft
- merge_into_existing_draft

generation_warning_type:
- unassigned_slot
- requested_day_off_conflict
- consecutive_work_risk
- imbalance_warning
- skill_shortage
- priority_fallback

generation_warning_level:
- info
- warning
- high
- critical

pdf_export_type:
- draft_pdf
- publication_pdf
- personal_pdf
- department_pdf
- board_pdf

pdf_layout_type:
- weekly_a4
- monthly_a4
- personal_compact
- board_a4
- board_a3

# ============================================================
# 5. BOOTSTRAP
# ============================================================

endpoint:
GET /api/shift-manager/v1/bootstrap

response:
{
  "ok": true,
  "data": {
    "app_access_allowed": true,
    "person_id": "uuid",
    "company_id": "uuid",
    "roles": [
      "shift_admin"
    ],
    "default_home_type": "admin_dashboard",
    "profile": {
      "display_name": "Boss",
      "department_id": "uuid",
      "team_id": "uuid",
      "office_id": "uuid"
    },
    "capabilities": {
      "can_create_shift": true,
      "can_publish_shift": true,
      "can_manage_share": true,
      "can_export_erp": true,
      "can_auto_generate": true,
      "can_export_pdf": true
    }
  },
  "error": null,
  "meta": {
    "request_id": "req_bootstrap_001"
  }
}

# ============================================================
# 6. SCHEDULE CREATE / LIST / DETAIL
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules

request:
{
  "schedule_name": "2026-04 week2 sales",
  "target_scope_type": "department",
  "target_scope_id": "uuid",
  "target_period_type": "week",
  "period_start_date": "2026-04-06",
  "period_end_date": "2026-04-12",
  "note": "initial draft"
}

response:
{
  "ok": true,
  "data": {
    "schedule_id": "uuid",
    "status": "draft",
    "draft_version_no": 1,
    "generation_mode": "manual"
  },
  "error": null,
  "meta": {
    "request_id": "req_schedule_create_001"
  }
}

endpoint:
GET /api/shift-manager/v1/schedules

response:
{
  "ok": true,
  "data": {
    "items": [
      {
        "schedule_id": "uuid",
        "schedule_name": "2026-04 week2 sales",
        "status": "draft",
        "target_scope_type": "department",
        "target_scope_id": "uuid",
        "period_start_date": "2026-04-06",
        "period_end_date": "2026-04-12",
        "draft_version_no": 2,
        "current_publication_id": null,
        "generation_mode": "auto_generated_then_edited",
        "has_generation_warnings": true,
        "updated_at": "2026-04-10T12:00:00+09:00"
      }
    ],
    "page": 1,
    "page_size": 20,
    "total_count": 1
  },
  "error": null,
  "meta": {
    "request_id": "req_schedule_list_001"
  }
}

endpoint:
GET /api/shift-manager/v1/schedules/{schedule_id}

response:
{
  "ok": true,
  "data": {
    "schedule": {
      "schedule_id": "uuid",
      "schedule_code": "SCH-202604-001",
      "schedule_name": "2026-04 week2 sales",
      "status": "draft",
      "target_scope_type": "department",
      "target_scope_id": "uuid",
      "target_period_type": "week",
      "period_start_date": "2026-04-06",
      "period_end_date": "2026-04-12",
      "draft_version_no": 2,
      "current_publication_id": null,
      "generation_mode": "auto_generated_then_edited",
      "auto_generated_flag": true,
      "has_generation_warnings": true
    },
    "summary": {
      "assignment_count": 24,
      "member_count": 8
    }
  },
  "error": null,
  "meta": {
    "request_id": "req_schedule_detail_001"
  }
}

# ============================================================
# 7. ASSIGNMENT CREATE / UPDATE / LIST
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules/{schedule_id}/assignments

request:
{
  "person_id": "uuid",
  "shift_date": "2026-04-06",
  "start_time": "09:00:00",
  "end_time": "18:00:00",
  "role_code": "cashier",
  "office_id": "uuid",
  "department_id": "uuid",
  "team_id": "uuid",
  "memo": "front desk"
}

response:
{
  "ok": true,
  "data": {
    "assignment_id": "uuid",
    "source_type": "manual"
  },
  "error": null,
  "meta": {
    "request_id": "req_assignment_create_001"
  }
}

endpoint:
PATCH /api/shift-manager/v1/assignments/{assignment_id}

request:
{
  "start_time": "10:00:00",
  "end_time": "18:00:00",
  "role_code": "cashier",
  "office_id": "uuid",
  "department_id": "uuid",
  "team_id": "uuid",
  "memo": "updated memo"
}

response:
{
  "ok": true,
  "data": {
    "assignment_id": "uuid",
    "source_type": "auto_adjusted",
    "updated_at": "2026-04-10T12:05:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_assignment_update_001"
  }
}

endpoint:
GET /api/shift-manager/v1/schedules/{schedule_id}/assignments

response:
{
  "ok": true,
  "data": {
    "items": [
      {
        "assignment_id": "uuid",
        "schedule_id": "uuid",
        "person_id": "uuid",
        "shift_date": "2026-04-06",
        "start_time": "09:00:00",
        "end_time": "18:00:00",
        "role_code": "cashier",
        "office_id": "uuid",
        "department_id": "uuid",
        "team_id": "uuid",
        "memo": "front desk",
        "row_status": "active",
        "source_type": "auto_generated"
      }
    ]
  },
  "error": null,
  "meta": {
    "request_id": "req_assignment_list_001"
  }
}

# ============================================================
# 8. VALIDATE / PUBLISH / REPUBLISH
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules/{schedule_id}/validate-for-publication

response:
{
  "ok": true,
  "data": {
    "ready": false,
    "warnings": [
      {
        "code": "SHIFT_ASSIGNMENT_GAP",
        "message": "1 unassigned slot exists",
        "level": "warning"
      },
      {
        "code": "SHIFT_GENERATION_WARNING_EXISTS",
        "message": "auto-generation warnings remain",
        "level": "warning"
      }
    ],
    "summary": {
      "assignment_count": 24,
      "visible_member_count_estimate": 8,
      "unassigned_count": 1,
      "generation_warning_count": 2
    }
  },
  "error": null,
  "meta": {
    "request_id": "req_validate_001"
  }
}

endpoint:
POST /api/shift-manager/v1/schedules/{schedule_id}/publish

request:
{
  "publication_note": "initial publish",
  "notification_requested": true,
  "erp_export_required": true
}

response:
{
  "ok": true,
  "data": {
    "publication_id": "uuid",
    "publication_version_no": 1,
    "publication_status": "active",
    "published_at": "2026-04-10T12:30:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_publish_001"
  }
}

endpoint:
POST /api/shift-manager/v1/schedules/{schedule_id}/republish

request:
{
  "publication_note": "time change applied",
  "notification_requested": true,
  "erp_export_required": true
}

response:
{
  "ok": true,
  "data": {
    "publication_id": "uuid",
    "publication_version_no": 2,
    "publication_status": "active",
    "superseded_publication_id": "uuid"
  },
  "error": null,
  "meta": {
    "request_id": "req_republish_001"
  }
}

# ============================================================
# 9. SHARE RULE / SHARE PREVIEW
# ============================================================

endpoint:
POST /api/shift-manager/v1/share-rules

request:
{
  "rule_name": "sales dept visible",
  "scope_type": "department",
  "visibility_level": "department_visible",
  "applies_to_schedule_id": "uuid",
  "targets": [
    {
      "target_type": "department",
      "target_id": "uuid"
    }
  ]
}

response:
{
  "ok": true,
  "data": {
    "share_rule_id": "uuid",
    "active_flag": true
  },
  "error": null,
  "meta": {
    "request_id": "req_share_create_001"
  }
}

endpoint:
GET /api/shift-manager/v1/publications/{publication_id}/share-preview

response:
{
  "ok": true,
  "data": {
    "viewer_count": 15,
    "scope_breakdown": [
      {
        "scope_type": "department",
        "count": 12
      },
      {
        "scope_type": "management_scope",
        "count": 3
      }
    ],
    "sample_viewers": [
      {
        "person_id": "uuid",
        "display_name": "Boss"
      }
    ]
  },
  "error": null,
  "meta": {
    "request_id": "req_share_preview_001"
  }
}

# ============================================================
# 10. VIEWING
# ============================================================

endpoint:
GET /api/shift-manager/v1/me/shifts/today

response:
{
  "ok": true,
  "data": {
    "items": [
      {
        "publication_id": "uuid",
        "publication_assignment_id": "uuid",
        "shift_date": "2026-04-10",
        "start_time": "09:00:00",
        "end_time": "18:00:00",
        "office_name": "Tokyo Office",
        "department_name": "Sales",
        "role_code": "cashier",
        "memo": "front desk"
      }
    ]
  },
  "error": null,
  "meta": {
    "request_id": "req_my_today_001"
  }
}

endpoint:
GET /api/shift-manager/v1/me/shifts/week

response:
{
  "ok": true,
  "data": {
    "items": [
      {
        "publication_id": "uuid",
        "publication_assignment_id": "uuid",
        "shift_date": "2026-04-10",
        "start_time": "09:00:00",
        "end_time": "18:00:00",
        "office_name": "Tokyo Office",
        "department_name": "Sales",
        "role_code": "cashier",
        "memo": "front desk"
      }
    ]
  },
  "error": null,
  "meta": {
    "request_id": "req_my_week_001"
  }
}

endpoint:
GET /api/shift-manager/v1/publication-assignments/{publication_assignment_id}

response:
{
  "ok": true,
  "data": {
    "publication_assignment_id": "uuid",
    "publication_id": "uuid",
    "visible_person_id": "uuid",
    "visible_person_display_name": "Boss",
    "shift_date": "2026-04-10",
    "start_time": "09:00:00",
    "end_time": "18:00:00",
    "office_name": "Tokyo Office",
    "department_name": "Sales",
    "team_name": "Retail Team A",
    "role_code": "cashier",
    "memo": "front desk",
    "publication_version_no": 2,
    "updated_summary": "republished with time adjustment"
  },
  "error": null,
  "meta": {
    "request_id": "req_shift_detail_001"
  }
}

# ============================================================
# 11. NOTIFICATIONS
# ============================================================

endpoint:
GET /api/shift-manager/v1/me/notifications

response:
{
  "ok": true,
  "data": {
    "items": [
      {
        "notification_id": "uuid",
        "notification_type": "publish",
        "title": "シフトが公開されました",
        "body": "2026-04-13週のシフトが公開されました。内容を確認してください。",
        "delivery_status": "sent",
        "urgent_flag": false,
        "related_shift_date": "2026-04-13",
        "deep_link_path": "/me/shifts/week?week_start_date=2026-04-13",
        "queued_at": "2026-04-10T12:31:00+09:00",
        "delivered_at": "2026-04-10T12:31:03+09:00",
        "read_at": null
      }
    ],
    "page": 1,
    "page_size": 20,
    "total_count": 1
  },
  "error": null,
  "meta": {
    "request_id": "req_notification_list_001"
  }
}

endpoint:
POST /api/shift-manager/v1/me/notifications/{notification_id}/read

response:
{
  "ok": true,
  "data": {
    "notification_id": "uuid",
    "read_at": "2026-04-10T12:40:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_notification_read_001"
  }
}

# ============================================================
# 12. ERP EXPORT
# ============================================================

endpoint:
POST /api/shift-manager/v1/publications/{publication_id}/export-erp

request:
{
  "export_mode": "manual"
}

response:
{
  "ok": true,
  "data": {
    "publication_id": "uuid",
    "export_status": "pending"
  },
  "error": null,
  "meta": {
    "request_id": "req_export_erp_001"
  }
}

endpoint:
GET /api/shift-manager/v1/publications/{publication_id}/erp-linkage

response:
{
  "ok": true,
  "data": {
    "linkage_id": "uuid",
    "publication_id": "uuid",
    "schedule_id": "uuid",
    "export_status": "failed",
    "export_mode": "manual",
    "export_requested_by": "uuid",
    "export_requested_at": "2026-04-10T12:33:00+09:00",
    "exported_at": null,
    "retry_count": 1,
    "external_reference_id": null,
    "last_error_code": "SHIFT_ERP_MASTER_MISMATCH",
    "last_error_message": "department_id not found",
    "updated_at": "2026-04-10T12:34:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_erp_linkage_detail_001"
  }
}

# ============================================================
# 13. GENERATION RULE / AUTO GENERATE / RESULT / WARNINGS
# ============================================================

endpoint:
POST /api/shift-manager/v1/generation-rules

request:
{
  "rule_name": "sales weekly default",
  "target_scope_type": "department",
  "target_scope_id": "uuid",
  "period_type": "week",
  "priority_policy": "balanced_assignment",
  "condition_json": {
    "business_days": ["mon", "tue", "wed", "thu", "fri", "sat"],
    "slot_requirements": [
      {
        "slot_code": "morning",
        "start_time": "09:00:00",
        "end_time": "13:00:00",
        "required_headcount": 2,
        "required_roles": [
          {
            "role_code": "cashier",
            "count": 1
          }
        ]
      }
    ],
    "person_constraints": [
      {
        "person_id": "uuid",
        "available_weekdays": ["mon", "tue", "wed"],
        "available_time_ranges": [
          {
            "start_time": "09:00:00",
            "end_time": "18:00:00"
          }
        ],
        "requested_days_off": ["2026-04-08"],
        "blocked_dates": [],
        "max_daily_hours": 8,
        "max_weekly_assignments": 4,
        "max_consecutive_days": 3
      }
    ],
    "priority_policy": {
      "balanced_assignment": true,
      "prefer_same_role_continuity": true,
      "prefer_veteran": false,
      "prefer_low_cost": false
    },
    "hard_rules": {
      "must_respect_requested_days_off": true,
      "must_respect_max_daily_hours": true,
      "must_respect_max_consecutive_days": true
    },
    "soft_rules": {
      "prefer_balanced_distribution": true,
      "allow_priority_fallback": true,
      "warn_on_skill_shortage": true
    }
  }
}

response:
{
  "ok": true,
  "data": {
    "generation_rule_id": "uuid",
    "active_flag": true
  },
  "error": null,
  "meta": {
    "request_id": "req_generation_rule_create_001"
  }
}

endpoint:
POST /api/shift-manager/v1/schedules/auto-generate

request:
{
  "schedule_name": "2026-04 week2 sales auto",
  "target_scope_type": "department",
  "target_scope_id": "uuid",
  "target_period_type": "week",
  "period_start_date": "2026-04-06",
  "period_end_date": "2026-04-12",
  "generation_rule_id": "uuid",
  "overwrite_policy": "create_new_schedule"
}

response:
{
  "ok": true,
  "data": {
    "schedule_id": "uuid",
    "generation_result_id": "uuid",
    "generation_mode": "auto_generated",
    "generated_assignment_count": 20,
    "unassigned_count": 2,
    "warning_count": 3
  },
  "error": null,
  "meta": {
    "request_id": "req_auto_generate_001"
  }
}

endpoint:
GET /api/shift-manager/v1/schedules/{schedule_id}/generation-result

response:
{
  "ok": true,
  "data": {
    "generation_result_id": "uuid",
    "schedule_id": "uuid",
    "generation_rule_id": "uuid",
    "generated_at": "2026-04-10T13:00:00+09:00",
    "generated_assignment_count": 20,
    "unassigned_count": 2,
    "warning_count": 3,
    "result_summary": {
      "filled_slots": 20,
      "unfilled_slots": 2,
      "fallback_assignments": 1
    }
  },
  "error": null,
  "meta": {
    "request_id": "req_generation_result_001"
  }
}

endpoint:
GET /api/shift-manager/v1/schedules/{schedule_id}/generation-warnings

response:
{
  "ok": true,
  "data": {
    "items": [
      {
        "generation_warning_id": "uuid",
        "warning_type": "unassigned_slot",
        "warning_level": "high",
        "target_date": "2026-04-08",
        "target_slot": "morning",
        "related_person_id": null,
        "message": "required slot could not be fully assigned",
        "details": {
          "required_headcount": 2,
          "assigned_headcount": 1
        }
      }
    ]
  },
  "error": null,
  "meta": {
    "request_id": "req_generation_warning_list_001"
  }
}

# ============================================================
# 14. PDF EXPORT
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules/{schedule_id}/export-pdf

request:
{
  "export_type": "draft_pdf",
  "layout_type": "weekly_a4",
  "include_memo": true
}

response:
{
  "ok": true,
  "data": {
    "pdf_export_id": "uuid",
    "export_type": "draft_pdf",
    "file_name": "shift_draft_2026-04-week2.pdf",
    "storage_path": "shift-manager/pdf/2026/04/shift_draft_2026-04-week2.pdf",
    "page_count": 2,
    "generated_at": "2026-04-10T14:00:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_pdf_export_draft_001"
  }
}

endpoint:
POST /api/shift-manager/v1/publications/{publication_id}/export-pdf

request:
{
  "export_type": "publication_pdf",
  "layout_type": "weekly_a4",
  "include_memo": true
}

response:
{
  "ok": true,
  "data": {
    "pdf_export_id": "uuid",
    "export_type": "publication_pdf",
    "file_name": "shift_2026-04-week2.pdf",
    "storage_path": "shift-manager/pdf/2026/04/shift_2026-04-week2.pdf",
    "page_count": 2,
    "generated_at": "2026-04-10T14:00:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_pdf_export_pub_001"
  }
}

endpoint:
GET /api/shift-manager/v1/pdf-exports/{pdf_export_id}

response:
{
  "ok": true,
  "data": {
    "pdf_export_id": "uuid",
    "schedule_id": "uuid",
    "publication_id": "uuid",
    "export_type": "publication_pdf",
    "layout_type": "weekly_a4",
    "file_name": "shift_2026-04-week2.pdf",
    "storage_path": "shift-manager/pdf/2026/04/shift_2026-04-week2.pdf",
    "page_count": 2,
    "exported_by_person_id": "uuid",
    "generated_at": "2026-04-10T14:00:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_pdf_export_detail_001"
  }
}

# ============================================================
# 15. FIXED PAYLOAD RULE SUMMARY
# ============================================================

fixed_rules:
- no mixed snake_case and camelCase
- use snake_case everywhere
- all enums fixed to strings listed above
- list endpoints use stable item shapes
- publication APIs return publication_version_no
- generation APIs return generation_result_id where applicable
- PDF export APIs return storage metadata, not raw binary in JSON
- formal printable distribution should use publication_pdf

# ============================================================
# 16. CONCLUSION
# ============================================================

This document fixes the exact payload foundation
for the main ShiftManager API set,
including:
- draft
- publication
- share
- viewing
- notification
- ERP
- generation
- PDF export


# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200007_SHIFT_MANAGER_API_REQUEST_RESPONSE_EXACT_PAYLOAD_SPEC.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200008_SHIFT_MANAGER_AUTO_GENERATION_CONDITION_JSON_SPEC.md
# ============================================================

# ============================================================
# SHIFT MANAGER AUTO GENERATION CONDITION JSON SPEC
# ============================================================

status: implementation-facing-fixed-candidate
type: auto-generation-condition-json-spec
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the JSON structure
used for condition-based automatic draft generation in ShiftManager.

This JSON is intended to be stored in:
- shift_generation_rule.condition_json

and consumed by:
- generation rule evaluation
- draft auto-generation
- warning/shortage calculation

# ============================================================
# 2. DESIGN PRINCIPLES
# ============================================================

principles:
- generation creates draft only
- JSON should remain jsonb-centered initially
- hard rules and soft rules must be distinguishable
- shortage/warning output must be explainable from rule input
- rule structure should be stable even if internal generator changes
- missing optional arrays should be treated as empty arrays
- missing optional objects should be treated as empty objects

# ============================================================
# 3. TOP-LEVEL SHAPE
# ============================================================

top_level_shape:
{
  "business_days": [],
  "slot_requirements": [],
  "person_constraints": [],
  "priority_policy": {},
  "hard_rules": {},
  "soft_rules": {}
}

top_level_keys:
business_days:
- type: array[string]
- required: false
- default: []

slot_requirements:
- type: array[object]
- required: true
- minimum_items: 1

person_constraints:
- type: array[object]
- required: false
- default: []

priority_policy:
- type: object
- required: false
- default: {}

hard_rules:
- type: object
- required: false
- default: {}

soft_rules:
- type: object
- required: false
- default: {}

# ============================================================
# 4. BUSINESS_DAYS
# ============================================================

business_days_allowed_values:
- mon
- tue
- wed
- thu
- fri
- sat
- sun

example:
[
  "mon",
  "tue",
  "wed",
  "thu",
  "fri"
]

meaning:
Defines which weekdays are considered valid assignment generation days
for the target period.

# ============================================================
# 5. SLOT_REQUIREMENTS
# ============================================================

slot_requirement_shape:
{
  "slot_code": "morning",
  "start_time": "09:00:00",
  "end_time": "13:00:00",
  "required_headcount": 2,
  "required_roles": [
    {
      "role_code": "cashier",
      "count": 1
    }
  ]
}

slot_requirement_fields:
slot_code:
- type: string
- required: true
- example: morning

start_time:
- type: string
- required: true
- format: HH:MM:SS

end_time:
- type: string
- required: true
- format: HH:MM:SS

required_headcount:
- type: integer
- required: true
- min: 1

required_roles:
- type: array[object]
- required: false
- default: []

required_role_shape:
{
  "role_code": "cashier",
  "count": 1
}

required_role_fields:
role_code:
- type: string
- required: true

count:
- type: integer
- required: true
- min: 1

full_example:
[
  {
    "slot_code": "morning",
    "start_time": "09:00:00",
    "end_time": "13:00:00",
    "required_headcount": 2,
    "required_roles": [
      {
        "role_code": "cashier",
        "count": 1
      }
    ]
  },
  {
    "slot_code": "afternoon",
    "start_time": "13:00:00",
    "end_time": "18:00:00",
    "required_headcount": 3,
    "required_roles": [
      {
        "role_code": "cashier",
        "count": 1
      },
      {
        "role_code": "leader",
        "count": 1
      }
    ]
  }
]

# ============================================================
# 6. PERSON_CONSTRAINTS
# ============================================================

person_constraint_shape:
{
  "person_id": "uuid",
  "available_weekdays": ["mon", "tue", "wed"],
  "available_time_ranges": [
    {
      "start_time": "09:00:00",
      "end_time": "18:00:00"
    }
  ],
  "requested_days_off": ["2026-04-08"],
  "blocked_dates": [],
  "max_daily_hours": 8,
  "max_weekly_assignments": 4,
  "max_consecutive_days": 3
}

person_constraint_fields:
person_id:
- type: string
- required: true
- format: uuid

available_weekdays:
- type: array[string]
- required: false
- default: []

available_time_ranges:
- type: array[object]
- required: false
- default: []

available_time_range_shape:
{
  "start_time": "09:00:00",
  "end_time": "18:00:00"
}

requested_days_off:
- type: array[string]
- required: false
- default: []
- format: YYYY-MM-DD

blocked_dates:
- type: array[string]
- required: false
- default: []
- format: YYYY-MM-DD

max_daily_hours:
- type: integer
- required: false
- min: 1

max_weekly_assignments:
- type: integer
- required: false
- min: 1

max_consecutive_days:
- type: integer
- required: false
- min: 1

full_example:
[
  {
    "person_id": "uuid-1",
    "available_weekdays": ["mon", "tue", "wed"],
    "available_time_ranges": [
      {
        "start_time": "09:00:00",
        "end_time": "18:00:00"
      }
    ],
    "requested_days_off": ["2026-04-08"],
    "blocked_dates": [],
    "max_daily_hours": 8,
    "max_weekly_assignments": 4,
    "max_consecutive_days": 3
  },
  {
    "person_id": "uuid-2",
    "available_weekdays": ["thu", "fri", "sat"],
    "available_time_ranges": [
      {
        "start_time": "10:00:00",
        "end_time": "19:00:00"
      }
    ],
    "requested_days_off": [],
    "blocked_dates": ["2026-04-11"],
    "max_daily_hours": 8,
    "max_weekly_assignments": 5,
    "max_consecutive_days": 4
  }
]

# ============================================================
# 7. PRIORITY_POLICY
# ============================================================

priority_policy_shape:
{
  "balanced_assignment": true,
  "prefer_same_role_continuity": true,
  "prefer_veteran": false,
  "prefer_low_cost": false
}

priority_policy_fields:
balanced_assignment:
- type: boolean
- required: false
- default: false

prefer_same_role_continuity:
- type: boolean
- required: false
- default: false

prefer_veteran:
- type: boolean
- required: false
- default: false

prefer_low_cost:
- type: boolean
- required: false
- default: false

meaning:
These settings influence tie-break and soft selection behavior,
not absolute hard blocking behavior.

# ============================================================
# 8. HARD_RULES
# ============================================================

hard_rules_shape:
{
  "must_respect_requested_days_off": true,
  "must_respect_max_daily_hours": true,
  "must_respect_max_consecutive_days": true
}

hard_rules_fields:
must_respect_requested_days_off:
- type: boolean
- required: false
- default: true

must_respect_max_daily_hours:
- type: boolean
- required: false
- default: true

must_respect_max_consecutive_days:
- type: boolean
- required: false
- default: true

meaning:
Violating a hard rule should block assignment
or create explicit unassigned outcome rather than silent fallback.

# ============================================================
# 9. SOFT_RULES
# ============================================================

soft_rules_shape:
{
  "prefer_balanced_distribution": true,
  "allow_priority_fallback": true,
  "warn_on_skill_shortage": true
}

soft_rules_fields:
prefer_balanced_distribution:
- type: boolean
- required: false
- default: false

allow_priority_fallback:
- type: boolean
- required: false
- default: true

warn_on_skill_shortage:
- type: boolean
- required: false
- default: true

meaning:
Violating a soft rule may still allow assignment,
but should produce warning or lower-priority result.

# ============================================================
# 10. COMPLETE EXAMPLE
# ============================================================

complete_example:
{
  "business_days": ["mon", "tue", "wed", "thu", "fri", "sat"],
  "slot_requirements": [
    {
      "slot_code": "morning",
      "start_time": "09:00:00",
      "end_time": "13:00:00",
      "required_headcount": 2,
      "required_roles": [
        {
          "role_code": "cashier",
          "count": 1
        }
      ]
    },
    {
      "slot_code": "afternoon",
      "start_time": "13:00:00",
      "end_time": "18:00:00",
      "required_headcount": 3,
      "required_roles": [
        {
          "role_code": "cashier",
          "count": 1
        },
        {
          "role_code": "leader",
          "count": 1
        }
      ]
    }
  ],
  "person_constraints": [
    {
      "person_id": "uuid-1",
      "available_weekdays": ["mon", "tue", "wed"],
      "available_time_ranges": [
        {
          "start_time": "09:00:00",
          "end_time": "18:00:00"
        }
      ],
      "requested_days_off": ["2026-04-08"],
      "blocked_dates": [],
      "max_daily_hours": 8,
      "max_weekly_assignments": 4,
      "max_consecutive_days": 3
    }
  ],
  "priority_policy": {
    "balanced_assignment": true,
    "prefer_same_role_continuity": true,
    "prefer_veteran": false,
    "prefer_low_cost": false
  },
  "hard_rules": {
    "must_respect_requested_days_off": true,
    "must_respect_max_daily_hours": true,
    "must_respect_max_consecutive_days": true
  },
  "soft_rules": {
    "prefer_balanced_distribution": true,
    "allow_priority_fallback": true,
    "warn_on_skill_shortage": true
  }
}

# ============================================================
# 11. VALIDATION RULES
# ============================================================

validation_rules:
- slot_requirements must have at least 1 item
- each slot_requirement.start_time must be < end_time
- required_headcount must be >= 1
- required_roles.count must be >= 1
- available_time_ranges.start_time must be < end_time
- max_daily_hours / max_weekly_assignments / max_consecutive_days must be positive integers
- business_days values must be from allowed weekday enum
- requested_days_off and blocked_dates must be valid dates
- duplicate person_id entries should be rejected or normalized before save

# ============================================================
# 12. WARNING MAPPING DIRECTION
# ============================================================

typical_warning_mapping:
unassigned_slot:
- slot requirement could not be filled

requested_day_off_conflict:
- only possible when fallback or rule relaxation is allowed

consecutive_work_risk:
- generated assignment approaches or exceeds preferred continuity limit

imbalance_warning:
- distribution is significantly uneven

skill_shortage:
- role/skill demand could not be perfectly satisfied

priority_fallback:
- lower-priority rule path was used to complete assignment

# ============================================================
# 13. STORAGE / EVOLUTION POLICY
# ============================================================

storage_policy:
- store exact JSON in shift_generation_rule.condition_json
- preserve original rule JSON for auditability
- do not silently rewrite user intent fields
- future fields may be added additively
- unknown fields should be rejected or explicitly ignored by versioned parser policy

evolution_policy:
- additive extension preferred
- no destructive shape changes without version note
- internal generator may evolve without changing stable external JSON names

# ============================================================
# 14. CONCLUSION
# ============================================================

This document fixes the stable JSON foundation
for ShiftManager automatic draft generation rules.

It is intended to keep:
- payload design
- database storage
- generation logic input
- warning/result explainability

aligned before implementation.


# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200008_SHIFT_MANAGER_AUTO_GENERATION_CONDITION_JSON_SPEC.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200009_SHIFT_MANAGER_GENERATION_ALGORITHM_REFINEMENT.md
# ============================================================

# ============================================================
# SHIFT MANAGER GENERATION ALGORITHM REFINEMENT
# ============================================================

status: implementation-facing-generation-refinement
type: generation-algorithm-refinement
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the initial practical generation algorithm direction
for condition-based automatic draft generation in ShiftManager.

It is not a final optimization engine.
It is the first implementation-ready generation strategy.

# ============================================================
# 2. CORE PRINCIPLES
# ============================================================

core_principles:
- auto generation creates draft only
- generation may succeed even with shortages
- hard rules must not be violated
- soft rules may be relaxed with warnings
- explainability is preferred over opaque optimization
- the output should remain easy for humans to fix afterward

# ============================================================
# 3. INITIAL ALGORITHM TYPE
# ============================================================

initial_algorithm_type:
- staged scoring approach

basic_flow:
1. expand target dates
2. expand slot_requirements
3. collect candidate persons
4. eliminate by hard rules
5. score by soft rules and priority policy
6. assign highest candidates
7. record shortages and warnings
8. save draft assignments

reason:
This is easier to implement and easier to explain
than a strict optimization solver in the first phase.

# ============================================================
# 4. PROCESSING UNIT
# ============================================================

processing_unit:
- one date x one slot

examples:
- 2026-04-08 x morning
- 2026-04-08 x afternoon

meaning:
Each slot is evaluated independently first,
while still referencing already-assigned results
for balancing and continuity checks.

# ============================================================
# 5. CANDIDATE COLLECTION
# ============================================================

candidate_conditions:
- same company
- inside target scope
- weekday matches available_weekdays
- time range matches available_time_ranges
- not in blocked_dates
- not excluded by hard rules

candidate_result:
People who fail these checks are removed
before scoring begins.

# ============================================================
# 6. HARD RULE EVALUATION
# ============================================================

hard_rules:
- respect requested_days_off
- do not exceed max_daily_hours
- do not exceed max_consecutive_days
- do not allow overlapping work in same time
- do not allow invalid time ranges

hard_rule_result:
If a person violates a hard rule,
they must not be assigned.

# ============================================================
# 7. SOFT RULE / SCORE EVALUATION
# ============================================================

scoring_direction:
Candidates that pass hard rules receive scores.

initial_score_direction:
- start from base score
- add or subtract by policy and current draft context

example_score_factors:
positive:
- fewer weekly assignments: +10
- same role continuity: +8
- veteran preference: +5
- lower cost preference: +3

negative:
- too many recent assignments: -10
- continuity risk increase: -15
- imperfect skill/role fit: -20
- imbalance increase: -10

important_note:
Exact score values may be tuned later,
but the factor categories should remain stable.

# ============================================================
# 8. REQUIRED ROLE FIRST-FILL RULE
# ============================================================

required_role_handling:
If slot_requirements.required_roles exist,
required role positions must be filled first.

example:
required_headcount = 3
required_roles:
- cashier = 1
- leader = 1

recommended_order:
1. fill cashier requirement
2. fill leader requirement
3. fill remaining general headcount

reason:
This prevents general assignment from consuming
people needed for mandatory role slots.

# ============================================================
# 9. SLOT PRIORITY ORDER
# ============================================================

recommended_slot_priority:
1. slots with more required_roles
2. slots with larger required_headcount
3. slots with fewer available candidates
4. the rest

meaning:
Harder slots should be filled first.

# ============================================================
# 10. CONTINUITY / BALANCE CONTROL
# ============================================================

balance_control_inputs:
- current weekly assignment count
- recent consecutive work days
- already assigned work in same day
- prior use inside current generation run

recommended_behavior:
Apply negative score pressure
to people who are already used too much,
so the result becomes easier to operate and fairer.

# ============================================================
# 11. FALLBACK POLICY
# ============================================================

fallback_policy:
- hard rules remain absolute
- soft rules may be relaxed
- when relaxed, warnings must be created

typical_fallback_warnings:
- priority_fallback
- skill_shortage
- imbalance_warning

reason:
Partial useful output is better than silent failure,
as long as the user can review and fix it.

# ============================================================
# 12. UNASSIGNED POLICY
# ============================================================

unassigned_policy:
If a slot cannot be safely filled,
it should remain unassigned.

required_behavior:
- do not force unsafe assignment
- create unassigned_slot warning
- preserve shortage for review screen
- let human fix it afterward

# ============================================================
# 13. GENERATION RESULT CREATION
# ============================================================

required_result_outputs:
- generated_assignment_count
- unassigned_count
- warning_count
- result_summary_json

recommended_result_summary_fields:
- filled_slots
- unfilled_slots
- fallback_assignments
- role_shortage_count

meaning:
Generation should always leave an explainable summary.

# ============================================================
# 14. WARNING CREATION
# ============================================================

warning_creation_policy:
Warnings should be recorded during generation,
not reconstructed only later.

initial_warning_types:
- unassigned_slot
- requested_day_off_conflict
- consecutive_work_risk
- imbalance_warning
- skill_shortage
- priority_fallback

recommended_initial_rule:
One event may produce one warning row.
Do not over-compress warning logic in phase one.

# ============================================================
# 15. OVERWRITE POLICY IMPLEMENTATION DIRECTION
# ============================================================

create_new_schedule:
- create a new schedule
- safest mode

replace_existing_draft:
- replace existing draft assignments
- do not touch publication state

merge_into_existing_draft:
- merge into existing draft
- most complex mode

recommended_phase_order:
phase_1_supported:
- create_new_schedule
- replace_existing_draft

later_phase:
- merge_into_existing_draft

# ============================================================
# 16. INITIAL NON-GOALS
# ============================================================

initial_non_goals:
- global optimization solver
- exact cost minimization solver
- cross-department enterprise-wide optimization
- machine learning based assignment
- advanced merge conflict resolution

meaning:
The first implementation should stay practical and explainable.

# ============================================================
# 17. PSEUDO FLOW
# ============================================================

pseudo_flow:
target_period_expand
-> business_days_filter
-> slot_requirements_expand
-> sort_harder_slots_first
-> collect_candidates_per_slot
-> hard_rule_elimination
-> required_roles_fill_first
-> score_remaining_candidates
-> assign_best_candidates
-> if fallback_used then create_warning
-> if still unfilled then create_unassigned_warning
-> save_shift_assignment_rows
-> save_generation_result
-> save_generation_warning_rows

# ============================================================
# 18. CRITICAL FIXATION POINTS
# ============================================================

critical_points:
- phase one uses staged scoring
- hard rules are absolute
- soft rules may relax with warnings
- required roles are filled first
- harder slots are processed first
- shortages remain visible
- merge mode may be delayed to a later phase

# ============================================================
# 19. CONCLUSION
# ============================================================

The initial ShiftManager generation algorithm should prioritize:
- safety
- explainability
- reviewability
- ease of human correction

It should not attempt perfect optimization first.
It should produce a practical draft
that managers can trust and refine.


# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200009_SHIFT_MANAGER_GENERATION_ALGORITHM_REFINEMENT.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200010_SHIFT_MANAGER_ENDPOINT_VALIDATION_MATRIX.md
# ============================================================

# ============================================================
# SHIFT MANAGER ENDPOINT VALIDATION MATRIX
# ============================================================

status: implementation-facing-validation-candidate
type: endpoint-validation-matrix
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes validation expectations
for each major ShiftManager endpoint.

The goal is to make explicit:
- required inputs
- optional inputs
- enum checks
- main validation rules
- major error categories

# ============================================================
# 2. BOOTSTRAP
# ============================================================

endpoint:
GET /api/shift-manager/v1/bootstrap

input:
- none

validation:
- authenticated context must exist
- app access decision must be resolvable
- role context must be resolvable

major_errors:
- unauthenticated
- app_access_denied
- role_context_missing

# ============================================================
# 3. SCHEDULE CREATE
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules

required_inputs:
- schedule_name: string
- target_scope_type: enum
- target_period_type: enum
- period_start_date: date
- period_end_date: date

optional_inputs:
- target_scope_id: uuid|null
- note: string|null

enum_checks:
target_scope_type:
- team
- department
- office
- mixed

target_period_type:
- day
- week
- month

validation:
- schedule_name must not be empty
- period_start_date must be <= period_end_date
- target_scope_type must be valid enum
- target_period_type must be valid enum
- target_scope_id may be required depending on scope type
- generated schedule_code must remain unique inside company

major_errors:
- invalid_scope_type
- invalid_period_type
- invalid_period_range
- missing_target_scope_id
- duplicate_schedule_code

# ============================================================
# 4. SCHEDULE LIST / DETAIL
# ============================================================

endpoint_list:
GET /api/shift-manager/v1/schedules

endpoint_detail:
GET /api/shift-manager/v1/schedules/{schedule_id}

validation:
- schedule_id must be valid uuid
- schedule must exist
- caller must have schedule visibility

major_errors:
- invalid_schedule_id
- schedule_not_found
- schedule_access_denied

# ============================================================
# 5. ASSIGNMENT CREATE
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules/{schedule_id}/assignments

required_inputs:
- person_id: uuid
- shift_date: date
- start_time: time
- end_time: time

optional_inputs:
- role_code: string|null
- office_id: uuid|null
- department_id: uuid|null
- team_id: uuid|null
- memo: string|null

validation:
- parent schedule must exist
- parent schedule must be draft
- person_id must be valid
- start_time must be < end_time
- shift_date must be inside schedule period
- caller must have assignment edit authority
- overlapping assignment policy must be checked

major_errors:
- schedule_not_found
- schedule_not_draft
- invalid_person_id
- invalid_time_range
- shift_date_out_of_period
- assignment_overlap
- assignment_edit_denied

# ============================================================
# 6. ASSIGNMENT UPDATE
# ============================================================

endpoint:
PATCH /api/shift-manager/v1/assignments/{assignment_id}

optional_inputs:
- start_time
- end_time
- role_code
- office_id
- department_id
- team_id
- memo

validation:
- assignment must exist
- parent schedule must still be draft
- updated start_time must be < end_time
- updated assignment must remain inside schedule period
- caller must have assignment edit authority

major_errors:
- assignment_not_found
- schedule_not_draft
- invalid_time_range
- shift_date_out_of_period
- assignment_edit_denied

# ============================================================
# 7. VALIDATE FOR PUBLICATION
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules/{schedule_id}/validate-for-publication

validation:
- schedule must exist
- schedule must be draft
- caller must have validation authority
- unassigned slot count must be calculable
- generation warning count must be calculable
- visibility estimate must be calculable

major_errors:
- schedule_not_found
- schedule_not_draft
- validation_execution_denied
- visibility_estimation_failed

# ============================================================
# 8. PUBLISH
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules/{schedule_id}/publish

optional_inputs:
- publication_note: string|null
- notification_requested: boolean
- erp_export_required: boolean

validation:
- schedule must exist
- schedule must be draft
- caller must have publish authority
- validation readiness must be acceptable
- publication version number must be issuable
- publication snapshot must be creatable

major_errors:
- schedule_not_found
- schedule_not_draft
- publish_denied
- validation_not_ready
- publication_snapshot_failed
- publication_version_conflict

# ============================================================
# 9. REPUBLISH
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules/{schedule_id}/republish

optional_inputs:
- publication_note: string|null
- notification_requested: boolean
- erp_export_required: boolean

validation:
- schedule must exist
- caller must have republish authority
- active publication must exist
- new publication snapshot must be creatable
- previous active publication must be supersedable

major_errors:
- schedule_not_found
- republish_denied
- active_publication_not_found
- publication_snapshot_failed
- supersede_failed

# ============================================================
# 10. SHARE RULE CREATE
# ============================================================

endpoint:
POST /api/shift-manager/v1/share-rules

required_inputs:
- rule_name: string
- scope_type: enum
- visibility_level: enum
- applies_to_schedule_id: uuid
- targets: array

required_target_item_fields:
- target_type: enum
- target_id: uuid

enum_checks:
scope_type:
- person
- team
- department
- management_scope

visibility_level:
- self_only
- assigned_members
- team_visible
- department_visible
- manager_visible

target_type:
- person
- team
- department
- role

validation:
- rule_name must not be empty
- targets must contain at least 1 item
- caller must have share-management authority
- applies_to_schedule_id must exist
- each target_type must be valid
- each target_id must be valid in company context

major_errors:
- share_rule_invalid
- empty_targets
- share_manage_denied
- invalid_target_type
- invalid_target_id
- cross_company_target_denied

# ============================================================
# 11. SHARE PREVIEW
# ============================================================

endpoint:
GET /api/shift-manager/v1/publications/{publication_id}/share-preview

validation:
- publication must exist
- caller must have share preview authority
- visibility evaluation must be executable

major_errors:
- publication_not_found
- share_preview_denied
- visibility_evaluation_failed

# ============================================================
# 12. VIEWING: TODAY / WEEK
# ============================================================

endpoint_today:
GET /api/shift-manager/v1/me/shifts/today

endpoint_week:
GET /api/shift-manager/v1/me/shifts/week

validation:
- current person context must exist
- only visible publication-based assignments may be returned
- week filter, if present, must be valid

major_errors:
- person_context_missing
- visibility_context_missing
- invalid_week_start_date

# ============================================================
# 13. PUBLICATION ASSIGNMENT DETAIL
# ============================================================

endpoint:
GET /api/shift-manager/v1/publication-assignments/{publication_assignment_id}

validation:
- publication_assignment_id must be valid
- publication assignment must exist
- publication must be visible
- visible person in publication must be visible to caller

major_errors:
- publication_assignment_not_found
- publication_access_denied
- person_visibility_denied

# ============================================================
# 14. NOTIFICATION LIST / READ
# ============================================================

endpoint_list:
GET /api/shift-manager/v1/me/notifications

endpoint_read:
POST /api/shift-manager/v1/me/notifications/{notification_id}/read

validation:
- notification must exist
- target_person_id must match current person or allowed manager exception
- read update must be allowed

major_errors:
- notification_not_found
- notification_access_denied
- notification_update_denied

# ============================================================
# 15. ERP EXPORT
# ============================================================

endpoint:
POST /api/shift-manager/v1/publications/{publication_id}/export-erp

required_inputs:
- export_mode: enum

enum_checks:
export_mode:
- manual
- automatic

validation:
- publication must exist
- publication must be active
- caller must have ERP export authority
- export_mode must be valid
- duplicate active export must be prevented
- publication-based ERP payload must be buildable

major_errors:
- publication_not_found
- publication_not_active
- erp_export_denied
- invalid_export_mode
- duplicate_export_request
- erp_payload_build_failed

# ============================================================
# 16. ERP LINKAGE DETAIL
# ============================================================

endpoint:
GET /api/shift-manager/v1/publications/{publication_id}/erp-linkage

validation:
- publication must exist
- caller must have ERP linkage visibility

major_errors:
- publication_not_found
- erp_linkage_access_denied
- linkage_state_not_found

# ============================================================
# 17. GENERATION RULE CREATE
# ============================================================

endpoint:
POST /api/shift-manager/v1/generation-rules

required_inputs:
- rule_name: string
- target_scope_type: enum
- period_type: enum
- condition_json: object

optional_inputs:
- target_scope_id: uuid|null
- priority_policy: string|null

enum_checks:
target_scope_type:
- team
- department
- office
- mixed

period_type:
- day
- week
- month

validation:
- rule_name must not be empty
- condition_json must be object
- slot_requirements must contain at least 1 item
- slot start_time must be < end_time
- required_headcount must be >= 1
- weekdays must be from allowed enum
- caller must have generation rule management authority

major_errors:
- invalid_generation_rule
- invalid_condition_json
- empty_slot_requirements
- invalid_weekday
- invalid_slot_time
- generation_rule_manage_denied

# ============================================================
# 18. AUTO GENERATE
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules/auto-generate

required_inputs:
- schedule_name: string
- target_scope_type: enum
- target_period_type: enum
- period_start_date: date
- period_end_date: date
- generation_rule_id: uuid
- overwrite_policy: enum

optional_inputs:
- target_scope_id: uuid|null

enum_checks:
overwrite_policy:
- create_new_schedule
- replace_existing_draft
- merge_into_existing_draft

validation:
- generation_rule must exist
- caller must have auto-generate authority
- period must be valid
- rule scope and request scope must be compatible
- overwrite_policy must be valid
- draft generation must be executable
- generation warnings must be creatable

major_errors:
- generation_rule_not_found
- auto_generate_denied
- invalid_period_range
- scope_rule_mismatch
- invalid_overwrite_policy
- draft_generation_failed

# ============================================================
# 19. GENERATION RESULT / WARNINGS
# ============================================================

endpoint_result:
GET /api/shift-manager/v1/schedules/{schedule_id}/generation-result

endpoint_warnings:
GET /api/shift-manager/v1/schedules/{schedule_id}/generation-warnings

validation:
- schedule must exist
- generation_result must exist
- caller must have generation visibility

major_errors:
- schedule_not_found
- generation_result_not_found
- generation_result_access_denied

# ============================================================
# 20. PDF EXPORT
# ============================================================

endpoint_draft:
POST /api/shift-manager/v1/schedules/{schedule_id}/export-pdf

endpoint_publication:
POST /api/shift-manager/v1/publications/{publication_id}/export-pdf

required_inputs:
- export_type: enum
- layout_type: enum

optional_inputs:
- include_memo: boolean

enum_checks:
export_type:
- draft_pdf
- publication_pdf
- personal_pdf
- department_pdf
- board_pdf

layout_type:
- weekly_a4
- monthly_a4
- personal_compact
- board_a4
- board_a3

validation:
- target schedule/publication must exist
- export_type must be compatible with target type
- draft_pdf must use draft basis
- publication_pdf must use publication basis
- caller must have printable export authority
- layout_type must be valid
- PDF render must succeed
- export history save must succeed

major_errors:
- pdf_target_not_found
- invalid_export_type
- invalid_layout_type
- export_target_mismatch
- pdf_export_denied
- pdf_render_failed
- pdf_history_save_failed

# ============================================================
# 21. FIXED VALIDATION PRIORITIES
# ============================================================

fixed_priorities:
- publish depends on validation readiness
- generation depends heavily on condition_json validity
- share depends heavily on target/company integrity
- ERP export depends on active publication
- PDF export depends on target/export_type compatibility

# ============================================================
# 22. CONCLUSION
# ============================================================

This document fixes:
- required inputs
- optional inputs
- enum checks
- main validation rules
- major error categories

for the major ShiftManager endpoints before implementation.


# SHIFT_MANAGER_SUBSCRIPTION_VALIDATION_EXTENSION_BEGIN
# ============================================================
# 23. SUBSCRIPTION / FEATURE GATE VALIDATION EXTENSION
# ============================================================

common_subscription_checks_for_mutation_endpoints:
- site license must be resolvable
- site subscription status must be resolvable
- requested feature must be allowed by feature gate
- inactive state must block mutation/management endpoints before business execution

recommended_subscription_error_codes:
- SITE_LICENSE_NOT_FOUND
- SITE_SUBSCRIPTION_STATE_NOT_RESOLVED
- SUBSCRIPTION_TRIAL_EXPIRED
- SUBSCRIPTION_INACTIVE_READ_ONLY
- FEATURE_GATE_BLOCKED

affected_endpoint_groups:
- schedule create/update
- assignment create/update
- auto generation
- publish / republish
- share management
- PDF export
- ERP export
- generation rule management

viewing_endpoints_rule:
Viewing endpoints remain available in inactive state,
but still require normal role / visibility checks.

# SHIFT_MANAGER_SUBSCRIPTION_VALIDATION_EXTENSION_END

# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200010_SHIFT_MANAGER_ENDPOINT_VALIDATION_MATRIX.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200011_SHIFT_MANAGER_SUBSCRIPTION_API_AND_FEATURE_GATE_SPEC.md
# ============================================================

# ============================================================
# SHIFT MANAGER SUBSCRIPTION API AND FEATURE GATE SPEC
# ============================================================

status: implementation-facing-fixed-candidate
type: subscription-api-and-feature-gate-spec
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the API-facing subscription and feature-gate behavior
for site-based licensing.

# ============================================================
# 2. BOOTSTRAP ADDITION
# ============================================================

bootstrap_response_addition:
{
  "subscription": {
    "site_license_id": "uuid",
    "site_id": "uuid",
    "subscription_status": "trial",
    "trial_ends_at": "2026-04-13T10:00:00+09:00",
    "grace_ends_at": null,
    "read_only_mode": false
  },
  "feature_gate": {
    "view_self_shift": true,
    "view_visible_publication": true,
    "create_schedule": true,
    "edit_schedule": true,
    "run_auto_generation": true,
    "publish_schedule": true,
    "republish_schedule": true,
    "manage_share_rule": true,
    "export_pdf": true,
    "export_erp": true,
    "manage_generation_rule": true
  }
}

# ============================================================
# 3. RECOMMENDED SUBSCRIPTION ENDPOINTS
# ============================================================

endpoints:
- GET /api/shift-manager/v1/subscription/status
- GET /api/shift-manager/v1/subscription/feature-gate
- GET /api/shift-manager/v1/subscription/trial-summary

# ============================================================
# 4. SUBSCRIPTION STATUS RESPONSE
# ============================================================

endpoint:
GET /api/shift-manager/v1/subscription/status

response:
{
  "ok": true,
  "data": {
    "site_license_id": "uuid",
    "site_id": "uuid",
    "subscription_status": "inactive",
    "trial_started_at": "2026-04-10T10:00:00+09:00",
    "trial_ends_at": "2026-04-13T10:00:00+09:00",
    "active_started_at": null,
    "grace_started_at": null,
    "grace_ends_at": null,
    "inactive_started_at": "2026-04-13T10:00:01+09:00",
    "read_only_mode": true
  },
  "error": null,
  "meta": {
    "request_id": "req_subscription_status_001"
  }
}

# ============================================================
# 5. FEATURE GATE RESPONSE
# ============================================================

endpoint:
GET /api/shift-manager/v1/subscription/feature-gate

response:
{
  "ok": true,
  "data": {
    "subscription_status": "inactive",
    "feature_gate": {
      "view_self_shift": true,
      "view_visible_publication": true,
      "create_schedule": false,
      "edit_schedule": false,
      "run_auto_generation": false,
      "publish_schedule": false,
      "republish_schedule": false,
      "manage_share_rule": false,
      "export_pdf": false,
      "export_erp": false,
      "manage_generation_rule": false
    }
  },
  "error": null,
  "meta": {
    "request_id": "req_feature_gate_001"
  }
}

# ============================================================
# 6. TRIAL SUMMARY RESPONSE
# ============================================================

endpoint:
GET /api/shift-manager/v1/subscription/trial-summary

response:
{
  "ok": true,
  "data": {
    "subscription_status": "trial",
    "trial_started_at": "2026-04-10T10:00:00+09:00",
    "trial_ends_at": "2026-04-13T10:00:00+09:00",
    "remaining_seconds": 86400,
    "recommended_action": "start_paid_subscription"
  },
  "error": null,
  "meta": {
    "request_id": "req_trial_summary_001"
  }
}

# ============================================================
# 7. FEATURE GATE ENFORCEMENT RULE
# ============================================================

feature_gate_enforcement_rule:
Every write/management endpoint should evaluate:
1. site subscription state
2. feature code gate
3. normal role/visibility authorization

read_only_rule:
Inactive state should block management/write endpoints
before deeper business execution.

# ============================================================
# 8. ENDPOINT MAPPING
# ============================================================

endpoint_to_feature_code_mapping:
- POST /schedules -> create_schedule
- PATCH /assignments/{assignment_id} -> edit_schedule
- POST /schedules/auto-generate -> run_auto_generation
- POST /schedules/{schedule_id}/publish -> publish_schedule
- POST /schedules/{schedule_id}/republish -> republish_schedule
- POST /share-rules -> manage_share_rule
- POST /publications/{publication_id}/export-erp -> export_erp
- POST /schedules/{schedule_id}/export-pdf -> export_pdf
- POST /publications/{publication_id}/export-pdf -> export_pdf
- POST /generation-rules -> manage_generation_rule

# ============================================================
# 9. ERROR DIRECTION
# ============================================================

recommended_error_codes:
- SUBSCRIPTION_INACTIVE_READ_ONLY
- SUBSCRIPTION_TRIAL_EXPIRED
- FEATURE_GATE_BLOCKED
- SITE_LICENSE_NOT_FOUND
- SITE_SUBSCRIPTION_STATE_NOT_RESOLVED

# ============================================================
# 10. CONCLUSION
# ============================================================

ShiftManager should expose subscription state clearly to the client,
and should enforce feature gates consistently
before business mutation endpoints execute.


# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200011_SHIFT_MANAGER_SUBSCRIPTION_API_AND_FEATURE_GATE_SPEC.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200012_SHIFT_MANAGER_COMPETITOR_ANALYSIS_AND_ADDITIONAL_FEATURE_PROPOSAL.md
# ============================================================

# ============================================================
# SHIFT MANAGER COMPETITOR ANALYSIS AND ADDITIONAL FEATURE PROPOSAL
# ============================================================

status: implementation-facing-proposal
type: competitor-analysis-and-additional-feature-proposal
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document records the additional features
adopted to strengthen ShiftManager competitively.

# ============================================================
# 2. ADOPTED ADDITIONS
# ============================================================

adopted_additions:
- headquarters site management dashboard
- shortage / difference / unconfirmed visualization
- requested day-off submission
- change confirmation flag
- lightweight multi-site analytics
- scheduled automatic draft generation

future_candidates:
- shift exchange request
- support request

# ============================================================
# 3. STRATEGIC FIT
# ============================================================

strategic_fit:
These additions strengthen ShiftManager
without abandoning its core strengths:
- simple fixed site-based pricing
- unlimited users inside site
- PC/smartphone same core features
- controlled publication model
- practical field-operation usability

# ============================================================
# 4. TIMER SCHEDULE SETTINGS
# ============================================================

timer_setting_examples:
weekly:
- every Wednesday at 18:00
- generate next week draft

monthly_fixed_day:
- every month on day 25 at 10:00
- generate next month draft

monthly_last_day:
- every last day of month at 17:00
- generate next month draft

important_rule:
Timer-based generation creates draft only.

# ============================================================
# 5. CONCLUSION
# ============================================================

These additions should be treated as adopted extensions,
not loose optional ideas,
except for exchange/support which remain future candidates.


# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200012_SHIFT_MANAGER_COMPETITOR_ANALYSIS_AND_ADDITIONAL_FEATURE_PROPOSAL.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200013_SHIFT_MANAGER_MULTILINGUAL_SUPPORT_IMPLEMENTATION_NOTE.md
# ============================================================

# ============================================================
# SHIFT MANAGER MULTILINGUAL SUPPORT IMPLEMENTATION NOTE
# ============================================================

status: implementation-facing-fixed-candidate
type: multilingual-support-implementation-note
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This note fixes the implementation-facing multilingual principles
for ShiftManager.

# ============================================================
# 2. IMPLEMENTATION PRINCIPLES
# ============================================================

implementation_principles:
- keep API keys fixed
- keep DTO field names fixed
- keep DB/internal enums fixed
- localize only display/output layer
- resolve language before UI render and message render

# ============================================================
# 3. RECOMMENDED LANGUAGE KEYS
# ============================================================

recommended_language_keys:
- ui.language.ja
- ui.language.en
- notification.language.ja
- notification.language.en
- pdf.language.ja
- pdf.language.en

# ============================================================
# 4. LOCALIZATION TARGET GROUPS
# ============================================================

ui_label_groups:
- common action labels
- dashboard labels
- schedule labels
- assignment labels
- publish/share labels
- generation labels
- requested day-off labels
- headquarters dashboard labels
- subscription/read-only labels

notification_label_groups:
- publish
- republish
- same_day
- urgent_change

pdf_label_groups:
- title labels
- column headers
- DRAFT marker
- publication/version labels
- generated_at labels

validation_message_groups:
- required field
- invalid enum
- invalid period range
- invalid time range
- read-only blocked
- feature gate blocked

# ============================================================
# 5. FALLBACK POLICY
# ============================================================

fallback_policy:
- if requested language label is missing, use site/company default
- if site/company default is missing, use application default japanese
- never fail business execution merely because one label is missing

# ============================================================
# 6. CONCLUSION
# ============================================================

Multilingual support should be implemented
as a stable label/message layer on top of fixed internal codes.


# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200013_SHIFT_MANAGER_MULTILINGUAL_SUPPORT_IMPLEMENTATION_NOTE.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200014_SHIFT_MANAGER_ADDITIONAL_FEATURE_API_EXACT_PAYLOAD_SPEC.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE API EXACT PAYLOAD SPEC
# ============================================================

status: implementation-facing-fixed-candidate
type: additional-feature-api-exact-payload-spec
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the exact request/response payload shapes
for the additional competitive features.

# ============================================================
# 2. REQUESTED DAY-OFF
# ============================================================

endpoint:
POST /api/shift-manager/v1/requested-day-off

request:
{
  "requested_date": "2026-05-12",
  "request_note": "family event"
}

response:
{
  "ok": true,
  "data": {
    "requested_day_off_id": "uuid",
    "person_id": "uuid",
    "requested_date": "2026-05-12",
    "requested_status": "submitted",
    "request_note": "family event",
    "requested_at": "2026-04-11T10:00:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_requested_day_off_submit_001"
  }
}

endpoint:
PATCH /api/shift-manager/v1/requested-day-off/{requested_day_off_id}

request:
{
  "requested_status": "approved",
  "review_note": "approved"
}

response:
{
  "ok": true,
  "data": {
    "requested_day_off_id": "uuid",
    "requested_status": "approved",
    "reviewed_by_person_id": "uuid",
    "reviewed_at": "2026-04-11T10:30:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_requested_day_off_review_001"
  }
}

# ============================================================
# 3. SCHEDULED AUTO GENERATION
# ============================================================

endpoint:
POST /api/shift-manager/v1/auto-generation-schedules

request:
{
  "rule_name": "monthly store-a auto draft",
  "target_scope_type": "site",
  "target_scope_id": "uuid",
  "generation_rule_id": "uuid",
  "schedule_type": "monthly_fixed_day",
  "execution_timezone": "Asia/Tokyo",
  "monthly_day": 25,
  "monthly_use_last_day": false,
  "execution_time": "10:00:00",
  "target_period_mode": "next_month",
  "active_flag": true
}

response:
{
  "ok": true,
  "data": {
    "auto_generation_schedule_id": "uuid",
    "rule_name": "monthly store-a auto draft",
    "schedule_type": "monthly_fixed_day",
    "execution_timezone": "Asia/Tokyo",
    "monthly_day": 25,
    "monthly_use_last_day": false,
    "execution_time": "10:00:00",
    "target_period_mode": "next_month",
    "active_flag": true
  },
  "error": null,
  "meta": {
    "request_id": "req_auto_generation_schedule_create_001"
  }
}

endpoint:
POST /api/shift-manager/v1/auto-generation-schedules/{auto_generation_schedule_id}/run-now

request:
{
  "overwrite_policy": "create_new_schedule"
}

response:
{
  "ok": true,
  "data": {
    "auto_generation_execution_id": "uuid",
    "execution_status": "success",
    "generated_schedule_id": "uuid",
    "generation_result_id": "uuid",
    "warning_count": 2,
    "unassigned_count": 1,
    "executed_at": "2026-04-11T11:00:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_auto_generation_run_now_001"
  }
}

# ============================================================
# 4. PUBLICATION DIFFERENCE / CHANGE CONFIRMATION
# ============================================================

endpoint:
GET /api/shift-manager/v1/publications/{publication_id}/differences

response:
{
  "ok": true,
  "data": {
    "items": [
      {
        "publication_difference_id": "uuid",
        "difference_type": "time_changed",
        "affected_person_id": "uuid",
        "difference_summary": "09:00-13:00 -> 10:00-14:00",
        "before_value_json": {},
        "after_value_json": {}
      }
    ],
    "page": 1,
    "page_size": 50,
    "total_count": 1
  },
  "error": null,
  "meta": {
    "request_id": "req_publication_differences_001"
  }
}

endpoint:
POST /api/shift-manager/v1/publications/{publication_id}/confirm-change

request:
{
  "publication_difference_ids": ["uuid", "uuid"],
  "confirmation_status": "confirmed"
}

response:
{
  "ok": true,
  "data": {
    "publication_id": "uuid",
    "confirmation_status": "confirmed",
    "confirmed_count": 2,
    "confirmed_at": "2026-04-11T11:10:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_change_confirmation_001"
  }
}

# ============================================================
# 5. HEADQUARTERS DASHBOARD / ANALYTICS
# ============================================================

endpoint:
GET /api/shift-manager/v1/headquarters/site-dashboard

response:
{
  "ok": true,
  "data": {
    "items": [
      {
        "site_id": "uuid",
        "site_name": "Store A",
        "subscription_status": "active",
        "unpublished_count": 1,
        "shortage_count": 3,
        "warning_count": 5,
        "unconfirmed_change_count": 2,
        "erp_failed_count": 0
      }
    ],
    "page": 1,
    "page_size": 50,
    "total_count": 1
  },
  "error": null,
  "meta": {
    "request_id": "req_headquarters_dashboard_001"
  }
}

endpoint:
GET /api/shift-manager/v1/headquarters/site-analytics

response:
{
  "ok": true,
  "data": {
    "items": [
      {
        "site_id": "uuid",
        "site_name": "Store A",
        "period_start_date": "2026-04-01",
        "period_end_date": "2026-04-30",
        "same_day_change_count": 4,
        "pdf_export_count": 12,
        "erp_failure_count": 0,
        "requested_day_off_pending_count": 3,
        "change_confirmation_pending_count": 2
      }
    ],
    "page": 1,
    "page_size": 50,
    "total_count": 1
  },
  "error": null,
  "meta": {
    "request_id": "req_headquarters_analytics_001"
  }
}


# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200014_SHIFT_MANAGER_ADDITIONAL_FEATURE_API_EXACT_PAYLOAD_SPEC.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200015_SHIFT_MANAGER_ADDITIONAL_FEATURE_VALIDATION_MATRIX_EXTENSION.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE VALIDATION MATRIX EXTENSION
# ============================================================

status: implementation-facing-validation-candidate
type: additional-feature-validation-matrix-extension
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. REQUESTED DAY-OFF
# ============================================================

validation:
- requested_date must be valid date
- duplicate conflicting request policy must be checked
- staff may submit only for self
- manager review status must be valid enum

major_errors:
- invalid_requested_date
- duplicate_requested_day_off
- requested_day_off_not_found
- requested_day_off_review_denied
- invalid_requested_day_off_status

# ============================================================
# 2. SCHEDULED AUTO GENERATION
# ============================================================

validation:
- generation_rule_id must exist
- schedule_type must be valid enum
- execution_time must be valid time
- weekly_day_of_week required when weekly
- monthly_day required and 1..31 when monthly_fixed_day
- monthly_use_last_day must be true when monthly_last_day
- target_period_mode must be valid
- inactive subscription must block create/update/run-now
- run-now overwrite_policy must be valid enum

major_errors:
- generation_rule_not_found
- invalid_schedule_type
- invalid_execution_time
- invalid_weekly_day
- invalid_monthly_day
- invalid_target_period_mode
- SUBSCRIPTION_INACTIVE_READ_ONLY
- AUTO_GENERATION_TARGET_ALREADY_EXISTS
- GENERATION_RULE_INACTIVE

# ============================================================
# 3. PUBLICATION DIFFERENCE / CHANGE CONFIRMATION
# ============================================================

validation:
- publication must exist
- caller must be permitted to view publication
- confirmation may only target affected/visible change rows
- confirmation_status must be valid enum

major_errors:
- publication_not_found
- publication_access_denied
- publication_difference_not_found
- change_confirmation_denied
- invalid_confirmation_state

# ============================================================
# 4. HEADQUARTERS DASHBOARD / ANALYTICS
# ============================================================

validation:
- caller must have headquarters or higher permitted role
- only company-safe site summaries may be returned
- analytics remains lightweight summary only

major_errors:
- site_dashboard_access_denied
- site_analytics_access_denied


# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200015_SHIFT_MANAGER_ADDITIONAL_FEATURE_VALIDATION_MATRIX_EXTENSION.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200016_SHIFT_MANAGER_ADDITIONAL_FEATURE_DTO_INVENTORY_EXTENSION.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE DTO INVENTORY EXTENSION
# ============================================================

status: implementation-facing-fixed-candidate
type: additional-feature-dto-inventory-extension
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document adds the DTO inventory
for newly adopted competitive features.

# ============================================================
# 2. REQUESTED DAY-OFF DTOs
# ============================================================

requested_day_off_request_dtos:
- RequestedDayOffSubmitRequestDto
- RequestedDayOffReviewRequestDto

requested_day_off_response_dtos:
- RequestedDayOffSummaryDto
- RequestedDayOffDetailDto
- RequestedDayOffReviewResultDto

# ============================================================
# 3. SCHEDULED AUTO GENERATION DTOs
# ============================================================

auto_generation_schedule_request_dtos:
- AutoGenerationScheduleCreateRequestDto
- AutoGenerationScheduleUpdateRequestDto
- AutoGenerationRunNowRequestDto

auto_generation_schedule_response_dtos:
- AutoGenerationScheduleSummaryDto
- AutoGenerationScheduleDetailDto
- AutoGenerationExecutionSummaryDto
- AutoGenerationExecutionDetailDto

# ============================================================
# 4. DIFFERENCE / CONFIRMATION DTOs
# ============================================================

difference_confirmation_request_dtos:
- ChangeConfirmationRequestDto

difference_confirmation_response_dtos:
- PublicationDifferenceSummaryDto
- PublicationDifferenceDetailDto
- ChangeConfirmationStatusDto
- ChangeConfirmationResultDto

# ============================================================
# 5. HEADQUARTERS DTOs
# ============================================================

headquarters_response_dtos:
- HeadquartersSiteDashboardItemDto
- HeadquartersSiteDashboardResponseDto
- SiteAnalyticsItemDto
- SiteAnalyticsResponseDto

# ============================================================
# 6. COMMON RULE
# ============================================================

common_rule:
- request and response DTOs remain separate
- internal fixed enum/code values remain unchanged
- DTO field names remain stable and language-neutral

# ============================================================
# 7. CONCLUSION
# ============================================================

These DTOs should be treated as the starter DTO set
for the additional competitive features.


# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200016_SHIFT_MANAGER_ADDITIONAL_FEATURE_DTO_INVENTORY_EXTENSION.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200017_SHIFT_MANAGER_ADDITIONAL_FEATURE_EXACT_REFERENCE_MAP.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE EXACT REFERENCE MAP
# ============================================================

status: implementation-facing-fixed-candidate
type: additional-feature-exact-reference-map
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document maps the exactification documents
for additional competitive features.

# ============================================================
# 2. REQUESTED DAY-OFF
# ============================================================

reference_docs:
- 1200014_SHIFT_MANAGER_ADDITIONAL_FEATURE_API_EXACT_PAYLOAD_SPEC.md
- 1200015_SHIFT_MANAGER_ADDITIONAL_FEATURE_VALIDATION_MATRIX_EXTENSION.md
- 0300006_SHIFT_MANAGER_ADDITIONAL_FEATURE_PHYSICAL_DDL_EXECUTION_EXTENSION.md
- 1000004_SHIFT_MANAGER_ADDITIONAL_FEATURE_AUTHORIZATION_EXTENSION.md

main_objects:
- requested_day_off_submit
- requested_day_off_review
- requested_day_off_history

# ============================================================
# 3. SCHEDULED AUTO GENERATION
# ============================================================

reference_docs:
- 1200014_SHIFT_MANAGER_ADDITIONAL_FEATURE_API_EXACT_PAYLOAD_SPEC.md
- 1200015_SHIFT_MANAGER_ADDITIONAL_FEATURE_VALIDATION_MATRIX_EXTENSION.md
- 0300006_SHIFT_MANAGER_ADDITIONAL_FEATURE_PHYSICAL_DDL_EXECUTION_EXTENSION.md
- 1000004_SHIFT_MANAGER_ADDITIONAL_FEATURE_AUTHORIZATION_EXTENSION.md
- 0400003_SHIFT_MANAGER_TIMER_BASED_AUTO_GENERATION_RUNTIME.md

main_objects:
- auto_generation_schedule_create
- auto_generation_schedule_detail
- auto_generation_schedule_execution_history

# ============================================================
# 4. DIFFERENCE / CONFIRMATION
# ============================================================

reference_docs:
- 1200014_SHIFT_MANAGER_ADDITIONAL_FEATURE_API_EXACT_PAYLOAD_SPEC.md
- 1200015_SHIFT_MANAGER_ADDITIONAL_FEATURE_VALIDATION_MATRIX_EXTENSION.md
- 0300006_SHIFT_MANAGER_ADDITIONAL_FEATURE_PHYSICAL_DDL_EXECUTION_EXTENSION.md
- 1000004_SHIFT_MANAGER_ADDITIONAL_FEATURE_AUTHORIZATION_EXTENSION.md

main_objects:
- publication_difference_detail
- change_confirmation_status
- shortage_difference_dashboard

# ============================================================
# 5. HEADQUARTERS
# ============================================================

reference_docs:
- 1200014_SHIFT_MANAGER_ADDITIONAL_FEATURE_API_EXACT_PAYLOAD_SPEC.md
- 1200015_SHIFT_MANAGER_ADDITIONAL_FEATURE_VALIDATION_MATRIX_EXTENSION.md
- 0300006_SHIFT_MANAGER_ADDITIONAL_FEATURE_PHYSICAL_DDL_EXECUTION_EXTENSION.md
- 1000004_SHIFT_MANAGER_ADDITIONAL_FEATURE_AUTHORIZATION_EXTENSION.md

main_objects:
- headquarters_site_dashboard
- site_status_detail
- multi_site_analytics


# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200017_SHIFT_MANAGER_ADDITIONAL_FEATURE_EXACT_REFERENCE_MAP.md
# ============================================================


# ============================================================
# BEGIN FILE: 120.implementation/010.shift-manager/1200018_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_REVIEW_PACK_NOTE.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE SQL REVIEW PACK NOTE
# ============================================================

status: implementation-facing-fixed-candidate
type: additional-feature-sql-review-pack-note
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the SQL review order
for additional competitive features.

# ============================================================
# 2. REVIEW ORDER
# ============================================================

review_order:
1. 0300006_SHIFT_MANAGER_ADDITIONAL_FEATURE_PHYSICAL_DDL_EXECUTION_EXTENSION.md
2. 015_shift_manager_additional_feature_tables.sql
3. 022_shift_manager_additional_feature_indexes.sql
4. 1000004_SHIFT_MANAGER_ADDITIONAL_FEATURE_AUTHORIZATION_EXTENSION.md
5. 1000005_SHIFT_MANAGER_ADDITIONAL_FEATURE_RLS_SQL_PACK_NOTE.md
6. 109_shift_manager_rls_requested_day_off.sql
7. 110_shift_manager_rls_additional_generation.sql
8. 111_shift_manager_rls_difference_confirmation.sql
9. 112_shift_manager_rls_headquarters_summary.sql

# ============================================================
# 3. REVIEW QUESTIONS
# ============================================================

review_questions:
- are company boundaries explicit enough
- are manager scopes too broad or too narrow
- is affected-person confirmation limited correctly
- does timer generation stay draft-only
- are headquarters summaries lightweight enough
- are index targets sufficient for expected reads

# ============================================================
# 4. IMPORTANT RULE
# ============================================================

important_rule:
These are still pre-implementation design/review assets.
They are not yet approved execution artifacts.


# ============================================================
# END FILE: 120.implementation/010.shift-manager/1200018_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_REVIEW_PACK_NOTE.md
# ============================================================


# ============================================================
# BEGIN FILE: 130.development/010.shift-manager/1300000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================

# ============================================================
# SHIFT MANAGER DEVELOPMENT OVERVIEW
# ============================================================

status: canonical
layer: development
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

next_design_targets:
- exact screen list
- exact role matrix
- DB physical schema
- API exact contract
- mobile navigation map

# ============================================================
# END FILE: 130.development/010.shift-manager/1300000_SHIFT_MANAGER_OVERVIEW.md
# ============================================================


# ============================================================
# BEGIN FILE: 130.development/010.shift-manager/1300001_SHIFT_MANAGER_DEVELOPMENT.md
# ============================================================

# ============================================================
# SHIFT MANAGER DEVELOPMENT
# ============================================================

status: canonical
layer: development
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

development_notes:
This design set fixes the application direction first.

The next phase should determine:
1. exact definition sentence
2. fixed screen inventory
3. role-permission matrix
4. DB schema design
5. API exact contract
6. publication/share state transitions
7. ERP linkage payload structure

# ============================================================
# END FILE: 130.development/010.shift-manager/1300001_SHIFT_MANAGER_DEVELOPMENT.md
# ============================================================


# ============================================================
# BEGIN FILE: 130.development/010.shift-manager/1300002_SHIFT_MANAGER_PRE_IMPLEMENTATION_DECISION_SHEET.md
# ============================================================

# ============================================================
# SHIFT MANAGER PRE-IMPLEMENTATION DECISION SHEET
# ============================================================

status: draft-fixed-candidate
type: pre-implementation-decision-sheet
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. APPLICATION DEFINITION
# ============================================================

fixed_items:
- ShiftManager centers on shift creation and shift sharing
- distributed and used through BusinessOS
- realtime smartphone viewing supported
- only shared / allowed people may view
- ERP integration supported
- installation / sharing boundary follows NameCardManager style

not_fixed_yet:
- final Japanese app name
- English naming variance confirmation
- package name
- module split policy
- standalone app or BusinessOS sub-app implementation shape

# ============================================================
# 2. USER GROUPS
# ============================================================

provisional_users:
- shift administrator
- store / department manager
- team leader
- general staff
- enterprise administrator
- ERP integration operator

not_fixed_yet:
- whether team leader has creation authority
- self-service range for general staff
- upper viewing bound for enterprise admin
- proxy creator support

# ============================================================
# 3. SHIFT CREATION SCOPE
# ============================================================

provisional_fixed:
- daily creation
- weekly creation
- monthly creation
- draft save
- publish
- republish
- person-based assignment
- time slot based assignment
- department / office / scope based creation

not_fixed_yet:
- template copy
- previous week / month copy
- auto creation assist
- required headcount warning
- skill-based warning
- same-person duplicate warning

# ============================================================
# 4. SHARE RANGE
# ============================================================

provisional_fixed:
- person share
- team share
- department share
- management scope share
- role-based control
- realtime reflection after publication

not_fixed_yet:
- how far others' shifts can be shown
- coworker list visibility
- whole shift table visibility
- cross-team exception rules
- temporary share link necessity
- cache behavior after share stop

# ============================================================
# 5. VIEWING
# ============================================================

provisional_fixed:
- today's shift
- week view
- month view
- my shifts
- allowed shared shifts
- immediate reflection of changes

not_fixed_yet:
- calendar granularity
- timeline view support
- color coding rules
- read-state management
- offline viewing

# ============================================================
# 6. NOTIFICATION
# ============================================================

provisional_fixed:
- publication notification
- change notification
- same-day notification

not_fixed_yet:
- push notification method
- notification timing
- urgent change handling
- retry
- unread management
- common component usage range

# ============================================================
# 7. ERP INTEGRATION
# ============================================================

provisional_fixed:
- employee reference
- organization reference
- office reference
- published shift linkage
- ERP is the company-wide formal integration target

not_fixed_yet:
- one-way or two-way linkage
- linkage timing
- manual or automatic send
- retry method
- ERP acceptance unit
- planned-only or actuals also

# ============================================================
# 8. DATA AUTHORITY BOUNDARY
# ============================================================

app_authority:
- shift drafts
- published shifts
- share settings
- view permission state
- notification state
- publication histories

erp_authority:
- employee formal data
- organization formal data
- office formal data
- enterprise core processing
- payroll / accounting / HR formal processing

not_fixed_yet:
- display name authority inside app
- retired member history retention policy
- ERP master change reflection rules

# ============================================================
# 9. ROLES
# ============================================================

provisional_roles:
- enterprise_admin
- shift_admin
- department_manager
- team_leader
- staff
- integration_operator

not_fixed_yet:
- role combination policy
- cross-office authority
- publish and share separation
- view-only administrator
- proxy approval

# ============================================================
# 10. SCREENS
# ============================================================

provisional_candidates:
- dashboard
- day view
- week view
- month view
- shift editor
- publish screen
- share setting screen
- received shift view
- notification center
- ERP linkage status
- settings

not_fixed_yet:
- first screen
- tab composition
- separation strength between admin and staff UIs
- editing UI style
- list-first or calendar-first design

# ============================================================
# 11. DB
# ============================================================

provisional_targets:
- shift_schedule
- shift_assignment
- shift_publication
- shift_share_rule
- shift_view_scope
- shift_notification
- erp_linkage_state

not_fixed_yet:
- physical schema name
- audit table commonization range
- logical delete policy
- versioning method
- index policy
- precomputed or dynamic share evaluation

# ============================================================
# 12. API
# ============================================================

required_api_candidates:
- shift list
- shift detail
- draft create
- edit
- publish
- republish
- share update
- notification list
- ERP send
- linkage status

not_fixed_yet:
- REST final fixation
- auth method
- publish / republish split
- batch update style
- mobile optimized response shape

# ============================================================
# 13. OPERATIONS
# ============================================================

provisional_fixed:
- preserve publication history
- preserve share history
- monitor ERP send state
- verify notification state

not_fixed_yet:
- incident runbook
- emergency replace operation
- audit viewers
- support role
- log granularity

# ============================================================
# 14. HIGHEST PRIORITY BEFORE IMPLEMENTATION
# ============================================================

highest_priority:
- final application definition
- screen inventory
- role matrix
- share rules
- DB physical schema
- API exact contract
- ERP linkage timing

next_priority:
- notification spec
- color / UI expression rules
- operation audit rules
- error presentation rules
- cache / offline policy

# ============================================================
# 15. CURRENT CONCLUSION
# ============================================================

ShiftManager direction is sufficiently shaped.
To reach implementation-ready level,
the following are mandatory:
- screen inventory
- role / share rules
- DB physical schema
- API exact contract


# ============================================================
# END FILE: 130.development/010.shift-manager/1300002_SHIFT_MANAGER_PRE_IMPLEMENTATION_DECISION_SHEET.md
# ============================================================


# ============================================================
# BEGIN FILE: 130.development/010.shift-manager/1300003_SHIFT_MANAGER_FULL_GENERATION_INPUT_FORMAT.md
# ============================================================

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

# ============================================================
# END FILE: 130.development/010.shift-manager/1300003_SHIFT_MANAGER_FULL_GENERATION_INPUT_FORMAT.md
# ============================================================


# ============================================================
# BEGIN FILE: 130.development/010.shift-manager/1300004_SHIFT_MANAGER_AUTO_SHIFT_GENERATION_DESIGN.md
# ============================================================

# ============================================================
# SHIFT MANAGER AUTO SHIFT GENERATION DESIGN
# ============================================================

status: design-extension
type: auto-shift-generation-design
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. POSITIONING
# ============================================================

Auto generation in ShiftManager is not automatic publication.
It is condition-based automatic draft generation.

responsibility:
- define generation conditions
- generate draft schedules based on conditions
- preserve warnings and unassigned areas
- allow human review and manual correction before publication

publication remains manual after human confirmation.

# ============================================================
# 2. BASIC PRINCIPLES
# ============================================================

principles:
1. auto generation creates drafts only
2. auto-generated drafts are never auto-published
3. shortages and warnings must remain visible
4. partially possible draft generation is allowed
5. auto-generated and manually edited result should be distinguishable
6. publish / republish responsibility remains in publication domain

# ============================================================
# 3. PURPOSE
# ============================================================

purposes:
- reduce manager initial creation burden
- lighten recurring weekly/monthly schedule work
- generate a practical first draft quickly
- let humans focus on shortage/fine tuning areas

This is not fully automatic operation.
It is human-supervised automatic draft assistance.

# ============================================================
# 4. INPUT CONDITIONS
# ============================================================

target_conditions:
- target period
- target department
- target team
- target office
- generation unit: day / week / month

slot_conditions:
- business days
- business hours
- shift slots
- required headcount by time zone
- required headcount by role

person_conditions:
- person_id
- affiliation
- role
- skill
- workable weekdays
- workable time ranges
- requested days off
- blocked dates
- max work time
- max work count
- consecutive work limitation

priority_conditions:
- specific role priority
- balanced assignment priority
- veteran priority
- continuity priority
- cost control priority

# ============================================================
# 5. RESULT TYPES
# ============================================================

result_types:
- auto_assigned
- unassigned
- assigned_with_warning

warning_examples:
- requested day off conflict candidate
- large imbalance
- too many consecutive assignments
- lower-priority assignment used

# ============================================================
# 6. FLOW
# ============================================================

basic_flow:
condition_setting
-> auto_generate_execute
-> draft_generated
-> generation_result_review
-> shortage / warning review
-> manual adjustment
-> validate-for-publication
-> publish

important_rule:
existing publish flow must remain intact.
auto generation is only a front-side draft preparation extension.

# ============================================================
# 7. SCREEN ADDITIONS
# ============================================================

additional_screens:
- auto_generation_condition_setting
- auto_generation_execute_confirmation
- auto_generation_result_review
- generation_shortage_warning_list

navigation_addition:
dashboard
-> shift_list
-> auto_generation_condition_setting
-> auto_generation_execute_confirmation
-> auto_generation_result_review
-> shift_edit
-> draft_confirmation
-> publish_confirmation

# ============================================================
# 8. PACKAGE / MODULE IMPACT
# ============================================================

recommended_position:
auto generation belongs under draft-side responsibility,
not publication/share/erp.

recommended_logical_split:
- draft
  - auto-generation
  - validation
  - manual-edit

or
- draft
- draft-auto-generation

# ============================================================
# 9. DATABASE EXTENSIONS
# ============================================================

shift_schedule_extension_candidates:
- generation_mode
- generation_rule_id
- auto_generation_summary_json
- auto_generated_at
- auto_generated_by_person_id

generation_mode_examples:
- manual
- auto_generated
- auto_generated_then_edited

new_table_candidates:
- shift_generation_rule
- shift_generation_result
- shift_generation_warning

shift_generation_rule_role:
store generation conditions

shift_generation_result_role:
store execution summary result

shift_generation_warning_role:
store shortage/warning records

# ============================================================
# 10. API ADDITIONS
# ============================================================

api_candidates:
- POST /api/shift-manager/v1/generation-rules
- GET /api/shift-manager/v1/generation-rules
- POST /api/shift-manager/v1/schedules/auto-generate
- GET /api/shift-manager/v1/schedules/{schedule_id}/generation-result
- GET /api/shift-manager/v1/schedules/{schedule_id}/generation-warnings

# ============================================================
# 11. DTO ADDITIONS
# ============================================================

dto_candidates:
generation_rule:
- GenerationRuleDto
- CreateGenerationRuleRequestDto
- UpdateGenerationRuleRequestDto
- GenerationRuleListResponseDto

generation_result:
- GenerateScheduleRequestDto
- GenerateScheduleResponseDto
- GenerationResultDto
- GenerationWarningDto
- GenerationWarningListResponseDto

# ============================================================
# 12. NOTIFICATION RELATION
# ============================================================

notification_policy:
- do not notify staff when only auto generation finishes
- auto generation is internal preparation
- normal notifications begin after publication

optional_admin_notice:
- generation complete notice to managers may be added later

# ============================================================
# 13. AUTHORITY
# ============================================================

allowed_roles:
- shift_admin
- department_manager
- conditional team_leader

not_allowed_roles:
- staff
- integration_operator

team_leader_rule:
- auto-generate may be conditionally allowed
- publish remains not allowed

# ============================================================
# 14. STATE REPRESENTATION
# ============================================================

recommended_representation:
keep schedule.status unchanged:
- draft
- published
- superseded
- closed

use additional attributes:
- generation_mode
- auto_generated_flag
- has_generation_warnings

# ============================================================
# 15. CRITICAL DECISIONS
# ============================================================

critical_points:
- auto generation creates drafts only
- publish remains human action
- shortages and warnings must remain visible
- auto-generated result is expected to be manually adjustable
- auto generation is an extension of draft responsibility

# ============================================================
# 16. CONCLUSION
# ============================================================

Condition-based automatic draft generation
fits ShiftManager naturally.

The safe design is:
automatic draft generation only,
followed by human review and manual publication.


# ============================================================
# END FILE: 130.development/010.shift-manager/1300004_SHIFT_MANAGER_AUTO_SHIFT_GENERATION_DESIGN.md
# ============================================================


# ============================================================
# BEGIN FILE: 130.development/010.shift-manager/1300005_SHIFT_MANAGER_PHASE_IMPLEMENTATION_STRATEGY.md
# ============================================================

# ============================================================
# SHIFT MANAGER PHASE IMPLEMENTATION STRATEGY
# ============================================================

status: development-extension
type: phase-implementation-strategy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the practical phase-by-phase
implementation strategy for ShiftManager.

# ============================================================
# 2. IMPLEMENTATION PRINCIPLE
# ============================================================

implementation_principles:
- implement from core safety to advanced convenience
- preserve draft/publication boundary at all times
- preserve read-only blocking when inactive
- preserve publication-only ERP export
- preserve draft-only generation and scheduled generation
- keep PC and smartphone on the same core feature set
- keep multilingual support as display/output layer only

# ============================================================
# 3. PHASE ORDER
# ============================================================

phase_order:
phase_1:
- bootstrap
- subscription / feature gate
- draft schedule core
- assignment core
- read-only enforcement

phase_2:
- validate-for-publication
- publish / republish
- share rules
- share preview
- my shifts today/week

phase_3:
- generation rules
- auto-generate
- generation result / warning

phase_4:
- scheduled auto-generation
- requested day-off
- difference / confirmation
- headquarters lightweight visibility

phase_5:
- PDF export
- notification
- ERP export / retry

# ============================================================
# 4. DEVELOPMENT PRIORITY RULE
# ============================================================

priority_rule:
Implement in this order:
1. business-safe core
2. publication-safe core
3. generation convenience
4. headquarters/staff convenience
5. export/output/integration completion

# ============================================================
# 5. DO-NOT-BREAK RULES
# ============================================================

do_not_break_rules:
- do not let draft logic leak into publication export
- do not let device type decide business capability
- do not let language setting affect internal codes
- do not auto-publish generated drafts
- do not bypass share/view scope rules
- do not let inactive state retain mutation authority

# ============================================================
# 6. CONCLUSION
# ============================================================

ShiftManager development should proceed
in controlled phases from safe core to advanced operation support.


# ============================================================
# END FILE: 130.development/010.shift-manager/1300005_SHIFT_MANAGER_PHASE_IMPLEMENTATION_STRATEGY.md
# ============================================================


# ============================================================
# BEGIN FILE: 130.development/010.shift-manager/1300006_SHIFT_MANAGER_MULTILINGUAL_DEVELOPMENT_GUIDE.md
# ============================================================

# ============================================================
# SHIFT MANAGER MULTILINGUAL DEVELOPMENT GUIDE
# ============================================================

status: development-extension
type: multilingual-development-guide
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide fixes development rules
for multilingual support in ShiftManager.

# ============================================================
# 2. BASIC RULE
# ============================================================

basic_rule:
Keep internals fixed.
Localize only display/output surfaces.

# ============================================================
# 3. DO NOT LOCALIZE
# ============================================================

do_not_localize:
- API field names
- DTO field names
- DB column names
- internal enum values
- feature codes
- error codes
- SQL identifiers
- repository/service/controller class names

# ============================================================
# 4. LOCALIZE
# ============================================================

localize_targets:
- screen labels
- button labels
- helper text
- notification display text
- validation/user-facing messages
- PDF visible labels
- dashboard labels
- requested day-off labels
- generation warning display labels

# ============================================================
# 5. INITIAL LANGUAGE SET
# ============================================================

initial_languages:
- japanese
- english

future_languages:
- chinese_simplified
- chinese_traditional
- korean
- vietnamese
- indonesian
- thai

# ============================================================
# 6. FALLBACK RULE
# ============================================================

fallback_rule:
1. user preference
2. site/company default
3. application default japanese

Never fail business execution
only because one translated label is missing.

# ============================================================
# 7. DEVELOPMENT CHECKPOINTS
# ============================================================

development_checkpoints:
- API payload snapshots remain unchanged across languages
- UI text is swappable by language key
- notification rendering is localized at output layer
- PDF visible labels can switch language
- logs/debug continue to rely on stable internal codes

# ============================================================
# 8. CONCLUSION
# ============================================================

Multilingual development in ShiftManager
must remain a display-layer concern,
not a business-logic concern.


# ============================================================
# END FILE: 130.development/010.shift-manager/1300006_SHIFT_MANAGER_MULTILINGUAL_DEVELOPMENT_GUIDE.md
# ============================================================


# ============================================================
# BEGIN FILE: 130.development/010.shift-manager/1300007_SHIFT_MANAGER_SUBSCRIPTION_AND_LICENSE_DEVELOPMENT_GUIDE.md
# ============================================================

# ============================================================
# SHIFT MANAGER SUBSCRIPTION AND LICENSE DEVELOPMENT GUIDE
# ============================================================

status: development-extension
type: subscription-and-license-development-guide
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide fixes development rules
for subscription, trial, read-only mode,
and site-based licensing.

# ============================================================
# 2. BUSINESS MODEL RULE
# ============================================================

business_model_rule:
- site-based pricing
- 900 JPY per site / month
- unlimited users within site
- no initial fee
- initial 3-day trial
- one site license covers both PC and smartphone

# ============================================================
# 3. SUBSCRIPTION STATES
# ============================================================

subscription_states:
- trial
- active
- grace
- inactive

# ============================================================
# 4. DEVELOPMENT RULES
# ============================================================

development_rules:
- resolve subscription state before mutation logic
- resolve feature gate before mutation logic
- inactive must block create/edit/generate/publish/share/export
- inactive must still allow permitted viewing
- same core feature model on PC and smartphone
- do not implement device-specific business permissions

# ============================================================
# 5. TIMER RULE
# ============================================================

timer_rule:
- scheduled auto-generation allowed in trial/active/grace
- inactive must skip scheduled execution
- scheduled generation remains draft-only

# ============================================================
# 6. TEST CHECKPOINTS
# ============================================================

test_checkpoints:
- active/trial/grace allow configured mutation set
- inactive blocks mutation set
- inactive preserves allowed viewing
- PC and smartphone expose same core business capability
- feature gate outputs are stable and explainable

# ============================================================
# 7. CONCLUSION
# ============================================================

Subscription and license development
must remain site-based, read-only-safe,
and device-neutral in business capability.


# ============================================================
# END FILE: 130.development/010.shift-manager/1300007_SHIFT_MANAGER_SUBSCRIPTION_AND_LICENSE_DEVELOPMENT_GUIDE.md
# ============================================================


# ============================================================
# BEGIN FILE: 130.development/010.shift-manager/1300008_SHIFT_MANAGER_COMPETITIVE_FEATURE_DEVELOPMENT_ROADMAP.md
# ============================================================

# ============================================================
# SHIFT MANAGER COMPETITIVE FEATURE DEVELOPMENT ROADMAP
# ============================================================

status: development-extension
type: competitive-feature-development-roadmap
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This roadmap fixes the development order
for recently adopted competitive features.

# ============================================================
# 2. ADOPTED FEATURE GROUPS
# ============================================================

adopted_feature_groups:
- headquarters site management dashboard
- shortage / difference / unconfirmed visualization
- requested day-off submission
- change confirmation flag
- lightweight multi-site analytics
- scheduled automatic draft generation

future_candidates:
- shift exchange request
- support request

# ============================================================
# 3. RECOMMENDED DEVELOPMENT ORDER
# ============================================================

recommended_order:
1. scheduled automatic draft generation
2. requested day-off submission
3. shortage / difference / unconfirmed visualization
4. change confirmation flag
5. headquarters site management dashboard
6. lightweight multi-site analytics
7. future candidate evaluation for exchange/support

# ============================================================
# 4. WHY THIS ORDER
# ============================================================

reasoning:
- scheduled generation directly reduces operator effort
- requested day-off improves planning input quality
- shortage/difference visibility reduces operational accidents
- confirmation improves republication follow-up safety
- headquarters dashboard becomes stronger after underlying counts exist
- analytics should stay lightweight and come after core summary data exists

# ============================================================
# 5. ROADMAP RULES
# ============================================================

roadmap_rules:
- do not let competitive features break the pricing simplicity
- do not let convenience features bypass publication safety
- do not turn ShiftManager into heavy BI or ERP replacement
- keep additions aligned with site-based fixed pricing value

# ============================================================
# 6. CONCLUSION
# ============================================================

Competitive feature development should strengthen:
- operational safety
- planning convenience
- multi-site oversight
without weakening ShiftManager's simple and low-friction positioning.


# ============================================================
# END FILE: 130.development/010.shift-manager/1300008_SHIFT_MANAGER_COMPETITIVE_FEATURE_DEVELOPMENT_ROADMAP.md
# ============================================================


# ============================================================
# BEGIN FILE: 130.development/010.shift-manager/1300009_SHIFT_MANAGER_ADDITIONAL_FEATURE_DEVELOPMENT_READING_ORDER.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE DEVELOPMENT READING ORDER
# ============================================================

status: development-extension
type: additional-feature-development-reading-order
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the recommended reading order
for additional competitive feature development.

# ============================================================
# 2. READING ORDER
# ============================================================

reading_order:
1. 0200003_SHIFT_MANAGER_COMPETITIVE_FEATURE_EXTENSION_ARCHITECTURE.md
2. 0300005_SHIFT_MANAGER_ADDITIONAL_FEATURE_MODEL_EXTENSION.md
3. 0400003_SHIFT_MANAGER_TIMER_BASED_AUTO_GENERATION_RUNTIME.md
4. 0500002_SHIFT_MANAGER_ADDITIONAL_FEATURE_FLOW.md
5. 0900005_SHIFT_MANAGER_ADDITIONAL_SCREEN_INVENTORY.md
6. 0900007_SHIFT_MANAGER_ADDITIONAL_SCREEN_NAVIGATION_EXTENSION.md
7. 0900008_SHIFT_MANAGER_ADDITIONAL_SCREEN_RESPONSIBILITY_EXTENSION.md
8. 1200014_SHIFT_MANAGER_ADDITIONAL_FEATURE_API_EXACT_PAYLOAD_SPEC.md
9. 1200015_SHIFT_MANAGER_ADDITIONAL_FEATURE_VALIDATION_MATRIX_EXTENSION.md
10. 1200016_SHIFT_MANAGER_ADDITIONAL_FEATURE_DTO_INVENTORY_EXTENSION.md
11. 1200017_SHIFT_MANAGER_ADDITIONAL_FEATURE_EXACT_REFERENCE_MAP.md
12. 1200018_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_REVIEW_PACK_NOTE.md
13. 0300006_SHIFT_MANAGER_ADDITIONAL_FEATURE_PHYSICAL_DDL_EXECUTION_EXTENSION.md
14. 1000004_SHIFT_MANAGER_ADDITIONAL_FEATURE_AUTHORIZATION_EXTENSION.md
15. 1000005_SHIFT_MANAGER_ADDITIONAL_FEATURE_RLS_SQL_PACK_NOTE.md

# ============================================================
# 3. CONCLUSION
# ============================================================

Additional feature development should be read from:
- architecture
- model/runtime/flow
- UI
- exact API/validation/DTO
- DDL/auth/RLS review


# ============================================================
# END FILE: 130.development/010.shift-manager/1300009_SHIFT_MANAGER_ADDITIONAL_FEATURE_DEVELOPMENT_READING_ORDER.md
# ============================================================


# ============================================================
# BEGIN FILE: 130.development/010.shift-manager/1300010_SHIFT_MANAGER_PERSONA_BASIC_SET_DB_REVIEW_GUIDE.md
# ============================================================

# ============================================================
# SHIFT MANAGER PERSONA BASIC SET DB REVIEW GUIDE
# ============================================================
status: development-extension
type: persona-basic-set-db-review-guide
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide fixes how developers should review
ShiftManager DB design
against a Persona-side dump that contains only the basic set.

# ============================================================
# 2. REVIEW GOAL
# ============================================================

review_goal:
- confirm reusable foundation axes
- confirm naming consistency
- confirm additive placement direction
- avoid false assumptions about already-existing ShiftManager tables

# ============================================================
# 3. REVIEW ORDER
# ============================================================

review_order:
1. confirm company axis
2. confirm person axis
3. confirm site/store axis
4. confirm department/team/office naming if present
5. compare ShiftManager added tables against those axes
6. mark unresolved FK details as later exactification items

# ============================================================
# 4. REVIEW RULES
# ============================================================

review_rules:
- do not force live-FK certainty from incomplete dump scope
- prefer additive app-owned tables over foundation mutation
- preserve app schema separation
- preserve stable app naming once foundation axes are known

# ============================================================
# 5. CONCLUSION
# ============================================================

Persona basic-set review is a fit/alignment review,
not proof of already-implemented ShiftManager schema.


# ============================================================
# END FILE: 130.development/010.shift-manager/1300010_SHIFT_MANAGER_PERSONA_BASIC_SET_DB_REVIEW_GUIDE.md
# ============================================================


# ============================================================
# BEGIN FILE: 130.development/010.shift-manager/1300011_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_EXACTIFICATION_GUIDE.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE SQL EXACTIFICATION GUIDE
# ============================================================

status: development-extension
type: additional-feature-sql-exactification-guide
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide fixes how developers should read and refine
the additional feature SQL pack
under the Persona basic-set assumption.

# ============================================================
# 2. READING / REVIEW ORDER
# ============================================================

review_order:
1. 0300007_SHIFT_MANAGER_PERSONA_BASIC_SET_DB_FIT_AND_ADDITIVE_PLACEMENT.md
2. 0300008_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_EXACTIFICATION_WITH_PERSONA_BASIC_SET.md
3. 015_shift_manager_additional_feature_tables.sql
4. 022_shift_manager_additional_feature_indexes.sql
5. 1000004_SHIFT_MANAGER_ADDITIONAL_FEATURE_AUTHORIZATION_EXTENSION.md
6. 1000005_SHIFT_MANAGER_ADDITIONAL_FEATURE_RLS_SQL_PACK_NOTE.md
7. 109_shift_manager_rls_requested_day_off.sql
8. 110_shift_manager_rls_additional_generation.sql
9. 111_shift_manager_rls_difference_confirmation.sql
10. 112_shift_manager_rls_headquarters_summary.sql

# ============================================================
# 3. DEVELOPMENT RULES
# ============================================================

development_rules:
- confirm company/person/site axis reuse first
- keep unresolved FK certainty explicitly pending
- do not convert app-owned tables into fake foundation tables
- do not tighten optional scope fields without foundation evidence
- prefer honest comments over invented certainty

# ============================================================
# 4. OUTPUT EXPECTATION
# ============================================================

output_expectation:
The result should be:
- design-exact
- foundation-aligned
- additive
- execution-review-ready later

# ============================================================
# 5. CONCLUSION
# ============================================================

Additional feature SQL should be refined carefully,
but without claiming certainty that the Persona basic-set dump does not provide.


# ============================================================
# END FILE: 130.development/010.shift-manager/1300011_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_EXACTIFICATION_GUIDE.md
# ============================================================


# ============================================================
# BEGIN FILE: 900.meta/9000000_SHIFT_MANAGER_META_NOTE.md
# ============================================================

# ============================================================
# SHIFT MANAGER META NOTE
# ============================================================

status: canonical
layer: meta
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

note:
This directory stores meta and support notes for ShiftManager.

generation_note:
Initial canonical design set generated from conversation-defined requirements:
- shift creation centered
- shift sharing centered
- realtime smartphone visibility
- BusinessOS distribution
- permission-based sharing
- ERP company-wide linkage

# ============================================================
# END FILE: 900.meta/9000000_SHIFT_MANAGER_META_NOTE.md
# ============================================================


# ============================================================
# BEGIN FILE: 900.meta/9000001_SHIFT_MANAGER_CANONICAL_HANDOFF.md
# ============================================================

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

# ============================================================
# END FILE: 900.meta/9000001_SHIFT_MANAGER_CANONICAL_HANDOFF.md
# ============================================================


# ============================================================
# BEGIN FILE: 900.meta/9000002_SHIFT_MANAGER_PRE_IMPLEMENTATION_COMPLETION_HANDOFF.md
# ============================================================

# ============================================================
# SHIFT MANAGER PRE-IMPLEMENTATION COMPLETION HANDOFF
# ============================================================

status: canonical-handoff
type: pre-implementation-completion-handoff
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. CURRENT POSITION
# ============================================================

ShiftManager has reached a strongly prepared
pre-implementation-complete state.

This means the application is now fixed not only at concept/design level,
but also across major implementation-facing detail layers.

current_readiness_summary:
- core application concept fixed
- role/share model fixed
- draft/publication separation fixed
- ERP integration direction fixed
- notification direction fixed
- PDF export direction fixed
- automatic draft generation direction fixed
- API payloads largely fixed
- validation matrix fixed
- SQL pack split and saved
- RLS SQL pack split and saved
- common-component mapping reflected

# ============================================================
# 1. WHAT IS ALREADY FIXED
# ============================================================

major_fixed_areas:
- application definition
- architecture direction
- model direction
- runtime/state transition direction
- flow direction
- ERP integration specification
- notification specification
- role and share rules
- security / RLS policy direction
- screen inventory
- screen navigation design
- screen input item definition table
- package / module architecture
- API DTO inventory
- API exact payload specification
- validation matrix
- automatic generation condition JSON specification
- generation algorithm refinement
- physical DDL execution design
- exact execution SQL pack
- PDF export specification
- printable layout direction
- full generation input format
- canonical handoff

# ============================================================
# 2. KEY FILES
# ============================================================

root_files:
- 000_SHIFT_MANAGER_INDEX.md
- 000_SHIFT_MANAGER_OVERVIEW.md
- 00_SHIFT_MANAGER_INTEGRATED.md

high_value_design_files:
- 0300002_SHIFT_MANAGER_PHYSICAL_DATABASE_SCHEMA.md
- 0300003_SHIFT_MANAGER_PHYSICAL_DDL_EXECUTION_DESIGN.md
- 0400002_SHIFT_MANAGER_STATE_TRANSITION_WITH_AUTO_GENERATION.md
- 0600002_SHIFT_MANAGER_ERP_INTEGRATION_SPECIFICATION.md
- 0600003_SHIFT_MANAGER_PDF_EXPORT_SPECIFICATION.md
- 0700002_SHIFT_MANAGER_NOTIFICATION_SPECIFICATION.md
- 0700003_SHIFT_MANAGER_NOTIFICATION_TEMPLATE_FIXED_SET.md
- 0900003_SHIFT_MANAGER_SCREEN_NAVIGATION_DESIGN.md
- 0900004_SHIFT_MANAGER_SCREEN_INPUT_ITEM_DEFINITION_TABLE.md
- 1000002_SHIFT_MANAGER_RLS_AND_AUTHORIZATION_DDL_POLICY.md
- 1200005_SHIFT_MANAGER_BUNDLED_PRE_IMPLEMENTATION_DETAIL_FIX.md
- 1200006_SHIFT_MANAGER_API_EXACT_PAYLOAD_PDF_EXTENSION.md
- 1200007_SHIFT_MANAGER_API_REQUEST_RESPONSE_EXACT_PAYLOAD_SPEC.md
- 1200008_SHIFT_MANAGER_AUTO_GENERATION_CONDITION_JSON_SPEC.md
- 1200009_SHIFT_MANAGER_GENERATION_ALGORITHM_REFINEMENT.md
- 1200010_SHIFT_MANAGER_ENDPOINT_VALIDATION_MATRIX.md
- 1300003_SHIFT_MANAGER_FULL_GENERATION_INPUT_FORMAT.md
- 9000001_SHIFT_MANAGER_CANONICAL_HANDOFF.md

sql_pack_files:
model_sql_pack:
- sql-pack/001_shift_manager_schema.sql
- sql-pack/010_shift_manager_core_tables.sql
- sql-pack/011_shift_manager_generation_tables.sql
- sql-pack/012_shift_manager_history_audit_tables.sql
- sql-pack/013_shift_manager_pdf_export_tables.sql
- sql-pack/020_shift_manager_indexes.sql
- sql-pack/030_shift_manager_updated_at_triggers.sql
- sql-pack/040_shift_manager_views.sql
- sql-pack/050_shift_manager_helper_functions.sql

security_sql_pack:
- sql-pack/100_shift_manager_rls_enable.sql
- sql-pack/101_shift_manager_rls_helpers.sql
- sql-pack/102_shift_manager_rls_draft.sql
- sql-pack/103_shift_manager_rls_publication.sql
- sql-pack/104_shift_manager_rls_share.sql
- sql-pack/105_shift_manager_rls_notification.sql
- sql-pack/106_shift_manager_rls_erp.sql
- sql-pack/107_shift_manager_rls_generation.sql

# ============================================================
# 3. FIXED CORE BUSINESS DECISIONS
# ============================================================

fixed_core_decisions:
- ShiftManager is a BusinessOS-distributed mobile-first shift application
- central value = shift creation + controlled sharing + realtime viewing
- ERP is formal enterprise master/integration target
- ShiftManager is not payroll
- ShiftManager is not accounting
- ShiftManager is not ERP replacement

authority_and_visibility_rules:
- only published shifts may be shared
- only published shifts may be exported to ERP
- drafts must not be exported
- visibility must be explicitly permitted
- publication does not mean universal visibility
- team_leader cannot publish
- team_leader cannot manage share rules
- staff can view self + explicit shared scope only
- department_manager is limited to own department
- integration_operator is linkage-centered and cannot edit content

auto_generation_rules:
- auto generation creates draft only
- auto-generated draft must remain reviewable and editable
- hard rules are absolute
- soft rules may relax with warnings
- shortages remain visible
- generation is explainable-first, not solver-first

pdf_rules:
- draft PDF is internal review use
- publication PDF is formal printable distribution
- formal printable distribution should use publication_pdf
- main print axis = publication_pdf + weekly_a4

notification_rules:
- notify only published states
- same_day default = 1 hour before shift start
- urgent_change is explicit and stronger
- auto generation itself does not notify staff before publication

# ============================================================
# 4. COMMON COMPONENT RELATION
# ============================================================

existing_common_components_reused:
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

canonical_reference_location:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/00.application-common-components

# ============================================================
# 5. IMPLEMENTATION-READY DETAIL STATUS
# ============================================================

implementation_ready_layers:
api:
- request/response payload shapes fixed
- validation matrix fixed
- DTO grouping fixed

database:
- physical execution design fixed
- SQL pack split and saved
- generation tables fixed
- PDF export history table included

security:
- RLS policy direction fixed
- RLS SQL pack split and saved

generation:
- condition_json shape fixed
- initial algorithm refinement fixed
- result/warning model fixed

ui_and_output:
- screen navigation fixed
- screen input items fixed
- printable layout direction fixed
- PDF export direction fixed

operations:
- notification templates fixed
- ERP export direction fixed

# ============================================================
# 6. WHAT IS STILL OPEN (NON-BLOCKING)
# ============================================================

non_blocking_open_items:
- final package confirmation
- UUID generation method final choice
- schedule_code issuance implementation detail
- exact print rendering engine choice
- exact push provider
- ERP transport/detail protocol
- advanced merge_into_existing_draft behavior
- advanced optimization/generation tuning
- final visual styling tokens

these_are_not_blockers_for:
- implementation start planning
- SQL review
- API scaffolding
- DTO/service splitting
- security implementation draft

# ============================================================
# 7. RECOMMENDED NEXT STEP ORDER
# ============================================================

recommended_next_steps:
1. implementation start package
2. exact execution SQL review/refinement
3. endpoint-by-endpoint service/controller skeleton planning
4. print rendering engine/detail selection
5. generation algorithm tuning only after first usable implementation
6. optional final integrated/handoff refresh after implementation starts

# ============================================================
# 8. WHEN TO COME BACK TO THIS HANDOFF
# ============================================================

reuse_this_handoff_when:
- starting implementation in a new chat
- reviewing whether the design is complete enough
- checking what detail layers are already fixed
- deciding whether new requests are design-level or implementation-level
- handing work to another role/chat

# ============================================================
# 9. CONCLUSION
# ============================================================

ShiftManager is now in a strong pre-implementation-complete state.

It already has:
- design completeness
- implementation-facing payload/detail completeness
- SQL pack completeness
- security draft completeness
- generation/PDF/notification completeness

This makes it appropriate to treat the next phase
as implementation-entry work rather than broad design discovery.


# ============================================================
# END FILE: 900.meta/9000002_SHIFT_MANAGER_PRE_IMPLEMENTATION_COMPLETION_HANDOFF.md
# ============================================================


# ============================================================
# BEGIN FILE: 900.meta/9000003_SHIFT_MANAGER_FINAL_BUSINESS_AND_PRE_IMPLEMENTATION_HANDOFF.md
# ============================================================

# ============================================================
# SHIFT MANAGER FINAL BUSINESS AND PRE-IMPLEMENTATION HANDOFF
# ============================================================

status: canonical-handoff
type: final-business-and-pre-implementation-handoff
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. CURRENT POSITION
# ============================================================

ShiftManager has reached a strong final pre-implementation state.

It is now fixed across:
- business positioning
- pricing / license / supported device policy
- subscription / trial / read-only model
- role / visibility model
- API / validation detail
- database / SQL pack detail
- generation / scheduled generation / PDF / notification detail
- additional competitive feature direction
- multilingual display/output direction
- Persona basic-set DB fit direction
- additional feature SQL exactification direction
- implementation-entry pack structure

It is appropriate to treat the next phase
as implementation-entry work.

# ============================================================
# 1. BUSINESS MODEL FIXED
# ============================================================

service_positioning:
- subscription-based application
- monthly-use application

pricing_model:
- 900 JPY per site / month
- unlimited users within site
- no initial fee
- initial 3-day trial

license_model:
- one site license covers supported devices used in the site context
- not per-user pricing
- not separate paid licenses by PC/mobile platform class

supported_devices:
- iphone
- android
- pc
- tablet

device_function_rule:
- iPhone / Android / PC / tablet share the same core feature set
- differences are limited to UI optimization
- business capability is not split by device type

# ============================================================
# 2. SUBSCRIPTION MODEL FIXED
# ============================================================

subscription_status:
- trial
- active
- grace
- inactive

inactive_policy:
- read-only mode
- self shift viewing allowed
- already visible published shift viewing allowed
- notification viewing allowed
- create/edit/generate/publish/share/export blocked

timer_relation:
- scheduled auto generation is allowed in trial/active/grace
- inactive skips scheduled execution

important_subscription_rule:
subscription gating remains app/service-side logic.
RLS preserves scope safety and does not replace feature-gate logic.

# ============================================================
# 3. CORE PRODUCT DECISIONS FIXED
# ============================================================

fixed_core_decisions:
- draft and publication are separated
- only published shifts may be shared
- only published shifts may be exported to ERP
- auto generation creates draft only
- scheduled generation creates draft only
- warnings/shortages remain visible
- publish remains human-controlled
- formal printable distribution should use publication_pdf
- same_day default = 1 hour before shift start

# ============================================================
# 4. ADDED COMPETITIVE FEATURES FIXED
# ============================================================

adopted_additions:
- headquarters site management dashboard
- shortage / difference / unconfirmed visualization
- requested day-off submission
- change confirmation flag
- lightweight multi-site analytics
- scheduled automatic draft generation

future_candidates:
- shift exchange request
- support request

# ============================================================
# 5. MULTILINGUAL SUPPORT FIXED
# ============================================================

multilingual_support:
- Japanese-first
- English-ready
- code-fixed internals
- localized display/output layer only

important_language_rules:
- do not localize API keys
- do not localize DB columns
- do not localize internal enum values
- do not localize feature codes
- do not localize error codes
- localize UI labels
- localize notification display text
- localize PDF visible labels
- localize validation/user-facing messages

# ============================================================
# 6. PERSONA BASIC-SET DB FIT FIXED
# ============================================================

db_alignment_position:
- Persona-side dump is treated as basic-set foundation reference
- ShiftManager additional tables are treated as additive app-owned tables
- confirmed reusable foundation axes are:
  - company_id
  - person_id
  - site_id

important_db_rule:
Do not pretend that the Persona basic-set dump proves
that all ShiftManager additional tables already exist.

db_fit_rule:
- reuse confirmed foundation identity axes
- keep ShiftManager operational behavior tables app-owned
- keep unresolved live-FK certainty explicitly pending where not proven

# ============================================================
# 7. ADDITIONAL FEATURE EXACTIFICATION FIXED
# ============================================================

additional_feature_exactification:
- API exact payloads fixed
- validation extensions fixed
- additional DTO inventory fixed
- screen navigation/responsibility extensions fixed
- physical DDL execution direction fixed
- authorization direction fixed
- RLS SQL pack direction fixed
- SQL review order fixed
- Persona basic-set fit aware SQL exactification fixed

# ============================================================
# 8. IMPLEMENTATION-FACING DETAIL STATUS
# ============================================================

fixed_detail_layers:
- API request/response exact payload spec
- endpoint validation matrix
- generation condition JSON spec
- generation algorithm refinement
- notification template fixed set
- screen input item definition table
- additional screen input extension
- PDF export specification
- physical DDL execution design
- additional DDL execution extension
- exact execution SQL pack
- RLS SQL pack
- additional RLS SQL pack direction
- subscription API / feature gate spec
- site subscription model
- subscription authorization policy
- supported device policy
- multilingual support policy
- multilingual implementation note
- additional feature architecture/model/runtime/flow/screen docs
- Persona basic-set DB fit docs
- additional feature SQL exactification docs

# ============================================================
# 9. HIGH-VALUE FILES
# ============================================================

high_value_files:
- 00_SHIFT_MANAGER_INTEGRATED.md
- 0300003_SHIFT_MANAGER_PHYSICAL_DDL_EXECUTION_DESIGN.md
- 0300004_SHIFT_MANAGER_SITE_SUBSCRIPTION_MODEL.md
- 0300005_SHIFT_MANAGER_ADDITIONAL_FEATURE_MODEL_EXTENSION.md
- 0300006_SHIFT_MANAGER_ADDITIONAL_FEATURE_PHYSICAL_DDL_EXECUTION_EXTENSION.md
- 0300007_SHIFT_MANAGER_PERSONA_BASIC_SET_DB_FIT_AND_ADDITIVE_PLACEMENT.md
- 0300008_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_EXACTIFICATION_WITH_PERSONA_BASIC_SET.md
- 0400003_SHIFT_MANAGER_TIMER_BASED_AUTO_GENERATION_RUNTIME.md
- 0600003_SHIFT_MANAGER_PDF_EXPORT_SPECIFICATION.md
- 0800003_SHIFT_MANAGER_SUBSCRIPTION_AND_TRIAL_POLICY.md
- 0800004_SHIFT_MANAGER_LICENSE_AND_DEVICE_POLICY.md
- 0800005_SHIFT_MANAGER_DEVICE_FUNCTION_POLICY.md
- 0800006_SHIFT_MANAGER_MULTILINGUAL_SUPPORT_POLICY.md
- 0800007_SHIFT_MANAGER_SUPPORTED_DEVICE_POLICY.md
- 1000002_SHIFT_MANAGER_RLS_AND_AUTHORIZATION_DDL_POLICY.md
- 1000003_SHIFT_MANAGER_SUBSCRIPTION_AUTHORIZATION_POLICY.md
- 1000004_SHIFT_MANAGER_ADDITIONAL_FEATURE_AUTHORIZATION_EXTENSION.md
- 1000005_SHIFT_MANAGER_ADDITIONAL_FEATURE_RLS_SQL_PACK_NOTE.md
- 1200007_SHIFT_MANAGER_API_REQUEST_RESPONSE_EXACT_PAYLOAD_SPEC.md
- 1200010_SHIFT_MANAGER_ENDPOINT_VALIDATION_MATRIX.md
- 1200011_SHIFT_MANAGER_SUBSCRIPTION_API_AND_FEATURE_GATE_SPEC.md
- 1200012_SHIFT_MANAGER_COMPETITOR_ANALYSIS_AND_ADDITIONAL_FEATURE_PROPOSAL.md
- 1200013_SHIFT_MANAGER_MULTILINGUAL_SUPPORT_IMPLEMENTATION_NOTE.md
- 1200014_SHIFT_MANAGER_ADDITIONAL_FEATURE_API_EXACT_PAYLOAD_SPEC.md
- 1200015_SHIFT_MANAGER_ADDITIONAL_FEATURE_VALIDATION_MATRIX_EXTENSION.md
- 1200016_SHIFT_MANAGER_ADDITIONAL_FEATURE_DTO_INVENTORY_EXTENSION.md
- 1200017_SHIFT_MANAGER_ADDITIONAL_FEATURE_EXACT_REFERENCE_MAP.md
- 1200018_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_REVIEW_PACK_NOTE.md
- 1300003_SHIFT_MANAGER_FULL_GENERATION_INPUT_FORMAT.md
- 1300005_SHIFT_MANAGER_PHASE_IMPLEMENTATION_STRATEGY.md
- 1300006_SHIFT_MANAGER_MULTILINGUAL_DEVELOPMENT_GUIDE.md
- 1300007_SHIFT_MANAGER_SUBSCRIPTION_AND_LICENSE_DEVELOPMENT_GUIDE.md
- 1300008_SHIFT_MANAGER_COMPETITIVE_FEATURE_DEVELOPMENT_ROADMAP.md
- 1300009_SHIFT_MANAGER_ADDITIONAL_FEATURE_DEVELOPMENT_READING_ORDER.md
- 1300010_SHIFT_MANAGER_PERSONA_BASIC_SET_DB_REVIEW_GUIDE.md
- 1300011_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_EXACTIFICATION_GUIDE.md
- 9000004_SHIFT_MANAGER_IMPLEMENTATION_START_PACKAGE.md
- 9000005_SHIFT_MANAGER_IMPLEMENTATION_PHASE_TASK_BREAKDOWN.md
- 9000006_SHIFT_MANAGER_PHASE1_DETAILED_TASK_BREAKDOWN.md
- 9000007_SHIFT_MANAGER_PHASE1_IMPLEMENTATION_ENTRY_PACK.md
- 9000008_SHIFT_MANAGER_PHASE1_IMPLEMENTATION_STARTER_PACK.md
- 9000009_SHIFT_MANAGER_PHASE2_IMPLEMENTATION_ENTRY_PACK.md
- 9000010_SHIFT_MANAGER_PHASE3_4_IMPLEMENTATION_ENTRY_PACK.md
- 9000011_SHIFT_MANAGER_PHASE5_PDF_NOTIFICATION_ERP_ENTRY_PACK.md
- 9000012_SHIFT_MANAGER_IMPLEMENTATION_MASTER_INDEX.md
- 9000013_SHIFT_MANAGER_PHASE1_IMPLEMENTATION_FILE_RESPONSIBILITY_PACK.md
- 9000014_SHIFT_MANAGER_ADDITIONAL_FEATURE_DESIGN_STRENGTHENING_SUMMARY.md
- 9000015_SHIFT_MANAGER_PERSONA_BASIC_SET_DB_ALIGNMENT_SUMMARY.md
- 9000016_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_EXACTIFICATION_SUMMARY.md

# ============================================================
# 10. SQL PACK STATUS
# ============================================================

model_sql_pack:
- 001_shift_manager_schema.sql
- 010_shift_manager_core_tables.sql
- 011_shift_manager_generation_tables.sql
- 012_shift_manager_history_audit_tables.sql
- 013_shift_manager_pdf_export_tables.sql
- 014_shift_manager_site_subscription_tables.sql
- 015_shift_manager_additional_feature_tables.sql
- 020_shift_manager_indexes.sql
- 021_shift_manager_subscription_indexes.sql
- 022_shift_manager_additional_feature_indexes.sql
- 030_shift_manager_updated_at_triggers.sql
- 040_shift_manager_views.sql
- 050_shift_manager_helper_functions.sql
- 051_shift_manager_subscription_helper_functions.sql

security_sql_pack:
- 100_shift_manager_rls_enable.sql
- 101_shift_manager_rls_helpers.sql
- 102_shift_manager_rls_draft.sql
- 103_shift_manager_rls_publication.sql
- 104_shift_manager_rls_share.sql
- 105_shift_manager_rls_notification.sql
- 106_shift_manager_rls_erp.sql
- 107_shift_manager_rls_generation.sql
- 108_shift_manager_rls_subscription_reference.sql
- 109_shift_manager_rls_requested_day_off.sql
- 110_shift_manager_rls_additional_generation.sql
- 111_shift_manager_rls_difference_confirmation.sql
- 112_shift_manager_rls_headquarters_summary.sql

# ============================================================
# 11. OPEN ITEMS THAT REMAIN INTENTIONALLY NON-FINAL
# ============================================================

non_final_items:
- exact live foreign key targets beyond confirmed basic-set axes
- UUID generation final choice
- schedule_code issuance implementation
- exact print rendering engine
- exact push provider
- ERP transport detail
- future exchange/support behavior
- advanced optimization tuning
- final visual styling tokens

# ============================================================
# 12. RECOMMENDED NEXT STEPS
# ============================================================

recommended_next_steps:
1. keep this as final design/handoff baseline
2. use 9000012 implementation master index as execution navigation
3. start implementation only from the approved implementation-entry packs
4. review SQL pack in execution-review mode before any real DB application
5. keep Persona basic-set fit assumptions explicit during later SQL approval

# ============================================================
# 13. CONCLUSION
# ============================================================

ShiftManager is now ready to be treated as:
- design complete
- pre-implementation detail substantially complete
- business model fixed
- supported device policy fixed
- multilingual support fixed in direction
- additional competitive extensions fixed in direction
- Persona basic-set DB fit fixed in direction
- additional feature exactification substantially complete
- implementation-entry ready


# ============================================================
# END FILE: 900.meta/9000003_SHIFT_MANAGER_FINAL_BUSINESS_AND_PRE_IMPLEMENTATION_HANDOFF.md
# ============================================================


# ============================================================
# BEGIN FILE: 900.meta/9000004_SHIFT_MANAGER_IMPLEMENTATION_START_PACKAGE.md
# ============================================================

# ============================================================
# SHIFT MANAGER IMPLEMENTATION START PACKAGE
# ============================================================

status: implementation-entry
type: implementation-start-package
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This package defines the minimum practical starting point
for implementation work on ShiftManager.

It is intended to reduce implementation-entry confusion by fixing:
- where to start
- what to read first
- what to implement first
- what to defer

# ============================================================
# 1. CURRENT IMPLEMENTATION ENTRY JUDGEMENT
# ============================================================

judgement:
ShiftManager is ready for implementation-entry work.

reason:
- business model fixed
- subscription/trial/read-only model fixed
- API payloads fixed
- validation matrix fixed
- SQL packs split
- RLS packs split
- generation direction fixed
- PDF direction fixed
- screen/navigation/input direction fixed

# ============================================================
# 2. FIRST READ ORDER
# ============================================================

read_order_mandatory:
1. 00_SHIFT_MANAGER_INTEGRATED.md
2. 9000003_SHIFT_MANAGER_FINAL_BUSINESS_AND_PRE_IMPLEMENTATION_HANDOFF.md
3. 1200007_SHIFT_MANAGER_API_REQUEST_RESPONSE_EXACT_PAYLOAD_SPEC.md
4. 1200010_SHIFT_MANAGER_ENDPOINT_VALIDATION_MATRIX.md
5. 0300003_SHIFT_MANAGER_PHYSICAL_DDL_EXECUTION_DESIGN.md
6. 030.model/010.shift-manager/sql-pack/*
7. 100.security/010.shift-manager/sql-pack/*
8. 1200008_SHIFT_MANAGER_AUTO_GENERATION_CONDITION_JSON_SPEC.md
9. 1200009_SHIFT_MANAGER_GENERATION_ALGORITHM_REFINEMENT.md
10. 0600003_SHIFT_MANAGER_PDF_EXPORT_SPECIFICATION.md

# ============================================================
# 3. IMPLEMENTATION PHASE ORDER
# ============================================================

recommended_phase_order:
phase_1_foundations:
- package/module skeleton
- auth/subscription/bootstrap context
- DB schema review
- SQL pack review

phase_2_core_draft:
- schedule create/list/detail
- assignment create/update/list
- draft edit screens

phase_3_publication_and_visibility:
- validate-for-publication
- publish / republish
- share rule management
- view_scope evaluation basis
- my shifts today/week

phase_4_generation:
- generation rule create
- auto-generate
- generation result / warning view

phase_5_pdf_and_notifications:
- PDF export
- notification center
- publish / republish notification flow

phase_6_erp_and_polish:
- ERP export / retry
- audit/history polish
- print detail tuning
- generation tuning

# ============================================================
# 4. MINIMUM IMPLEMENTATION START SET
# ============================================================

minimum_start_set:
backend:
- bootstrap
- schedule create/list/detail
- assignment create/update/list
- publish validation
- publish
- me/shifts/today
- me/shifts/week

database:
- schema
- core tables
- generation tables
- history tables
- indexes
- helper functions
- minimum RLS enable/helpers/draft/publication/share

ui:
- login/access confirmation
- dashboard
- shift list
- shift edit
- publish confirmation
- my shift
- week view

# ============================================================
# 5. DEFER-FIRST ITEMS
# ============================================================

defer_first_if_needed:
- board_a3 fine tuning
- advanced PDF layout variants
- merge_into_existing_draft advanced behavior
- advanced generation balancing
- richer push provider integrations
- ERP transport optimization
- nonessential visual polish

# ============================================================
# 6. IMPLEMENTATION RISKS TO WATCH
# ============================================================

implementation_risks:
- draft/publication boundary collapse
- share_rule and view_scope confusion
- subscription gate applied too late
- PDF export treated as raw business source instead of publication output
- generation logic becoming opaque too early
- RLS and app-layer checks diverging
- inactive state accidentally keeping write authority

# ============================================================
# 7. MANDATORY IMPLEMENTATION RULES
# ============================================================

mandatory_rules:
- keep publish manual
- keep generation draft-only
- keep ERP export publication-only
- keep inactive state read-only
- keep visibility explicit
- keep PDF formal distribution publication-based
- keep API payload names snake_case
- keep additive SQL change style where possible

# ============================================================
# 8. IMPLEMENTATION START CHECKLIST
# ============================================================

implementation_start_checklist:
- [ ] read integrated + final handoff
- [ ] review API payload spec
- [ ] review validation matrix
- [ ] review SQL packs
- [ ] confirm package/module split
- [ ] confirm subscription gate handling
- [ ] confirm first endpoint batch
- [ ] confirm first screen batch
- [ ] confirm SQL execution review path
- [ ] confirm test scope for phase 1

# ============================================================
# 9. NEXT RECOMMENDED OUTPUTS
# ============================================================

next_recommended_outputs:
- implementation phase task breakdown
- package/module starter skeleton
- first endpoint batch implementation plan
- first SQL execution review pack
- first UI screen responsibility pack

# ============================================================
# 10. CONCLUSION
# ============================================================

ShiftManager should now move from broad design work
to controlled implementation-entry work.

The safest starting point is:
- foundations
- draft-side core
- publication/visibility
- then generation/PDF/ERP


# ============================================================
# END FILE: 900.meta/9000004_SHIFT_MANAGER_IMPLEMENTATION_START_PACKAGE.md
# ============================================================


# ============================================================
# BEGIN FILE: 900.meta/9000005_SHIFT_MANAGER_IMPLEMENTATION_PHASE_TASK_BREAKDOWN.md
# ============================================================

# ============================================================
# SHIFT MANAGER IMPLEMENTATION PHASE TASK BREAKDOWN
# ============================================================

status: implementation-entry
type: implementation-phase-task-breakdown
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This document breaks ShiftManager implementation
into practical phases and task groups.

The goal is:
- clear starting order
- reduced implementation confusion
- controlled delivery from foundation to usable MVP

# ============================================================
# 1. PHASE OVERVIEW
# ============================================================

phase_overview:
phase_1:
- foundation / bootstrap / subscription gate

phase_2:
- draft-side core shift operations

phase_3:
- publication / visibility / viewing

phase_4:
- generation

phase_5:
- PDF / notification

phase_6:
- ERP / polish / hardening

# ============================================================
# 2. PHASE 1: FOUNDATION / BOOTSTRAP / SUBSCRIPTION GATE
# ============================================================

goal:
Make the app able to start safely,
resolve user/site context,
and block features correctly by subscription state.

tasks:
- confirm package/module starter structure
- implement bootstrap API consumption
- resolve person_id / company_id / roles / site_license_id
- resolve subscription_status
- implement feature_gate context
- implement read-only mode detection
- connect first DB schema pack review
- confirm auth/session boundary
- confirm base error handling format
- confirm base API client DTO layer

deliverables:
- bootstrap context works
- subscription/trial/inactive state visible in app
- feature gate can block write features
- basic auth/session state stable

# ============================================================
# 3. PHASE 2: DRAFT-SIDE CORE SHIFT OPERATIONS
# ============================================================

goal:
Enable draft creation and editing as the first real usable core.

tasks:
- schedule create
- schedule list
- schedule detail
- assignment create
- assignment update
- assignment list
- draft edit screen wiring
- draft-side validation basics
- overlap / period range checks
- draft-side role authority checks

deliverables:
- manager can create draft schedule
- manager can edit assignments
- draft schedule list/detail usable
- inactive state blocks write behavior

# ============================================================
# 4. PHASE 3: PUBLICATION / VISIBILITY / VIEWING
# ============================================================

goal:
Turn drafts into visible published schedules safely.

tasks:
- validate-for-publication
- publish
- republish
- publication snapshot persistence
- share rule create/update basics
- view_scope evaluation/rebuild
- my shifts today
- my shifts week
- publication assignment detail
- share preview
- publish target confirmation UX
- viewing/read-only scope checks

deliverables:
- manager can publish/republish
- viewer can see only permitted published shifts
- self-view and visible shared view work correctly

# ============================================================
# 5. PHASE 4: GENERATION
# ============================================================

goal:
Enable explainable rule-based draft auto-generation.

tasks:
- generation rule create/read basics
- condition_json validation
- slot expansion logic
- candidate collection logic
- hard-rule elimination
- staged scoring logic
- required_roles first-fill logic
- generation_result save
- generation_warning save
- generation result review screen
- generation warning list screen
- overwrite_policy support
- initial support: create_new_schedule / replace_existing_draft

deliverables:
- manager can run auto-generate
- draft is created/updated
- warnings/shortages are visible
- result remains editable by human

# ============================================================
# 6. PHASE 5: PDF / NOTIFICATION
# ============================================================

goal:
Enable practical printable output and publication-driven alerts.

tasks:
- notification list
- notification read
- publish notification generation
- republish notification generation
- same_day reminder generation
- urgent_change handling
- PDF export request handling
- publication_pdf rendering path
- draft_pdf rendering path
- export history save
- weekly_a4 first layout
- personal_compact layout
- draft watermark handling
- publication version/published_at print header

deliverables:
- user can receive/view notifications
- manager can export publication PDF
- personal PDF works where allowed
- print output is operationally usable

# ============================================================
# 7. PHASE 6: ERP / POLISH / HARDENING
# ============================================================

goal:
Connect enterprise export and stabilize quality.

tasks:
- ERP export request
- ERP linkage status detail
- ERP retry handling
- audit/history surface polish
- RLS/app-layer consistency review
- print layout tuning
- generation score tuning
- grace-state handling finalization
- site/store definition finalization
- error code consistency review
- performance/index review

deliverables:
- ERP export path works
- status/retry visibility works
- major edge cases reduced
- pre-release hardening baseline exists

# ============================================================
# 8. CROSS-PHASE MANDATORY CHECKS
# ============================================================

cross_phase_checks:
- snake_case payload consistency
- subscription gate consistency
- read-only mode correctness
- draft/publication separation
- visibility scope correctness
- publication-only ERP export
- publication-oriented printable export
- generation remains draft-only
- warnings remain explainable

# ============================================================
# 9. SAFE DEFER ITEMS
# ============================================================

safe_defer_items:
- board_a3 visual fine tuning
- advanced PDF variants
- merge_into_existing_draft advanced logic
- advanced optimizer behavior
- push provider sophistication
- nonessential visual polish
- rich analytics/dashboard extras

# ============================================================
# 10. RECOMMENDED FIRST IMPLEMENTATION BATCH
# ============================================================

first_batch_recommendation:
backend:
- bootstrap
- schedule create/list/detail
- assignment create/update/list

ui:
- home dashboard
- shift list
- shift edit
- week view

policy:
- subscription gate
- read-only mode
- basic draft authority

reason:
This gives the earliest usable core
without mixing too many advanced concerns too early.

# ============================================================
# 11. CONCLUSION
# ============================================================

ShiftManager implementation should proceed in this order:
1. foundation
2. draft core
3. publication/visibility
4. generation
5. PDF/notification
6. ERP/hardening

This keeps the system understandable and shippable.


# ============================================================
# END FILE: 900.meta/9000005_SHIFT_MANAGER_IMPLEMENTATION_PHASE_TASK_BREAKDOWN.md
# ============================================================


# ============================================================
# BEGIN FILE: 900.meta/9000006_SHIFT_MANAGER_PHASE1_DETAILED_TASK_BREAKDOWN.md
# ============================================================

# ============================================================
# SHIFT MANAGER PHASE 1 DETAILED TASK BREAKDOWN
# ============================================================

status: implementation-entry
type: phase1-detailed-task-breakdown
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This document breaks Phase 1
into concrete implementation-ready task groups.

Phase 1 focus:
- foundation
- bootstrap
- subscription / feature gate
- draft-side schedule core
- assignment core
- read-only safety

# ============================================================
# 1. PHASE 1 GOAL
# ============================================================

goal:
Make ShiftManager minimally usable and safe,
with:
- user/site context resolution
- subscription gate resolution
- draft schedule creation and editing
- assignment editing
- read-only blocking when inactive

# ============================================================
# 2. PHASE 1 SCOPE
# ============================================================

included:
- bootstrap
- site subscription status resolution
- feature gate evaluation
- read-only mode detection
- schedule create/list/detail
- assignment create/update/list
- minimal draft edit UI
- basic validation and error handling

excluded_for_now:
- publish / republish
- share management
- view_scope rebuild
- generation
- PDF export
- notification flow
- ERP export

# ============================================================
# 3. RECOMMENDED IMPLEMENTATION ORDER
# ============================================================

implementation_order:
1. package/module starter structure
2. auth/bootstrap/subscription context
3. schedule backend core
4. assignment backend core
5. minimal draft edit screens
6. read-only enforcement pass
7. phase-1 validation pass

# ============================================================
# 4. BACKEND TASKS
# ============================================================

backend_task_group_1_context:
- define bootstrap response DTO
- resolve current person/company/roles
- resolve site_license_id
- resolve subscription_status
- resolve feature_gate object
- expose read_only_mode flag

backend_task_group_2_schedule:
- implement POST /schedules
- implement GET /schedules
- implement GET /schedules/{schedule_id}
- validate target_scope_type
- validate target_period_type
- validate period range
- prepare schedule_code generation path

backend_task_group_3_assignment:
- implement POST /schedules/{schedule_id}/assignments
- implement PATCH /assignments/{assignment_id}
- implement GET /schedules/{schedule_id}/assignments
- validate person_id
- validate start_time < end_time
- validate shift_date inside schedule period
- validate overlap policy

backend_task_group_4_gate_and_errors:
- block mutation endpoints when inactive
- return subscription-related error codes
- preserve read access when inactive
- normalize error envelope usage

# ============================================================
# 5. UI TASKS
# ============================================================

ui_task_group_1_context:
- bootstrap loading state
- access denied state
- read-only banner/pill
- current subscription status indicator

ui_task_group_2_schedule:
- shift list screen
- shift create screen
- shift detail screen

ui_task_group_3_assignment:
- shift edit screen
- assignment add form
- assignment update form
- list refresh after mutation

ui_task_group_4_read_only:
- disable buttons when inactive
- show reason for blocked actions
- keep viewing screens usable

# ============================================================
# 6. DATABASE / SQL TASKS
# ============================================================

database_task_group_1_required_sql:
- 001_shift_manager_schema.sql
- 010_shift_manager_core_tables.sql
- 020_shift_manager_indexes.sql
- 030_shift_manager_updated_at_triggers.sql
- 050_shift_manager_helper_functions.sql

database_task_group_2_subscription_sql:
- 014_shift_manager_site_subscription_tables.sql
- 021_shift_manager_subscription_indexes.sql
- 051_shift_manager_subscription_helper_functions.sql

database_task_group_3_security_minimum:
- 100_shift_manager_rls_enable.sql
- 101_shift_manager_rls_helpers.sql
- 102_shift_manager_rls_draft.sql
- 103_shift_manager_rls_publication.sql
- 108_shift_manager_rls_subscription_reference.sql

# ============================================================
# 7. DTO / SERVICE / REPOSITORY START SET
# ============================================================

dto_start_set:
- bootstrap_response_dto
- subscription_status_dto
- feature_gate_dto
- schedule_create_request_dto
- schedule_summary_dto
- schedule_detail_dto
- assignment_create_request_dto
- assignment_update_request_dto
- assignment_summary_dto
- api_error_dto

service_start_set:
- bootstrap_service
- subscription_gate_service
- schedule_service
- assignment_service
- read_only_guard_service

repository_start_set:
- schedule_repository
- assignment_repository
- subscription_repository
- feature_gate_repository

# ============================================================
# 8. DEPENDENCY ORDER
# ============================================================

dependency_order:
bootstrap_service depends_on:
- auth context
- subscription_repository
- feature_gate_repository

schedule_service depends_on:
- schedule_repository
- read_only_guard_service

assignment_service depends_on:
- assignment_repository
- schedule_repository
- read_only_guard_service

ui_shift_edit depends_on:
- bootstrap context
- schedule detail API
- assignment list/create/update APIs

# ============================================================
# 9. READ-ONLY INSERTION POINTS
# ============================================================

read_only_insertion_points:
backend:
- before create schedule
- before update assignment
- before any future mutation endpoint

ui:
- before opening edit mutation actions
- disable create/edit buttons
- show explicit blocked message

important_rule:
Read-only must block mutation,
but must not hide already allowed viewing.

# ============================================================
# 10. VALIDATION PRIORITIES
# ============================================================

phase1_validation_priorities:
- subscription state resolved
- feature gate resolved
- invalid period range rejected
- invalid time range rejected
- out-of-period assignment rejected
- inactive mutation blocked
- normal viewing preserved

# ============================================================
# 11. PHASE 1 DONE CONDITIONS
# ============================================================

done_conditions:
- bootstrap returns subscription/feature gate/read_only info
- manager can create draft schedule when active/trial/grace
- manager can edit assignments when active/trial/grace
- inactive state blocks create/edit
- shift list/detail remain viewable where allowed
- error envelopes are stable
- core DTO/service/repository split exists

# ============================================================
# 12. AFTER PHASE 1
# ============================================================

next_after_phase1:
- publish / republish
- share rule management
- share preview
- visible publication viewing
- my shifts today/week

# ============================================================
# 13. CONCLUSION
# ============================================================

Phase 1 should produce:
- safe app startup context
- safe subscription gate behavior
- working draft-side schedule core
- working assignment edit core
- clear read-only blocking

This is the correct first usable implementation slice.


# ============================================================
# END FILE: 900.meta/9000006_SHIFT_MANAGER_PHASE1_DETAILED_TASK_BREAKDOWN.md
# ============================================================


# ============================================================
# BEGIN FILE: 900.meta/9000007_SHIFT_MANAGER_PHASE1_IMPLEMENTATION_ENTRY_PACK.md
# ============================================================

# ============================================================
# SHIFT MANAGER PHASE 1 IMPLEMENTATION ENTRY PACK
# ============================================================

status: implementation-entry
type: phase1-implementation-entry-pack
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This pack consolidates the practical implementation-entry details
for Phase 1 of ShiftManager.

It fixes in one place:
- backend endpoint implementation order
- DTO / Service / Repository mapping
- UI screen responsibility mapping
- SQL apply order
- test viewpoints
- phase completion conditions

# ============================================================
# 1. PHASE 1 TARGET
# ============================================================

phase_1_target:
Build the first safe and usable draft-side core with:
- bootstrap context
- subscription / feature gate resolution
- read-only enforcement
- schedule create/list/detail
- assignment create/update/list
- minimal draft edit UI

phase_1_excludes:
- publish / republish
- share rule management
- share preview
- generation
- PDF export
- ERP export
- notification generation flow

# ============================================================
# 2. BACKEND ENDPOINT IMPLEMENTATION ORDER
# ============================================================

batch_1_context:
1. GET /api/shift-manager/v1/bootstrap
2. GET /api/shift-manager/v1/subscription/status
3. GET /api/shift-manager/v1/subscription/feature-gate
4. GET /api/shift-manager/v1/subscription/trial-summary

goal:
Resolve:
- person/company/role context
- site license context
- subscription status
- read_only_mode
- feature gate map

batch_2_schedule:
5. POST /api/shift-manager/v1/schedules
6. GET /api/shift-manager/v1/schedules
7. GET /api/shift-manager/v1/schedules/{schedule_id}

goal:
Enable safe draft schedule creation and browsing.

batch_3_assignment:
8. POST /api/shift-manager/v1/schedules/{schedule_id}/assignments
9. PATCH /api/shift-manager/v1/assignments/{assignment_id}
10. GET /api/shift-manager/v1/schedules/{schedule_id}/assignments

goal:
Enable safe draft assignment editing.

batch_4_guard_finish:
11. apply read-only checks to all mutation endpoints above
12. normalize error envelope and subscription-related errors
13. add minimum audit/log hooks if needed

# ============================================================
# 3. DTO / SERVICE / REPOSITORY MAPPING
# ============================================================

dto_mapping:
bootstrap:
- bootstrap_response_dto
- profile_dto
- capability_dto
- subscription_status_dto
- feature_gate_dto

schedule:
- schedule_create_request_dto
- schedule_summary_dto
- schedule_detail_dto

assignment:
- assignment_create_request_dto
- assignment_update_request_dto
- assignment_summary_dto

common:
- api_error_dto
- request_meta_dto

service_mapping:
context_services:
- bootstrap_service
- subscription_status_service
- feature_gate_service
- read_only_guard_service

draft_services:
- schedule_service
- assignment_service

repository_mapping:
context_repositories:
- subscription_repository
- feature_gate_repository

draft_repositories:
- schedule_repository
- assignment_repository

# ============================================================
# 4. DEPENDENCY ORDER
# ============================================================

dependency_order:
bootstrap_service depends_on:
- auth/session context
- subscription_repository
- feature_gate_repository

schedule_service depends_on:
- schedule_repository
- read_only_guard_service

assignment_service depends_on:
- assignment_repository
- schedule_repository
- read_only_guard_service

ui_shift_edit depends_on:
- bootstrap context
- schedule detail endpoint
- assignment list/create/update endpoints

# ============================================================
# 5. UI SCREEN RESPONSIBILITY MAP
# ============================================================

screen_1_startup_initial_judge:
responsibility:
- load bootstrap
- resolve access
- resolve subscription/read_only mode
- route to dashboard or today view

screen_2_login_access_confirmation:
responsibility:
- show access issue
- show app access denied / unauthenticated guidance

screen_3_home_dashboard:
responsibility:
- show current role summary
- show site/subscription state
- show read-only state clearly
- route to shift list

screen_4_shift_list:
responsibility:
- list schedules
- open schedule detail
- open create flow if allowed

screen_5_shift_create:
responsibility:
- create draft schedule
- validate scope/period basics
- block create when inactive

screen_6_shift_detail:
responsibility:
- show draft schedule summary
- show assignment count
- enter edit mode if allowed

screen_7_shift_edit:
responsibility:
- list assignments
- create assignment
- edit assignment
- respect read-only state
- show validation errors clearly

screen_8_week_view:
responsibility:
- render weekly draft view
- act as main editing/navigation surface for phase 1

read_only_ui_rule:
All mutation buttons must be disabled or blocked with explicit reason
when subscription state is inactive.

# ============================================================
# 6. SQL APPLY ORDER
# ============================================================

phase1_sql_apply_order:
1. 001_shift_manager_schema.sql
2. 010_shift_manager_core_tables.sql
3. 014_shift_manager_site_subscription_tables.sql
4. 020_shift_manager_indexes.sql
5. 021_shift_manager_subscription_indexes.sql
6. 030_shift_manager_updated_at_triggers.sql
7. 050_shift_manager_helper_functions.sql
8. 051_shift_manager_subscription_helper_functions.sql
9. 100_shift_manager_rls_enable.sql
10. 101_shift_manager_rls_helpers.sql
11. 102_shift_manager_rls_draft.sql
12. 103_shift_manager_rls_publication.sql
13. 108_shift_manager_rls_subscription_reference.sql

phase1_sql_skip_for_now:
- 011 generation tables
- 012 history/audit tables
- 013 pdf export tables
- 104 share
- 105 notification
- 106 erp
- 107 generation

# ============================================================
# 7. VALIDATION PRIORITIES
# ============================================================

phase1_validation_priorities:
context:
- authenticated context exists
- site license resolved
- subscription status resolved
- feature gate resolved

schedule:
- schedule_name not empty
- valid target_scope_type
- valid target_period_type
- period_start_date <= period_end_date

assignment:
- valid schedule_id
- valid person_id
- start_time < end_time
- shift_date inside schedule period
- overlap rule checked

gate:
- inactive blocks all mutation endpoints
- viewing endpoints remain usable where allowed

# ============================================================
# 8. ERROR CODE PRIORITIES
# ============================================================

phase1_error_codes:
context:
- unauthenticated
- app_access_denied
- role_context_missing
- SITE_LICENSE_NOT_FOUND
- SITE_SUBSCRIPTION_STATE_NOT_RESOLVED

subscription:
- SUBSCRIPTION_TRIAL_EXPIRED
- SUBSCRIPTION_INACTIVE_READ_ONLY
- FEATURE_GATE_BLOCKED

schedule:
- invalid_scope_type
- invalid_period_type
- invalid_period_range
- missing_target_scope_id
- duplicate_schedule_code
- schedule_not_found

assignment:
- invalid_person_id
- invalid_time_range
- shift_date_out_of_period
- assignment_overlap
- assignment_not_found
- assignment_edit_denied

# ============================================================
# 9. TEST VIEWPOINTS
# ============================================================

phase1_test_viewpoints:
bootstrap_tests:
- active site returns read_only_mode=false
- inactive site returns read_only_mode=true
- feature gate map matches subscription state

schedule_tests:
- create schedule succeeds in active/trial/grace
- create schedule blocked in inactive
- list/detail remains viewable where allowed
- invalid period rejected

assignment_tests:
- create assignment succeeds in active/trial/grace
- update assignment succeeds in active/trial/grace
- create/update blocked in inactive
- invalid time rejected
- out-of-period assignment rejected
- overlap rejected according to policy

ui_tests:
- read-only banner shown in inactive
- disabled mutation controls shown in inactive
- allowed viewing still works

# ============================================================
# 10. PHASE 1 DONE CONDITIONS
# ============================================================

phase1_done_conditions:
- bootstrap returns role/subscription/feature gate/read_only info
- schedule create/list/detail works
- assignment create/update/list works
- read-only blocks mutation endpoints consistently
- allowed viewing remains intact
- DTO/service/repository starter split exists
- error envelope is stable for phase1 endpoints
- first weekly draft edit flow is usable

# ============================================================
# 11. PHASE 1 SAFE DEFER ITEMS
# ============================================================

safe_defer_items:
- publish / republish
- visibility scope rebuild
- share preview
- generation
- PDF export
- ERP export
- advanced UI polish
- advanced audit/history surfaces

# ============================================================
# 12. IMMEDIATE NEXT AFTER PHASE 1
# ============================================================

next_after_phase1:
- validate-for-publication
- publish / republish
- share rule basics
- my shifts today/week
- visible publication view path

# ============================================================
# 13. CONCLUSION
# ============================================================

Phase 1 should deliver the first safe usable slice of ShiftManager:
- context resolved
- subscription gate resolved
- draft schedule core usable
- assignment editing usable
- inactive state safely read-only


# ============================================================
# END FILE: 900.meta/9000007_SHIFT_MANAGER_PHASE1_IMPLEMENTATION_ENTRY_PACK.md
# ============================================================


# ============================================================
# BEGIN FILE: 900.meta/9000008_SHIFT_MANAGER_PHASE1_IMPLEMENTATION_STARTER_PACK.md
# ============================================================

# ============================================================
# SHIFT MANAGER PHASE 1 IMPLEMENTATION STARTER PACK
# ============================================================

status: implementation-entry
type: phase1-implementation-starter-pack
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This pack fixes the practical implementation starter details
for Phase 1.

It consolidates:
- backend endpoint implementation order
- SQL apply/review order
- DTO / Service / Repository starter mapping
- read-only insertion points
- phase 1 test viewpoints

# ============================================================
# 1. PHASE 1 TARGET
# ============================================================

phase_1_target:
Deliver the first safe usable draft-side slice with:
- bootstrap context
- subscription / feature gate resolution
- read-only enforcement
- schedule create/list/detail
- assignment create/update/list
- minimal weekly draft editing

# ============================================================
# 2. BACKEND ENDPOINT IMPLEMENTATION ORDER
# ============================================================

step_1_context:
- GET /api/shift-manager/v1/bootstrap
- GET /api/shift-manager/v1/subscription/status
- GET /api/shift-manager/v1/subscription/feature-gate
- GET /api/shift-manager/v1/subscription/trial-summary

required_outcome:
- current person/company/role resolved
- current site license resolved
- current subscription status resolved
- read_only_mode resolved
- feature gate map resolved

step_2_schedule_core:
- POST /api/shift-manager/v1/schedules
- GET /api/shift-manager/v1/schedules
- GET /api/shift-manager/v1/schedules/{schedule_id}

required_outcome:
- draft schedule create works
- list/detail works
- inactive blocks create

step_3_assignment_core:
- POST /api/shift-manager/v1/schedules/{schedule_id}/assignments
- PATCH /api/shift-manager/v1/assignments/{assignment_id}
- GET /api/shift-manager/v1/schedules/{schedule_id}/assignments

required_outcome:
- draft assignment create/update/list works
- inactive blocks create/update

step_4_guard_and_error_finish:
- subscription-related guard applied to all mutation endpoints above
- stable error envelope applied
- subscription-related error codes normalized

# ============================================================
# 3. SQL APPLY / REVIEW ORDER
# ============================================================

phase1_sql_apply_order:
1. 001_shift_manager_schema.sql
2. 010_shift_manager_core_tables.sql
3. 014_shift_manager_site_subscription_tables.sql
4. 020_shift_manager_indexes.sql
5. 021_shift_manager_subscription_indexes.sql
6. 030_shift_manager_updated_at_triggers.sql
7. 050_shift_manager_helper_functions.sql
8. 051_shift_manager_subscription_helper_functions.sql
9. 100_shift_manager_rls_enable.sql
10. 101_shift_manager_rls_helpers.sql
11. 102_shift_manager_rls_draft.sql
12. 103_shift_manager_rls_publication.sql
13. 108_shift_manager_rls_subscription_reference.sql

phase1_sql_review_points:
- schedule / assignment columns are sufficient for phase 1
- subscription tables support site-based gating
- helper functions match session context assumptions
- RLS draft/publication split is preserved
- subscription reference RLS does not weaken role/visibility model

phase1_sql_defer:
- 011 generation tables
- 012 history audit tables
- 013 pdf export tables
- 104 share
- 105 notification
- 106 erp
- 107 generation

# ============================================================
# 4. DTO STARTER MAPPING
# ============================================================

bootstrap_dto_set:
- bootstrap_response_dto
- profile_summary_dto
- subscription_status_dto
- feature_gate_dto
- read_only_state_dto

schedule_dto_set:
- schedule_create_request_dto
- schedule_summary_dto
- schedule_detail_dto

assignment_dto_set:
- assignment_create_request_dto
- assignment_update_request_dto
- assignment_summary_dto

common_dto_set:
- api_error_dto
- meta_request_id_dto

# ============================================================
# 5. SERVICE STARTER MAPPING
# ============================================================

context_services:
- bootstrap_service
- subscription_status_service
- feature_gate_service
- read_only_guard_service

draft_services:
- schedule_service
- assignment_service

service_rules:
- bootstrap_service resolves everything needed for initial UI routing
- read_only_guard_service is called before every mutation path in phase 1
- schedule_service must not know publication logic yet
- assignment_service must remain draft-side only in phase 1

# ============================================================
# 6. REPOSITORY STARTER MAPPING
# ============================================================

context_repositories:
- subscription_repository
- feature_gate_repository

draft_repositories:
- schedule_repository
- assignment_repository

repository_rules:
- repository layer returns app-facing stable shapes
- no publication tables are required in phase 1 write flow
- subscription repository resolves authoritative current site state

# ============================================================
# 7. UI SCREEN RESPONSIBILITY STARTER
# ============================================================

startup_initial_judge:
- call bootstrap
- route by access/subscription state

home_dashboard:
- show role summary
- show site/subscription state
- show read-only banner if inactive

shift_list:
- show schedules
- allow create only when feature gate allows

shift_create:
- create draft schedule
- validate scope/period basics
- block create when inactive

shift_detail:
- show schedule summary
- open edit if allowed

shift_edit:
- show assignment list
- allow add/update only when feature gate allows
- show validation errors
- remain viewable in read-only mode

week_view:
- primary phase 1 navigation/edit surface

# ============================================================
# 8. READ-ONLY INSERTION POINTS
# ============================================================

backend_insertion_points:
- before POST /schedules
- before POST /schedules/{schedule_id}/assignments
- before PATCH /assignments/{assignment_id}

ui_insertion_points:
- disable create button in shift_list
- disable save/create/update controls in shift_create and shift_edit
- show explicit blocked reason in inactive state
- preserve view-only navigation

important_rule:
Read-only blocks mutation,
but must not remove allowed viewing.

# ============================================================
# 9. VALIDATION PRIORITIES
# ============================================================

context_validation:
- authenticated context exists
- site license resolved
- subscription state resolved
- feature gate resolved

schedule_validation:
- schedule_name not empty
- target_scope_type valid
- target_period_type valid
- period_start_date <= period_end_date

assignment_validation:
- schedule exists
- person_id valid
- shift_date inside schedule period
- start_time < end_time
- overlap checked

gate_validation:
- inactive blocks all mutation endpoints above
- viewing endpoints remain usable where allowed

# ============================================================
# 10. ERROR CODE STARTER SET
# ============================================================

context_errors:
- unauthenticated
- app_access_denied
- role_context_missing
- SITE_LICENSE_NOT_FOUND
- SITE_SUBSCRIPTION_STATE_NOT_RESOLVED

subscription_errors:
- SUBSCRIPTION_TRIAL_EXPIRED
- SUBSCRIPTION_INACTIVE_READ_ONLY
- FEATURE_GATE_BLOCKED

schedule_errors:
- invalid_scope_type
- invalid_period_type
- invalid_period_range
- missing_target_scope_id
- duplicate_schedule_code
- schedule_not_found

assignment_errors:
- invalid_person_id
- invalid_time_range
- shift_date_out_of_period
- assignment_overlap
- assignment_not_found
- assignment_edit_denied

# ============================================================
# 11. PHASE 1 TEST VIEWPOINTS
# ============================================================

bootstrap_tests:
- active site returns read_only_mode=false
- inactive site returns read_only_mode=true
- feature gate map matches subscription state

schedule_tests:
- create succeeds in trial/active/grace
- create blocked in inactive
- list/detail remains viewable where allowed
- invalid period rejected

assignment_tests:
- create succeeds in trial/active/grace
- update succeeds in trial/active/grace
- create/update blocked in inactive
- invalid time rejected
- out-of-period rejected
- overlap rule works

ui_tests:
- read-only banner visible in inactive
- disabled mutation controls visible in inactive
- viewing still works

# ============================================================
# 12. PHASE 1 DONE CONDITIONS
# ============================================================

phase1_done_conditions:
- bootstrap returns role/subscription/feature gate/read_only info
- schedule create/list/detail works
- assignment create/update/list works
- read-only blocks mutation consistently
- viewing remains intact
- DTO/service/repository starter split exists
- stable error envelope exists
- weekly draft edit flow is usable

# ============================================================
# 13. IMMEDIATE NEXT AFTER PHASE 1
# ============================================================

next_after_phase1:
- validate-for-publication
- publish / republish
- share rule basics
- my shifts today/week
- visible publication view path

# ============================================================
# 14. CONCLUSION
# ============================================================

Phase 1 should now be implementable with a controlled and safe starting slice:
- context resolved
- subscription gate resolved
- draft schedule core usable
- assignment editing usable
- inactive safely read-only


# ============================================================
# END FILE: 900.meta/9000008_SHIFT_MANAGER_PHASE1_IMPLEMENTATION_STARTER_PACK.md
# ============================================================


# ============================================================
# BEGIN FILE: 900.meta/9000009_SHIFT_MANAGER_PHASE2_IMPLEMENTATION_ENTRY_PACK.md
# ============================================================

# ============================================================
# SHIFT MANAGER PHASE 2 IMPLEMENTATION ENTRY PACK
# ============================================================

status: implementation-entry
type: phase2-implementation-entry-pack
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This pack consolidates the implementation-entry details
for Phase 2 of ShiftManager.

It fixes in one place:
- backend endpoint implementation order
- SQL apply/review order
- DTO / Service / Repository starter mapping
- publication / visibility responsibility
- test viewpoints
- phase completion conditions

# ============================================================
# 1. PHASE 2 TARGET
# ============================================================

phase_2_target:
Deliver the first safe publication-side slice with:
- validate-for-publication
- publish
- republish
- share rule basics
- share preview
- visible publication viewing
- my shifts today/week

phase_2_prerequisite:
- Phase 1 context/bootstrap/subscription gate complete
- draft schedule and assignment core usable

phase_2_excludes:
- generation
- PDF export
- ERP export
- requested day-off
- change confirmation
- headquarters dashboard
- scheduled auto generation

# ============================================================
# 2. BACKEND ENDPOINT IMPLEMENTATION ORDER
# ============================================================

step_1_validation_and_publish:
- POST /api/shift-manager/v1/schedules/{schedule_id}/validate-for-publication
- POST /api/shift-manager/v1/schedules/{schedule_id}/publish
- POST /api/shift-manager/v1/schedules/{schedule_id}/republish

required_outcome:
- draft can be validated
- publication snapshot can be created
- republish can supersede previous active publication
- inactive blocks publish-side mutation

step_2_share_rule_basics:
- POST /api/shift-manager/v1/share-rules
- GET /api/shift-manager/v1/share-rules
- PATCH /api/shift-manager/v1/share-rules/{share_rule_id}

required_outcome:
- manager can define/update share rule basics
- share rule scope stays explicit
- inactive blocks share management

step_3_share_preview_and_view_scope:
- GET /api/shift-manager/v1/publications/{publication_id}/share-preview
- implement/reuse view_scope evaluation basis
- support publication visibility read path

required_outcome:
- publish target visibility can be previewed
- visible viewers are explainable
- publication viewing uses evaluated visibility basis

step_4_viewing_endpoints:
- GET /api/shift-manager/v1/me/shifts/today
- GET /api/shift-manager/v1/me/shifts/week
- GET /api/shift-manager/v1/publication-assignments/{publication_assignment_id}

required_outcome:
- users can see self/visible publication results only
- inactive still allows viewing where permitted

# ============================================================
# 3. SQL APPLY / REVIEW ORDER
# ============================================================

phase2_sql_apply_order:
1. 011_shift_manager_generation_tables.sql
2. 012_shift_manager_history_audit_tables.sql
3. 104_shift_manager_rls_share.sql
4. review existing 103_shift_manager_rls_publication.sql
5. review view_scope-related policies and helper usage

phase2_sql_review_points:
- publication tables support publish/republish correctly
- publication version uniqueness is enforced
- share_rule and share_rule_target shape is sufficient
- view_scope visibility basis is explicit and safe
- publish/share history tables support minimum auditability
- inactive state is handled at app/service gate, not by weakening RLS

phase2_sql_skip_for_now:
- 013 pdf export tables
- 105 notification
- 106 erp
- 107 generation
- 108 already available but not phase2-specific work
- future additional feature tables

# ============================================================
# 4. DTO STARTER MAPPING
# ============================================================

publication_dto_set:
- validate_for_publication_response_dto
- publish_request_dto
- publish_response_dto
- republish_request_dto
- republish_response_dto
- publication_summary_dto

share_dto_set:
- share_rule_create_request_dto
- share_rule_update_request_dto
- share_rule_summary_dto
- share_preview_response_dto
- view_scope_preview_dto

viewing_dto_set:
- my_shift_today_response_dto
- my_shift_week_response_dto
- publication_assignment_detail_dto

common_dto_extensions:
- validation_warning_summary_dto
- publish_target_summary_dto

# ============================================================
# 5. SERVICE STARTER MAPPING
# ============================================================

publication_services:
- publication_validation_service
- publication_service
- republish_service

share_services:
- share_rule_service
- share_preview_service
- view_scope_service

view_services:
- my_shift_view_service
- publication_assignment_view_service

service_rules:
- validation service must remain draft-side input aware
- publication service must create publication snapshot only from draft state
- republish service must supersede active publication safely
- share preview and actual visibility must use the same evaluation logic
- viewing services must never bypass visibility rules

# ============================================================
# 6. REPOSITORY STARTER MAPPING
# ============================================================

publication_repositories:
- publication_repository
- publication_assignment_repository
- publish_history_repository

share_repositories:
- share_rule_repository
- share_rule_target_repository
- view_scope_repository
- share_history_repository

view_repositories:
- publication_view_repository

repository_rules:
- draft repositories remain separate from publication repositories
- publication repository never mutates draft assignments directly
- view repositories return only visibility-safe shapes

# ============================================================
# 7. UI SCREEN RESPONSIBILITY STARTER
# ============================================================

publish_confirmation:
- show draft summary
- show shortage/warning summary
- allow publish only when feature gate and role allow

republish_confirmation:
- show current active publication summary
- show intended update path
- allow republish only when feature gate and role allow

share_rule_list:
- list share rules
- open create/edit only when allowed

share_scope_setting:
- create/update share scope
- show explicit targets clearly
- block mutation when inactive

publish_target_confirmation:
- show who will likely see the publication
- show counts/breakdown before publish

my_shift:
- show visible self/publication data only
- remain usable in inactive

today_shift:
- show today's visible assignments

week_view:
- show week's visible assignments
- phase2 publication-side viewing, not only phase1 draft editing

# ============================================================
# 8. READ-ONLY INSERTION POINTS
# ============================================================

backend_insertion_points:
- before validate-for-publication
- before publish
- before republish
- before create/update share rule

ui_insertion_points:
- disable publish/republish buttons when inactive
- disable share rule create/edit controls when inactive
- keep my shift / today / week viewing usable

important_rule:
Inactive blocks publish/share mutation,
but must not remove already allowed publication viewing.

# ============================================================
# 9. VALIDATION PRIORITIES
# ============================================================

publish_validation:
- schedule exists
- schedule is draft
- caller has publish authority
- publish readiness summary can be calculated
- publication version can be issued

republish_validation:
- schedule exists
- active publication exists
- caller has republish authority
- new snapshot can be created
- supersede can complete safely

share_validation:
- rule_name not empty
- target list not empty
- scope_type valid
- visibility_level valid
- target_type valid
- target_id valid in company context

viewing_validation:
- visible publication only
- self/explicitly visible scope only
- no uncontrolled other-person access

# ============================================================
# 10. ERROR CODE STARTER SET
# ============================================================

publication_errors:
- schedule_not_found
- schedule_not_draft
- validation_execution_denied
- validation_not_ready
- publish_denied
- publication_snapshot_failed
- publication_version_conflict
- republish_denied
- active_publication_not_found
- supersede_failed

share_errors:
- share_rule_invalid
- empty_targets
- share_manage_denied
- invalid_target_type
- invalid_target_id
- cross_company_target_denied
- visibility_evaluation_failed

viewing_errors:
- publication_not_found
- publication_access_denied
- publication_assignment_not_found
- person_visibility_denied

subscription_errors:
- SUBSCRIPTION_INACTIVE_READ_ONLY
- FEATURE_GATE_BLOCKED

# ============================================================
# 11. PHASE 2 TEST VIEWPOINTS
# ============================================================

publish_tests:
- validate succeeds for valid draft
- publish succeeds for valid draft in active/trial/grace
- publish blocked in inactive
- republish supersedes old active publication
- publish output is publication-based snapshot

share_tests:
- create/update share rule succeeds when allowed
- create/update blocked in inactive
- invalid targets rejected
- share preview returns understandable viewer scope

viewing_tests:
- my shifts today/week returns only visible publication data
- self visible data remains viewable in inactive
- unauthorized other-person visibility is denied

ui_tests:
- publish/republish controls disabled in inactive
- share controls disabled in inactive
- publication viewing screens remain usable where allowed

# ============================================================
# 12. PHASE 2 DONE CONDITIONS
# ============================================================

phase2_done_conditions:
- validate-for-publication works
- publish works
- republish works
- share rule basics work
- share preview works
- my shifts today/week works on publication basis
- inactive blocks publish/share mutation consistently
- visibility remains explicit and safe

# ============================================================
# 13. IMMEDIATE NEXT AFTER PHASE 2
# ============================================================

next_after_phase2:
- generation rule and auto-generate
- generation result/warning viewing
- PDF export
- notification flow
- ERP export

# ============================================================
# 14. CONCLUSION
# ============================================================

Phase 2 should deliver the first safe publication-side slice of ShiftManager:
- publishable
- shareable
- visibility-safe
- still protected by subscription read-only rules


# ============================================================
# END FILE: 900.meta/9000009_SHIFT_MANAGER_PHASE2_IMPLEMENTATION_ENTRY_PACK.md
# ============================================================


# ============================================================
# BEGIN FILE: 900.meta/9000010_SHIFT_MANAGER_PHASE3_4_IMPLEMENTATION_ENTRY_PACK.md
# ============================================================

# ============================================================
# SHIFT MANAGER PHASE 3-4 IMPLEMENTATION ENTRY PACK
# ============================================================

status: implementation-entry
type: phase3-4-implementation-entry-pack
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This pack consolidates the implementation-entry details
for Phase 3 and Phase 4 of ShiftManager.

It fixes in one place:
- generation implementation order
- PDF / notification / ERP preparation boundary
- DTO / Service / Repository starter mapping
- additional feature integration points
- test viewpoints
- phase completion conditions

# ============================================================
# 1. PHASE 3-4 TARGET
# ============================================================

phase_3_target:
Deliver the first safe generation-side slice with:
- generation rule create/read/update basics
- condition_json validation
- draft auto-generate
- generation_result / generation_warning visibility
- manager reviewable generated draft

phase_4_target:
Deliver the first practical operation-extended slice with:
- scheduled auto-generation basics
- requested day-off input basics
- change confirmation basis
- shortage / difference / unconfirmed visualization basis
- lightweight multi-site visibility preparation

phase_3_4_excludes:
- full PDF rendering completion
- full notification flow completion
- ERP export completion
- exchange/support implementation
- advanced optimizer behavior

# ============================================================
# 2. BACKEND IMPLEMENTATION ORDER
# ============================================================

step_1_generation_rule:
- POST /api/shift-manager/v1/generation-rules
- GET /api/shift-manager/v1/generation-rules
- PATCH /api/shift-manager/v1/generation-rules/{generation_rule_id}

required_outcome:
- generation rule CRUD basics work
- condition_json is stored safely
- manager-only access is preserved

step_2_auto_generation_core:
- POST /api/shift-manager/v1/schedules/auto-generate
- GET /api/shift-manager/v1/schedules/{schedule_id}/generation-result
- GET /api/shift-manager/v1/schedules/{schedule_id}/generation-warnings

required_outcome:
- draft can be generated from rule
- generation_result persists
- generation_warning persists
- generated draft remains editable
- inactive blocks generation mutation

step_3_requested_day_off_basics:
- POST /api/shift-manager/v1/requested-day-off
- GET /api/shift-manager/v1/requested-day-off/me
- GET /api/shift-manager/v1/requested-day-off/review
- PATCH /api/shift-manager/v1/requested-day-off/{requested_day_off_id}

required_outcome:
- staff can submit requested day off
- manager can review/approve/reject
- approved requests can later feed planning/generation

step_4_scheduled_generation_basics:
- POST /api/shift-manager/v1/auto-generation-schedules
- GET /api/shift-manager/v1/auto-generation-schedules
- PATCH /api/shift-manager/v1/auto-generation-schedules/{auto_generation_schedule_id}
- POST /api/shift-manager/v1/auto-generation-schedules/{auto_generation_schedule_id}/run-now
- GET /api/shift-manager/v1/auto-generation-schedules/{auto_generation_schedule_id}/executions

required_outcome:
- weekly/monthly timer definition saved
- run-now works
- execution history persists
- inactive causes skip, not execution
- timer remains draft-only

step_5_difference_confirmation_basis:
- GET /api/shift-manager/v1/publications/{publication_id}/differences
- POST /api/shift-manager/v1/publications/{publication_id}/confirm-change
- GET /api/shift-manager/v1/publications/{publication_id}/change-confirmation-status

required_outcome:
- republish differences are visible
- affected viewers can mark confirmed
- manager can see pending vs confirmed counts

step_6_headquarters_preparation_basis:
- GET /api/shift-manager/v1/headquarters/site-dashboard
- GET /api/shift-manager/v1/headquarters/site-analytics

required_outcome:
- site-level counts can be shown
- shortage/unconfirmed/failed-export placeholders can be surfaced
- lightweight multi-site visibility exists

# ============================================================
# 3. SQL APPLY / REVIEW ORDER
# ============================================================

phase3_4_sql_apply_order:
1. 011_shift_manager_generation_tables.sql
2. 012_shift_manager_history_audit_tables.sql
3. review 014_shift_manager_site_subscription_tables.sql reuse
4. add additional feature tables in later exact pack:
   - shift_requested_day_off
   - shift_publication_difference
   - shift_change_confirmation
   - shift_auto_generation_schedule
   - shift_auto_generation_execution
   - shift_site_dashboard_snapshot
   - shift_site_analytics_snapshot
5. review 107_shift_manager_rls_generation.sql
6. review 105_shift_manager_rls_notification.sql only as preparation boundary
7. review 108_shift_manager_rls_subscription_reference.sql for timer skip logic dependency

phase3_4_sql_review_points:
- generation result/warning tables are sufficient
- requested day-off status model is simple enough
- timer schedule fields support weekly / monthly_fixed_day / monthly_last_day
- difference / confirmation model is publication-safe
- site analytics stays lightweight
- timer execution never weakens publish manual rule

# ============================================================
# 4. DTO STARTER MAPPING
# ============================================================

generation_rule_dto_set:
- generation_rule_create_request_dto
- generation_rule_update_request_dto
- generation_rule_summary_dto
- generation_rule_detail_dto

generation_execution_dto_set:
- auto_generate_request_dto
- generation_result_dto
- generation_warning_dto
- generation_summary_dto

requested_day_off_dto_set:
- requested_day_off_submit_request_dto
- requested_day_off_summary_dto
- requested_day_off_review_request_dto

scheduled_generation_dto_set:
- auto_generation_schedule_create_request_dto
- auto_generation_schedule_update_request_dto
- auto_generation_schedule_summary_dto
- auto_generation_execution_summary_dto

difference_confirmation_dto_set:
- publication_difference_summary_dto
- change_confirmation_request_dto
- change_confirmation_status_dto

headquarters_dto_set:
- site_dashboard_summary_dto
- site_analytics_summary_dto

# ============================================================
# 5. SERVICE STARTER MAPPING
# ============================================================

generation_services:
- generation_rule_service
- auto_generation_service
- generation_result_service

requested_day_off_services:
- requested_day_off_service
- requested_day_off_review_service

scheduled_generation_services:
- auto_generation_schedule_service
- auto_generation_execution_service
- timer_dispatch_service

difference_confirmation_services:
- publication_difference_service
- change_confirmation_service

headquarters_services:
- site_dashboard_service
- site_analytics_service

service_rules:
- generation service remains draft-only
- timer_dispatch_service must never publish
- requested day-off service is planning input, not publication mutation
- difference service compares publication versions, not raw draft rows
- headquarters services remain lightweight summary services

# ============================================================
# 6. REPOSITORY STARTER MAPPING
# ============================================================

generation_repositories:
- generation_rule_repository
- generation_result_repository
- generation_warning_repository

requested_day_off_repositories:
- requested_day_off_repository

scheduled_generation_repositories:
- auto_generation_schedule_repository
- auto_generation_execution_repository

difference_confirmation_repositories:
- publication_difference_repository
- change_confirmation_repository

headquarters_repositories:
- site_dashboard_repository
- site_analytics_repository

repository_rules:
- generation repositories must not mutate publication tables directly
- scheduled generation repositories track schedule and execution separately
- difference repository uses publication basis only
- dashboard repository returns summary-safe shapes only

# ============================================================
# 7. UI SCREEN RESPONSIBILITY STARTER
# ============================================================

generation_rule_list:
- list rules
- open create/edit
- manager-side only

generation_rule_edit:
- edit condition_json inputs
- validate business_days / slot_requirements / person_constraints

auto_generation_result_review:
- show generated draft summary
- show warnings and shortages
- open generated draft for human correction

generation_warning_list:
- show warnings with severity and target slot/date context

requested_day_off_submit:
- staff submits date/note
- shows current request status

requested_day_off_review:
- manager reviews submitted requests
- approve/reject/cancel as policy allows

auto_generation_schedule_list:
- list scheduled generation definitions
- show active/inactive
- show next execution conceptually

auto_generation_schedule_edit:
- support weekly / monthly_fixed_day / monthly_last_day
- support execution time
- support next_week / next_month

auto_generation_schedule_execution_history:
- show scheduled/run-now results
- show success/failed/skipped

publication_difference_detail:
- show before/after changes after republish

change_confirmation_status:
- show pending/confirmed counts by affected users

headquarters_site_dashboard:
- show site cards and key risk counts

multi_site_analytics:
- show lightweight site summaries only

# ============================================================
# 8. READ-ONLY / SUBSCRIPTION INSERTION POINTS
# ============================================================

backend_insertion_points:
- before generation rule create/update
- before auto-generate
- before requested day-off review mutation
- before auto-generation schedule create/update/run-now
- before confirmation mutation where needed by business rule

ui_insertion_points:
- disable generation management in inactive
- disable timer schedule create/update/run-now in inactive
- keep result/history viewing usable where allowed
- requested day-off staff submission may follow active/trial/grace only unless later relaxed

important_rule:
Inactive blocks generation and timer mutation.
Timer execution must skip in inactive state.

# ============================================================
# 9. VALIDATION PRIORITIES
# ============================================================

generation_rule_validation:
- rule_name not empty
- condition_json object
- slot_requirements at least 1
- times valid
- weekdays valid
- counts positive

auto_generation_validation:
- generation_rule exists
- period range valid
- overwrite_policy valid
- scope compatible with rule
- generation warnings persist correctly

requested_day_off_validation:
- requested_date valid
- duplicate/conflicting request policy respected
- review action status valid

scheduled_generation_validation:
- schedule_type valid
- execution_time valid
- weekly_day_of_week valid when weekly
- monthly_day valid when monthly_fixed_day
- monthly_last_day flag coherent when monthly_last_day
- target_period_mode valid
- generation_rule exists and active

difference_confirmation_validation:
- publication exists
- difference rows exist when expected
- affected viewer only confirms own visible change set

headquarters_validation:
- site summaries scoped safely
- heavyweight BI behavior avoided

# ============================================================
# 10. ERROR CODE STARTER SET
# ============================================================

generation_errors:
- invalid_generation_rule
- invalid_condition_json
- empty_slot_requirements
- invalid_weekday
- invalid_slot_time
- generation_rule_manage_denied
- generation_rule_not_found
- auto_generate_denied
- draft_generation_failed

requested_day_off_errors:
- invalid_requested_date
- duplicate_requested_day_off
- requested_day_off_not_found
- requested_day_off_review_denied
- invalid_requested_day_off_status

scheduled_generation_errors:
- invalid_schedule_type
- invalid_execution_time
- invalid_monthly_day
- invalid_target_period_mode
- auto_generation_schedule_not_found
- auto_generation_schedule_manage_denied
- SUBSCRIPTION_INACTIVE_READ_ONLY
- AUTO_GENERATION_TARGET_ALREADY_EXISTS
- GENERATION_RULE_INACTIVE

difference_confirmation_errors:
- publication_difference_not_found
- change_confirmation_denied
- invalid_confirmation_state

headquarters_errors:
- site_dashboard_access_denied
- site_analytics_access_denied

# ============================================================
# 11. PHASE 3-4 TEST VIEWPOINTS
# ============================================================

generation_tests:
- generation rule create/update succeeds when allowed
- generation blocked in inactive
- auto-generate produces editable draft
- warnings/shortages visible
- rule JSON validation catches bad structures

requested_day_off_tests:
- staff can submit
- manager can review
- invalid status changes rejected

scheduled_generation_tests:
- weekly schedule saved correctly
- monthly_fixed_day schedule saved correctly
- monthly_last_day schedule saved correctly
- run-now works
- inactive skips execution
- timer never publishes automatically

difference_confirmation_tests:
- republish differences can be read
- affected viewer can confirm
- manager can see pending/confirmed summary

headquarters_tests:
- site dashboard returns lightweight summary data
- site analytics remains lightweight and scoped

# ============================================================
# 12. PHASE 3-4 DONE CONDITIONS
# ============================================================

phase3_4_done_conditions:
- generation rule basics work
- auto-generate works
- generation result/warning review works
- requested day-off basics work
- scheduled auto-generation basics work
- difference / confirmation basis works
- headquarters lightweight summary basis works
- inactive safely blocks timer/generation mutation
- timer remains draft-only

# ============================================================
# 13. IMMEDIATE NEXT AFTER PHASE 3-4
# ============================================================

next_after_phase3_4:
- PDF export implementation batch
- notification implementation batch
- ERP export implementation batch
- optional requested day-off to generation deeper linkage
- optional headquarters polish
- future exchange/support design freeze or defer decision

# ============================================================
# 14. CONCLUSION
# ============================================================

Phase 3-4 should deliver the next competitive and operationally strong slice:
- rule-based draft generation
- timer-based draft preparation
- requested day-off input
- republish difference / confirmation visibility
- lightweight multi-site management visibility


# ============================================================
# END FILE: 900.meta/9000010_SHIFT_MANAGER_PHASE3_4_IMPLEMENTATION_ENTRY_PACK.md
# ============================================================


# ============================================================
# BEGIN FILE: 900.meta/9000011_SHIFT_MANAGER_PHASE5_PDF_NOTIFICATION_ERP_ENTRY_PACK.md
# ============================================================

# ============================================================
# SHIFT MANAGER PHASE 5 PDF NOTIFICATION ERP ENTRY PACK
# ============================================================

status: implementation-entry
type: phase5-pdf-notification-erp-entry-pack
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This pack consolidates the implementation-entry details
for the PDF / notification / ERP extension phase.

It fixes in one place:
- backend implementation order
- SQL apply/review order
- DTO / Service / Repository starter mapping
- PDF / notification / ERP responsibility boundaries
- test viewpoints
- phase completion conditions

# ============================================================
# 1. PHASE TARGET
# ============================================================

phase_target:
Deliver the first practical operation-complete extension with:
- PDF export
- notification flow
- ERP export / retry
- export/linkage visibility
- publication-oriented operational completion

phase_prerequisite:
- Phase 1 draft-side core complete
- Phase 2 publication / visibility complete
- Phase 3-4 generation and scheduled generation foundations available or intentionally deferred

phase_excludes:
- advanced board layout tuning
- advanced notification channel expansion
- ERP transport optimization
- exchange/support implementation
- heavyweight analytics

# ============================================================
# 2. BACKEND IMPLEMENTATION ORDER
# ============================================================

step_1_pdf_export:
- POST /api/shift-manager/v1/schedules/{schedule_id}/export-pdf
- POST /api/shift-manager/v1/publications/{publication_id}/export-pdf
- GET /api/shift-manager/v1/pdf-export-history

required_outcome:
- draft_pdf works for internal review
- publication_pdf works for formal printable distribution
- export history persists
- inactive blocks new PDF export
- publication basis remains primary for formal distribution

step_2_notification_basics:
- GET /api/shift-manager/v1/me/notifications
- POST /api/shift-manager/v1/me/notifications/{notification_id}/read
- implement publish notification generation
- implement republish notification generation
- implement same_day notification scheduling basis
- implement urgent_change notification basis

required_outcome:
- users can view notifications
- read state works
- publish/republish creates notification rows
- same_day basis exists
- failed delivery can remain retryable later

step_3_erp_export_basics:
- POST /api/shift-manager/v1/publications/{publication_id}/export-erp
- GET /api/shift-manager/v1/publications/{publication_id}/erp-linkage
- POST /api/shift-manager/v1/publications/{publication_id}/retry-export-erp

required_outcome:
- ERP export is publication-based
- linkage state persists
- retry path exists
- inactive blocks ERP export mutation
- export status is visible to allowed roles

step_4_operational_finish:
- normalize PDF/notification/ERP error envelopes
- align export history / linkage visibility with role rules
- confirm read-only consistency
- confirm publication-only export discipline

# ============================================================
# 3. SQL APPLY / REVIEW ORDER
# ============================================================

phase_sql_apply_order:
1. 013_shift_manager_pdf_export_tables.sql
2. review shift_notification from 010 core tables
3. review erp_linkage_state from 010 core tables
4. 105_shift_manager_rls_notification.sql
5. 106_shift_manager_rls_erp.sql
6. review 103_shift_manager_rls_publication.sql for publication-based export/read
7. add later exact pack if needed for delivery queue helpers or PDF history extensions

phase_sql_review_points:
- PDF export history shape is sufficient
- export_type / layout_type enums match design
- notification table covers publish/republish/same_day/urgent_change
- ERP linkage state covers pending/exporting/success/failed
- retry_count and last_error fields are sufficient
- inactive mutation blocking stays in service/app gate, not by weakening RLS

phase_sql_skip_for_now:
- advanced channel-specific tables
- advanced ERP transport detail tables
- advanced PDF rendering helper tables

# ============================================================
# 4. DTO STARTER MAPPING
# ============================================================

pdf_dto_set:
- pdf_export_request_dto
- pdf_export_result_dto
- pdf_export_history_summary_dto

notification_dto_set:
- notification_summary_dto
- notification_read_request_dto
- notification_delivery_summary_dto

erp_dto_set:
- erp_export_request_dto
- erp_linkage_state_dto
- erp_retry_request_dto
- erp_export_result_dto

common_dto_extensions:
- export_status_summary_dto
- delivery_error_summary_dto
- linkage_error_summary_dto

# ============================================================
# 5. SERVICE STARTER MAPPING
# ============================================================

pdf_services:
- pdf_export_service
- pdf_render_service
- pdf_export_history_service

notification_services:
- notification_service
- publish_notification_service
- same_day_notification_service
- urgent_change_notification_service

erp_services:
- erp_export_service
- erp_linkage_service
- erp_retry_service

service_rules:
- pdf_export_service must distinguish draft basis and publication basis correctly
- publication_pdf must be the primary formal printable output
- notification generation must happen from published state only
- same_day notification scheduling must not imply publish
- erp_export_service must never use raw draft data
- retry must preserve publication-based export identity

# ============================================================
# 6. REPOSITORY STARTER MAPPING
# ============================================================

pdf_repositories:
- pdf_export_history_repository
- publication_export_repository
- draft_export_repository

notification_repositories:
- notification_repository

erp_repositories:
- erp_linkage_repository
- publication_export_repository

repository_rules:
- PDF export repositories must not confuse draft and publication bases
- notification repository must be target-person centered
- ERP repository must remain publication-centered
- export history and linkage state must be queryable by allowed managers/operators

# ============================================================
# 7. UI SCREEN RESPONSIBILITY STARTER
# ============================================================

pdf_export_setting:
- select export_type
- select layout_type
- toggle include_memo if allowed
- block export when inactive

pdf_export_preview:
- preview printable structure when supported
- distinguish DRAFT and publication output clearly

pdf_export_history:
- show generated files/history summary
- show type/layout/generated_at

notification_center:
- list notifications
- mark read
- show urgent vs normal distinction
- remain usable in inactive

erp_linkage_status:
- show export status
- show last error
- show retry if allowed

erp_export_confirmation:
- confirm export intent
- show publication context
- block export when inactive

error_detail:
- show failure reason for export/delivery issues

# ============================================================
# 8. READ-ONLY / SUBSCRIPTION INSERTION POINTS
# ============================================================

backend_insertion_points:
- before POST schedule/export-pdf
- before POST publication/export-pdf
- before POST publication/export-erp
- before POST publication/retry-export-erp

ui_insertion_points:
- disable PDF export controls when inactive
- disable ERP export/retry controls when inactive
- keep notification center readable in inactive
- keep PDF history / linkage status readable where allowed

important_rule:
Inactive blocks new export mutation,
but must not remove already allowed viewing/history visibility.

# ============================================================
# 9. VALIDATION PRIORITIES
# ============================================================

pdf_validation:
- target exists
- export_type valid
- layout_type valid
- target/export_type compatibility valid
- publication basis used for formal distribution
- export history save succeeds

notification_validation:
- target_person_id matches visibility/recipient rules
- notification_type valid
- publish/republish notifications come from publication events only
- read state update allowed only for self/allowed manager exception

erp_validation:
- publication exists
- publication active
- export_mode valid
- duplicate active export request prevented
- publication-based ERP payload build succeeds
- retry allowed only where linkage state supports it

# ============================================================
# 10. ERROR CODE STARTER SET
# ============================================================

pdf_errors:
- pdf_target_not_found
- invalid_export_type
- invalid_layout_type
- export_target_mismatch
- pdf_export_denied
- pdf_render_failed
- pdf_history_save_failed
- SUBSCRIPTION_INACTIVE_READ_ONLY

notification_errors:
- notification_not_found
- notification_access_denied
- notification_update_denied
- notification_delivery_failed

erp_errors:
- publication_not_found
- publication_not_active
- erp_export_denied
- invalid_export_mode
- duplicate_export_request
- erp_payload_build_failed
- linkage_state_not_found
- erp_retry_denied
- SUBSCRIPTION_INACTIVE_READ_ONLY

# ============================================================
# 11. PHASE TEST VIEWPOINTS
# ============================================================

pdf_tests:
- draft_pdf succeeds for valid draft in active/trial/grace
- publication_pdf succeeds for valid publication in active/trial/grace
- export blocked in inactive
- history row saved
- DRAFT vs publication distinction visible

notification_tests:
- publish creates notification rows
- republish creates notification rows
- same_day basis works
- read update works
- inactive still allows notification viewing

erp_tests:
- export succeeds from active publication only
- export blocked in inactive
- linkage state view works for allowed roles
- retry works only in allowed failed states

ui_tests:
- PDF export controls disabled in inactive
- ERP export controls disabled in inactive
- notification center still works in inactive
- export history / linkage status screens remain readable where allowed

# ============================================================
# 12. PHASE DONE CONDITIONS
# ============================================================

phase_done_conditions:
- PDF export works in first practical form
- notification center works
- publish/republish notification generation works
- ERP export/retry works in first practical form
- export/linkage visibility works
- inactive blocks new export mutation consistently
- publication-only export discipline is preserved

# ============================================================
# 13. IMMEDIATE NEXT AFTER THIS PHASE
# ============================================================

next_after_phase:
- board_a3 / advanced layout tuning
- richer channel integration
- ERP transport optimization
- requested day-off deeper generation linkage
- headquarters polish
- future exchange/support decision

# ============================================================
# 14. CONCLUSION
# ============================================================

This phase should make ShiftManager operationally complete enough to feel real:
- printable
- notifyable
- exportable
- still safe under publication/read-only rules


# ============================================================
# END FILE: 900.meta/9000011_SHIFT_MANAGER_PHASE5_PDF_NOTIFICATION_ERP_ENTRY_PACK.md
# ============================================================


# ============================================================
# BEGIN FILE: 900.meta/9000012_SHIFT_MANAGER_IMPLEMENTATION_MASTER_INDEX.md
# ============================================================

# ============================================================
# SHIFT MANAGER IMPLEMENTATION MASTER INDEX
# ============================================================

status: implementation-entry
type: implementation-master-index
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This document provides the master implementation index
for ShiftManager.

It fixes:
- what to read first
- which phase files exist
- what each phase covers
- what order implementation should follow
- what remains intentionally deferred

# ============================================================
# 1. READ FIRST
# ============================================================

mandatory_first_read:
1. 00_SHIFT_MANAGER_INTEGRATED.md
2. 9000003_SHIFT_MANAGER_FINAL_BUSINESS_AND_PRE_IMPLEMENTATION_HANDOFF.md
3. 9000004_SHIFT_MANAGER_IMPLEMENTATION_START_PACKAGE.md
4. 9000005_SHIFT_MANAGER_IMPLEMENTATION_PHASE_TASK_BREAKDOWN.md

important_reference_after_that:
5. 1200007_SHIFT_MANAGER_API_REQUEST_RESPONSE_EXACT_PAYLOAD_SPEC.md
6. 1200010_SHIFT_MANAGER_ENDPOINT_VALIDATION_MATRIX.md
7. 1200011_SHIFT_MANAGER_SUBSCRIPTION_API_AND_FEATURE_GATE_SPEC.md
8. 1200012_SHIFT_MANAGER_COMPETITOR_ANALYSIS_AND_ADDITIONAL_FEATURE_PROPOSAL.md
9. 1200013_SHIFT_MANAGER_MULTILINGUAL_SUPPORT_IMPLEMENTATION_NOTE.md
10. 0300003_SHIFT_MANAGER_PHYSICAL_DDL_EXECUTION_DESIGN.md
11. 030.model/010.shift-manager/sql-pack/*
12. 100.security/010.shift-manager/sql-pack/*

# ============================================================
# 2. IMPLEMENTATION PACK FILES
# ============================================================

implementation_pack_files:
- 9000004_SHIFT_MANAGER_IMPLEMENTATION_START_PACKAGE.md
- 9000005_SHIFT_MANAGER_IMPLEMENTATION_PHASE_TASK_BREAKDOWN.md
- 9000006_SHIFT_MANAGER_PHASE1_DETAILED_TASK_BREAKDOWN.md
- 9000007_SHIFT_MANAGER_PHASE1_IMPLEMENTATION_ENTRY_PACK.md
- 9000008_SHIFT_MANAGER_PHASE1_IMPLEMENTATION_STARTER_PACK.md
- 9000009_SHIFT_MANAGER_PHASE2_IMPLEMENTATION_ENTRY_PACK.md
- 9000010_SHIFT_MANAGER_PHASE3_4_IMPLEMENTATION_ENTRY_PACK.md
- 9000011_SHIFT_MANAGER_PHASE5_PDF_NOTIFICATION_ERP_ENTRY_PACK.md
- 9000013_SHIFT_MANAGER_PHASE1_IMPLEMENTATION_FILE_RESPONSIBILITY_PACK.md

# ============================================================
# 3. PHASE COVERAGE SUMMARY
# ============================================================

phase_1:
- bootstrap
- subscription / feature gate
- read-only enforcement
- schedule create/list/detail
- assignment create/update/list

phase_2:
- validate-for-publication
- publish / republish
- share rule basics
- share preview
- my shifts today/week
- publication visibility

phase_3_4:
- generation rules
- auto-generate
- requested day-off
- scheduled auto-generation
- difference / confirmation
- headquarters lightweight visibility

phase_5:
- PDF export
- notification center / generation
- ERP export / retry
- export/linkage visibility

cross_phase_fixed_axes:
- site-based pricing
- multilingual display/output layer
- same core features on PC and smartphone
- publication-only ERP export
- draft-only generation
- read-only when inactive

# ============================================================
# 4. RECOMMENDED EXECUTION ORDER
# ============================================================

recommended_execution_order:
1. Phase 1
2. Phase 2
3. Phase 3-4
4. Phase 5

# ============================================================
# 5. CONCLUSION
# ============================================================

ShiftManager now has a full practical implementation path:
- foundation
- draft core
- publication/visibility
- generation/advanced operations
- PDF/notification/ERP
- multilingual-ready display layer

This master index should be used
as the top implementation navigation document.


# ============================================================
# END FILE: 900.meta/9000012_SHIFT_MANAGER_IMPLEMENTATION_MASTER_INDEX.md
# ============================================================


# ============================================================
# BEGIN FILE: 900.meta/9000013_SHIFT_MANAGER_PHASE1_IMPLEMENTATION_FILE_RESPONSIBILITY_PACK.md
# ============================================================

# ============================================================
# SHIFT MANAGER PHASE 1 IMPLEMENTATION FILE RESPONSIBILITY PACK
# ============================================================

status: implementation-entry
type: phase1-implementation-file-responsibility-pack
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This document fixes the file-level responsibility allocation
for Phase 1 implementation.

It clarifies:
- package split
- controller files
- service files
- repository files
- DTO files
- screen / ViewModel files
- creation order

# ============================================================
# 1. PHASE 1 TARGET
# ============================================================

phase_1_target:
- bootstrap context
- subscription / feature gate
- read-only enforcement
- schedule create/list/detail
- assignment create/update/list
- minimal draft edit UI

# ============================================================
# 2. PACKAGE DIRECTION
# ============================================================

recommended_root_package:
- com.lsam.shiftmanager

recommended_phase1_packages:
- com.lsam.shiftmanager.bootstrap
- com.lsam.shiftmanager.subscription
- com.lsam.shiftmanager.schedule
- com.lsam.shiftmanager.assignment
- com.lsam.shiftmanager.common
- com.lsam.shiftmanager.ui.startup
- com.lsam.shiftmanager.ui.dashboard
- com.lsam.shiftmanager.ui.schedule
- com.lsam.shiftmanager.ui.assignment

# ============================================================
# 3. CONTROLLER RESPONSIBILITY
# ============================================================

controller_files:
- BootstrapController
- SubscriptionController
- ScheduleController
- AssignmentController

controller_responsibility:

BootstrapController:
- handle bootstrap endpoint response composition
- return person/company/role/site/subscription/feature gate/read_only

SubscriptionController:
- return subscription status
- return feature gate
- return trial summary

ScheduleController:
- create schedule
- list schedules
- get schedule detail

AssignmentController:
- create assignment
- update assignment
- list assignments by schedule

controller_rules:
- controllers only receive/return DTOs
- no direct repository access
- read-only checks happen via service/guard layer

# ============================================================
# 4. SERVICE RESPONSIBILITY
# ============================================================

service_files:
- BootstrapService
- SubscriptionStatusService
- FeatureGateService
- ReadOnlyGuardService
- ScheduleService
- AssignmentService

service_responsibility:

BootstrapService:
- orchestrate startup context
- combine auth/profile/subscription/feature gate data

SubscriptionStatusService:
- resolve current site subscription state

FeatureGateService:
- resolve allowed feature flags from subscription state

ReadOnlyGuardService:
- block mutation when inactive
- expose guard method for create/update endpoints

ScheduleService:
- create schedule
- list schedules
- get detail
- validate phase1 schedule rules

AssignmentService:
- create assignment
- update assignment
- list by schedule
- validate time/period/overlap basics

service_rules:
- services own business logic
- services call repositories
- services produce DTO-ready shapes or domain results
- mutation services must call ReadOnlyGuardService first

# ============================================================
# 5. REPOSITORY RESPONSIBILITY
# ============================================================

repository_files:
- SubscriptionRepository
- FeatureGateRepository
- ScheduleRepository
- AssignmentRepository

repository_responsibility:

SubscriptionRepository:
- resolve current site license/subscription row
- resolve trial/active/grace/inactive data

FeatureGateRepository:
- map subscription state to feature flags
- optionally log feature gate decision later

ScheduleRepository:
- insert schedule
- list schedules
- get schedule detail
- support schedule_code uniqueness path

AssignmentRepository:
- insert assignment
- update assignment
- list assignments by schedule
- support overlap query basics

repository_rules:
- repository layer is persistence-only
- no UI logic
- no cross-controller orchestration
- publication logic stays out of phase 1 repositories

# ============================================================
# 6. DTO RESPONSIBILITY
# ============================================================

dto_files:
bootstrap:
- BootstrapResponseDto
- ProfileSummaryDto
- SubscriptionStatusDto
- FeatureGateDto
- ReadOnlyStateDto

schedule:
- ScheduleCreateRequestDto
- ScheduleSummaryDto
- ScheduleDetailDto

assignment:
- AssignmentCreateRequestDto
- AssignmentUpdateRequestDto
- AssignmentSummaryDto

common:
- ApiErrorDto
- MetaRequestIdDto

dto_rules:
- request and response DTOs remain separate
- field names follow fixed payload design
- snake_case mapping preserved at API boundary

# ============================================================
# 7. UI / VIEWMODEL RESPONSIBILITY
# ============================================================

screen_files:
- StartupInitialJudgeScreen
- LoginAccessConfirmationScreen
- HomeDashboardScreen
- ShiftListScreen
- ShiftCreateScreen
- ShiftDetailScreen
- ShiftEditScreen
- WeekViewScreen

viewmodel_files:
- StartupViewModel
- DashboardViewModel
- ShiftListViewModel
- ShiftCreateViewModel
- ShiftDetailViewModel
- ShiftEditViewModel
- WeekViewModel

ui_responsibility:

StartupInitialJudgeScreen / StartupViewModel:
- call bootstrap
- resolve startup route
- show access/loading state

HomeDashboardScreen / DashboardViewModel:
- show role/subscription/read_only summary
- route to shift list

ShiftListScreen / ShiftListViewModel:
- fetch list
- open create/detail
- disable create in inactive

ShiftCreateScreen / ShiftCreateViewModel:
- create draft schedule
- validate basic inputs
- show blocked reason in inactive

ShiftDetailScreen / ShiftDetailViewModel:
- show schedule summary
- open edit if allowed

ShiftEditScreen / ShiftEditViewModel:
- list assignments
- create/update assignment
- show validation errors
- disable mutation in inactive

WeekViewScreen / WeekViewModel:
- provide practical draft-side weekly navigation/edit surface

# ============================================================
# 8. READ-ONLY INSERTION FILES
# ============================================================

read_only_related_files:
- ReadOnlyGuardService
- BootstrapResponseDto
- FeatureGateDto
- StartupViewModel
- DashboardViewModel
- ShiftCreateViewModel
- ShiftEditViewModel
- ShiftListScreen
- ShiftCreateScreen
- ShiftEditScreen

read_only_rule:
- backend guard is authoritative for mutation blocking
- UI disable state is supportive, not authoritative

# ============================================================
# 9. CREATION ORDER
# ============================================================

recommended_creation_order:
1. DTO files
2. repository interfaces / implementations
3. subscription and feature gate services
4. bootstrap service
5. schedule service
6. assignment service
7. controllers
8. viewmodels
9. screens
10. read-only UX adjustments

# ============================================================
# 10. PHASE 1 FILE DONE CONDITIONS
# ============================================================

done_conditions:
- all controller files exist
- all service files exist
- all repository files exist
- DTO starter set exists
- startup/dashboard/schedule/assignment screens exist
- read-only mutation blocking exists in service layer
- inactive UI disabling exists in phase1 screens

# ============================================================
# 11. CONCLUSION
# ============================================================

Phase 1 implementation can now move from:
- endpoint planning
to:
- concrete file creation and responsibility assignment


# ============================================================
# END FILE: 900.meta/9000013_SHIFT_MANAGER_PHASE1_IMPLEMENTATION_FILE_RESPONSIBILITY_PACK.md
# ============================================================


# ============================================================
# BEGIN FILE: 900.meta/9000014_SHIFT_MANAGER_ADDITIONAL_FEATURE_DESIGN_STRENGTHENING_SUMMARY.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE DESIGN STRENGTHENING SUMMARY
# ============================================================

status: canonical-handoff
type: additional-feature-design-strengthening-summary
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This summary records the strengthening work
performed for additional competitive features.

# ============================================================
# 2. STRENGTHENED AREAS
# ============================================================

strengthened_areas:
- architecture direction
- model extension
- runtime direction
- flow direction
- screen inventory
- screen navigation
- screen responsibility
- API exact payload
- validation extension
- DTO inventory extension
- physical DDL direction
- authorization extension
- SQL review pack direction
- RLS SQL pack direction

# ============================================================
# 3. RESULT
# ============================================================

result:
Additional competitive features are no longer only concept-level.
They now have implementation-facing structure across:
- API
- validation
- DTO
- DDL
- authorization
- screen design
- SQL review order

# ============================================================
# 4. CONCLUSION
# ============================================================

ShiftManager additional features have been substantially strengthened
as design assets, while still remaining pre-implementation.


# ============================================================
# END FILE: 900.meta/9000014_SHIFT_MANAGER_ADDITIONAL_FEATURE_DESIGN_STRENGTHENING_SUMMARY.md
# ============================================================


# ============================================================
# BEGIN FILE: 900.meta/9000015_SHIFT_MANAGER_PERSONA_BASIC_SET_DB_ALIGNMENT_SUMMARY.md
# ============================================================

# ============================================================
# SHIFT MANAGER PERSONA BASIC SET DB ALIGNMENT SUMMARY
# ============================================================

status: canonical-handoff
type: persona-basic-set-db-alignment-summary
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. SUMMARY
# ============================================================

current_db_alignment_position:
- Persona-side dump is treated as basic foundation reference
- ShiftManager additional feature tables are treated as additive new tables
- existing foundation identity axes should be reused where available

# ============================================================
# 2. WHAT THIS MEANS
# ============================================================

meaning:
- no false assumption that additional ShiftManager tables already exist
- no false assumption that all FK details are finalized
- clear additive placement direction is now fixed

# ============================================================
# 3. NEXT SAFE DB-DESIGN STEP
# ============================================================

next_safe_db_design_step:
- exactify additional feature SQL pack against confirmed foundation ID axes
- review naming consistency using Persona basic set
- keep ShiftManager operational behavior app-owned

# ============================================================
# 4. CONCLUSION
# ============================================================

ShiftManager DB work should proceed
as additive placement on top of Persona basic foundation,
not as replacement or assumption of preexisting full schema.


# ============================================================
# END FILE: 900.meta/9000015_SHIFT_MANAGER_PERSONA_BASIC_SET_DB_ALIGNMENT_SUMMARY.md
# ============================================================


# ============================================================
# BEGIN FILE: 900.meta/9000016_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_EXACTIFICATION_SUMMARY.md
# ============================================================

# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE SQL EXACTIFICATION SUMMARY
# ============================================================

status: canonical-handoff
type: additional-feature-sql-exactification-summary
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. SUMMARY
# ============================================================

current_position:
- Persona dump is treated as basic-set foundation reference
- additional feature SQL is treated as additive app-side SQL
- company_id/person_id/site_id are the confirmed reuse axes
- exact live FK certainty remains intentionally pending where not proven

# ============================================================
# 2. RESULT
# ============================================================

result:
Additional feature SQL is now organized as:
- foundation-fit aware
- additive
- honest about unresolved live-schema certainty
- safer for later execution review

# ============================================================
# 3. NEXT SAFE STEP
# ============================================================

next_safe_step:
- review exact SQL comments and FK-style placeholders
- refine only where Persona basic-set evidence truly supports refinement
- keep execution approval separate from design exactification

# ============================================================
# 4. CONCLUSION
# ============================================================

ShiftManager additional feature SQL design is now stronger,
without overstating what the Persona basic-set dump proves.


# ============================================================
# END FILE: 900.meta/9000016_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_EXACTIFICATION_SUMMARY.md
# ============================================================

