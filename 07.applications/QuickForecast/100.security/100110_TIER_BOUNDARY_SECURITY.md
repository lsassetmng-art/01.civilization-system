# ============================================================
# TIER BOUNDARY SECURITY
# ============================================================

status: canonical
layer: security
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines security requirements for Basic / Pro separation.

rules:
- ERP data access is Pro-only
- enterprise submission is Pro-only
- approval routing is Pro-only
- client-visible UI hiding alone is insufficient
- effective authorization must be enforced by governed control
