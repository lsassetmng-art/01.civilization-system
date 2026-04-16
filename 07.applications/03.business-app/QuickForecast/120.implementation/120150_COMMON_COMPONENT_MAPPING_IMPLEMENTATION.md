# ============================================================
# COMMON COMPONENT MAPPING IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines common component reuse targets for QuickForecast.

reuse_targets:
- login / auth common
- user target selector common
- share target selector common
- approval panel common
- history timeline common
- sync status common
- validation message common
- state badge common
- local draft indicator common

quickforecast_specific_components:
- forecast summary strip
- signal input panel
- scenario selector
- action card board
- proposal draft editor
- profit preview card
- ERP handoff readiness panel

principles:
- reuse common governance-aware components where possible
- keep forecast/action/proposal/profit chain app-specific
- avoid duplicating share/approval/history primitives
