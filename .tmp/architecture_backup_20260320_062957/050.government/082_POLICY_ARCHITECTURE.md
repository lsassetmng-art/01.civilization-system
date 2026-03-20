# ============================================================
# POLICY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Policy defines government intent and rules.

purpose:
- regulate economy and society
- provide directional control

policy_types:
- economic_policy
- social_policy
- security_policy

rules:
- policy must be explicitly approved
- policy effects must be event-driven

event_flow:
- policy_created
- policy_approved
- policy_applied

final_rule:
Policy must not directly mutate systems without events.
