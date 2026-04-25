# ============================================================
# AIWORKER WB04 APPLY ORDER EXACT
# ============================================================

status: wb04-apply-order
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact apply order for WB04 payload JSON contract work.

apply_order:
1. freeze business request event JSON contract
2. freeze command payload JSON contract
3. freeze draft payload JSON contract
4. freeze staging normalized payload JSON contract
5. freeze official intake payload JSON contract
6. freeze result event payload JSON contract
7. freeze payload schema catalog identifiers
8. freeze sanitization and replay rules
9. freeze result_code / summary_code / summary band mapping
10. verify all payload surfaces are lifecycle-distinct
11. freeze payload contract journal entry

verification_minimum:
- every payload surface has explicit version
- every payload surface has explicit required fields
- request/result boundary contracts are separated
- replay lineage fields are present where required
- result payload excludes raw internal refs
