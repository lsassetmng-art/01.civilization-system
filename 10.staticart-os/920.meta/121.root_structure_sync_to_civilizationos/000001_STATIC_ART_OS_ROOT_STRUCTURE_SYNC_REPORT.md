# ============================================================
# STATIC ART OS ROOT STRUCTURE SYNC TO CIVILIZATION OS REPORT
# ============================================================

status: generated
system: StaticArtOS
canonical_source_system: CivilizationOS
prepared_by: Zero
mode: audit
phase: audit

paths:
- civilization_root: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os
- staticart_root: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os
- output_dir: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/121.root_structure_sync_to_civilizationos

summary:
| Metric | Value |
|---|---:|
| civilization_root_dir_count | 18 |
| staticart_root_dir_count_before | 23 |
| common_root_dir_count | 12 |
| missing_in_staticart_count | 6 |
| extra_in_staticart_count | 11 |
| staticart_root_dir_count_after | 0 |

artifacts:
- civ_list: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/121.root_structure_sync_to_civilizationos/000002_CIVILIZATION_OS_ROOT_DIRS.txt
- staticart_before: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/121.root_structure_sync_to_civilizationos/000003_STATIC_ART_OS_ROOT_DIRS_BEFORE.txt
- common: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/121.root_structure_sync_to_civilizationos/000004_COMMON_ROOT_DIRS.txt
- missing: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/121.root_structure_sync_to_civilizationos/000005_MISSING_IN_STATIC_ART.txt
- extra: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/121.root_structure_sync_to_civilizationos/000006_EXTRA_IN_STATIC_ART.txt
- mapping_tsv: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/121.root_structure_sync_to_civilizationos/000007_STATIC_ART_OS_ROOT_DIR_MAPPING.tsv
- staticart_after: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/121.root_structure_sync_to_civilizationos/000008_STATIC_ART_OS_ROOT_DIRS_AFTER.txt
- report_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/121.root_structure_sync_to_civilizationos/000001_STATIC_ART_OS_ROOT_STRUCTURE_SYNC_REPORT.md

notes:
- Canonical direct root directory structure is taken from CivilizationOS.
- Mapping template was generated.
- To repair, edit 000007_STATIC_ART_OS_ROOT_DIR_MAPPING.tsv and rerun with MODE=apply.
- Allowed actions in mapping TSV:
  - KEEP
  - CREATE
  - RENAME_TO
  - RETIRE_TO_ARCHIVE
