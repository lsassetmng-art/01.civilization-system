# ============================================================
# STATIC ART OS EXECUTION RUN ARCHIVE PACK REPORT
# ============================================================

status: generated
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

outputs:
- registry_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/086.execution_run_archive_pack/000001_STATIC_ART_OS_EXECUTION_RUN_REGISTRY.md
- latest_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/086.execution_run_archive_pack/000002_STATIC_ART_OS_LATEST_EXECUTION_RUN_NOTE.md
- refresh_sh: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132550_staticart_refresh_execution_run_archive.sh
- portal_sh: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132560_staticart_execution_run_archive_portal.sh
- report_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/086.execution_run_archive_pack/000003_STATIC_ART_OS_EXECUTION_RUN_ARCHIVE_PACK_REPORT.md

counts:
- run_count: 0

latest_run:
- -

result:
- execution run registry refreshed
- latest execution run note refreshed

rule:
- This pack is execution-run archive oriented.
- It does not perform DB writes.
