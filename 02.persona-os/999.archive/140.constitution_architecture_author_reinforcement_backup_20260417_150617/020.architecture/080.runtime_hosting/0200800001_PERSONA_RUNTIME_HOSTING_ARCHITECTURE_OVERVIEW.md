# ============================================================
# PERSONA RUNTIME HOSTING ARCHITECTURE OVERVIEW
# ============================================================

status: implementation-ready-followup
domain: runtime-hosting

runtime_hosting_boundary:
- session starts from released snapshot or package only
- host adapter resolves immutable release input before activation
- session state is renewable and auditable
- runtime hosting cannot alter truth state without separate apply contract

required_runtime_controls:
- session create/heartbeat/suspend/resume/terminate/expire
- resource allocation and cleanup
- terminal reason capture
- release lineage verification
