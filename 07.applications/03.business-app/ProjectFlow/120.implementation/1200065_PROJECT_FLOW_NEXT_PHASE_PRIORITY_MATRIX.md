# ============================================================
# PROJECT FLOW NEXT PHASE PRIORITY MATRIX
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a concrete next-phase priority matrix.

priority_matrix:

local_wireframe_refinement:
- priority: 1
- readiness: safe_now

local_wording_cleanup:
- priority: 1
- readiness: safe_now

multilingual_label_pack_refinement_ja_en:
- priority: 1
- readiness: safe_now

state_event_usecase_refinement:
- priority: 2
- readiness: safe_now

customer_material_refinement:
- priority: 2
- readiness: safe_now

auditability_refinement:
- priority: 2
- readiness: safe_now

businessos_gateway_planning:
- priority: 3
- readiness: conditional_on_no_mediation_conflict

erp_field_mapping_finalization:
- priority: 3
- readiness: conditional_on_no_ownership_conflict

db_hardening_finalization:
- priority: 4
- readiness: conditional_on_no_field_ownership_conflict

direct_erp_client_assumption:
- priority: blocked
- readiness: not_allowed

shared_common_component_reownership:
- priority: blocked
- readiness: not_allowed
