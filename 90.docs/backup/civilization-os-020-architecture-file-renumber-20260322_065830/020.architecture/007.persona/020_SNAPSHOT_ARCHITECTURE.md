# ============================================================
# SNAPSHOT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: persona

# ============================================================
# RULE
# ============================================================

- user-created persona snapshots can be taken at any time
- maximum cloud snapshots per persona lineage = 3
- oldest cloud snapshot is overwritten when limit exceeded
- local export is allowed
- local snapshot must be uploaded before reuse in another app

