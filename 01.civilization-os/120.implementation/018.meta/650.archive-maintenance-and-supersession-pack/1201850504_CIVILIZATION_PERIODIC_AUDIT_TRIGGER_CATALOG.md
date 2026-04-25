# ============================================================
# CIVILIZATION PERIODIC AUDIT TRIGGER CATALOG
# ============================================================

status: audit-trigger-catalog
layer: implementation
domain: 018.meta
subdomain: 650.archive-maintenance-and-supersession-pack
document_id: 1201850504
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines when periodic or event-driven audit should be re-run.

## 2. Audit Trigger Families

trigger_01:
- name: new_canonical_pack_added
- audit_action: recheck navigation and successor links

trigger_02:
- name: decision_update_recorded
- audit_action: recheck baseline snapshot and handoff consistency

trigger_03:
- name: reopen_or_reconsideration_request_created
- audit_action: recheck governance-path completeness

trigger_04:
- name: archive_boundary_reorganized
- audit_action: recheck active-vs-archival reading order

trigger_05:
- name: detected_status_link_drift
- audit_action: recheck integrated status overlays and successor links

## 3. Trigger Rule

Audit should run when one of the cataloged trigger families occurs.
Otherwise, default posture is stability and no unnecessary churn.

## 4. Hard Rule

Routine curiosity alone is not a sufficient reason to rewrite status structure.

## 5. Acceptance Checklist

- audit trigger families fixed
- trigger rule fixed
- no-curiosity-rewrite rule fixed
