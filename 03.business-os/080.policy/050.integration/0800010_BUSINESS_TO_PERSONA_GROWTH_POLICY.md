# ============================================================
# BUSINESS TO PERSONA GROWTH POLICY
# ============================================================

status: canonical
layer: 080.policy
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for Business-originated Persona growth synchronization.

policy_rules:
- only approved Business-side growth triggers may produce growth requests
- only allowed Business-side projection data may be sent
- BusinessOS must not send direct Persona truth mutations
- growth requests require idempotency control
- PersonaOS is sole truth holder for Persona growth state

approved_growth_examples:
- sales milestone
- support quality milestone
- continuity milestone
- approved business behavior milestone
