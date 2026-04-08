# ============================================================
# 006 PLAYER OVERVIEW
# ============================================================

status: canonical
layer: flow
domain: player
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the flow overview of the player domain.

summary:
The player flow layer defines how player state is requested,
how identity, role, progress, and participation boundary
are resolved in order,
and how live versus historical player paths are separated.

flow_intent:
Architecture defines player truth.
Runtime resolves player state.
Flow defines the process order that decides
whether a player may participate,
may only view,
or may only appear in history.

flow_rules:
- Player flow must bind canonical player or identity scope first.
- Identity validity must be checked before live participation.
- Lifecycle, role, progress, and boundary must be resolved in order.
- Historical and live participation paths must remain separate.
