# ============================================================
# GAME BUILDER DEVELOPMENT TASK STRUCTURE
# ============================================================

status: canonical
layer: 130.development
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official development task structure of Game Builder.

This document breaks Builder into implementation-facing work domains.


# ============================================================
# 1. TASK STRUCTURE PRINCIPLE
# ============================================================

Tasks should follow Builder domain boundaries,
not arbitrary technical fragments only.

Recommended workstreams:
- frontend shell
- project/template backend
- block editor backend
- revision/autosave backend
- asset backend
- preview backend
- validation backend
- export/submission backend
- collaboration backend
- shared infra and observability


# ============================================================
# 2. FRONTEND TASK GROUPS
# ============================================================

- shell and routing
- workspace/project views
- template gallery
- project overview
- main editor shell
- structure tree
- property inspector
- asset studio
- preview studio
- validation center
- export/publish center
- shared status badges/components


# ============================================================
# 3. BACKEND TASK GROUPS
# ============================================================

- project service
- block service
- revision service
- autosave service
- asset service
- preview service
- validation service
- export service
- submission service
- collaboration/lock/comment service


# ============================================================
# 4. CROSS-CUTTING TASK GROUPS
# ============================================================

- role/permission enforcement
- runtime/template compatibility enforcement
- Persona boundary enforcement
- lineage/hash generation
- observability/logging
- error model consistency


# ============================================================
# 5. MVP TASK ORDER
# ============================================================

1. shell + project/template
2. editor + save/autosave
3. asset browser/upload/bind
4. preview basics
5. validation + export
6. submission
7. collaboration
8. advanced asset/editor polish


# ============================================================
# 6. FINAL DEVELOPMENT RULE
# ============================================================

Builder tasks must remain aligned with architecture boundaries.

Core summary:

- tasks follow Builder domains
- MVP follows project -> editor -> asset -> preview -> validation/export -> submission
- security and boundaries are cross-cutting, not optional
