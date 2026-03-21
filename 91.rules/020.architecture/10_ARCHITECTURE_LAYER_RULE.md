# ============================================================
# ARCHITECTURE LAYER RULE
# ============================================================

status: canonical
scope: architecture
component: architecture-layer-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define architecture-layer responsibilities
inside the Civilization System.

This file specializes the shared layer rule
from 010.core into architecture-specific practice.


# ============================================================
# RESPONSIBILITY
# ============================================================

Architecture documents define:

- structural boundaries
- major component split
- ownership boundaries
- inter-component contracts
- allowed interaction shapes

Architecture does not define low-level runtime incident handling,
UI wording detail, or temporary implementation convenience.


# ============================================================
# ARCHITECTURE RULE
# ============================================================

Architecture is the structural truth
above runtime and implementation detail.

Architecture must define:

- what components exist
- what each component owns
- what each component may reference
- what each component must not mutate
- what contracts exist between components


# ============================================================
# LAYER RELATION RULE
# ============================================================

Architecture sits below constitution
and above model, runtime, flow, and implementation-oriented detail.

Constitution defines hard principles.
Architecture defines structural realization of those principles.

Runtime must not redefine architecture.
Implementation must not violate architecture.
Operations must not silently replace architecture.


# ============================================================
# STRUCTURAL STABILITY RULE
# ============================================================

Architecture should remain stable.

It may evolve when:

- system boundaries changed
- ownership boundaries were incorrect
- integration topology changed
- the old structure became structurally misleading

Architecture must not drift casually
because of temporary implementation pressure.


# ============================================================
# FINAL RULE
# ============================================================

Architecture defines structural truth.

Everything below architecture
must remain consistent with architectural boundary and ownership meaning.
