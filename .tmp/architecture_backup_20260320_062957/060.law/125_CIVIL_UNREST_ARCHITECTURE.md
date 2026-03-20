# ============================================================
# CIVIL UNREST ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Civil unrest represents non-violent to semi-violent public dissatisfaction.

levels:
- protest
- mass_protest
- riot

drivers:
- low_loyalty
- economic_failure
- policy_dissatisfaction
- injustice

effects:
- productivity_loss
- instability_increase
- escalation risk

transition:
- protest -> riot -> conflict (if unmanaged)
