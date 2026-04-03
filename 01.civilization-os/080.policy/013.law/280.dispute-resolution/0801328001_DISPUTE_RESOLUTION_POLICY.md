# ============================================================
# DISPUTE RESOLUTION POLICY
# ============================================================

status: canonical
layer: policy
domain: law.dispute_resolution
document_id: 0801328001

owner: Boss
prepared_by: Zero

policy_scope:
- route eligibility
- authority eligibility
- appeal eligibility
- settlement validity
- adjudication finality
- enforcement handoff conditions

decision_rules:
- mediation allowed only for policy-eligible dispute types
- arbitration allowed only where arbitration route is recognized
- adjudication required for non-settleable protected categories
- appeal allowed only when policy flags appealable outcome
- enforcement handoff allowed only after finalization

fail_closed_cases:
- unknown dispute type
- unknown route policy
- missing authority scope
- unresolved actor compatibility
