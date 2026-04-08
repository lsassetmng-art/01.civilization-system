# ============================================================
# PRODUCT PORTFOLIO MANAGER ERP BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

erp_boundary_objective:
Protect authoritative ERP values while enabling BusinessOS-side portfolio analysis.

erp_reference_data:
- product master snapshot
- sales metrics
- margin-related metrics
- inventory indicators
- purchasing indicators where exposed
- category and brand context

allowed_patterns:
- read ERP values
- derive application-side scores
- prepare proposals for human review
- request approved downstream actions through controlled integration

forbidden_patterns:
- silent ERP overwrite
- uncontrolled master mutation
- approval bypass
- hidden correction of ERP truth inside the app
