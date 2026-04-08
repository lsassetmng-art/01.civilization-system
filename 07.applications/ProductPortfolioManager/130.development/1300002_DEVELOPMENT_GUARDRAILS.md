# ============================================================
# PRODUCT PORTFOLIO MANAGER DEVELOPMENT GUARDRAILS
# ============================================================

status: canonical
layer: development
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

guardrails:
- additive changes only
- preserve auditability
- keep ERP boundary explicit
- no phase-less fixes
- no uncontrolled authority expansion
