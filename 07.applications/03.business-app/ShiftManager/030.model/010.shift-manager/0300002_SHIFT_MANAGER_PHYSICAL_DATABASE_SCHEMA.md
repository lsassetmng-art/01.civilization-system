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

