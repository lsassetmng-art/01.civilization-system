# ============================================================
# PERSONA SNAPSHOT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: persona

# ============================================================
# DEFINITION
# ============================================================

Snapshots represent validated, cloud-managed persona instances.

Only cloud snapshots can be used by applications.

# ============================================================
# STORAGE MODEL
# ============================================================

Two layers exist:

1. Local Export (untrusted)
2. Cloud Snapshot (trusted)

# ============================================================
# LOCAL EXPORT
# ============================================================

- unlimited storage
- user-controlled
- not directly usable

# ============================================================
# CLOUD SNAPSHOT
# ============================================================

- maximum 3 per persona
- FIFO overwrite
- required for usage

# ============================================================
# IMPORT FLOW
# ============================================================

To use a persona:

Export → Upload → Validation → Snapshot

# ============================================================
# VALIDATION
# ============================================================

- checksum verification
- schema validation
- version compatibility

# ============================================================
# RULES
# ============================================================

- applications must use cloud snapshots only
- local exports cannot be used directly
- snapshots are immutable

# ============================================================
# PURPOSE
# ============================================================

- ensure trust and integrity
- unify persona format across applications
- enable controlled usage

