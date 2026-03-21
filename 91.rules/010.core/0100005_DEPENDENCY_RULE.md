# ============================================================
# DEPENDENCY RULE
# ============================================================

status: canonical
scope: global
component: dependency-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical dependency rule
for design layers across the Civilization System.

This rule defines:

- dependency direction
- allowed references
- discouraged references
- prohibited reverse dependency patterns


# ============================================================
# CORE PRINCIPLE
# ============================================================

Dependency must follow structural meaning,
not short-term implementation convenience.

Lower layers may be informed by higher-layer rules.

Higher layers must not become dependent on
lower-layer implementation details.


# ============================================================
# SHARED LAYER REFERENCE
# ============================================================

The shared canonical layer structure is:

000.rules
010.constitution
020.architecture
030.model
040.runtime
050.flow
060.integration
070.operations
080.policy
090.interface
100.security
110.infrastructure
120.implementation
130.development
900.society
910.civilization
920.meta
999.archive


# ============================================================
# GENERAL DEPENDENCY DIRECTION
# ============================================================

Typical dependency direction is:

010.constitution
→ 020.architecture
→ 030.model
→ 040.runtime
→ 050.flow
→ 060.integration
→ 070.operations / 080.policy / 090.interface / 100.security / 110.infrastructure
→ 120.implementation
→ 130.development

This direction is a structural guideline,
not a rigid execution sequence.

However, reverse structural dependency should be avoided.


# ============================================================
# ALLOWED DEPENDENCY EXAMPLES
# ============================================================

Allowed examples include:

- architecture referencing constitution
- model referencing architecture concepts
- runtime referencing model structure
- flow referencing model and runtime behavior
- policy referencing constitution and architecture constraints
- interface referencing policy and model shape
- implementation referencing model, runtime, interface, and infrastructure
- development referencing any layer for planning purposes


# ============================================================
# DISCOURAGED DEPENDENCY EXAMPLES
# ============================================================

Discouraged examples include:

- constitution depending on implementation detail
- architecture depending on runtime incident handling
- model depending on interface wording
- policy depending on UI placement detail
- security depending on temporary development planning

These patterns create structural instability.


# ============================================================
# PROHIBITED DEPENDENCY PATTERNS
# ============================================================

The following patterns are prohibited
unless explicitly justified through a higher-level rule:

- constitution depending on implementation
- constitution depending on development
- architecture depending on UI-specific interface detail
- model depending on presentation-only interface behavior
- policy depending on temporary operational workaround
- security being overridden by convenience implementation logic


# ============================================================
# CROSS-LAYER REFERENCE RULE
# ============================================================

Cross-layer reference is allowed
when the document keeps its own role clear.

Example:

A policy document may reference a model identifier
without becoming a model document.

A runtime document may reference a policy constraint
without becoming a policy document.

Reference does not change layer ownership.


# ============================================================
# CROSS-OS DEPENDENCY RULE
# ============================================================

Cross-OS dependency must preserve source-of-truth boundaries.

Examples:

- BusinessOS may reference PersonaOS rights state
- CivilizationOS may reference PersonaOS release state
- PersonaOS may receive growth input from BusinessOS or CivilizationOS

However:

- reference does not transfer ownership
- source-of-truth must remain explicit
- mirrored state must not become false authority


# ============================================================
# IMPLEMENTATION RULE
# ============================================================

Implementation may reference many layers,
but implementation must not redefine
the meaning of higher layers.

Implementation follows canonical layers.
It does not replace them.


# ============================================================
# DEVELOPMENT RULE
# ============================================================

Development documents may reference any layer
for planning, sequencing, migration, and roadmap purposes.

However, development documents must not silently redefine
canonical structure or source-of-truth meaning.


# ============================================================
# FINAL RULE
# ============================================================

Dependency must flow in a structurally stable direction.

Higher-layer meaning must not be made dependent
on lower-layer implementation convenience.

Reference is allowed.
Ownership transfer is not.
