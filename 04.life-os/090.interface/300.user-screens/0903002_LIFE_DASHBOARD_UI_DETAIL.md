# ============================================================
# LIFE DASHBOARD UI DETAIL
# ============================================================

status: canonical-draft
system: life-os
layer: interface
domain: user-screens
owner: Boss
prepared_by: Zero

purpose:
Defines the main LifeOS dashboard UI.

route_id: /life/home

compatibility_route:
- route: /life/dashboard
  status: deprecated
  behavior: redirect
  redirect_target: /life/home

layout blocks:
- today status summary
- quick input row
- reminder / support card area
- home task short list
- expense short summary
- sleep / condition short summary
- weekly review entry point

ui principles:
- one-look daily orientation
- sensitive info minimized on shared surfaces
- fast jump to input
