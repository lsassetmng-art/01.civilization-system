# ============================================================
# LEGISLATIVE STATE MACHINE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: legislative-state-machine
component: legislative-state-machine

owner: Boss
prepared_by: Zero

# ============================================================
# 1. REPRESENTATIVE STATES
# ============================================================

Representative legislative states include:

- drafting
- submitted
- queued_for_deliberation
- deliberating
- amended
- voted_pass
- voted_fail
- promulgated
- effective
- repealed

# ============================================================
# 2. FINAL RULE
# ============================================================

Legislative state machine architecture must remain:

- stage-explicit
- vote-aware
- promulgation-aware
