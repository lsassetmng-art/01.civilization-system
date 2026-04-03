# ============================================================
# WORK UI BINDING MAP MODEL
# ============================================================

status: canonical
layer: model
scope: implementation-bridge-master
component: work-ui-binding-map

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines canonical binding
between job masters,
work loops,
screen components,
AI assist rules,
and result/history outputs.


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

work_ui_binding_fields:
- job_id
- canonical_loop_ref
- common_component_ref_set
- specialized_component_ref_set
- ai_assist_ref
- incident_model_ref_set
- result_model_ref
- history_output_ref
- nation_variation_ref
- default_permission_ref_set


# ============================================================
# 3. REQUIRED JOB IDS
# ============================================================

required_job_ids:
- retail
- railway
- education
- military_support
- fishery
- religion
- medical


# ============================================================
# 4. FINAL RULE
# ============================================================

Every work UI must bind loop,
screen, assist, result, history,
and variation in one lookup chain.
