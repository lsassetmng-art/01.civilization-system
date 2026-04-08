# ============================================================
# AUTO PROGRESSION
# MODEL
# ============================================================

status: draft
layer: model
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for automatic progression control.

# 2. CORE ENTITIES

- progression_controller
- progression_session
- progression_checkpoint
- progression_stop_reason

# 3. STATE MODEL

progression_controller:
- controller_id
- progression_mode
- progression_enabled_flag
- cadence_class
- speed_family
- batch_catchup_flag

progression_session:
- session_id
- controller_id
- started_at
- stopped_at
- source_type
- current_status

progression_checkpoint:
- checkpoint_id
- session_id
- tick_position
- logical_time
- snapshot_ref

progression_stop_reason:
- stop_reason_code
- reason_family
- operator_visible_flag

# 4. INTEGRITY RULES

- only one active progression_session per controller
- progression checkpoint must belong to one session
- stop reason must be explicit on abnormal stop
- no implicit resume from invalid checkpoint

