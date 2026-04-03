# ============================================================
# MILITARY OPERATIONS POLICY
# ============================================================

status: canonical
layer: policy
domain: war.military_operations
document_id: 0801640001

owner: Boss
prepared_by: Zero

policy_scope:
- command legitimacy
- deployment conditions
- readiness threshold
- engagement constraints
- ceasefire transition policy
- operation closure rules

decision_rules:
- operation requires valid operation authorization
- ACTIVE state requires readiness and logistics basis
- ceasefire-active state blocks conflicting offensive progression
- closure requires explicit final state justification

fail_closed_cases:
- unclear command chain
- invalid operational scope
- missing logistics basis
- conflicting ceasefire state
