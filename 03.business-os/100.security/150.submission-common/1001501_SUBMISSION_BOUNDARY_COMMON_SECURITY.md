# ============================================================
# SUBMISSION BOUNDARY COMMON SECURITY
# ============================================================

status: canonical
layer: 100.security
system: business-os
owner: Boss
prepared_by: Zero

definition:
Defines common security constraints for business submission boundaries.

rules:
- direct database mutation from client apps is prohibited
- explicit submit path must remain guarded
- accepted, failed, and conflicted states must remain distinguishable
