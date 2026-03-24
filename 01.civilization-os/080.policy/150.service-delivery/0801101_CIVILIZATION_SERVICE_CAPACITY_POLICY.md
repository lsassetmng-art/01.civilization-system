# ============================================================
# CIVILIZATION SERVICE CAPACITY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for service capacity and waitlists.

policy_rules:
- constrained or exhausted capacity must remain explicit
- waitlisted requests must remain visible
- released waitlist items must preserve ordering trace
- capacity truth must remain canonical
