# ============================================================
# BUSINESS PERSONA TRUST USAGE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define how trust-related Persona values gate Persona exposure
inside BusinessOS.

policy_rules:
- permission and trust are separate axes
- granted permission does not imply full exposure
- low trust may restrict Persona to narrow assistant surfaces
- medium trust may allow bounded operational assistance
- high trust may allow broader business assistant exposure
- blocked trust level must suppress Persona presentation regardless of permission

evaluation_order:
1 permission and access validity
2 release compatibility
3 binding validity
4 trust gating
