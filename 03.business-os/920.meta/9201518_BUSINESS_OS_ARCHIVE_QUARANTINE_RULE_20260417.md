# ============================================================
# BUSINESS OS ARCHIVE QUARANTINE RULE
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

archive_root:
- ../999.archive/

latest_noise_archive_root:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/999.archive/040.businessos_noise_archive_20260417_112136

quarantine_rule:
- Archive content is historical trace only.
- Archive content must not be treated as active authority by default.
- Only a newer explicit canonical revision may restore archived meaning into the active authority set.

result:
- Archive quarantine boundary fixed as a canonical meta rule.
