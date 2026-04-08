# ============================================================
# 012 INTEGRATION OVERVIEW
# ============================================================

status: canonical
layer: flow
domain: integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the flow overview of the integration domain.

summary:
The integration flow layer defines how contracts are requested,
validated, projected, accepted, rejected, traced,
and separated into internal, external, live-event,
replay-event, proposal, and audit paths.

flow_intent:
Architecture defines boundary rules.
Runtime resolves active contract state.
Flow defines the ordered steps that determine
whether integration proceeds, becomes proposal-only,
or is blocked entirely.

flow_rules:
- Integration flow must start from typed contract context.
- Scope and authority must be checked before delivery or acceptance.
- Proposal path and canonical-write path must remain separate.
- Event replay and live event paths must remain separate.
- Trace emission is mandatory for sensitive operations.
