# ============================================================
# CIVILIZATION CORRECTION AND ERRATA RULE
# ============================================================

status: correction-rule
layer: implementation
domain: 018.meta
subdomain: 670.traceability-and-integrity-pack
document_id: 1201850705
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the rule for correction and errata handling
without silently altering posture.

## 2. Correction Scope

Correction and errata may be used for:

- navigation error correction
- cross-reference correction
- status-link correction
- typographic correction
- non-semantic metadata correction

## 3. Not Allowed Under Errata

Errata must not be used for:

- decision posture change
- reopen approval
- execution resume approval
- transition approval
- phase2 entry approval

## 4. Errata Recording Rule

Every errata-worthy change should state:

- errata_id
- affected_doc_ref
- correction_type
- semantic_change_flag
- correction_summary

semantic_change_flag values:
- no
- yes_requires_governed_change

## 5. Hard Rule

When semantic_change_flag would be yes,
the errata path must stop and the governed decision path must be used instead.

## 6. Acceptance Checklist

- correction scope fixed
- not-allowed-under-errata fixed
- errata recording rule fixed
- stop-on-semantic-change rule fixed
