# ============================================================
# STATIC ART OS FINAL INTEGRITY AUDIT REPORT
# ============================================================

status: generated
system: StaticArtOS
canonical_source_system: CivilizationOS
owner: Boss
prepared_by: Zero
generated_at: 2026-04-20T04:30:19+0900

summary:
| Metric | Value |
|---|---:|
| root_missing_count | 6 |
| root_extra_count | 0 |
| integrated_source_count | 467 |
| retired_archive_remaining_file_count | 0 |
| ok_count | 30 |
| ng_count | 1 |

canonical_target_file_counts:
| Target | File Count |
|---|---:|
| 060.integration/060.reference-integration | 3 |
| 120.implementation/121.db-implementation-prep | 31 |
| 120.implementation/122.api-implementation-prep | 85 |
| 120.implementation/123.ui-implementation-prep | 41 |
| 120.implementation/124.test-implementation-prep | 30 |
| 130.development/131.implementation-roadmap | 120 |
| 130.development/132.operations | 88 |
| 900.meta/000.index | 2 |
| 900.meta/010.overview | 2 |
| 900.meta/120.exactness | 6 |
| 900.meta/999.summary | 3 |

artifacts:
- checklist_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/127.final_integrity_audit/000002_STATIC_ART_OS_FINAL_INTEGRITY_CHECKLIST.txt
- root_missing_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/127.final_integrity_audit/000003_STATIC_ART_OS_FINAL_ROOT_MISSING.txt
- root_extra_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/127.final_integrity_audit/000004_STATIC_ART_OS_FINAL_ROOT_EXTRA.txt
- tree_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/127.final_integrity_audit/000005_STATIC_ART_OS_FINAL_CANONICAL_TREE_SNAPSHOT.txt
- report_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/127.final_integrity_audit/000001_STATIC_ART_OS_FINAL_INTEGRITY_AUDIT_REPORT.md

final_result:
- FAIL
