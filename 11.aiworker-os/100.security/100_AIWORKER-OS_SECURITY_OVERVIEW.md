# ============================================================
# AIWORKER OS SECURITY OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 100.security
owner: Boss
prepared_by: Zero

purpose:
Defines gating, grants, RLS, replay safety, sanitization, transition guards, and write-surface control.

current_scope:
- 1000001_AIWORKER_OS_SECURITY_BOUNDARY.md
- 1000101_AIWORKER_ALLOWED_VIEW_GATE_AND_WRITE_SURFACE_SECURITY_MODEL.md
- 1000103_AIWORKER_GATE_VALIDATION_AND_TRANSITION_GUARD_EXACT.md
- 1000104_AIWORKER_PAYLOAD_SANITIZATION_AND_REPLAY_SAFETY_EXACT.md
- 1000105_AIWORKER_ROLE_FAMILY_AND_GRANT_MATRIX_EXACT.md
- 1000106_AIWORKER_RLS_DIRECTION_AND_NO_DIRECT_READ_POLICY_EXACT.md
- 1000107_AIWORKER_REPLAY_BACKFILL_AND_RECOVERY_SAFETY_GUARD_EXACT.md
