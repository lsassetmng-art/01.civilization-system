# ============================================================
# STATIC ART OS EVIDENCE PACK REPORT
# ============================================================

status: generated
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

outputs:
- index_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/079.evidence_pack/000001_STATIC_ART_OS_EVIDENCE_INDEX.md
- manifest_txt: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/079.evidence_pack/000002_STATIC_ART_OS_REPORT_MANIFEST.txt
- audit_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/079.evidence_pack/000003_STATIC_ART_OS_AUDIT_TRAIL_SUMMARY.md
- portal_sh: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132480_staticart_evidence_portal.sh
- report_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/079.evidence_pack/000004_STATIC_ART_OS_EVIDENCE_PACK_REPORT.md

counts:
- meta_dir_count: 40
- report_style_file_count: 42

result:
- evidence index created
- report manifest created
- audit trail summary created
- evidence portal created

rule:
- This pack is evidence/audit oriented.
- It does not perform DB writes.
