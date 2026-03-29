# ============================================================
# GAME BUILDER REMAINING DETAIL CHECKLIST
# ============================================================

status: canonical
layer: 130.development
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official remaining-detail checklist for Game Builder.

This checklist identifies the areas that may still need
additional detail before or during implementation.


# ============================================================
# 1. MOSTLY COMPLETED AREAS
# ============================================================

The following areas are mostly detailed already:

- builder overview
- screen architecture
- state and save architecture
- main editor architecture
- asset studio architecture
- preview studio architecture
- validation center architecture
- export/publish center architecture
- project API detail
- block editor API detail
- revision/autosave API detail
- asset API detail
- preview API detail
- validation/export/submission API detail
- DB schema architecture
- frontend state architecture
- template expansion architecture
- collaboration architecture
- security/permission architecture
- implementation phase architecture
- development task structure


# ============================================================
# 2. STILL-THIN AREAS
# ============================================================

The following areas may still benefit from deeper detail:

- exact request/response JSON examples
- concrete DB column typing and indexing strategy
- exact object storage key strategy
- frontend component props/events contracts
- exact lock timeout / expiry policy
- exact autosave cadence policy
- exact preview session expiry policy
- exact template migration UX
- exact asset editor toolbar behavior
- exact drag/drop behavior in structure tree
- exact error message vocabulary
- exact observability/logging event map


# ============================================================
# 3. IMPLEMENTATION-CHOICE-LEVEL AREAS
# ============================================================

These can be decided during implementation if architecture stays intact:

- frontend framework state library choice
- pagination strategy details
- background job orchestration details
- cache invalidation details
- exact modal/dialog composition
- optimistic UI policy by endpoint
- exact image processing pipeline implementation


# ============================================================
# 4. HIGH-PRIORITY REMAINING ITEMS
# ============================================================

If deeper detail is needed before coding,
prioritize these first:

1. validation/export/submission JSON examples
2. DB table column-level specification
3. frontend component event contract
4. lock/conflict UX detail
5. asset editor control detail


# ============================================================
# 5. SAFE TO DEFER ITEMS
# ============================================================

These are safer to defer until after MVP starts:

- advanced collaboration polish
- advanced asset variant workflows
- advanced preview debug overlays
- advanced template migration tooling
- advanced analytics/telemetry dashboards


# ============================================================
# 6. FINAL CHECKLIST RULE
# ============================================================

Builder may proceed to implementation when:

- core architecture is accepted
- primary APIs are accepted
- DB/storage boundaries are accepted
- runtime and Persona boundaries are accepted
- remaining thin items are explicitly acknowledged

Core summary:

- Builder is largely detailed
- a few low-level implementation specifics remain
- these should be handled explicitly, not implicitly
