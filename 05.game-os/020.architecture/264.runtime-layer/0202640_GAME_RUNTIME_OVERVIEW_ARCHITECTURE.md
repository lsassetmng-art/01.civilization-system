# ============================================================
# GAME RUNTIME OVERVIEW ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official Runtime Layer of GameOS.

The Runtime Layer is a core subsystem of GameOS.
It is not an external tool.
It is an internal OS capability that defines
how builder-authored games behave at execution time.

The Runtime Layer exists above GameOS Core
and below Game Builder.

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
- genre runtime behavior
- ruleset execution semantics
- progression semantics
- branch semantics
- battle semantics
- score semantics
- turn semantics
- stage semantics
- map semantics
- runtime-safe export targets

Game Builder manages:
- project editing
- template selection
- asset binding
- preview
- validation
- export
- submission

Builder depends on Runtime.
Runtime does not depend on Builder.


# ============================================================
# 1. POSITION IN GAMEOS
# ============================================================

dependency_order:
GameOS Core
-> Runtime Layer
-> Builder Layer

Runtime must be treated as an internal OS layer.

Runtime is responsible for defining
what kinds of games can exist safely in GameOS.

Builder is responsible for allowing creators
to author games that conform to Runtime rules.


# ============================================================
# 2. RUNTIME LAYER GOALS
# ============================================================

The Runtime Layer must provide:

1. predictable behavior
2. reusable genre families
3. validation-friendly structure
4. template compatibility
5. export safety
6. sync-safe execution semantics
7. publish-safe behavior boundaries

The Runtime Layer must not depend on
arbitrary handwritten runtime logic from creators.

Primary design principle:

declarative runtime first  
custom override second  
unsafe freedom never


# ============================================================
# 3. OFFICIAL RUNTIME FAMILIES
# ============================================================

Initial official runtime families:

- visual novel runtime
- dating simulation runtime
- rpg runtime
- puzzle runtime
- strategy runtime

Future runtime families may be added,
but each must be explicitly approved by GameOS.

Each runtime family must define:

- progression model
- state model
- event model
- validation model
- export model
- preview model
- sync interaction model


# ============================================================
# 4. RUNTIME FAMILY RESPONSIBILITIES
# ============================================================

## 4.1 VISUAL NOVEL / DATING RUNTIME

Must define:
- scene progression
- dialogue execution
- branch condition execution
- affection / relationship progression
- ending resolution
- sandbox-safe preview behavior

## 4.2 RPG RUNTIME

Must define:
- map and area progression
- quest execution
- npc event progression
- battle resolution model
- inventory and reward behavior
- save continuity model

## 4.3 PUZZLE RUNTIME

Must define:
- stage lifecycle
- clear/fail conditions
- score calculation
- retry behavior
- reward and ranking interaction
- deterministic validation boundaries

## 4.4 STRATEGY RUNTIME

Must define:
- turn lifecycle
- unit action boundaries
- resource progression
- building state progression
- victory / defeat conditions
- map state continuity


# ============================================================
# 5. SHARED RUNTIME COMPONENTS
# ============================================================

All runtime families must bind to shared GameOS runtime components.

Shared components include:

- ruleset profile
- runtime profile
- validation rule set
- preview safety mode
- export compatibility profile
- sync adjudication compatibility
- entitlement continuity compatibility

No runtime family may bypass these shared components.


# ============================================================
# 6. RUNTIME EXECUTION PRINCIPLE
# ============================================================

GameOS Runtime is declarative.

Creators do not directly define executable engine code
as the primary model.

Creators define:

- content
- ruleset parameters
- asset bindings
- progression structures
- allowed override values

GameOS Runtime interprets those declarations.

This guarantees:

- consistent validation
- consistent publish pipeline
- consistent sync handling
- reduced exploit surface
- reduced runtime fragmentation


# ============================================================
# 7. RUNTIME AND BUILDER RELATION
# ============================================================

Builder must consume Runtime definitions.

Builder must not invent behavior outside Runtime.

Builder responsibilities:
- expose runtime-approved edit zones
- expose template-approved edit zones
- prevent invalid structural mutation
- preview using runtime sandbox
- export runtime-compatible package

Runtime responsibilities:
- define allowed structures
- define execution semantics
- define required metadata
- define allowed overrides
- define validation boundaries

Builder is an authoring layer.
Runtime is an execution-definition layer.


# ============================================================
# 8. RUNTIME AND PERSONA RELATION
# ============================================================

Runtime may interact with PersonaOS through approved bindings only.

Allowed Persona-facing usage:
- approved character presentation
- approved dialogue style shaping
- approved reaction profile shaping
- approved identity-linked cast behavior

Prohibited:
- Persona truth overwrite
- unrestricted trust bypass
- unrestricted growth mutation
- unrestricted private memory use

Runtime must treat Persona as external truth.

Persona truth belongs to PersonaOS.
Game execution truth belongs to GameOS.


# ============================================================
# 9. RUNTIME AND SYNC RELATION
# ============================================================

Runtime must define what parts of execution
are allowed to become submit-worthy sync records.

Examples:
- save snapshot candidate
- ranking candidate
- achievement candidate
- replay candidate
- telemetry candidate

Runtime must never directly mark client-side output
as final truth.

All externally submitted runtime outcomes remain untrusted
until GameOS sync adjudication accepts them.


# ============================================================
# 10. RUNTIME AND EXPORT RELATION
# ============================================================

Runtime must define export-safe structure.

An export package must always resolve to:

- one runtime family
- one runtime profile
- one ruleset profile
- one compatibility profile
- one required asset family set

No export package may remain runtime-ambiguous.

No publishable package may bind to multiple active
runtime families at once.


# ============================================================
# 11. RUNTIME SAFETY RULE
# ============================================================

Runtime must remain safe for:

- preview
- export
- validation
- publish
- sync
- entitlement continuity
- title transfer continuity

Unsafe runtime freedom is prohibited.

Examples of prohibited runtime behavior:
- arbitrary code execution
- unrestricted filesystem behavior
- unrestricted network behavior
- unrestricted economy mutation
- unrestricted ranking mutation
- unrestricted entitlement mutation
- unrestricted Persona mutation


# ============================================================
# 12. RUNTIME CUSTOMIZATION RULE
# ============================================================

Customization is allowed only through:

- runtime-approved parameters
- runtime-approved templates
- runtime-approved ruleset overrides
- runtime-approved asset family bindings

Customization is not allowed through:
- arbitrary engine mutation
- arbitrary schema mutation
- arbitrary lifecycle mutation

This rule keeps Builder approachable
and keeps platform behavior stable.


# ============================================================
# 13. RUNTIME VALIDATION PRINCIPLE
# ============================================================

Every runtime family must support three validation levels:

1. editing validation
2. export validation
3. publish validation

Runtime must declare:
- blocking conditions
- warning conditions
- compatibility conditions

A Builder project cannot be exported
unless runtime validation passes.


# ============================================================
# 14. RUNTIME PUBLISH PRINCIPLE
# ============================================================

Publish is not a Builder-side decision.
Publish is a GameOS lifecycle decision.

Runtime contributes:
- execution compatibility
- metadata completeness
- export compatibility
- validation compatibility

GameOS publish pipeline decides:
- release acceptance
- moderation outcome
- rollout activation


# ============================================================
# 15. OFFICIAL INITIAL SCOPE
# ============================================================

Initial runtime rollout should focus on:

- VN / dating
- RPG
- Puzzle
- Strategy

Reason:
These families are template-friendly,
validation-friendly,
and strong matches for Builder-first creation.

Action-heavy unrestricted runtime families
should not be first priority.


# ============================================================
# 16. FINAL ARCHITECTURAL RULE
# ============================================================

GameOS Runtime is part of GameOS itself.

It is the official execution-definition layer
that sits between GameOS Core and Game Builder.

Core summary:

GameOS Core owns platform truth.
Runtime owns game behavior truth.
Builder owns authoring flow.
PersonaOS owns Persona truth.

This separation is mandatory.
