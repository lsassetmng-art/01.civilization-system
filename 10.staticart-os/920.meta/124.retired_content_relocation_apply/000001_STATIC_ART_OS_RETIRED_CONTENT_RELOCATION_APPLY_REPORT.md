# ============================================================
# STATIC ART OS RETIRED CONTENT RELOCATION APPLY REPORT
# ============================================================

status: generated
system: StaticArtOS
owner: Boss
prepared_by: Zero

summary:
| Metric | Value |
|---|---:|
| moved_dir_count | 11 |
| remaining_retired_dir_count | 0 |
| review_required_count | 0 |
| conflict_count | 0 |

artifacts:
- latest_retired_root_dir: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/999.archive/root-structure-retired/20260419_180721
- inventory_tsv: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/123.retired_content_relocation_audit/000002_RETIRED_DIR_INVENTORY.tsv
- moved_tsv: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/124.retired_content_relocation_apply/000002_STATIC_ART_OS_RETIRED_CONTENT_RELOCATION_MOVED.tsv
- conflict_tsv: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/124.retired_content_relocation_apply/000003_STATIC_ART_OS_RETIRED_CONTENT_RELOCATION_CONFLICTS.tsv
- apply_report: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/124.retired_content_relocation_apply/000001_STATIC_ART_OS_RETIRED_CONTENT_RELOCATION_APPLY_REPORT.md

default_mapping_applied:
- 060.reference-integration -> 060.integration/060.reference-integration
- 121.* / 122.* / 123.* / 124.* -> 120.implementation/<same_name>
- 131.* / 132.* -> 130.development/<same_name>
- 000.index / 010.overview / 120.exactness / 999.summary -> 900.meta/<same_name>

result:
- retired canonical relocation applied successfully
