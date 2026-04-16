# ============================================================
# PROJECT FLOW MULTI DEVICE INTERFACE POLICY
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines interface policy for smartphone and PC parity.

interface_rules:
- same feature set on smartphone and PC
- smartphone may use compact layout
- PC may use dense table and multi-pane layout
- action placement may vary by form factor
- action availability must remain the same
- read-only mode visuals must remain clear on both device types

screen_behavior_examples:
smartphone:
- stacked layout
- bottom or compact menu
- reduced simultaneous columns
- detail navigation by screen transition

pc:
- denser list presentation
- wider table columns
- side-by-side detail area where useful
- same actions visible with wider layout
