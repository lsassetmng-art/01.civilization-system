# ============================================================
# PERSONA OS IMPLEMENTATION FULL
# ============================================================

--------------------------------------------------------------------------------
FILE: 120.implementation/020.engine/1200100001_PERSONA_ENGINE_IMPLEMENTATION.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA ENGINE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation

# PURPOSE
Defines implementation structure of Persona Engine.

# COMPONENTS

EngineCoordinator
EventReceiver
ContextResolver
ReasoningProcessor
DecisionProcessor
BehaviorDispatcher
MemoryWriter
StateSynchronizer

# EXECUTION LOOP

receive event
→ resolve context
→ run reasoning
→ generate decision
→ dispatch behavior
→ write memory
→ update state


--------------------------------------------------------------------------------
FILE: 120.implementation/030.cognition/1200200001_PERSONA_COGNITION_IMPLEMENTATION.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA COGNITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation

# PURPOSE
Defines cognition module implementation.

# COMPONENTS

PerceptionProcessor
AttentionResolver
ReasoningProcessor
DecisionEvaluator
PlanningSupport


--------------------------------------------------------------------------------
FILE: 120.implementation/040.behavior/1200300001_PERSONA_BEHAVIOR_IMPLEMENTATION.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA BEHAVIOR IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation

# PURPOSE
Defines behavior execution modules.

# COMPONENTS

BehaviorSelector
ConstraintChecker
ActionDispatcher
TaskExecutor
BehaviorResultEmitter


--------------------------------------------------------------------------------
FILE: 120.implementation/050.external/1200400001_PERSONA_EXTERNAL_RELEASE_SPEC.md
--------------------------------------------------------------------------------

# PERSONA EXTERNAL RELEASE SPEC

status: canonical
layer: implementation
domain: external_rights
owner: Boss
prepared_by: Zero

## PURPOSE
Specify implementation behavior for external release issuance.

## REQUIREMENTS
- deterministic release code
- signature-ready payload
- revocation support
- mirrorable metadata export


--------------------------------------------------------------------------------
FILE: 120.implementation/050.external/1200400002_PERSONA_LICENSE_SPEC.md
--------------------------------------------------------------------------------

# PERSONA LICENSE SPEC

status: canonical
layer: implementation
domain: external_rights
owner: Boss
prepared_by: Zero

## REQUIREMENTS
- explicit license code
- effective period support
- scope support
- revocation support
- transferability flag


--------------------------------------------------------------------------------
FILE: 120.implementation/050.external/1200400003_PERSONA_ACCESS_GRANT_SPEC.md
--------------------------------------------------------------------------------

# PERSONA ACCESS GRANT SPEC

status: canonical
layer: implementation
domain: external_rights
owner: Boss
prepared_by: Zero

## REQUIREMENTS
- holder resolution
- access scope resolution
- expiration enforcement
- revocation enforcement
- mirrorable current state


--------------------------------------------------------------------------------
FILE: 120.implementation/050.external/1200400004_PERSONA_TRANSFER_SPEC.md
--------------------------------------------------------------------------------

# PERSONA TRANSFER SPEC

status: canonical
layer: implementation
domain: external_rights
owner: Boss
prepared_by: Zero

## REQUIREMENTS
- transfer request record
- approval decision record
- constraint validation
- resulting rights state update


--------------------------------------------------------------------------------
FILE: 120.implementation/050.external/1200400005_PERSONA_PACKAGE_SPEC.md
--------------------------------------------------------------------------------

# PERSONA PACKAGE SPEC

status: canonical
layer: implementation
domain: external_rights
owner: Boss
prepared_by: Zero

## REQUIREMENTS
- package metadata
- package item manifest
- package release state
- package distribution visibility


--------------------------------------------------------------------------------
FILE: 120.implementation/060.memory/1200410001_PERSONA_MEMORY_IMPLEMENTATION.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA MEMORY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation

# PURPOSE
Defines memory subsystem implementation.

# COMPONENTS

MemoryStore
MemoryRetriever
ExperienceRecorder
MemoryIndexer


--------------------------------------------------------------------------------
FILE: 120.implementation/070.communication/1200500001_PERSONA_COMMUNICATION_IMPLEMENTATION.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA COMMUNICATION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation

# PURPOSE
Defines communication modules.

# COMPONENTS

MessageReceiver
IntentResolver
DialogueManager
ResponseGenerator
ResponseDispatcher


--------------------------------------------------------------------------------
FILE: 120.implementation/080.social/1200600001_PERSONA_SOCIAL_IMPLEMENTATION.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA SOCIAL IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation

# PURPOSE
Defines social interaction modules.

# COMPONENTS

RelationshipManager
TrustManager
InteractionRecorder
GroupManager


--------------------------------------------------------------------------------
FILE: 120.implementation/090.learning/1200700001_PERSONA_LEARNING_IMPLEMENTATION.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA LEARNING IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation

# PURPOSE
Defines learning modules.

# COMPONENTS

FeedbackInterpreter
KnowledgeUpdater
CapabilityUpdater
StrategyUpdater
LearningStateManager


--------------------------------------------------------------------------------
FILE: 120.implementation/110.visual/ANIMATION_RUNTIME_MODEL_CANONICAL.md
--------------------------------------------------------------------------------

# ============================================================
# ANIMATION RUNTIME MODEL
# ============================================================

status: canonical
system: Civilization
component: animation-runtime

owner: Boss
prepared_by: Zero


PURPOSE

Define the animation runtime model used by visual-runtime.

The animation runtime extends static layer composition
into time-based rendering.


ROLE

Animation runtime controls

frame progression
expression resolution
parametric state update
rig application
frame rendering


MAIN FLOW

Animation Request
↓
Frame Loop
↓
Expression Resolve
↓
Parametric State Update
↓
Rig Solve
↓
Layer Transform Apply
↓
Frame Render
↓
Output Frame


CORE COMPONENTS

FrameLoop
ExpressionResolver
ParametricController
RigSolver
FrameRenderEngine
RigFrameRenderEngine
AudioAmplitudeProvider
LayersJsonProvider


FRAME LOOP

FrameLoop controls time progression.

Responsibilities

tick progression
frame timing
loop control
playback state


EXPRESSION RESOLVER

ExpressionResolver selects visual state
for the current moment.

Examples

idle
blink
talk
reaction
emotion expression


PARAMETRIC STATE

Parametric state represents runtime values
used for animation and rigging.

Examples

head angle
eye openness
mouth openness
emotion intensity
body sway


RIG SOLVER

RigSolver transforms parametric state
into layer transforms.

Output

translation
scale
rotation
alpha adjustment


LAYER TRANSFORM

Animation runtime applies transforms
to each layer before final rendering.


FRAME RENDER ENGINE

FrameRenderEngine renders per-frame output
using the standard compose pipeline.

Responsibilities

frame composition
layer application
bitmap output


RIG FRAME RENDER ENGINE

RigFrameRenderEngine is the animation path
that includes rig solving before rendering.


AUDIO REACTION

AudioAmplitudeProvider may influence animation.

Examples

mouth movement
voice sync
talk animation


ANIMATION TYPES

idle animation
blink animation
talk animation
reaction animation
emotion animation


OUTPUT

single bitmap frame
frame sequence
future animated stream


DESIGN PRINCIPLE

Animation runtime must remain compatible
with the standard visual-runtime layer model.

Static rendering and animated rendering
must share the same asset and layer structure.


APPLICATION USAGE

PocketSecretary
Streaming
Game
Creator tools


SUMMARY

Animation runtime turns visual-runtime
from a static compositor into a
time-based scene animation engine.



--------------------------------------------------------------------------------
FILE: 120.implementation/110.visual/ASSET_SOURCE_MODEL_CANONICAL.md
--------------------------------------------------------------------------------

# ============================================================
# ASSET SOURCE MODEL
# ============================================================

status: canonical
system: Civilization
component: asset-source


PURPOSE

Define asset source abstraction.


SOURCE INTERFACE

AssetSource
 ├ resolve asset
 ├ fetch asset
 └ return file


IMPLEMENTATIONS

SupabaseAssetSource
LocalFileAssetSource
CacheAssetSource


RULE

Rendering must not depend directly on
storage provider implementation.



--------------------------------------------------------------------------------
FILE: 120.implementation/110.visual/CACHE_MODEL_CANONICAL.md
--------------------------------------------------------------------------------

# ============================================================
# CACHE MODEL
# ============================================================

status: canonical
system: Civilization
component: runtime-cache


PURPOSE

Define caching layers.


CACHE TYPES

download cache
decoded bitmap cache
frame cache
output cache


RULE

Cache responsibilities must be separated
from rendering logic.



--------------------------------------------------------------------------------
FILE: 120.implementation/110.visual/LAYER_MODEL_CANONICAL.md
--------------------------------------------------------------------------------

# ============================================================
# LAYER MODEL
# ============================================================

status: canonical
system: Civilization
component: layer-model


PURPOSE

Define layer representation.


LAYER TYPES

BACKGROUND
PERSONA_BASE
PERSONA_PART
CLOTHING
EFFECT
OVERLAY


ATTRIBUTES

layer_id
layer_type
bucket
path
z
x
y
scale
rotation
alpha
blend


RULE

All visual elements must be represented as layers.

Background is handled as layer with lowest z.



--------------------------------------------------------------------------------
FILE: 120.implementation/110.visual/POCKETSECRETARY_RUNTIME_INTEGRATION_CANONICAL.md
--------------------------------------------------------------------------------

# ============================================================
# POCKETSECRETARY RUNTIME INTEGRATION
# ============================================================

status: canonical
system: Civilization
application: PocketSecretary


PURPOSE

Define integration between PocketSecretary
and visual-runtime.


RESPONSIBILITY

PocketSecretary

select persona
select background
request render
display result


visual-runtime

parse manifest
resolve layers
fetch assets
compose bitmap
render output


RULE

PocketSecretary must not implement
its own composition engine.

visual-runtime is the only renderer.



--------------------------------------------------------------------------------
FILE: 120.implementation/110.visual/SCENE_RUNTIME_MODEL_CANONICAL.md
--------------------------------------------------------------------------------

# ============================================================
# SCENE RUNTIME MODEL
# ============================================================

status: canonical
system: Civilization
component: scene-runtime


PURPOSE

Define scene structure used by visual-runtime.


SCENE STRUCTURE

scene
 ├ background
 ├ persona
 ├ objects
 ├ effects
 └ overlay


RENDER ORDER

BACKGROUND
PERSONA_BASE
PERSONA_PART
CLOTHING
EFFECT
OVERLAY


SCENE OUTPUT

PNG
bitmap frame
future animation frames



--------------------------------------------------------------------------------
FILE: 120.implementation/110.visual/VISUAL_RUNTIME_ARCHITECTURE_CANONICAL.md
--------------------------------------------------------------------------------

# ============================================================
# VISUAL RUNTIME ARCHITECTURE
# ============================================================

status: canonical
system: Civilization
component: visual-runtime

owner: Boss
prepared_by: Zero


PURPOSE

Define the architecture of the shared
visual rendering runtime.


ROLE

visual-runtime is the shared rendering engine for

PocketSecretary
Streaming
Game
Creator


RUNTIME PIPELINE

Scene Request
↓
Manifest Parse
↓
Layer Resolve
↓
Asset Fetch
↓
Bitmap Decode
↓
Layer Compose
↓
Frame Render
↓
Output


MAIN MODULES

api
compose
manifest
render
anim
rig
source
cache
model
error
util


PRINCIPLE

Runtime must remain independent from applications.

Applications host the runtime.
Runtime performs rendering.



--------------------------------------------------------------------------------
FILE: 120.implementation/1200000_IMPLEMENTATION_INDEX.md
--------------------------------------------------------------------------------

120.implementation/020.engine/1200100001_PERSONA_ENGINE_IMPLEMENTATION.md
120.implementation/030.cognition/1200200001_PERSONA_COGNITION_IMPLEMENTATION.md
120.implementation/040.behavior/1200300001_PERSONA_BEHAVIOR_IMPLEMENTATION.md
120.implementation/050.external/1200400001_PERSONA_EXTERNAL_RELEASE_SPEC.md
120.implementation/050.external/1200400002_PERSONA_LICENSE_SPEC.md
120.implementation/050.external/1200400003_PERSONA_ACCESS_GRANT_SPEC.md
120.implementation/050.external/1200400004_PERSONA_TRANSFER_SPEC.md
120.implementation/050.external/1200400005_PERSONA_PACKAGE_SPEC.md
120.implementation/060.memory/1200410001_PERSONA_MEMORY_IMPLEMENTATION.md
120.implementation/070.communication/1200500001_PERSONA_COMMUNICATION_IMPLEMENTATION.md
120.implementation/080.social/1200600001_PERSONA_SOCIAL_IMPLEMENTATION.md
120.implementation/090.learning/1200700001_PERSONA_LEARNING_IMPLEMENTATION.md
120.implementation/110.visual/ANIMATION_RUNTIME_MODEL_CANONICAL.md
120.implementation/110.visual/ASSET_SOURCE_MODEL_CANONICAL.md
120.implementation/110.visual/CACHE_MODEL_CANONICAL.md
120.implementation/110.visual/LAYER_MODEL_CANONICAL.md
120.implementation/110.visual/POCKETSECRETARY_RUNTIME_INTEGRATION_CANONICAL.md
120.implementation/110.visual/SCENE_RUNTIME_MODEL_CANONICAL.md
120.implementation/110.visual/VISUAL_RUNTIME_ARCHITECTURE_CANONICAL.md
120.implementation/1200000_IMPLEMENTATION_INDEX.md
120.implementation/1200001_IMPLEMENTATION_OVERVIEW.md
120.implementation/1200002_PERSONA_EDGE_FUNCTION_SPEC.md
120.implementation/1200003_PERSONA_STATE_APPLY_SPEC.md
120.implementation/1200004_PERSONA_VISUAL_COMPOSE_SPEC.md
120.implementation/1200005_PERSONA_SNAPSHOT_ISSUE_SPEC.md
120.implementation/1200006_PERSONA_SIGNATURE_SPEC.md
120.implementation/1200007_PERSONA_EVENT_SIGNATURE_SPEC.md
120.implementation/1200008_PERSONA_ASSET_GENERATION_SPEC.md
120.implementation/1200009_PERSONA_CAPABILITY_SPEC.md
120.implementation/1200010_PERSONA_POLICY_SPEC.md
120.implementation/130.builder/1200700001_PERSONA_BUILDER_IMPLEMENTATION.md
120.implementation/130.builder/1200700002_PERSONA_BUILDER_API_SPEC.md
120.implementation/130.builder/1200700003_PERSONA_BUILDER_STORAGE_MAPPING.md
120.implementation/140.lifecycle/1200800001_PERSONA_LIFECYCLE_IMPLEMENTATION.md
120.implementation/180.system/1200900001_PERSONA_SYSTEM_IMPLEMENTATION.md


--------------------------------------------------------------------------------
FILE: 120.implementation/1200001_IMPLEMENTATION_OVERVIEW.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA OS IMPLEMENTATION OVERVIEW
# ============================================================

Implementation layer defines the
technical implementation of PersonaOS.

Includes:

Edge Functions
Signature engine
Snapshot issuing
Asset generation
Event signing



--------------------------------------------------------------------------------
FILE: 120.implementation/1200002_PERSONA_EDGE_FUNCTION_SPEC.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EDGE FUNCTION SPEC
# ============================================================

status: canonical
layer: implementation
component: persona-edge

owner: Boss
prepared_by: Zero

# PURPOSE

Define all Edge Functions used by PersonaOS.

PersonaOS uses Supabase Edge Functions
as execution units for runtime operations.

# EDGE FUNCTIONS

Lifecycle
- persona-create
- persona-event-log-get

Runtime
- persona-state-apply

Visual
- visual-generation-job-create
- visual-compose
- visual-render-result-commit

Security
- sign-event
- snapshot-issue
- snapshot-verify
- snapshot-revoke
- snapshot-revocation-list

Asset
- ai-part-generate
- persona-background-get-signed-urls
- build-character-manifest

Approval
- approval-create
- approval-decision
- approval-effect

# EXECUTION PRINCIPLES

All functions must follow:

fail-closed execution
idempotent behavior
signed events
explicit audit logging



--------------------------------------------------------------------------------
FILE: 120.implementation/1200003_PERSONA_STATE_APPLY_SPEC.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA STATE APPLY SPEC
# ============================================================

status: canonical
component: persona-state-apply

owner: Boss
prepared_by: Zero

# PURPOSE

Apply signed civilization events
to persona state.

# PROCESS

1 receive event
2 verify signature
3 validate schema
4 confirm persona existence
5 apply state mutation
6 store growth_events
7 optional snapshot trigger

# SAFETY RULES

idempotent execution required
duplicate events must not break state
invalid signatures must be rejected



--------------------------------------------------------------------------------
FILE: 120.implementation/1200004_PERSONA_VISUAL_COMPOSE_SPEC.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA VISUAL COMPOSE SPEC
# ============================================================

status: canonical
component: persona-visual-compose

owner: Boss
prepared_by: Zero

# PURPOSE

Build canonical visual manifest
for persona appearance.

# PROCESS

visual-generation-job-create
↓
visual-compose
↓
layer resolution
↓
manifest generation
↓
client rendering
↓
visual-render-result-commit

# MANIFEST STRUCTURE

manifest contains:

layers
asset references
hash
version metadata



--------------------------------------------------------------------------------
FILE: 120.implementation/1200005_PERSONA_SNAPSHOT_ISSUE_SPEC.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA SNAPSHOT ISSUE SPEC
# ============================================================

status: canonical
component: persona-snapshot-issue

owner: Boss
prepared_by: Zero

# PURPOSE

Create a signed snapshot
representing persona state.

# SNAPSHOT CONTENT

persona identity
growth state
visual identity
metadata

# PROCESS

build canonical json
calculate hash
sign using Ed25519
store snapshot record

# PROPERTIES

snapshot is immutable
multiple snapshots may coexist
snapshot represents a point-in-time proof



--------------------------------------------------------------------------------
FILE: 120.implementation/1200006_PERSONA_SIGNATURE_SPEC.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA SIGNATURE SPEC
# ============================================================

status: canonical
component: persona-signature

owner: Boss
prepared_by: Zero

# PURPOSE

Define cryptographic signature rules
for PersonaOS.

# ALGORITHM

Ed25519

# SIGNED OBJECTS

events
snapshots

# PROCESS

canonical JSON generation
hash calculation
signature generation
signature verification

# SECURITY PRINCIPLES

keys must be controlled
verification must be deterministic
invalid signatures must fail execution



--------------------------------------------------------------------------------
FILE: 120.implementation/1200007_PERSONA_EVENT_SIGNATURE_SPEC.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EVENT SIGNATURE SPEC
# ============================================================

status: canonical
component: persona-event-signature

owner: Boss
prepared_by: Zero

# PURPOSE

Ensure all external events
entering PersonaOS are signed.

# EVENT FLOW

event created
↓
canonical JSON
↓
Ed25519 signature
↓
verification before runtime apply

# FAILURE POLICY

invalid signature
→ reject event



--------------------------------------------------------------------------------
FILE: 120.implementation/1200008_PERSONA_ASSET_GENERATION_SPEC.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA ASSET GENERATION SPEC
# ============================================================

status: canonical
component: persona-asset-generation

owner: Boss
prepared_by: Zero

# PURPOSE

Generate persona visual assets.

# SOURCES

AI generation
preset parts
external import

# PROCESS

generate asset
validate license
register asset
store metadata

# APPROVAL

certain assets require approval
before public use.



--------------------------------------------------------------------------------
FILE: 120.implementation/1200009_PERSONA_CAPABILITY_SPEC.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA CAPABILITY SPECIFICATION
# ============================================================

status: canonical
component: persona-os
document: persona-capability-spec

owner: Boss
prepared_by: Zero


# PURPOSE

Provide implementation specification
for persona capability management.


# CAPABILITY STRUCTURE

capability_id
capability_domain
capability_scope
capability_level


# CAPABILITY TYPES

core
assigned
learned
restricted


# CAPABILITY UPDATE

Capability updates must be logged
and traceable.




--------------------------------------------------------------------------------
FILE: 120.implementation/1200010_PERSONA_POLICY_SPEC.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA POLICY SPECIFICATION
# ============================================================

status: canonical
component: persona-os
document: persona-policy-spec

owner: Boss
prepared_by: Zero


# PURPOSE

Provide implementation specification
for policy enforcement.


# POLICY STRUCTURE

policy_id
policy_scope
policy_rule
policy_effect


# POLICY APPLICATION

Policies must be enforced
during runtime execution.


# POLICY SOURCE

system policy
organization policy
security policy




--------------------------------------------------------------------------------
FILE: 120.implementation/130.builder/1200700001_PERSONA_BUILDER_IMPLEMENTATION.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA BUILDER IMPLEMENTATION
# ============================================================

status: canonical
scope: persona.builder.implementation
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the implementation structure
for Persona Builder inside PersonaOS.


# IMPLEMENTATION ROLE

Implementation must realize:

- draft storage
- section editing
- validation invocation
- approval request invocation
- publish preparation invocation
- audit persistence


# IMPLEMENTATION PRINCIPLE

Implementation must preserve:

- truth boundary separation
- validation/approval/publish gating
- fail-closed transitions
- auditable action trails
- runtime separation from visual rendering


# RECOMMENDED MODULES

- builder-draft-service
- builder-section-service
- builder-validation-service
- builder-approval-service
- builder-publish-service
- builder-audit-service
- builder-access-service


# STORAGE RULE

Builder storage must be separate
from final Persona mutable truth storage.

Builder draft persistence must remain explicitly identifiable.


# FINAL DEFINITION

Persona Builder Implementation realizes
the governed authoring subsystem
without collapsing Persona truth authority,
approval authority, or release authority.


--------------------------------------------------------------------------------
FILE: 120.implementation/130.builder/1200700002_PERSONA_BUILDER_API_SPEC.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA BUILDER API SPEC
# ============================================================

status: canonical
scope: persona.builder.api.spec
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the implementation-facing API surfaces
for Persona Builder.


# API DOMAINS

- create draft
- load draft
- save change set
- run validation
- request approval
- prepare publish candidate
- archive draft
- fetch audit trail


# EXAMPLE ENDPOINT FAMILIES

- /persona-builder/drafts
- /persona-builder/drafts/{draft_id}
- /persona-builder/drafts/{draft_id}/changes
- /persona-builder/drafts/{draft_id}/validate
- /persona-builder/drafts/{draft_id}/approval-request
- /persona-builder/drafts/{draft_id}/publish-candidate
- /persona-builder/drafts/{draft_id}/audit


# RULE

All Builder APIs must be:

- actor-attributed
- audit-safe
- fail-closed
- boundary-aware


--------------------------------------------------------------------------------
FILE: 120.implementation/130.builder/1200700003_PERSONA_BUILDER_STORAGE_MAPPING.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA BUILDER STORAGE MAPPING
# ============================================================

status: canonical
scope: persona.builder.storage.mapping
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the storage mapping principles
for Persona Builder models.


# STORAGE OBJECTS

Recommended storage mappings:

- persona_builder_draft
- persona_builder_section_state
- persona_builder_validation_result
- persona_builder_approval_request
- persona_builder_publish_candidate
- persona_builder_asset_binding
- persona_builder_visual_manifest_candidate
- persona_builder_change_set
- persona_builder_audit_record


# RULE

Builder storage must be clearly separated from:

- final persona truth tables
- runtime visual execution state
- snapshot truth tables
- external-rights authority tables


# FINAL DEFINITION

Builder storage exists to support governed authoring progression
and must never be mistaken for final Persona truth storage.


--------------------------------------------------------------------------------
FILE: 120.implementation/140.lifecycle/1200800001_PERSONA_LIFECYCLE_IMPLEMENTATION.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA LIFECYCLE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation

# PURPOSE
Defines persona lifecycle handling.

# COMPONENTS

LifecycleManager
GoalUpdater
StateTransitionManager


--------------------------------------------------------------------------------
FILE: 120.implementation/180.system/1200900001_PERSONA_SYSTEM_IMPLEMENTATION.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA SYSTEM IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation

# PURPOSE
Defines system level modules.

# COMPONENTS

RuntimeCoordinator
OperationDispatcher
SystemLogger


