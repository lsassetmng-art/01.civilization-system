# ============================================================
# CIVILIZATION BASELINE DRIFT DETECTION CATALOG
# ============================================================

status: drift-catalog
layer: implementation
domain: 018.meta
subdomain: 700.posture-restoration-and-recovery-pack
document_id: 1201851002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the catalog of detectable baseline drift patterns.

## 2. Drift Detection Families

drift_01:
- name: silent_phase1_close_assumption
- symptom: someone treats phase1 as already closed

drift_02:
- name: silent_execution_resume_assumption
- symptom: someone assumes execution may continue by default

drift_03:
- name: silent_transition_assumption
- symptom: someone assumes phase2 preparation is already approved

drift_04:
- name: old-pack-first_interpretation
- symptom: someone starts from older detailed packs and skips the active canonical surface

drift_05:
- name: single-summary-overreach
- symptom: a quick summary is treated as if it overrides decision packs

drift_06:
- name: candidate-equals-entry_confusion
- symptom: preserved phase2 candidate is misread as approved entry

## 3. Detection Rule

When one of these symptoms appears, treat the situation as:
- posture drift
not
- valid new interpretation

## 4. Hard Rule

Repeated mention does not make a drifted interpretation correct.

## 5. Acceptance Checklist

- drift families fixed
- detection rule fixed
- no-repetition-equals-truth rule fixed
