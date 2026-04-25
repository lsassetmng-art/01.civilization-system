# ============================================================
# STATIC ART OS STATUS DASHBOARD REPORT
# ============================================================

status: generated
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

outputs:
- dashboard_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000002_STATIC_ART_OS_STATUS_DASHBOARD.md
- refresh_sh: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132180_staticart_refresh_dashboard.sh
- report_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/054.status_dashboard/000001_STATIC_ART_OS_STATUS_DASHBOARD_REPORT.md

result:
- status dashboard created
- dashboard refresh launcher created

rule:
- dashboard is read-only
- dashboard does not execute DB work
- dashboard should be refreshed after major structure changes
