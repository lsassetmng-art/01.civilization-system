# ============================================================
# PERSONA STATE TRANSITION POLICY
# ============================================================

status: canonical
layer: policy
domain: state
system: persona-os
owner: Boss
prepared_by: Zero

policy_rules:
state transition must follow explicit allowed paths
restricted states require explicit authority
release state and availability state must not be conflated
archived state is not a casual reversible state
