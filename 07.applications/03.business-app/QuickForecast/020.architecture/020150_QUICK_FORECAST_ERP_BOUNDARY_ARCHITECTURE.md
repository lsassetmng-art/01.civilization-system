# ============================================================
# QUICK FORECAST ERP BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Fixes the architectural boundary between QuickForecast and ERP.

quickforecast_side:
- rapid demand / opportunity estimation
- lightweight scenario inspection
- proposal draft creation
- quick profit preview
- local-first drafting support

erp_side:
- canonical enterprise record
- governed approval
- official enterprise workflow
- authoritative cross-function integration
- final enterprise operational ownership

boundary_rule:
QuickForecast may prepare, preview, and suggest,
but ERP remains the official governed system
where enterprise-authoritative lifecycle control is required.
