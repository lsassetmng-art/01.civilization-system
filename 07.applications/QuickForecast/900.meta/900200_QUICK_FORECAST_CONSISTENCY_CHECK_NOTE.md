# ============================================================
# QUICK FORECAST CONSISTENCY CHECK NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines simple consistency review targets for QuickForecast.

review_targets:
- all layer overview files exist
- all layer index files exist
- root index reflects current file set
- rebuilt book includes newly added files
- Basic / Pro boundary remains explicit
- ERP coexistence remains explicit
- Forecast -> Action -> Proposal -> Profit chain remains explicit
- Pro share / approval / handoff remains explicit

expected_layers:
- 010.constitution
- 020.architecture
- 030.model
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 090.interface
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development
- 900.meta
