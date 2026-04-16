# ============================================================
# POCKET SECRETARY HOME SCREEN INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the home screen interface of PocketSecretary.

layout:
- top left: speech bubble
- bottom left: primary navigation buttons
- bottom right: secretary character area
- full background: tappable background area
- top right: settings button

primary buttons:
- schedule
- todo
- library
- tools

speech bubble may show:
- today's schedule
- next schedule
- todo summary
- notification summary
- secretary guidance

tap interactions:
- tap secretary -> open secretary selection surface
- tap background -> open background selection surface
- tap settings -> open settings

rules:
- speech bubble and dashboard content must stay readable
- secretary and background switching must be intuitive
- home screen must remain understandable even before AI upgrade
