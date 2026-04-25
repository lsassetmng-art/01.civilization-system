# ============================================================
# STATIC ART OS PHASE 2 BINDING TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 2
owner: Boss
prepared_by: Zero

phase_objective:
Phase 2 establishes the creator-side write backbone by binding
route, validator, guard, service, and repository layers together.

phase_scope:
  - asset create
  - asset detail read
  - localization write
  - rights policy write
  - sales offer write
  - subscription rule write
  - governed write validation
  - version_token handling
  - response/error envelope consistency

task_units:
  - P2-T001 bind asset create endpoint
  - P2-T002 bind asset detail endpoint
  - P2-T003 bind localization write endpoint
  - P2-T004 bind rights policy write endpoint
  - P2-T005 bind sales offer write endpoint
  - P2-T006 bind subscription rule write endpoint
  - P2-T007 bind route validators and permission guards
  - P2-T008 bind repository interfaces to Persona-side DB access
  - P2-T009 verify canonical response and error envelopes
  - P2-T010 verify Phase 2 exit criteria

task_details:
  P2-T001:
    objective:
      - connect POST /assets route to AssetService.createDraft
      - connect AssetService.createDraft to repository createDraft
    exit_condition:
      - draft creation persists correctly
      - success envelope returns canonical fields

  P2-T002:
    objective:
      - connect GET /assets/{asset_id}
      - return asset detail through canonical response envelope
    exit_condition:
      - existing asset is readable
      - missing asset returns canonical not-found error

  P2-T003:
    objective:
      - connect localization write route
      - enforce version_token validation
      - enforce creator/publisher ownership guard
    exit_condition:
      - localization write persists
      - stale version_token path is handled

  P2-T004:
    objective:
      - connect rights policy write route
      - enforce region_mode and required field validation
    exit_condition:
      - rights policy persists
      - invalid region_mode path fails correctly

  P2-T005:
    objective:
      - connect sales offer write route
      - enforce price requirements for for_sale and preorder
    exit_condition:
      - valid sales offer persists
      - invalid offer fails with canonical error shape

  P2-T006:
    objective:
      - connect subscription rule write route
      - enforce included-state validation
    exit_condition:
      - valid subscription rule persists
      - invalid rule fails correctly

  P2-T007:
    objective:
      - bind validators before service calls
      - bind permission guard before repository calls
    exit_condition:
      - routes do not bypass validator/guard layers

  P2-T008:
    objective:
      - bind repository implementations to Persona-side DB access
      - keep SQL out of route handlers
    environment_rule:
      - PERSONA_DATABASE_URL only for Persona-side DB work
    exit_condition:
      - repository layer talks to Persona-side DB only

  P2-T009:
    objective:
      - unify success envelope
      - unify error envelope
    exit_condition:
      - all Phase 2 endpoints return canonical envelope shapes

  P2-T010:
    objective:
      - verify creator write backbone end-to-end
    exit_condition:
      - Phase 2 marked complete or blocked with named blocker

important_rules:
  - route handlers do not embed SQL directly
  - services do not return raw HTTP responses
  - repositories do not decide permission
  - projection refresh is not part of Phase 2 write persistence
  - PERSONA_DATABASE_URL is the Persona-side DB target
