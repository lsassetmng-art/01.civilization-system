# ============================================================
# TIME CONTROL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Time control interface allows users to inspect and invoke allowed
time-related controls such as personal acceleration if enabled.

responsibilities:
- show world time
- show personal acceleration status
- present allowed control options
- display consequences of time acceleration

rules:
- interface cannot directly alter authoritative world time
- acceleration requests must route through runtime validation
- disabled bonuses or penalties during acceleration must be clearly shown

final_rule:
Time control is an explicit request surface,
not an authoritative clock controller.
