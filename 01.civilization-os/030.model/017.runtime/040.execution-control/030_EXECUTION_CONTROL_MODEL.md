# ============================================================
# EXECUTION CONTROL
# MODEL
# ============================================================

status: draft
layer: model
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for runtime execution control.

# 2. CORE ENTITIES

- execution_controller
- execution_window
- execution_mode
- execution_status

# 3. STATE MODEL

execution_controller:
- execution_controller_id
- controller_scope
- controller_type_code
- controller_status
- controller_version

execution_window:
- execution_window_id
- execution_controller_id
- starts_at
- ends_at
- window_status

execution_mode:
- execution_mode_id
- execution_controller_id
- mode_code
- mode_reason
- mode_status

execution_status:
- execution_status_id
- execution_controller_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- one controller owns execution windows and modes
- execution status must be explicit
- blocked execution must not continue silently
- overlapping incompatible windows are prohibited

