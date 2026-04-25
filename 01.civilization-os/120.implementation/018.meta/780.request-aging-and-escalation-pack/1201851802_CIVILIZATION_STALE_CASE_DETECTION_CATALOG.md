# ============================================================
# CIVILIZATION STALE CASE DETECTION CATALOG
# ============================================================

status: stale-catalog
layer: implementation
domain: 018.meta
subdomain: 780.request-aging-and-escalation-pack
document_id: 1201851802
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the catalog for detecting stale request cases.

## 2. Stale Detection Families

stale_01:
- name: unresolved_too_long
- meaning: unresolved_open remains without explicit review refresh

stale_02:
- name: deferred_without_recheck
- meaning: queued_deferred remains without later portfolio review

stale_03:
- name: blocked_without_blocker_visibility
- meaning: blocked dependency remains but blocker relation is no longer explicit

stale_04:
- name: governance_wait_without_preparation_refresh
- meaning: waiting for governed preparation but no later review occurred

stale_05:
- name: reference_case_misread_as_active
- meaning: old reference case is treated as current active work

## 3. Detection Rule

A case becomes stale when waiting continues without visible review logic.

## 4. Hard Rule

Age alone is not the only stale signal.
Loss of review visibility also counts as staleness.

## 5. Acceptance Checklist

- stale detection families fixed
- detection rule fixed
- no-age-only-staleness rule fixed
