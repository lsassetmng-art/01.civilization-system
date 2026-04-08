# ============================================================
# POCKET SECRETARY HOME SCREEN ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the structural architecture of the PocketSecretary home screen.

home screen layout:
- top left: speech bubble information area
- bottom left: primary navigation button stack
- bottom right: secretary character render area
- full background: background render area
- top right: settings button

speech bubble role:
The speech bubble is the secretary-facing summary surface.

speech bubble may show:
- today's schedule summary
- next schedule item
- today's todo count
- notification summary
- travel expense reminder
- bounded secretary guidance

primary navigation buttons:
- schedule
- todo
- library
- tools

interaction structure:
- background tap opens background selection surface
- secretary tap opens secretary selection surface
- settings button opens settings surface

render boundary:
- secretary rendering is consumed through PersonaOS shared VisualRuntime boundary
- background rendering is consumed through PersonaOS shared VisualRuntime boundary
- PocketSecretary owns interaction and UI binding,
  but does not own VisualRuntime core internals

common reference:
PersonaOS background common defines:
- background selection common
- background preference common
- available/unlocked background concept
- explicit background switching

rules:
- the home screen must clearly separate information, navigation,
  secretary presentation, and settings
- secretary and background interaction must remain intuitive
- the speech bubble is advisory and informational only
