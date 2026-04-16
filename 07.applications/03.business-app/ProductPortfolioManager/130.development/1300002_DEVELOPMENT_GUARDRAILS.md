# ============================================================
# PRODUCT PORTFOLIO MANAGER DEVELOPMENT GUARDRAILS
# ============================================================

status: canonical
layer: development
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

guardrails:
- additive only
- preserve auditability
- preserve ERP authority boundary
- preserve forecast advisory boundary
- no phase-less fixes
- no uncontrolled authority expansion
