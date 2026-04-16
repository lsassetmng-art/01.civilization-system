# ============================================================
# ACCESS AND AUDIT SECURITY
# ============================================================

status: canonical
layer: security
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

roles:
- viewer
- editor
- manager
- approver
- admin

security_rules:
- viewers cannot finalize decisions
- approvers must remain explicit
- audit trails must preserve meaningful before/after context
