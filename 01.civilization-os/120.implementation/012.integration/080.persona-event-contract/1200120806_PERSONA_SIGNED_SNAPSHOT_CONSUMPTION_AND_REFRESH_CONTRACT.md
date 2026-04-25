# ============================================================
# PERSONA SIGNED SNAPSHOT CONSUMPTION AND REFRESH CONTRACT
# ============================================================

status: canonical-snapshot-consumption-contract
layer: implementation
domain: 012.integration
subdomain: 080.persona-event-contract
document_id: 1200120806
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines how CivilizationOS consumes PersonaOS signed snapshots
after Persona-side event processing.

## 2. Scope

This contract governs:

- signed snapshot reference consumption
- refresh timing
- stale snapshot posture
- public display usage

## 3. Canonical Consumption Rule

CivilizationOS consumes signed snapshot as public-display and external-use surface.

CivilizationOS does not reconstruct mutable persona truth from snapshot contents.

## 4. Snapshot Refresh Triggers

Refresh may occur after PersonaOS reports:

- applied
- accepted + not_applicable with new public state
- explicit snapshot refresh without mutable change

## 5. Snapshot Consumption Fields

Minimum fields:

- signed_snapshot_ref
- snapshot_signature_ref
- snapshot_version
- snapshot_issued_at
- snapshot_subject_ref
- snapshot_visibility_scope

## 6. Stale Snapshot Rule

If PersonaOS returns:

- deferred
or
- apply_failed

CivilizationOS must not assume a new signed snapshot exists.

Previously valid snapshot may remain active until superseded.

## 7. Public Display Rule

CivilizationOS may use signed snapshot for:

- public display
- marketplace display
- world-facing profile display
- law/government/public registry display when allowed

CivilizationOS may not use signed snapshot as direct mutable-state authority.

## 8. Acceptance Checklist

- snapshot consumption rule fixed
- refresh triggers fixed
- stale snapshot rule fixed
- no-mutable-authority rule fixed

## Snapshot Consumption Scope Rule
## Snapshot Consumption Scope Rule

Signed snapshot consumption may be used by CivilizationOS for:

- public persona display
- marketplace-facing display
- registry-facing display where allowed
- world-facing projection

Signed snapshot consumption may not be used to infer hidden mutable-state authority.
