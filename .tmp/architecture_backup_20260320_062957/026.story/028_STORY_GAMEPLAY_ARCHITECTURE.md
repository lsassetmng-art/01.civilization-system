# ============================================================
# STORY GAMEPLAY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Story gameplay consists of interactive adventure elements.

interaction_types:
- dialogue_choice
- exploration
- item_search
- npc_interaction
- puzzle
- mystery

dialogue:
- player selects choices
- choices may branch story

exploration:
- player searches locations
- hidden items or clues may exist

puzzle:
- logical or knowledge-based challenge
- may block progression until solved

rules:
- player must explicitly choose actions
- hidden information must be discoverable
- puzzles must be solvable without external system break

final_rule:
Story gameplay must remain interactive,
branchable, and player-driven.
