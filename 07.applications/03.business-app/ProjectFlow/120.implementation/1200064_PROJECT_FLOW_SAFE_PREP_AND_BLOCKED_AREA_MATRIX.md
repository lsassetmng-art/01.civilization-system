# ============================================================
# PROJECT FLOW SAFE PREP AND BLOCKED AREA MATRIX
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a matrix of safe-prep versus blocked-prep areas.

scope_matrix:

screen_and_wireframe_refinement:
- status: safe_for_prep
- reason: local composition area

state_event_usecase_refinement:
- status: safe_for_prep
- reason: local implementation-prep area

customer_material_layout_refinement:
- status: safe_for_prep
- reason: local composition area

multilingual_label_pack_refinement_within_ja_en:
- status: safe_for_prep
- reason: fixed initial language scope exists

read_only_ui_affordance_refinement:
- status: safe_for_prep
- reason: entitlement rules are already fixed

audit_event_capture_planning:
- status: safe_for_prep
- reason: app-local traceability area

erp_field_mapping_finalization:
- status: blocked_if_conflict_exists
- reason: ERP truth ownership must stay clear

businessos_gateway_finalization:
- status: blocked_if_mediation_conflict_exists
- reason: mediation interpretation must stay clear

db_hardening_finalization:
- status: blocked_if_ownership_conflict_exists
- reason: field ownership and constraints must stay clear

direct_erp_client_assumption:
- status: blocked
- reason: violates mediated boundary rule

shared_common_component_reownership:
- status: blocked
- reason: violates external canonical ownership
