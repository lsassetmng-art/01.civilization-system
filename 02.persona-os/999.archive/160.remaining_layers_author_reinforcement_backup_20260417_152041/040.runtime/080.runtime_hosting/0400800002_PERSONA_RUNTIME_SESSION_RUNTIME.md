# PERSONA RUNTIME SESSION RUNTIME

status: implementation-ready-followup

session_lifecycle:
- create
- active
- suspended
- resumed
- terminating
- terminated
- expired

runtime_rule:
Session activation requires released snapshot or package lineage verification.

required_controls:
- heartbeat timeout
- restore/resume handling
- terminal reason capture
- terminal audit event emission
