# ============================================================
# LIFE OS ACCESS CONTROL
# ============================================================

status: canonical
layer: 100.security
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define role and boundary based access control for Life OS.

roles:
- user_self
- approved_application
- operator
- auditor
- integration_consumer

access_rules:
- user_self is primary authority over personal life data access
- applications receive least-privilege scoped access
- operators access operational context, not unrestricted personal content
- auditors require traceable read paths
- integration consumers only receive contract-approved projections
