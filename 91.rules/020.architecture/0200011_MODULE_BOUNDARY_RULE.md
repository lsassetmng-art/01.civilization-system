# ============================================================
# MODULE BOUNDARY RULE
# ============================================================

status: canonical
scope: architecture
component: module-boundary-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical module boundary rules
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- module ownership
- module isolation
- explicit module interfaces
- prohibited cross-module mutation


# ============================================================
# MODULE DEFINITION RULE
# ============================================================

A module is a structurally meaningful unit
with explicit responsibility.

A module must have:

- clear scope
- clear owner responsibility
- explicit inputs
- explicit outputs
- explicit boundary


# ============================================================
# OWNERSHIP RULE
# ============================================================

Each module must own its own internal truth.

Another module may reference that truth
through explicit contracts,
but must not silently seize ownership.


# ============================================================
# MUTATION RULE
# ============================================================

Cross-module mutation is prohibited
unless explicitly defined by contract.

Reading is not ownership.
Mirroring is not ownership.
Requesting is not ownership.

A module must not mutate another module's source of truth directly.


# ============================================================
# CONTRACT RULE
# ============================================================

Modules communicate only through
defined contracts.

Contracts may include:

- model references
- integration payloads
- sync events
- request interfaces
- response interfaces

Implicit cross-module behavior is prohibited.


# ============================================================
# BOUNDARY FAILURE RULE
# ============================================================

Boundary violations are structural defects.

Examples include:

- direct mutation across source-of-truth boundary
- undocumented field dependency
- hidden runtime coupling
- contract-free integration behavior


# ============================================================
# FINAL RULE
# ============================================================

Each module must remain explicitly bounded.

Cross-module interaction is allowed only through explicit contracts,
never through silent structural leakage.
