# ============================================================
# STORAGE AND SYNC INFRASTRUCTURE
# ============================================================

status: draft

storage_rules:
  - raw provider payload traceability
  - normalized record queryability
  - score snapshot versioning
  - reference master refreshability

sync_rules:
  - retryable sync jobs
  - visible sync errors
  - manual record continuity even on sync failure
