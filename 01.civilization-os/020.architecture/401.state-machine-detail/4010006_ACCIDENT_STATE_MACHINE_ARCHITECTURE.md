# ============================================================
# ACCIDENT STATE MACHINE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: accident-state-machine
component: accident-state-machine

owner: Boss
prepared_by: Zero

# ============================================================
# 1. REPRESENTATIVE STATES
# ============================================================

Representative accident states include:

- risk_exposed
- incident_occurred
- injured
- rescued
- treated
- stabilized
- recovered
- dead

# ============================================================
# 2. FINAL RULE
# ============================================================

Accident state machine architecture must remain:

- incident-aware
- rescue-aware
- treatment-aware
- recovery-aware
