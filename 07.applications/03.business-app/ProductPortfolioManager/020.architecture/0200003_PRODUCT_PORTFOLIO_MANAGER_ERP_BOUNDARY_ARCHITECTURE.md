# ============================================================
# PRODUCT PORTFOLIO MANAGER ERP BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

erp_boundary_objective:
Allow BusinessOS-side judgment without eroding ERP authority.

read_reference_scope:
- product identity
- sales aggregates
- cost aggregates
- gross profit indicators
- inventory indicators
- lifecycle-related indicators where exposed

forbidden_patterns:
- silent overwrite of ERP truth
- hidden correction of ERP facts in local state
- implicit approval bypass
- ambiguous source ownership

allowed_patterns:
- read ERP values
- create metric snapshots for judgment reproducibility
- derive scores
- prepare proposals
- route downstream actions through approved paths
