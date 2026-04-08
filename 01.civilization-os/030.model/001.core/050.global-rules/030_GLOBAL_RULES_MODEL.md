# ============================================================
# GLOBAL RULES
# MODEL
# ============================================================

status: draft
layer: model
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for globally enforced rules.

# 2. CORE ENTITIES

- global_rule
- global_rule_version
- global_rule_exception
- global_rule_application

# 3. STATE MODEL

global_rule:
- rule_code
- rule_name
- rule_scope
- precedence_level
- enabled_flag

global_rule_version:
- version_id
- rule_code
- effective_from
- effective_to
- version_status

global_rule_exception:
- exception_id
- rule_code
- exception_scope
- approved_by
- exception_status

global_rule_application:
- application_id
- rule_code
- target_scope
- applied_at
- result_code

# 4. INTEGRITY RULES

- global rule precedence must be explicit
- only one active version per rule and effective window
- exception must reference one rule
- application record must preserve target scope

