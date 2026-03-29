# ============================================================
# GAME BUILDER OVERVIEW ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official Builder Layer of GameOS.

The Builder Layer is a core subsystem of GameOS.
It is not an external convenience tool.
It is an internal OS capability that allows creators
to author runtime-compliant games for GameOS distribution.

The Builder Layer exists above GameOS Runtime Layer
and below the publish / submission lifecycle.

GameOS Core manages:
- title
- release
- package
- distribution
- entitlement
- device delivery
- sync
- ranking
- achievement
- marketplace linkage

GameOS Runtime Layer manages:
- runtime family behavior
- ruleset semantics
- mutation boundaries
- preview safety
- export contract semantics

GameOS Builder Layer manages:
- template selection
- project authoring
- content block editing
- asset binding
- asset editing
- preview launching
- validation invocation
- export package creation
- submission creation

Builder depends on Runtime.
Runtime does not depend on Builder.


# ============================================================
# 1. POSITION IN GAMEOS
# ============================================================

dependency_order:
GameOS Core
-> Runtime Layer
-> Builder Layer
-> Submission / Publish Flow

Builder must be treated as an internal GameOS layer.

Builder is responsible for turning creator intent
into runtime-compliant project state.

Builder must not define new runtime behavior.
Builder must consume approved runtime surfaces only.


# ============================================================
# 2. BUILDER LAYER GOALS
# ============================================================

The Builder Layer must provide:

1. low-friction authoring
2. template-driven creation
3. structured editing
4. safe customization
5. runtime-compliant preview
6. export-ready project freezing
7. submission-ready handoff

The Builder Layer must prioritize:

- fast first success
- clear state visibility
- low structural error rate
- explicit save and export boundaries
- validation-friendly workflows

Primary design principle:

template first  
structure before freedom  
save is not publish


# ============================================================
# 3. OFFICIAL RESPONSIBILITY OF BUILDER
# ============================================================

Builder is responsible for:

- project creation
- template cloning into project state
- block-based content editing
- allowed-zone editing
- asset binding
- non-Persona material asset editing
- preview session launching
- validation requests
- export package requests
- publish submission requests

Builder is not responsible for:

- final publish approval
- final entitlement issuance
- final commerce truth
- final ranking truth
- final achievement truth
- Persona truth mutation
- seller mutation
- marketplace finality


# ============================================================
# 4. OFFICIAL BUILDER DOMAINS
# ============================================================

The Builder Layer must contain the following domains:

- project domain
- template domain
- editor domain
- asset studio domain
- preview domain
- validation domain
- export domain
- submission domain
- collaboration domain
- autosave / revision domain

These domains must remain explicit.


# ============================================================
# 5. PROJECT AS PRIMARY AUTHORING UNIT
# ============================================================

The Builder Layer uses project as the primary authoring unit.

A project must be the authoritative Builder-side object
for editing and export preparation.

A project must bind explicitly to:

- workspace
- seller through workspace linkage
- game title
- runtime family
- runtime profile
- ruleset profile
- template profile where applicable
- required asset family set

A project must not remain runtime-ambiguous.


# ============================================================
# 6. TEMPLATE-FIRST CREATION RULE
# ============================================================

Builder creation must begin with template selection.

No blank-engine authoring path is required
for initial official Builder capability.

Template-first creation guarantees:

- lower creator burden
- more stable runtime compliance
- lower export failure rate
- lower moderation noise
- stronger publishability

Builder must support:
- beginner templates
- standard templates
- advanced templates

Template cloning must remain explicit.


# ============================================================
# 7. BLOCK-BASED EDITING RULE
# ============================================================

Builder authoring must be block-based.

A block is the minimum structured editing unit.

Examples by runtime family:

VN:
- scene
- dialogue
- choice
- branch
- ending

RPG:
- area
- npc
- quest
- event
- battle
- reward
- shop

Puzzle:
- stage
- clear condition
- fail condition
- score rule
- reward block

Strategy:
- map
- faction
- unit set
- turn rule
- resource rule
- building rule
- victory rule

Builder must not default to arbitrary freeform data mutation.


# ============================================================
# 8. SAVE MODEL
# ============================================================

Builder must distinguish three save layers:

- working state
- autosave snapshot
- official saved revision

Working state:
temporary UI-local authoring state

Autosave snapshot:
recovery-oriented safe persistence

Official saved revision:
author-confirmed revision eligible for export path

Export must not depend only on autosave state.

Official save and autosave must remain distinct.


# ============================================================
# 9. PREVIEW MODEL
# ============================================================

Builder preview must be sandbox-based.

Preview must consume:
- resolved runtime family
- resolved ruleset profile
- project revision
- approved preview contract assumptions

Preview must not:
- finalize production truth
- mutate Persona truth
- mutate entitlement or commerce truth
- bypass sync adjudication boundaries

Builder preview is a runtime-backed simulation surface,
not a production execution surface.


# ============================================================
# 10. VALIDATION MODEL
# ============================================================

Builder must integrate with runtime validation.

Builder must support:
- editing validation
- export validation
- publish validation

Builder responsibilities:
- trigger validation
- display findings
- show blocking/warning/info grouping
- route creators to failing blocks/assets
- prevent illegal export/submit actions

Builder must not reinterpret runtime policy arbitrarily.


# ============================================================
# 11. EXPORT MODEL
# ============================================================

Builder export is an explicit action.

Export must:
- freeze a revision
- construct export package request
- construct runtime export contract request
- bind asset manifest
- bind validation handoff
- generate export lineage references

Export does not equal publish.

Export does not equal final approval.

Export is the promotion of project state
to a package candidate.


# ============================================================
# 12. SUBMISSION MODEL
# ============================================================

Builder submission is an explicit handoff action.

Submission must require:
- export-ready revision
- passed required validation
- workspace linkage
- title linkage
- release target readiness

Submission creates:
- submission request
- validation bundle handoff
- moderation-facing handoff
- publish pipeline entry point

Builder does not directly publish.


# ============================================================
# 13. ASSET STUDIO POSITION
# ============================================================

Asset Studio is part of Builder Layer.

It is responsible for editing non-Persona game material assets.

Examples:
- pixel enemy art
- unit art
- building art
- map props
- icons
- ui material assets

Asset Studio must respect:
- template asset requirements
- runtime family compatibility
- non-Persona boundary rules
- export metadata requirements


# ============================================================
# 14. COLLABORATION MODEL
# ============================================================

Builder collaboration is role-based.

Initial official roles:
- owner
- editor
- reviewer
- publisher

Builder collaboration must support:
- role-aware permissions
- explicit lock strategy
- commentable review surfaces
- publish-role separation

Real-time unrestricted simultaneous mutation
is not required for initial official scope.


# ============================================================
# 15. BUILDER UX PRINCIPLE
# ============================================================

Builder UX must emphasize:

- quick project start
- visible project status
- visible save state
- visible validation state
- visible export state
- visible submission state

Builder must always communicate:
- editing state
- unsaved change state
- autosaved state
- validation failure state
- export readiness state
- submission state


# ============================================================
# 16. PERSONA BOUNDARY
# ============================================================

Builder may consume approved Persona projections only.

Allowed:
- cast projection selection
- dialogue tone shaping options
- approved presentation shaping references

Prohibited:
- Persona truth overwrite
- unrestricted trust access
- unrestricted memory mutation
- unrestricted growth mutation

Builder is not a Persona editor.

Persona truth belongs to PersonaOS.


# ============================================================
# 17. FINAL ARCHITECTURAL RULE
# ============================================================

The Builder Layer is an official GameOS layer.

It is the authoring-definition layer
that sits above Runtime and below Submission / Publish Flow.

Core summary:

GameOS Core owns platform truth.
Runtime owns execution-definition truth.
Builder owns authoring truth.
PersonaOS owns Persona truth.

Builder is template-first,
block-based,
save-aware,
preview-safe,
validation-driven,
and submission-oriented.
