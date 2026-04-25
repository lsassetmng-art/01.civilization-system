# ============================================================
# STATIC ART OS ROOT STRUCTURE SAFE APPLY REPORT
# ============================================================

status: generated
system: StaticArtOS
canonical_source_system: CivilizationOS
prepared_by: Zero

summary:
| Metric | Value |
|---|---:|
| created_canonical_root_dirs | 6 |
| retired_extra_root_dirs | 11 |
| missing_after_apply | 0 |
| extra_after_apply | 0 |

artifacts:
- before_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/920918_STATIC_ART_OS_ROOT_DIRS_BEFORE_APPLY.txt
- after_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/920919_STATIC_ART_OS_ROOT_DIRS_AFTER_APPLY.txt
- created_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/920920_STATIC_ART_OS_CREATED_CANONICAL_ROOT_DIRS.txt
- retired_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/920921_STATIC_ART_OS_RETIRED_EXTRA_ROOT_DIRS.txt
- missing_after_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/920922_STATIC_ART_OS_MISSING_ROOT_DIRS_AFTER_APPLY.txt
- extra_after_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/920923_STATIC_ART_OS_EXTRA_ROOT_DIRS_AFTER_APPLY.txt
- report_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/920917_STATIC_ART_OS_ROOT_STRUCTURE_SAFE_APPLY_REPORT.md

archive_root:
- /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/999.archive/root-structure-retired/20260419_180721

policy:
- missing canonical root dirs were created
- extra root dirs were retired to canonical 999.archive
- no rename guess was used

result:
- direct_root_structure_match_civilization_os: OK
