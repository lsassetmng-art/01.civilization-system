# ============================================================
# JUDICIAL PROCESS STATE MACHINE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: judicial-process-state-machine
component: judicial-process-state-machine

owner: Boss
prepared_by: Zero

# ============================================================
# 1. REPRESENTATIVE STATES
# ============================================================

Representative judicial states include:

- intake
- scheduled
- hearing
- under_judgment
- detained
- bailed
- released
- sentenced
- closed

# ============================================================
# 2. FINAL RULE
# ============================================================

Judicial process state machine architecture must remain:

- hearing-aware
- detention-aware
- bail-aware
- judgment-aware
