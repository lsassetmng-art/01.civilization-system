# ============================================================
# BUSINESS PERSONA USAGE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for Persona usage inside BusinessOS.

usage_principles:
- Persona use requires valid permission state
- Persona use requires valid access state
- Persona use requires compatible release state
- Persona use requires valid binding state
- Persona truth remains outside BusinessOS

policy_rules:
- revoked, expired, or incompatible Persona state must disable use
- BusinessOS must not infer unrestricted use from partial sync state
- permission-side eligibility must be evaluated before business exposure
