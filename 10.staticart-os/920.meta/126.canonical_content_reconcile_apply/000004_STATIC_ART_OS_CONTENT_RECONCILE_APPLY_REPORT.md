# ============================================================
# STATIC ART OS CONTENT RECONCILE APPLY REPORT
# ============================================================

status: generated
system: StaticArtOS
owner: Boss
prepared_by: Zero

summary:
| Metric | Value |
|---|---:|
| planned_move_count | 0 |
| moved_file_count | 0 |
| conflict_count | 0 |

artifacts:
- plan_tsv: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/126.canonical_content_reconcile_apply/000001_STATIC_ART_OS_CONTENT_RECONCILE_MOVE_PLAN.tsv
- moved_tsv: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/126.canonical_content_reconcile_apply/000003_STATIC_ART_OS_CONTENT_RECONCILE_MOVED.tsv
- conflict_tsv: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/126.canonical_content_reconcile_apply/000002_STATIC_ART_OS_CONTENT_RECONCILE_CONFLICTS.tsv
- tree_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/126.canonical_content_reconcile_apply/000006_STATIC_ART_OS_CONTENT_RECONCILE_TARGET_TREE_SNAPSHOT.txt
- report_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/126.canonical_content_reconcile_apply/000004_STATIC_ART_OS_CONTENT_RECONCILE_APPLY_REPORT.md

result:
- canonical content reconcile apply completed successfully
- file-level relocation finished without detected destination conflicts
