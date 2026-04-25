# ============================================================
# LANGUAGE DISPLAY AND TRANSLATION BINDING
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: language
document_id: 1203700002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines language display binding and translation support surfaces.

## 2. Scope

This document covers:
- language selection
- translation binding
- display-text linkage
- translation revision

## 3. Canonical Source Of Truth

Display translation support does not replace source truth.

## 4. Exact Table Set

- language_display_binding
- translation_support_entry
- source_text_link
- translation_revision

## 5. Exact Request / Response

Language selection and translation revision are explicit operations.

## 6. Exact Command / Event

Typical events:
- language.selected
- translation.revised
- display_binding.changed

## 7. Authorization Boundary

Translation mutation requires language-side authority.

## 8. State Machine

Translation states:
- DRAFT
- ACTIVE
- SUPERSEDED
- RETIRED

## 9. Transaction Boundary

Translation revision must commit before display projection refresh.

## 10. Idempotency

Repeated translation activation for same revision must be safe.

## 11. Audit Trace

Reviewed translation correction must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_TRANSLATION_BINDING_INVALID
- STATE_TRANSLATION_ACTIVATION_FORBIDDEN

## 13. Observability

Display language and translation revision must remain visible.

## 14. Failure / Recovery

- display translation must not overwrite source truth
- translation is a support layer
- source-linkage must remain explicit

## 15. Acceptance Checklist

- source/translation split fixed
- display binding fixed
- revision trace fixed
