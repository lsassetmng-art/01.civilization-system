# ============================================================
# STATIC ART OS CANONICAL CONTENT INTEGRITY AUDIT REPORT
# ============================================================

status: generated
system: StaticArtOS
owner: Boss
prepared_by: Zero

scope:
- audit canonical content placement after retired root relocation
- verify moved target dirs
- detect unexpected old root-level remnants
- detect empty canonical target dirs
- no file moves performed

summary:
| Metric | Value |
|---|---:|
| expected_target_rows | 11 |
| missing_target_count | 0 |
| empty_after_move_count | 0 |
| unexpected_old_root_count | 0 |
| empty_canonical_dir_count | 0 |
| retired_remains_count | 0 |

artifacts:
- expected_tsv: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/125.canonical_content_integrity_audit/000002_STATIC_ART_OS_EXPECTED_CANONICAL_LOCATION_CHECK.tsv
- unexpected_tsv: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/125.canonical_content_integrity_audit/000003_STATIC_ART_OS_UNEXPECTED_CANONICAL_PLACEMENT.tsv
- empty_dirs_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/125.canonical_content_integrity_audit/000004_STATIC_ART_OS_EMPTY_CANONICAL_DIRS.txt
- retired_remains_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/125.canonical_content_integrity_audit/000005_STATIC_ART_OS_RETIRED_ROOT_DIR_REMAINS.txt
- tree_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/125.canonical_content_integrity_audit/000006_STATIC_ART_OS_CANONICAL_TARGET_TREE_SNAPSHOT.txt
- report_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/125.canonical_content_integrity_audit/000001_STATIC_ART_OS_CANONICAL_CONTENT_INTEGRITY_AUDIT_REPORT.md

expected_mapping_reference:
- 060.reference-integration -> 060.integration/060.reference-integration
- 121.* / 122.* / 123.* / 124.* -> 120.implementation/<same_name>
- 131.* / 132.* -> 130.development/<same_name>
- 000.index / 010.overview / 120.exactness / 999.summary -> 900.meta/<same_name>

result:
- canonical content integrity audited
- no relocation applied in this step
