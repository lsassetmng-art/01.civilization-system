# ============================================================
# POWER ACQUISITION LEGITIMACY MODEL
# ============================================================

status: canonical
layer: model
scope: nation-type-and-power-acquisition
component: power-acquisition-legitimacy

owner: Boss
prepared_by: Zero


# ============================================================
# 1. LEGITIMACY SOURCES
# ============================================================

legitimacy_sources:
- electoral_legitimacy
- dynastic_legitimacy
- military_legitimacy
- party_legitimacy
- ideological_legitimacy
- technocratic_legitimacy
- religious_legitimacy
- revolutionary_legitimacy
- coercive_legitimacy


# ============================================================
# 2. RULES
# ============================================================

rules:
- legitimacy source strength varies by governance type
- low legitimacy after accession raises instability and coup risk
- extra-legal accession may still succeed but remains structurally fragile
- legitimacy must affect sovereign action stability


# ============================================================
# 3. FINAL RULE
# ============================================================

Power acquisition
must distinguish successful seizure
from durable legitimacy.
