# ============================================================
# GAME BUILDER WEBAPP INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for Game Builder Web App lifecycle handling.

required_fields:
- project_code or session_ref or package_code or pipeline_code or job_ref
- workspace_code
- runtime_profile_code where applicable
- release_code where applicable
- correlation_id

compatibility_rule:
Game Builder Web App interfaces must remain workspace-aware and runtime-aware.
