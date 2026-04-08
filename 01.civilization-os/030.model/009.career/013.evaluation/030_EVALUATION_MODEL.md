# ============================================================
# EVALUATION
# MODEL
# ============================================================

status: draft
layer: model
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for career evaluation structures.

# 2. CORE ENTITIES

- evaluation_definition
- evaluation_session
- evaluation_metric
- evaluation_result

# 3. STATE MODEL

evaluation_definition:
- evaluation_definition_id
- evaluation_code
- evaluation_scope
- evaluation_type_code
- evaluation_status

evaluation_session:
- evaluation_session_id
- evaluation_definition_id
- subject_scope
- session_status
- evaluated_at

evaluation_metric:
- evaluation_metric_id
- evaluation_definition_id
- metric_code
- metric_value
- metric_status

evaluation_result:
- evaluation_result_id
- evaluation_session_id
- result_code
- result_reason
- result_status

# 4. INTEGRITY RULES

- session and metric must preserve evaluation identity
- subject scope must be explicit
- result must reference one evaluation session
- hidden evaluation-result mutation is prohibited

