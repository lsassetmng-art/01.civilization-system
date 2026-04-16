
# ============================================================
# ESTIMATE CUSTOMER DELIVERY IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Implementation rules:

- delivery actions are distinct from ERP publication
- readonly links must not expose write actions
- persist delivery history explicitly
- persist open logs explicitly
- support manual customer response recording
- render sent/opened/expiring badges from explicit state

