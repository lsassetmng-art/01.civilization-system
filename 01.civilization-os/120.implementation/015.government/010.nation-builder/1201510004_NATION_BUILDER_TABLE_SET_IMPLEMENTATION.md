# ============================================================
# NATION BUILDER TABLE SET
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: government.nation_builder
document_id: 1201510004
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the canonical staged table set used by nation builder.

## 2. Scope

This document covers nation builder persistence layout.

## 3. Canonical Source Of Truth

Nation builder draft truth is stored in staged nation builder tables.
Active nation truth remains outside this table set.

## 4. Exact Table Set

- nation_builder_draft
- nation_builder_identity
- nation_builder_territory
- nation_builder_regime_bundle
- nation_builder_zoning_bundle
- nation_builder_market_tier_bundle
- nation_builder_public_system_bundle
- nation_builder_validation_result
- nation_builder_publish_artifact
- nation_builder_revision_link

## 5. Exact Request / Response

Builder section save must target explicit staged table ownership.

## 6. Exact Command / Event

Section-save and publish commands must preserve table ownership boundaries.

## 7. Authorization Boundary

Only nation-builder-scoped actions may mutate these tables.

## 8. State Machine

Table set participates in staged builder state, not active runtime state.

## 9. Transaction Boundary

Cross-section save must preserve staged consistency per request.

## 10. Idempotency

Repeated section save for same revision must be safe.

## 11. Audit Trace

Revision lineage and publish artifact creation must be audited.

## 12. Error Code Binding

Typical codes:
- VALIDATION_NATION_BUILDER_SECTION_MISSING
- CONFLICT_NATION_BUILDER_REVISION_COLLISION

## 13. Observability

Draft completeness and revision lineage must remain visible.

## 14. Failure / Recovery

Draft zoning editor may edit only staged zoning bundle.
Direct active nation overwrite is prohibited.

## 15. Acceptance Checklist

- staged table set fixed
- section ownership fixed
- active/staged split fixed
- revision lineage fixed
