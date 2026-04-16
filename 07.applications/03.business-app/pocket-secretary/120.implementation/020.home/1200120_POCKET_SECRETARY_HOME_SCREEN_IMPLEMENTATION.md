# ============================================================
# POCKET SECRETARY HOME SCREEN IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for the home screen.

implementation directions:
- implement speech bubble area at top left
- implement primary button stack at bottom left
- implement secretary render area at bottom right
- implement tappable background area
- implement settings button at top right
- bind secretary and background selection to explicit selection surfaces

common reference:
PersonaOS background common defines the shared meaning of:
- background selection
- background preference
- available/unlocked background
- explicit background switching

rules:
- home implementation must preserve readability and tap clarity
- render result binding must remain separate from authority logic
