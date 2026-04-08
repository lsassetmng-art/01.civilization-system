# ============================================================
# PERSONA OS MOVED BAK CLEANUP CANDIDATES
# ============================================================

status: working-review
layer: meta
domain: cleanup-candidates
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This review lists cleanup candidates
for files ending with .moved.bak.

These are backup files created after safe move.
This document does not delete anything.

# ============================================================
# 2. SAFE CLEANUP CANDIDATES
# ============================================================

These backups have a corresponding live file with the same name
without the .moved.bak suffix.

- none

# ============================================================
# 3. UNPAIRED BACKUPS
# ============================================================

These backups do not currently have a matching live file.
Do not delete them automatically.

- none

# ============================================================
# 4. CLEANUP RULE
# ============================================================

- delete only backups listed in safe cleanup candidates
- do not delete unpaired backups automatically
- after cleanup, rebuild indexes if needed
