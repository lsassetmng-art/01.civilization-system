# ============================================================
# NAMECARDMANAGER PHASE A BLOCKERS AND EXIT CRITERIA
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines start blockers and finish criteria for Phase A.

start_blockers:
- api_exact_payload_not_fixed
- sync_replay_conflict_not_fixed
- auth_authorization_contract_not_fixed
- shared_businessos_publication_spec_not_fixed
- physical_schema_rls_image_lifecycle_not_fixed

phase_a_exit_criteria:
- local CRUD works
- sync queue works at minimum skeleton level
- auth inheritance entry works
- authorization gate works
- app share apply/revoke works
- publication preflight/request works through shared BusinessOS capability
- front/back image basic flow works
- csv import minimum entry and preview works
- audit/history basic visibility works

