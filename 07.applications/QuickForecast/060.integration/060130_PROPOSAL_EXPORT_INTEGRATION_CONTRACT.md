# ============================================================
# PROPOSAL EXPORT INTEGRATION CONTRACT
# ============================================================

status: canonical
layer: integration
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how proposal/planning drafts may be exported or handed off.

export_targets:
- internal review flow
- approval flow
- enterprise receiving system
- external draft consumption flow

rules:
- exported draft type must be explicit
- source forecast and scenario must remain traceable
- export success and enterprise acceptance must not be conflated
