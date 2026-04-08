# ============================================================
# 012 INTEGRATION OVERVIEW
# ============================================================

status: canonical
layer: runtime
domain: integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the runtime overview of the integration domain.

summary:
The integration runtime resolves active contracts,
enforces authority boundaries,
validates import/export paths,
filters projection scope,
and preserves traceability for internal, external,
and event-driven boundary crossing.

runtime_intent:
Architecture defines integration boundaries.
Runtime decides what contract is effective now,
what export is allowed,
what import is accepted or rejected,
and what trace must be emitted.

runtime_rules:
- Runtime must resolve typed contracts only.
- Runtime must enforce authority basis before sensitive transfer.
- Runtime must fail closed on canonical overwrite attempts without authority.
- Runtime must separate live and historical event integration.
- Runtime must emit trace for accepted and rejected sensitive operations.
