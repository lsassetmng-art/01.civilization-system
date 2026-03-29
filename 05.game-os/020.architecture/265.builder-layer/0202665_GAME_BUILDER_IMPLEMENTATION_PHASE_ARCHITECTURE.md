# ============================================================
# GAME BUILDER IMPLEMENTATION PHASE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official phased implementation architecture of Game Builder.

This architecture defines a staged implementation path
that preserves Builder integrity while enabling iterative delivery.


# ============================================================
# 1. PHASE PRINCIPLE
# ============================================================

Builder should be implemented in phases
that preserve structural correctness.

Each phase must end in a coherent Builder slice,
not a random feature pile.


# ============================================================
# 2. OFFICIAL PHASES
# ============================================================

Phase B1:
- workspace + project list
- template gallery
- project creation
- project overview

Phase B2:
- main editor shell
- structure tree
- block CRUD
- save / autosave / revision basics

Phase B3:
- asset browser
- upload / replace / bind
- pixel editor MVP
- asset validation basics

Phase B4:
- preview session create/open/close
- working-state preview
- saved-revision preview
- sandbox labeling

Phase B5:
- validation center
- editing/export/publish validation surfaces
- export readiness
- export package creation

Phase B6:
- submission readiness
- submission creation
- submission history/status

Phase B7:
- collaboration roles
- comments
- lock handling
- reviewer/publisher workflows

Phase B8:
- richer unit/building editors
- richer variant tools
- richer preview state inspection
- rollout-facing polish


# ============================================================
# 3. PHASE GATE RULE
# ============================================================

A later phase must not assume stability
from an earlier phase that was never completed.

For example:
- export should not precede revision correctness
- submission should not precede export correctness
- collaboration should not precede basic mutation correctness


# ============================================================
# 4. FINAL ARCHITECTURAL RULE
# ============================================================

Builder implementation should proceed by coherent vertical slices.

Core summary:

- B1 project/template foundation
- B2 editor foundation
- B3 asset foundation
- B4 preview foundation
- B5 validation/export foundation
- B6 submission foundation
- B7 collaboration foundation
- B8 polish and advanced capability
