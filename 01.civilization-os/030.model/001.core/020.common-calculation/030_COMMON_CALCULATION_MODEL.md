# ============================================================
# COMMON CALCULATION
# MODEL
# ============================================================

status: draft
layer: model
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for reusable shared calculations.

# 2. CORE ENTITIES

- calculation_formula
- calculation_parameter
- calculation_context
- calculation_result

# 3. STATE MODEL

calculation_formula:
- formula_code
- formula_name
- formula_version
- rounding_rule_code
- enabled_flag

calculation_parameter:
- parameter_code
- parameter_type
- source_scope
- required_flag

calculation_context:
- context_id
- formula_code
- input_set_hash
- execution_scope

calculation_result:
- result_id
- context_id
- output_value
- calculated_at
- result_status

# 4. INTEGRITY RULES

- formula version must be explicit
- parameter source scope must be declared
- identical context must yield deterministic result
- invalid parameter set must reject result generation

