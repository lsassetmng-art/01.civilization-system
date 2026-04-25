# CASUAL CHAT WORKER IMPLEMENTATION READY FREEZE

status: freeze-candidate
phase: Phase E
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Canonical Fixed Points

| item | fixed value |
|---|---|
| app_name | CasualChatWorker |
| display_name | 雑談ワーカー |
| category | 03.business-app |
| design_root | ~/01.civilization-system/07.applications/03.business-app/CasualChatWorker |
| implementation_root | ~/03.civilization-development/03.business-os/CasualChatWorker |
| main_schema | business |
| reference_schema | aiworker / cx22073jw / app_common |
| DB env | PERSONA_DATABASE_URL |
| ERP env | DATABASE_URL only when ERP linkage is explicitly added |
| worker_types | Friend / Lover |
| base_price | 30 minutes 500 JPY |
| durations | 30 / 60 / 90 / 120 minutes |
| monthly_free_tickets | 2 |
| free_minutes_per_ticket | 30 |
| max_free_minutes_per_month | 60 |
| v1_carryover | no carryover candidate |
| Lover definition | pseudo-romantic rental boyfriend/girlfriend style AI worker |
| Lover relationship | not real relationship |
| ERP direct linkage | not v1 |

## 2. Freeze Pass Criteria

PASS when:
- all required documents exist
- all required folders have INDEX.md and OVERVIEW.md
- integrated canonical exists
- pricing appears consistently
- monthly free ticket appears consistently
- Friend / Lover appear consistently
- Lover safety boundary appears
- business / aiworker / cx22073jw / app_common boundary appears
- no ERP direct linkage is included in v1
- no DB apply is executed
- no destructive action is included

## 3. Freeze Result

Current document status:
- freeze-candidate

Final PASS must be determined by verification gate.

