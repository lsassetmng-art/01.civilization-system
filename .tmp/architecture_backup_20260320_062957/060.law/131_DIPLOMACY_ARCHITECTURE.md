# ============================================================
# DIPLOMACY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Diplomacy defines relations between nations.

relationship_states:
- friendly
- neutral
- tense
- hostile

factors:
- past_actions
- ideology_alignment
- trade_relations
- alliance_network
- conflict_history

effects:
- affects alliance possibility
- affects trade conditions
- affects war likelihood
