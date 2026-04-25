# ============================================================
# STATIC ART OS PHASE3 GOVERNANCE AND PUBLISH TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 3
owner: Boss
prepared_by: Zero

phase_objective:
Phase 3 establishes the governance and publication backbone of StaticArtOS.

phase_scope:
  - self check
  - review request creation
  - review decision
  - publish marketplace
  - publish library only
  - delist
  - restrict
  - archive
  - audit event write
  - projection refresh enqueue

task_units:
  - P3-T001 implement self check logic
  - P3-T002 implement review request persistence
  - P3-T003 implement review decision persistence
  - P3-T004 implement publish marketplace flow
  - P3-T005 implement publish library-only flow
  - P3-T006 implement delist flow
  - P3-T007 implement restrict flow
  - P3-T008 implement archive flow
  - P3-T009 bind audit event writes
  - P3-T010 bind projection refresh enqueue
  - P3-T011 verify lifecycle transition correctness
  - P3-T012 verify Phase 3 exit criteria

task_details:
  P3-T001:
    objective:
      - inspect required file roles
      - inspect metadata completeness
      - inspect rights completeness
      - inspect sales/subscription completeness
      - return blocker list
    exit_condition:
      - self_check_passed path works
      - blocker list is deterministic

  P3-T002:
    objective:
      - persist review request
      - move lifecycle to review_pending
      - prevent duplicate active pending review
    exit_condition:
      - review request created
      - duplicate pending review rejected

  P3-T003:
    objective:
      - persist review decision
      - support approve/reject/rework_required/restricted
      - update lifecycle consistently
    exit_condition:
      - decisions map to canonical lifecycle outcomes

  P3-T004:
    objective:
      - publish approved asset to marketplace
      - set visible state correctly
      - enqueue projection refresh
      - write audit event
    exit_condition:
      - published_marketplace path works

  P3-T005:
    objective:
      - publish approved asset to library-only
      - set visible state correctly
      - enqueue projection refresh
      - write audit event
    exit_condition:
      - published_library_only path works

  P3-T006:
    objective:
      - stop marketplace exposure
      - preserve existing canonical history
      - enqueue projection refresh
      - write audit event
    exit_condition:
      - delisted path works

  P3-T007:
    objective:
      - block sample/full access flow at governance state level
      - enqueue projection refresh
      - write audit event
    exit_condition:
      - restricted path works

  P3-T008:
    objective:
      - archive terminal state path
      - block republish from archived
      - write audit event
    exit_condition:
      - archived path works

  P3-T009:
    objective:
      - create audit rows for review/publish/delist/restrict/archive
    exit_condition:
      - required audit events exist

  P3-T010:
    objective:
      - enqueue projection refresh for publish/delist/restrict/archive
    exit_condition:
      - projection refresh trigger is visible and consistent

  P3-T011:
    objective:
      - verify canonical lifecycle transitions only
    exit_condition:
      - invalid transitions rejected with conflict

  P3-T012:
    objective:
      - verify governance and publish flow end-to-end
    exit_condition:
      - Phase 3 marked complete or blocked

important_rules:
  - review_pending blocks creator-side governed writes
  - archived is terminal
  - restricted is stronger than delisted
  - projection refresh is queued, not used as canonical write
  - PERSONA_DATABASE_URL remains Persona-side DB target where repository work is involved
