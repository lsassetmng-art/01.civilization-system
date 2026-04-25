# ============================================================
# LIFE OS PROJECTION AND READ-MODEL EXACT DESIGN
# ============================================================

status: canonical-draft
document_code: 925340
system: life-os
layer: 920.meta
subfolder: 925.implementation-ready-freeze
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix the exact projection and read-model responsibilities for LifeOS.
- Ensure dashboard, timeline, review, sync, and alert screens are rebuilt from canonical append-first data.
- Prevent read-models from drifting into canonical truth.

principles:
- canonical write model first
- projection is rebuildable
- stale projection is detectable
- projection must declare source events and checkpoint rule
- persona display bindings use snapshot references, not mutable persona truth
- imports and reminders must update read-models asynchronously unless explicitly synchronous

# ============================================================
# 1. READ-MODEL BOUNDARY
# ============================================================

read_model_boundary:
  canonical_sources:
    - habit_log
    - health_metric_log
    - goal_event
    - life_event_outbox
    - life_record_revision_log
    - integration_ingest_registry
    - integration_ingest_idempotency_key
    - reminder_job append history
    - delivery attempt append history
    - export manifest append history
  projections_are_not_canonical:
    - dashboard cards
    - review summary cards
    - timeline feed cards
    - alert counters
    - sync status panels
    - reminder due panels
    - persona display projections
  required_projection_metadata:
    - projection_id
    - projection_code
    - user_id
    - built_from_checkpoint
    - built_at
    - source_event_count
    - stale_after
    - rebuild_reason_code

# ============================================================
# 2. PROJECTION CATALOG
# ============================================================

projection_catalog:
  life_dashboard_projection:
    purpose:
      - homepage summary for habits, health metrics, goals, reminders, reviews, and alerts
    source_inputs:
      - habit_log
      - health_metric_log
      - goal_event
      - review_session events
      - reminder_job events
      - alert events
    output_sections:
      - today_habit_summary
      - latest_health_summary
      - active_goal_summary
      - reminder_due_summary
      - alert_summary
      - review_pending_summary
      - persona_snapshot_display_summary
    rebuild_mode:
      - incremental on internal event append
      - full rebuild supported
    freshness_rule:
      - stale if built_at older than latest consumed source checkpoint

  life_timeline_projection:
    purpose:
      - chronological feed of user-visible actions and derived highlights
    source_inputs:
      - habit_log
      - health_metric_log
      - goal progress events
      - review generated events
      - reminder acknowledged events
      - import accepted events
      - persona result received events
    item_types:
      - habit_logged
      - health_metric_logged
      - goal_progress_logged
      - review_generated
      - reminder_acknowledged
      - import_completed
      - persona_snapshot_applied
    ordering_rule:
      - primary: occurred_at desc
      - secondary: event_id desc

  life_review_projection:
    purpose:
      - daily / weekly / monthly review materialized view
    source_inputs:
      - habit_log
      - health_metric_log
      - goal_event
      - daily_checkin submitted events
      - alert events
    output_fields:
      - streaks
      - metric_trends
      - goal_progress_summary
      - risk_highlights
      - recommended_next_actions

  life_sync_status_projection:
    purpose:
      - show import/sync checkpoints and current lag
    source_inputs:
      - integration accept/reject/complete events
      - import manifest append log
      - export package generated events
    output_fields:
      - latest_import_source_code
      - latest_import_completed_at
      - import_failed_count
      - latest_export_generated_at
      - current_sync_lag_seconds

  life_alert_projection:
    purpose:
      - compact alert panel and review alert support
    source_inputs:
      - life.alert.raised.v1
      - life.alert.dismissed.v1
    output_fields:
      - active_alert_count
      - highest_severity
      - unresolved_alert_codes
      - latest_alert_raised_at

  life_persona_display_projection:
    purpose:
      - safe display projection for persona-enabled LifeOS screens
    source_inputs:
      - life.persona.result.received.v1
      - life.persona.snapshot.applied.v1
    output_fields:
      - persona_id
      - snapshot_id
      - applied_snapshot_id
      - signed_snapshot_ref
      - display_contract_code
      - last_received_result_status
    hard_rule:
      - no mutable persona truth copied into LifeOS canonical state

# ============================================================
# 3. CHECKPOINT AND REBUILD MODEL
# ============================================================

checkpoint_model:
  projection_checkpoint_fields:
    - projection_code
    - user_id
    - latest_consumed_event_id
    - latest_consumed_occurred_at
    - latest_source_hash
    - built_at
    - rebuild_reason_code
    - rebuild_runner_code
  rebuild_reason_codes:
    - initial_build
    - incremental_apply
    - stale_rebuild
    - integrity_rebuild
    - import_replay
    - operator_forced_rebuild

rebuild_strategies:
  incremental_rebuild:
    use_when:
      - source append volume is low to moderate
      - exact dedupe key is available
    requirements:
      - checkpoint exists
      - event ordering is stable
      - idempotent projection writer exists
  full_rebuild:
    use_when:
      - source checkpoint lost
      - projection drift suspected
      - contract version changed
      - derived item ranking logic changed
    requirements:
      - source canonical records remain complete
      - write target can be truncated / rewritten safely

stale_detection:
  stale_conditions:
    - source contains newer occurred_at than projection built_at
    - projection contract version older than required
    - source_event_count mismatch against reconciliation run
    - snapshot display projection points to invalid snapshot reference
  stale_actions:
    - mark projection stale
    - permit read with stale badge only for low-risk screens
    - force rebuild before read for review and export paths

# ============================================================
# 4. SCREEN TO PROJECTION MAPPING
# ============================================================

screen_to_projection_mapping:
  dashboard_screen:
    required_projection:
      - life_dashboard_projection
      - life_alert_projection
      - life_persona_display_projection
  timeline_screen:
    required_projection:
      - life_timeline_projection
  review_screen:
    required_projection:
      - life_review_projection
      - life_alert_projection
  sync_screen:
    required_projection:
      - life_sync_status_projection
  reminders_screen:
    required_projection:
      - life_dashboard_projection
  settings_persona_display_screen:
    required_projection:
      - life_persona_display_projection

screen_fallback_rules:
  dashboard:
    - allow slightly stale projection with explicit stale badge
  review:
    - do not render recommendation summary from stale projection
  sync:
    - show raw latest known sync checkpoint if projection rebuild pending
  persona_display:
    - render only signed snapshot-derived content

# ============================================================
# 5. READ-MODEL WRITE RULES
# ============================================================

projection_write_rules:
  general:
    - projection row may be replaced entirely during rebuild
    - projection row must keep built_from_checkpoint
    - projection row must not become upstream source of canonical correction
  timeline_specific:
    - each timeline item must point back to source_event_id or source_record_id
  dashboard_specific:
    - numeric summaries must include summary window start and end
  review_specific:
    - recommendation section must include projection_snapshot_id and generated_at
  persona_display_specific:
    - include applied_snapshot_id and signature_ref
    - omit canonical persona internals

# ============================================================
# 6. ACCEPTANCE GATE
# ============================================================

acceptance_gate:
  required_tests:
    - full rebuild from empty target reproduces same visible dashboard summary
    - incremental rebuild after duplicate event does not duplicate items
    - stale projection flag is raised when source advances
    - review screen refuses stale recommendation panel
    - persona display projection renders from signed snapshot only
  release_blockers:
    - projection depends on source table that is not append-first
    - projection cannot be rebuilt from canonical records
    - dashboard values differ from same-window source aggregation
    - timeline item lacks canonical backlink
