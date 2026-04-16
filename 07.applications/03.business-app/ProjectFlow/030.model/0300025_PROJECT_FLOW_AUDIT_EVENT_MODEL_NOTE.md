# ============================================================
# PROJECT FLOW AUDIT EVENT MODEL NOTE
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the intended audit-event model scope.

candidate_audit_event_fields:
- audit_event_id
- company_id
- actor_user_id
- target_entity_type
- target_entity_id
- action_type
- previous_state_snapshot_json
- next_state_snapshot_json
- review_state_before
- review_state_after
- occurred_at
- source_context

target_entity_type_candidates:
- project
- task
- milestone
- issue
- risk
- time_entry
- sync_request
- progress_report_draft
- schedule_proposal
- customer_material

action_type_candidates:
- create
- update
- status_change
- review_state_change
- confirm
- discard
- export
- retry_request
