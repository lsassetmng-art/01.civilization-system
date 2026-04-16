# ============================================================
# ADAPTIVE LAYOUT POLICY INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines adaptive layout policy by available width.

layout_classes:
- compact
- medium
- expanded

compact_intent:
- iPhone and Android smartphone baseline
- single-column and reduced density layout

medium_intent:
- large phone and transitional tablet width
- selectively expanded panels
- partial side-by-side comparison where safe

expanded_intent:
- tablet-optimized layout
- multi-pane and comparison-heavy rendering

important_rule:
Adaptive layout changes visibility and density only.
It must not introduce a different canonical workflow.
