# ============================================================
# AIWORKER WB05 APPLY ORDER EXACT
# ============================================================

status: wb05-apply-order
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact apply order for WB05 grant and RLS design.

apply_order:
1. freeze role family catalog
2. freeze raw-table access ledger
3. freeze official intake write/execution separation
4. freeze controlled function EXECUTE boundary
5. freeze event delivery role boundary
6. freeze restricted and privileged reviewer role boundary
7. freeze deny-by-default raw-table posture
8. freeze RLS direction for tenant-sensitive families
9. review grant direction with 佐藤(DB担当)
10. freeze grant/RLS journal entry

verification_minimum:
- ROLE_AIW_NO_RAWTABLE_AIWORKER has no raw-table grants
- official intake writer and function executor are separated
- event delivery role is narrower than audit/review roles
- restricted and privileged reviewer roles are separated from general review
- RLS is defined as defense-in-depth, not replacement for deny-by-default grants
