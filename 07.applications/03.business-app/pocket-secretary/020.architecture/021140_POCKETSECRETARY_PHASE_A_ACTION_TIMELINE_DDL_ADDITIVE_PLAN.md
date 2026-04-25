# ============================================================
# POCKETSECRETARY PHASE A ACTION TIMELINE DDL ADDITIVE PLAN
# ============================================================

status: canonical
layer: architecture
system: applications
application: PocketSecretary
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-action-timeline-ddl-additive-plan

purpose:
Defines the additive-only Phase A DDL planning boundary for
conversation-derived action commitments, daily briefing assembly,
and follow-through persistence.

principles:
- additive only
- preserve existing PocketSecretary core
- separate conversation log from action continuity rows
- separate audit or history from active follow-through state
- no SQL execution in this document

phase_a_target_capabilities:
- persist assistant action timeline rows
- persist action-plan candidate rows before confirmation
- support daily briefing query without replaying raw conversation
- support overdue and awaiting-confirmation resurfacing

proposed_additive_tables:
- business.pocket_secretary_action_plan_candidate
- business.pocket_secretary_action_timeline_item
- business.pocket_secretary_daily_briefing_snapshot

table_business_pocket_secretary_action_plan_candidate:
  role:
    - stores extracted action candidates derived from conversation
    - keeps propose stage separate from confirmed follow-through
  recommended_columns:
    - action_plan_candidate_id uuid pk
    - user_id uuid not null
    - source_conversation_id uuid not null
    - source_message_id uuid not null
    - action_type_code text not null
    - action_title text not null
    - action_summary text null
    - proposed_due_at timestamptz null
    - proposed_remind_at timestamptz null
    - proposed_scheduled_start_at timestamptz null
    - proposed_scheduled_end_at timestamptz null
    - priority_code text null
    - confidence_score numeric null
    - confirmation_required boolean not null
    - candidate_status text not null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_pocket_secretary_action_timeline_item:
  role:
    - stores committed assistant-managed action continuity state
  recommended_columns:
    - assistant_action_timeline_item_id uuid pk
    - user_id uuid not null
    - source_conversation_id uuid null
    - source_message_id uuid null
    - action_type_code text not null
    - action_title text not null
    - action_summary text null
    - action_state_code text not null
    - priority_code text null
    - due_at timestamptz null
    - remind_at timestamptz null
    - scheduled_start_at timestamptz null
    - scheduled_end_at timestamptz null
    - origin_module_code text not null
    - downstream_record_id uuid null
    - resurfacing_eligible boolean not null
    - last_surfaced_at timestamptz null
    - completed_at timestamptz null
    - dismissed_at timestamptz null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_pocket_secretary_daily_briefing_snapshot:
  role:
    - stores generated briefing snapshots when caching or auditability is needed
  recommended_columns:
    - daily_briefing_snapshot_id uuid pk
    - user_id uuid not null
    - briefing_date date not null
    - timezone text not null
    - summary_message text not null
    - generated_at timestamptz not null
    - created_at timestamptz not null

recommended_indexes_phase_a:
- action_plan_candidate:
  - idx on user_id, created_at desc
  - idx on source_conversation_id
  - idx on candidate_status
- action_timeline_item:
  - idx on user_id, action_state_code, due_at
  - idx on user_id, scheduled_start_at
  - idx on user_id, last_surfaced_at
- daily_briefing_snapshot:
  - idx on user_id, briefing_date desc

explicit_non_scope:
- no destructive schema rewrite
- no SQL execution here
- no reminder engine implementation here
- no calendar provider binding here
- no client sync policy here

handoff_to_next_step:
- freeze API starter and DTOs against these row families
- create implementation skeleton and slice order on top of this plan
