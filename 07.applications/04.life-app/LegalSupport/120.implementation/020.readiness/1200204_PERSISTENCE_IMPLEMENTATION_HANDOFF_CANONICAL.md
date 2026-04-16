# ============================================================
# PERSISTENCE IMPLEMENTATION HANDOFF CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: implementation-prep-only
schema_name: life

persistence_handoff_principles:
  - schema is life
  - model docs define responsibility, not executable DDL yet
  - metadata and binary concerns remain separated
  - case is the aggregate root anchor
  - archive/inactive patterns are preferred over destructive delete

reference_docs:
  - 0300105_DB_TABLE_COLUMN_FIXED.md
  - 0300106_DB_RELATION_AND_INDEX_POLICY.md
  - 1100102_STORAGE_MAPPING.md
  - 1100103_ATTACHMENT_AND_EXPORT_STORAGE_POLICY.md
  - 1100104_PERSISTENCE_SCHEMA_FIXED.md
  - 1100105_PERSISTENCE_OPERATION_POLICY.md

minimum_persistence_readiness:
  - legal_case responsibility fixed
  - stakeholder responsibility fixed
  - timeline responsibility fixed
  - document/evidence responsibility fixed
  - consultation responsibility fixed
  - task/deadline responsibility fixed
  - share/export responsibility fixed

critical_persistence_behaviors:
  - owner scoped case access
  - case child linkage by case_id
  - confidentiality-aware document/evidence handling
  - inactive share revoke handling
  - export artifact record separation
  - updated_at discipline on mutable records

deferred_persistence_items:
  - final table DDL
  - final index DDL
  - migration scripts
  - sync/outbox persistence
