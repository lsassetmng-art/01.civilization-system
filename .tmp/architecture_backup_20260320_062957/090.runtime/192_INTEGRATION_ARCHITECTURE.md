# ============================================================
# INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Runtime integration binds all major domains into one execution ecosystem.

integrated_domains:
- player
- economy
- government
- law
- security
- war
- interface

integration_patterns:
- downstream_domain_event
- cross-domain validation
- notification fanout
- observability emission

rules:
- integrations must be explicit
- direct hidden cross-domain mutation is forbidden
- integration order must remain deterministic and documented

final_rule:
Integration exists to connect explicit domain events,
not to bypass domain boundaries.
