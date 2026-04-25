# ============================================================
# STATIC ART OS INVENTORY SUMMARY
# ============================================================

status: generated
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

| Metric | Value |
|---|---|
| total_files | 294 |
| md_files | 173 |
| yaml_files | 3 |
| ts_tsx_files | 71 |
| sh_files | 35 |
| sql_files | 8 |
| csv_files | 0 |
| txt_files | 4 |
| duplicate_basename_count | 3 |

outputs:
- inventory_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/051.inventory_and_duplicate_audit/000001_STATIC_ART_OS_FULL_INVENTORY.txt
- inventory_csv: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/051.inventory_and_duplicate_audit/000002_STATIC_ART_OS_FULL_INVENTORY.csv
- duplicate_basename_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/051.inventory_and_duplicate_audit/000003_STATIC_ART_OS_DUPLICATE_BASENAME_LIST.txt
- duplicate_report_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/051.inventory_and_duplicate_audit/000004_STATIC_ART_OS_DUPLICATE_BASENAME_REPORT.md
- summary_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/051.inventory_and_duplicate_audit/000005_STATIC_ART_OS_INVENTORY_SUMMARY.md
