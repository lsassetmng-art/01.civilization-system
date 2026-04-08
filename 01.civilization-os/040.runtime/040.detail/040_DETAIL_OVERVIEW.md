# ============================================================
# 040 DETAIL OVERVIEW
# ============================================================

status: canonical
layer: runtime
domain: detail
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the runtime overview of the detail domain.

summary:
The detail runtime loads, resolves, filters, validates,
transitions, and exposes detailed truth in a deterministic way.

runtime_intent:
Architecture defines what detail means.
Runtime defines how detail is activated,
how detail is filtered by visibility and lifecycle,
and how detail is safely delivered to downstream consumers.

scope:
- detail record loading
- target binding resolution
- lifecycle filtering
- visibility filtering
- detail transition execution
- failure-safe rejection
- deterministic consumer delivery

non_scope:
- redefining architecture semantics
- direct UI layout ownership
- replacing canonical base models
- uncontrolled free-form rendering

runtime_rules:
- Runtime must fail closed when detail integrity cannot be verified.
- Runtime must not expose restricted detail to unauthorized consumers.
- Runtime must preserve target reference integrity.
- Runtime must produce stable outputs for the same input set.
- Runtime must preserve lifecycle semantics.

required_behavior:
- The runtime must resolve detail by target_ref.
- The runtime must enforce visibility filtering.
- The runtime must enforce lifecycle filtering.
- The runtime must support revision and archival reads.
- The runtime must emit explicit failure reasons.

consumers:
- flow layer
- interface layer
- audit viewers
- operational readers
