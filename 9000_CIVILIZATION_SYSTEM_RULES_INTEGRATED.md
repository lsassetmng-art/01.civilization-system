# ============================================================
# CIVILIZATION SYSTEM RULES INTEGRATED
# ============================================================

status: canonical
system: civilization-system-rules
owner: Boss
prepared_by: Zero
generated_at: 2026-03-23 20:12:28 +0900


--------------------------------------------------------------------------------
FILE: 91.rules/010.core/0100000_SYSTEM_RULE_OVERVIEW.md
--------------------------------------------------------------------------------

# ============================================================
# SYSTEM RULE OVERVIEW
# Civilization System Canonical Rule
# ============================================================

status: canonical
scope: global
component: system-rule-overview

owner: Boss
prepared_by: Zero


# PURPOSE

Define the canonical rule framework
for the entire Civilization System.


# RULE DOMAINS

core
architecture
model
event
security
data
development


# FINAL RULE

All canonical documents, models, runtimes,
and implementations must comply with
this rule framework.




--------------------------------------------------------------------------------
FILE: 91.rules/010.core/0100001_DESIGN_DOCUMENT_STANDARD.md
--------------------------------------------------------------------------------

# ============================================================
# DESIGN DOCUMENT STANDARD
# ============================================================

status: canonical
scope: global
component: design-document-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical standard
for design documents across the Civilization System.

This standard applies to:

- foundation documents
- OS-layer design documents
- shared rules
- application-facing design documents
- canonical supporting specifications


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- what a canonical design document is
- how canonical design documents should be structured
- how naming rules apply to design documents
- how directory rules apply to design documents

Detailed naming and numbering rules are defined in:

- 010.core/02_FILE_NAMING_STANDARD.md
- 030.model/20_MODEL_NUMBERING_STANDARD.md
- 010.core/03_DIRECTORY_STRUCTURE_STANDARD.md


# ============================================================
# CANONICAL DESIGN DOCUMENT RULE
# ============================================================

A canonical design document is a document
that acts as an official source of truth
for a specific scope.

Canonical documents must be:

- explicit
- deterministic
- reviewable
- stable after publication
- structurally consistent with system rules


# ============================================================
# DOCUMENT SCOPE RULE
# ============================================================

Each canonical design document must have
a clearly defined scope.

Typical scope examples:

- system-wide
- OS-wide
- layer-wide
- component-wide
- domain-wide
- interface-wide
- policy-wide

The scope must not be ambiguous.


# ============================================================
# REQUIRED HEADER RULE
# ============================================================

Canonical design documents should include
a stable top section that defines:

- title
- status
- scope or layer
- component when applicable
- owner
- prepared_by

These fields help identify source-of-truth status
without external lookup.


# ============================================================
# STRUCTURE RULE
# ============================================================

Canonical design documents should be organized
using clear sections.

Typical sections include:

- PURPOSE
- RESPONSIBILITY
- RULE
- STRUCTURE
- FLOW
- FINAL RULE

Not every file must contain every section,
but the structure must remain explicit and readable.


# ============================================================
# NAMING RULE
# ============================================================

Canonical design documents must follow
the shared naming standards.

There are two major classes:

## Non-model files
Non-model files follow:

FFFNNNN_LOGICAL_NAME.md

As defined in:

010.core/02_FILE_NAMING_STANDARD.md

## Model files
Model files follow:

SSOOFFFPPPQQQ...NNNNNN_LOGICAL_NAME.md

As defined in:

030.model/20_MODEL_NUMBERING_STANDARD.md


# ============================================================
# DIRECTORY RULE
# ============================================================

Canonical design documents must be placed
under the correct canonical layer directory.

Examples:

- 010.constitution
- 020.architecture
- 030.model
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 090.interface
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development
- 900.society
- 910.civilization
- 920.meta

A document must not be placed in a layer
whose meaning does not match the document content.


# ============================================================
# ROOT FILE RULE
# ============================================================

Root-level files should be minimized.

Only root-level canonical documents with
clear top-level purpose should remain at root.

Examples of valid root-level files:

- root index files
- top-level structure rules
- explicitly retained top-level canonical documents

Temporary helper files, dumps, lists,
and migration artifacts should not remain
loosely at root long-term.


# ============================================================
# CANONICAL STATUS RULE
# ============================================================

A canonical document is an official source of truth.

If multiple related documents exist,
their relationship must be clear.

Examples:

- top-level system rule
- operational standard
- detailed subsystem rule

The canonical role of each file must not be ambiguous.


# ============================================================
# STABILITY RULE
# ============================================================

Canonical design documents should not be renamed,
moved, or structurally changed casually.

Structural change requires:

- clear reason
- consistency with current rules
- migration awareness
- preservation of archival history when needed


# ============================================================
# FINAL RULE
# ============================================================

All canonical design documents across the Civilization System
must be:

- structurally explicit
- correctly placed
- correctly named
- stable after publication
- consistent with the shared directory,
  naming, and numbering standards



--------------------------------------------------------------------------------
FILE: 91.rules/010.core/0100002_FILE_NAMING_STANDARD.md
--------------------------------------------------------------------------------

# ============================================================
# FILE NAMING STANDARD
# ============================================================

status: canonical
scope: global
component: file-naming-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical naming rules for files
across the Civilization System.


# ============================================================
# CORE PRINCIPLES
# ============================================================

File names must be:

- deterministic
- sortable
- unique within scope
- stable after publication
- human-readable after the numeric prefix


# ============================================================
# FILE CLASS RULE
# ============================================================

There are two naming classes:

1. model files
2. non-model files

Model files use a dedicated naming rule.

Non-model files use the general naming rule below.


# ============================================================
# NON-MODEL FILE RULE
# ============================================================

Non-model canonical files must use:

FFFNNNN_LOGICAL_NAME.md

Where:

- FFF         = 3-digit folder number
- NNNN        = 4-digit serial number inside the folder
- LOGICAL_NAME = uppercase logical name using underscores

Examples:

0100001_CIVILIZATION_OVERVIEW.md
0200001_SYSTEM_ARCHITECTURE.md
0400001_RUNTIME_OVERVIEW.md
0500001_ECONOMY_FLOW.md
0700001_RELEASE_OPERATION.md
0800001_PERSONA_USAGE_POLICY.md
0900001_BUSINESS_PERSONA_BINDING_INTERFACE.md
1200001_PERSONA_LICENSE_SPEC.md
1300001_PERSONA_EXTERNAL_RIGHTS_ROADMAP.md


# ============================================================
# MODEL FILE RULE
# ============================================================

Model files do not use the non-model rule above.

Model files must follow the dedicated model rule defined in:

030.model/20_MODEL_NUMBERING_STANDARD.md


# ============================================================
# EXTENSION RULE
# ============================================================

Canonical design documents use:

.md

Other extensions may be used only when
explicitly allowed by system rules.


# ============================================================
# FINAL RULE
# ============================================================

All non-model canonical files must follow:

FFFNNNN_LOGICAL_NAME.md

All model files must follow
the dedicated model numbering standard.



--------------------------------------------------------------------------------
FILE: 91.rules/010.core/0100003_DIRECTORY_STRUCTURE_STANDARD.md
--------------------------------------------------------------------------------

# ============================================================
# DIRECTORY STRUCTURE STANDARD
# ============================================================

status: canonical
scope: global
component: directory-structure-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical directory structure standard
for the Civilization System and its operating systems.

This standard is the operational directory standard
used under the higher-level rule:

910_CIVILIZATION_SYSTEM_DIRECTORY_STRUCTURE_RULE.md


# ============================================================
# CIVILIZATION SYSTEM ROOT STRUCTURE
# ============================================================

01.civilization-system

 ├ 00.foundation
 ├ 01.civilization-os
 ├ 02.persona-os
 ├ 03.business-os
 ├ 04.life-os
 ├ 05.game-os
 ├ 06.streaming-os
 ├ 07.applications
 ├ 90.docs
 └ 91.rules


# ============================================================
# ROOT STRUCTURE RULE
# ============================================================

The Civilization System root separates:

- shared foundation
- platform operating systems
- applications
- system-wide documentation
- shared canonical rules

Applications must not be placed inside OS directories.

ERP is not part of Civilization System
and must remain a separate system.


# ============================================================
# SHARED OS LAYER STRUCTURE
# ============================================================

Each OS may contain only the layers it actually needs.

When a layer exists, it must use the canonical number below.

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
# LAYER PRESENCE RULE
# ============================================================

Not all OS directories must contain all layers.

Missing layers are allowed.

However:

- existing layer numbers must keep their canonical meaning
- numbers must not be reassigned to other meanings
- structural gaps are valid


# ============================================================
# ROOT FILE RULE
# ============================================================

OS roots should primarily contain directories.

Root-level files are allowed only when they are:

- canonical root indexes
- top-level structure rules
- intentionally retained root-level canonical documents

Operational helper files should not remain
scattered at OS root long-term.


# ============================================================
# FILE PLACEMENT RULE
# ============================================================

The following file types should not remain
loosely at OS root long-term:

- active file lists
- temporary dumps
- restructure reports
- renumber maps
- temporary migration notes

These should be archived or managed separately.


# ============================================================
# FOUNDATION RULE
# ============================================================

00.foundation contains cross-system foundational rules.

Typical contents include:

- common design principles
- safety rules
- structure rules
- canonical standards
- cross-system philosophy


# ============================================================
# OS ROLE RULE
# ============================================================

Each OS provides platform capabilities.

Typical OS responsibilities include:

- constitution
- architecture
- models
- runtime behavior
- flows
- integration
- operations
- policies
- interfaces
- security
- infrastructure
- implementation specifications
- development planning


# ============================================================
# APPLICATION RULE
# ============================================================

07.applications contains real user-facing applications.

Applications may consume multiple OS capabilities.

Applications must not redefine shared OS rules.


# ============================================================
# DOCUMENTATION RULE
# ============================================================

90.docs contains system-wide documentation.

Typical contents include:

- architecture references
- design indexes
- model catalogs
- bible documents
- compiled review materials


# ============================================================
# SHARED RULES RULE
# ============================================================

91.rules contains Civilization System-wide canonical rules.

Typical contents include:

- naming standards
- numbering standards
- directory standards
- cross-OS structure rules
- data rules
- event rules
- security rules
- development rules


# ============================================================
# FINAL RULE
# ============================================================

Directory structure must remain stable across the Civilization System.

All future OS additions must follow
the shared canonical layer numbering rule
and the shared root structure rule.



--------------------------------------------------------------------------------
FILE: 91.rules/010.core/0100004_LAYER_ARCHITECTURE_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# LAYER ARCHITECTURE RULE
# ============================================================

status: canonical
scope: global
component: layer-architecture-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical layer architecture rule
for operating systems inside the Civilization System.

This rule defines:

- canonical layer meanings
- layer separation principles
- placement boundaries between layers
- stability of shared layer numbering


# ============================================================
# SHARED LAYER NUMBERING
# ============================================================

Operating systems inside the Civilization System
must use the following canonical layer numbering
when a layer exists.

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
# LAYER PRESENCE RULE
# ============================================================

Not every OS must contain every layer.

Missing layers are allowed.

However:

- if a layer exists, it must use the canonical number
- canonical layer numbers must not be reassigned
- structural gaps are valid


# ============================================================
# LAYER MEANING RULE
# ============================================================

## 000.rules
OS-internal shared rules.

## 010.constitution
Non-negotiable principles, hard boundaries, and core system identity.

## 020.architecture
High-level structure, major components, and responsibility separation.

## 030.model
Canonical data models, reference models, and structural domain entities.

## 040.runtime
Runtime behavior, state transitions, execution semantics, and processing behavior.

## 050.flow
Cross-step domain flow, lifecycle flow, and business process flow.

## 060.integration
Cross-system integration, synchronization, and interface between systems.

## 070.operations
Operational procedures, operational state handling, monitoring-facing procedures.

## 080.policy
Control rules, usage constraints, governance-like operational policies.

## 090.interface
User-facing, admin-facing, or system-facing interfaces and surfaces.

## 100.security
Security rules, access protection, audit integrity, and threat handling.

## 110.infrastructure
Storage, logging, runtime platform, integration channels, and operational foundations.

## 120.implementation
Implementation-oriented specifications, adapter details, and execution-facing design supplements.

## 130.development
Roadmaps, dependency plans, implementation ordering, and development planning.

## 900.society
Society-facing domain documents where applicable.

## 910.civilization
Civilization-facing domain documents where applicable.

## 920.meta
Meta-level maps, changelogs, dependency maps, and document management materials.

## 999.archive
Archived structures, retired layouts, and migration history.


# ============================================================
# PLACEMENT RULE
# ============================================================

A document must be placed in the layer
whose meaning best matches its actual role.

Examples:

- a hard principle belongs in constitution
- a structural split belongs in architecture
- a domain entity belongs in model
- a processing behavior belongs in runtime
- a cross-step business sequence belongs in flow
- a synchronization design belongs in integration
- an operational procedure belongs in operations
- a usage restriction belongs in policy
- an admin screen design belongs in interface
- a protection rule belongs in security
- a runtime platform requirement belongs in infrastructure
- an implementation detail spec belongs in implementation
- a roadmap belongs in development


# ============================================================
# LAYER MIXING RULE
# ============================================================

A document must not mix unrelated layer roles casually.

Examples of invalid mixing:

- policy and runtime logic merged into one document without separation
- model and interface combined without structural reason
- infrastructure and constitution mixed as one document

Cross-layer references are allowed.

Cross-layer content collapse is discouraged.


# ============================================================
# DEPENDENCY DIRECTION RULE
# ============================================================

Higher-level rules should remain structurally stable.

Typical direction is:

constitution
→ architecture
→ model / runtime / flow / integration
→ operations / policy / interface / security / infrastructure
→ implementation / development

Exact operational references may vary by system,
but reverse structural dependency should be avoided.


# ============================================================
# STABILITY RULE
# ============================================================

Layer meanings must remain stable across systems.

A number once assigned to a shared layer meaning
must not later be reused for another meaning.


# ============================================================
# FINAL RULE
# ============================================================

All operating systems inside the Civilization System
must preserve the canonical meaning of shared layers.

Documents must be placed according to role,
not convenience.



--------------------------------------------------------------------------------
FILE: 91.rules/010.core/0100005_DEPENDENCY_RULE.md
--------------------------------------------------------------------------------

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



--------------------------------------------------------------------------------
FILE: 91.rules/010.core/0100006_VERSIONING_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# VERSIONING RULE
# ============================================================

status: canonical
scope: global
component: versioning-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical versioning rule
for design documents across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- when a document version is considered changed
- what kinds of change are major or minor
- how canonical stability should be preserved
- how versioning relates to structural migration


# ============================================================
# CORE PRINCIPLE
# ============================================================

Versioning exists to preserve structural trust.

A version should change when the meaning,
scope, boundary, or operational interpretation
of a document changes in a meaningful way.

Versioning should not be treated
as decorative bookkeeping.


# ============================================================
# CHANGE CLASS RULE
# ============================================================

Changes may be understood in the following classes.

## Structural change
A change to:

- scope
- layer role
- ownership meaning
- directory placement meaning
- naming rule meaning
- numbering rule meaning
- source-of-truth boundary

This is a major change.

## Behavioral change
A change to:

- runtime meaning
- flow interpretation
- policy effect
- operational handling
- integration behavior

This is usually a major or significant change.

## Editorial change
A change to:

- wording clarity
- formatting
- typo correction
- section readability

This is a minor change
unless structural meaning also changed.


# ============================================================
# CANONICAL DOCUMENT VERSION RULE
# ============================================================

Canonical documents must be treated as stable.

A canonical document should not be revised casually.

When canonical meaning changes,
the change must be explicit and reviewable.

If the change affects other documents,
migration awareness is required.


# ============================================================
# VERSIONING AND NAMING RULE
# ============================================================

Canonical filenames should remain stable.

Version should not normally be encoded
directly in the filename.

Structural identity belongs to the canonical filename.
Version belongs to change history and document management.


# ============================================================
# MIGRATION RULE
# ============================================================

When a structural migration happens,
the following should be clear:

- what changed
- why it changed
- what old structure was replaced
- what new structure became canonical
- whether archive preservation is required

Migration must not silently erase structural history.


# ============================================================
# CROSS-DOCUMENT IMPACT RULE
# ============================================================

A version-impacting change must consider
dependent documents.

Examples:

- directory structure rule changes may affect file naming and placement rules
- file naming rule changes may affect design document and model rules
- model numbering rule changes may affect model registries and references

Versioning must be evaluated
in system context, not document isolation.


# ============================================================
# FINAL RULE
# ============================================================

Versioning must reflect real structural meaning.

Editorial cleanup alone is minor.

Boundary, role, numbering, naming, and structural rule changes
must be treated as significant versioning events.



--------------------------------------------------------------------------------
FILE: 91.rules/010.core/0100007_CANONICAL_STATUS_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# CANONICAL STATUS RULE
# ============================================================

status: canonical
scope: global
component: canonical-status-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical status rule
for documents across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- what canonical means
- how canonical differs from draft or support material
- how canonical files should be treated
- how competing documents are resolved


# ============================================================
# CANONICAL DEFINITION
# ============================================================

A canonical document is an official source of truth
for its defined scope.

Canonical status means:

- the document is authoritative in scope
- the document is expected to remain stable
- the document may be referenced by other rules or systems
- conflicting documents must defer to it


# ============================================================
# NON-CANONICAL MATERIAL RULE
# ============================================================

The following do not automatically become canonical:

- dumps
- active file lists
- temporary reports
- migration notes
- review artifacts
- compiled full books
- exploratory drafts

These may be useful,
but they are not authoritative by default.


# ============================================================
# COMPETING DOCUMENT RULE
# ============================================================

If multiple documents appear to govern the same scope,
their relationship must be resolved explicitly.

Possible resolutions include:

- one document becomes canonical
- one document becomes archived legacy
- one document becomes a derived operational summary
- one document becomes a reference-only support file

Canonical ambiguity is prohibited.


# ============================================================
# ROOT CANONICAL RULE
# ============================================================

Root-level canonical files should be minimal.

A root-level canonical file must have
clear top-level scope.

Examples:

- system-wide structure rule
- root index
- intentionally retained top-level canonical file

Root-level presence alone does not grant canonical authority.


# ============================================================
# ARCHIVE RULE
# ============================================================

Archived files are not canonical by default.

Archive preserves history.
It does not preserve authority.

A file moved to archive may still be useful,
but active rules must not silently defer to archived material.


# ============================================================
# DERIVED DOCUMENT RULE
# ============================================================

A derived document may summarize,
compile, or operationalize canonical material.

Examples:

- operational standards derived from higher-level system rules
- compiled review documents
- full dumps for inspection

Derived documents must not silently override canonical sources.


# ============================================================
# STATUS FIELD RULE
# ============================================================

Canonical files should clearly declare status.

Typical statuses may include:

- canonical
- draft
- generated
- working-summary
- archived

Status must reflect document role honestly.


# ============================================================
# FINAL RULE
# ============================================================

Canonical status means authoritative source of truth
within defined scope.

Archive, dump, summary, and derived files
must not be mistaken for canonical authority.



--------------------------------------------------------------------------------
FILE: 91.rules/010.core/0100008_CHANGE_CONTROL_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# CHANGE CONTROL RULE
# ============================================================

status: canonical
scope: global
component: change-control-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical change control rule
for design documents across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- how canonical documents may be changed
- how structural changes should be evaluated
- how archival preservation should be handled
- how drift and silent rewrite should be prevented


# ============================================================
# CORE PRINCIPLE
# ============================================================

Canonical documents may evolve,
but change must be explicit, reviewable, and traceable.

Silent structural drift is prohibited.


# ============================================================
# CHANGE TYPES
# ============================================================

Typical change types include:

## Editorial change
- wording clarification
- typo correction
- formatting cleanup

## Structural refinement
- clearer sectioning
- clearer scope statement
- explicit rule separation

## Structural change
- renumbering
- layer reassignment
- naming rule change
- directory rule change
- source-of-truth reassignment
- boundary change

The more structural the change,
the stronger the control requirement.


# ============================================================
# REQUIRED CHANGE DISCIPLINE
# ============================================================

Before changing a canonical document,
the following should be understood:

- why the change is needed
- what rule or structure is being improved
- what downstream documents may be affected
- whether archive preservation is required
- whether migration notes are required


# ============================================================
# RENAME AND MOVE RULE
# ============================================================

Canonical files must not be renamed or moved casually.

Renaming or moving is allowed only when:

- the current structure is incorrect
- the target structure is explicitly more canonical
- dependent references can be updated
- archival history is preserved when needed


# ============================================================
# REPLACEMENT RULE
# ============================================================

When one document replaces another,
the outcome must be explicit.

Possible outcomes:

- replaced and archived
- replaced and deleted
- superseded by higher-level rule
- converted into derived operational material

Replacement without explicit disposition is discouraged.


# ============================================================
# BULK REFACTOR RULE
# ============================================================

Bulk structural changes are allowed
when system-wide consistency is being restored.

Examples:

- root renumbering
- layer unification
- file naming normalization
- archive cleanup

However, bulk refactors must still preserve:

- traceability
- backup or archive path
- explicit new canonical state


# ============================================================
# CONFLICT RULE
# ============================================================

When two files or structures compete,
conflict must be resolved deliberately.

Possible actions include:

- merge
- archive legacy
- keep one canonical and one derived
- rename conflict artifact explicitly

Unresolved ambiguity must not remain in active canonical space.


# ============================================================
# FINAL RULE
# ============================================================

Canonical change must be explicit,
traceable, and structurally justified.

Stability is the default.
Change requires reason.



--------------------------------------------------------------------------------
FILE: 91.rules/020.architecture/0200010_ARCHITECTURE_LAYER_RULE.md
--------------------------------------------------------------------------------

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



--------------------------------------------------------------------------------
FILE: 91.rules/020.architecture/0200010_EXTERNAL_OS_PERSONA_BIDIRECTIONAL_SYNC_ARCHITECTURE_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# EXTERNAL OS PERSONA BIDIRECTIONAL SYNC ARCHITECTURE RULE
# Civilization System Canonical Standard
# ============================================================

status: canonical
scope: cross-os
layer: 020.architecture

owner: Boss
prepared_by: Zero

purpose:
Define the canonical bidirectional integration architecture
between PersonaOS and external OS domains.

applies_to:
- BusinessOS
- LifeOS
- GameOS
- StreamingOS

principles:
- Persona truth belongs to PersonaOS
- external OS truth belongs to each external OS
- no direct cross-os truth overwrite
- synchronization must use explicit contracts
- synchronization must use outbox/inbox or equivalent canonical sync paths

direction_a:
External OS -> PersonaOS
- growth event
- growth request
- context-derived growth trigger

direction_b:
PersonaOS -> External OS
- usage permission status
- access grant status
- release validity
- usage binding state
- trust-related state



--------------------------------------------------------------------------------
FILE: 91.rules/020.architecture/0200011_MODULE_BOUNDARY_RULE.md
--------------------------------------------------------------------------------

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



--------------------------------------------------------------------------------
FILE: 91.rules/020.architecture/0200012_SYSTEM_DEPENDENCY_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# SYSTEM DEPENDENCY RULE
# ============================================================

status: canonical
scope: architecture
component: system-dependency-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical inter-system dependency rules
inside the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- allowed cross-OS dependency
- cross-system ownership boundaries
- external system isolation
- source-of-truth preservation


# ============================================================
# CORE PRINCIPLE
# ============================================================

Systems may interact.
Systems must not collapse into one another.

Cross-system reference is allowed.
Cross-system ownership transfer is not implicit.


# ============================================================
# INTERNAL OS RULE
# ============================================================

The following operating systems exist
inside Civilization System.

- CivilizationOS
- PersonaOS
- BusinessOS
- LifeOS
- GameOS
- StreamingOS

Each OS may depend on another OS
only through explicit structural boundaries.


# ============================================================
# SOURCE OF TRUTH RULE
# ============================================================

Each system must preserve source-of-truth ownership.

Examples:

- PersonaOS owns persona identity and persona-derived rights truth
- CivilizationOS owns civilization-world truth
- BusinessOS owns business app and workspace truth

A consumer system may mirror state.
A consumer system must not become false authority.


# ============================================================
# ALLOWED DEPENDENCY EXAMPLES
# ============================================================

Examples of allowed dependency include:

- BusinessOS referencing PersonaOS release, license, or access state
- CivilizationOS referencing PersonaOS release or rights state
- PersonaOS receiving growth input from BusinessOS
- PersonaOS receiving growth input from CivilizationOS

These are allowed because
reference and request do not erase ownership.


# ============================================================
# PROHIBITED DEPENDENCY EXAMPLES
# ============================================================

Examples of prohibited dependency include:

- BusinessOS directly mutating PersonaOS source-of-truth records
- CivilizationOS directly mutating PersonaOS rights truth
- ERP directly mutating Civilization internal truth
- one OS silently redefining another OS boundary


# ============================================================
# ERP BOUNDARY RULE
# ============================================================

ERP is outside Civilization System.

ERP may integrate through explicit contracts,
but ERP is not part of the internal OS layer structure.

ERP must not directly mutate Civilization System internals
without explicit external integration design.


# ============================================================
# MIRROR RULE
# ============================================================

Mirrored state is allowed.

However:

- mirrored state is not source of truth
- mirrored state must remain attributable
- mirrored state must be refreshable or synchronizable
- invalid mirrored state must not override authoritative truth


# ============================================================
# FINAL RULE
# ============================================================

System dependency is allowed only through explicit boundaries.

Reference is allowed.
Ownership transfer is not implicit.
Source-of-truth must remain explicit across all systems.



--------------------------------------------------------------------------------
FILE: 91.rules/020.architecture/0200013_RUNTIME_ISOLATION_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# RUNTIME ISOLATION RULE
# ============================================================

status: canonical
scope: architecture
component: runtime-isolation-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical runtime isolation principles
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- isolation between runtime units
- failure containment expectations
- corruption prevention boundaries
- fail-closed structural principles


# ============================================================
# CORE PRINCIPLE
# ============================================================

Runtime failures must remain isolated.

One runtime unit must not corrupt another unit's
source-of-truth, state meaning, or structural boundary.


# ============================================================
# ISOLATION RULE
# ============================================================

Runtime isolation means:

- one runtime unit may fail independently
- failure must remain attributable
- failure must not silently mutate unrelated runtime units
- boundary enforcement must continue under failure conditions


# ============================================================
# FAILURE CONTAINMENT RULE
# ============================================================

When runtime failure occurs,
containment is required.

Containment may include:

- rejecting invalid input
- halting unsafe mutation
- preserving prior authoritative state
- retrying through controlled mechanisms
- marking failure explicitly


# ============================================================
# CROSS-RUNTIME RULE
# ============================================================

Cross-runtime interaction is allowed
only through explicit contracts and bounded integration behavior.

Runtime coupling must not become
silent shared corruption risk.


# ============================================================
# FAIL-CLOSED RULE
# ============================================================

When runtime correctness cannot be established,
the system should prefer fail-closed behavior
over silent corruption.

Examples:

- deny invalid state transition
- reject unverifiable sync payload
- disable invalid mirrored usage
- stop unsafe mutation path


# ============================================================
# FINAL RULE
# ============================================================

Runtime isolation is mandatory.

Failure must be contained.
Boundary corruption is prohibited.
Fail-closed isolation is required when correctness is uncertain.



--------------------------------------------------------------------------------
FILE: 91.rules/030.model/0300020_MODEL_NUMBERING_STANDARD.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL NUMBERING STANDARD
# ============================================================

status: canonical
layer: rules
component: model-numbering

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical naming and numbering rule
for model files across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines the detailed naming rule
used only for model files.

General non-model file naming is defined in:

010.core/02_FILE_NAMING_STANDARD.md


# ============================================================
# MODEL FILE NAMING RULE
# ============================================================

Model files must use:

SSOOFFFPPPQQQ...NNNNNN_LOGICAL_NAME.md

Where:

- SS          = 2-digit system number
- OO          = 2-digit OS number
- FFF         = 3-digit root folder number
- PPPQQQ...   = additional 3-digit subfolder numbers, if present
- NNNNNN      = 6-digit file serial number
- LOGICAL_NAME = uppercase logical name using underscores

This rule applies only to model files.


# ============================================================
# EXAMPLES
# ============================================================

Example 1:
01.civilization-system
01.civilization-os
030.model
040.persona
file number 000001

Result:

010103040000001_PERSONA_REF_MODEL.md


Example 2:
01.civilization-system
02.persona-os
030.model
120.external_rights
file number 000001

Result:

010203120000001_PERSONA_LICENSE.md


Example 3:
01.civilization-system
03.business-os
030.model
040.persona
file number 000001

Result:

010303040000001_BUSINESS_PERSONA_RELEASE_REF_MODEL.md


# ============================================================
# NUMBER COMPONENT RULE
# ============================================================

## System Number
System number identifies the parent system.

Current example:

- 01 = civilization-system

## OS Number
OS number identifies the OS inside the system.

Examples:

- 01 = civilization-os
- 02 = persona-os
- 03 = business-os
- 04 = life-os
- 05 = game-os
- 06 = streaming-os

## Root Folder Number
Root folder number identifies the canonical root layer.

For model files, the root folder is typically:

- 030 = model

## Subfolder Numbers
Each subfolder under model may contribute
an additional 3-digit number segment.

Example:

030.model / 120.external_rights

becomes:

030 + 120

## File Serial Number
Each model file must have a 6-digit serial number.

Examples:

- 000001
- 000002
- 000003

Serial numbers must be unique within
the final numbering scope.


# ============================================================
# PRINCIPLES
# ============================================================

Model file identifiers must be:

- unique
- deterministic
- sortable
- stable after publication
- structurally meaningful from the filename alone


# ============================================================
# SCOPE RULE
# ============================================================

The model filename must reveal:

- which system owns the model
- which OS owns the model
- which root layer owns the model
- which subdomain owns the model
- which file serial the model has


# ============================================================
# FINAL RULE
# ============================================================

All model files must follow:

SSOOFFFPPPQQQ...NNNNNN_LOGICAL_NAME.md

Non-model files must not use this rule.
They follow the general file naming standard instead.



--------------------------------------------------------------------------------
FILE: 91.rules/030.model/0300021_MODEL_NAMING_STANDARD.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL NAMING STANDARD
# ============================================================

status: canonical
layer: rules
component: model-naming

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the logical naming rule
for model files across the Civilization System.

This file defines only the LOGICAL_NAME part.

Full filename structure is defined in:

030.model/20_MODEL_NUMBERING_STANDARD.md


# ============================================================
# RESPONSIBILITY
# ============================================================

20_MODEL_NUMBERING_STANDARD.md defines:

- system number
- OS number
- folder number
- subfolder number
- file serial number

This file defines:

- LOGICAL_NAME style
- word composition
- readability rules
- stability rules


# ============================================================
# LOGICAL NAME RULE
# ============================================================

The logical name of a model file must use:

UPPERCASE_WITH_UNDERSCORES

Examples:

PERSONA_LICENSE
PERSONA_ACCESS_GRANT
BUSINESS_WORKSPACE_MEMBER
CIVILIZATION_SYNC_EVENT_INBOX_MODEL


# ============================================================
# WORD SELECTION RULE
# ============================================================

Model logical names must:

- be domain-accurate
- be concise
- avoid filler words
- avoid unstable wording
- remain readable without external context

Use nouns or noun phrases as the default style.


# ============================================================
# SUFFIX RULE
# ============================================================

Use suffixes only when they carry structural meaning.

Typical examples:

- MODEL
- REF_MODEL
- BINDING_MODEL
- EVENT_INBOX_MODEL

Avoid decorative or redundant suffixes.


# ============================================================
# CASE RULE
# ============================================================

Model logical names must be uppercase.

Lowercase model logical names are prohibited
for canonical model files.


# ============================================================
# STABILITY RULE
# ============================================================

Once published, a model logical name
should remain stable unless:

- the domain meaning changed
- the model boundary changed
- the old name became structurally incorrect

Renaming for style alone should be avoided.


# ============================================================
# FINAL RULE
# ============================================================

Model logical names must use:

UPPERCASE_WITH_UNDERSCORES

The full model filename must follow:

SSOOFFFPPPQQQ...NNNNNN_LOGICAL_NAME.md



--------------------------------------------------------------------------------
FILE: 91.rules/030.model/0300022_MODEL_DIRECTORY_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL DIRECTORY RULE
# ============================================================

status: canonical
layer: rules
component: model-directory-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical directory rule
for model files across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- where model files must be placed
- how model subfolders are structured
- how numbered subfolders contribute to model filenames

Model filename structure itself is defined in:

030.model/20_MODEL_NUMBERING_STANDARD.md

Model logical naming is defined in:

030.model/21_MODEL_NAMING_STANDARD.md


# ============================================================
# ROOT LAYER RULE
# ============================================================

Canonical model files must be placed under:

030.model

This layer is the canonical root layer for model files.


# ============================================================
# SUBFOLDER RULE
# ============================================================

Subfolders under 030.model may be used
to represent model subdomains.

Subfolders should use the format:

NNN.logical-scope

Examples:

010.identity
020.memory
030.relationship
040.persona
050.integration
120.external_rights


# ============================================================
# NUMBER CONTRIBUTION RULE
# ============================================================

When a model file is placed under numbered subfolders,
those subfolder numbers contribute to the filename.

Example:

030.model / 120.external_rights / PERSONA_LICENSE model

Contributes:

030 + 120

Resulting filename prefix example:

SSOO030120NNNNNN_...


# ============================================================
# NESTED SUBFOLDER RULE
# ============================================================

Nested numbered subfolders are allowed
when domain separation requires them.

Examples:

030.model / 040.persona / 010.identity
030.model / 050.integration / 020.sync
030.model / 120.external_rights / 010.license

Each numbered subfolder contributes
its 3-digit number in sequence to the filename.


# ============================================================
# DIRECTORY NAMING RULE
# ============================================================

Model directory names must be:

NNN.logical-scope

Where:

- NNN = 3-digit directory number
- logical-scope = lowercase readable scope name

Examples:

010.identity
040.persona
120.external_rights


# ============================================================
# STABILITY RULE
# ============================================================

Once a model directory number is assigned,
its structural meaning should remain stable.

Renumbering should be avoided unless:

- the domain boundary changed
- the old directory became structurally incorrect
- the system is under an explicit migration phase


# ============================================================
# FINAL RULE
# ============================================================

All canonical model files must be placed under:

030.model

All canonical model subfolders should use:

NNN.logical-scope

Subfolder numbers contribute directly
to the canonical model filename.



--------------------------------------------------------------------------------
FILE: 91.rules/030.model/0300023_MODEL_EXTENSION_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL EXTENSION RULE
# ============================================================

status: canonical
layer: rules
component: model-extension-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical file extension rule
for model files across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- which extension canonical model files must use
- which exceptions may exist
- how non-canonical supporting artifacts should be treated


# ============================================================
# CANONICAL EXTENSION RULE
# ============================================================

Canonical model files must use:

.md

This applies to the canonical design-layer model documents
stored under:

030.model


# ============================================================
# EXCEPTION RULE
# ============================================================

Other extensions may exist only when explicitly required
for tooling, export, or generated artifacts.

Examples of non-canonical supporting outputs may include:

- .json
- .csv
- .txt

Such files must not replace the canonical .md model document.


# ============================================================
# SOURCE OF TRUTH RULE
# ============================================================

For model design documents,
the .md file is the source of truth.

Generated or exported artifacts are secondary
and must be reproducible from canonical sources.


# ============================================================
# NAMING RULE
# ============================================================

The extension rule does not replace
the filename numbering and logical naming rules.

Canonical model filenames must still follow:

SSOOFFFPPPQQQ...NNNNNN_LOGICAL_NAME.md


# ============================================================
# STABILITY RULE
# ============================================================

Published canonical model files
must not change extension casually.

Changing extension requires an explicit structural reason
and migration handling.


# ============================================================
# FINAL RULE
# ============================================================

All canonical model files must use:

.md

Non-.md artifacts may exist only as supporting materials
and must not replace the canonical model document.



--------------------------------------------------------------------------------
FILE: 91.rules/040.event/0400010_EXTERNAL_OS_PERSONA_BIDIRECTIONAL_SYNC_EVENT_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# EXTERNAL OS PERSONA BIDIRECTIONAL SYNC EVENT RULE
# Civilization System Canonical Standard
# ============================================================

status: canonical
scope: cross-os
layer: 040.event

owner: Boss
prepared_by: Zero

purpose:
Define canonical event directions and event contract expectations
for PersonaOS bidirectional synchronization.

external_to_persona_events:
- <os>_to_persona_growth_event
- <os>_to_persona_growth_request
- <os>_to_persona_context_sync_request

persona_to_external_events:
- persona_to_<os>_usage_permission_synced
- persona_to_<os>_access_state_synced
- persona_to_<os>_release_validity_synced
- persona_to_<os>_usage_binding_synced
- persona_to_<os>_trust_state_synced

rules:
- all events require correlation_id
- all events require causation traceability where applicable
- contracts must be explicit
- retries must be idempotent



--------------------------------------------------------------------------------
FILE: 91.rules/040.event/0400030_EVENT_NAMING_STANDARD.md
--------------------------------------------------------------------------------

# ============================================================
# EVENT NAMING STANDARD
# ============================================================

status: canonical
scope: event
component: event-naming-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical naming rules
for event identifiers across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- how event types should be named
- how event names should remain readable
- how event names should remain stable
- how event names should represent structural meaning


# ============================================================
# CORE PRINCIPLE
# ============================================================

An event name must reveal
what happened in a structurally meaningful way.

An event name should not be vague,
UI-oriented, or temporary wording.


# ============================================================
# EVENT TYPE RULE
# ============================================================

Canonical event types should use:

UPPERCASE_WITH_UNDERSCORES

Examples:

PERSONA_RELEASE_ISSUED
PERSONA_LICENSE_CHANGED
PERSONA_ACCESS_GRANT_CHANGED
CIVILIZATION_SYNC_EVENT_RECEIVED
BUSINESS_PERSONA_BINDING_CREATED


# ============================================================
# WORDING RULE
# ============================================================

Event names should:

- use domain-accurate nouns and actions
- avoid filler words
- avoid unstable temporary wording
- remain readable without external explanation

Use past-result or state-change wording
when possible.


# ============================================================
# EVENT MEANING RULE
# ============================================================

An event name should represent
a meaningful domain occurrence.

Good examples:

- PERSONA_RELEASE_REVOKED
- PERSONA_LICENSE_CHANGED
- BUSINESS_SYNC_EVENT_CONSUMED

Poor examples:

- PERSONA_DO_SOMETHING
- DATA_UPDATED_OK
- TEMP_SYNC_EVENT


# ============================================================
# STABILITY RULE
# ============================================================

Published canonical event names
should remain stable.

Rename only when:

- the event meaning changed
- the old name became structurally incorrect
- the event boundary was redefined


# ============================================================
# FINAL RULE
# ============================================================

Canonical event identifiers must use:

UPPERCASE_WITH_UNDERSCORES

An event name must reveal
what structurally happened,
not temporary implementation wording.



--------------------------------------------------------------------------------
FILE: 91.rules/040.event/0400031_EVENT_VERSIONING_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# EVENT VERSIONING RULE
# ============================================================

status: canonical
scope: event
component: event-versioning-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical versioning rules
for event contracts across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- when an event contract should be versioned
- what counts as breaking change
- how stability should be preserved for consumers
- how event evolution should be managed


# ============================================================
# CORE PRINCIPLE
# ============================================================

Event versioning exists to preserve
contract stability across producers and consumers.

Changes that alter interpretation,
required fields, or contract meaning
must not be treated as trivial edits.


# ============================================================
# BREAKING CHANGE RULE
# ============================================================

A breaking event change includes:

- removing a required field
- changing field meaning
- changing identifier semantics
- changing source-of-truth interpretation
- changing contract shape in a way
  that invalidates existing consumers


# ============================================================
# NON-BREAKING CHANGE RULE
# ============================================================

A non-breaking event change may include:

- adding optional fields
- clarifying documentation
- tightening validation explanation
- adding derived metadata
  without changing existing required meaning


# ============================================================
# CONSUMER RULE
# ============================================================

Event producers must consider
existing consumers before changing contracts.

Event consumers must not assume
undocumented payload meaning.


# ============================================================
# MIGRATION RULE
# ============================================================

When event versioning changes,
the following should be explicit:

- what changed
- why it changed
- which consumers are affected
- whether dual-read or transition support is needed


# ============================================================
# FINAL RULE
# ============================================================

Event contracts must evolve deliberately.

Breaking changes require explicit migration awareness.
Non-breaking changes must preserve existing contract meaning.



--------------------------------------------------------------------------------
FILE: 91.rules/040.event/0400032_EVENT_SCHEMA_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# EVENT SCHEMA RULE
# ============================================================

status: canonical
scope: event
component: event-schema-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical schema expectations
for event payloads across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- required schema clarity
- payload structure expectations
- contract consistency requirements
- schema stability expectations


# ============================================================
# CORE PRINCIPLE
# ============================================================

Every canonical event must have
an explicit schema shape.

The consumer must be able to determine:

- event type
- aggregate identity
- payload structure
- source system
- processing meaning


# ============================================================
# MINIMUM SCHEMA RULE
# ============================================================

A canonical event payload should clearly support:

- event_type
- aggregate_type
- aggregate_id
- payload body
- source or producer identity when relevant

Additional fields may exist,
but structural identification must remain explicit.


# ============================================================
# FIELD MEANING RULE
# ============================================================

Each field must have stable meaning.

A field must not silently change purpose
while keeping the same name.


# ============================================================
# OPTIONAL FIELD RULE
# ============================================================

Optional fields are allowed
when they do not alter the meaning
of existing required fields.

Optional fields must not silently become mandatory
without version-aware handling.


# ============================================================
# VALIDATION RULE
# ============================================================

Event payloads must be validatable.

Malformed or unverifiable payloads
must not be accepted as authoritative input.


# ============================================================
# FINAL RULE
# ============================================================

Canonical events must have
explicit, stable, and validatable schema structure.

Consumers must not rely on undocumented payload assumptions.



--------------------------------------------------------------------------------
FILE: 91.rules/040.event/0400033_EVENT_IDEMPOTENCY_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# EVENT IDEMPOTENCY RULE
# ============================================================

status: canonical
scope: event
component: event-idempotency-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical idempotency rules
for event processing across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- duplicate event handling expectations
- replay safety expectations
- retry-safe consumption behavior
- non-repeatable side effect control


# ============================================================
# CORE PRINCIPLE
# ============================================================

Event processing must tolerate retry,
replay, and duplicate delivery
without creating false repeated side effects.


# ============================================================
# IDEMPOTENCY RULE
# ============================================================

A consumer must be able to determine
whether an event was already processed
or whether repeating the same event
would be unsafe.

At-least-once delivery must not create
silent duplicate mutation.


# ============================================================
# DUPLICATE HANDLING RULE
# ============================================================

Duplicate deliveries are expected
in robust distributed systems.

Consumers should protect against:

- repeated grant creation
- repeated release application
- repeated mirrored state mutation
- repeated downstream side effects


# ============================================================
# REPLAY RULE
# ============================================================

Reprocessing should be safe
when the same canonical event is replayed
under the same contract meaning.

Replay safety is part of structural correctness,
not an optional optimization.


# ============================================================
# RETRY RULE
# ============================================================

Retryable failure handling is allowed.

Retry must not create silent double-apply effects.

Where necessary, inbox or tracking state
should make prior processing detectable.


# ============================================================
# FINAL RULE
# ============================================================

Canonical event handling must be idempotent enough
to tolerate retry and duplicate delivery
without corrupting structural truth.



--------------------------------------------------------------------------------
FILE: 91.rules/040.event/0400034_EVENT_SECURITY_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# EVENT SECURITY RULE
# ============================================================

status: canonical
scope: event
component: event-security-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical security expectations
for event production and consumption
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- trust expectations for event payloads
- validation expectations
- source verification expectations
- unsafe event rejection principles


# ============================================================
# CORE PRINCIPLE
# ============================================================

An event payload must not be trusted
only because it arrived.

Validity, origin, and structural correctness
must be established before authoritative use.


# ============================================================
# VALIDATION RULE
# ============================================================

Consumers must validate:

- event type
- schema shape
- expected source when relevant
- aggregate identity form when relevant
- required field presence

Malformed payloads must not mutate canonical truth.


# ============================================================
# SOURCE RULE
# ============================================================

When source authority matters,
event origin must be attributable.

Mirrored or downstream systems
must not be treated as authoritative producers
unless explicitly defined.


# ============================================================
# REJECTION RULE
# ============================================================

Unsafe or unverifiable events
should be rejected or quarantined.

Prefer fail-closed behavior over silent acceptance
when trust cannot be established.


# ============================================================
# LEAST-TRUST RULE
# ============================================================

A consumer should trust
only the minimum required information
needed to process the event correctly.

Undocumented fields must not gain silent authority.


# ============================================================
# FINAL RULE
# ============================================================

Canonical event handling requires validation,
source awareness, and fail-closed rejection
of unsafe payloads.



--------------------------------------------------------------------------------
FILE: 91.rules/050.security/0500040_SECURITY_MODEL_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# SECURITY MODEL RULE
# ============================================================

status: canonical
scope: security
component: security-model-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical security model rule
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- baseline security structure
- trust boundary principles
- validation-before-authority rule
- fail-closed handling expectations


# ============================================================
# CORE PRINCIPLE
# ============================================================

Security must preserve structural trust.

A system must not accept mutation, access, or authority
without explicit validation and boundary awareness.


# ============================================================
# TRUST BOUNDARY RULE
# ============================================================

Every authoritative system must preserve
its source-of-truth boundary.

Cross-system reference is allowed.

Cross-system authority seizure is prohibited
unless explicitly designed and approved.


# ============================================================
# VALIDATION RULE
# ============================================================

No payload, request, event, or mirrored state
should be treated as authoritative
without validation.

Validation may include:

- source verification
- schema verification
- contract verification
- access verification
- signature verification when applicable


# ============================================================
# FAIL-CLOSED RULE
# ============================================================

When correctness or trust cannot be established,
the system should prefer fail-closed behavior
over silent corruption or unsafe acceptance.


# ============================================================
# STRUCTURAL SECURITY RULE
# ============================================================

Security is not only access restriction.

Security also includes:

- source-of-truth protection
- boundary integrity
- non-corruption guarantees
- auditability
- controlled mutation paths


# ============================================================
# FINAL RULE
# ============================================================

Canonical security must preserve structural trust.

Validation before authority is required.
Fail-closed protection is preferred when trust is uncertain.



--------------------------------------------------------------------------------
FILE: 91.rules/050.security/0500041_SIGNATURE_STANDARD.md
--------------------------------------------------------------------------------

# ============================================================
# SIGNATURE STANDARD
# ============================================================

status: canonical
scope: security
component: signature-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical signature standard
for signed payloads and signed artifacts
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- when signatures are used
- what signatures are expected to protect
- what validation means in signed contexts
- what signed artifacts must not imply automatically


# ============================================================
# CORE PRINCIPLE
# ============================================================

A signature proves signed integrity
only within the assumptions of the signing model.

A signature does not automatically prove
business validity, policy validity, or runtime safety.


# ============================================================
# SIGNED ARTIFACT RULE
# ============================================================

Signed artifacts may include:

- signed snapshots
- signed manifests
- signed release payloads
- signed verification materials

The signed scope must be explicit.


# ============================================================
# VALIDATION RULE
# ============================================================

Signature-aware consumers must verify:

- expected signature presence when required
- expected signer or trust path when relevant
- payload integrity
- signature applicability to the artifact scope

A valid signature does not override
other required validation layers.


# ============================================================
# NON-IMPLICATION RULE
# ============================================================

A valid signature does not automatically mean:

- policy approval
- license validity
- access validity
- runtime safety
- current freshness

Those meanings require their own checks.


# ============================================================
# FINAL RULE
# ============================================================

A signature is an integrity and trust-path mechanism,
not a universal validity shortcut.

Signature verification must be explicit and scoped.



--------------------------------------------------------------------------------
FILE: 91.rules/050.security/0500042_KEY_ROTATION_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# KEY ROTATION RULE
# ============================================================

status: canonical
scope: security
component: key-rotation-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical key rotation expectations
for managed signing or verification keys
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- why key rotation is necessary
- what must remain stable during rotation
- what migration awareness is required
- how trust continuity should be preserved


# ============================================================
# CORE PRINCIPLE
# ============================================================

Key rotation must preserve trust continuity
without silently invalidating active systems.


# ============================================================
# ROTATION RULE
# ============================================================

Key rotation is allowed and expected
when required for security health.

Rotation must be explicit and controlled.

Implicit or undocumented key replacement is prohibited.


# ============================================================
# CONTINUITY RULE
# ============================================================

During rotation, the system should make clear:

- which key is current
- which prior key remains temporarily acceptable
- how verification behavior is affected
- when old trust paths expire


# ============================================================
# MIGRATION RULE
# ============================================================

Key rotation must consider:

- active signed artifacts
- verification consumers
- transition windows
- audit traceability

Rotation must not silently break verification behavior.


# ============================================================
# FINAL RULE
# ============================================================

Key rotation must be explicit,
traceable, and continuity-aware.

Security improvement must not create silent trust collapse.



--------------------------------------------------------------------------------
FILE: 91.rules/050.security/0500043_ACCESS_CONTROL_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# ACCESS CONTROL RULE
# ============================================================

status: canonical
scope: security
component: access-control-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical access control expectations
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- explicit access boundaries
- scope-aware authorization
- least-authority expectations
- revocation and invalidation awareness


# ============================================================
# CORE PRINCIPLE
# ============================================================

Access must be explicit.

No actor, system, or module
should gain authority through ambiguity,
convenience, or inherited assumption alone.


# ============================================================
# SCOPE RULE
# ============================================================

Access must be scoped.

Typical scope dimensions may include:

- system
- OS
- workspace
- module
- release unit
- license scope
- access grant scope

Authority without explicit scope is structurally unsafe.


# ============================================================
# LEAST-AUTHORITY RULE
# ============================================================

A system should grant only
the minimum authority required
for the intended action.

Broader-than-needed access is discouraged.


# ============================================================
# REVOCATION RULE
# ============================================================

Revoked, expired, or invalidated access
must not remain silently usable.

Dependent use paths should be disabled
when authoritative access state becomes invalid.


# ============================================================
# CROSS-SYSTEM RULE
# ============================================================

When access state is mirrored across systems:

- the source-of-truth remains explicit
- mirrored access must not become false authority
- invalid mirrored state must not override authoritative revocation


# ============================================================
# FINAL RULE
# ============================================================

Access must be explicit, scoped, minimal, and revocable.

Authority through ambiguity is prohibited.



--------------------------------------------------------------------------------
FILE: 91.rules/060.data/0600010_EXTERNAL_OS_PERSONA_SYNC_DATA_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# EXTERNAL OS PERSONA SYNC DATA RULE
# Civilization System Canonical Standard
# ============================================================

status: canonical
scope: cross-os
layer: 060.data

owner: Boss
prepared_by: Zero

purpose:
Define the minimum sync-side reference data required
for any external OS that consumes PersonaOS.

required_refs:
- <OS>_PERSONA_ACCESS_REF
- <OS>_PERSONA_LICENSE_REF
- <OS>_PERSONA_RELEASE_REF
- <OS>_PERSONA_USAGE_BINDING
- <OS>_PERSONA_GROWTH_REF
- <OS>_PERSONA_TRUST_REF
- <OS>_EVENT_OUTBOX
- <OS>_SYNC_EVENT_INBOX

trust_rule:
permission and trust are separate

permission:
Whether Persona may be used at all.

trust:
How strongly Persona may be exposed or relied upon
inside the external OS context.



--------------------------------------------------------------------------------
FILE: 91.rules/060.data/0600050_DATABASE_SCHEMA_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# DATABASE SCHEMA RULE
# ============================================================

status: canonical
scope: data
component: database-schema-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical database schema expectations
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- schema clarity expectations
- source-of-truth boundary preservation
- structural naming consistency
- schema stability principles


# ============================================================
# CORE PRINCIPLE
# ============================================================

Database schema is part of structural truth.

Schema must not become an accidental mixture
of unrelated ownership, unstable naming,
or convenience-driven cross-boundary mutation.


# ============================================================
# SCHEMA BOUNDARY RULE
# ============================================================

Schemas should preserve source-of-truth boundaries.

A schema must not silently absorb
unrelated domain ownership
for short-term convenience.

Mirrored state may exist,
but mirrored state must not be confused
with authoritative ownership.


# ============================================================
# STRUCTURE RULE
# ============================================================

Database schemas should be:

- explicit
- attributable
- stable
- boundary-aware
- reviewable

Table meaning, ownership meaning,
and mutation meaning should remain clear.


# ============================================================
# NAMING RULE
# ============================================================

Schema naming should remain structurally meaningful.

Table, field, and schema naming should avoid:

- temporary wording
- UI-only meaning
- overloaded ambiguity
- misleading reuse of old names


# ============================================================
# CHANGE RULE
# ============================================================

Schema change must be deliberate.

Structural schema changes include:

- ownership move
- boundary split or merge
- primary meaning change
- identifier meaning change
- mirrored/authoritative role change

Such changes require explicit migration awareness.


# ============================================================
# FINAL RULE
# ============================================================

Database schema must preserve structural truth.

Storage convenience must not override
boundary clarity, ownership clarity,
or stable naming meaning.



--------------------------------------------------------------------------------
FILE: 91.rules/060.data/0600051_AUDIT_LOG_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# AUDIT LOG RULE
# ============================================================

status: canonical
scope: data
component: audit-log-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical audit log expectations
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- what should be auditable
- what minimal audit meaning should exist
- how structural traceability should be preserved
- what audit should not be mistaken for


# ============================================================
# CORE PRINCIPLE
# ============================================================

Audit exists to preserve traceability,
not merely to collect noise.

An audit log should help answer:

- what changed
- who or what caused it
- where it happened
- when it happened
- what result occurred


# ============================================================
# AUDITABLE CHANGE RULE
# ============================================================

The following should be auditable
when structurally relevant:

- source-of-truth mutation
- rights state change
- access state change
- boundary-sensitive sync event handling
- structural operational action
- security-sensitive validation result


# ============================================================
# MINIMUM AUDIT RULE
# ============================================================

Audit records should preserve
at least meaningful traceability for:

- actor or source
- action type
- scope or target
- time
- outcome

Additional fields may exist,
but traceability meaning must remain explicit.


# ============================================================
# NON-SUBSTITUTION RULE
# ============================================================

Audit does not replace source-of-truth data.

Audit records may describe a change,
but they do not become
the canonical domain state itself.


# ============================================================
# INTEGRITY RULE
# ============================================================

Audit logs should not be silently discarded,
rewritten, or structurally obscured
without explicit archival or retention handling.


# ============================================================
# FINAL RULE
# ============================================================

Audit must preserve structural traceability.

Audit is not noise collection.
Audit is change accountability.



--------------------------------------------------------------------------------
FILE: 91.rules/060.data/0600052_DATA_RETENTION_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# DATA RETENTION RULE
# ============================================================

status: canonical
scope: data
component: data-retention-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical retention expectations
for data and retained artifacts
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- why retention matters
- how active, archived, and temporary data differ
- how retention should preserve structural meaning
- how cleanup should avoid silent loss of important history


# ============================================================
# CORE PRINCIPLE
# ============================================================

Retention must preserve structural meaning.

Not all data must remain active,
but important history must not be silently erased.


# ============================================================
# DATA CLASS RULE
# ============================================================

Retention handling should distinguish between:

## Active canonical data
Current authoritative material still in active use.

## Archived historical data
Retained history that is no longer active,
but still useful for traceability, rollback awareness,
or historical reference.

## Temporary support material
Generated lists, dumps, helper outputs,
migration notes, or review artifacts
that may be safely discarded when no longer needed.


# ============================================================
# ARCHIVE RULE
# ============================================================

Archive preserves history,
not active authority.

Archived material may remain useful,
but active canonical meaning must stay explicit.


# ============================================================
# CLEANUP RULE
# ============================================================

Cleanup is allowed for temporary support material.

Examples include:

- active file lists
- temporary full dumps
- transient migration helpers
- temporary generated inspection outputs

Cleanup must not silently remove
active canonical rules or required historical traceability.


# ============================================================
# RETENTION DECISION RULE
# ============================================================

Before deletion, retention handling should consider:

- is this authoritative
- is this archival history
- is this only temporary support material
- would deletion erase structural traceability
- would archive be more appropriate than delete


# ============================================================
# FINAL RULE
# ============================================================

Retention must preserve structural meaning.

Archive what preserves history.
Delete what is truly temporary.
Do not erase authoritative or historically meaningful material casually.



--------------------------------------------------------------------------------
FILE: 91.rules/070.development/0700060_TERMUX_SCRIPT_STANDARD.md
--------------------------------------------------------------------------------

# ============================================================
# TERMUX SCRIPT STANDARD
# ============================================================

status: canonical
scope: development
component: termux-script-standard

owner: Boss
prepared_by: Zero


# PURPOSE

Define standards for Termux-compatible scripts.


# RULES

Scripts must be copy-paste executable.
Absolute paths are preferred where needed.
One-block generation is allowed and encouraged.


# FINAL RULE

Termux scripts must be safe and reproducible.




--------------------------------------------------------------------------------
FILE: 91.rules/070.development/0700061_GIT_BRANCH_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# GIT BRANCH RULE
# ============================================================

status: canonical
scope: development
component: git-branch-rule

owner: Boss
prepared_by: Zero


# PURPOSE

Define branch naming rules.


# RULES

Branch names must be structured and readable.
Phase naming may be used.
Ambiguous branch names are prohibited.


# FINAL RULE

Branch names must support traceable development.




--------------------------------------------------------------------------------
FILE: 91.rules/070.development/0700062_COMMIT_MESSAGE_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# COMMIT MESSAGE RULE
# ============================================================

status: canonical
scope: development
component: commit-message-rule

owner: Boss
prepared_by: Zero


# PURPOSE

Define commit message standards.


# RULES

Commit messages must describe intent clearly.
Messages should reflect structural change.
Ambiguous one-word commits are discouraged.


# FINAL RULE

Commit history must remain readable and auditable.




--------------------------------------------------------------------------------
FILE: 91.rules/070.development/0700063_DATABASE_CONNECTION_STANDARD.md
--------------------------------------------------------------------------------

# ============================================================
# DATABASE CONNECTION STANDARD
# ============================================================

status: canonical
scope: development
component: database-connection-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical database connection standard
used in the Civilization System development workflow.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- approved database connection methods
- environment variable usage
- prohibited connection styles
- scope separation between database groups


# ============================================================
# CORE PRINCIPLE
# ============================================================

Database connection must be explicit,
environment-driven, and reproducible.

Manual ad hoc credential assembly is prohibited.


# ============================================================
# DATABASE GROUP RULE
# ============================================================

Two database groups exist.

## ERP-side database group
Environment variable:

DATABASE_URL

Typical scope:

- ERP
- Business
- Audit
- Analytics
- Governance

## Persona/Civilization-side database group
Environment variable:

PERSONA_DATABASE_URL

Typical scope:

- PersonaOS
- CivilizationOS
- Life
- Streaming
- Game
- Social
- Learning


# ============================================================
# ENVIRONMENT VARIABLE RULE
# ============================================================

Only environment URL variables are allowed
for canonical database connection handling.

Approved examples:

- DATABASE_URL
- PERSONA_DATABASE_URL

Direct host/user/password assembly
inside scripts is prohibited.


# ============================================================
# FORBIDDEN RULE
# ============================================================

The following are prohibited
as canonical connection style:

- PGHOST-based manual connection composition
- PGUSER-based manual connection composition
- ad hoc direct credential embedding in scripts
- undocumented manual connection configuration


# ============================================================
# STRUCTURAL RULE
# ============================================================

Database connection selection must reflect
the structural ownership of the target system.

A script must not silently connect
to the wrong database group.


# ============================================================
# FINAL RULE
# ============================================================

Canonical database connections must use
approved environment URL variables only.

Connection handling must be explicit,
stable, and environment-driven.



--------------------------------------------------------------------------------
FILE: 91.rules/070.development/0700064_SQL_EXECUTION_STANDARD.md
--------------------------------------------------------------------------------

# ============================================================
# SQL EXECUTION STANDARD
# ============================================================

status: canonical
scope: development
component: sql-execution-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical SQL execution standard
for direct CLI execution in the Civilization System workflow.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- approved SQL execution style
- required one-block execution pattern
- non-interactive execution requirement
- explicit environment-bound execution


# ============================================================
# CORE PRINCIPLE
# ============================================================

SQL execution must be explicit,
copy-paste runnable,
and deterministic.

Interactive ambiguity is discouraged
for canonical operational scripts.


# ============================================================
# ERP-SIDE EXECUTION RULE
# ============================================================

ERP-side SQL execution must use:

psql "$DATABASE_URL" <<'SQL'
...
SQL


# ============================================================
# PERSONA/CIVILIZATION-SIDE EXECUTION RULE
# ============================================================

Persona/Civilization-side SQL execution must use:

psql "$PERSONA_DATABASE_URL" <<'SQL'
...
SQL


# ============================================================
# REQUIRED STYLE RULE
# ============================================================

Canonical SQL execution must be:

- single execution block
- environment-bound
- non-interactive
- reviewable before execution
- deterministic in target selection


# ============================================================
# FORBIDDEN STYLE RULE
# ============================================================

The following are discouraged or prohibited
for canonical workflow use:

- interactive ad hoc SQL sessions as primary standard
- hidden target database selection
- split execution where target context becomes ambiguous
- direct credential embedding inside SQL execution blocks


# ============================================================
# TERMUX RULE
# ============================================================

When SQL is intended for Termux execution,
it should be provided in directly executable form
with explicit target environment variable usage.


# ============================================================
# FINAL RULE
# ============================================================

Canonical SQL execution must use
a single explicit psql block
bound to the correct environment URL variable.



--------------------------------------------------------------------------------
FILE: 91.rules/070.development/0700065_SUPABASE_CONNECTION_STANDARD.md
--------------------------------------------------------------------------------

# ============================================================
# SUPABASE CONNECTION STANDARD
# ============================================================

status: canonical
scope: development
component: supabase-connection-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical Supabase connection standard
for the Civilization System workflow.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- approved Supabase connection mode
- prohibited connection mode
- structural expectations for connection routing


# ============================================================
# CORE PRINCIPLE
# ============================================================

Supabase connection handling must prefer
stable, operationally safe connection routing
over ad hoc direct database access.


# ============================================================
# APPROVED CONNECTION RULE
# ============================================================

The canonical connection method is:

Transaction Pooler

Example pattern:

aws-1-ap-south-1.pooler.supabase.com:6543


# ============================================================
# PROHIBITED CONNECTION RULE
# ============================================================

Direct database connection usage
is prohibited as canonical operational standard
when the approved pooler route exists.


# ============================================================
# STRUCTURAL RULE
# ============================================================

Connection routing must remain consistent
with the approved environment-variable-based workflow.

Connection mode must not silently vary
between scripts without explicit reason.


# ============================================================
# FINAL RULE
# ============================================================

Canonical Supabase connection handling
must use the approved Transaction Pooler route.

Direct database connection is not the standard
for active operational workflow.



--------------------------------------------------------------------------------
FILE: 91.rules/070.development/0700066_CODING_COMMENT_STANDARD.md
--------------------------------------------------------------------------------

# ============================================================
# CODING COMMENT STANDARD
# ============================================================

status: canonical
scope: development
component: coding-comment-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical expectations
for source code comments
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- what comments should explain
- what comments should avoid
- how comments should support maintenance
- how comments should remain useful in production-facing systems


# ============================================================
# CORE PRINCIPLE
# ============================================================

Comments should explain meaning,
intent, safety, and operational risk.

Comments should not merely repeat the code.


# ============================================================
# REQUIRED COMMENT CASES
# ============================================================

Comments should be added when the code includes:

- structural boundary logic
- security-sensitive validation
- source-of-truth protection
- retry / DEAD / fail-closed behavior
- unusual constraints
- non-obvious implementation reason
- migration or compatibility handling


# ============================================================
# GOOD COMMENT RULE
# ============================================================

A good comment explains:

- why this logic exists
- what risk it prevents
- what boundary it protects
- what condition causes special handling
- what would break if it were removed


# ============================================================
# BAD COMMENT RULE
# ============================================================

Avoid comments that only restate the code.

Bad examples:

- increment counter
- call function
- set variable

These comments add noise without meaning.


# ============================================================
# MAINTENANCE RULE
# ============================================================

Comments should help a future maintainer understand:

- the structural intent
- the operational consequence
- the reason for validation or rejection
- the meaning of retry or terminal failure


# ============================================================
# PRODUCTION RULE
# ============================================================

Comments in production-facing systems
should support safe maintenance and incident understanding.

Comments should remain clear even when read
during debugging, incident review, or hotfix work.


# ============================================================
# LANGUAGE RULE
# ============================================================

Comments should be short, explicit, and unambiguous.

Prefer meaning over decoration.
Prefer structural explanation over narrative wording.


# ============================================================
# FINAL RULE
# ============================================================

Comments must explain intent, risk, boundary, or reason.

Do not comment what is obvious.
Comment what protects correctness.



--------------------------------------------------------------------------------
FILE: 91.rules/070.development/0700067_SQL_NAMING_STANDARD.md
--------------------------------------------------------------------------------

# ============================================================
# SQL NAMING STANDARD
# ============================================================

status: canonical
scope: development
component: sql-naming-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical naming rules
for SQL-facing objects
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- table naming
- column naming
- SQL function naming
- RPC naming
- readability and stability expectations


# ============================================================
# CORE PRINCIPLE
# ============================================================

SQL names must be:

- explicit
- structurally meaningful
- stable after publication
- easy to read in operations and debugging

Avoid decorative or ambiguous naming.


# ============================================================
# TABLE RULE
# ============================================================

Tables must use:

snake_case

Examples:

persona_state
event_outbox
apply_run_log
growth_events
persona_access_grant
business_workspace_member


# ============================================================
# COLUMN RULE
# ============================================================

Columns must use:

snake_case

Examples:

event_id
schema_hash
dispatch_attempts
created_at
updated_at
grant_state
retry_count


# ============================================================
# FUNCTION RULE
# ============================================================

SQL functions should use:

verb_object

Examples:

claim_event_batch
mark_event_done
mark_retry
apply_event_engine
refresh_access_state


# ============================================================
# RPC RULE
# ============================================================

RPC-facing names should use:

schema.function

Examples:

personaos.apply_event
business.claim_event_batch
civilization.sync_consume_event

Schema and function meaning must remain explicit.


# ============================================================
# NAMING STABILITY RULE
# ============================================================

Published SQL names should remain stable.

Rename only when:

- the old name became structurally misleading
- domain meaning changed
- the boundary or role changed significantly


# ============================================================
# AVOIDANCE RULE
# ============================================================

Avoid:

- vague abbreviations
- UI-oriented wording
- temporary names
- overloaded generic names
- names whose meaning depends on hidden context


# ============================================================
# FINAL RULE
# ============================================================

SQL-facing names must be explicit,
snake_case where applicable,
and stable enough for operational use,
debugging, and long-term maintenance.



--------------------------------------------------------------------------------
FILE: 91.rules/070.development/0700068_EDGE_FUNCTION_NAMING_STANDARD.md
--------------------------------------------------------------------------------

# ============================================================
# EDGE FUNCTION NAMING STANDARD
# ============================================================

status: canonical
scope: development
component: edge-function-naming-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical naming rules
for Edge Functions
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- naming format for Edge Functions
- readability expectations
- domain/action separation
- stability and clarity rules


# ============================================================
# CORE PRINCIPLE
# ============================================================

An Edge Function name should reveal:

- which domain it belongs to
- what action it performs

The name should be operationally readable
without opening the implementation.


# ============================================================
# FORMAT RULE
# ============================================================

Edge Functions should use:

domain-action

Examples:

persona-apply
event-dispatcher
audit-notify
ai-summary
license-sync
growth-ingest


# ============================================================
# CASE RULE
# ============================================================

Edge Function names should use:

- lowercase letters
- hyphen-separated words

Underscore and mixed-case naming
should be avoided for canonical function names.


# ============================================================
# DOMAIN RULE
# ============================================================

The domain part should identify
the primary ownership or operating context.

Examples:

- persona
- business
- civilization
- audit
- event
- sync


# ============================================================
# ACTION RULE
# ============================================================

The action part should identify
what the function does structurally.

Examples:

- apply
- dispatch
- notify
- consume
- sync
- verify
- ingest

Prefer explicit action names
over vague words like do, run, or process.


# ============================================================
# STABILITY RULE
# ============================================================

Published Edge Function names
should remain stable unless:

- domain ownership changed
- action meaning changed
- the old name became structurally misleading


# ============================================================
# FINAL RULE
# ============================================================

Canonical Edge Function names must use:

domain-action

Names must be readable, stable,
and operationally meaningful.



--------------------------------------------------------------------------------
FILE: 91.rules/070.development/0700069_LOGGING_AND_ERROR_HANDLING_STANDARD.md
--------------------------------------------------------------------------------

# ============================================================
# LOGGING AND ERROR HANDLING STANDARD
# ============================================================

status: canonical
scope: development
component: logging-and-error-handling-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical expectations
for runtime logs, error handling,
and production-grade error messages
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- logging structure
- runtime result states
- error message clarity
- retry and terminal failure handling
- production-safe message rules


# ============================================================
# CORE PRINCIPLE
# ============================================================

Logs and error messages must help operators,
developers, and maintainers understand
what happened, where it happened,
and what should happen next.

Silent failure is prohibited.


# ============================================================
# LOG FORMAT RULE
# ============================================================

System logs should use structured JSON
when emitted by runtime systems.

Typical fields may include:

- stage
- system
- component
- operation
- event_id
- run_id
- result
- reason_code
- retryable
- latency_ms
- timestamp


# ============================================================
# RESULT STATE RULE
# ============================================================

Three standard result states exist:

- SUCCESS
- RETRY
- DEAD

Definitions:

## SUCCESS
The operation completed correctly.

## RETRY
The operation failed in a retryable way.
Attempt count should increase.

## DEAD
The failure is terminal.
The item must not continue as active processing work.


# ============================================================
# ERROR MESSAGE RULE
# ============================================================

An error message must be understandable
in production operations.

A good error message should reveal:

- what failed
- where it failed
- why it failed when known
- whether retry is allowed
- what boundary blocked progress

Messages should be actionable when possible.


# ============================================================
# HUMAN MESSAGE RULE
# ============================================================

Human-readable error messages should be:

- short
- explicit
- operationally useful
- non-ambiguous

Good examples:

- signature verification failed; event marked DEAD
- access grant expired; usage disabled
- sync payload schema invalid; retry rejected
- database target not configured; execution aborted

Bad examples:

- failed
- invalid data
- something went wrong
- error occurred


# ============================================================
# REASON CODE RULE
# ============================================================

Where possible, logs and errors should include
a stable reason code
separate from the human-readable message.

Examples:

- SIGNATURE_VERIFICATION_FAILED
- ACCESS_GRANT_EXPIRED
- SCHEMA_VALIDATION_FAILED
- DATABASE_TARGET_MISSING
- RETRY_LIMIT_EXCEEDED

Reason codes support filtering and automation.
Human messages support operators.


# ============================================================
# RETRY RULE
# ============================================================

Retryable failures must be explicit.

A RETRY case should clearly indicate:

- why the attempt failed
- whether retry is safe
- whether attempt count increased
- when the next retry is expected if known


# ============================================================
# DEAD RULE
# ============================================================

Terminal failures must be explicit.

A DEAD case should clearly indicate:

- why the item became terminal
- which validation or limit caused it
- that active processing should stop


# ============================================================
# FAIL-CLOSED RULE
# ============================================================

When correctness or trust cannot be established,
the system should fail closed.

Logs and messages should make that visible.

Example:

- unverifiable payload rejected; fail-closed path applied


# ============================================================
# SECRET SAFETY RULE
# ============================================================

Logs and error messages must not expose:

- credentials
- raw secrets
- private keys
- full connection strings
- unsafe personally sensitive raw payloads

Operational visibility must not create security leakage.


# ============================================================
# COMMENT AND LOG RELATION RULE
# ============================================================

Comments explain why the code behaves this way.
Logs explain what happened at runtime.

Comments and logs should reinforce each other,
not duplicate each other blindly.


# ============================================================
# FINAL RULE
# ============================================================

Logs must be structured.
Errors must be understandable in production.
Retry and DEAD must be explicit.
Silent failure is prohibited.



--------------------------------------------------------------------------------
FILE: 91.rules/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
--------------------------------------------------------------------------------

# ============================================================
# CIVILIZATION SYSTEM RULES INTEGRATED
# ============================================================

status: canonical-integrated
scope: 91.rules
owner: Boss
prepared_by: Zero

# ============================================================
# ROLE
# ============================================================

This file is the integrated review edition
of the active rules under 91.rules.

Canonical source-of-truth remains the split rule files.

This integrated file is for:

- review
- handoff
- audit reading
- full-system rule confirmation

It does not replace the split canonical files.

# ============================================================
# ORDER
# ============================================================

1. 910_CIVILIZATION_SYSTEM_DIRECTORY_STRUCTURE_RULE.md
2. 010.core
3. 020.architecture
4. 030.model
5. 040.event
6. 050.security
7. 060.data
8. 070.development



# FILE: 910_CIVILIZATION_SYSTEM_DIRECTORY_STRUCTURE_RULE.md

# ============================================================
# CIVILIZATION SYSTEM DIRECTORY STRUCTURE RULE
# ============================================================

status: canonical
system: civilization-system
scope: global
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical directory structure and
shared layer numbering rules for the entire
Civilization System.

This rule applies to:

- foundation
- all operating systems
- applications
- documentation
- common rules

The goal is to keep system boundaries clear,
maintain long-term scalability,
and prevent structural drift between OS layers.


# ============================================================
# ROOT STRUCTURE
# ============================================================

01.civilization-system

 ├ 00.foundation
 ├ 01.civilization-os
 ├ 02.persona-os
 ├ 03.business-os
 ├ 04.life-os
 ├ 05.game-os
 ├ 06.streaming-os
 ├ 07.applications
 ├ 90.docs
 └ 91.rules


# ============================================================
# ROOT DIRECTORY RULE
# ============================================================

The Civilization System root separates:

- common foundation
- platform operating systems
- applications
- documentation
- shared rules

Applications are not placed inside OS directories.

ERP is not part of Civilization System
and must remain a separate system.


# ============================================================
# SHARED OS LAYER NUMBERING RULE
# ============================================================

All operating systems in Civilization System
must use the following shared layer numbering rule
when a layer exists.

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
# SHARED OS LAYER RULE
# ============================================================

The numbering rule is common across all OS layers.

However:

- not every OS must contain every layer
- missing layers are allowed
- missing layers should remain as gaps
- layer numbers must not be reassigned to different meanings

This means:

If an OS does not need integration,
060.integration may be absent.

If an OS does not need society,
900.society may be absent.

But if the layer exists,
it must use the shared canonical number.


# ============================================================
# LAYER DEFINITIONS
# ============================================================

## 000.rules
Shared rules internal to the OS.

## 010.constitution
Core principles, boundaries, and non-negotiable rules.

## 020.architecture
High-level structural design and responsibility separation.

## 030.model
Canonical domain models and reference models.

## 040.runtime
Runtime behavior, state transitions, and processing behavior.

## 050.flow
Business flows, lifecycle flows, and cross-step domain flows.

## 060.integration
Cross-system integration and synchronization structure.

## 070.operations
Operational procedures and operational state handling.

## 080.policy
Control rules, usage rules, and boundary policies.

## 090.interface
User-facing, admin-facing, or system-facing interface definitions.

## 100.security
Security constraints, access protection, audit integrity, and threat controls.

## 110.infrastructure
Runtime platform, storage, logging, integration channel, and operational infrastructure.

## 120.implementation
Implementation-oriented specifications and implementation supplements.

## 130.development
Roadmaps, dependency maps, implementation order, development planning.

## 900.society
Society-layer documents, where applicable.

## 910.civilization
Civilization-facing documents, where applicable.

## 920.meta
Meta-level management, changelog, dependency map, document map, and system metadata.

## 999.archive
Archived folders, retired structures, and preserved migration history.


# ============================================================
# ROOT FILE RULE
# ============================================================

Root directories should contain directories first.

Root-level files are allowed only when they are
canonical system-level documents or intentionally retained full compilations.

Examples of allowed root-level files:

- canonical top-level structure specification
- system-wide overview
- intentionally retained full compiled books

Operational helper files should not remain
scattered at the root long-term.


# ============================================================
# FILE PLACEMENT RULE
# ============================================================

The following files should be placed under docs or rules areas,
not loosely scattered at OS root unless temporarily required:

- active file lists
- root file indexes
- restructure reports
- renumber maps
- temporary migration notes

Compiled full files may be kept separately
when they are intentionally used as review artifacts.


# ============================================================
# FOUNDATION RULE
# ============================================================

00.foundation contains shared principles for the whole system.

Typical contents include:

- constitution-level common thought
- design standards
- safety rules
- structure rules
- cross-system principles


# ============================================================
# OS ROLE RULE
# ============================================================

Each OS provides platform capabilities.

Operating systems define:

- structure
- models
- runtime rules
- flows
- policies
- interfaces
- security
- operations
- development support

Applications are built on top of OS capabilities.


# ============================================================
# 01 CIVILIZATION OS
# ============================================================

CivilizationOS is the world and simulation layer.

Typical responsibilities:

- nation
- government
- law
- economy
- war
- population
- religion
- technology
- history

CivilizationOS is primarily a world-rule OS.

Implementation and development may exist,
but they are not the leading identity of the system.


# ============================================================
# 02 PERSONA OS
# ============================================================

PersonaOS is the artificial persona and external rights layer.

Typical responsibilities:

- identity
- memory
- emotion
- cognition
- behavior
- relationship
- growth
- snapshot
- release
- license
- access grant
- external rights

PersonaOS is the source of truth for persona-derived rights state.


# ============================================================
# 03 BUSINESS OS
# ============================================================

BusinessOS is a small-scale business tools platform.

BusinessOS is not ERP.

ERP remains outside Civilization System.

Typical responsibilities:

- task management
- project tracking
- notes
- mini CRM
- calendar utilities
- lightweight workspace applications

BusinessOS is a lightweight platform OS,
not a full enterprise core system.


# ============================================================
# 04 LIFE OS
# ============================================================

LifeOS is the life management platform.

Typical responsibilities:

- health
- sleep
- meal
- habit
- home
- daily life metrics


# ============================================================
# 05 GAME OS
# ============================================================

GameOS is the game and simulation support platform.

Typical responsibilities:

- player
- quest
- battle
- items
- score
- progression


# ============================================================
# 06 STREAMING OS
# ============================================================

StreamingOS is the streaming ecosystem platform.

Typical responsibilities:

- stream
- viewer
- chat
- donation
- fan communities
- creator-facing interaction


# ============================================================
# APPLICATION LAYER
# ============================================================

07.applications contains real applications.

Applications may use multiple OS capabilities.

Applications must not redefine OS-level shared rules
inside application directories.


# ============================================================
# DOCUMENTATION
# ============================================================

90.docs contains system-wide documentation.

Typical contents:

- architecture references
- design indexes
- model catalogs
- bible documents
- compiled review documents


# ============================================================
# SHARED RULES
# ============================================================

91.rules contains Civilization System-wide canonical rules.

Typical contents:

- naming rules
- numbering rules
- directory structure rules
- cross-OS structural rules
- file placement rules


# ============================================================
# ERP BOUNDARY
# ============================================================

ERP is not part of Civilization System.

ERP must remain a separate system.

Example:

~/02.erp-system


# ============================================================
# FINAL RULE
# ============================================================

All future OS additions inside Civilization System
must follow this shared numbering rule
and root structure rule.

If a layer is added in the future,
it must use the canonical number defined here.




# FILE: 010.core/0100000_SYSTEM_RULE_OVERVIEW.md

# ============================================================
# SYSTEM RULE OVERVIEW
# Civilization System Canonical Rule
# ============================================================

status: canonical
scope: global
component: system-rule-overview

owner: Boss
prepared_by: Zero


# PURPOSE

Define the canonical rule framework
for the entire Civilization System.


# RULE DOMAINS

core
architecture
model
event
security
data
development


# FINAL RULE

All canonical documents, models, runtimes,
and implementations must comply with
this rule framework.





# FILE: 010.core/0100001_DESIGN_DOCUMENT_STANDARD.md

# ============================================================
# DESIGN DOCUMENT STANDARD
# ============================================================

status: canonical
scope: global
component: design-document-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical standard
for design documents across the Civilization System.

This standard applies to:

- foundation documents
- OS-layer design documents
- shared rules
- application-facing design documents
- canonical supporting specifications


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- what a canonical design document is
- how canonical design documents should be structured
- how naming rules apply to design documents
- how directory rules apply to design documents

Detailed naming and numbering rules are defined in:

- 010.core/02_FILE_NAMING_STANDARD.md
- 030.model/20_MODEL_NUMBERING_STANDARD.md
- 010.core/03_DIRECTORY_STRUCTURE_STANDARD.md


# ============================================================
# CANONICAL DESIGN DOCUMENT RULE
# ============================================================

A canonical design document is a document
that acts as an official source of truth
for a specific scope.

Canonical documents must be:

- explicit
- deterministic
- reviewable
- stable after publication
- structurally consistent with system rules


# ============================================================
# DOCUMENT SCOPE RULE
# ============================================================

Each canonical design document must have
a clearly defined scope.

Typical scope examples:

- system-wide
- OS-wide
- layer-wide
- component-wide
- domain-wide
- interface-wide
- policy-wide

The scope must not be ambiguous.


# ============================================================
# REQUIRED HEADER RULE
# ============================================================

Canonical design documents should include
a stable top section that defines:

- title
- status
- scope or layer
- component when applicable
- owner
- prepared_by

These fields help identify source-of-truth status
without external lookup.


# ============================================================
# STRUCTURE RULE
# ============================================================

Canonical design documents should be organized
using clear sections.

Typical sections include:

- PURPOSE
- RESPONSIBILITY
- RULE
- STRUCTURE
- FLOW
- FINAL RULE

Not every file must contain every section,
but the structure must remain explicit and readable.


# ============================================================
# NAMING RULE
# ============================================================

Canonical design documents must follow
the shared naming standards.

There are two major classes:

## Non-model files
Non-model files follow:

FFFNNNN_LOGICAL_NAME.md

As defined in:

010.core/02_FILE_NAMING_STANDARD.md

## Model files
Model files follow:

SSOOFFFPPPQQQ...NNNNNN_LOGICAL_NAME.md

As defined in:

030.model/20_MODEL_NUMBERING_STANDARD.md


# ============================================================
# DIRECTORY RULE
# ============================================================

Canonical design documents must be placed
under the correct canonical layer directory.

Examples:

- 010.constitution
- 020.architecture
- 030.model
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 090.interface
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development
- 900.society
- 910.civilization
- 920.meta

A document must not be placed in a layer
whose meaning does not match the document content.


# ============================================================
# ROOT FILE RULE
# ============================================================

Root-level files should be minimized.

Only root-level canonical documents with
clear top-level purpose should remain at root.

Examples of valid root-level files:

- root index files
- top-level structure rules
- explicitly retained top-level canonical documents

Temporary helper files, dumps, lists,
and migration artifacts should not remain
loosely at root long-term.


# ============================================================
# CANONICAL STATUS RULE
# ============================================================

A canonical document is an official source of truth.

If multiple related documents exist,
their relationship must be clear.

Examples:

- top-level system rule
- operational standard
- detailed subsystem rule

The canonical role of each file must not be ambiguous.


# ============================================================
# STABILITY RULE
# ============================================================

Canonical design documents should not be renamed,
moved, or structurally changed casually.

Structural change requires:

- clear reason
- consistency with current rules
- migration awareness
- preservation of archival history when needed


# ============================================================
# FINAL RULE
# ============================================================

All canonical design documents across the Civilization System
must be:

- structurally explicit
- correctly placed
- correctly named
- stable after publication
- consistent with the shared directory,
  naming, and numbering standards




# FILE: 010.core/0100002_FILE_NAMING_STANDARD.md

# ============================================================
# FILE NAMING STANDARD
# ============================================================

status: canonical
scope: global
component: file-naming-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical naming rules for files
across the Civilization System.


# ============================================================
# CORE PRINCIPLES
# ============================================================

File names must be:

- deterministic
- sortable
- unique within scope
- stable after publication
- human-readable after the numeric prefix


# ============================================================
# FILE CLASS RULE
# ============================================================

There are two naming classes:

1. model files
2. non-model files

Model files use a dedicated naming rule.

Non-model files use the general naming rule below.


# ============================================================
# NON-MODEL FILE RULE
# ============================================================

Non-model canonical files must use:

FFFNNNN_LOGICAL_NAME.md

Where:

- FFF         = 3-digit folder number
- NNNN        = 4-digit serial number inside the folder
- LOGICAL_NAME = uppercase logical name using underscores

Examples:

0100001_CIVILIZATION_OVERVIEW.md
0200001_SYSTEM_ARCHITECTURE.md
0400001_RUNTIME_OVERVIEW.md
0500001_ECONOMY_FLOW.md
0700001_RELEASE_OPERATION.md
0800001_PERSONA_USAGE_POLICY.md
0900001_BUSINESS_PERSONA_BINDING_INTERFACE.md
1200001_PERSONA_LICENSE_SPEC.md
1300001_PERSONA_EXTERNAL_RIGHTS_ROADMAP.md


# ============================================================
# MODEL FILE RULE
# ============================================================

Model files do not use the non-model rule above.

Model files must follow the dedicated model rule defined in:

030.model/20_MODEL_NUMBERING_STANDARD.md


# ============================================================
# EXTENSION RULE
# ============================================================

Canonical design documents use:

.md

Other extensions may be used only when
explicitly allowed by system rules.


# ============================================================
# FINAL RULE
# ============================================================

All non-model canonical files must follow:

FFFNNNN_LOGICAL_NAME.md

All model files must follow
the dedicated model numbering standard.




# FILE: 010.core/0100003_DIRECTORY_STRUCTURE_STANDARD.md

# ============================================================
# DIRECTORY STRUCTURE STANDARD
# ============================================================

status: canonical
scope: global
component: directory-structure-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical directory structure standard
for the Civilization System and its operating systems.

This standard is the operational directory standard
used under the higher-level rule:

910_CIVILIZATION_SYSTEM_DIRECTORY_STRUCTURE_RULE.md


# ============================================================
# CIVILIZATION SYSTEM ROOT STRUCTURE
# ============================================================

01.civilization-system

 ├ 00.foundation
 ├ 01.civilization-os
 ├ 02.persona-os
 ├ 03.business-os
 ├ 04.life-os
 ├ 05.game-os
 ├ 06.streaming-os
 ├ 07.applications
 ├ 90.docs
 └ 91.rules


# ============================================================
# ROOT STRUCTURE RULE
# ============================================================

The Civilization System root separates:

- shared foundation
- platform operating systems
- applications
- system-wide documentation
- shared canonical rules

Applications must not be placed inside OS directories.

ERP is not part of Civilization System
and must remain a separate system.


# ============================================================
# SHARED OS LAYER STRUCTURE
# ============================================================

Each OS may contain only the layers it actually needs.

When a layer exists, it must use the canonical number below.

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
# LAYER PRESENCE RULE
# ============================================================

Not all OS directories must contain all layers.

Missing layers are allowed.

However:

- existing layer numbers must keep their canonical meaning
- numbers must not be reassigned to other meanings
- structural gaps are valid


# ============================================================
# ROOT FILE RULE
# ============================================================

OS roots should primarily contain directories.

Root-level files are allowed only when they are:

- canonical root indexes
- top-level structure rules
- intentionally retained root-level canonical documents

Operational helper files should not remain
scattered at OS root long-term.


# ============================================================
# FILE PLACEMENT RULE
# ============================================================

The following file types should not remain
loosely at OS root long-term:

- active file lists
- temporary dumps
- restructure reports
- renumber maps
- temporary migration notes

These should be archived or managed separately.


# ============================================================
# FOUNDATION RULE
# ============================================================

00.foundation contains cross-system foundational rules.

Typical contents include:

- common design principles
- safety rules
- structure rules
- canonical standards
- cross-system philosophy


# ============================================================
# OS ROLE RULE
# ============================================================

Each OS provides platform capabilities.

Typical OS responsibilities include:

- constitution
- architecture
- models
- runtime behavior
- flows
- integration
- operations
- policies
- interfaces
- security
- infrastructure
- implementation specifications
- development planning


# ============================================================
# APPLICATION RULE
# ============================================================

07.applications contains real user-facing applications.

Applications may consume multiple OS capabilities.

Applications must not redefine shared OS rules.


# ============================================================
# DOCUMENTATION RULE
# ============================================================

90.docs contains system-wide documentation.

Typical contents include:

- architecture references
- design indexes
- model catalogs
- bible documents
- compiled review materials


# ============================================================
# SHARED RULES RULE
# ============================================================

91.rules contains Civilization System-wide canonical rules.

Typical contents include:

- naming standards
- numbering standards
- directory standards
- cross-OS structure rules
- data rules
- event rules
- security rules
- development rules


# ============================================================
# FINAL RULE
# ============================================================

Directory structure must remain stable across the Civilization System.

All future OS additions must follow
the shared canonical layer numbering rule
and the shared root structure rule.




# FILE: 010.core/0100004_LAYER_ARCHITECTURE_RULE.md

# ============================================================
# LAYER ARCHITECTURE RULE
# ============================================================

status: canonical
scope: global
component: layer-architecture-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical layer architecture rule
for operating systems inside the Civilization System.

This rule defines:

- canonical layer meanings
- layer separation principles
- placement boundaries between layers
- stability of shared layer numbering


# ============================================================
# SHARED LAYER NUMBERING
# ============================================================

Operating systems inside the Civilization System
must use the following canonical layer numbering
when a layer exists.

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
# LAYER PRESENCE RULE
# ============================================================

Not every OS must contain every layer.

Missing layers are allowed.

However:

- if a layer exists, it must use the canonical number
- canonical layer numbers must not be reassigned
- structural gaps are valid


# ============================================================
# LAYER MEANING RULE
# ============================================================

## 000.rules
OS-internal shared rules.

## 010.constitution
Non-negotiable principles, hard boundaries, and core system identity.

## 020.architecture
High-level structure, major components, and responsibility separation.

## 030.model
Canonical data models, reference models, and structural domain entities.

## 040.runtime
Runtime behavior, state transitions, execution semantics, and processing behavior.

## 050.flow
Cross-step domain flow, lifecycle flow, and business process flow.

## 060.integration
Cross-system integration, synchronization, and interface between systems.

## 070.operations
Operational procedures, operational state handling, monitoring-facing procedures.

## 080.policy
Control rules, usage constraints, governance-like operational policies.

## 090.interface
User-facing, admin-facing, or system-facing interfaces and surfaces.

## 100.security
Security rules, access protection, audit integrity, and threat handling.

## 110.infrastructure
Storage, logging, runtime platform, integration channels, and operational foundations.

## 120.implementation
Implementation-oriented specifications, adapter details, and execution-facing design supplements.

## 130.development
Roadmaps, dependency plans, implementation ordering, and development planning.

## 900.society
Society-facing domain documents where applicable.

## 910.civilization
Civilization-facing domain documents where applicable.

## 920.meta
Meta-level maps, changelogs, dependency maps, and document management materials.

## 999.archive
Archived structures, retired layouts, and migration history.


# ============================================================
# PLACEMENT RULE
# ============================================================

A document must be placed in the layer
whose meaning best matches its actual role.

Examples:

- a hard principle belongs in constitution
- a structural split belongs in architecture
- a domain entity belongs in model
- a processing behavior belongs in runtime
- a cross-step business sequence belongs in flow
- a synchronization design belongs in integration
- an operational procedure belongs in operations
- a usage restriction belongs in policy
- an admin screen design belongs in interface
- a protection rule belongs in security
- a runtime platform requirement belongs in infrastructure
- an implementation detail spec belongs in implementation
- a roadmap belongs in development


# ============================================================
# LAYER MIXING RULE
# ============================================================

A document must not mix unrelated layer roles casually.

Examples of invalid mixing:

- policy and runtime logic merged into one document without separation
- model and interface combined without structural reason
- infrastructure and constitution mixed as one document

Cross-layer references are allowed.

Cross-layer content collapse is discouraged.


# ============================================================
# DEPENDENCY DIRECTION RULE
# ============================================================

Higher-level rules should remain structurally stable.

Typical direction is:

constitution
→ architecture
→ model / runtime / flow / integration
→ operations / policy / interface / security / infrastructure
→ implementation / development

Exact operational references may vary by system,
but reverse structural dependency should be avoided.


# ============================================================
# STABILITY RULE
# ============================================================

Layer meanings must remain stable across systems.

A number once assigned to a shared layer meaning
must not later be reused for another meaning.


# ============================================================
# FINAL RULE
# ============================================================

All operating systems inside the Civilization System
must preserve the canonical meaning of shared layers.

Documents must be placed according to role,
not convenience.




# FILE: 010.core/0100005_DEPENDENCY_RULE.md

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




# FILE: 010.core/0100006_VERSIONING_RULE.md

# ============================================================
# VERSIONING RULE
# ============================================================

status: canonical
scope: global
component: versioning-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical versioning rule
for design documents across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- when a document version is considered changed
- what kinds of change are major or minor
- how canonical stability should be preserved
- how versioning relates to structural migration


# ============================================================
# CORE PRINCIPLE
# ============================================================

Versioning exists to preserve structural trust.

A version should change when the meaning,
scope, boundary, or operational interpretation
of a document changes in a meaningful way.

Versioning should not be treated
as decorative bookkeeping.


# ============================================================
# CHANGE CLASS RULE
# ============================================================

Changes may be understood in the following classes.

## Structural change
A change to:

- scope
- layer role
- ownership meaning
- directory placement meaning
- naming rule meaning
- numbering rule meaning
- source-of-truth boundary

This is a major change.

## Behavioral change
A change to:

- runtime meaning
- flow interpretation
- policy effect
- operational handling
- integration behavior

This is usually a major or significant change.

## Editorial change
A change to:

- wording clarity
- formatting
- typo correction
- section readability

This is a minor change
unless structural meaning also changed.


# ============================================================
# CANONICAL DOCUMENT VERSION RULE
# ============================================================

Canonical documents must be treated as stable.

A canonical document should not be revised casually.

When canonical meaning changes,
the change must be explicit and reviewable.

If the change affects other documents,
migration awareness is required.


# ============================================================
# VERSIONING AND NAMING RULE
# ============================================================

Canonical filenames should remain stable.

Version should not normally be encoded
directly in the filename.

Structural identity belongs to the canonical filename.
Version belongs to change history and document management.


# ============================================================
# MIGRATION RULE
# ============================================================

When a structural migration happens,
the following should be clear:

- what changed
- why it changed
- what old structure was replaced
- what new structure became canonical
- whether archive preservation is required

Migration must not silently erase structural history.


# ============================================================
# CROSS-DOCUMENT IMPACT RULE
# ============================================================

A version-impacting change must consider
dependent documents.

Examples:

- directory structure rule changes may affect file naming and placement rules
- file naming rule changes may affect design document and model rules
- model numbering rule changes may affect model registries and references

Versioning must be evaluated
in system context, not document isolation.


# ============================================================
# FINAL RULE
# ============================================================

Versioning must reflect real structural meaning.

Editorial cleanup alone is minor.

Boundary, role, numbering, naming, and structural rule changes
must be treated as significant versioning events.




# FILE: 010.core/0100007_CANONICAL_STATUS_RULE.md

# ============================================================
# CANONICAL STATUS RULE
# ============================================================

status: canonical
scope: global
component: canonical-status-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical status rule
for documents across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- what canonical means
- how canonical differs from draft or support material
- how canonical files should be treated
- how competing documents are resolved


# ============================================================
# CANONICAL DEFINITION
# ============================================================

A canonical document is an official source of truth
for its defined scope.

Canonical status means:

- the document is authoritative in scope
- the document is expected to remain stable
- the document may be referenced by other rules or systems
- conflicting documents must defer to it


# ============================================================
# NON-CANONICAL MATERIAL RULE
# ============================================================

The following do not automatically become canonical:

- dumps
- active file lists
- temporary reports
- migration notes
- review artifacts
- compiled full books
- exploratory drafts

These may be useful,
but they are not authoritative by default.


# ============================================================
# COMPETING DOCUMENT RULE
# ============================================================

If multiple documents appear to govern the same scope,
their relationship must be resolved explicitly.

Possible resolutions include:

- one document becomes canonical
- one document becomes archived legacy
- one document becomes a derived operational summary
- one document becomes a reference-only support file

Canonical ambiguity is prohibited.


# ============================================================
# ROOT CANONICAL RULE
# ============================================================

Root-level canonical files should be minimal.

A root-level canonical file must have
clear top-level scope.

Examples:

- system-wide structure rule
- root index
- intentionally retained top-level canonical file

Root-level presence alone does not grant canonical authority.


# ============================================================
# ARCHIVE RULE
# ============================================================

Archived files are not canonical by default.

Archive preserves history.
It does not preserve authority.

A file moved to archive may still be useful,
but active rules must not silently defer to archived material.


# ============================================================
# DERIVED DOCUMENT RULE
# ============================================================

A derived document may summarize,
compile, or operationalize canonical material.

Examples:

- operational standards derived from higher-level system rules
- compiled review documents
- full dumps for inspection

Derived documents must not silently override canonical sources.


# ============================================================
# STATUS FIELD RULE
# ============================================================

Canonical files should clearly declare status.

Typical statuses may include:

- canonical
- draft
- generated
- working-summary
- archived

Status must reflect document role honestly.


# ============================================================
# FINAL RULE
# ============================================================

Canonical status means authoritative source of truth
within defined scope.

Archive, dump, summary, and derived files
must not be mistaken for canonical authority.




# FILE: 010.core/0100008_CHANGE_CONTROL_RULE.md

# ============================================================
# CHANGE CONTROL RULE
# ============================================================

status: canonical
scope: global
component: change-control-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical change control rule
for design documents across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- how canonical documents may be changed
- how structural changes should be evaluated
- how archival preservation should be handled
- how drift and silent rewrite should be prevented


# ============================================================
# CORE PRINCIPLE
# ============================================================

Canonical documents may evolve,
but change must be explicit, reviewable, and traceable.

Silent structural drift is prohibited.


# ============================================================
# CHANGE TYPES
# ============================================================

Typical change types include:

## Editorial change
- wording clarification
- typo correction
- formatting cleanup

## Structural refinement
- clearer sectioning
- clearer scope statement
- explicit rule separation

## Structural change
- renumbering
- layer reassignment
- naming rule change
- directory rule change
- source-of-truth reassignment
- boundary change

The more structural the change,
the stronger the control requirement.


# ============================================================
# REQUIRED CHANGE DISCIPLINE
# ============================================================

Before changing a canonical document,
the following should be understood:

- why the change is needed
- what rule or structure is being improved
- what downstream documents may be affected
- whether archive preservation is required
- whether migration notes are required


# ============================================================
# RENAME AND MOVE RULE
# ============================================================

Canonical files must not be renamed or moved casually.

Renaming or moving is allowed only when:

- the current structure is incorrect
- the target structure is explicitly more canonical
- dependent references can be updated
- archival history is preserved when needed


# ============================================================
# REPLACEMENT RULE
# ============================================================

When one document replaces another,
the outcome must be explicit.

Possible outcomes:

- replaced and archived
- replaced and deleted
- superseded by higher-level rule
- converted into derived operational material

Replacement without explicit disposition is discouraged.


# ============================================================
# BULK REFACTOR RULE
# ============================================================

Bulk structural changes are allowed
when system-wide consistency is being restored.

Examples:

- root renumbering
- layer unification
- file naming normalization
- archive cleanup

However, bulk refactors must still preserve:

- traceability
- backup or archive path
- explicit new canonical state


# ============================================================
# CONFLICT RULE
# ============================================================

When two files or structures compete,
conflict must be resolved deliberately.

Possible actions include:

- merge
- archive legacy
- keep one canonical and one derived
- rename conflict artifact explicitly

Unresolved ambiguity must not remain in active canonical space.


# ============================================================
# FINAL RULE
# ============================================================

Canonical change must be explicit,
traceable, and structurally justified.

Stability is the default.
Change requires reason.




# FILE: 020.architecture/0200010_ARCHITECTURE_LAYER_RULE.md

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




# FILE: 020.architecture/0200011_MODULE_BOUNDARY_RULE.md

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




# FILE: 020.architecture/0200012_SYSTEM_DEPENDENCY_RULE.md

# ============================================================
# SYSTEM DEPENDENCY RULE
# ============================================================

status: canonical
scope: architecture
component: system-dependency-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical inter-system dependency rules
inside the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- allowed cross-OS dependency
- cross-system ownership boundaries
- external system isolation
- source-of-truth preservation


# ============================================================
# CORE PRINCIPLE
# ============================================================

Systems may interact.
Systems must not collapse into one another.

Cross-system reference is allowed.
Cross-system ownership transfer is not implicit.


# ============================================================
# INTERNAL OS RULE
# ============================================================

The following operating systems exist
inside Civilization System.

- CivilizationOS
- PersonaOS
- BusinessOS
- LifeOS
- GameOS
- StreamingOS

Each OS may depend on another OS
only through explicit structural boundaries.


# ============================================================
# SOURCE OF TRUTH RULE
# ============================================================

Each system must preserve source-of-truth ownership.

Examples:

- PersonaOS owns persona identity and persona-derived rights truth
- CivilizationOS owns civilization-world truth
- BusinessOS owns business app and workspace truth

A consumer system may mirror state.
A consumer system must not become false authority.


# ============================================================
# ALLOWED DEPENDENCY EXAMPLES
# ============================================================

Examples of allowed dependency include:

- BusinessOS referencing PersonaOS release, license, or access state
- CivilizationOS referencing PersonaOS release or rights state
- PersonaOS receiving growth input from BusinessOS
- PersonaOS receiving growth input from CivilizationOS

These are allowed because
reference and request do not erase ownership.


# ============================================================
# PROHIBITED DEPENDENCY EXAMPLES
# ============================================================

Examples of prohibited dependency include:

- BusinessOS directly mutating PersonaOS source-of-truth records
- CivilizationOS directly mutating PersonaOS rights truth
- ERP directly mutating Civilization internal truth
- one OS silently redefining another OS boundary


# ============================================================
# ERP BOUNDARY RULE
# ============================================================

ERP is outside Civilization System.

ERP may integrate through explicit contracts,
but ERP is not part of the internal OS layer structure.

ERP must not directly mutate Civilization System internals
without explicit external integration design.


# ============================================================
# MIRROR RULE
# ============================================================

Mirrored state is allowed.

However:

- mirrored state is not source of truth
- mirrored state must remain attributable
- mirrored state must be refreshable or synchronizable
- invalid mirrored state must not override authoritative truth


# ============================================================
# FINAL RULE
# ============================================================

System dependency is allowed only through explicit boundaries.

Reference is allowed.
Ownership transfer is not implicit.
Source-of-truth must remain explicit across all systems.




# FILE: 020.architecture/0200013_RUNTIME_ISOLATION_RULE.md

# ============================================================
# RUNTIME ISOLATION RULE
# ============================================================

status: canonical
scope: architecture
component: runtime-isolation-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical runtime isolation principles
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- isolation between runtime units
- failure containment expectations
- corruption prevention boundaries
- fail-closed structural principles


# ============================================================
# CORE PRINCIPLE
# ============================================================

Runtime failures must remain isolated.

One runtime unit must not corrupt another unit's
source-of-truth, state meaning, or structural boundary.


# ============================================================
# ISOLATION RULE
# ============================================================

Runtime isolation means:

- one runtime unit may fail independently
- failure must remain attributable
- failure must not silently mutate unrelated runtime units
- boundary enforcement must continue under failure conditions


# ============================================================
# FAILURE CONTAINMENT RULE
# ============================================================

When runtime failure occurs,
containment is required.

Containment may include:

- rejecting invalid input
- halting unsafe mutation
- preserving prior authoritative state
- retrying through controlled mechanisms
- marking failure explicitly


# ============================================================
# CROSS-RUNTIME RULE
# ============================================================

Cross-runtime interaction is allowed
only through explicit contracts and bounded integration behavior.

Runtime coupling must not become
silent shared corruption risk.


# ============================================================
# FAIL-CLOSED RULE
# ============================================================

When runtime correctness cannot be established,
the system should prefer fail-closed behavior
over silent corruption.

Examples:

- deny invalid state transition
- reject unverifiable sync payload
- disable invalid mirrored usage
- stop unsafe mutation path


# ============================================================
# FINAL RULE
# ============================================================

Runtime isolation is mandatory.

Failure must be contained.
Boundary corruption is prohibited.
Fail-closed isolation is required when correctness is uncertain.




# FILE: 030.model/0300020_MODEL_NUMBERING_STANDARD.md

# ============================================================
# MODEL NUMBERING STANDARD
# ============================================================

status: canonical
layer: rules
component: model-numbering

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical naming and numbering rule
for model files across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines the detailed naming rule
used only for model files.

General non-model file naming is defined in:

010.core/02_FILE_NAMING_STANDARD.md


# ============================================================
# MODEL FILE NAMING RULE
# ============================================================

Model files must use:

SSOOFFFPPPQQQ...NNNNNN_LOGICAL_NAME.md

Where:

- SS          = 2-digit system number
- OO          = 2-digit OS number
- FFF         = 3-digit root folder number
- PPPQQQ...   = additional 3-digit subfolder numbers, if present
- NNNNNN      = 6-digit file serial number
- LOGICAL_NAME = uppercase logical name using underscores

This rule applies only to model files.


# ============================================================
# EXAMPLES
# ============================================================

Example 1:
01.civilization-system
01.civilization-os
030.model
040.persona
file number 000001

Result:

010103040000001_PERSONA_REF_MODEL.md


Example 2:
01.civilization-system
02.persona-os
030.model
120.external_rights
file number 000001

Result:

010203120000001_PERSONA_LICENSE.md


Example 3:
01.civilization-system
03.business-os
030.model
040.persona
file number 000001

Result:

010303040000001_BUSINESS_PERSONA_RELEASE_REF_MODEL.md


# ============================================================
# NUMBER COMPONENT RULE
# ============================================================

## System Number
System number identifies the parent system.

Current example:

- 01 = civilization-system

## OS Number
OS number identifies the OS inside the system.

Examples:

- 01 = civilization-os
- 02 = persona-os
- 03 = business-os
- 04 = life-os
- 05 = game-os
- 06 = streaming-os

## Root Folder Number
Root folder number identifies the canonical root layer.

For model files, the root folder is typically:

- 030 = model

## Subfolder Numbers
Each subfolder under model may contribute
an additional 3-digit number segment.

Example:

030.model / 120.external_rights

becomes:

030 + 120

## File Serial Number
Each model file must have a 6-digit serial number.

Examples:

- 000001
- 000002
- 000003

Serial numbers must be unique within
the final numbering scope.


# ============================================================
# PRINCIPLES
# ============================================================

Model file identifiers must be:

- unique
- deterministic
- sortable
- stable after publication
- structurally meaningful from the filename alone


# ============================================================
# SCOPE RULE
# ============================================================

The model filename must reveal:

- which system owns the model
- which OS owns the model
- which root layer owns the model
- which subdomain owns the model
- which file serial the model has


# ============================================================
# FINAL RULE
# ============================================================

All model files must follow:

SSOOFFFPPPQQQ...NNNNNN_LOGICAL_NAME.md

Non-model files must not use this rule.
They follow the general file naming standard instead.




# FILE: 030.model/0300021_MODEL_NAMING_STANDARD.md

# ============================================================
# MODEL NAMING STANDARD
# ============================================================

status: canonical
layer: rules
component: model-naming

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the logical naming rule
for model files across the Civilization System.

This file defines only the LOGICAL_NAME part.

Full filename structure is defined in:

030.model/20_MODEL_NUMBERING_STANDARD.md


# ============================================================
# RESPONSIBILITY
# ============================================================

20_MODEL_NUMBERING_STANDARD.md defines:

- system number
- OS number
- folder number
- subfolder number
- file serial number

This file defines:

- LOGICAL_NAME style
- word composition
- readability rules
- stability rules


# ============================================================
# LOGICAL NAME RULE
# ============================================================

The logical name of a model file must use:

UPPERCASE_WITH_UNDERSCORES

Examples:

PERSONA_LICENSE
PERSONA_ACCESS_GRANT
BUSINESS_WORKSPACE_MEMBER
CIVILIZATION_SYNC_EVENT_INBOX_MODEL


# ============================================================
# WORD SELECTION RULE
# ============================================================

Model logical names must:

- be domain-accurate
- be concise
- avoid filler words
- avoid unstable wording
- remain readable without external context

Use nouns or noun phrases as the default style.


# ============================================================
# SUFFIX RULE
# ============================================================

Use suffixes only when they carry structural meaning.

Typical examples:

- MODEL
- REF_MODEL
- BINDING_MODEL
- EVENT_INBOX_MODEL

Avoid decorative or redundant suffixes.


# ============================================================
# CASE RULE
# ============================================================

Model logical names must be uppercase.

Lowercase model logical names are prohibited
for canonical model files.


# ============================================================
# STABILITY RULE
# ============================================================

Once published, a model logical name
should remain stable unless:

- the domain meaning changed
- the model boundary changed
- the old name became structurally incorrect

Renaming for style alone should be avoided.


# ============================================================
# FINAL RULE
# ============================================================

Model logical names must use:

UPPERCASE_WITH_UNDERSCORES

The full model filename must follow:

SSOOFFFPPPQQQ...NNNNNN_LOGICAL_NAME.md




# FILE: 030.model/0300022_MODEL_DIRECTORY_RULE.md

# ============================================================
# MODEL DIRECTORY RULE
# ============================================================

status: canonical
layer: rules
component: model-directory-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical directory rule
for model files across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- where model files must be placed
- how model subfolders are structured
- how numbered subfolders contribute to model filenames

Model filename structure itself is defined in:

030.model/20_MODEL_NUMBERING_STANDARD.md

Model logical naming is defined in:

030.model/21_MODEL_NAMING_STANDARD.md


# ============================================================
# ROOT LAYER RULE
# ============================================================

Canonical model files must be placed under:

030.model

This layer is the canonical root layer for model files.


# ============================================================
# SUBFOLDER RULE
# ============================================================

Subfolders under 030.model may be used
to represent model subdomains.

Subfolders should use the format:

NNN.logical-scope

Examples:

010.identity
020.memory
030.relationship
040.persona
050.integration
120.external_rights


# ============================================================
# NUMBER CONTRIBUTION RULE
# ============================================================

When a model file is placed under numbered subfolders,
those subfolder numbers contribute to the filename.

Example:

030.model / 120.external_rights / PERSONA_LICENSE model

Contributes:

030 + 120

Resulting filename prefix example:

SSOO030120NNNNNN_...


# ============================================================
# NESTED SUBFOLDER RULE
# ============================================================

Nested numbered subfolders are allowed
when domain separation requires them.

Examples:

030.model / 040.persona / 010.identity
030.model / 050.integration / 020.sync
030.model / 120.external_rights / 010.license

Each numbered subfolder contributes
its 3-digit number in sequence to the filename.


# ============================================================
# DIRECTORY NAMING RULE
# ============================================================

Model directory names must be:

NNN.logical-scope

Where:

- NNN = 3-digit directory number
- logical-scope = lowercase readable scope name

Examples:

010.identity
040.persona
120.external_rights


# ============================================================
# STABILITY RULE
# ============================================================

Once a model directory number is assigned,
its structural meaning should remain stable.

Renumbering should be avoided unless:

- the domain boundary changed
- the old directory became structurally incorrect
- the system is under an explicit migration phase


# ============================================================
# FINAL RULE
# ============================================================

All canonical model files must be placed under:

030.model

All canonical model subfolders should use:

NNN.logical-scope

Subfolder numbers contribute directly
to the canonical model filename.




# FILE: 030.model/0300023_MODEL_EXTENSION_RULE.md

# ============================================================
# MODEL EXTENSION RULE
# ============================================================

status: canonical
layer: rules
component: model-extension-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical file extension rule
for model files across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- which extension canonical model files must use
- which exceptions may exist
- how non-canonical supporting artifacts should be treated


# ============================================================
# CANONICAL EXTENSION RULE
# ============================================================

Canonical model files must use:

.md

This applies to the canonical design-layer model documents
stored under:

030.model


# ============================================================
# EXCEPTION RULE
# ============================================================

Other extensions may exist only when explicitly required
for tooling, export, or generated artifacts.

Examples of non-canonical supporting outputs may include:

- .json
- .csv
- .txt

Such files must not replace the canonical .md model document.


# ============================================================
# SOURCE OF TRUTH RULE
# ============================================================

For model design documents,
the .md file is the source of truth.

Generated or exported artifacts are secondary
and must be reproducible from canonical sources.


# ============================================================
# NAMING RULE
# ============================================================

The extension rule does not replace
the filename numbering and logical naming rules.

Canonical model filenames must still follow:

SSOOFFFPPPQQQ...NNNNNN_LOGICAL_NAME.md


# ============================================================
# STABILITY RULE
# ============================================================

Published canonical model files
must not change extension casually.

Changing extension requires an explicit structural reason
and migration handling.


# ============================================================
# FINAL RULE
# ============================================================

All canonical model files must use:

.md

Non-.md artifacts may exist only as supporting materials
and must not replace the canonical model document.




# FILE: 040.event/0400030_EVENT_NAMING_STANDARD.md

# ============================================================
# EVENT NAMING STANDARD
# ============================================================

status: canonical
scope: event
component: event-naming-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical naming rules
for event identifiers across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- how event types should be named
- how event names should remain readable
- how event names should remain stable
- how event names should represent structural meaning


# ============================================================
# CORE PRINCIPLE
# ============================================================

An event name must reveal
what happened in a structurally meaningful way.

An event name should not be vague,
UI-oriented, or temporary wording.


# ============================================================
# EVENT TYPE RULE
# ============================================================

Canonical event types should use:

UPPERCASE_WITH_UNDERSCORES

Examples:

PERSONA_RELEASE_ISSUED
PERSONA_LICENSE_CHANGED
PERSONA_ACCESS_GRANT_CHANGED
CIVILIZATION_SYNC_EVENT_RECEIVED
BUSINESS_PERSONA_BINDING_CREATED


# ============================================================
# WORDING RULE
# ============================================================

Event names should:

- use domain-accurate nouns and actions
- avoid filler words
- avoid unstable temporary wording
- remain readable without external explanation

Use past-result or state-change wording
when possible.


# ============================================================
# EVENT MEANING RULE
# ============================================================

An event name should represent
a meaningful domain occurrence.

Good examples:

- PERSONA_RELEASE_REVOKED
- PERSONA_LICENSE_CHANGED
- BUSINESS_SYNC_EVENT_CONSUMED

Poor examples:

- PERSONA_DO_SOMETHING
- DATA_UPDATED_OK
- TEMP_SYNC_EVENT


# ============================================================
# STABILITY RULE
# ============================================================

Published canonical event names
should remain stable.

Rename only when:

- the event meaning changed
- the old name became structurally incorrect
- the event boundary was redefined


# ============================================================
# FINAL RULE
# ============================================================

Canonical event identifiers must use:

UPPERCASE_WITH_UNDERSCORES

An event name must reveal
what structurally happened,
not temporary implementation wording.




# FILE: 040.event/0400031_EVENT_VERSIONING_RULE.md

# ============================================================
# EVENT VERSIONING RULE
# ============================================================

status: canonical
scope: event
component: event-versioning-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical versioning rules
for event contracts across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- when an event contract should be versioned
- what counts as breaking change
- how stability should be preserved for consumers
- how event evolution should be managed


# ============================================================
# CORE PRINCIPLE
# ============================================================

Event versioning exists to preserve
contract stability across producers and consumers.

Changes that alter interpretation,
required fields, or contract meaning
must not be treated as trivial edits.


# ============================================================
# BREAKING CHANGE RULE
# ============================================================

A breaking event change includes:

- removing a required field
- changing field meaning
- changing identifier semantics
- changing source-of-truth interpretation
- changing contract shape in a way
  that invalidates existing consumers


# ============================================================
# NON-BREAKING CHANGE RULE
# ============================================================

A non-breaking event change may include:

- adding optional fields
- clarifying documentation
- tightening validation explanation
- adding derived metadata
  without changing existing required meaning


# ============================================================
# CONSUMER RULE
# ============================================================

Event producers must consider
existing consumers before changing contracts.

Event consumers must not assume
undocumented payload meaning.


# ============================================================
# MIGRATION RULE
# ============================================================

When event versioning changes,
the following should be explicit:

- what changed
- why it changed
- which consumers are affected
- whether dual-read or transition support is needed


# ============================================================
# FINAL RULE
# ============================================================

Event contracts must evolve deliberately.

Breaking changes require explicit migration awareness.
Non-breaking changes must preserve existing contract meaning.




# FILE: 040.event/0400032_EVENT_SCHEMA_RULE.md

# ============================================================
# EVENT SCHEMA RULE
# ============================================================

status: canonical
scope: event
component: event-schema-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical schema expectations
for event payloads across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- required schema clarity
- payload structure expectations
- contract consistency requirements
- schema stability expectations


# ============================================================
# CORE PRINCIPLE
# ============================================================

Every canonical event must have
an explicit schema shape.

The consumer must be able to determine:

- event type
- aggregate identity
- payload structure
- source system
- processing meaning


# ============================================================
# MINIMUM SCHEMA RULE
# ============================================================

A canonical event payload should clearly support:

- event_type
- aggregate_type
- aggregate_id
- payload body
- source or producer identity when relevant

Additional fields may exist,
but structural identification must remain explicit.


# ============================================================
# FIELD MEANING RULE
# ============================================================

Each field must have stable meaning.

A field must not silently change purpose
while keeping the same name.


# ============================================================
# OPTIONAL FIELD RULE
# ============================================================

Optional fields are allowed
when they do not alter the meaning
of existing required fields.

Optional fields must not silently become mandatory
without version-aware handling.


# ============================================================
# VALIDATION RULE
# ============================================================

Event payloads must be validatable.

Malformed or unverifiable payloads
must not be accepted as authoritative input.


# ============================================================
# FINAL RULE
# ============================================================

Canonical events must have
explicit, stable, and validatable schema structure.

Consumers must not rely on undocumented payload assumptions.




# FILE: 040.event/0400033_EVENT_IDEMPOTENCY_RULE.md

# ============================================================
# EVENT IDEMPOTENCY RULE
# ============================================================

status: canonical
scope: event
component: event-idempotency-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical idempotency rules
for event processing across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- duplicate event handling expectations
- replay safety expectations
- retry-safe consumption behavior
- non-repeatable side effect control


# ============================================================
# CORE PRINCIPLE
# ============================================================

Event processing must tolerate retry,
replay, and duplicate delivery
without creating false repeated side effects.


# ============================================================
# IDEMPOTENCY RULE
# ============================================================

A consumer must be able to determine
whether an event was already processed
or whether repeating the same event
would be unsafe.

At-least-once delivery must not create
silent duplicate mutation.


# ============================================================
# DUPLICATE HANDLING RULE
# ============================================================

Duplicate deliveries are expected
in robust distributed systems.

Consumers should protect against:

- repeated grant creation
- repeated release application
- repeated mirrored state mutation
- repeated downstream side effects


# ============================================================
# REPLAY RULE
# ============================================================

Reprocessing should be safe
when the same canonical event is replayed
under the same contract meaning.

Replay safety is part of structural correctness,
not an optional optimization.


# ============================================================
# RETRY RULE
# ============================================================

Retryable failure handling is allowed.

Retry must not create silent double-apply effects.

Where necessary, inbox or tracking state
should make prior processing detectable.


# ============================================================
# FINAL RULE
# ============================================================

Canonical event handling must be idempotent enough
to tolerate retry and duplicate delivery
without corrupting structural truth.




# FILE: 040.event/0400034_EVENT_SECURITY_RULE.md

# ============================================================
# EVENT SECURITY RULE
# ============================================================

status: canonical
scope: event
component: event-security-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical security expectations
for event production and consumption
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- trust expectations for event payloads
- validation expectations
- source verification expectations
- unsafe event rejection principles


# ============================================================
# CORE PRINCIPLE
# ============================================================

An event payload must not be trusted
only because it arrived.

Validity, origin, and structural correctness
must be established before authoritative use.


# ============================================================
# VALIDATION RULE
# ============================================================

Consumers must validate:

- event type
- schema shape
- expected source when relevant
- aggregate identity form when relevant
- required field presence

Malformed payloads must not mutate canonical truth.


# ============================================================
# SOURCE RULE
# ============================================================

When source authority matters,
event origin must be attributable.

Mirrored or downstream systems
must not be treated as authoritative producers
unless explicitly defined.


# ============================================================
# REJECTION RULE
# ============================================================

Unsafe or unverifiable events
should be rejected or quarantined.

Prefer fail-closed behavior over silent acceptance
when trust cannot be established.


# ============================================================
# LEAST-TRUST RULE
# ============================================================

A consumer should trust
only the minimum required information
needed to process the event correctly.

Undocumented fields must not gain silent authority.


# ============================================================
# FINAL RULE
# ============================================================

Canonical event handling requires validation,
source awareness, and fail-closed rejection
of unsafe payloads.




# FILE: 050.security/0500040_SECURITY_MODEL_RULE.md

# ============================================================
# SECURITY MODEL RULE
# ============================================================

status: canonical
scope: security
component: security-model-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical security model rule
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- baseline security structure
- trust boundary principles
- validation-before-authority rule
- fail-closed handling expectations


# ============================================================
# CORE PRINCIPLE
# ============================================================

Security must preserve structural trust.

A system must not accept mutation, access, or authority
without explicit validation and boundary awareness.


# ============================================================
# TRUST BOUNDARY RULE
# ============================================================

Every authoritative system must preserve
its source-of-truth boundary.

Cross-system reference is allowed.

Cross-system authority seizure is prohibited
unless explicitly designed and approved.


# ============================================================
# VALIDATION RULE
# ============================================================

No payload, request, event, or mirrored state
should be treated as authoritative
without validation.

Validation may include:

- source verification
- schema verification
- contract verification
- access verification
- signature verification when applicable


# ============================================================
# FAIL-CLOSED RULE
# ============================================================

When correctness or trust cannot be established,
the system should prefer fail-closed behavior
over silent corruption or unsafe acceptance.


# ============================================================
# STRUCTURAL SECURITY RULE
# ============================================================

Security is not only access restriction.

Security also includes:

- source-of-truth protection
- boundary integrity
- non-corruption guarantees
- auditability
- controlled mutation paths


# ============================================================
# FINAL RULE
# ============================================================

Canonical security must preserve structural trust.

Validation before authority is required.
Fail-closed protection is preferred when trust is uncertain.




# FILE: 050.security/0500041_SIGNATURE_STANDARD.md

# ============================================================
# SIGNATURE STANDARD
# ============================================================

status: canonical
scope: security
component: signature-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical signature standard
for signed payloads and signed artifacts
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- when signatures are used
- what signatures are expected to protect
- what validation means in signed contexts
- what signed artifacts must not imply automatically


# ============================================================
# CORE PRINCIPLE
# ============================================================

A signature proves signed integrity
only within the assumptions of the signing model.

A signature does not automatically prove
business validity, policy validity, or runtime safety.


# ============================================================
# SIGNED ARTIFACT RULE
# ============================================================

Signed artifacts may include:

- signed snapshots
- signed manifests
- signed release payloads
- signed verification materials

The signed scope must be explicit.


# ============================================================
# VALIDATION RULE
# ============================================================

Signature-aware consumers must verify:

- expected signature presence when required
- expected signer or trust path when relevant
- payload integrity
- signature applicability to the artifact scope

A valid signature does not override
other required validation layers.


# ============================================================
# NON-IMPLICATION RULE
# ============================================================

A valid signature does not automatically mean:

- policy approval
- license validity
- access validity
- runtime safety
- current freshness

Those meanings require their own checks.


# ============================================================
# FINAL RULE
# ============================================================

A signature is an integrity and trust-path mechanism,
not a universal validity shortcut.

Signature verification must be explicit and scoped.




# FILE: 050.security/0500042_KEY_ROTATION_RULE.md

# ============================================================
# KEY ROTATION RULE
# ============================================================

status: canonical
scope: security
component: key-rotation-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical key rotation expectations
for managed signing or verification keys
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- why key rotation is necessary
- what must remain stable during rotation
- what migration awareness is required
- how trust continuity should be preserved


# ============================================================
# CORE PRINCIPLE
# ============================================================

Key rotation must preserve trust continuity
without silently invalidating active systems.


# ============================================================
# ROTATION RULE
# ============================================================

Key rotation is allowed and expected
when required for security health.

Rotation must be explicit and controlled.

Implicit or undocumented key replacement is prohibited.


# ============================================================
# CONTINUITY RULE
# ============================================================

During rotation, the system should make clear:

- which key is current
- which prior key remains temporarily acceptable
- how verification behavior is affected
- when old trust paths expire


# ============================================================
# MIGRATION RULE
# ============================================================

Key rotation must consider:

- active signed artifacts
- verification consumers
- transition windows
- audit traceability

Rotation must not silently break verification behavior.


# ============================================================
# FINAL RULE
# ============================================================

Key rotation must be explicit,
traceable, and continuity-aware.

Security improvement must not create silent trust collapse.




# FILE: 050.security/0500043_ACCESS_CONTROL_RULE.md

# ============================================================
# ACCESS CONTROL RULE
# ============================================================

status: canonical
scope: security
component: access-control-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical access control expectations
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- explicit access boundaries
- scope-aware authorization
- least-authority expectations
- revocation and invalidation awareness


# ============================================================
# CORE PRINCIPLE
# ============================================================

Access must be explicit.

No actor, system, or module
should gain authority through ambiguity,
convenience, or inherited assumption alone.


# ============================================================
# SCOPE RULE
# ============================================================

Access must be scoped.

Typical scope dimensions may include:

- system
- OS
- workspace
- module
- release unit
- license scope
- access grant scope

Authority without explicit scope is structurally unsafe.


# ============================================================
# LEAST-AUTHORITY RULE
# ============================================================

A system should grant only
the minimum authority required
for the intended action.

Broader-than-needed access is discouraged.


# ============================================================
# REVOCATION RULE
# ============================================================

Revoked, expired, or invalidated access
must not remain silently usable.

Dependent use paths should be disabled
when authoritative access state becomes invalid.


# ============================================================
# CROSS-SYSTEM RULE
# ============================================================

When access state is mirrored across systems:

- the source-of-truth remains explicit
- mirrored access must not become false authority
- invalid mirrored state must not override authoritative revocation


# ============================================================
# FINAL RULE
# ============================================================

Access must be explicit, scoped, minimal, and revocable.

Authority through ambiguity is prohibited.




# FILE: 060.data/0600050_DATABASE_SCHEMA_RULE.md

# ============================================================
# DATABASE SCHEMA RULE
# ============================================================

status: canonical
scope: data
component: database-schema-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical database schema expectations
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- schema clarity expectations
- source-of-truth boundary preservation
- structural naming consistency
- schema stability principles


# ============================================================
# CORE PRINCIPLE
# ============================================================

Database schema is part of structural truth.

Schema must not become an accidental mixture
of unrelated ownership, unstable naming,
or convenience-driven cross-boundary mutation.


# ============================================================
# SCHEMA BOUNDARY RULE
# ============================================================

Schemas should preserve source-of-truth boundaries.

A schema must not silently absorb
unrelated domain ownership
for short-term convenience.

Mirrored state may exist,
but mirrored state must not be confused
with authoritative ownership.


# ============================================================
# STRUCTURE RULE
# ============================================================

Database schemas should be:

- explicit
- attributable
- stable
- boundary-aware
- reviewable

Table meaning, ownership meaning,
and mutation meaning should remain clear.


# ============================================================
# NAMING RULE
# ============================================================

Schema naming should remain structurally meaningful.

Table, field, and schema naming should avoid:

- temporary wording
- UI-only meaning
- overloaded ambiguity
- misleading reuse of old names


# ============================================================
# CHANGE RULE
# ============================================================

Schema change must be deliberate.

Structural schema changes include:

- ownership move
- boundary split or merge
- primary meaning change
- identifier meaning change
- mirrored/authoritative role change

Such changes require explicit migration awareness.


# ============================================================
# FINAL RULE
# ============================================================

Database schema must preserve structural truth.

Storage convenience must not override
boundary clarity, ownership clarity,
or stable naming meaning.




# FILE: 060.data/0600051_AUDIT_LOG_RULE.md

# ============================================================
# AUDIT LOG RULE
# ============================================================

status: canonical
scope: data
component: audit-log-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical audit log expectations
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- what should be auditable
- what minimal audit meaning should exist
- how structural traceability should be preserved
- what audit should not be mistaken for


# ============================================================
# CORE PRINCIPLE
# ============================================================

Audit exists to preserve traceability,
not merely to collect noise.

An audit log should help answer:

- what changed
- who or what caused it
- where it happened
- when it happened
- what result occurred


# ============================================================
# AUDITABLE CHANGE RULE
# ============================================================

The following should be auditable
when structurally relevant:

- source-of-truth mutation
- rights state change
- access state change
- boundary-sensitive sync event handling
- structural operational action
- security-sensitive validation result


# ============================================================
# MINIMUM AUDIT RULE
# ============================================================

Audit records should preserve
at least meaningful traceability for:

- actor or source
- action type
- scope or target
- time
- outcome

Additional fields may exist,
but traceability meaning must remain explicit.


# ============================================================
# NON-SUBSTITUTION RULE
# ============================================================

Audit does not replace source-of-truth data.

Audit records may describe a change,
but they do not become
the canonical domain state itself.


# ============================================================
# INTEGRITY RULE
# ============================================================

Audit logs should not be silently discarded,
rewritten, or structurally obscured
without explicit archival or retention handling.


# ============================================================
# FINAL RULE
# ============================================================

Audit must preserve structural traceability.

Audit is not noise collection.
Audit is change accountability.




# FILE: 060.data/0600052_DATA_RETENTION_RULE.md

# ============================================================
# DATA RETENTION RULE
# ============================================================

status: canonical
scope: data
component: data-retention-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical retention expectations
for data and retained artifacts
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- why retention matters
- how active, archived, and temporary data differ
- how retention should preserve structural meaning
- how cleanup should avoid silent loss of important history


# ============================================================
# CORE PRINCIPLE
# ============================================================

Retention must preserve structural meaning.

Not all data must remain active,
but important history must not be silently erased.


# ============================================================
# DATA CLASS RULE
# ============================================================

Retention handling should distinguish between:

## Active canonical data
Current authoritative material still in active use.

## Archived historical data
Retained history that is no longer active,
but still useful for traceability, rollback awareness,
or historical reference.

## Temporary support material
Generated lists, dumps, helper outputs,
migration notes, or review artifacts
that may be safely discarded when no longer needed.


# ============================================================
# ARCHIVE RULE
# ============================================================

Archive preserves history,
not active authority.

Archived material may remain useful,
but active canonical meaning must stay explicit.


# ============================================================
# CLEANUP RULE
# ============================================================

Cleanup is allowed for temporary support material.

Examples include:

- active file lists
- temporary full dumps
- transient migration helpers
- temporary generated inspection outputs

Cleanup must not silently remove
active canonical rules or required historical traceability.


# ============================================================
# RETENTION DECISION RULE
# ============================================================

Before deletion, retention handling should consider:

- is this authoritative
- is this archival history
- is this only temporary support material
- would deletion erase structural traceability
- would archive be more appropriate than delete


# ============================================================
# FINAL RULE
# ============================================================

Retention must preserve structural meaning.

Archive what preserves history.
Delete what is truly temporary.
Do not erase authoritative or historically meaningful material casually.




# FILE: 070.development/0700060_TERMUX_SCRIPT_STANDARD.md

# ============================================================
# TERMUX SCRIPT STANDARD
# ============================================================

status: canonical
scope: development
component: termux-script-standard

owner: Boss
prepared_by: Zero


# PURPOSE

Define standards for Termux-compatible scripts.


# RULES

Scripts must be copy-paste executable.
Absolute paths are preferred where needed.
One-block generation is allowed and encouraged.


# FINAL RULE

Termux scripts must be safe and reproducible.





# FILE: 070.development/0700061_GIT_BRANCH_RULE.md

# ============================================================
# GIT BRANCH RULE
# ============================================================

status: canonical
scope: development
component: git-branch-rule

owner: Boss
prepared_by: Zero


# PURPOSE

Define branch naming rules.


# RULES

Branch names must be structured and readable.
Phase naming may be used.
Ambiguous branch names are prohibited.


# FINAL RULE

Branch names must support traceable development.





# FILE: 070.development/0700062_COMMIT_MESSAGE_RULE.md

# ============================================================
# COMMIT MESSAGE RULE
# ============================================================

status: canonical
scope: development
component: commit-message-rule

owner: Boss
prepared_by: Zero


# PURPOSE

Define commit message standards.


# RULES

Commit messages must describe intent clearly.
Messages should reflect structural change.
Ambiguous one-word commits are discouraged.


# FINAL RULE

Commit history must remain readable and auditable.





# FILE: 070.development/0700063_DATABASE_CONNECTION_STANDARD.md

# ============================================================
# DATABASE CONNECTION STANDARD
# ============================================================

status: canonical
scope: development
component: database-connection-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical database connection standard
used in the Civilization System development workflow.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- approved database connection methods
- environment variable usage
- prohibited connection styles
- scope separation between database groups


# ============================================================
# CORE PRINCIPLE
# ============================================================

Database connection must be explicit,
environment-driven, and reproducible.

Manual ad hoc credential assembly is prohibited.


# ============================================================
# DATABASE GROUP RULE
# ============================================================

Two database groups exist.

## ERP-side database group
Environment variable:

DATABASE_URL

Typical scope:

- ERP
- Business
- Audit
- Analytics
- Governance

## Persona/Civilization-side database group
Environment variable:

PERSONA_DATABASE_URL

Typical scope:

- PersonaOS
- CivilizationOS
- Life
- Streaming
- Game
- Social
- Learning


# ============================================================
# ENVIRONMENT VARIABLE RULE
# ============================================================

Only environment URL variables are allowed
for canonical database connection handling.

Approved examples:

- DATABASE_URL
- PERSONA_DATABASE_URL

Direct host/user/password assembly
inside scripts is prohibited.


# ============================================================
# FORBIDDEN RULE
# ============================================================

The following are prohibited
as canonical connection style:

- PGHOST-based manual connection composition
- PGUSER-based manual connection composition
- ad hoc direct credential embedding in scripts
- undocumented manual connection configuration


# ============================================================
# STRUCTURAL RULE
# ============================================================

Database connection selection must reflect
the structural ownership of the target system.

A script must not silently connect
to the wrong database group.


# ============================================================
# FINAL RULE
# ============================================================

Canonical database connections must use
approved environment URL variables only.

Connection handling must be explicit,
stable, and environment-driven.




# FILE: 070.development/0700064_SQL_EXECUTION_STANDARD.md

# ============================================================
# SQL EXECUTION STANDARD
# ============================================================

status: canonical
scope: development
component: sql-execution-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical SQL execution standard
for direct CLI execution in the Civilization System workflow.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- approved SQL execution style
- required one-block execution pattern
- non-interactive execution requirement
- explicit environment-bound execution


# ============================================================
# CORE PRINCIPLE
# ============================================================

SQL execution must be explicit,
copy-paste runnable,
and deterministic.

Interactive ambiguity is discouraged
for canonical operational scripts.


# ============================================================
# ERP-SIDE EXECUTION RULE
# ============================================================

ERP-side SQL execution must use:

psql "$DATABASE_URL" <<'SQL'
...
SQL


# ============================================================
# PERSONA/CIVILIZATION-SIDE EXECUTION RULE
# ============================================================

Persona/Civilization-side SQL execution must use:

psql "$PERSONA_DATABASE_URL" <<'SQL'
...
SQL


# ============================================================
# REQUIRED STYLE RULE
# ============================================================

Canonical SQL execution must be:

- single execution block
- environment-bound
- non-interactive
- reviewable before execution
- deterministic in target selection


# ============================================================
# FORBIDDEN STYLE RULE
# ============================================================

The following are discouraged or prohibited
for canonical workflow use:

- interactive ad hoc SQL sessions as primary standard
- hidden target database selection
- split execution where target context becomes ambiguous
- direct credential embedding inside SQL execution blocks


# ============================================================
# TERMUX RULE
# ============================================================

When SQL is intended for Termux execution,
it should be provided in directly executable form
with explicit target environment variable usage.


# ============================================================
# FINAL RULE
# ============================================================

Canonical SQL execution must use
a single explicit psql block
bound to the correct environment URL variable.




# FILE: 070.development/0700065_SUPABASE_CONNECTION_STANDARD.md

# ============================================================
# SUPABASE CONNECTION STANDARD
# ============================================================

status: canonical
scope: development
component: supabase-connection-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical Supabase connection standard
for the Civilization System workflow.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- approved Supabase connection mode
- prohibited connection mode
- structural expectations for connection routing


# ============================================================
# CORE PRINCIPLE
# ============================================================

Supabase connection handling must prefer
stable, operationally safe connection routing
over ad hoc direct database access.


# ============================================================
# APPROVED CONNECTION RULE
# ============================================================

The canonical connection method is:

Transaction Pooler

Example pattern:

aws-1-ap-south-1.pooler.supabase.com:6543


# ============================================================
# PROHIBITED CONNECTION RULE
# ============================================================

Direct database connection usage
is prohibited as canonical operational standard
when the approved pooler route exists.


# ============================================================
# STRUCTURAL RULE
# ============================================================

Connection routing must remain consistent
with the approved environment-variable-based workflow.

Connection mode must not silently vary
between scripts without explicit reason.


# ============================================================
# FINAL RULE
# ============================================================

Canonical Supabase connection handling
must use the approved Transaction Pooler route.

Direct database connection is not the standard
for active operational workflow.




# FILE: 070.development/0700066_CODING_COMMENT_STANDARD.md

# ============================================================
# CODING COMMENT STANDARD
# ============================================================

status: canonical
scope: development
component: coding-comment-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical expectations
for source code comments
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- what comments should explain
- what comments should avoid
- how comments should support maintenance
- how comments should remain useful in production-facing systems


# ============================================================
# CORE PRINCIPLE
# ============================================================

Comments should explain meaning,
intent, safety, and operational risk.

Comments should not merely repeat the code.


# ============================================================
# REQUIRED COMMENT CASES
# ============================================================

Comments should be added when the code includes:

- structural boundary logic
- security-sensitive validation
- source-of-truth protection
- retry / DEAD / fail-closed behavior
- unusual constraints
- non-obvious implementation reason
- migration or compatibility handling


# ============================================================
# GOOD COMMENT RULE
# ============================================================

A good comment explains:

- why this logic exists
- what risk it prevents
- what boundary it protects
- what condition causes special handling
- what would break if it were removed


# ============================================================
# BAD COMMENT RULE
# ============================================================

Avoid comments that only restate the code.

Bad examples:

- increment counter
- call function
- set variable

These comments add noise without meaning.


# ============================================================
# MAINTENANCE RULE
# ============================================================

Comments should help a future maintainer understand:

- the structural intent
- the operational consequence
- the reason for validation or rejection
- the meaning of retry or terminal failure


# ============================================================
# PRODUCTION RULE
# ============================================================

Comments in production-facing systems
should support safe maintenance and incident understanding.

Comments should remain clear even when read
during debugging, incident review, or hotfix work.


# ============================================================
# LANGUAGE RULE
# ============================================================

Comments should be short, explicit, and unambiguous.

Prefer meaning over decoration.
Prefer structural explanation over narrative wording.


# ============================================================
# FINAL RULE
# ============================================================

Comments must explain intent, risk, boundary, or reason.

Do not comment what is obvious.
Comment what protects correctness.




# FILE: 070.development/0700067_SQL_NAMING_STANDARD.md

# ============================================================
# SQL NAMING STANDARD
# ============================================================

status: canonical
scope: development
component: sql-naming-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical naming rules
for SQL-facing objects
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- table naming
- column naming
- SQL function naming
- RPC naming
- readability and stability expectations


# ============================================================
# CORE PRINCIPLE
# ============================================================

SQL names must be:

- explicit
- structurally meaningful
- stable after publication
- easy to read in operations and debugging

Avoid decorative or ambiguous naming.


# ============================================================
# TABLE RULE
# ============================================================

Tables must use:

snake_case

Examples:

persona_state
event_outbox
apply_run_log
growth_events
persona_access_grant
business_workspace_member


# ============================================================
# COLUMN RULE
# ============================================================

Columns must use:

snake_case

Examples:

event_id
schema_hash
dispatch_attempts
created_at
updated_at
grant_state
retry_count


# ============================================================
# FUNCTION RULE
# ============================================================

SQL functions should use:

verb_object

Examples:

claim_event_batch
mark_event_done
mark_retry
apply_event_engine
refresh_access_state


# ============================================================
# RPC RULE
# ============================================================

RPC-facing names should use:

schema.function

Examples:

personaos.apply_event
business.claim_event_batch
civilization.sync_consume_event

Schema and function meaning must remain explicit.


# ============================================================
# NAMING STABILITY RULE
# ============================================================

Published SQL names should remain stable.

Rename only when:

- the old name became structurally misleading
- domain meaning changed
- the boundary or role changed significantly


# ============================================================
# AVOIDANCE RULE
# ============================================================

Avoid:

- vague abbreviations
- UI-oriented wording
- temporary names
- overloaded generic names
- names whose meaning depends on hidden context


# ============================================================
# FINAL RULE
# ============================================================

SQL-facing names must be explicit,
snake_case where applicable,
and stable enough for operational use,
debugging, and long-term maintenance.




# FILE: 070.development/0700068_EDGE_FUNCTION_NAMING_STANDARD.md

# ============================================================
# EDGE FUNCTION NAMING STANDARD
# ============================================================

status: canonical
scope: development
component: edge-function-naming-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical naming rules
for Edge Functions
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- naming format for Edge Functions
- readability expectations
- domain/action separation
- stability and clarity rules


# ============================================================
# CORE PRINCIPLE
# ============================================================

An Edge Function name should reveal:

- which domain it belongs to
- what action it performs

The name should be operationally readable
without opening the implementation.


# ============================================================
# FORMAT RULE
# ============================================================

Edge Functions should use:

domain-action

Examples:

persona-apply
event-dispatcher
audit-notify
ai-summary
license-sync
growth-ingest


# ============================================================
# CASE RULE
# ============================================================

Edge Function names should use:

- lowercase letters
- hyphen-separated words

Underscore and mixed-case naming
should be avoided for canonical function names.


# ============================================================
# DOMAIN RULE
# ============================================================

The domain part should identify
the primary ownership or operating context.

Examples:

- persona
- business
- civilization
- audit
- event
- sync


# ============================================================
# ACTION RULE
# ============================================================

The action part should identify
what the function does structurally.

Examples:

- apply
- dispatch
- notify
- consume
- sync
- verify
- ingest

Prefer explicit action names
over vague words like do, run, or process.


# ============================================================
# STABILITY RULE
# ============================================================

Published Edge Function names
should remain stable unless:

- domain ownership changed
- action meaning changed
- the old name became structurally misleading


# ============================================================
# FINAL RULE
# ============================================================

Canonical Edge Function names must use:

domain-action

Names must be readable, stable,
and operationally meaningful.




# FILE: 070.development/0700069_LOGGING_AND_ERROR_HANDLING_STANDARD.md

# ============================================================
# LOGGING AND ERROR HANDLING STANDARD
# ============================================================

status: canonical
scope: development
component: logging-and-error-handling-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical expectations
for runtime logs, error handling,
and production-grade error messages
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- logging structure
- runtime result states
- error message clarity
- retry and terminal failure handling
- production-safe message rules


# ============================================================
# CORE PRINCIPLE
# ============================================================

Logs and error messages must help operators,
developers, and maintainers understand
what happened, where it happened,
and what should happen next.

Silent failure is prohibited.


# ============================================================
# LOG FORMAT RULE
# ============================================================

System logs should use structured JSON
when emitted by runtime systems.

Typical fields may include:

- stage
- system
- component
- operation
- event_id
- run_id
- result
- reason_code
- retryable
- latency_ms
- timestamp


# ============================================================
# RESULT STATE RULE
# ============================================================

Three standard result states exist:

- SUCCESS
- RETRY
- DEAD

Definitions:

## SUCCESS
The operation completed correctly.

## RETRY
The operation failed in a retryable way.
Attempt count should increase.

## DEAD
The failure is terminal.
The item must not continue as active processing work.


# ============================================================
# ERROR MESSAGE RULE
# ============================================================

An error message must be understandable
in production operations.

A good error message should reveal:

- what failed
- where it failed
- why it failed when known
- whether retry is allowed
- what boundary blocked progress

Messages should be actionable when possible.


# ============================================================
# HUMAN MESSAGE RULE
# ============================================================

Human-readable error messages should be:

- short
- explicit
- operationally useful
- non-ambiguous

Good examples:

- signature verification failed; event marked DEAD
- access grant expired; usage disabled
- sync payload schema invalid; retry rejected
- database target not configured; execution aborted

Bad examples:

- failed
- invalid data
- something went wrong
- error occurred


# ============================================================
# REASON CODE RULE
# ============================================================

Where possible, logs and errors should include
a stable reason code
separate from the human-readable message.

Examples:

- SIGNATURE_VERIFICATION_FAILED
- ACCESS_GRANT_EXPIRED
- SCHEMA_VALIDATION_FAILED
- DATABASE_TARGET_MISSING
- RETRY_LIMIT_EXCEEDED

Reason codes support filtering and automation.
Human messages support operators.


# ============================================================
# RETRY RULE
# ============================================================

Retryable failures must be explicit.

A RETRY case should clearly indicate:

- why the attempt failed
- whether retry is safe
- whether attempt count increased
- when the next retry is expected if known


# ============================================================
# DEAD RULE
# ============================================================

Terminal failures must be explicit.

A DEAD case should clearly indicate:

- why the item became terminal
- which validation or limit caused it
- that active processing should stop


# ============================================================
# FAIL-CLOSED RULE
# ============================================================

When correctness or trust cannot be established,
the system should fail closed.

Logs and messages should make that visible.

Example:

- unverifiable payload rejected; fail-closed path applied


# ============================================================
# SECRET SAFETY RULE
# ============================================================

Logs and error messages must not expose:

- credentials
- raw secrets
- private keys
- full connection strings
- unsafe personally sensitive raw payloads

Operational visibility must not create security leakage.


# ============================================================
# COMMENT AND LOG RELATION RULE
# ============================================================

Comments explain why the code behaves this way.
Logs explain what happened at runtime.

Comments and logs should reinforce each other,
not duplicate each other blindly.


# ============================================================
# FINAL RULE
# ============================================================

Logs must be structured.
Errors must be understandable in production.
Retry and DEAD must be explicit.
Silent failure is prohibited.





--------------------------------------------------------------------------------
FILE: 91.rules/910_CIVILIZATION_SYSTEM_DIRECTORY_STRUCTURE_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# CIVILIZATION SYSTEM DIRECTORY STRUCTURE RULE
# ============================================================

status: canonical
system: civilization-system
scope: global
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical directory structure and
shared layer numbering rules for the entire
Civilization System.

This rule applies to:

- foundation
- all operating systems
- applications
- documentation
- common rules

The goal is to keep system boundaries clear,
maintain long-term scalability,
and prevent structural drift between OS layers.


# ============================================================
# ROOT STRUCTURE
# ============================================================

01.civilization-system

 ├ 00.foundation
 ├ 01.civilization-os
 ├ 02.persona-os
 ├ 03.business-os
 ├ 04.life-os
 ├ 05.game-os
 ├ 06.streaming-os
 ├ 07.applications
 ├ 90.docs
 └ 91.rules


# ============================================================
# ROOT DIRECTORY RULE
# ============================================================

The Civilization System root separates:

- common foundation
- platform operating systems
- applications
- documentation
- shared rules

Applications are not placed inside OS directories.

ERP is not part of Civilization System
and must remain a separate system.


# ============================================================
# SHARED OS LAYER NUMBERING RULE
# ============================================================

All operating systems in Civilization System
must use the following shared layer numbering rule
when a layer exists.

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
# SHARED OS LAYER RULE
# ============================================================

The numbering rule is common across all OS layers.

However:

- not every OS must contain every layer
- missing layers are allowed
- missing layers should remain as gaps
- layer numbers must not be reassigned to different meanings

This means:

If an OS does not need integration,
060.integration may be absent.

If an OS does not need society,
900.society may be absent.

But if the layer exists,
it must use the shared canonical number.


# ============================================================
# LAYER DEFINITIONS
# ============================================================

## 000.rules
Shared rules internal to the OS.

## 010.constitution
Core principles, boundaries, and non-negotiable rules.

## 020.architecture
High-level structural design and responsibility separation.

## 030.model
Canonical domain models and reference models.

## 040.runtime
Runtime behavior, state transitions, and processing behavior.

## 050.flow
Business flows, lifecycle flows, and cross-step domain flows.

## 060.integration
Cross-system integration and synchronization structure.

## 070.operations
Operational procedures and operational state handling.

## 080.policy
Control rules, usage rules, and boundary policies.

## 090.interface
User-facing, admin-facing, or system-facing interface definitions.

## 100.security
Security constraints, access protection, audit integrity, and threat controls.

## 110.infrastructure
Runtime platform, storage, logging, integration channel, and operational infrastructure.

## 120.implementation
Implementation-oriented specifications and implementation supplements.

## 130.development
Roadmaps, dependency maps, implementation order, development planning.

## 900.society
Society-layer documents, where applicable.

## 910.civilization
Civilization-facing documents, where applicable.

## 920.meta
Meta-level management, changelog, dependency map, document map, and system metadata.

## 999.archive
Archived folders, retired structures, and preserved migration history.


# ============================================================
# ROOT FILE RULE
# ============================================================

Root directories should contain directories first.

Root-level files are allowed only when they are
canonical system-level documents or intentionally retained full compilations.

Examples of allowed root-level files:

- canonical top-level structure specification
- system-wide overview
- intentionally retained full compiled books

Operational helper files should not remain
scattered at the root long-term.


# ============================================================
# FILE PLACEMENT RULE
# ============================================================

The following files should be placed under docs or rules areas,
not loosely scattered at OS root unless temporarily required:

- active file lists
- root file indexes
- restructure reports
- renumber maps
- temporary migration notes

Compiled full files may be kept separately
when they are intentionally used as review artifacts.


# ============================================================
# FOUNDATION RULE
# ============================================================

00.foundation contains shared principles for the whole system.

Typical contents include:

- constitution-level common thought
- design standards
- safety rules
- structure rules
- cross-system principles


# ============================================================
# OS ROLE RULE
# ============================================================

Each OS provides platform capabilities.

Operating systems define:

- structure
- models
- runtime rules
- flows
- policies
- interfaces
- security
- operations
- development support

Applications are built on top of OS capabilities.


# ============================================================
# 01 CIVILIZATION OS
# ============================================================

CivilizationOS is the world and simulation layer.

Typical responsibilities:

- nation
- government
- law
- economy
- war
- population
- religion
- technology
- history

CivilizationOS is primarily a world-rule OS.

Implementation and development may exist,
but they are not the leading identity of the system.


# ============================================================
# 02 PERSONA OS
# ============================================================

PersonaOS is the artificial persona and external rights layer.

Typical responsibilities:

- identity
- memory
- emotion
- cognition
- behavior
- relationship
- growth
- snapshot
- release
- license
- access grant
- external rights

PersonaOS is the source of truth for persona-derived rights state.


# ============================================================
# 03 BUSINESS OS
# ============================================================

BusinessOS is a small-scale business tools platform.

BusinessOS is not ERP.

ERP remains outside Civilization System.

Typical responsibilities:

- task management
- project tracking
- notes
- mini CRM
- calendar utilities
- lightweight workspace applications

BusinessOS is a lightweight platform OS,
not a full enterprise core system.


# ============================================================
# 04 LIFE OS
# ============================================================

LifeOS is the life management platform.

Typical responsibilities:

- health
- sleep
- meal
- habit
- home
- daily life metrics


# ============================================================
# 05 GAME OS
# ============================================================

GameOS is the game and simulation support platform.

Typical responsibilities:

- player
- quest
- battle
- items
- score
- progression


# ============================================================
# 06 STREAMING OS
# ============================================================

StreamingOS is the streaming ecosystem platform.

Typical responsibilities:

- stream
- viewer
- chat
- donation
- fan communities
- creator-facing interaction


# ============================================================
# APPLICATION LAYER
# ============================================================

07.applications contains real applications.

Applications may use multiple OS capabilities.

Applications must not redefine OS-level shared rules
inside application directories.


# ============================================================
# DOCUMENTATION
# ============================================================

90.docs contains system-wide documentation.

Typical contents:

- architecture references
- design indexes
- model catalogs
- bible documents
- compiled review documents


# ============================================================
# SHARED RULES
# ============================================================

91.rules contains Civilization System-wide canonical rules.

Typical contents:

- naming rules
- numbering rules
- directory structure rules
- cross-OS structural rules
- file placement rules


# ============================================================
# ERP BOUNDARY
# ============================================================

ERP is not part of Civilization System.

ERP must remain a separate system.

Example:

~/02.erp-system


# ============================================================
# FINAL RULE
# ============================================================

All future OS additions inside Civilization System
must follow this shared numbering rule
and root structure rule.

If a layer is added in the future,
it must use the canonical number defined here.



--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/0000_RULE_CONSTITUTION.md
--------------------------------------------------------------------------------

# ============================================================
# CIVILIZATION RULE CONSTITUTION
# ============================================================

status: canonical
scope: civilization.rules

owner: Boss
prepared_by: Zero

# PURPOSE

Define the supreme rule system
for the Civilization architecture.

# RULE HIERARCHY

0000 Rule Constitution
0100 Rule Architecture
0200 Domain Rules
0300 Operational Rules

Lower rules must never violate
higher rules.

# PRINCIPLE

Civilization systems must remain

predictable
auditable
structurally stable.



--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/0100_RULE_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# RULE ARCHITECTURE
# ============================================================

Defines structural organization
of rules.

Architecture layers

Constitution
Architecture
Runtime
Implementation

Reverse dependency is forbidden.



--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/0200_MODEL_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL RULE
# ============================================================

All structural entities must
be defined as models.

Models define canonical truth.

Runtime implementations
must follow models.



--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/0300_MODEL_NUMBERING_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL NUMBERING RULE
# ============================================================

status: canonical
layer: rule
component: model-numbering

owner: Boss
prepared_by: Zero


# MODEL ID STRUCTURE

All models must use a ten-digit identifier.

SSDDDDMMMM


# SYSTEM PREFIX

00 rules
01 foundation
02 civilization
03 persona
04 business
05 life
06 game
07 streaming
08 analytics
09 governance


# DOMAIN RANGE

DDDD defines domain identifier.

0000 – 9999


# MODEL RANGE

MMMM defines model identifier.

0000 – 9999


# NUMBERING PRINCIPLES

Model numbers must be sequential.

Numbers must not be reused.

Deprecated models remain reserved.


# FINAL RULE

Model numbering must remain stable across the entire Civilization System.




--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/0400_DOMAIN_BOUNDARY_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# DOMAIN BOUNDARY RULE
# ============================================================

Each model belongs to exactly
one domain.

Domains

CivilizationOS
PersonaOS
BusinessOS
LifeOS
GameOS
StreamingOS

Cross-domain duplication forbidden.



--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/0400_MODEL_REGISTRY_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL REGISTRY RULE
# ============================================================

status: canonical
layer: rule
component: model-registry

owner: Boss
prepared_by: Zero


# PURPOSE

Define the registry system for all models.


# REGISTRY STRUCTURE

Models must be registered within domain registries.

Example:

2000_CIVILIZATION_CORE_MODEL_REGISTRY
2100_NATION_MODEL_REGISTRY
2200_GOVERNMENT_MODEL_REGISTRY


# REGISTRY FIELDS

model_id
model_name
domain
status
description


# REGISTRY PRINCIPLE

All models must appear in registry documents.

Registry documents represent the authoritative catalog of system models.


# FINAL RULE

No model may exist outside the model registry.




--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/0500_EVENT_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# EVENT RULE
# ============================================================

status: canonical
layer: rule
component: event-rule

owner: Boss
prepared_by: Zero


# EVENT PRINCIPLE

Events represent accepted system facts.


# EVENT STRUCTURE

event_id
event_type
event_version
issued_at
source_command
payload


# EVENT IMMUTABILITY

Events must be immutable.

Historical events must never be rewritten.


# FINAL RULE

System state must be derived from event history.




--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/0500_MODEL_EVOLUTION_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL EVOLUTION RULE
# ============================================================

Models evolve through versioning.

Breaking change requires

migration
compatibility planning
audit record.



--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/0600_COMMAND_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# COMMAND RULE
# ============================================================

status: canonical
layer: rule
component: command-rule

owner: Boss
prepared_by: Zero


# COMMAND PRINCIPLE

Commands represent intended actions.


# COMMAND FLOW

Command
↓
Validation
↓
Authorization
↓
Event transformation


# COMMAND STRUCTURE

command_id
command_type
issuer
issued_at
target_scope
intent_payload
trace_id


# FINAL RULE

Commands must never mutate system state directly.




--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/0600_EVENT_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# EVENT RULE
# ============================================================

Civilization operates
as an event-driven system.

Command
↓
Event
↓
State

Events are immutable facts.



--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/0700_COMMAND_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# COMMAND RULE
# ============================================================

Commands represent intent.

Commands must pass

validation
authorization
approval if required.

Commands never mutate state.



--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/0700_DATA_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# DATA RULE
# ============================================================

status: canonical
layer: rule
component: data-rule

owner: Boss
prepared_by: Zero


# DATA PRINCIPLE

All data must remain auditable.


# DATA STORAGE

Primary stores:

event_store
snapshot_store
audit_log


# DATA INTEGRITY

All state transitions must be traceable through event history.


# FINAL RULE

Data mutation without event trace is prohibited.




--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/0800_DATA_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# DATA RULE
# ============================================================

All persistent data must follow
canonical models.

Schema drift is prohibited.



--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/0800_SECURITY_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# SECURITY RULE
# ============================================================

status: canonical
layer: rule
component: security-rule

owner: Boss
prepared_by: Zero


# SECURITY PRINCIPLE

All actions must be authenticated and auditable.


# SECURITY COMPONENTS

identity verification
signature validation
access control
audit logging


# FINAL RULE

Unauthorized mutation must be impossible.




--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/0900_GOVERNANCE_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# GOVERNANCE RULE
# ============================================================

status: canonical
layer: rule
component: governance-rule

owner: Boss
prepared_by: Zero


# GOVERNANCE PRINCIPLE

Critical actions require explicit approval.


# APPROVAL FLOW

request
review
decision
execution


# FINAL RULE

High impact operations must never execute without governance approval.




--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/0900_SECURITY_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# SECURITY RULE
# ============================================================

Security principles

fail closed
explicit trust
signature validation
audit logging



--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/1000_GOVERNANCE_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# GOVERNANCE RULE
# ============================================================

High impact operations
must require approval.

Governance domains

policy
approval
control



--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/1100_DESIGN_DOCUMENT_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# DESIGN DOCUMENT RULE
# ============================================================

status: canonical
layer: rule
component: design-document-rule

owner: Boss
prepared_by: Zero


# DOCUMENT PRINCIPLE

Design documents represent system structure.


# DOCUMENT REQUIREMENTS

status
component
owner
prepared_by


# LANGUAGE

Design documents must be written in English.


# FINAL RULE

All system structures must be documented.




--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/1100_DEVELOPMENT_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# DEVELOPMENT RULE
# ============================================================

Engineering standards

migration safety
test discipline
deployment traceability.



--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/1200_BIBLE_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# BIBLE RULE
# ============================================================

status: canonical
layer: rule
component: bible-rule

owner: Boss
prepared_by: Zero


# BIBLE PRINCIPLE

Bible documents represent integrated canonical knowledge.


# BIBLE STRUCTURE

A bible may include:

architecture
models
rules
runtime specifications
design documents


# FINAL RULE

Bible documents must remain consistent with canonical rules.




--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/1200_DESIGN_DOCUMENT_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# DESIGN DOCUMENT RULE
# ============================================================

Design documents must follow
canonical documentation standards.



--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/1300_BIBLE_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# BIBLE RULE
# ============================================================

Bible documents may contain
narrative sections describing
philosophy and worldview.



--------------------------------------------------------------------------------
FILE: 91.rules/999.archive/rules_root_cleanup_20260321_170525/root-legacy-rules/1400_MODEL_REGISTRY_RULE.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL REGISTRY RULE
# ============================================================

All models must be registered
in the Model Master Map.

Unregistered models
are non-canonical.

