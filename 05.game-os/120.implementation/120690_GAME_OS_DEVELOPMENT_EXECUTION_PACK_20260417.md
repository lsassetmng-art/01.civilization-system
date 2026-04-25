# ============================================================
# GAME OS DEVELOPMENT EXECUTION PACK
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
This document is the practical development execution pack for GameOS.
It converts the implementation design chain into an execution-facing bundle
that can be used immediately before coding starts.

execution_pack_scope:
- implementation-start chain summary
- batch order summary
- blocker rule summary
- start-of-work reading order
- execution discipline
- escalation path when gaps are found

---

## 0. Read-this-first order

Use this exact reading order before development starts:

1. 120650_GAME_OS_FINAL_IMPLEMENTATION_EXECUTION_MEMO_20260417.md
2. 120590_GAME_OS_IMPLEMENTATION_START_PACK_20260417.md
3. 120600_GAME_OS_IMPLEMENTATION_TASK_BREAKDOWN_BY_MODULE_20260417.md
4. 120610_GAME_OS_IMPLEMENTATION_RUNNER_PACK_M01_M04_20260417.md
5. 120620_GAME_OS_IMPLEMENTATION_RUNNER_PACK_M05_M08_20260417.md
6. 120630_GAME_OS_IMPLEMENTATION_RUNNER_PACK_M09_M11_20260417.md
7. 120640_GAME_OS_IMPLEMENTATION_RUNNER_PACK_M12_M14_20260417.md
8. 120520_GAME_OS_ACCEPTANCE_TEST_CASE_SET.md

This is the canonical execution reading order.

---

## 1. Canonical batch order

Batch 1:
- M01 Builder Foundation
- M02 Builder Authoring Core
- M03 Asset Studio
- M04 Preview

Batch 2:
- M05 Validation
- M06 Export and Manifest
- M07 Submission and Governance
- M08 Release Activation and Launcher

Batch 3:
- M09 VN Runtime
- M10 RPG Runtime
- M11 Save Load Recovery

Batch 4:
- M12 Persona Growth Outbox
- M13 Gambling Policy Control
- M14 Final Integration Sweep

---

## 2. Start-of-work rule

Development must start with:
- truth contracts
- write path correctness
- stateflow-critical transitions
- minimum acceptance anchor

Development must not start with:
- polish-only UI work
- convenience read-model optimization
- optional feature expansion
- speculative extension beyond exact design

---

## 3. Non-negotiable blockers

The following are non-negotiable:

- immutable revision truth
- blocking and warning split in validation
- export package and manifest linkage
- separation of validation acceptance and publish activation
- activated-only launcher visibility
- save/load scope bound to same player and release
- explicit recovery terminal state
- Persona outbox idempotency
- no direct Persona canonical overwrite from GameOS
- gambling policy allow required before regulated activation

If any of these are not implementable yet, coding should stop at the affected boundary and the gap must be logged.

---

## 4. Execution discipline

When implementing a module:
1. confirm upstream module handoff rule is satisfied
2. implement truth first
3. implement write path/API contract
4. implement minimum screen/runtime surface
5. implement flow/job semantics
6. execute linked acceptance checks
7. only then move to next module

No module should skip acceptance linkage review.

---

## 5. Escalation rule

If implementation discovers a missing rule:
- do not invent behavior silently
- create or update unresolved gap memo
- classify the gap as:
  - blocker
  - major
  - minor
- map the gap to the affected module and acceptance case
- decide whether current batch can continue or must pause

---

## 6. Practical first development target

Recommended first live coding target:
- M01
- M02
- M03
- M04

reason:
This produces the first creator-side vertical slice and stabilizes the Builder truth path.

---

## 7. Practical definition of "development can start"

Development can start when:
- canonical entry chain exists
- module order is fixed
- acceptance anchor exists
- blocker rules are explicit
- unresolved gaps are tracked instead of hidden

This execution pack is intended to satisfy that threshold.

---

## 8. Output expectation from each batch

Batch 1 output:
- creator can create project
- creator can save immutable revision
- creator can autosave and restore
- creator can register/bind asset
- creator can preview revision

Batch 2 output:
- validated revision can export
- export can generate manifest
- submission request is reviewable
- approved release can activate
- activated release appears in launcher basis

Batch 3 output:
- VN playable loop exists
- RPG playable loop exists
- save/load works
- interruption/recovery flow is explicit

Batch 4 output:
- Persona signal outbox is safe
- regulated runtime policy gate works
- final cross-module invariant set is verified

---

## 9. Final note

This file is not a replacement for exact design.
It is the execution-facing consolidation layer above the exact design chain.
