# ============================================================
# API IMPLEMENTATION HANDOFF CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: implementation-prep-only
schema_name: life

api_handoff_principles:
  - API exact payload docs are reference inputs
  - implementation should preserve envelope consistency
  - list/detail/create/update responsibilities stay separated
  - permissions are calculated response data
  - counts are derived response data
  - no legal conclusion field should appear

priority_api_groups:

  group_1_case:
    reason:
      - app entry flow depends on it
    references:
      - 1200102_API_COMMON_RULES.md
      - 1200103_CASE_API_EXACT_PAYLOAD.md
    minimum_behaviors:
      - list cases
      - create case
      - read case detail
      - update case
      - archive case

  group_2_fact_and_stakeholder:
    reason:
      - consultation prep depends on it
    references:
      - 1200104_STAKEHOLDER_AND_TIMELINE_API_EXACT_PAYLOAD.md
    minimum_behaviors:
      - stakeholder list/create/update
      - timeline list/create/update

  group_3_document_and_consultation:
    reason:
      - core legal prep value depends on it
    references:
      - 1200105_DOCUMENT_AND_CONSULTATION_API_EXACT_PAYLOAD.md
    minimum_behaviors:
      - document list/create/update
      - consultation list/create/update

  group_4_task_and_share:
    reason:
      - operational completion and family sharing depend on it
    references:
      - 1200106_TASK_AND_SHARE_API_EXACT_PAYLOAD.md
    minimum_behaviors:
      - task list/create/update
      - share grant/revoke
      - export-pack request/record

api_behavior_constraints:
  - request_id required
  - actor context required
  - ISO datetime consistency required
  - pagination meta required on list endpoints
  - confidentiality filtering may affect response visibility
  - export availability does not imply full data visibility

api_deferred_items:
  - cross-app sync APIs
  - audio support APIs
  - tentative deadline specific API expansion
