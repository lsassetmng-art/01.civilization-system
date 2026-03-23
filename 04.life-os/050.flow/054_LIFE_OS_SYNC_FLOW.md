# ============================================================
# LIFE OS SYNC FLOW
# ============================================================

status: canonical
layer: 050.flow
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define cross-module and cross-system synchronization flow for Life OS.

sync_flow:
1_change_detected
2_change_classified
3_sync_eligibility_checked
4_payload_mapped
5_boundary_policy_checked
6_sync_event_emitted
7_target_acknowledged_or_retried
8_sync_result_logged

sync_rules:
- only allowed data may leave Life OS
- personal-sensitive data requires strict boundary checks
- target systems must consume explicit contracts only
- failed sync must not corrupt primary life records
