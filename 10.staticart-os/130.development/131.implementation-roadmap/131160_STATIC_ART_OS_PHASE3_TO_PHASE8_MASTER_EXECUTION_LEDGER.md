# ============================================================
# STATIC ART OS PHASE3 TO PHASE8 MASTER EXECUTION LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

objective:
Provide the bundled master execution ledger for StaticArtOS
from Phase 3 through Phase 8.

phase_summary:
  phase_3:
    name: governance and publish backbone
    scope:
      - self check
      - review request
      - review decision
      - publish marketplace
      - publish library only
      - delist / restrict / archive
      - audit
      - projection refresh enqueue

  phase_4:
    name: entitlement and access
    scope:
      - entitlement resolution
      - access session
      - purchase reflection
      - subscription reflection

  phase_5:
    name: library and continuity
    scope:
      - my library
      - continue reading
      - continue viewing
      - reader progress
      - viewer progress
      - favorite
      - annotation

  phase_6:
    name: admin surfaces and governance UI
    scope:
      - review queue
      - review detail
      - restriction / audit detail
      - support_readonly behavior

  phase_7:
    name: CX22073JW reference publish
    scope:
      - projection search area
      - preview summary area
      - rights reference area
      - continuity signal area
      - review risk reference area
      - exhibition reference area

  phase_8:
    name: acceptance and regression hardening
    scope:
      - acceptance execution
      - permission regression
      - policy / projection regression
      - unresolved blocker cleanup

execution_order:
  - complete Phase 3
  - complete Phase 4
  - complete Phase 5
  - complete Phase 6
  - complete Phase 7
  - complete Phase 8

hard_rules:
  - do not skip lifecycle/governance before entitlement
  - do not skip entitlement before library continuity
  - do not publish CX references before projection semantics stabilize
  - Persona-side DB work uses PERSONA_DATABASE_URL
