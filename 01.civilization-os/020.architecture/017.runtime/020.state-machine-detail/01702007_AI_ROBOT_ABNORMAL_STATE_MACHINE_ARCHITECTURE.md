# ============================================================
# AI ROBOT ABNORMAL STATE MACHINE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: ai-robot-abnormal-state-machine
component: ai-robot-abnormal-state-machine

owner: Boss
prepared_by: Zero

# ============================================================
# 1. REPRESENTATIVE STATES
# ============================================================

Representative Ai(Robot) abnormal states include:

- normal
- contaminated
- override_active
- runaway
- isolated
- rolled_back
- revalidated
- restored

# ============================================================
# 2. FINAL RULE
# ============================================================

Ai(Robot) abnormal state machine architecture must remain:

- contamination-aware
- isolation-capable
- rollback-capable
- restoration-aware
