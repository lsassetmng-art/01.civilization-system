# ============================================================
# EMERGENCY AND COMMAND CHAIN MODEL
# ============================================================

status: canonical
layer: model
scope: executive-builder
component: emergency-and-command-chain

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COMMAND CHAIN FIELDS
# ============================================================

command_chain_fields:
- normal_command_chain
- emergency_command_chain
- military_override_exists
- internal_security_override_exists
- reconstruction_override_exists
- doctrine_override_exists
- cabinet_bypass_supported
- legislature_notification_required
- judiciary_review_required
- time_limit_for_emergency_state


# ============================================================
# 2. EMERGENCY TYPES
# ============================================================

emergency_types:
- war_emergency
- internal_security_emergency
- disaster_emergency
- infrastructure_collapse_emergency
- regime_instability_emergency
- reconstruction_emergency
- faith_or_doctrinal_emergency
- command_transition_emergency


# ============================================================
# 3. FINAL RULE
# ============================================================

Emergency power must define
how ordinary administration is bypassed,
who gains accelerated command,
and what review constraints survive.
