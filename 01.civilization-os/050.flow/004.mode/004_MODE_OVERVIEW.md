# ============================================================
# 004 MODE OVERVIEW
# ============================================================

status: canonical
layer: flow
domain: mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the flow overview of the mode domain.

summary:
The mode flow layer defines how mode requests,
mode resolution, conflict handling, transition handling,
visibility filtering, and historical inspection
proceed in deterministic process order.

flow_intent:
Architecture defines what mode is.
Runtime resolves active mode.
Flow defines when mode is requested,
how conflicts are resolved,
how transitions are applied,
and how blocked paths are handled.

scope:
- mode request flow
- active mode selection flow
- conflict handling flow
- transition execution flow
- historical mode flow
- rejection flow

flow_rules:
- Every mode flow must begin from canonical scope.
- Conflict must be resolved before effective mode exposure.
- Transition mode must not be confused with steady mode.
- Historical and current mode flows must remain separated.
- Rejection branches must emit explicit failure codes.
