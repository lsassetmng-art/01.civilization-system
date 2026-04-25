# ============================================================
# CIVILIZATION SUCCESSOR TRIGGER CATALOG
# ============================================================

status: trigger-catalog
layer: implementation
domain: 018.meta
subdomain: 640.baseline-freeze-and-successor-pack
document_id: 1201850403
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the canonical trigger catalog for future successor actions.

## 2. Successor Trigger Families

trigger_01:
- name: explicit_owner_redecision
- successor_action: begin decision update path

trigger_02:
- name: material_blocker_change
- successor_action: consider phase1 reopen request

trigger_03:
- name: bounded_candidate_boundary_change
- successor_action: consider phase2 entry reconsideration request

trigger_04:
- name: design_gap_resolved_or_discovered
- successor_action: consider reopen or resume reconsideration request

trigger_05:
- name: governance_correction_required
- successor_action: issue explicit correction through decision update path

## 3. Trigger Rule

Only cataloged triggers should start successor action.
Everything else defaults to no-change posture.

## 4. Hard Rule

Curiosity, momentum, or convenience alone are not valid triggers.

## 5. Acceptance Checklist

- trigger families fixed
- trigger rule fixed
- no-momentum-trigger rule fixed
