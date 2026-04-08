# ============================================================
# AUTO PROGRESSION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for automatic progression.

# 2. IMPLEMENTATION TARGETS

- progression_controller state holder
- progression_session persistence
- progression_checkpoint persistence
- stop-reason recording
- cadence/tick runtime linkage

# 3. DATA / STATE

Canonical structures:
- progression_controller
- progression_session
- progression_checkpoint
- progression_stop_reason

# 4. EXECUTION

- explicit enablement is required before start
- one controller may own only one active session
- resume requires valid checkpoint
- checkpoint update must occur before continuation acknowledgement
- abnormal stop must persist stop reason

# 5. VALIDATION

- reject duplicate active session
- reject invalid checkpoint resume
- reject unsafe catchup
- reject logical time inconsistency

# 6. OBSERVABILITY

- progression start/stop audit
- active session monitoring
- stop reason visibility
- checkpoint lag visibility

