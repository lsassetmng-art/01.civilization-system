# ============================================================
# PROJECT FLOW NEXT PHASE WORK PACKAGE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for breaking the next phase into explicit work packages.

work_package_template_fields:
- package_id
- package_name
- scope_type: local_safe_or_boundary_sensitive_or_blocked
- objective
- in_scope
- out_of_scope
- prerequisite_documents
- blocked_by_conflict: yes_no
- expected_outputs
- completion_checkpoints
- notes

recommended_package_order:
1. local_ui_and_wireframe_refinement
2. multilingual_label_refinement_ja_en
3. local_state_event_usecase_refinement
4. customer_material_refinement
5. auditability_refinement
6. businessos_boundary_sensitive_planning
7. erp_field_mapping_finalization
8. db_hardening_finalization
