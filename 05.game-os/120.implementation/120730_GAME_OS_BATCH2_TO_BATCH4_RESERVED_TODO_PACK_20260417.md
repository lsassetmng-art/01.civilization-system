# ============================================================
# GAME OS BATCH2 TO BATCH4 RESERVED TODO PACK
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
This file reserves the later development todo packs after Batch 1.
It is not the immediate start pack, but it fixes the follow-up order.

reserved_batches:
- Batch 2: M05 to M08
- Batch 3: M09 to M11
- Batch 4: M12 to M14

---

## 0. Follow-up batch order

fixed_order:
1. Batch 2
2. Batch 3
3. Batch 4

rule:
- Batch 2 should not start until Batch 1 creator-side basis is stable
- Batch 3 should not start until release activation and launcher basis are stable
- Batch 4 should not start until runtime/save-worthy states and release/policy semantics are stable

---

## 1. Batch 2 reserved todo summary

modules:
- M05 Validation
- M06 Export and Manifest
- M07 Submission and Governance
- M08 Release Activation and Launcher

must_build:
- validation_run and finding truth
- export_package and manifest truth
- submission request truth
- release and release_store_link truth
- validation flow
- export flow
- submission flow
- publish activation flow
- launcher visibility aligned to activation truth

minimum exit:
- validated revision can export
- eligible export can create submission
- approved release can activate
- non-activated release is not launchable

linked_acceptance:
- TC-GAME-022
- TC-GAME-023
- TC-GAME-030
- TC-GAME-031
- TC-GAME-032
- TC-GAME-033
- TC-GAME-040
- TC-GAME-041
- TC-GAME-042

---

## 2. Batch 3 reserved todo summary

modules:
- M09 VN Runtime
- M10 RPG Runtime
- M11 Save Load Recovery

must_build:
- VN runtime session loop
- RPG runtime session loop
- save slot truth
- recovery truth
- runtime error/recovery screen
- continue path from launcher

minimum exit:
- activated VN release is playable
- activated RPG release is playable
- save/load works
- interruption/recovery remains explicit

linked_acceptance:
- TC-GAME-050
- TC-GAME-051
- TC-GAME-052
- TC-GAME-060
- TC-GAME-061
- TC-GAME-062
- TC-GAME-070
- TC-GAME-071
- TC-GAME-072
- TC-GAME-073

---

## 3. Batch 4 reserved todo summary

modules:
- M12 Persona Growth Outbox
- M13 Gambling Policy Control
- M14 Final Integration Sweep

must_build:
- safe Persona outbox queue
- delivery attempt tracking
- retry and dead-letter semantics
- regulated runtime policy review record
- deny/hold activation gate
- final invariant verification

minimum exit:
- Persona signal emission is safe and idempotent
- regulated runtime cannot activate without policy allow
- cross-module invariants still hold

linked_acceptance:
- TC-GAME-080
- TC-GAME-081
- TC-GAME-082
- TC-GAME-083
- TC-GAME-090
- TC-GAME-091
- TC-GAME-092
- TC-GAME-100
- TC-GAME-101
- TC-GAME-102
- TC-GAME-103

---

## 4. Reserved pack rule

This file does not replace the runner packs.
It is the condensed follow-up todo reservation layer after Batch 1 start.

