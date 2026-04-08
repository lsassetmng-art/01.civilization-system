# ============================================================
# 120 012 INTEGRATION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Provides the implementation summary for domain 012.integration.

summary:
This file summarizes the implementation responsibilities of integration:
- contract validation
- contract-class routing
- projection filtering
- proposal-only isolation
- bounded-sync handling
- canonical-write guarding
- replay/history reading
- denial and trace handling

included_core_files:
- 1200120001_INTEGRATION_CORE_IMPLEMENTATION.md
- 1200120002_INTERNAL_INTEGRATION_IMPLEMENTATION.md
- 1200120003_EXTERNAL_INTEGRATION_IMPLEMENTATION.md
- 1200120004_EVENT_INTEGRATION_IMPLEMENTATION.md
- 1200120005_AUTHORITY_BOUNDARY_INTEGRATION_IMPLEMENTATION.md

implementation_rules:
- proposal-only and write-capable lanes must remain separated
- public projection must not use restricted raw payload
- replay/history must not reuse live handlers
- authority checks must remain explicit
