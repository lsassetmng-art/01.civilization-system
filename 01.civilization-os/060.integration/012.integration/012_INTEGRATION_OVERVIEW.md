# ============================================================
# 012 INTEGRATION OVERVIEW
# ============================================================

status: canonical
layer: integration
domain: integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the self-integration overview of the integration domain.

summary:
The integration layer also requires a canonical self-description
of how integration contracts, authority paths,
projection rules, and trace requirements
are themselves integrated and exposed.

integration_intent:
This sublayer defines integration-of-integration,
so contract metadata and boundary semantics
can be shared consistently without losing authority clarity.

scope:
- contract metadata projection
- authority-path projection
- traceability export
- proposal-path export
- historical contract export

integration_rules:
- Contract metadata export must remain typed.
- Authority-path export must not create new authority by projection alone.
- Historical contract export must be labeled.
- Proposal-path export must remain non-mutating.
