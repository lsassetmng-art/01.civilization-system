# ============================================================
# PARTY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Party is a dynamic political alignment block, not a permanent fixed ideology container.

party_model:
- dynamically generated
- support-based
- issue-based

example_blocks:
- economy_focus
- military_focus
- liberty_focus
- control_focus
- welfare_focus

attributes:
- party_id
- nation_id
- support_rate
- ideology_vector
- current_bloc_strength

purpose:
- simplify politics
- avoid permanent overcomplex party bureaucracy
- support parliament and elections
