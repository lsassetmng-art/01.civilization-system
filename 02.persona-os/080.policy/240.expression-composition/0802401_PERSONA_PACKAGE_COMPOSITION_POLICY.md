# ============================================================
# PERSONA PACKAGE COMPOSITION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for package items and package composition.

policy_rules:
- package, item, component, and composition basis must remain explicit
- removed, invalidated, or superseded package states must remain explicit
- package traceability must remain preserved
- package composition truth must remain canonical
