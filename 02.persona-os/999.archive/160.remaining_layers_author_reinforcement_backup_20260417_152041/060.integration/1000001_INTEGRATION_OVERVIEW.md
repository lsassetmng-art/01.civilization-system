# ============================================================
# PERSONA OS INTEGRATION OVERVIEW
# ============================================================

status: implementation-ready-followup
system: PersonaOS
layer: integration
canonical: true

integration_role:
Integration transports inbound requests, outbound results,
and downstream synchronization messages without becoming truth authority.

authority_rule:
- validation owns acceptance decision
- canonical apply owns truth mutation
- external rights own export permission
- integration owns transport, retry safety, and correlation continuity

required_paths:
- external apply inbound
- result feedback outbound
- external sync outbox
- downstream callback normalization
- retry and dead-letter replay
