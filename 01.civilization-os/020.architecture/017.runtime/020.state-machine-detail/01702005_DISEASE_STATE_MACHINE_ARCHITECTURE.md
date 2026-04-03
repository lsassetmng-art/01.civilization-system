# ============================================================
# DISEASE STATE MACHINE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: disease-state-machine
component: disease-state-machine

owner: Boss
prepared_by: Zero

# ============================================================
# 1. REPRESENTATIVE STATES
# ============================================================

Representative disease states include:

- exposed
- latent
- symptomatic
- treated
- hospitalized
- recovered
- chronic_where_supported
- dead

# ============================================================
# 2. FINAL RULE
# ============================================================

Disease state machine architecture must remain:

- progression-aware
- treatment-aware
- hospitalization-aware
- recovery-aware
