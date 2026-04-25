# ============================================================
# STATIC ART OS LAUNCHER REGISTRY AND SMOKECHECK REPORT
# ============================================================

status: generated
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

outputs:
- registry_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/078.launcher_registry_and_smokecheck/000001_STATIC_ART_OS_LAUNCHER_REGISTRY.md
- smoke_note_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/078.launcher_registry_and_smokecheck/000002_STATIC_ART_OS_LAUNCHER_SMOKE_CHECK_NOTE.md
- registry_sh: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132460_staticart_launcher_registry.sh
- smoke_sh: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132470_staticart_launcher_smoke_check.sh
- report_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/078.launcher_registry_and_smokecheck/000003_STATIC_ART_OS_LAUNCHER_REGISTRY_AND_SMOKECHECK_REPORT.md

result:
- launcher registry created
- launcher smoke-check note created
- registry launcher created
- smoke-check launcher created

rule:
- This pack is launcher-governance oriented.
- It does not perform DB writes.
- smoke-check runner is read-only.
