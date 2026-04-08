# ============================================================
# 004 MODE OVERVIEW
# ============================================================

status: canonical
layer: runtime
domain: mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the runtime overview of the mode domain.

summary:
The mode runtime resolves active modes,
filters mode visibility, detects mode conflicts,
applies mode transitions, and exposes effective mode state
to downstream consumers in a deterministic way.

runtime_intent:
Architecture defines what mode means.
Runtime defines which mode is currently effective,
which mode is masked, which mode is blocked,
and how transitions are safely applied.

scope:
- active mode resolution
- conflict detection
- transition execution
- visibility-safe delivery
- historical mode inspection
- failure-safe rejection

runtime_rules:
- Runtime must resolve mode from canonical scope.
- Runtime must reject undeclared implicit mode.
- Runtime must fail closed on unresolved conflict.
- Runtime must separate current-active and historical mode reads.
- Runtime must not widen visibility scope during mode delivery.
