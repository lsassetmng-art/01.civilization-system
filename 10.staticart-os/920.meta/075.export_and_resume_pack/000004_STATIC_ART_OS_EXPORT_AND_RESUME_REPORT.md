# ============================================================
# STATIC ART OS EXPORT AND RESUME REPORT
# ============================================================

status: generated
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

outputs:
- manifest_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/075.export_and_resume_pack/000001_STATIC_ART_OS_EXPORT_MANIFEST.txt
- keypaths_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/075.export_and_resume_pack/000002_STATIC_ART_OS_EXPORT_KEY_PATHS.md
- resume_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/075.export_and_resume_pack/000003_STATIC_ART_OS_RESUME_NOTE.md
- launcher_sh: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132430_staticart_export_resume_portal.sh
- report_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/075.export_and_resume_pack/000004_STATIC_ART_OS_EXPORT_AND_RESUME_REPORT.md

result:
- export manifest created
- export key paths created
- resume note created
- export/resume launcher created

rule:
- This pack is carry-forward/resume oriented.
- It does not perform DB writes directly.
- resume mode only calls the existing read-only sweep.
