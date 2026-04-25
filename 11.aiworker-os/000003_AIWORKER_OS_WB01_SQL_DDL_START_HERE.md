# ============================================================
# AIWORKER OS WB01 SQL DDL START HERE
# ============================================================

status: wb01-entry
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This file is the entry point for WB01.
WB01 freezes the exact SQL DDL policy for the aiworker canonical schema.

recommended_read_order:
- 110.infrastructure/1100105_AIWORKER_SQL_DDL_CORE_TABLES_EXACT.md
- 110.infrastructure/1100106_AIWORKER_SQL_DDL_CODE_TABLES_AND_SEEDS_EXACT.md
- 110.infrastructure/1100107_AIWORKER_SQL_DDL_INDEX_AND_CONSTRAINT_LEDGER_EXACT.md
- 120.implementation/1200103_AIWORKER_WB01_SQL_DDL_APPLY_ORDER_EXACT.md
- 120.implementation/1200104_AIWORKER_WB01_SQL_REVIEW_GATE_EXACT.md
- 130.development/1300102_AIWORKER_WB01_NEXT_WORKBLOCK_EXACT.md

frozen_conclusions:
- aiworker is the canonical SQL schema for worker truth
- code families are additive and table-driven
- AI workers never read raw aiworker tables
- cx22073jw read-view DDL is out of WB01 scope and belongs to WB02
- official mutation path remains controlled-function-only
