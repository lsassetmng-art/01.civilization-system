# ============================================================
# STATIC ART OS ROOT POST-SYNC VERIFY AND REGEN REPORT
# ============================================================

status: aborted
system: StaticArtOS
canonical_source_system: CivilizationOS
owner: Boss
prepared_by: Zero

summary:
| Metric | Value |
|---|---:|
| missing_in_static_art_count | 6 |
| extra_in_static_art_count | 11 |

artifacts:
- civilization_root_dirs: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/122.root_post_sync_verify_and_regen/000001_CIVILIZATION_OS_ROOT_DIRS.txt
- staticart_root_dirs: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/122.root_post_sync_verify_and_regen/000002_STATIC_ART_OS_ROOT_DIRS.txt
- missing_in_staticart: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/122.root_post_sync_verify_and_regen/000003_MISSING_IN_STATIC_ART.txt
- extra_in_staticart: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/122.root_post_sync_verify_and_regen/000004_EXTRA_IN_STATIC_ART.txt
- report_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/122.root_post_sync_verify_and_regen/000006_STATIC_ART_OS_ROOT_POST_SYNC_VERIFY_AND_REGEN_REPORT.md

result:
- regeneration aborted
- root direct folder structure is not yet identical to CivilizationOS
