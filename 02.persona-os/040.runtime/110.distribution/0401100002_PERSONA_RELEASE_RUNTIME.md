# ============================================================
# PERSONA RELEASE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: distribution
system: persona-os
owner: Boss
prepared_by: Zero

runtime_rules:
distribution must only use eligible package inputs
release state must follow policy gates
withdrawal and suspension must remain explicit
