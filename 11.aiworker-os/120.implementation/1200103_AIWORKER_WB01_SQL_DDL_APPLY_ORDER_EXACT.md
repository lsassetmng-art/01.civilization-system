# ============================================================
# AIWORKER WB01 SQL DDL APPLY ORDER EXACT
# ============================================================

status: wb01-apply-order
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact apply order for WB01 SQL DDL.

apply_order:
1. create schema `aiworker`
2. create code tables
3. insert minimum seed families and values
4. create master tables
5. create tendency tables
6. create growth and capability tables
7. create assignment and availability tables
8. create affinity and restricted tables
9. create audit and history tables
10. create command / draft / staging / official_intake / event_outbox tables
11. create unique indexes
12. create normal indexes
13. add check constraints
14. verify zero forbidden direct-read grants
15. freeze migration journal entry

verification_minimum:
- all target tables exist
- all expected unique indexes exist
- one-current-row partial indexes exist
- code family seed rows exist
- no cx22073jw views are created in WB01
- no AI-worker direct raw table read grants are introduced
