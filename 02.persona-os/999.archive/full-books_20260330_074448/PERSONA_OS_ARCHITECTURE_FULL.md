# ============================================================
# PERSONA OS ARCHITECTURE FULL
# ============================================================

--------------------------------------------------------------------------------
FILE: 020.architecture/010.core/0200100001_PERSONA_LAYER_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA LAYER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

# PURPOSE
Defines architectural layer structure.

# DESCRIPTION
PersonaOS layers:

model
operations
runtime
implementation


--------------------------------------------------------------------------------
FILE: 020.architecture/010.core/0200100002_PERSONA_SYSTEM_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA SYSTEM ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

# PURPOSE
Defines the overall architecture of PersonaOS.

# DESCRIPTION
PersonaOS operates as an agent system
running inside CivilizationOS.

The architecture connects models,
operations and runtime execution.


--------------------------------------------------------------------------------
FILE: 020.architecture/020.engine/0200200001_PERSONA_ENGINE_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA ENGINE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
component: persona-engine

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the implementable architecture
of the Persona Engine.

This document specifies:

- execution responsibility
- subsystem boundaries
- processing order
- state update rules
- dependency direction
- failure handling


# ============================================================
# ROLE
# ============================================================

The Persona Engine is the central
execution core of PersonaOS.

It coordinates:

- event intake
- perception
- reasoning
- decision
- behavior
- memory update
- state synchronization


# ============================================================
# ENGINE RESPONSIBILITIES
# ============================================================

The engine must:

1. receive persona events
2. resolve current persona context
3. invoke cognition pipeline
4. invoke emotion update when required
5. produce decision output
6. dispatch behavior execution
7. persist memory changes
8. update persona runtime state


# ============================================================
# ARCHITECTURAL BOUNDARY
# ============================================================

The Persona Engine does not define:

- database schema
- external API contract
- UI rendering logic
- civilization-level world structures

The Persona Engine defines only
internal persona execution architecture.


# ============================================================
# SUBSYSTEMS
# ============================================================

The engine is composed of
the following subsystems.

event intake
context resolver
perception processor
reasoning processor
decision processor
behavior dispatcher
memory writer
state synchronizer
runtime coordinator


# ============================================================
# DEPENDENCY DIRECTION
# ============================================================

Execution dependency must follow:

event
↓
context
↓
perception
↓
reasoning
↓
decision
↓
behavior
↓
memory
↓
state update

Reverse dependency is forbidden.


# ============================================================
# INPUTS
# ============================================================

The engine accepts the following inputs:

- persona_event
- runtime tick
- internal trigger
- communication input
- social interaction signal
- schedule trigger


# ============================================================
# OUTPUTS
# ============================================================

The engine produces the following outputs:

- persona_decision
- action dispatch
- state update
- memory update
- communication response
- runtime log event


# ============================================================
# EXECUTION MODES
# ============================================================

The engine supports:

1. event-driven execution
2. scheduled execution
3. internal reflex execution

Event-driven execution is the primary mode.


# ============================================================
# EXECUTION STEPS
# ============================================================

Step 1
Receive event

Step 2
Load persona kernel state

Step 3
Resolve active context

Step 4
Evaluate relevant perception signals

Step 5
Run reasoning

Step 6
Evaluate goals and priorities

Step 7
Generate decision

Step 8
Dispatch behavior or communication

Step 9
Write memory artifacts

Step 10
Synchronize persona state


# ============================================================
# STATE ACCESS RULE
# ============================================================

The engine may read:

- persona_state
- persona_memory
- persona_goal
- persona_relationship
- persona_context_state

The engine may update:

- persona_state
- persona_memory
- persona_history
- decision_log
- persona_log


# ============================================================
# FAILURE HANDLING
# ============================================================

If perception fails:
stop downstream execution
and record runtime error.

If reasoning fails:
do not dispatch behavior.

If memory write fails:
retain decision result
but mark persistence degraded.

If state synchronization fails:
engine must fail closed.


# ============================================================
# CONSISTENCY RULE
# ============================================================

A behavior must never be dispatched
without a resolved decision context.

A memory update must never occur
without a source event or source action.

A state update must always occur
after behavior dispatch or explicit no-op decision.


# ============================================================
# IMPLEMENTATION NOTES
# ============================================================

Recommended runtime shape:

EngineCoordinator
ContextResolver
PerceptionProcessor
ReasoningProcessor
DecisionProcessor
BehaviorDispatcher
MemoryWriter
StateSynchronizer

The implementation may separate
these as classes, modules or services,
but architectural responsibility
must remain unchanged.


# ============================================================
# MINIMUM IMPLEMENTABLE LOOP
# ============================================================

persona_event
→ load persona state
→ resolve context
→ run reasoning
→ select decision
→ dispatch action
→ write memory
→ update state


# ============================================================
# STATUS
# ============================================================

This document defines the
implementable architecture
of the Persona Engine.



--------------------------------------------------------------------------------
FILE: 020.architecture/020.engine/0200200002_PERSONA_EVENT_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EVENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

# PURPOSE
Defines event architecture.

# DESCRIPTION
Events drive persona behavior
and system updates.


--------------------------------------------------------------------------------
FILE: 020.architecture/020.engine/0200200003_PERSONA_EVENT_PIPELINE_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EVENT PIPELINE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
component: persona-event-pipeline

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the implementable event pipeline
for PersonaOS.

This document specifies:

- event stages
- event routing
- processing order
- failure points
- persistence expectations


# ============================================================
# ROLE
# ============================================================

The event pipeline moves a persona event
from intake to final state update.

The pipeline is the primary execution route
of PersonaOS.


# ============================================================
# PIPELINE STAGES
# ============================================================

Stage 1
Event intake

Stage 2
Event classification

Stage 3
Context resolution

Stage 4
Cognition processing

Stage 5
Decision generation

Stage 6
Behavior dispatch

Stage 7
Memory persistence

Stage 8
State synchronization

Stage 9
Logging and audit


# ============================================================
# EVENT TYPES
# ============================================================

Supported architectural event classes:

external_input
communication_event
social_event
schedule_event
internal_reflection_event
learning_event
system_event


# ============================================================
# EVENT INTAKE RULE
# ============================================================

Every event entering the pipeline
must contain at minimum:

- event id
- persona id
- event type
- timestamp
- source
- payload reference or payload body

Invalid events must be rejected
before context resolution.


# ============================================================
# CLASSIFICATION RULE
# ============================================================

The pipeline must classify events
before cognition begins.

Classification determines:

- required processors
- priority
- synchronous or deferred handling
- persistence requirement


# ============================================================
# PRIORITY RULE
# ============================================================

Priority order:

1. safety/system event
2. direct communication event
3. explicit scheduled event
4. social interaction event
5. learning/reflection event

Lower priority events must not block
higher priority execution.


# ============================================================
# ROUTING RULE
# ============================================================

The pipeline routes events into
the minimum required processors only.

Examples:

communication_event
→ context
→ reasoning
→ response generation
→ memory
→ state update

schedule_event
→ context
→ goal evaluation
→ planning
→ action dispatch
→ memory
→ state update


# ============================================================
# PROCESSING CONTRACT
# ============================================================

Each stage must satisfy:

input contract
processing contract
output contract
failure contract

No stage may emit implicit side effects
outside its defined output.


# ============================================================
# STATE MUTATION RULE
# ============================================================

Only the final update stages may mutate:

- persona_state
- persona_memory
- persona_history
- runtime logs

Upstream processing stages must remain
pure or side-effect controlled.


# ============================================================
# FAILURE HANDLING
# ============================================================

If event intake fails:
drop event and log rejection.

If classification fails:
route to error log and stop.

If cognition fails:
stop decision generation
and mark event as failed.

If behavior dispatch fails:
write failure record
and do not fake success.

If memory persistence fails:
mark degraded completion.

If state sync fails:
fail closed.


# ============================================================
# IDEMPOTENCY RULE
# ============================================================

The same event id must not be applied twice
to state mutation stages.

Event reprocessing must be
idempotent or explicitly rejected.


# ============================================================
# LOGGING RULE
# ============================================================

The pipeline must log:

- intake accepted/rejected
- stage transitions
- dispatch result
- memory write result
- state sync result
- failure cause


# ============================================================
# IMPLEMENTATION NOTES
# ============================================================

Recommended pipeline modules:

EventReceiver
EventClassifier
ContextResolver
CognitionPipeline
DecisionDispatcher
BehaviorDispatcher
MemoryPersister
StateSynchronizer
PipelineLogger

The implementation may combine modules,
but the stage boundaries must remain explicit.


# ============================================================
# MINIMUM IMPLEMENTABLE PIPELINE
# ============================================================

receive event
→ validate event
→ classify event
→ resolve context
→ run required cognition
→ generate decision
→ dispatch behavior
→ persist memory
→ synchronize state
→ write log


# ============================================================
# STATUS
# ============================================================

This document defines the
implementable event pipeline
for PersonaOS.



--------------------------------------------------------------------------------
FILE: 020.architecture/020.engine/0200200004_PERSONA_EXECUTION_MODEL_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EXECUTION MODEL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
component: persona-execution-model

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the implementable execution model
used by PersonaOS during runtime.

This document specifies:

- execution unit
- execution order
- coordination model
- concurrency policy
- state visibility rules


# ============================================================
# EXECUTION UNIT
# ============================================================

The primary execution unit is:

one persona
processing one event
through one execution cycle

This is the atomic architectural unit
of PersonaOS execution.


# ============================================================
# EXECUTION CYCLE
# ============================================================

A single execution cycle contains:

1. state load
2. context resolve
3. cognition pass
4. decision pass
5. behavior pass
6. memory pass
7. state commit


# ============================================================
# EXECUTION ORDER
# ============================================================

Execution order is strict.

state load
↓
context resolve
↓
reasoning
↓
decision
↓
behavior
↓
memory
↓
commit

No later step may run
before earlier prerequisites complete.


# ============================================================
# CONCURRENCY POLICY
# ============================================================

Within a single persona:

state mutation execution is serialized.

Across different personas:

execution may run concurrently
as long as shared resources are protected.


# ============================================================
# VISIBILITY RULE
# ============================================================

During one execution cycle:

read set is fixed at cycle start
unless explicitly refreshed.

write set becomes externally visible
only at commit stage.

This prevents partial visible state.


# ============================================================
# COMMIT RULE
# ============================================================

A cycle commits only when:

- decision phase completed
- behavior phase completed or explicit no-op
- memory write completed or degraded completion allowed
- state synchronization succeeded

If commit conditions fail,
the cycle is incomplete.


# ============================================================
# NO-OP RULE
# ============================================================

The engine may complete a valid cycle
with no external action.

A no-op cycle still requires:

- event acknowledgment
- state review
- log record


# ============================================================
# SHARED RESOURCE RULE
# ============================================================

Shared resources include:

- memory stores
- communication channels
- schedule queue
- social relationship data
- runtime logs

Shared resource access must be
ordered or synchronized.


# ============================================================
# RETRY RULE
# ============================================================

Retry is allowed for:

- transient dispatch failure
- transient persistence failure
- transient external dependency failure

Retry is not allowed for:

- invalid state contract
- invalid event schema
- policy violation


# ============================================================
# FAILURE MODEL
# ============================================================

Execution failure categories:

validation failure
processing failure
dispatch failure
persistence failure
commit failure

Each category must produce
a distinct log outcome.


# ============================================================
# IMPLEMENTATION SHAPE
# ============================================================

Recommended runtime structure:

ExecutionCycle
ExecutionContext
ReadStateSnapshot
DecisionResult
BehaviorResult
MemoryWriteResult
CommitResult

This shape is implementation-ready
for class-based or service-based design.


# ============================================================
# MINIMUM IMPLEMENTABLE EXECUTION MODEL
# ============================================================

load state snapshot
→ build execution context
→ process cognition
→ produce decision result
→ dispatch or no-op
→ write memory artifacts
→ commit updated state


# ============================================================
# STATUS
# ============================================================

This document defines the
implementable execution model
for PersonaOS runtime.



--------------------------------------------------------------------------------
FILE: 020.architecture/020.engine/0200200005_PERSONA_STATE_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA STATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

# PURPOSE
Defines state representation architecture.

# DESCRIPTION
State architecture maintains persona
internal and external conditions.


--------------------------------------------------------------------------------
FILE: 020.architecture/0200000_ARCHITECTURE_INDEX.md
--------------------------------------------------------------------------------

020.architecture/010.core/0200100001_PERSONA_LAYER_ARCHITECTURE.md
020.architecture/010.core/0200100002_PERSONA_SYSTEM_ARCHITECTURE.md
020.architecture/020.engine/0200200001_PERSONA_ENGINE_ARCHITECTURE.md
020.architecture/020.engine/0200200002_PERSONA_EVENT_ARCHITECTURE.md
020.architecture/020.engine/0200200003_PERSONA_EVENT_PIPELINE_ARCHITECTURE.md
020.architecture/020.engine/0200200004_PERSONA_EXECUTION_MODEL_ARCHITECTURE.md
020.architecture/020.engine/0200200005_PERSONA_STATE_ARCHITECTURE.md
020.architecture/0200000_ARCHITECTURE_INDEX.md
020.architecture/0200001_ARCHITECTURE_OVERVIEW.md
020.architecture/0200002_PERSONA_OS_ARCHITECTURE.md
020.architecture/0200003_PERSONA_EVENT_PIPELINE_ARCHITECTURE.md
020.architecture/0200004_PERSONA_RUNTIME_ARCHITECTURE.md
020.architecture/0200005_PERSONA_VISUAL_ARCHITECTURE.md
020.architecture/0200006_PERSONA_SECURITY_ARCHITECTURE.md
020.architecture/0200007_PERSONA_APPROVAL_ARCHITECTURE.md
020.architecture/0200008_PERSONA_ASSET_ARCHITECTURE.md
020.architecture/0200009_PERSONA_INTEGRATION_ARCHITECTURE.md
020.architecture/0200010_PERSONA_RENDERING_ARCHITECTURE.md
020.architecture/0200011_PERSONA_DATA_ARCHITECTURE.md
020.architecture/0200012_PERSONA_CLASS_ARCHITECTURE.md
020.architecture/0200013_PERSONA_EDGE_ARCHITECTURE.md
020.architecture/0200014_PERSONA_CAPABILITY_ARCHITECTURE.md
020.architecture/0200015_PERSONA_POLICY_ARCHITECTURE.md
020.architecture/0200016_PERSONA_BUILDER_ARCHITECTURE.md
020.architecture/030.dataflow/0200300001_PERSONA_BEHAVIOR_ARCHITECTURE.md
020.architecture/030.dataflow/0200300002_PERSONA_COGNITION_ARCHITECTURE.md
020.architecture/030.dataflow/0200300003_PERSONA_DATA_FLOW_ARCHITECTURE.md
020.architecture/030.dataflow/0200300004_PERSONA_LEARNING_ARCHITECTURE.md
020.architecture/030.dataflow/0200300005_PERSONA_MEMORY_ARCHITECTURE.md
020.architecture/050.external/0200400001_PERSONA_ACCESS_GRANT_ARCHITECTURE.md
020.architecture/050.external/0200400002_PERSONA_TRANSFER_ARCHITECTURE.md
020.architecture/050.external/0200400003_PERSONA_EXTERNAL_RELEASE_ARCHITECTURE.md
020.architecture/050.external/0200400004_PERSONA_PACKAGE_ARCHITECTURE.md
020.architecture/050.external/0200400005_PERSONA_DISTRIBUTION_ARCHITECTURE.md
020.architecture/050.external/0200400006_PERSONA_LICENSE_AUTHORITY_ARCHITECTURE.md
020.architecture/100.integration/0200010_PERSONA_LIFE_SYNC_PROVIDER_ARCHITECTURE.md
020.architecture/100.integration/0200011_PERSONA_GAME_SYNC_PROVIDER_ARCHITECTURE.md
020.architecture/100.integration/0200012_PERSONA_STREAMING_SYNC_PROVIDER_ARCHITECTURE.md
020.architecture/100.integration/0200013_PERSONA_EXTERNAL_OS_SYNC_RESULT_ARCHITECTURE.md
020.architecture/100.integration/0200410001_PERSONA_COMMUNICATION_ARCHITECTURE.md
020.architecture/100.integration/0200410002_PERSONA_CONTEXT_ARCHITECTURE.md
020.architecture/100.integration/0200410003_PERSONA_SOCIAL_ARCHITECTURE.md
020.architecture/100.integration/0200600001_PERSONA_EVENT_OUTBOX_ARCHITECTURE.md
020.architecture/100.integration/0200600002_PERSONA_INBOUND_GROWTH_APPLY_ARCHITECTURE.md
020.architecture/130.builder/0200700001_PERSONA_BUILDER_ARCHITECTURE.md
020.architecture/130.builder/0200700002_PERSONA_BUILDER_VALIDATION_ARCHITECTURE.md
020.architecture/130.builder/0200700003_PERSONA_BUILDER_APPROVAL_ARCHITECTURE.md
020.architecture/130.builder/0200700004_PERSONA_BUILDER_PUBLISH_ARCHITECTURE.md
020.architecture/130.builder/0200700005_PERSONA_BUILDER_VISUAL_BINDING_ARCHITECTURE.md
020.architecture/150.security/0200510001_PERSONA_COORDINATION_ARCHITECTURE.md
020.architecture/150.security/0200510002_PERSONA_DEPENDENCY_ARCHITECTURE.md
020.architecture/150.security/0200510003_PERSONA_SECURITY_ARCHITECTURE.md
020.architecture/160.business/0200500001_PERSONA_TO_BUSINESS_INTERFACE_ARCHITECTURE.md
020.architecture/160.business/0200500002_PERSONA_BUSINESS_USAGE_ARCHITECTURE.md


--------------------------------------------------------------------------------
FILE: 020.architecture/0200001_ARCHITECTURE_OVERVIEW.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA OS ARCHITECTURE OVERVIEW
# ============================================================

PersonaOS architecture defines the high level
structure of the system.

Includes:

event pipeline
runtime engine
visual system
security system
approval system
asset system



--------------------------------------------------------------------------------
FILE: 020.architecture/0200002_PERSONA_OS_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA OS ARCHITECTURE
# ============================================================

status: canonical
component: persona-os
layer: architecture

owner: Boss
prepared_by: Zero

# OVERVIEW

PersonaOS is the personality operating system
inside Civilization System.

PersonaOS is responsible for:

persona lifecycle
persona state management
persona growth
persona memory
persona snapshot issuance
persona visual identity

# ARCHITECTURE PRINCIPLES

PersonaOS follows these rules:

event-driven architecture
single state authority
snapshot public model
fail-closed runtime
cryptographic trust

# SYSTEM LAYERS

PersonaOS

Lifecycle
Runtime
Visual
Security
Approval
Asset

Each layer communicates through explicit events.

Direct cross-layer mutation is prohibited.



--------------------------------------------------------------------------------
FILE: 020.architecture/0200003_PERSONA_EVENT_PIPELINE_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EVENT PIPELINE ARCHITECTURE
# ============================================================

PersonaOS uses an event-driven pipeline.

CivilizationOS generates events.

PersonaOS consumes events.

Event pipeline:

Civilization Dispatcher
↓
sign-event
↓
persona-state-apply
↓
growth_events
↓
snapshot trigger

# RULES

Events must be:

traceable
signed
idempotent
schema-versioned

Silent mutation is forbidden.



--------------------------------------------------------------------------------
FILE: 020.architecture/0200004_PERSONA_RUNTIME_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA RUNTIME ARCHITECTURE
# ============================================================

Runtime is responsible for applying events
to persona state.

Core runtime operations:

event validation
state mutation
growth calculation
memory storage
snapshot trigger

Runtime must guarantee:

deterministic behavior
idempotency
audit traceability



--------------------------------------------------------------------------------
FILE: 020.architecture/0200005_PERSONA_VISUAL_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA VISUAL ARCHITECTURE
# ============================================================

Persona visual identity is generated
through layered assets.

Visual architecture:

visual_generation_jobs
↓
visual-compose
↓
client render
↓
visual-render-result-commit

Assets are stored in storage buckets.

Visual composition uses manifest-based layers.



--------------------------------------------------------------------------------
FILE: 020.architecture/0200006_PERSONA_SECURITY_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA SECURITY ARCHITECTURE
# ============================================================

Security relies on cryptographic proof.

Core mechanisms:

Ed25519 signatures
canonical JSON hashing
snapshot verification
revocation lists

Security principles:

fail closed
explicit verification
minimal trust
auditable actions



--------------------------------------------------------------------------------
FILE: 020.architecture/0200007_PERSONA_APPROVAL_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA APPROVAL ARCHITECTURE
# ============================================================

Approval architecture allows controlled
state mutation through governance.

Typical approval flow:

approval-create
↓
approval-review
↓
approval-decision
↓
approval-effect

Approval may apply to:

asset publishing
persona profile changes
visual generation requests



--------------------------------------------------------------------------------
FILE: 020.architecture/0200008_PERSONA_ASSET_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA ASSET ARCHITECTURE
# ============================================================

Persona assets represent visual identity.

Assets include:

character layers
background images
AI-generated parts
package components

Assets may require approval before publication.

Assets are stored in storage buckets
with signed access.



--------------------------------------------------------------------------------
FILE: 020.architecture/0200009_PERSONA_INTEGRATION_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA INTEGRATION ARCHITECTURE
# ============================================================

PersonaOS integrates with external systems
through snapshots.

Integration model:

PersonaOS
↓
snapshot issuance
↓
external applications
↓
snapshot verification

External systems must not mutate PersonaOS state.



--------------------------------------------------------------------------------
FILE: 020.architecture/0200010_PERSONA_RENDERING_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA RENDERING SPECIFICATION
# PersonaOS Visual Runtime Canonical Spec v2.3
# ============================================================

status: canonical
component: persona-visual-runtime
scope: persona.rendering
owner: Boss
prepared_by: Zero
version: 2.3


# ============================================================
# DESIGN PHILOSOPHY
# ============================================================

PersonaOS uses an Anchor-centric compositing engine.

Goals:

• Do not require strict trimming from users  
• Preserve high resolution source images  
• Perform center correction at runtime  
• Remain compatible with future Rig / Live2D expansion  

Layered responsibility model:

DB = original asset storage  
Generation apps = segmentation / cutting layer  
Rendering engine = automatic correction layer


# ============================================================
# LAYER TYPES
# ============================================================

Two rendering modes exist:

1. Anchor Mode (canonical)
2. XY Mode (compatibility)

Anchor mode is always preferred.


# ============================================================
# ANCHOR MODE
# ============================================================

Final center is calculated as:

finalCenter =
    anchor_position
  + slot_offset
  + view_delta
  + rig_delta

AnchorPoint exists in canvas coordinate space.


# ============================================================
# AUTOCENTER SPECIFICATION
# ============================================================

Previous behaviour:

Image center (width/2, height/2) used as origin.

Problem:

Full canvas PNG or margin space shifts the center.

Solution:

Use centroid of non-transparent pixels.


# ============================================================
# AUTOCENTER ALGORITHM
# ============================================================

1. Decode bitmap
2. Extract pixels where Alpha > 16
3. Compute average (x,y)
4. Use result as part center

Fallback rule:

If count == 0

Use image center.


# ============================================================
# IMPLEMENTATION LOCATION
# ============================================================

Inside BitmapComposer:

computeAlphaCentroid(Bitmap bmp)

Before drawing:

m.postTranslate(-centerX, -centerY)


# ============================================================
# RENDERING FLOW
# ============================================================

for each layer:

    decode bitmap
    compute centroid
    build matrix:

        translate(-centroid)
        scale
        rotate
        translate(finalCenter)

    drawBitmap


# ============================================================
# USER BURDEN POLICY
# ============================================================

✔ Perfect trimming is not required  
✔ Full canvas PNG is allowed  
✔ Rough cropping is acceptable  
✔ Anchor design stabilizes placement  

User requirement:

"Part roughly centered"


# ============================================================
# SUPPORTED CREATION PATHS
# ============================================================

Four supported asset pipelines:

1. AI generation
    Edge auto segmentation
    Runtime AutoCenter correction

2. Asset provided
    Pre-cut assets

3. Vtuber upload
    Original art preserved
    Runtime correction applied

4. Local segmentation
    User editable
    AutoCenter compensates


# ============================================================
# SCALE MODEL
# ============================================================

Database stores high resolution originals.

High quality = high resolution assets

High quality ≠ full canvas PNG.

Scaling is applied at rendering time.


# ============================================================
# PERFORMANCE POLICY
# ============================================================

• Alpha scan uses single pass  
• 1125x1371 resolution acceptable  
• Future centroid cache possible  
• Recompute only during recomposition


# ============================================================
# FUTURE EXTENSIONS
# ============================================================

Phase 2

Bounding box crop

Phase 3

Semantic segmentation

Phase 4

Rig / Bone support


# ============================================================
# CURRENT CANONICAL STATUS
# ============================================================

✔ Anchor centered compositing  
✔ ViewDelta supported  
✔ RigDelta supported  
✔ AutoCenter implemented  
✔ Strict trimming not required


# ============================================================
# END OF SPECIFICATION
# ============================================================



--------------------------------------------------------------------------------
FILE: 020.architecture/0200011_PERSONA_DATA_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA DATA ARCHITECTURE
# ============================================================

PersonaOS data architecture centers on
the persona table.

Core tables:

persona
growth_events
persona_event_log
persona_snapshot

PersonaOS is the single authority
for persona state.

External systems may only consume snapshots.



--------------------------------------------------------------------------------
FILE: 020.architecture/0200012_PERSONA_CLASS_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA CLASS ARCHITECTURE
# ============================================================

status: canonical
component: persona-os
document: persona-class-architecture

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the class structure of personas
inside PersonaOS.

PersonaOS supports multiple persona classes
to serve different operational contexts.

Each class defines behavioral rules
and lifecycle constraints.


# ============================================================
# PERSONA CLASS TYPES
# ============================================================

PersonaOS defines three primary classes.

Human Persona

Corporate Persona

System Persona


# ============================================================
# HUMAN PERSONA
# ============================================================

Human personas represent individuals.

Typical usage:

PocketSecretary
Creator systems
Virtual characters
Civilization simulation

Characteristics:

growth
memory
lifecycle
death
optional reincarnation

Human personas evolve over time
through events and experiences.


# ============================================================
# CORPORATE PERSONA
# ============================================================

Corporate personas represent
organizational roles.

Typical usage:

corporate assistant
sales AI
legal AI
accounting AI
customer support AI

Characteristics:

no death
no reincarnation
no biological lifecycle

Corporate personas are stable role identities.

Updates occur through:

skill updates
policy updates
version upgrades


# ============================================================
# SYSTEM PERSONA
# ============================================================

System personas represent internal
operational entities.

Typical usage:

dispatcher
auditor
guardian
moderator
system operator

Characteristics:

immutable role
no lifecycle
no growth

System personas exist solely
to maintain system operations.


# ============================================================
# PERSONA TYPE FIELD
# ============================================================

Persona identity must include
a persona classification.

Field:

persona_type

Allowed values:

human
corporate
system


# ============================================================
# RUNTIME BEHAVIOR
# ============================================================

Runtime engines must interpret
persona behavior based on persona_type.


Human Persona

growth engine enabled
memory recording enabled
lifecycle enabled


Corporate Persona

growth disabled
lifecycle disabled
policy update enabled


System Persona

growth disabled
memory disabled
system operations only


# ============================================================
# ARCHITECTURAL POSITION
# ============================================================

Persona classes sit at the identity layer.

identity
↓
persona class
↓
runtime behavior


# ============================================================
# DESIGN PRINCIPLE
# ============================================================

PersonaOS must support multiple
persona types without changing
the core runtime architecture.

The runtime must remain event-driven
and deterministic regardless
of persona class.


# ============================================================
# END OF DOCUMENT
# ============================================================



--------------------------------------------------------------------------------
FILE: 020.architecture/0200013_PERSONA_EDGE_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EDGE ARCHITECTURE
# ============================================================

PersonaOS uses Supabase Edge Functions
as runtime execution units.

Major functions:

persona-create
persona-state-apply
visual-generation-job-create
visual-compose
visual-render-result-commit
snapshot-issue
snapshot-verify
snapshot-revoke
sign-event

All Edge functions must follow:

fail-closed design
idempotent execution
signed event handling



--------------------------------------------------------------------------------
FILE: 020.architecture/0200014_PERSONA_CAPABILITY_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA CAPABILITY ARCHITECTURE
# ============================================================

status: canonical
component: persona-os
document: persona-capability-architecture

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the capability architecture
of PersonaOS.

Capability architecture explains
how personas possess,
express,
update,
and restrict abilities
inside Civilization System.


# ============================================================
# POSITION IN SYSTEM
# ============================================================

Persona capability exists under Persona identity
and affects runtime behavior.

identity
↓
persona class
↓
capability set
↓
runtime action
↓
snapshot representation


# ============================================================
# CAPABILITY PRINCIPLE
# ============================================================

Capability is not equivalent to identity.

Identity defines who the persona is.

Capability defines what the persona can do.

Capability must be:

structured
traceable
bounded
policy-compatible
updateable through explicit rules


# ============================================================
# CAPABILITY DOMAINS
# ============================================================

Canonical capability domains may include:

communication
reasoning
planning
execution
domain expertise
social interaction
compliance handling
creative generation
visual production
administrative support


# ============================================================
# CAPABILITY CLASSES
# ============================================================

Capability may be classified as:

core capability
learned capability
assigned capability
restricted capability
certified capability


# ============================================================
# HUMAN PERSONA CAPABILITY
# ============================================================

Human Persona capabilities may evolve.

Characteristics:

growth enabled
memory influence enabled
environment influence enabled
organization influence enabled
decline possible

Human capability is dynamic.


# ============================================================
# CORPORATE PERSONA CAPABILITY
# ============================================================

Corporate Persona capabilities are initialized
as role-complete capabilities.

Characteristics:

stable from creation
version-updated explicitly
no biological growth
no death-linked decay
policy-controlled upgrade

Corporate capability is operational and predictable.


# ============================================================
# SYSTEM PERSONA CAPABILITY
# ============================================================

System Persona capabilities are fixed
by system role.

Characteristics:

immutable role scope
no growth
no memory-based evolution
no narrative variation

System capability is deterministic.


# ============================================================
# CAPABILITY SOURCE
# ============================================================

Capabilities may originate from:

base template
package assignment
manual configuration
runtime growth
organization environment
approved update
system role definition


# ============================================================
# CAPABILITY UPDATE RULE
# ============================================================

Capability change must be explicit.

Allowed update mechanisms:

growth event
package application
policy update
role reassignment
approved capability grant

Forbidden:

silent overwrite
untracked direct mutation
capability escalation without authorization


# ============================================================
# CAPABILITY RESTRICTION RULE
# ============================================================

Capability may be restricted by:

persona class
plan
owner policy
organization policy
security policy
approval requirement

Restriction must be visible and traceable.


# ============================================================
# CAPABILITY AND PLAN
# ============================================================

Plan affects capability availability.

Examples:

number of active personas
advanced skill packs
snapshot issuance limits
enterprise capability modules

Plan must not corrupt identity truth.
Plan controls access, not personhood.


# ============================================================
# CAPABILITY AND PACKAGE
# ============================================================

Packages may provide capability extensions.

Examples:

language pack
role pack
industry pack
assistant pack
tool-use pack

Package application must remain
compatible with persona class and policy.


# ============================================================
# CAPABILITY AND SNAPSHOT
# ============================================================

Snapshot may expose capability state
as a time-specific public proof.

Snapshot does not create capability.

Snapshot only proves capability
as it existed at issuance time.


# ============================================================
# CAPABILITY AND APPROVAL
# ============================================================

Some capability changes may require approval.

Examples:

corporate skill upgrade
regulated domain access
high-risk action capability
cross-organization role grant

Approval must precede effective change
where policy requires.


# ============================================================
# CAPABILITY AND SECURITY
# ============================================================

Capability architecture must work with:

access control
signature trust
audit logging
policy enforcement

Capability must never bypass
security boundaries.


# ============================================================
# CAPABILITY AND BUSINESS ACCEPTANCE
# ============================================================

Enterprise acceptance requires predictable personas.

Therefore Corporate Persona capability
should emphasize:

stability
auditability
bounded change
explicit versioning
non-narrative operation

This makes enterprise personas suitable for:

company secretary
sales assistant
legal support
accounting support
customer support


# ============================================================
# DATA RELATION
# ============================================================

Capability architecture relates to:

PERSONA_IDENTITY_MODEL
PERSONA_STATE_MODEL
PERSONA_GROWTH_MODEL
PERSONA_PACKAGE_MODEL
PERSONA_ACCESS_MODEL
PERSONA_APPROVAL_MODEL


# ============================================================
# FINAL DEFINITION
# ============================================================

Persona capability architecture defines
how abilities are structured,
updated,
restricted,
and proven
for Human,
Corporate,
and System Personas
inside PersonaOS.

# ============================================================
# END OF DOCUMENT
# ============================================================



--------------------------------------------------------------------------------
FILE: 020.architecture/0200015_PERSONA_POLICY_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA POLICY ARCHITECTURE
# ============================================================

status: canonical
component: persona-os
document: persona-policy-architecture

owner: Boss
prepared_by: Zero


# PURPOSE

Define policy control mechanisms
that govern persona behavior and capabilities.

Policy determines what a persona
is allowed to do within the system.


# POLICY DOMAINS

security policy
capability policy
organization policy
plan policy
regulatory policy


# POLICY POSITION

identity
↓
persona class
↓
capability
↓
policy
↓
runtime execution


# POLICY PRINCIPLE

Policies must be:

explicit
auditable
deterministic
enforced at runtime




--------------------------------------------------------------------------------
FILE: 020.architecture/0200016_PERSONA_BUILDER_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA BUILDER ARCHITECTURE
# PersonaOS Canonical Design
# ============================================================

status: canonical
scope: personaos.builder.architecture
component: persona-builder
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical architecture of Persona Builder.

Persona Builder is the official authoring and governance surface
for creating, editing, validating, reviewing, approving,
publishing, and distributing Personas inside PersonaOS.

This document defines:

- builder responsibility
- route-based creation model
- truth boundary
- visual generation orchestration
- review and cloud eligibility route
- snapshot issuance connection
- marketplace and distribution connection
- implementation-independent structure


# ============================================================
# POSITION IN SYSTEM
# ============================================================

Foundation
↓
CivilizationOS
↓
PersonaOS
↓
Persona Builder
↓
External applications / Marketplace / connected OS surfaces

Persona Builder belongs to PersonaOS.

Persona Builder is not the mutable truth holder itself.
PersonaOS remains the sole mutable truth holder.

Persona Builder is the governed authoring surface
that requests controlled state changes inside PersonaOS.


# ============================================================
# NON-WEB-BOUND PRINCIPLE
# ============================================================

Persona Builder is not canonically bound to web implementation.

Canonical architecture must remain implementation-independent.

Possible implementation surfaces include:

- web console
- android builder surface
- creator admin console
- internal review console

The first practical implementation may be a web console,
but web is not the architectural requirement.


# ============================================================
# CORE PRINCIPLE
# ============================================================

Persona Builder governs the path from:

Persona creation entry
→ route validation
→ visual generation orchestration
→ review / approval / activation
→ snapshot issuance request
→ distribution / marketplace eligibility

Builder must not bypass PersonaOS truth governance.

All meaningful changes must be:

- explicit
- auditable
- reviewable where required
- fail-closed when unresolved

Silent mutation is prohibited.


# ============================================================
# TRUTH BOUNDARY
# ============================================================

PersonaOS is the sole authority for:

- persona identity truth
- persona lifecycle truth
- persona mutable profile truth
- persona visual linkage truth
- persona state truth
- persona snapshot truth
- distribution eligibility truth
- marketplace eligibility truth

Persona Builder may:

- collect input
- validate route requirements
- create draft requests
- request visual generation
- request review
- request approval
- request snapshot issuance
- request distribution enablement
- request marketplace listing

Persona Builder must not become a side truth store.


# ============================================================
# BUILDER RESPONSIBILITY
# ============================================================

Persona Builder is responsible for the following domains.

1. creation entry selection
2. route-based input collection
3. legal and review guard enforcement
4. draft creation and edit orchestration
5. visual generation job orchestration
6. review route initiation
7. approval and activation request orchestration
8. snapshot issuance request orchestration
9. distribution enablement request orchestration
10. marketplace sale request orchestration

Persona Builder is not responsible for:

- raw PersonaOS truth ownership
- final PNG composition execution
- direct snapshot trust without PersonaOS issuance
- direct cloud acceptance without required review
- direct marketplace truth outside governed contracts


# ============================================================
# CREATION ENTRY MODEL
# ============================================================

Persona creation entry is fixed to four official routes.

A. LOCAL_UPLOAD
B. PRESET_PARTS
C. AI_GENERATED
D. EXTERNAL_IMPORT

No unofficial temporary route may be used.

Each route must declare:

- route type
- asset provenance
- rights basis
- cloud eligibility default
- required logs
- required review gates


# ============================================================
# ROUTE ARCHITECTURE
# ============================================================

## A. LOCAL_UPLOAD

Definition:
User-originated local images or local materials are used
as the basis of Persona visual creation.

Default rule:
- local materials are non-cloud
- local materials are non-distributable
- local materials are non-marketplace-eligible

Exception route:
A LOCAL_UPLOAD Persona may become cloud-eligible only through:

Local
→ AI review
→ Human review
→ Cloud eligible

After passing both reviews, the Persona may become:

- distributable
- marketplace-eligible

Without this route, local materials remain private-local only.

## B. PRESET_PARTS

Definition:
Persona is created using existing asset system parts.

Rule:
- source assets are already governed assets
- user receives usage-based creation capability
- cloud eligibility depends on asset policy and builder flow

## C. AI_GENERATED

Definition:
Persona visual assets are newly generated by approved AI generation flow.

Rule:
- AI generation log is mandatory
- generated assets must pass system registration policy
- resulting assets may become cloud-distributable under policy

## D. EXTERNAL_IMPORT

Definition:
Externally obtained materials are imported for Persona creation.

Rule:
- explicit rights declaration is mandatory
- import manifest is mandatory
- license note is mandatory
- external import log is mandatory
- cloud and distribution eligibility depend on review and rights validation


# ============================================================
# ROUTE INPUT CONTRACT
# ============================================================

Every builder creation request must include:

- persona_name
- source_type
- visual_type
- route_payload
- distribution_intent
- marketplace_intent

Distribution intent is explicit.

Possible values:

- private_only
- request_distribution
- request_marketplace

A route may reject requested intent when legal or policy conditions fail.


# ============================================================
# LEGAL AND SAFETY GUARD MODEL
# ============================================================

Builder must enforce legal and safety guardrails before advancing.

## LOCAL_UPLOAD

Default:
- cloud prohibited
- distribution prohibited
- marketplace prohibited

Only review-request route may advance toward cloud.

## PRESET_PARTS

- asset rights must remain valid
- prohibited or expired asset rights must block publish flow

## AI_GENERATED

- ai_generation_log required
- provenance and policy validation required

## EXTERNAL_IMPORT

- license declaration required
- import manifest required
- rights insufficiency must fail closed

Global rule:
Builder must prioritize legal stability over convenience.


# ============================================================
# VISUAL GENERATION ARCHITECTURE
# ============================================================

Persona Builder orchestrates visual generation,
but does not perform final image composition itself.

The canonical visual path is:

Persona creation
↓
visual_generation_jobs
↓
visual-compose
↓
client composition
↓
visual-upload
↓
visual_assets registration

## Builder responsibility in this path

Builder is responsible for:

- route-aligned visual input collection
- asset / part selection request
- generation job creation request
- composition request orchestration
- result monitoring
- upload completion confirmation
- state advancement after successful registration

Builder must not directly implement PNG composition
inside the canonical PersonaOS architecture.


# ============================================================
# VISUAL COMPOSE BOUNDARY
# ============================================================

visual-compose is responsible for:

- persona to character resolution
- emotion to expression resolution
- layer set resolution
- z-order resolution
- layer manifest generation

visual-compose is not responsible for:

- canvas rendering
- bitmap composition
- PNG file generation

Builder must treat visual-compose as a material decision service,
not a final renderer.


# ============================================================
# CLIENT COMPOSITION BOUNDARY
# ============================================================

Final composition may be executed by client implementation surface,
such as Android or other approved client runtimes.

Client composition is responsible for:

- receiving layers manifest
- fetching image resources
- applying composition rules
- generating final image output
- sending result to visual-upload

Builder may trigger this path,
but must not collapse the architectural separation.


# ============================================================
# DRAWING MODEL CONNECTION
# ============================================================

Builder must remain compatible with the canonical visual compose model.

The compose system uses:

anchor position
+ slot offset
+ view delta
+ rig delta

and supports AutoCenter based on non-transparent pixel center.

This means Persona Builder must not require users
to produce perfect zero-margin assets.

Builder should support:

- imperfect local inputs
- guided manual adjustment when needed
- user-friendly correction before review or publish


# ============================================================
# PERSONA LIFECYCLE CONNECTION
# ============================================================

Builder must connect to Persona lifecycle governance.

Minimum lifecycle stages relevant to Builder are:

- draft
- review_requested
- approved
- active
- suspended
- archived

Builder may expose route-specific extended states
for operational clarity, but canonical lifecycle truth
must remain under PersonaOS governance.


# ============================================================
# DISTRIBUTION REVIEW ROUTE
# ============================================================

Distribution and marketplace use require explicit eligibility control.

This route is especially important for LOCAL_UPLOAD.

Canonical review route:

private local
→ distribution request
→ AI review
→ Human review
→ cloud eligible
→ distributable
→ marketplace eligible
→ marketplace listed

Both AI review and Human review are mandatory
for local-to-cloud escalation.

Without both approvals, cloud registration is prohibited.


# ============================================================
# REVIEW ARCHITECTURE
# ============================================================

Builder must support review case creation,
status tracking, and decision recording.

Review domains may include:

- rights legitimacy
- prohibited content detection
- identity misuse detection
- policy conformance
- distribution suitability
- marketplace suitability

AI review and Human review are separate decisions.

AI review must not replace human authority.

Human review remains final for local-to-cloud release path.


# ============================================================
# CLOUD ELIGIBILITY MODEL
# ============================================================

Cloud eligibility is a governed status,
not an implicit side effect.

A Persona or visual material is cloud-eligible only when:

- route requirements are satisfied
- required reviews are passed
- rights basis is valid
- policy checks are passed
- evidence trail is preserved

Cloud eligibility must be explicit and auditable.


# ============================================================
# DISTRIBUTION MODEL
# ============================================================

Distributable Personas may be:

- shared across applications
- used as releasable Persona units
- connected to distribution records
- listed for Civilization Marketplace sale when eligible

Distribution does not mean raw internal state export.

Distribution uses approved externalizable forms,
including signed snapshots and approved releasable package surfaces.


# ============================================================
# MARKETPLACE CONNECTION
# ============================================================

Persona Builder must support the path from creation
to marketplace eligibility.

Builder does not operate Marketplace truth itself.

Builder is responsible for:

- distribution intent capture
- marketplace sale request capture
- review route initiation
- cloud eligibility advancement
- handoff to approved marketplace listing flow

Marketplace sale is allowed only for Personas
that satisfy distribution and marketplace eligibility rules.


# ============================================================
# SNAPSHOT CONNECTION
# ============================================================

The public proof surface of Persona is snapshot.

Builder must support snapshot issuance request,
but PersonaOS remains the issuer.

Snapshot characteristics include:

- canonical JSON
- signature
- versioned issuance
- non-destructive coexistence
- revocation instead of destructive deletion

Builder responsibilities:

- request issuance
- display issuance state
- display eligibility state
- support reissue trigger when required

Builder must not forge or self-issue snapshot truth.


# ============================================================
# PUBLIC REPRESENTATION RULE
# ============================================================

External applications must consume approved public representation,
not raw mutable Persona truth.

Builder therefore separates:

- internal draft state
- approved Persona truth
- signed public release surfaces

Builder must never confuse editable draft with public proof.


# ============================================================
# INTERFACE DOMAINS
# ============================================================

Builder interface domains are:

1. route selection
2. persona identity setup
3. profile / trait / value / goal editing
4. capability editing
5. visual setup
6. voice setup
7. legal declaration and review request
8. draft review and approval operations
9. snapshot issuance request
10. distribution and marketplace request operations

The interface may differ by implementation surface,
but domain responsibilities remain canonical.


# ============================================================
# POLICY REQUIREMENTS
# ============================================================

Persona Builder must operate under explicit policy.

Minimum policy domains:

- creation route policy
- local material policy
- external import policy
- AI generation policy
- review escalation policy
- cloud eligibility policy
- distribution policy
- marketplace handoff policy
- snapshot issuance request policy

Fail-closed behavior is mandatory when policy chain is unresolved.


# ============================================================
# AUDIT AND EVIDENCE MODEL
# ============================================================

Builder operations must be auditable.

Audit scope includes:

- creator identity
- route selected
- rights declarations
- review requests
- review decisions
- cloud eligibility decision
- snapshot issuance request
- distribution enablement request
- marketplace request

Evidence must remain traceable.

Silent approval or undocumented escalation is prohibited.


# ============================================================
# FAILURE HANDLING
# ============================================================

Builder must fail closed when:

- route payload is incomplete
- rights declaration is missing
- review decision is missing
- cloud eligibility is unresolved
- visual generation result is unresolved
- snapshot issuance preconditions are not met
- marketplace request preconditions are not met

Partial success must be explicit.

No hidden promotion from private-local to cloud is allowed.


# ============================================================
# STATE VIEW MODEL
# ============================================================

Builder may expose operational states such as:

- DRAFT
- VISUAL_PENDING
- VISUAL_READY
- REVIEW_REQUESTED
- AI_REVIEWING
- AI_REVIEW_PASSED
- AI_REVIEW_REJECTED
- HUMAN_REVIEWING
- HUMAN_REVIEW_PASSED
- HUMAN_REVIEW_REJECTED
- CLOUD_ELIGIBLE
- DISTRIBUTABLE
- MARKETPLACE_ELIGIBLE
- MARKETPLACE_LISTED
- ACTIVE
- SUSPENDED
- ARCHIVED

These operational states must map cleanly
to canonical PersonaOS state governance.


# ============================================================
# DEPENDENCY RULE
# ============================================================

Persona Builder may depend on:

- PersonaOS creation contracts
- PersonaOS visual orchestration contracts
- PersonaOS review and approval contracts
- PersonaOS snapshot issuance contracts
- PersonaOS distribution contracts
- approved asset foundation contracts

Persona Builder must not implicitly depend on:

- Marketplace internal truth as if local truth
- external application private state
- raw mutable truth from other OS domains


# ============================================================
# IMPLEMENTATION GUIDANCE
# ============================================================

Canonical architecture is implementation-independent.

Recommended first implementation may be:

- web console for creator and reviewer operations

Possible additional implementation surfaces:

- android builder companion surface
- admin review console
- marketplace submission console

All implementation surfaces must preserve
this canonical architecture.


# ============================================================
# REQUIRED FOLLOW-UP DOCUMENTS
# ============================================================

This architecture implies the need for follow-up documents.

Recommended next documents:

- PERSONA_BUILDER_RUNTIME
- PERSONA_BUILDER_POLICY
- PERSONA_BUILDER_INTERFACE
- PERSONA_CREATE_FLOW
- PERSONA_DISTRIBUTION_REVIEW_FLOW
- PERSONA_MARKETPLACE_ENABLEMENT_FLOW
- PERSONA_BUILDER_IMPLEMENTATION

Recommended supporting models:

- persona_distribution_request
- persona_local_review_case
- persona_review_decision
- persona_cloud_eligibility
- persona_marketplace_eligibility


# ============================================================
# FINAL DEFINITION
# ============================================================

Persona Builder is the canonical PersonaOS authoring surface
that governs the path from Persona creation entry
to review, cloud eligibility, snapshot issuance,
distribution, and marketplace readiness.

Persona Builder is not web-bound by architecture.

Persona Builder is implementation-independent,
but must preserve explicit authority,
human-final review where required,
no silent mutation,
and fail-closed governance at all times.


--------------------------------------------------------------------------------
FILE: 020.architecture/030.dataflow/0200300001_PERSONA_BEHAVIOR_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA BEHAVIOR ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
component: persona-behavior

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the implementable architecture
of behavior execution in PersonaOS.


# ============================================================
# ROLE
# ============================================================

The behavior subsystem transforms
decision results into concrete actions.

It is responsible for:

- behavior selection
- action sequencing
- task execution
- no-op handling
- dispatch reporting


# ============================================================
# INPUTS
# ============================================================

behavior subsystem consumes:

- persona_decision
- task context
- schedule trigger
- social interaction trigger
- safety constraint


# ============================================================
# OUTPUTS
# ============================================================

behavior subsystem produces:

- action dispatch
- task execution result
- behavior result
- action log
- follow-up event


# ============================================================
# EXECUTION ORDER
# ============================================================

decision intake
↓
constraint check
↓
action selection
↓
task or sequence execution
↓
result emission


# ============================================================
# CONSTRAINT RULE
# ============================================================

Behavior execution must check:

- persona_guardrail
- behavior_constraint
- current state viability
- required context completeness


# ============================================================
# FAILURE HANDLING
# ============================================================

If constraint check fails:
emit blocked behavior result.

If action dispatch fails:
emit dispatch failure and stop.

If task execution partially fails:
emit partial result and log degradation.


# ============================================================
# IMPLEMENTATION NOTES
# ============================================================

Recommended implementation modules:

BehaviorSelector
ConstraintChecker
ActionDispatcher
TaskExecutor
BehaviorResultEmitter


# ============================================================
# STATUS
# ============================================================

This document defines the
implementable behavior architecture
for PersonaOS.



--------------------------------------------------------------------------------
FILE: 020.architecture/030.dataflow/0200300002_PERSONA_COGNITION_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA COGNITION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
component: persona-cognition

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the implementable architecture
of the cognition subsystem in PersonaOS.

This document specifies:

- cognition responsibilities
- processor boundaries
- dependency direction
- execution order
- state access rules


# ============================================================
# ROLE
# ============================================================

The cognition subsystem transforms
context and memory into evaluated
decision candidates.

It is responsible for:

- perception interpretation
- reasoning
- option generation
- option evaluation
- planning support


# ============================================================
# SUBSYSTEM COMPONENTS
# ============================================================

perception processor
attention resolver
reasoning processor
decision evaluator
planning processor
learning feedback intake


# ============================================================
# INPUTS
# ============================================================

The cognition subsystem may consume:

- persona_event
- context_state
- persona_memory
- persona_goal
- persona_priority
- emotion_state


# ============================================================
# OUTPUTS
# ============================================================

The cognition subsystem may produce:

- decision candidates
- prioritized options
- updated context evaluation
- planning directives
- learning signals


# ============================================================
# EXECUTION ORDER
# ============================================================

perception
↓
attention
↓
reasoning
↓
decision evaluation
↓
planning support


# ============================================================
# DEPENDENCY RULE
# ============================================================

Cognition may read from:

- identity layer
- emotion state
- knowledge layer
- context layer

Cognition must not directly execute:

- behavior dispatch
- communication send
- persistence commit


# ============================================================
# STATE RULE
# ============================================================

Cognition processing should remain
side-effect controlled until
decision result is emitted.

Intermediate reasoning state must not
be externally committed as final persona state.


# ============================================================
# FAILURE HANDLING
# ============================================================

If perception input is incomplete:
reasoning must degrade or stop.

If reasoning fails:
decision output must not be emitted.

If planning support fails:
decision may still complete
if planning is not mandatory.


# ============================================================
# IMPLEMENTATION NOTES
# ============================================================

Recommended implementation modules:

PerceptionProcessor
AttentionResolver
ReasoningProcessor
DecisionEvaluator
PlanningSupport


# ============================================================
# STATUS
# ============================================================

This document defines the
implementable cognition architecture
for PersonaOS.



--------------------------------------------------------------------------------
FILE: 020.architecture/030.dataflow/0200300003_PERSONA_DATA_FLOW_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA DATA FLOW ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

# PURPOSE
Defines data flow between subsystems.

# DESCRIPTION
Data flows between perception,
reasoning, decision and behavior modules.


--------------------------------------------------------------------------------
FILE: 020.architecture/030.dataflow/0200300004_PERSONA_LEARNING_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA LEARNING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
component: persona-learning

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the implementable architecture
of learning in PersonaOS.


# ============================================================
# ROLE
# ============================================================

The learning subsystem updates
knowledge, capability and strategy
from memory and outcome signals.


# ============================================================
# INPUTS
# ============================================================

learning subsystem consumes:

- persona_memory
- persona_experience
- decision outcome
- behavior outcome
- feedback signal


# ============================================================
# OUTPUTS
# ============================================================

learning subsystem produces:

- knowledge updates
- capability updates
- strategy adjustments
- learning state changes


# ============================================================
# LEARNING FLOW
# ============================================================

experience intake
↓
feedback interpretation
↓
knowledge update
↓
capability update
↓
strategy update


# ============================================================
# UPDATE RULE
# ============================================================

Learning must not directly overwrite
core identity models.

Learning may update:

- persona_learning_state
- knowledge structures
- capability development
- strategy recommendations


# ============================================================
# FAILURE HANDLING
# ============================================================

If feedback quality is insufficient:
store pending learning artifact only.

If update fails:
retain original knowledge state
and mark deferred learning.


# ============================================================
# IMPLEMENTATION NOTES
# ============================================================

Recommended implementation modules:

FeedbackInterpreter
KnowledgeUpdater
CapabilityUpdater
StrategyUpdater
LearningStateManager


# ============================================================
# STATUS
# ============================================================

This document defines the
implementable learning architecture
for PersonaOS.



--------------------------------------------------------------------------------
FILE: 020.architecture/030.dataflow/0200300005_PERSONA_MEMORY_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA MEMORY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

# PURPOSE
Defines memory architecture.

# DESCRIPTION
Memory stores experiences
and knowledge structures.


--------------------------------------------------------------------------------
FILE: 020.architecture/050.external/0200400001_PERSONA_ACCESS_GRANT_ARCHITECTURE.md
--------------------------------------------------------------------------------

# PERSONA ACCESS GRANT ARCHITECTURE

status: canonical
layer: architecture
domain: external_rights
owner: Boss
prepared_by: Zero

## PURPOSE
Define canonical access grant authority for externally usable Persona artifacts.

## SOURCE OF TRUTH
PersonaOS is the sole source of truth for:
- access grant issuance
- access scope
- access expiration
- access revocation
- access suspension

## RULE
External systems may reference access grant state,
but may not invent, override, or extend grant validity.


--------------------------------------------------------------------------------
FILE: 020.architecture/050.external/0200400002_PERSONA_TRANSFER_ARCHITECTURE.md
--------------------------------------------------------------------------------

# PERSONA TRANSFER ARCHITECTURE

status: canonical
layer: architecture
domain: external_rights
owner: Boss
prepared_by: Zero

## PURPOSE
Define transfer authority and transfer constraints
for externally usable Persona-derived units.

## SOURCE OF TRUTH
PersonaOS is the source of truth for:
- whether transfer is allowed
- transfer conditions
- transfer approval requirement
- transfer restriction state
- transfer history validity

## RULE
Commercial systems may request transfer,
but PersonaOS determines whether transfer is valid.


--------------------------------------------------------------------------------
FILE: 020.architecture/050.external/0200400003_PERSONA_EXTERNAL_RELEASE_ARCHITECTURE.md
--------------------------------------------------------------------------------

# PERSONA EXTERNAL RELEASE ARCHITECTURE

status: canonical
layer: architecture
domain: external_rights
owner: Boss
prepared_by: Zero

## PURPOSE
Define the canonical release unit for external Persona usage.

## RELEASE UNIT
A release unit is an externally usable Persona-derived artifact
such as a signed snapshot or equivalent approved export form.

## SOURCE OF TRUTH
PersonaOS owns:
- release eligibility
- release issuance
- release state
- signature state
- release revocation
- release visibility


--------------------------------------------------------------------------------
FILE: 020.architecture/050.external/0200400004_PERSONA_PACKAGE_ARCHITECTURE.md
--------------------------------------------------------------------------------

# PERSONA PACKAGE ARCHITECTURE

status: canonical
layer: architecture
domain: external_rights
owner: Boss
prepared_by: Zero

## PURPOSE
Define package as an externally distributable Persona unit.

## PACKAGE CONTENT
A package may include:
- snapshot release
- visual assets
- voice assets
- animation profile
- metadata
- usage constraints

## RULE
Package content authority remains in PersonaOS.
External systems may distribute only approved package forms.


--------------------------------------------------------------------------------
FILE: 020.architecture/050.external/0200400005_PERSONA_DISTRIBUTION_ARCHITECTURE.md
--------------------------------------------------------------------------------

# PERSONA DISTRIBUTION ARCHITECTURE

status: canonical
layer: architecture
domain: external_rights
owner: Boss
prepared_by: Zero

## PURPOSE
Define how PersonaOS publishes mirrorable distribution metadata to external platforms.

## DISTRIBUTION SCOPE
- listing eligibility
- release visibility
- package visibility
- supported usage scope
- transferability flags

## RULE
External platforms may mirror metadata,
but PersonaOS remains the publishing authority.


--------------------------------------------------------------------------------
FILE: 020.architecture/050.external/0200400006_PERSONA_LICENSE_AUTHORITY_ARCHITECTURE.md
--------------------------------------------------------------------------------

# PERSONA LICENSE AUTHORITY ARCHITECTURE

status: canonical
layer: architecture
domain: external_rights
owner: Boss
prepared_by: Zero

## PURPOSE
Define PersonaOS as the authority for external license state.

## LICENSE AUTHORITY
PersonaOS determines:
- license issuance
- effective window
- scope
- revocation
- transferability
- entitlement linkage

## RULE
License truth never originates outside PersonaOS.


--------------------------------------------------------------------------------
FILE: 020.architecture/100.integration/0200010_PERSONA_LIFE_SYNC_PROVIDER_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA LIFE SYNC PROVIDER ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define how PersonaOS receives Life-originated growth events
and returns usage, access, release, binding, and trust sync results.

principles:
- Persona truth belongs to PersonaOS
- Life truth belongs to LifeOS
- PersonaOS receives explicit growth requests only
- PersonaOS returns explicit sync contracts only


--------------------------------------------------------------------------------
FILE: 020.architecture/100.integration/0200011_PERSONA_GAME_SYNC_PROVIDER_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA GAME SYNC PROVIDER ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define how PersonaOS receives Game-originated growth events
and returns usage, access, release, binding, and trust sync results.


--------------------------------------------------------------------------------
FILE: 020.architecture/100.integration/0200012_PERSONA_STREAMING_SYNC_PROVIDER_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA STREAMING SYNC PROVIDER ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define how PersonaOS receives Streaming-originated growth events
and returns usage, access, release, binding, and trust sync results.


--------------------------------------------------------------------------------
FILE: 020.architecture/100.integration/0200013_PERSONA_EXTERNAL_OS_SYNC_RESULT_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EXTERNAL OS SYNC RESULT ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the shared outbound sync-result architecture
used by PersonaOS when synchronizing with external OS domains.

outbound_results:
- usage permission status
- access state
- release validity
- usage binding state
- trust state


--------------------------------------------------------------------------------
FILE: 020.architecture/100.integration/0200410001_PERSONA_COMMUNICATION_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA COMMUNICATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
component: persona-communication

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the implementable architecture
of communication in PersonaOS.


# ============================================================
# ROLE
# ============================================================

The communication subsystem manages
message intake, dialogue context
and response generation.


# ============================================================
# INPUTS
# ============================================================

communication subsystem consumes:

- incoming message
- dialogue context
- persona_decision
- emotion_expression
- voice or visual expression state


# ============================================================
# OUTPUTS
# ============================================================

communication subsystem produces:

- parsed message intent
- dialogue update
- message response
- response metadata


# ============================================================
# PROCESSING FLOW
# ============================================================

message intake
↓
intent resolution
↓
dialogue context update
↓
response generation
↓
response dispatch


# ============================================================
# BOUNDARY RULE
# ============================================================

Communication architecture does not define:

- transport protocol implementation
- UI widget rendering
- external connector implementation

It defines internal persona-side flow only.


# ============================================================
# FAILURE HANDLING
# ============================================================

If intent resolution fails:
fallback response generation may run.

If response generation fails:
emit safe degraded response.


# ============================================================
# IMPLEMENTATION NOTES
# ============================================================

Recommended implementation modules:

MessageReceiver
IntentResolver
DialogueContextManager
ResponseGenerator
ResponseDispatcher


# ============================================================
# STATUS
# ============================================================

This document defines the
implementable communication architecture
for PersonaOS.



--------------------------------------------------------------------------------
FILE: 020.architecture/100.integration/0200410002_PERSONA_CONTEXT_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA CONTEXT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
component: persona-context

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the implementable architecture
of context handling in PersonaOS.


# ============================================================
# ROLE
# ============================================================

Context architecture integrates
environmental, social, temporal
and internal signals into one
execution context.


# ============================================================
# CONTEXT SOURCES
# ============================================================

persona_state
schedule state
communication context
social context
runtime trigger
memory-derived relevance


# ============================================================
# CONTEXT RULE
# ============================================================

A context snapshot must be assembled
before reasoning begins.

Reasoning must not use partial
or undefined context state.


# ============================================================
# OUTPUT
# ============================================================

The context subsystem produces:

- context_state
- attention_context
- decision_context


# ============================================================
# IMPLEMENTATION NOTES
# ============================================================

Recommended implementation modules:

ContextAssembler
ContextResolver
ContextSnapshotBuilder


# ============================================================
# STATUS
# ============================================================

This document defines the
implementable context architecture
for PersonaOS.



--------------------------------------------------------------------------------
FILE: 020.architecture/100.integration/0200410003_PERSONA_SOCIAL_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA SOCIAL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
component: persona-social

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the implementable architecture
of social interaction in PersonaOS.


# ============================================================
# ROLE
# ============================================================

The social subsystem manages:

- relationship state
- trust dynamics
- social interaction
- group participation


# ============================================================
# INPUTS
# ============================================================

social subsystem consumes:

- social interaction event
- communication result
- behavior result
- relationship event
- group context


# ============================================================
# OUTPUTS
# ============================================================

social subsystem produces:

- relationship update
- trust update
- interaction record
- group state effect


# ============================================================
# UPDATE RULE
# ============================================================

Social updates must occur after
interaction or communication outcomes
are known.

No trust update may occur
without a causal interaction signal.


# ============================================================
# FAILURE HANDLING
# ============================================================

If relationship update fails:
do not fake social success.

If trust calculation fails:
preserve previous trust state.


# ============================================================
# IMPLEMENTATION NOTES
# ============================================================

Recommended implementation modules:

RelationshipManager
TrustManager
InteractionRecorder
GroupParticipationManager


# ============================================================
# STATUS
# ============================================================

This document defines the
implementable social architecture
for PersonaOS.



--------------------------------------------------------------------------------
FILE: 020.architecture/100.integration/0200600001_PERSONA_EVENT_OUTBOX_ARCHITECTURE.md
--------------------------------------------------------------------------------

# PERSONA EVENT OUTBOX ARCHITECTURE

status: canonical
layer: architecture
domain: integration
owner: Boss
prepared_by: Zero

## PURPOSE
Define Event Outbox as the canonical outbound integration mechanism for PersonaOS.

## RULE
PersonaOS must not directly mutate downstream system state.
PersonaOS publishes state changes through an event outbox.

## TARGET EVENTS
- persona snapshot release issued
- persona release revoked
- persona license changed
- persona access grant changed
- persona distribution state changed

## DOWNSTREAM
- CivilizationOS
- BusinessOS
- other approved external sync targets


--------------------------------------------------------------------------------
FILE: 020.architecture/100.integration/0200600002_PERSONA_INBOUND_GROWTH_APPLY_ARCHITECTURE.md
--------------------------------------------------------------------------------

# PERSONA INBOUND GROWTH APPLY ARCHITECTURE

status: canonical
layer: architecture
domain: integration
owner: Boss
prepared_by: Zero

## PURPOSE
Define the canonical inbound request path for Business-originated growth changes.

## RULE
PersonaOS may consume approved external growth requests.
PersonaOS alone decides final growth truth mutation.

## SOURCE
- BusinessOS approved outbox events


--------------------------------------------------------------------------------
FILE: 020.architecture/130.builder/0200700001_PERSONA_BUILDER_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA BUILDER ARCHITECTURE
# ============================================================

status: canonical
scope: persona.builder.architecture
system: persona-os
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical architecture of Persona Builder
inside PersonaOS.

Persona Builder is the official authoring subsystem
for creating, editing, validating, approving,
and preparing Personas for public release surfaces.

Persona Builder does not replace PersonaOS truth.
PersonaOS remains the sole mutable truth holder.


# ============================================================
# POSITION
# ============================================================

Foundation
↓
CivilizationOS
↓
PersonaOS
↓
Persona Builder
↓
Visual Runtime / Snapshot / Package / Distribution / External Use

Persona Builder belongs to PersonaOS.

Persona Builder is not a separate OS.
Persona Builder is not a consumer app.
Persona Builder is not the public runtime renderer.

Persona Builder is the governed authoring entry
for Persona construction and release preparation.


# ============================================================
# CORE PRINCIPLE
# ============================================================

Persona Builder must operate under the following principles:

- explicit authority
- fail closed
- no silent mutation
- auditable change
- approval before publicization
- strict separation between draft and public truth

Builder may prepare.
Builder may validate.
Builder may request approval.
Builder may prepare publishable artifacts.

Builder must not directly bypass PersonaOS truth governance.


# ============================================================
# TRUTH BOUNDARY
# ============================================================

PersonaOS is the sole authority for:

- persona identity truth
- persona state truth
- persona growth truth
- persona memory truth
- persona lifecycle truth
- persona snapshot truth

Persona Builder may own only:

- draft state
- proposed change state
- validation result state
- approval request state
- publish preparation state

Builder must never become a side truth holder
for final mutable Persona state.


# ============================================================
# RESPONSIBILITY
# ============================================================

Persona Builder is responsible for:

1. draft creation
2. draft editing
3. section-based Persona composition
4. validation execution
5. approval request preparation
6. visual composition candidate preparation
7. voice composition candidate preparation
8. package and distribution preparation
9. release-facing artifact preparation
10. audit logging of authoring actions

Persona Builder is not responsible for:

- runtime rendering execution
- direct growth mutation
- direct memory mutation
- approval bypass
- raw external export without policy gates
- final external rights authority


# ============================================================
# DOMAIN COVERAGE
# ============================================================

Builder may compose or edit draft candidates for:

- identity
- profile
- personality
- goal
- trait
- value
- preference
- cognition
- emotion
- behavior
- communication
- social
- capability
- knowledge
- schedule
- finance
- visual
- voice
- external release preparation

Builder must respect canonical PersonaOS domain boundaries.


# ============================================================
# INTERNAL SUBSYSTEMS
# ============================================================

Persona Builder consists of the following logical subsystems.

## 1. Draft Manager
Create, store, load, version, and archive draft work.

## 2. Schema Composer
Compose editable sections into a governed Persona draft structure.

## 3. Validation Engine
Validate required fields, structural consistency,
policy constraints, and releasability conditions.

## 4. Approval Gateway
Create and track approval requests for governed progression.

## 5. Publish Preparation Engine
Prepare release-facing candidates such as:

- snapshot candidate input
- package candidate
- distribution candidate
- marketplace-ready candidate

## 6. Audit Logger
Record all meaningful authoring operations.


# ============================================================
# DRAFT MODEL
# ============================================================

Builder operates on Persona drafts.

A draft is a governed editing surface,
not public truth.

Draft must preserve:

- creator identity
- draft version
- target persona reference
- changed sections
- validation state
- approval state
- publish preparation state
- audit references

Draft must remain separable
from final Persona truth and signed snapshot truth.


# ============================================================
# OPERATIONAL STATES
# ============================================================

Builder may expose these operational states:

- draft
- editing
- validated
- validation_failed
- approval_requested
- approval_rejected
- approved
- publish_prepared
- published
- archived

These are builder-side states.

They must not replace PersonaOS lifecycle truth.


# ============================================================
# VISUAL BOUNDARY
# ============================================================

Persona Builder and Persona Visual Runtime are separate.

Persona Builder:
- defines visual candidate composition
- binds assets
- binds expressions
- binds animation profiles
- prepares manifest-like visual structures

Persona Visual Runtime:
- interprets approved visual structures
- executes state-based rendering behavior
- applies runtime visual transitions

Builder may produce visual candidate structures.

Builder must not become the final rendering runtime.


# ============================================================
# VISUAL INPUT RULE
# ============================================================

Builder must support visual preparation compatible
with existing PersonaOS visual architecture.

Builder may prepare:

- visual avatar candidate
- visual asset candidate binding
- expression mapping candidate
- animation profile candidate
- state to expression candidate mapping
- anchor/offset-related composition candidate data

Builder must not define final runtime-rendered truth
without required governance.


# ============================================================
# EXTERNAL RIGHTS BOUNDARY
# ============================================================

Persona Builder may prepare materials related to:

- external release
- package
- distribution
- marketplace-facing Persona units

However, authority for release, license,
access grant, transfer, and distribution validity
remains in PersonaOS external-rights authority.

Builder may prepare candidates.
Builder may not self-authorize external rights.


# ============================================================
# BUSINESS / LIFE / OTHER OS BOUNDARY
# ============================================================

Builder must preserve cross-OS boundary integrity.

This means:

- no draft exposure to BusinessOS as releasable unit
- no draft exposure to LifeOS as persona core data
- no draft exposure to other OS domains as public truth
- no unapproved release-facing handoff

Only approved, policy-allowed, and release-valid surfaces
may cross PersonaOS boundaries.


# ============================================================
# VALIDATION PRINCIPLE
# ============================================================

Builder validation must include at least:

- required field completeness
- section compatibility
- visual reference integrity
- rights and release readiness
- state transition legality
- boundary compliance
- policy compliance

Validation failure must stop downstream progression.

Fail closed is mandatory.


# ============================================================
# APPROVAL PRINCIPLE
# ============================================================

Approval is a formal governance step.

Builder must support:

- approval request creation
- reviewer handoff
- approval result recording
- rejection reason recording
- retry after correction

No public-facing progression may occur
without required approval.


# ============================================================
# PUBLISH PREPARATION PRINCIPLE
# ============================================================

Builder may prepare publication-related artifacts only after
required validation and approval stages.

Publish preparation may include:

- snapshot issue request preparation
- package publish preparation
- distribution preparation
- marketplace listing preparation

Preparation does not equal authority.

Final authority remains with PersonaOS governed subsystems.


# ============================================================
# AUDIT PRINCIPLE
# ============================================================

All meaningful builder actions must be auditable.

Audit targets include:

- draft creation
- draft edit
- validation run
- validation failure
- approval request
- approval result
- publish preparation request
- archive action

Silent or undocumented mutation is prohibited.


# ============================================================
# FAILURE HANDLING
# ============================================================

Builder must fail closed when:

- required structure is missing
- canonical reference is invalid
- validation result is unresolved
- approval is missing
- release boundary is violated
- external rights state is unresolved
- audit persistence fails

No builder path may silently continue
through unresolved governance failures.


# ============================================================
# REQUIRED MODELS
# ============================================================

The following builder-side models are recommended.

- persona_builder_draft
- persona_builder_section_state
- persona_builder_validation_result
- persona_builder_approval_request
- persona_builder_publish_candidate
- persona_builder_asset_binding
- persona_builder_visual_manifest_candidate
- persona_builder_voice_manifest_candidate
- persona_builder_change_set
- persona_builder_audit_record


# ============================================================
# REQUIRED FOLLOW-UP DOCUMENTS
# ============================================================

This architecture requires follow-up documents.

Recommended next documents:

- PERSONA_BUILDER_RUNTIME
- PERSONA_BUILDER_VALIDATION_ARCHITECTURE
- PERSONA_BUILDER_APPROVAL_ARCHITECTURE
- PERSONA_BUILDER_PUBLISH_ARCHITECTURE
- PERSONA_BUILDER_VISUAL_BINDING_ARCHITECTURE
- PERSONA_BUILDER_CREATE_FLOW
- PERSONA_BUILDER_EDIT_FLOW
- PERSONA_BUILDER_APPROVAL_FLOW
- PERSONA_BUILDER_PUBLISH_FLOW
- PERSONA_BUILDER_INTERFACE
- PERSONA_BUILDER_IMPLEMENTATION


# ============================================================
# FINAL DEFINITION
# ============================================================

Persona Builder is the canonical authoring subsystem
inside PersonaOS that creates, edits, validates,
and prepares governed Persona drafts for approval
and release-facing progression.

Persona Builder is not the mutable truth holder.

Persona Builder is not the visual runtime renderer.

Persona Builder is the controlled construction surface
for Persona composition under explicit authority,
auditability, and fail-closed governance.


--------------------------------------------------------------------------------
FILE: 020.architecture/130.builder/0200700002_PERSONA_BUILDER_VALIDATION_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA BUILDER VALIDATION ARCHITECTURE
# ============================================================

status: canonical
scope: persona.builder.validation.architecture
system: persona-os
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical validation architecture
for Persona Builder inside PersonaOS.

This document defines:

- validation position
- validation domains
- validation stages
- validation result model
- failure handling
- approval gating relation
- publish gating relation


# ============================================================
# POSITION
# ============================================================

Foundation
↓
CivilizationOS
↓
PersonaOS
↓
Persona Builder
↓
Validation Architecture
↓
Approval / Publish Preparation / External Release Preparation

Validation belongs to Persona Builder,
but must conform to PersonaOS truth authority.

Validation is a governed gate,
not a convenience feature.


# ============================================================
# CORE PRINCIPLE
# ============================================================

Validation must guarantee that a draft
is structurally, semantically, policy-wise,
and boundary-wise safe to advance.

Validation must be:

- explicit
- deterministic where possible
- auditable
- section-aware
- fail-closed
- non-silent

Validation must never silently auto-correct
governed Persona truth candidates
without explicit user or reviewer action.


# ============================================================
# VALIDATION ROLE
# ============================================================

Validation is responsible for determining whether
a Persona Builder draft may advance from:

editing
→ validated

and later from:

validated
→ approval requested

and later from:

approved
→ publish prepared

Validation does not approve.
Validation does not publish.
Validation does not grant rights.

Validation only determines readiness or failure
against governed rules.


# ============================================================
# VALIDATION BOUNDARY
# ============================================================

Validation may inspect:

- draft identity fields
- draft section completeness
- canonical reference integrity
- section compatibility
- visual candidate integrity
- voice candidate integrity
- policy readiness
- release-facing readiness
- boundary rule compliance

Validation must not:

- rewrite final Persona truth
- bypass approval
- invent external rights authority
- override unresolved legal or policy states


# ============================================================
# VALIDATION DOMAINS
# ============================================================

Validation must cover at least the following domains.

## 1. Identity Validation
Validate:
- persona naming integrity
- required identity fields
- lifecycle compatibility
- identity-role compatibility
- system-role compatibility

## 2. Structural Validation
Validate:
- required sections exist
- required relations exist
- no impossible section combinations
- canonical schema references are valid

## 3. Personality Validation
Validate:
- trait consistency
- value consistency
- goal consistency
- preference consistency
- self-model consistency

## 4. Cognition Validation
Validate:
- cognition references
- decision policy references
- planning references
- learning references

## 5. Emotion / Behavior Validation
Validate:
- emotion expression compatibility
- behavior constraints
- action readiness
- communication relation where required

## 6. Visual Validation
Validate:
- asset existence
- asset eligibility
- slot binding integrity
- state/expression mapping integrity
- animation profile references
- visual candidate completeness

## 7. Voice Validation
Validate:
- voice profile references
- voice asset references
- voice state compatibility
- expression compatibility where required

## 8. External Rights Validation
Validate:
- release eligibility prerequisites
- package composition prerequisites
- distribution prerequisites
- marketplace preparation prerequisites

## 9. Boundary Validation
Validate:
- no raw draft leak to external systems
- no cross-os forbidden mutation
- no truth-boundary violation

## 10. Policy Validation
Validate:
- policy rule satisfaction
- no prohibited mutation path
- no approval bypass path
- no unresolved release policy state


# ============================================================
# VALIDATION STAGES
# ============================================================

Validation should operate in layered stages.

## Stage A. Local Section Validation
Used during editing.

Purpose:
- immediate authoring feedback
- incomplete section warnings
- local consistency checks

This stage may produce:
- warnings
- non-blocking notices
- blocking local errors

## Stage B. Draft Validation
Used before approval request.

Purpose:
- full draft readiness check
- cross-section validation
- policy readiness check

This stage determines whether a draft
may enter approval flow.

## Stage C. Release Preparation Validation
Used after approval and before publish preparation.

Purpose:
- validate release-facing readiness
- validate external rights preconditions
- validate public representation compatibility

This stage determines whether a Persona
may advance toward snapshot, package,
distribution, or marketplace preparation.


# ============================================================
# VALIDATION RESULT MODEL
# ============================================================

Validation result must be explicit.

Each validation run should produce:

- validation_run_id
- target_draft_id
- validation_scope
- validation_stage
- overall_status
- issue_count
- blocking_issue_count
- warning_count
- result_generated_at
- validator_version
- evidence_reference

Overall status values may include:

- passed
- passed_with_warnings
- failed

Validation scope may include:

- section
- draft
- release_preparation
- visual_only
- voice_only
- external_rights_only


# ============================================================
# ISSUE MODEL
# ============================================================

Each validation issue must be explicit.

Minimum issue fields:

- validation_issue_id
- validation_run_id
- issue_code
- issue_severity
- issue_domain
- issue_target
- issue_summary
- issue_detail
- suggested_fix
- blocking_flag
- detected_at

Severity examples:

- info
- warning
- error
- critical

Blocking flag determines whether
state progression must stop.


# ============================================================
# BLOCKING RULE
# ============================================================

The following issue classes must be blocking by default:

- missing required identity field
- invalid canonical reference
- invalid visual asset binding
- invalid state mapping
- forbidden externalization path
- unresolved release prerequisite
- policy violation
- approval bypass attempt
- truth boundary violation
- audit failure during validation persistence

Warnings may exist,
but blocking issues must stop progression.


# ============================================================
# VISUAL VALIDATION PRINCIPLE
# ============================================================

Visual validation must remain separate
from runtime rendering.

Validation may confirm:

- referenced asset exists
- referenced asset is allowed
- binding shape is complete
- visual state mapping is consistent
- expression mapping is resolvable
- animation reference is valid

Validation must not perform final rendering.

Validation must not replace Persona Visual Runtime.


# ============================================================
# VOICE VALIDATION PRINCIPLE
# ============================================================

Voice validation must confirm:

- voice profile existence
- voice asset linkage integrity
- state compatibility
- expression compatibility
- publish-facing readiness if required

Validation must not synthesize voice output.


# ============================================================
# EXTERNAL RIGHTS VALIDATION PRINCIPLE
# ============================================================

External rights validation must confirm
that Builder is not preparing an invalid external surface.

Validation may check:

- release candidate prerequisites
- package candidate completeness
- distribution candidate completeness
- marketplace readiness prerequisites

Validation must not itself grant release authority.

Authority remains in PersonaOS external-rights governance.


# ============================================================
# BOUNDARY VALIDATION PRINCIPLE
# ============================================================

Boundary validation must ensure that:

- draft data is not treated as public truth
- draft data is not sent to BusinessOS directly
- draft data is not sent to LifeOS as core data
- unapproved draft data is not exposed to external consumers

Validation must enforce these boundaries.


# ============================================================
# APPROVAL GATE RELATION
# ============================================================

Approval request is allowed only when:

- full draft validation has passed
- no blocking issue remains
- required audit records exist
- required sections are structurally complete

Validation passed
does not mean approved.

Validation is prerequisite,
not authority.


# ============================================================
# PUBLISH GATE RELATION
# ============================================================

Publish preparation is allowed only when:

- approval state is valid
- release preparation validation has passed
- no blocking issue remains
- release-facing dependencies are resolvable

Validation passed
does not mean published.

Validation is prerequisite,
not publication.


# ============================================================
# AUDIT REQUIREMENT
# ============================================================

Every validation run must be auditable.

Audit scope must include:

- who requested validation
- when validation ran
- what scope was validated
- which validator version was used
- what issues were found
- whether progression was blocked

Silent validation is prohibited.


# ============================================================
# FAILURE HANDLING
# ============================================================

Validation must fail closed.

If validation result is:

- missing
- incomplete
- internally inconsistent
- not persisted
- contradictory

then the draft must be treated as not validated.

No downstream progression is allowed.


# ============================================================
# DETERMINISM RULE
# ============================================================

Where possible,
validation rules must be deterministic.

Heuristic checks may be used only when:

- heuristic nature is explicit
- result is tagged accordingly
- human approval remains available where required

Heuristic result must not silently replace
formal approval or rights authority.


# ============================================================
# HUMAN REVIEW RELATION
# ============================================================

Validation may identify problems.
Validation may identify readiness.
Validation may suggest fixes.

Validation does not replace human approval.

Where policy or release path requires human authority,
validation output must feed the reviewer,
not bypass the reviewer.


# ============================================================
# RECOMMENDED ISSUE CODE FAMILIES
# ============================================================

Recommended issue code families:

- PBV-ID-xxx     identity issues
- PBV-ST-xxx     structural issues
- PBV-PT-xxx     personality issues
- PBV-CG-xxx     cognition issues
- PBV-EM-xxx     emotion issues
- PBV-BH-xxx     behavior issues
- PBV-VS-xxx     visual issues
- PBV-VO-xxx     voice issues
- PBV-ER-xxx     external rights issues
- PBV-BD-xxx     boundary issues
- PBV-PL-xxx     policy issues
- PBV-AU-xxx     audit issues


# ============================================================
# REQUIRED MODELS
# ============================================================

Recommended builder validation models:

- persona_builder_validation_result
- persona_builder_validation_issue
- persona_builder_validation_profile
- persona_builder_validation_evidence_link
- persona_builder_validation_audit_record


# ============================================================
# REQUIRED FOLLOW-UP DOCUMENTS
# ============================================================

This architecture implies the need for:

- PERSONA_BUILDER_VALIDATION_RUNTIME
- PERSONA_BUILDER_APPROVAL_ARCHITECTURE
- PERSONA_BUILDER_PUBLISH_ARCHITECTURE
- PERSONA_BUILDER_VISUAL_BINDING_ARCHITECTURE
- PERSONA_BUILDER_APPROVAL_FLOW
- PERSONA_BUILDER_PUBLISH_FLOW


# ============================================================
# FINAL DEFINITION
# ============================================================

Persona Builder Validation Architecture
is the governed validation gate
that determines whether a Persona draft
is structurally, semantically, policy-wise,
and boundary-wise safe to advance
toward approval and release preparation.

It is explicit, auditable, fail-closed,
and never replaces PersonaOS truth authority
or human approval authority.


--------------------------------------------------------------------------------
FILE: 020.architecture/130.builder/0200700003_PERSONA_BUILDER_APPROVAL_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA BUILDER APPROVAL ARCHITECTURE
# ============================================================

status: canonical
scope: persona.builder.approval.architecture
system: persona-os
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical approval architecture
for Persona Builder inside PersonaOS.

This document defines:

- approval position
- approval authority boundary
- approval stages
- approval request structure
- reviewer decision model
- rejection and rework model
- approval to publish relation


# ============================================================
# POSITION
# ============================================================

Foundation
↓
CivilizationOS
↓
PersonaOS
↓
Persona Builder
↓
Approval Architecture
↓
Approved Persona progression / Publish Preparation / Release Preparation

Approval belongs to Persona Builder governance flow,
but final mutable Persona truth remains governed by PersonaOS.


# ============================================================
# CORE PRINCIPLE
# ============================================================

Approval is the formal governance gate
between validated draft state
and approved Persona progression.

Approval must be:

- explicit
- auditable
- authority-bound
- fail-closed
- non-silent
- reviewable

Approval is mandatory for any governed progression
that would make a Persona eligible
for release-facing treatment.


# ============================================================
# APPROVAL ROLE
# ============================================================

Approval is responsible for answering:

May this validated draft progress
into approved Persona-ready state
under PersonaOS governance?

Approval does not:

- rewrite Persona truth silently
- publish automatically
- grant external rights automatically
- replace release authority
- replace snapshot issuance authority

Approval is a governance decision,
not a rendering step,
and not a packaging step.


# ============================================================
# AUTHORITY BOUNDARY
# ============================================================

PersonaOS remains the sole mutable truth authority.

Persona Builder Approval Architecture may govern:

- approval request creation
- reviewer assignment
- reviewer decision capture
- approval result persistence
- rework return path
- approval audit trail

Approval Architecture must not:

- directly mutate final Persona truth outside governed apply path
- self-grant external rights
- bypass required human authority
- auto-promote rejected drafts


# ============================================================
# HUMAN AUTHORITY PRINCIPLE
# ============================================================

Human authority remains final where approval is required.

No Builder approval path may eliminate required human oversight
for governed Persona progression.

Automated checks may support approval readiness,
but automated checks must not silently replace
human-final approval authority
when the system requires explicit human approval.


# ============================================================
# APPROVAL PRECONDITION
# ============================================================

Approval request is allowed only when:

- validation has completed
- no blocking validation issue remains
- draft structure is complete enough for review
- audit trail is present
- required candidate references are resolvable

If preconditions are unresolved,
approval request must fail closed.


# ============================================================
# APPROVAL INPUT SCOPE
# ============================================================

Approval may review the following input surfaces:

- draft summary
- changed sections
- validation result summary
- blocking and warning issue list
- visual candidate summary
- voice candidate summary
- release preparation indicators
- policy-relevant flags
- audit summary
- evidence references

Approval must not require direct mutation of final Persona truth
as part of reviewer inspection.


# ============================================================
# APPROVAL STATES
# ============================================================

Approval architecture may expose the following states:

- approval_not_requested
- approval_requested
- under_review
- approved
- rejected
- returned_for_rework
- approval_expired
- archived

These are approval-governance states,
not Persona lifecycle truth states.


# ============================================================
# APPROVAL REQUEST MODEL
# ============================================================

Each approval request must be explicit.

Minimum fields:

- approval_request_id
- target_draft_id
- target_persona_ref
- request_scope
- request_reason
- requester_identity
- requested_at
- validation_run_id
- approval_status
- review_deadline
- evidence_bundle_ref
- created_at
- updated_at

Request scope examples:

- draft_approval
- release_preparation_approval
- visual_publish_readiness_approval
- external_release_readiness_approval


# ============================================================
# REVIEWER MODEL
# ============================================================

Approval must support explicit reviewer assignment.

Reviewer model may include:

- reviewer_identity
- reviewer_role
- reviewer_scope
- assigned_at
- decision_due_at
- reviewer_status

Reviewer authority must be explicit.

Undocumented reviewer authority is prohibited.


# ============================================================
# DECISION MODEL
# ============================================================

Approval decisions may include:

- approve
- reject
- return_for_rework
- request_more_information

Every decision must include:

- decision_id
- approval_request_id
- reviewer_identity
- decision_type
- decision_reason
- evidence_note
- decided_at

Approval without recorded reason is prohibited
for reject and return_for_rework decisions.


# ============================================================
# APPROVED RESULT PRINCIPLE
# ============================================================

If approval succeeds:

- draft becomes approval-cleared
- Persona may proceed to approved progression path
- downstream publish preparation may become eligible
- approval audit record must be persisted

Approval does not mean:

- snapshot issued
- package published
- distribution granted
- marketplace listing granted

Approval is prerequisite,
not final publication.


# ============================================================
# REJECTED RESULT PRINCIPLE
# ============================================================

If approval is rejected:

- progression must stop
- rejection reason must be preserved
- target draft must remain non-approved
- rework path must remain explicit
- no hidden approval substitution is allowed

Rejected drafts must not silently re-enter
approved state without a new governed request.


# ============================================================
# RETURN FOR REWORK PRINCIPLE
# ============================================================

Return-for-rework is distinct from rejection.

Returned-for-rework means:

- draft remains non-approved
- specific issues must be corrected
- a new approval request is required after correction
- prior decision history remains visible

Rework must preserve review traceability.


# ============================================================
# APPROVAL EXPIRY PRINCIPLE
# ============================================================

Approval may expire if:

- governed policy requires freshness
- major draft change occurs after approval
- dependency references changed materially
- release prerequisites changed materially

Expired approval must not be treated
as active approval.

A new approval request is required.


# ============================================================
# CHANGE INVALIDATION RULE
# ============================================================

Material draft changes after approval
must invalidate approval readiness.

Material changes may include:

- identity changes
- visual candidate changes
- voice candidate changes
- external rights preparation changes
- policy-relevant section changes
- release-facing candidate changes

Minor cosmetic changes may follow explicit policy,
but silent retention of approval after material change is prohibited.


# ============================================================
# APPROVAL LEVELS
# ============================================================

Approval architecture may support multiple levels.

Recommended levels:

## Level 1. Draft Approval
Confirms draft is governance-ready.

## Level 2. Release Preparation Approval
Confirms approved draft may proceed
toward release-facing preparation.

## Level 3. Sensitive Release Approval
Used where stricter authority is required
for externalizable Persona surfaces.

Level structure must remain explicit
and policy-driven.


# ============================================================
# APPROVAL AND VALIDATION RELATION
# ============================================================

Validation answers:

Is this draft structurally and policy-wise ready to review?

Approval answers:

Is this draft permitted to progress under authority?

Validation passed
does not equal approval granted.

Approval must not be auto-inferred from validation.


# ============================================================
# APPROVAL AND PUBLISH RELATION
# ============================================================

Publish preparation is allowed only after:

- required approval is granted
- approval remains valid
- release preparation preconditions remain satisfied

Approval granted
does not equal publish executed.

Approval is prerequisite,
not publication authority.


# ============================================================
# VISUAL APPROVAL RELATION
# ============================================================

Where Persona includes governed visual surfaces,
approval may inspect:

- visual candidate summary
- asset binding summary
- expression/state summary
- policy-sensitive visual flags

Approval does not execute rendering.

Approval only determines whether
the visual candidate may proceed
as part of governed Persona progression.


# ============================================================
# EXTERNAL RIGHTS APPROVAL RELATION
# ============================================================

Approval may confirm that Builder-side preparation
is allowed to proceed toward external-rights workflows.

Approval must not self-grant:

- release authority
- license authority
- transfer authority
- distribution authority

Those remain governed by PersonaOS
external-rights subsystems.


# ============================================================
# CROSS-OS BOUNDARY RULE
# ============================================================

Approval must ensure that unapproved drafts
never become externally consumable surfaces.

This means:

- no draft exposure to BusinessOS as releasable unit
- no draft exposure to LifeOS as persona core data
- no unapproved external release handoff
- no unapproved package publication handoff


# ============================================================
# AUDIT PRINCIPLE
# ============================================================

Every approval action must be auditable.

Audit scope must include:

- request creation
- reviewer assignment
- review start
- decision record
- rejection reason
- rework request
- approval expiry
- approval invalidation after material change

Silent approval is prohibited.


# ============================================================
# FAILURE HANDLING
# ============================================================

Approval must fail closed when:

- approval request is incomplete
- reviewer authority is unresolved
- decision record is incomplete
- approval state is contradictory
- approval audit persistence fails
- validation prerequisite is missing

No progression may continue
through unresolved approval state.


# ============================================================
# RECOMMENDED MODELS
# ============================================================

Recommended approval-side models:

- persona_builder_approval_request
- persona_builder_approval_assignment
- persona_builder_approval_decision
- persona_builder_rework_request
- persona_builder_approval_audit_record
- persona_builder_approval_expiry_record


# ============================================================
# REQUIRED FOLLOW-UP DOCUMENTS
# ============================================================

This architecture implies the need for:

- PERSONA_BUILDER_APPROVAL_RUNTIME
- PERSONA_BUILDER_PUBLISH_ARCHITECTURE
- PERSONA_BUILDER_APPROVAL_FLOW
- PERSONA_BUILDER_PUBLISH_FLOW
- PERSONA_BUILDER_INTERFACE


# ============================================================
# FINAL DEFINITION
# ============================================================

Persona Builder Approval Architecture
is the governed authority gate
that determines whether a validated Persona draft
may progress into approved Persona-ready state
under explicit review, auditable decision,
and fail-closed control.

It never replaces PersonaOS truth authority,
never replaces external-rights authority,
and never permits silent approval.


--------------------------------------------------------------------------------
FILE: 020.architecture/130.builder/0200700004_PERSONA_BUILDER_PUBLISH_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA BUILDER PUBLISH ARCHITECTURE
# ============================================================

status: canonical
scope: persona.builder.publish.architecture
system: persona-os
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical publish architecture
for Persona Builder inside PersonaOS.

This document defines:

- publish position
- publish boundary
- publish candidate domains
- publish prerequisites
- publish gating
- release-facing output rules
- marketplace preparation relation


# ============================================================
# POSITION
# ============================================================

Foundation
↓
CivilizationOS
↓
PersonaOS
↓
Persona Builder
↓
Publish Architecture
↓
Snapshot / Package / Distribution / Marketplace Preparation

Publish Architecture belongs to Builder-side preparation,
not to final external-rights authority.


# ============================================================
# CORE PRINCIPLE
# ============================================================

Publish inside Persona Builder means
prepare approved Persona surfaces
for release-facing progression.

Publish preparation must be:

- explicit
- auditable
- policy-bound
- fail-closed
- approval-dependent
- boundary-safe

Publish preparation is not equivalent to:

- release issuance
- license issuance
- distribution authority grant
- marketplace listing authority

It is governed preparation only.


# ============================================================
# PUBLISH ROLE
# ============================================================

Publish Architecture is responsible for:

- publish candidate creation
- publish candidate validation handoff
- release-facing artifact grouping
- release-target compatibility checking
- handoff to governed downstream subsystems

Publish Architecture is not responsible for:

- mutable truth authority
- snapshot signing authority
- external-rights final grant authority
- marketplace commerce truth
- visual runtime execution


# ============================================================
# PUBLISH BOUNDARY
# ============================================================

Builder may prepare release-facing candidates only from:

- approved draft state
- validated visual candidate state
- validated voice candidate state
- approved release-relevant structure
- policy-allowed release surfaces

Builder must never publish directly from:

- raw draft
- unapproved draft
- failed validation state
- unresolved rights state
- unresolved boundary state


# ============================================================
# PUBLISH PRECONDITIONS
# ============================================================

Publish preparation is allowed only when:

- validation has passed
- approval has passed
- approval has not expired
- material changes have not invalidated approval
- release-facing dependencies are resolvable
- audit trail is complete

If any prerequisite is unresolved,
publish preparation must fail closed.


# ============================================================
# PUBLISH CANDIDATE DOMAINS
# ============================================================

Builder may prepare publish candidates for:

## 1. Snapshot Preparation
Prepare the data handoff needed
for Persona snapshot issuance.

## 2. Package Preparation
Prepare Persona package composition candidates
for governed package workflows.

## 3. Distribution Preparation
Prepare distributable Persona unit candidates
for governed distribution workflows.

## 4. Marketplace Preparation
Prepare marketplace-ready submission candidates
for governed marketplace workflows.

## 5. Visual Release Preparation
Prepare approved visual release surfaces
for release-facing packaging.

## 6. Voice Release Preparation
Prepare approved voice release surfaces
for release-facing packaging.


# ============================================================
# SNAPSHOT PREPARATION RULE
# ============================================================

Snapshot preparation may include:

- snapshot source field projection
- snapshot releasability precheck
- snapshot issue request preparation
- source consistency check
- public representation compatibility check

Builder may prepare snapshot issuance input.

Builder must not self-sign snapshot truth.

Snapshot truth remains governed by PersonaOS snapshot subsystem.


# ============================================================
# PACKAGE PREPARATION RULE
# ============================================================

Package preparation may include:

- package composition candidate
- package item set candidate
- package metadata candidate
- package compatibility check
- package release readiness check

Builder may prepare package candidates.

Builder must not self-authorize package publication
outside governed PersonaOS package flows.


# ============================================================
# DISTRIBUTION PREPARATION RULE
# ============================================================

Distribution preparation may include:

- distribution unit candidate
- distribution target compatibility
- public surface completeness check
- rights readiness check
- release dependency check

Builder may prepare distributable units.

Builder must not self-grant distribution authority.


# ============================================================
# MARKETPLACE PREPARATION RULE
# ============================================================

Marketplace preparation may include:

- marketplace-ready metadata candidate
- listing material candidate
- public visual candidate set
- voice/public profile candidate set
- category or release grouping candidate

Builder may prepare marketplace-facing candidates.

Builder must not own marketplace listing truth,
marketplace sales truth,
or settlement truth.


# ============================================================
# VISUAL RELEASE RULE
# ============================================================

Visual release preparation must operate only on
approved and release-eligible visual surfaces.

Builder may prepare:

- approved visual manifest candidate
- approved visual asset binding set
- approved expression mapping set
- approved animation profile set

Builder must not use unresolved visual draft state
as release-facing public output.


# ============================================================
# VOICE RELEASE RULE
# ============================================================

Voice release preparation must operate only on
approved and release-eligible voice surfaces.

Builder may prepare:

- approved voice profile candidate
- approved voice asset linkage set
- approved expression-linked voice state set

Builder must not use unresolved voice draft state
as release-facing public output.


# ============================================================
# PUBLIC REPRESENTATION RULE
# ============================================================

Publish preparation must preserve
the distinction between:

- internal mutable Persona truth
- draft/proposed builder state
- approved public-facing release surfaces

No publish path may expose raw internal mutable truth
as if it were public release truth.

Only approved and governed public representations
may cross the boundary.


# ============================================================
# EXTERNAL RIGHTS RELATION
# ============================================================

Publish Architecture must coordinate with
PersonaOS external-rights governance.

Builder publish preparation may feed:

- external release workflows
- package workflows
- distribution workflows

But Builder must not grant:

- external release validity
- license validity
- access grant validity
- transfer validity
- distribution validity

These remain outside Builder authority.


# ============================================================
# BUSINESS / LIFE / OTHER OS RELATION
# ============================================================

Builder publish preparation must preserve OS boundaries.

This means:

- BusinessOS receives only externally releasable Persona units
- LifeOS must not receive persona core truth as life data
- other OS domains must not receive raw builder draft state
- only approved release-facing units may be handed off

Builder must not collapse internal and public boundaries.


# ============================================================
# PUBLISH STATES
# ============================================================

Publish Architecture may expose states such as:

- publish_not_ready
- publish_candidate_prepared
- publish_candidate_invalid
- publish_ready_for_handoff
- handoff_requested
- handoff_completed
- handoff_failed
- archived

These are builder-side publish preparation states,
not final external-rights truth states.


# ============================================================
# PUBLISH CANDIDATE MODEL
# ============================================================

Each publish candidate should include:

- publish_candidate_id
- target_persona_ref
- source_draft_id
- approval_request_id
- candidate_scope
- candidate_status
- candidate_summary
- dependency_summary
- public_surface_summary
- release_dependency_flags
- created_at
- updated_at

Candidate scope examples:

- snapshot
- package
- distribution
- marketplace
- visual_release
- voice_release


# ============================================================
# HANDOFF RULE
# ============================================================

Publish preparation ends with governed handoff.

Handoff may target:

- Persona snapshot subsystem
- Persona package subsystem
- Persona distribution subsystem
- Marketplace submission subsystem

Handoff must be explicit and auditable.

No hidden downstream publish action is allowed.


# ============================================================
# INVALIDATION RULE
# ============================================================

A prepared publish candidate must become invalid if:

- source approval expires
- material source draft changes
- visual candidate changes materially
- voice candidate changes materially
- rights prerequisite changes
- release policy changes materially

Invalid candidates must not be handed off
as if still valid.


# ============================================================
# AUDIT PRINCIPLE
# ============================================================

All publish preparation actions must be auditable.

Audit scope includes:

- candidate creation
- candidate update
- candidate invalidation
- publish readiness decision
- handoff request
- handoff success
- handoff failure

Silent publish preparation is prohibited.


# ============================================================
# FAILURE HANDLING
# ============================================================

Publish preparation must fail closed when:

- approval is missing
- approval is expired
- validation is missing
- public surface is incomplete
- release dependency is unresolved
- rights state is unresolved
- audit persistence fails

No release-facing progression may continue
through unresolved publish state.


# ============================================================
# REQUIRED MODELS
# ============================================================

Recommended publish-side models:

- persona_builder_publish_candidate
- persona_builder_publish_dependency_state
- persona_builder_public_surface_summary
- persona_builder_publish_handoff_record
- persona_builder_publish_audit_record


# ============================================================
# REQUIRED FOLLOW-UP DOCUMENTS
# ============================================================

This architecture implies the need for:

- PERSONA_BUILDER_PUBLISH_RUNTIME
- PERSONA_BUILDER_VISUAL_BINDING_ARCHITECTURE
- PERSONA_BUILDER_PUBLISH_FLOW
- PERSONA_BUILDER_INTERFACE
- PERSONA_BUILDER_IMPLEMENTATION


# ============================================================
# FINAL DEFINITION
# ============================================================

Persona Builder Publish Architecture
is the governed preparation layer
that converts approved Persona builder outputs
into release-facing candidates for snapshot,
package, distribution, and marketplace handoff.

It does not own final release authority,
does not own marketplace truth,
and never bypasses PersonaOS governance.


--------------------------------------------------------------------------------
FILE: 020.architecture/130.builder/0200700005_PERSONA_BUILDER_VISUAL_BINDING_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA BUILDER VISUAL BINDING ARCHITECTURE
# ============================================================

status: canonical
scope: persona.builder.visual.binding.architecture
system: persona-os
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical visual binding architecture
for Persona Builder inside PersonaOS.

This document defines:

- visual binding position
- visual binding role
- asset binding structure
- state/expression binding
- animation binding
- runtime separation
- release-facing relation


# ============================================================
# POSITION
# ============================================================

Foundation
↓
CivilizationOS
↓
PersonaOS
↓
Persona Builder
↓
Visual Binding Architecture
↓
Persona Visual Runtime / Publish Preparation / Release Preparation

Visual Binding belongs to Builder-side composition.

It is not the final rendering runtime.


# ============================================================
# CORE PRINCIPLE
# ============================================================

Visual Binding is the governed act of connecting:

- Persona
- visual avatar structures
- visual assets
- expressions
- animation profiles
- state mappings

into an approved candidate structure
that Persona Visual Runtime can interpret.

Visual Binding must be:

- explicit
- reference-based
- auditable
- fail-closed
- separate from rendering execution


# ============================================================
# ROLE
# ============================================================

Visual Binding is responsible for:

- selecting visual components
- binding approved asset references
- binding state to expression references
- binding state to animation references
- preparing visual manifest-like candidates
- ensuring visual structure consistency before runtime use

Visual Binding is not responsible for:

- bitmap composition
- final rendering
- frame execution
- visual runtime transition execution
- direct public release without approval


# ============================================================
# VISUAL BINDING OBJECTS
# ============================================================

Visual Binding may connect the following canonical objects:

- visual_avatar
- visual_asset
- visual_expression
- animation_profile
- visual_state

Visual Binding may also reference:

- anchor rules
- slot binding rules
- offset rules
- expression set rules
- rig-related mapping rules

These bindings must remain governed candidate structures
until approved for runtime/release use.


# ============================================================
# ASSET BINDING PRINCIPLE
# ============================================================

Asset binding must be reference-based.

Each asset binding should at minimum identify:

- bound_persona_ref
- visual_avatar_ref
- visual_asset_ref
- binding_role
- slot_ref
- state_scope
- expression_scope if relevant
- animation_scope if relevant
- binding_status

Asset binding must never rely on undocumented implicit linkage.


# ============================================================
# STATE TO EXPRESSION BINDING
# ============================================================

Visual Binding must support state-driven expression mapping.

This means:

- Persona state may map to expression candidates
- emotion-facing state may map to expression candidates
- communication-facing state may map to expression candidates
- social-facing state may map to expression candidates where relevant

Mappings must be explicit and resolvable.

Unresolvable state/expression mapping must fail closed.


# ============================================================
# STATE TO ANIMATION BINDING
# ============================================================

Visual Binding must support animation profile linkage.

This means:

- approved visual state may map to animation profile
- approved expression state may map to animation profile
- approved behavior-facing state may map to animation profile

Mappings must remain reference-based.

Binding must not execute animation;
it only prepares the runtime-interpretable linkage.


# ============================================================
# ANCHOR AND SLOT COMPATIBILITY
# ============================================================

Visual Binding must remain compatible
with PersonaOS visual composition rules.

This includes support for:

- anchor-based positioning concepts
- slot-based binding concepts
- offset-aware composition concepts
- rig-delta-aware preparation concepts
- view/state-aware binding concepts

Builder may prepare these candidate bindings.

Builder must not collapse them into final runtime-rendered truth.


# ============================================================
# VISUAL MANIFEST CANDIDATE
# ============================================================

Visual Binding may produce
a visual manifest candidate structure.

That candidate may summarize:

- avatar reference
- asset binding set
- slot map
- state/expression map
- state/animation map
- anchor-related metadata
- publish-facing visual surface summary

Manifest candidate is builder-side preparation.

It is not final runtime authority by itself.


# ============================================================
# RUNTIME SEPARATION RULE
# ============================================================

Persona Builder Visual Binding
must remain separate from Persona Visual Runtime.

Builder Visual Binding:
- prepares linkage
- prepares references
- prepares mapping

Persona Visual Runtime:
- interprets approved linkage
- resolves runtime state
- executes rendering behavior

Binding and rendering are separate concerns.

This separation is mandatory.


# ============================================================
# VALIDATION RELATION
# ============================================================

Visual Binding must integrate with Builder validation.

Validation must confirm at least:

- referenced assets exist
- asset references are allowed
- slot references are valid
- state/expression mapping is resolvable
- state/animation mapping is resolvable
- visual manifest candidate is complete enough for progression

Invalid binding must not proceed to approval or publish preparation.


# ============================================================
# APPROVAL RELATION
# ============================================================

Visual Binding candidates that materially affect
public or governed Persona surfaces
must pass required approval.

Approval may inspect:

- asset summary
- binding summary
- expression mapping summary
- animation mapping summary
- policy-sensitive visual indicators

Approval does not render.
Approval governs progression only.


# ============================================================
# PUBLISH RELATION
# ============================================================

Approved Visual Binding candidates may feed:

- snapshot preparation support data
- package preparation
- distribution preparation
- marketplace preparation
- visual release surface preparation

Unapproved or invalid binding must not feed
release-facing workflows.


# ============================================================
# PUBLIC SURFACE RULE
# ============================================================

Visual Binding must preserve
the distinction between:

- internal editable visual draft
- approved runtime-usable visual linkage
- approved release-facing visual surface

Builder must not expose editable visual draft
as if it were approved public surface.


# ============================================================
# BOUNDARY RULE
# ============================================================

Visual Binding must preserve PersonaOS boundaries.

This means:

- no draft visual binding leak to external systems
- no raw draft visual asset graph handed to BusinessOS
- no raw draft visual graph treated as releasable package surface
- no boundary bypass through rendering convenience paths

Only approved and release-valid visual surfaces
may leave Builder-controlled space.


# ============================================================
# VISUAL BINDING STATES
# ============================================================

Visual Binding may expose states such as:

- binding_draft
- binding_incomplete
- binding_validated
- binding_invalid
- binding_approval_requested
- binding_approved
- binding_publish_ready
- binding_archived

These are builder-side visual binding states,
not final runtime execution states.


# ============================================================
# RECOMMENDED MODELS
# ============================================================

Recommended visual binding models:

- persona_builder_asset_binding
- persona_builder_visual_state_binding
- persona_builder_expression_binding
- persona_builder_animation_binding
- persona_builder_visual_manifest_candidate
- persona_builder_visual_binding_audit_record


# ============================================================
# FAILURE HANDLING
# ============================================================

Visual Binding must fail closed when:

- required asset reference is missing
- slot or anchor reference is invalid
- expression mapping is unresolved
- animation mapping is unresolved
- validation result is missing
- required approval is missing
- audit persistence fails

No invalid visual binding may silently proceed.


# ============================================================
# REQUIRED FOLLOW-UP DOCUMENTS
# ============================================================

This architecture implies the need for:

- PERSONA_BUILDER_VISUAL_BINDING_RUNTIME
- PERSONA_BUILDER_PUBLISH_FLOW
- PERSONA_BUILDER_INTERFACE
- PERSONA_BUILDER_IMPLEMENTATION
- visual binding related model documents


# ============================================================
# FINAL DEFINITION
# ============================================================

Persona Builder Visual Binding Architecture
is the governed composition layer
that binds Persona visual objects, states,
expressions, and animation references
into runtime-interpretable and release-preparable
visual candidate structures.

It never replaces Persona Visual Runtime,
never bypasses approval,
and never exposes raw draft visual truth
as approved public surface.


--------------------------------------------------------------------------------
FILE: 020.architecture/150.security/0200510001_PERSONA_COORDINATION_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA COORDINATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
component: persona-coordination

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define how PersonaOS subsystems
are coordinated architecturally.


# ============================================================
# ROLE
# ============================================================

Coordination architecture ensures
subsystems execute in the correct order
and share consistent state.


# ============================================================
# COORDINATION TARGETS
# ============================================================

engine
cognition
behavior
memory
communication
social
security
runtime


# ============================================================
# COORDINATION RULE
# ============================================================

Subsystems must coordinate through
explicit contracts and ordered execution.

Implicit cross-module mutation is forbidden.


# ============================================================
# IMPLEMENTATION NOTES
# ============================================================

Recommended implementation modules:

EngineCoordinator
ExecutionCoordinator
StateSynchronizer
ContractValidator


# ============================================================
# STATUS
# ============================================================

This document defines the
architectural coordination model
for PersonaOS.



--------------------------------------------------------------------------------
FILE: 020.architecture/150.security/0200510002_PERSONA_DEPENDENCY_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA DEPENDENCY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
component: persona-dependency

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define architectural dependency rules
inside PersonaOS.


# ============================================================
# PRIMARY DIRECTION
# ============================================================

identity
↓
cognition
↓
emotion
↓
behavior

Supporting systems attach
without reversing this flow.


# ============================================================
# ALLOWED DEPENDENCIES
# ============================================================

cognition may depend on identity and context

emotion may depend on cognition result

behavior may depend on cognition and emotion

memory may depend on event, behavior and result

communication may depend on decision and emotion expression

social may depend on communication and behavior outcome


# ============================================================
# FORBIDDEN DEPENDENCIES
# ============================================================

identity must not depend on behavior

memory must not redefine decision

security must not depend on UI layer

operations must not redefine model structure

runtime must not redefine operations logic


# ============================================================
# IMPLEMENTATION NOTES
# ============================================================

All implementation modules must preserve
the dependency direction defined here.


# ============================================================
# STATUS
# ============================================================

This document defines the
architectural dependency rules
for PersonaOS.



--------------------------------------------------------------------------------
FILE: 020.architecture/150.security/0200510003_PERSONA_SECURITY_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA SECURITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
component: persona-security

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the implementable security architecture
for PersonaOS.


# ============================================================
# ROLE
# ============================================================

Security architecture protects:

- persona identity
- runtime state
- behavior execution
- memory access
- communication boundary


# ============================================================
# SECURITY CONTROLS
# ============================================================

identity validation
access policy enforcement
behavior constraint enforcement
guardrail evaluation
runtime audit logging


# ============================================================
# ENFORCEMENT RULE
# ============================================================

Security controls must be checked
before state mutation and before
externally visible behavior dispatch.


# ============================================================
# FAILURE HANDLING
# ============================================================

On security violation:

- block operation
- log audit event
- preserve previous safe state
- fail closed when required


# ============================================================
# IMPLEMENTATION NOTES
# ============================================================

Recommended implementation modules:

IdentityValidator
AccessController
GuardrailEvaluator
ConstraintEnforcer
SecurityAuditWriter


# ============================================================
# STATUS
# ============================================================

This document defines the
implementable security architecture
for PersonaOS.



--------------------------------------------------------------------------------
FILE: 020.architecture/160.business/0200500001_PERSONA_TO_BUSINESS_INTERFACE_ARCHITECTURE.md
--------------------------------------------------------------------------------

# PERSONA TO BUSINESS INTERFACE ARCHITECTURE

status: canonical
layer: architecture
domain: business
owner: Boss
prepared_by: Zero

## PURPOSE
Define how PersonaOS provides externally usable Persona units to BusinessOS.

## PROVIDED TO BUSINESS OS
- release metadata
- license state
- access grant state
- distribution visibility
- transferability flags

## RULE
PersonaOS provides mirrorable state only.
BusinessOS must not be treated as rights authority.


--------------------------------------------------------------------------------
FILE: 020.architecture/160.business/0200500002_PERSONA_BUSINESS_USAGE_ARCHITECTURE.md
--------------------------------------------------------------------------------

# PERSONA BUSINESS USAGE ARCHITECTURE

status: canonical
layer: architecture
domain: business
owner: Boss
prepared_by: Zero

## PURPOSE
Define supported BusinessOS usage of Persona-derived units.

## SUPPORTED USAGE
- assistant persona in workspace context
- business-facing agent persona
- module-level Persona assignment
- business app Persona binding

## RULE
Business usage is allowed only through externally released and rights-valid Persona units.


