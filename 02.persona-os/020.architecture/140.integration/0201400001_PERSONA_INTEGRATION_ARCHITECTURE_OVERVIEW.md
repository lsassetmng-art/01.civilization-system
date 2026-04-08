# ============================================================
# PERSONA INTEGRATION ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: architecture
domain: integration
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the structural overview of PersonaOS integration domain.

summary:
Integration defines how PersonaOS exchanges approved requests,
validated contracts,
and explicit result payloads
with host apps, BusinessOS, StreamingOS, Civilization-linked systems,
and approved external consumers.

integration_groups:
inbound request
outbound contract
result contract
approved source boundary
operational delivery boundary

boundary:
Integration carries contracts, not truth authority.
Approved external systems may request or receive contract-bound data,
but may not seize PersonaOS truth ownership.
Outbox and retry delivery state are not the same as integration authority truth.
