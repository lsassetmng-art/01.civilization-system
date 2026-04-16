# ============================================================
# CROSS APPLICATION BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines architectural boundaries between QuickForecast and nearby applications.

boundary_targets:
- ERP
- EstimateCreator
- ProjectFlow
- PocketSecretary
- BusinessOS common capability

quickforecast_primary_role:
- fast forecast-centered judgment support
- lightweight opportunity and demand estimation
- quick proposal starting point
- quick profit preview
- rapid scenario comparison

not_quickforecast_primary_role:
- full governed enterprise processing
- canonical enterprise estimate ownership
- project execution management
- secretary-style life assistance
- heavy workflow governance shell

architecture_rule:
QuickForecast may touch adjacent meanings,
but must not absorb their canonical product role.
