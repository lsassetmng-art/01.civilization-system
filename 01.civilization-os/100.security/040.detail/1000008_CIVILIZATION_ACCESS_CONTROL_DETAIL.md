# ============================================================
# CIVILIZATION ACCESS CONTROL DETAIL
# ============================================================

status: canonical
layer: 100.security
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define detailed access control semantics for CivilizationOS.

access_dimensions:
- constitutional access
- policy access
- operational access
- runtime execution access
- audit inspection access

evaluation_order:
1 actor identity validity
2 role validity
3 scope validity
4 domain boundary validity
5 operation eligibility
6 audit requirement attachment

prohibited:
- silent privilege escalation
- unaudited privileged execution
- cross-domain privilege inference without explicit rule
