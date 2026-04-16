# ============================================================
# NAMECARD PLATFORM ADAPTIVE INTERFACE FREEZE
# ============================================================

status: canonical
layer: interface
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Fixes adaptive/responsive interface direction across mobile, tablet, and PC.

interface_strategy:
- mobile-first layout
- tablet expanded layout
- PC dense management layout

screen_role_guidance:
- list/detail:
  - mobile yes
  - tablet yes
  - pc yes
- image capture:
  - mobile primary
  - tablet secondary
  - pc non-primary
- share / visibility review:
  - mobile yes
  - tablet yes
  - pc yes
- migration/import:
  - mobile limited
  - tablet partial
  - pc primary
- admin / review / bulk handling:
  - mobile limited
  - tablet partial
  - pc primary

ui_rules:
- no platform may expose forbidden actions differently by business rule
- responsive adaptation may change layout density, not permission meaning
- PC may show more simultaneous panes
- tablet may show split layout where useful
- mobile may use step-based flow for dense review paths

