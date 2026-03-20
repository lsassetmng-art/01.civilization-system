# ============================================================
# MODE OVERVIEW ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: mode

definition:
Mode defines distinct gameplay or interaction contexts
within Civilization.

modes:
- persona_mode
- story_mode

persona_mode:
- default system mode
- full civilization simulation

story_mode:
- scenario-based experience
- may use restricted or alternate rules
- unlocked via access conditions

rules:
- modes must be explicitly selected
- mode state must not silently override another mode
- each mode may have separate progression logic

final_rule:
Modes must be isolated execution contexts
with explicit entry conditions.
