# ============================================================
# ACCESS CONTROL SECURITY
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
- approvers must be explicit
- integration actions require elevated authority
