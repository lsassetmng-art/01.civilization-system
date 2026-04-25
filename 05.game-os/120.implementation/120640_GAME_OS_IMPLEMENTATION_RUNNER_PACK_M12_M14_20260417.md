# ============================================================
# GAME OS IMPLEMENTATION RUNNER PACK M12 M14
# ============================================================

status: active
system: Civilization System
os: GameOS
folder: 120.implementation
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

purpose:
This document is the practical runner pack for the fourth GameOS implementation batch.
It fixes the execution order and completion checkpoints for M12 through M14.

scope:
- M12 Persona Growth Outbox
- M13 Gambling Policy Control
- M14 Final Integration Sweep

out_of_scope:
- M01 to M11 implementation details already fixed in prior runner packs
- real code or SQL in this document
- build runner scripts
- DB execution blocks

---

## 0. Execution principle

This runner pack is for external integration, policy hardening, and final closure control.

execution rules:
- do outbox durability before delivery convenience
- do idempotency before retry expansion
- do gambling policy gate before regulated release convenience
- do final integration sweep only after module-level contracts are stable
- never allow GameOS to overwrite Persona canonical truth directly

handoff rule:
Each module may hand off only when:
- integration basis is stable
- policy/state semantics are explicit
- blocker acceptance linkage is clear
- cross-module invariants remain true

---

## 1. Batch definition

fourth_batch_modules:
- M12 Persona Growth Outbox
- M13 Gambling Policy Control
- M14 Final Integration Sweep

batch_goal:
Close the external integration and policy path:

1. queue Persona growth/context candidate signals safely
2. deliver with retry and dead-letter semantics
3. gate regulated runtime families through explicit policy review
4. confirm cross-module invariants and implementation-start completeness

---

## 2. M12 Persona Growth Outbox runner

module_code: M12
module_name: Persona Growth Outbox

objective:
- safely emit GameOS-originated candidate signals toward PersonaOS without direct canonical overwrite

required_truth:
- game_persona_growth_outbox
- game_persona_growth_delivery_attempt

required_api:
- POST /game/runtime/persona-growth-outbox

required_jobs:
- persona_growth_outbox_delivery_job

required_flow:
- Persona Growth Outbox Delivery flow

required_safeguards:
- idempotency protection
- retryable vs terminal failure split
- no direct Persona overwrite rule
- evidence retention for request/response attempts

implementation_order:
1. outbox truth contract
2. delivery-attempt truth contract
3. unique idempotency key rule
4. outbox queue API contract
5. queue-from-runtime basis selection
6. delivery job shell
7. retry scheduling rule
8. dead-letter terminalization rule
9. evidence storage for delivery attempts
10. operational visibility of queued / delivering / delivered / failed / dead_letter

blocking_checks:
- duplicate semantic event must not produce duplicate outbox effect
- queue event must preserve runtime_session and player basis
- delivery attempts must remain auditable
- failed delivery must not silently disappear
- Persona overwrite permission must remain false

done_when:
- GameOS can queue candidate signal safely
- delivery attempts are recorded
- retryable failure transitions correctly
- terminal failure transitions to dead_letter explicitly
- duplicate semantic delivery is prevented

acceptance_link:
- TC-GAME-080
- TC-GAME-081
- TC-GAME-082
- TC-GAME-083

handoff_to:
- M14 Final Integration Sweep

---

## 3. M13 Gambling Policy Control runner

module_code: M13
module_name: Gambling Policy Control

objective:
- enforce stronger policy review path for regulated runtime families before activation

required_truth:
- game_policy_review_record

required_api:
- POST /game/runtime/gambling-control/release-check

required_screens:
- Gambling Runtime Control Review
- policy section in Publish Activation Review

required_flow:
- Gambling Policy Review Gate flow

required_integration:
- release activation must consume policy decision correctly
- deny and hold must both block activation
- regulated family detection must be stable

implementation_order:
1. policy review truth contract
2. regulated runtime family detection rule
3. policy review API contract
4. operator decision state family allow / deny / hold / pending
5. evidence payload storage
6. Gambling Runtime Control Review surface
7. publish review policy section
8. policy decision -> activation gate linkage
9. deny path verification
10. hold path verification

blocking_checks:
- regulated runtime may not activate without policy allow
- ordinary publish review may not bypass policy gate
- deny must block activation
- hold must preserve re-reviewability without activation
- policy decision must preserve evidence and reason

done_when:
- regulated release cannot activate without policy allow
- hold and deny both stop activation
- review reason and evidence are preserved
- policy review is visibly separate from ordinary publish convenience

acceptance_link:
- TC-GAME-090
- TC-GAME-091
- TC-GAME-092

handoff_to:
- M14 Final Integration Sweep

---

## 4. M14 Final Integration Sweep runner

module_code: M14
module_name: Final Integration Sweep

objective:
- close remaining cross-module gaps and confirm that GameOS implementation-start pack is executable without guessing

required_cross_checks:
- Builder/runtime separation
- validation/export separation
- validation acceptance/publish activation separation
- release/launcher alignment
- save/load/recovery continuity
- outbox/policy integration consistency

required_artifacts:
- implementation-start pack
- task breakdown by module
- runner packs M01 M04, M05 M08, M09 M11, M12 M14
- acceptance set
- current structure normalization status memo

required_flow:
- cross-flow invariant verification
- final closure review path

implementation_order:
1. verify canonical root and layer entry files exist
2. verify implementation-start pack references are complete
3. verify module task breakdown references are complete
4. verify runner pack chain is complete
5. verify acceptance linkage covers all module groups
6. verify Builder truth is not mutated by runtime path
7. verify export cannot bypass blocking validation
8. verify publish activation remains separate from validation acceptance
9. verify launcher visibility is activation-truth-based
10. verify Persona outbox does not overwrite Persona truth
11. verify regulated policy gate blocks activation without allow
12. record unresolved gaps if any
13. close if no critical gap remains

blocking_checks:
- no contract-critical missing file in canonical entry chain
- no unresolved invariant violation
- no ambiguous authority boundary on publish/policy path
- no missing acceptance linkage for blocker modules

done_when:
- cross-module invariant set remains true
- canonical implementation-start chain is readable from root
- implementation team can start or continue without inventing missing behavior
- unresolved items, if any, are documented explicitly rather than hidden

acceptance_link:
- TC-GAME-100
- TC-GAME-101
- TC-GAME-102
- TC-GAME-103

handoff_to:
- implementation execution
- or final gap-fix memo where needed

---

## 5. Recommended execution sequence across M12 to M14

strict_sequence:
1. M12 truth
2. M12 API
3. M12 jobs
4. M12 delivery evidence and safeguard polish
5. M13 truth
6. M13 API
7. M13 screens
8. M13 activation-gate integration
9. M14 entry-file verification
10. M14 invariant verification
11. M14 unresolved-gap memo if needed
12. M14 closure decision

parallelization_limits:
- M13 may begin after M08 release activation semantics are stable
- M14 may collect evidence in parallel, but final closure decision should wait for M12 and M13 blocker semantics
- do not start closure messaging before invariant verification is complete

---

## 6. Fourth coding milestone

milestone_name:
- External integration and policy closure slice

must_be_true:
- Persona outbox can queue safely
- retry and dead-letter semantics are explicit
- regulated release is blocked without policy allow
- deny and hold both prevent activation
- cross-flow invariants still hold after integration and policy hardening

milestone_exit_evidence:
- outbox row exists with stable idempotency behavior
- delivery attempt rows exist
- dead-letter terminal path is observable
- policy review record exists with evidence and reason
- regulated activation is blocked until allow
- final invariant verification result is recorded

---

## 7. Common failure traps for M12 to M14

trap_01:
- treating Persona signal emission as direct Persona mutation

trap_02:
- retrying outbox delivery without idempotency protection

trap_03:
- losing failure evidence between delivery attempts

trap_04:
- treating gambling policy review as advisory only

trap_05:
- allowing publish activation UI to bypass policy deny or hold

trap_06:
- declaring integration closure without checking cross-module invariants

prevention_rule:
Every external integration and policy feature must preserve explicit evidence, explicit authority, and explicit terminal states.

---

## 8. Runner checklist

before_starting_M12:
- M09 to M11 runtime basis and save-worthy states are stable
- signal emission basis from runtime events is defined

before_starting_M13:
- M08 release activation and launcher basis is stable
- regulated runtime family detection rule is fixed

before_starting_M14:
- M12 and M13 blocker semantics are stable enough to verify
- implementation-start pack and runner packs are already present

before_closing_batch:
- M12 through M14 blocker acceptance linkage is traceable
- no known external integration or policy contract gap remains hidden

---

## 9. Final runner-pack chain

canonical_runner_pack_chain:
- 120610_GAME_OS_IMPLEMENTATION_RUNNER_PACK_M01_M04_20260417.md
- 120620_GAME_OS_IMPLEMENTATION_RUNNER_PACK_M05_M08_20260417.md
- 120630_GAME_OS_IMPLEMENTATION_RUNNER_PACK_M09_M11_20260417.md
- 120640_GAME_OS_IMPLEMENTATION_RUNNER_PACK_M12_M14_20260417.md

meaning:
The GameOS implementation runner chain is complete when this file exists and is linked from canonical indexes.

---

## 10. Next artifact after this runner pack

The next canonical artifact should be one of:
- GameOS final implementation execution memo
- GameOS unresolved gap memo
- actual implementation runner / development execution pack
