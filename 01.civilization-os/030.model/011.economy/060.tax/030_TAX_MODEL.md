# ============================================================
# TAX
# MODEL
# ============================================================

status: draft
layer: model
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for tax structures.

# 2. CORE ENTITIES

- tax_rule
- tax_base
- tax_assessment
- tax_payment_state

# 3. STATE MODEL

tax_rule:
- tax_rule_id
- tax_code
- jurisdiction_scope
- tax_type_code
- tax_status

tax_base:
- tax_base_id
- tax_rule_id
- subject_scope
- base_value
- base_status

tax_assessment:
- tax_assessment_id
- tax_rule_id
- subject_scope
- assessed_value
- assessment_status

tax_payment_state:
- payment_state_id
- tax_assessment_id
- payment_status
- paid_at
- payment_scope

# 4. INTEGRITY RULES

- tax rule must preserve jurisdiction scope
- assessment must reference one tax rule
- payment state must reference one assessment
- unscoped taxation is prohibited

