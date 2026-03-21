# ============================================================
# COMMAND RULE
# ============================================================

status: canonical
layer: rule
component: command-rule

owner: Boss
prepared_by: Zero


# COMMAND PRINCIPLE

Commands represent intended actions.


# COMMAND FLOW

Command
↓
Validation
↓
Authorization
↓
Event transformation


# COMMAND STRUCTURE

command_id
command_type
issuer
issued_at
target_scope
intent_payload
trace_id


# FINAL RULE

Commands must never mutate system state directly.

