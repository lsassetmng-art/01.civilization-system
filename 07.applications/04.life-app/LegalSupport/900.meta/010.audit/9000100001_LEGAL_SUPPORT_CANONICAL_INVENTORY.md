# ============================================================
# LEGAL SUPPORT CANONICAL INVENTORY
# ============================================================

status: draft-formal
system: LegalSupport
layer: meta
subdomain: audit

canonical_status:
  root:
    - 000_LEGAL_SUPPORT_ROOT_INDEX.md
    - 001_LEGAL_SUPPORT_ROOT_OVERVIEW.md

major_formal_docs:
  - 010.constitution/010.core/0100100001_LEGAL_SUPPORT_CORE_CONSTITUTION.md
  - 020.architecture/010.domain/0200100001_LEGAL_SUPPORT_DOMAIN_MODULES.md
  - 030.model/010.entities/0300100001_LEGAL_SUPPORT_ENTITY_DEFINITIONS.md
  - 030.model/010.entities/0300100002_LEGAL_SUPPORT_SCHEMA_BINDING_POLICY.md
  - 050.flow/010.user-flow/0500100001_LEGAL_SUPPORT_PRIMARY_USER_FLOW.md
  - 060.integration/010.lifeos-linkage/0600100001_LEGAL_SUPPORT_LIFEOS_LINKAGE_POLICY.md
  - 060.integration/010.lifeos-linkage/0600100002_LEGAL_SUPPORT_CASE_ROUTING_MATRIX.md
  - 070.operations/010.support/0700100001_LEGAL_SUPPORT_OPERATION_POLICY.md
  - 070.operations/010.support/0700100002_LEGAL_SUPPORT_AI_CHAT_SUPPORT_SCOPE.md
  - 080.policy/010.boundaries/0800100001_LEGAL_SUPPORT_BOUNDARY_POLICY.md
  - 080.policy/010.boundaries/0800100002_LEGAL_SUPPORT_DISCLAIMER_POLICY.md
  - 090.interface/010.screens/0900100001_LEGAL_SUPPORT_SCREEN_DEFINITIONS.md
  - 100.security/010.access-control/1000100001_LEGAL_SUPPORT_ACCESS_CONTROL_POLICY.md
  - 100.security/010.access-control/1000100002_LEGAL_SUPPORT_SHARE_GUARD_POLICY.md
  - 110.infrastructure/010.storage/1100100001_LEGAL_SUPPORT_STORAGE_AND_SCHEMA_POLICY.md
  - 110.infrastructure/010.storage/1100100002_LEGAL_SUPPORT_DATA_GROUPS_AND_RETENTION.md
  - 120.implementation/010.phase-plan/1200100001_LEGAL_SUPPORT_MVP_PHASE_PLAN.md
  - 130.development/010.backlog/1300100001_LEGAL_SUPPORT_DEVELOPMENT_BACKLOG.md
  - 130.development/010.backlog/1300100002_LEGAL_SUPPORT_OPEN_QUESTIONS.md

audit_notes:
  - schema は life で固定
  - pricing は Free / PlusFamily(月額500円)で固定
  - 法律判断非提供の境界を明文化済み
