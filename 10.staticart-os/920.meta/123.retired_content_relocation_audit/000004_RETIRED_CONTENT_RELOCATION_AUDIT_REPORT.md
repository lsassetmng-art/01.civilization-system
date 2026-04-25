# ============================================================
# STATIC ART OS RETIRED CONTENT RELOCATION AUDIT REPORT
# ============================================================

status: generated
system: StaticArtOS
owner: Boss
prepared_by: Zero

scope:
- audit latest retired root-structure bundle only
- generate relocation candidates only
- no files moved

summary:
| Metric | Value |
|---|---:|
| retired_root_dir_count | 11 |
| retired_file_candidate_count | 340 |
| review_required_dir_count | 0 |

artifacts:
- latest_retired_root_dir: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/123.retired_content_relocation_audit/000001_LATEST_RETIRED_ROOT_DIR.txt
- inventory_tsv: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/123.retired_content_relocation_audit/000002_RETIRED_DIR_INVENTORY.tsv
- file_candidate_tsv: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/123.retired_content_relocation_audit/000003_RETIRED_FILE_CANDIDATE_RELOCATION.tsv
- tree_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/123.retired_content_relocation_audit/000005_RETIRED_DIR_TREE.txt
- summary_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/123.retired_content_relocation_audit/000004_RETIRED_CONTENT_RELOCATION_AUDIT_REPORT.md

default_mapping_policy:
- 060.reference-integration -> 060.integration/060.reference-integration
- 121.* / 122.* / 123.* / 124.* -> 120.implementation/<same_name>
- 131.* / 132.* -> 130.development/<same_name>
- 000.index / 010.overview / 120.exactness / 999.summary -> 900.meta/<same_name>

result:
- relocation candidates generated
- no relocation applied yet
