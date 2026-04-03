# ============================================================
# MILITARY OPERATIONS RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: war.military_operations
document_id: 0401640001

owner: Boss
prepared_by: Zero

runtime_state_machine:
- PROPOSED
- AUTHORIZED
- DEPLOYING
- ACTIVE
- CEASEFIRE_REVIEW
- CEASEFIRE_ACTIVE
- SUSPENDED
- CLOSED
- CANCELLED

runtime_rules:
- authorization must precede deployment
- deployment must precede ACTIVE state
- ceasefire review blocks conflicting engagement progression
- all command decisions require traceable authority path

failure_behavior:
- fail closed on command ambiguity
- fail closed on invalid target/scope
- fail closed on conflicting ceasefire / engagement state
