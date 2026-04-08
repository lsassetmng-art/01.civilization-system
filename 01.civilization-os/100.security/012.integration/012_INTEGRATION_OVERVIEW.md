# ============================================================
# 012 INTEGRATION OVERVIEW
# ============================================================

status: canonical
layer: security
domain: integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the security overview of the integration domain.

summary:
The integration security layer defines authorization,
projection enforcement, mutation control,
trace obligations, proposal-path isolation,
and fail-closed security rules
for all contract-based boundary crossings.

security_intent:
Integration is where disclosure and mutation risks concentrate.
Security exists to ensure that read-only export,
proposal-only import, bounded sync, canonical write,
replay event delivery, and audit access
are all separately controlled and traceable.

scope:
- contract read and write authorization
- projection-scope enforcement
- mutation-class enforcement
- proposal-only isolation
- replay and historical contract access control
- trace and incident evidence preservation

security_rules:
- Integration actions must be controlled by contract class and authority basis.
- Proposal-only inputs must never mutate canonical truth directly.
- Public export must be projection-safe.
- Historical and replay paths must be distinctly authorized and labeled.
- Security decisions must fail closed.
