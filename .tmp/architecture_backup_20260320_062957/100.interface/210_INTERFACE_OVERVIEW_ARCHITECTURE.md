# ============================================================
# INTERFACE OVERVIEW ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: interface

definition:
Interface is the player-facing and operator-facing interaction surface
for Civilization.

purpose:
- present state clearly
- collect explicit intent
- prevent direct mutation
- connect human decisions to validated runtime flow

principles:
- interface is not the source of truth
- interface collects intent, not final state mutation
- interface must surface important consequences clearly
- hidden critical actions are forbidden

subdomains:
- application_layer
- web_interface
- ui_layer
- exam_delivery
- building_placement
- gazette_delivery
- time_control_surface
- international_surface

constitution_alignment:
- no direct override
- explicit action only
- critical visibility required

final_rule:
Interface may display state and capture intent,
but may never directly mutate authoritative state.
