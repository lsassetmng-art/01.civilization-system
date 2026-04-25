# ============================================================
# AIWORKER WB06 APPLY ORDER EXACT
# ============================================================

status: wb06-apply-order
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact apply order for WB06.

apply_order:
1. freeze replay decision flow
2. freeze BusinessOS replay/redelivery boundary
3. freeze replay decision input/output contract
4. freeze safety guards for replay/backfill/recovery
5. freeze replay decision matrix and ledger direction
6. freeze backfill and recovery runbook direction
7. freeze acceptance test catalog
8. verify WB01-WB05 dependencies are referenced consistently
9. review SQL-affecting recovery direction with 佐藤(DB担当)
10. freeze WB06 journal entry

verification_minimum:
- replay decision codes are fixed
- recovery runbook sections are fixed
- acceptance test buckets cover boundary, payload, replay, grants, and recovery
- implementation-ready preconditions are clear
