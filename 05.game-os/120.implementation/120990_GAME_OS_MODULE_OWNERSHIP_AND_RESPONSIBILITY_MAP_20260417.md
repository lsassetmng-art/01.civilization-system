# ============================================================
# GAME OS MODULE OWNERSHIP AND RESPONSIBILITY MAP
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
This file makes module ownership and responsibility boundaries easy to see.

ownership_rule:
- every module owns its primary truth and primary acceptance anchors
- downstream modules may depend on upstream truth, but may not silently redefine it

---

## M01 Builder Foundation

owns:
- project create semantics
- workspace/project/profile basis resolution
- seed revision requirement

primary_truth:
- game_workspace
- game_project
- initial game_project_revision seed path

primary_acceptance:
- TC-GAME-001
- TC-GAME-002
- TC-GAME-003

---

## M02 Builder Authoring Core

owns:
- immutable revision save
- stale basis conflict
- autosave and restore basis

primary_truth:
- game_project_revision
- game_autosave_snapshot
- latest_revision pointer behavior
- latest_autosave pointer behavior

primary_acceptance:
- TC-GAME-010
- TC-GAME-011
- TC-GAME-012

---

## M03 Asset Studio

owns:
- asset registration and project bindability

primary_truth:
- game_asset_ref

primary_acceptance:
- TC-GAME-013

---

## M04 Preview

owns:
- revision-based preview session and blocked/ready distinction

primary_truth:
- preview session basis

primary_acceptance:
- TC-GAME-020
- TC-GAME-021

---

## M05 Validation

owns:
- validation run semantics
- findings severity split
- rerun preservation

primary_truth:
- game_validation_run
- game_validation_finding

primary_acceptance:
- TC-GAME-022
- TC-GAME-023

---

## M06 Export and Manifest

owns:
- export package creation
- manifest identity and eligibility gate

primary_truth:
- game_export_package
- game_manifest

primary_acceptance:
- TC-GAME-030
- TC-GAME-031

---

## M07 Submission and Governance

owns:
- submission request semantics
- validation acceptance and publish activation separation

primary_truth:
- game_submission_request

primary_acceptance:
- TC-GAME-032
- TC-GAME-033

---

## M08 Release Activation and Launcher

owns:
- activation truth
- launcher visibility rule

primary_truth:
- game_release
- game_release_store_link

primary_acceptance:
- TC-GAME-040
- TC-GAME-041
- TC-GAME-042

---

## M09 VN Runtime

owns:
- VN launch-to-ending playable loop

primary_truth:
- VN-compatible game_runtime_session basis

primary_acceptance:
- TC-GAME-050
- TC-GAME-051
- TC-GAME-052

---

## M10 RPG Runtime

owns:
- RPG launch-to-checkpoint playable loop

primary_truth:
- RPG-compatible game_runtime_session basis

primary_acceptance:
- TC-GAME-060
- TC-GAME-061
- TC-GAME-062

---

## M11 Save Load Recovery

owns:
- save/load scope correctness
- recovery evidence and terminalization

primary_truth:
- game_save_slot
- game_runtime_error_log
- game_runtime_recovery_attempt

primary_acceptance:
- TC-GAME-070
- TC-GAME-071
- TC-GAME-072
- TC-GAME-073

---

## M12 Persona Growth Outbox

owns:
- safe candidate signal outbox
- retry and dead-letter semantics

primary_truth:
- game_persona_growth_outbox
- game_persona_growth_delivery_attempt

primary_acceptance:
- TC-GAME-080
- TC-GAME-081
- TC-GAME-082
- TC-GAME-083

---

## M13 Gambling Policy Control

owns:
- regulated runtime policy gate
- allow/deny/hold semantics

primary_truth:
- game_policy_review_record

primary_acceptance:
- TC-GAME-090
- TC-GAME-091
- TC-GAME-092

---

## M14 Final Integration Sweep

owns:
- final cross-module invariant verification
- final execution-chain integrity

primary_truth:
- integration truth is shared; M14 owns the verification layer

primary_acceptance:
- TC-GAME-100
- TC-GAME-101
- TC-GAME-102
- TC-GAME-103

