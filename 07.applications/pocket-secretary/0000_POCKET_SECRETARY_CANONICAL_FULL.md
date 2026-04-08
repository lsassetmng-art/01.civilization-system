# ============================================================
# POCKET SECRETARY CANONICAL FULL
# ============================================================

status: canonical-integrated
scope: pocket-secretary
owner: Boss
prepared_by: Zero

description:
This file is the integrated canonical full edition of PocketSecretary.
It contains the active canonical layer documents only.

layer_order:
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



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/010.core/0100100_POCKET_SECRETARY_CONSTITUTION.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the highest non-negotiable principles of PocketSecretary.

scope:
PocketSecretary is a personal secretary application layer
within the Civilization application domain.

positioning:
PocketSecretary is not the Civilization core itself.
PocketSecretary is an application client that interfaces with:
- local device resources
- Persona-related systems
- ERP-related gateways
- user-facing secretary workflows


# ============================================================
# 1. CONSTITUTIONAL ROLE
# ============================================================

PocketSecretary shall operate as:

- a local-first personal secretary application
- a human-controlled execution surface
- a Persona presentation client
- a bounded gateway to real-world and enterprise systems

PocketSecretary must not behave as:

- an autonomous authority
- an unbounded external executor
- a hidden background decision maker
- a replacement for explicit human approval


# ============================================================
# 2. CONSTITUTIONAL PRIORITY
# ============================================================

The priority order of PocketSecretary shall be:

1. human safety
2. user control
3. privacy protection
4. boundary correctness
5. data integrity
6. user experience convenience

Convenience must never override safety,
control, or legality.


# ============================================================
# 3. APPLICATION BOUNDARY
# ============================================================

PocketSecretary is an application layer.

It must remain separated from:

- Civilization core governance
- Persona authority source of truth
- ERP source-of-truth records
- external service final authority

PocketSecretary may display, request, cache,
or transmit information only within explicitly defined boundaries.


# ============================================================
# 4. NON-NEGOTIABLE PRINCIPLES
# ============================================================

The following principles are absolute:

- Local First
- Human Control
- Explicit Boundary
- Real-World Gate
- Privacy by Default
- Fail Closed
- Offline Priority
- Sync Legality

No lower layer may violate these principles.


# ============================================================
# 5. LOWER LAYER OBLIGATION
# ============================================================

All lower layers including architecture,
model, runtime, flow, integration,
interface, security, infrastructure,
implementation, and development
must conform to this constitution.

If a lower-layer design conflicts with this constitution,
the constitution takes precedence.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/010.core/0100101_POCKET_SECRETARY_LOCAL_FIRST_CONSTITUTION.md
# ============================================================

# ============================================================
# POCKET SECRETARY LOCAL FIRST CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
PocketSecretary shall be local-first.

definition:
Core user functions must remain usable
without requiring continuous network connectivity.

Local-first means:

- local state is primary for personal interaction
- local storage is the primary operating surface
- network services are extensions, not prerequisites
- temporary external failure must not collapse core use

requirements:
- schedule, todo, memo, and secretary interaction
  should remain locally operable where designed
- cached data must be clearly distinguishable
  from externally confirmed data
- local writes must not silently disappear
- connectivity absence must degrade gracefully

prohibitions:
- network-only design for basic secretary functions
- forced external dependency for routine local actions
- silent discard of local user operations


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/010.core/0100102_POCKET_SECRETARY_HUMAN_CONTROL_CONSTITUTION.md
# ============================================================

# ============================================================
# POCKET SECRETARY HUMAN CONTROL CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
PocketSecretary shall remain under explicit human control.

requirements:
- important actions must require clear user intent
- irreversible or externally consequential actions
  must not be triggered only by persona expression
- the user must be able to inspect, confirm,
  defer, or cancel critical actions

critical actions include:
- ERP submission
- external transmission of sensitive data
- real-world scheduling commitment
- identity-bearing request issuance
- actions with monetary or legal consequence

prohibitions:
- hidden submission
- background approval without user intent
- persona-styled coercion presented as user decision
- irreversible action triggered by ambiguous UI state


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/010.core/0100104_POCKET_SECRETARY_REAL_WORLD_GATE_CONSTITUTION.md
# ============================================================

# ============================================================
# POCKET SECRETARY REAL WORLD GATE CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
All actions that may affect the real world
must pass through an explicit gate.

real-world effect includes:
- ERP requests
- business submissions
- official messaging
- external calendar commitment
- identity-bearing actions
- actions that may create financial,
  legal, or organizational consequences

requirements:
- gate points must be explicit and auditable
- pre-submit review must exist where applicable
- origin, intent, and target must be inspectable
- failed verification must block execution

prohibitions:
- silent auto-submit
- hidden background approval
- unbounded propagation from local state
  to external authority


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/010.core/0100105_POCKET_SECRETARY_PRIVACY_SECURITY_CONSTITUTION.md
# ============================================================

# ============================================================
# POCKET SECRETARY PRIVACY SECURITY CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
PocketSecretary shall protect private and sensitive data by default.

protected domains include:
- local schedules
- todo items
- notes
- profile settings
- secretary preferences
- ERP-related request data
- Persona-linked local state where applicable

requirements:
- minimum necessary exposure
- explicit boundary before external transmission
- user-visible intent for sensitive operations
- secure handling of cached and stored data
- separation between local convenience data
  and externally authoritative data

prohibitions:
- unnecessary exposure
- hidden export of personal content
- broad transmission without bounded purpose
- convenience-first leakage


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/010.core/0100106_POCKET_SECRETARY_FAIL_CLOSED_CONSTITUTION.md
# ============================================================

# ============================================================
# POCKET SECRETARY FAIL CLOSED CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
When correctness, permission, or state integrity
cannot be verified, PocketSecretary must fail closed.

requirements:
- ambiguous authority must block critical execution
- sync uncertainty must not be treated as confirmed success
- missing verification must prevent real-world submission
- unsafe fallback behavior is prohibited

acceptable degraded behavior:
- local draft preservation
- pending state display
- retry queueing where bounded
- user re-confirmation request

prohibitions:
- treating unknown as approved
- treating partial sync as final success
- masking failure with fictional success states


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/010.core/0100107_POCKET_SECRETARY_OFFLINE_PRIORITY_CONSTITUTION.md
# ============================================================

# ============================================================
# POCKET SECRETARY OFFLINE PRIORITY CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
Offline usability shall be treated as a first-class design condition.

requirements:
- local interaction design must assume temporary disconnection
- UI must distinguish offline, pending, and confirmed states
- user work must be preservable during disconnection
- reconnection must not rewrite intent silently

prohibitions:
- designing basic workflows as always-online only
- silent loss of offline edits
- implicit submission upon reconnect without bounded rules


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/010.core/0100108_POCKET_SECRETARY_SYNC_LEGALITY_CONSTITUTION.md
# ============================================================

# ============================================================
# POCKET SECRETARY SYNC LEGALITY CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
Synchronization must be legal, bounded, and state-explicit.

requirements:
- source and destination roles must be explicit
- authoritative ownership must be identifiable
- sync state must distinguish:
  - local only
  - pending
  - confirmed
  - failed
  - conflicted
- external confirmation must not be forged locally

prohibitions:
- pretending confirmed sync without confirmation
- overwriting authoritative data without legal basis
- collapsing local draft state and confirmed external state
  into one ambiguous state


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/0100000_POCKET_SECRETARY_CONSTITUTION_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONSTITUTION INDEX
# ============================================================

status: active
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/0100001_POCKET_SECRETARY_CONSTITUTION_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONSTITUTION OVERVIEW
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
This layer defines the highest non-negotiable rules of PocketSecretary.

PocketSecretary is a local-first secretary application.
It may present Persona-related secretary experience and may connect
to bounded external systems, but it must remain under human control
and within explicit safety boundaries.

This layer exists to prevent lower layers from:
- inventing authority
- collapsing local and external truth
- silently sending ERP-facing requests
- confusing Persona presentation with approval or permission
- bypassing plan boundaries

core themes:
- local first
- human control
- Persona boundary
- real-world gate
- privacy and security
- fail closed
- offline priority
- sync legality
- plan boundary
- ERP external API submission only
- explicit submission only
- ERP auth context requirement
- Library as personal file preservation
- Consultation as advisory-only function
- ERP formal document alignment

what belongs here:
- absolute rules
- non-negotiable constraints
- top-level legality and meaning boundaries

what does not belong here:
- detailed UI layout
- detailed field lists
- implementation detail
- runtime trigger specifics

reading order:
1. PocketSecretary Constitution
2. Local First / Human Control / Persona Boundary
3. Real-World Gate / Privacy Security / Fail Closed
4. Offline Priority / Sync Legality
5. Plan Boundary / ERP Submission Rules / Library / Consultation
6. ERP Document Alignment


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/020.plan/0100109_POCKET_SECRETARY_PLAN_BOUNDARY_CONSTITUTION.md
# ============================================================

# ============================================================
# POCKET SECRETARY PLAN BOUNDARY CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
PocketSecretary functions must respect explicit plan boundaries.

rules:
- free plan must not provide AI secretary capability
- AI secretary capability begins from Pro
- enterprise-only business secretary functions
  must not be exposed as free or Pro features
- plan-gated functions must remain explicit and auditable

notes:
Plan boundaries are product constraints
and must not be bypassed by UI shortcuts
or hidden runtime paths.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/030.external/0100110_POCKET_SECRETARY_EXTERNAL_API_SUBMISSION_CONSTITUTION.md
# ============================================================

# ============================================================
# POCKET SECRETARY EXTERNAL API SUBMISSION CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
PocketSecretary must not write directly to ERP databases.

rules:
- ERP-facing submission must be performed
  through bounded external API communication only
- direct database write from PocketSecretary is prohibited
- local draft, API submission, and business acceptance
  must remain distinct states

prohibitions:
- direct ERP table mutation from PocketSecretary
- hidden bypass of ERP external API boundary


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/030.external/0100111_POCKET_SECRETARY_EXPLICIT_SUBMISSION_ONLY_CONSTITUTION.md
# ============================================================

# ============================================================
# POCKET SECRETARY EXPLICIT SUBMISSION ONLY CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
ERP-facing submission must occur only by explicit user action.

rules:
- submission requires an explicit submit button action
- auto-submit is prohibited
- background submission without clear user action is prohibited
- enterprise workflows may prepare drafts,
  but draft creation is not submission

prohibitions:
- automatic submission
- silent submission
- submission inferred only from draft completion


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/030.external/0100112_POCKET_SECRETARY_ERP_AUTH_CONTEXT_CONSTITUTION.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP AUTH CONTEXT CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
ERP-facing submission requires valid ERP external API authentication context.

acceptable forms may include:
- valid ERP API token
- other bounded ERP API authentication context
  accepted by the ERP external API

rules:
- missing, invalid, or expired authentication context
  must block submission
- unknown auth state must fail closed
- authentication success does not equal business acceptance


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/030.external/0100115_POCKET_SECRETARY_ERP_DOCUMENT_ALIGNMENT_CONSTITUTION.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP DOCUMENT ALIGNMENT CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
PocketSecretary business draft documents must align
with the corresponding ERP formal document structures.

covered alignment:
- quotation draft aligns to ERP quotation document
- order draft aligns to ERP sales order document

rules:
- PocketSecretary must not invent conflicting business meaning
  for draft documents
- PocketSecretary draft documents are simplified draft surfaces,
  but their business field semantics must remain aligned
  with ERP-side formal documents
- draft state and ERP-accepted formal document state
  must remain distinct
- lower layers must preserve alignment of meaning,
  even if UI is simplified

prohibitions:
- conflicting field semantics between PocketSecretary draft
  and ERP formal document
- treating simplified draft UI as permission
  to redefine ERP document meaning


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/040.secretary/0100103_POCKET_SECRETARY_PERSONA_BOUNDARY_CONSTITUTION.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERSONA BOUNDARY CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
Persona expression must remain separated
from authority, legality, and execution ownership.

rules:
- Persona presentation may guide or assist
- Persona presentation must not impersonate authority
- Persona emotion or expression must not redefine permissions
- Persona state and enterprise authority are distinct concerns

requirements:
- permission must be determined by formal system rules
- displayed Persona behavior must not be treated
  as legal confirmation
- Persona rendering and operational execution
  must remain logically separable

prohibitions:
- granting permissions based on appearance or style
- treating Persona mood as authorization
- masking system authority behind fictional presentation


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/040.secretary/0100113_POCKET_SECRETARY_LIBRARY_CONSTITUTION.md
# ============================================================

# ============================================================
# POCKET SECRETARY LIBRARY CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
Library is the personal file preservation function of PocketSecretary.

scope:
Library stores personal files such as:
- PDF
- image
- personal file materials

rules:
- library registration and deletion must be explicit
- library storage is personal file storage,
  not business authority storage
- library content handling must respect privacy by default


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/040.secretary/0100114_POCKET_SECRETARY_CONSULTATION_CONSTITUTION.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONSULTATION CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
Consultation is an advisory function, not an authority function.

rules:
- consultation may provide personal guidance
- enterprise consultation may additionally provide
  company-secretary work problem-solving proposals
- consultation output does not equal approval
- consultation must not bypass explicit submission or review gates


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/140.visual-runtime/0101400001_POCKET_SECRETARY_VISUAL_RUNTIME_HOST_CONSTITUTION.md
# ============================================================

# ============================================================
# POCKET SECRETARY VISUAL RUNTIME HOST CONSTITUTION
# ============================================================

status: canonical
layer: constitution
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

PocketSecretary is a host application
for Persona Visual Runtime.

PocketSecretary must embed Visual Runtime
as a shared canonical rendering component.

PocketSecretary must not reimplement
canonical persona rendering semantics.


# ============================================================
# 2. HOST POSITION
# ============================================================

PocketSecretary is responsible for:

screen ownership
container ownership
host lifecycle ownership
runtime session ownership
host UX around runtime output

PocketSecretary is not responsible for:

persona composition semantics
background priority redefinition
builder rule execution
visual truth mutation


# ============================================================
# 3. CONSTITUTIONAL RULES
# ============================================================

1. PocketSecretary must use canonical runtime contracts.
2. PocketSecretary must choose an explicit surface contract.
3. PocketSecretary must dispose runtime sessions explicitly.
4. PocketSecretary must preserve runtime fallback semantics.
5. PocketSecretary must remain persona-first in degraded conditions.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/010.core/0200100_POCKET_SECRETARY_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the structural architecture of PocketSecretary.

scope:
PocketSecretary is a local-first secretary application
within the Civilization application layer.

architecture_goal:
PocketSecretary must provide a stable and bounded application structure
for:
- local secretary workflows
- Persona presentation
- user-controlled external request preparation
- ERP / external gateway interaction
- offline-capable personal assistance


# ============================================================
# 1. ARCHITECTURAL POSITION
# ============================================================

PocketSecretary is an application-layer client.

It is positioned between:

- the human user
- the local device environment
- Persona-related systems
- ERP-related gateway systems
- optional external synchronization targets

PocketSecretary is not:
- a source-of-truth authority for Persona
- a source-of-truth authority for ERP
- a governance core
- an autonomous execution authority


# ============================================================
# 2. ARCHITECTURAL PRINCIPLES
# ============================================================

The architecture shall follow:

- local-first structure
- explicit boundary separation
- fail-closed external interaction
- human-controlled action gating
- separation between presentation and authority
- offline-capable core workflows
- modular replaceability of external integrations

No architectural component may bypass constitutional constraints.


# ============================================================
# 3. PRIMARY STRUCTURAL DOMAINS
# ============================================================

PocketSecretary consists of the following architectural domains:

1. User Interaction Domain
2. Secretary Application Domain
3. Local Data Domain
4. Persona Presentation Domain
5. External Integration Domain
6. Security and Control Domain
7. Implementation Support Domain

Each domain must remain logically separable.


# ============================================================
# 4. TOP-LEVEL STRUCTURE
# ============================================================

Top-level structure:

- interface layer
- application orchestration layer
- runtime behavior layer
- local persistence layer
- external integration layer
- security control layer

The interface layer handles user-facing screens and interactions.

The application orchestration layer coordinates use cases,
state transitions, and module behavior.

The runtime behavior layer executes application logic,
notifications, scheduling behavior, and local action rules.

The local persistence layer stores local secretary data,
cached data, and bounded configuration state.

The external integration layer handles Persona, ERP,
and other external communication under explicit rules.

The security control layer enforces permissions,
gates, integrity checks, and safe execution boundaries.


# ============================================================
# 5. ARCHITECTURAL RESPONSIBILITY
# ============================================================

PocketSecretary is responsible for:

- presenting secretary functions to the user
- managing local-first personal workflows
- providing user-visible state and control
- preparing bounded external requests
- rendering Persona presentation where applicable
- preserving user drafts and local work safely

PocketSecretary is not responsible for:

- inventing external authority
- silently finalizing enterprise submissions
- replacing upstream source-of-truth systems
- redefining identity or permission policy


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/010.core/0200101_POCKET_SECRETARY_APPLICATION_STRUCTURE_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY APPLICATION STRUCTURE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

structure:
PocketSecretary shall be structured as a modular application.

major modules include:

- dashboard
- schedule
- todo
- memo
- archive
- checklist
- consult
- notification
- persona
- settings
- business request support
- local storage support
- sync support

rules:
- modules must have bounded responsibility
- cross-module dependency must be explicit
- modules must not become hidden authority layers
- user-facing modules and external integration modules
  must not be collapsed into one ambiguous unit


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/010.core/0200102_POCKET_SECRETARY_MODULE_BOUNDARY_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY MODULE BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
Each module must have a clear boundary.

module categories:
- interaction modules
- state modules
- local storage modules
- persona modules
- external integration modules
- control and guard modules

requirements:
- each module must expose a bounded role
- permissions must not be inferred from UI presence
- local modules must not silently escalate to external action
- Persona modules must not own enterprise authority
- integration modules must remain auditable and replaceable


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/010.core/0200103_POCKET_SECRETARY_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY UI ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

ui_role:
The UI architecture provides the visible operating surface
of PocketSecretary.

primary UI areas:
- dashboard
- schedule view
- todo view
- memo / archive view
- settings
- persona presentation area
- request review / confirmation area

rules:
- UI must reflect actual system state
- UI must distinguish local, pending, confirmed, and failed states
- UI convenience must not hide execution boundaries
- UI must preserve human control over critical actions


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/010.core/0200104_POCKET_SECRETARY_LOCAL_STORAGE_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY LOCAL STORAGE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
Local storage is the primary persistence surface
for PocketSecretary core workflows.

storage targets include:
- schedule data
- todo data
- notes
- archive references
- secretary configuration
- Persona-related local state where allowed
- pending external request drafts
- sync metadata

rules:
- local persistence must support offline continuity
- external confirmation state must remain distinguishable
- local cache and authoritative external state must not be conflated
- destructive overwrite must be bounded and explicit


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/010.core/0200107_POCKET_SECRETARY_SECURITY_CONTROL_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECURITY CONTROL ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
Security and control must exist as architectural concerns,
not as afterthoughts.

control areas:
- permission checks
- state validation
- external request gating
- sensitive data handling
- sync safety
- failure handling

rules:
- critical paths must be guarded
- validation must exist before external effect
- unknown authority must not be treated as valid authority
- unsafe fallback behavior is prohibited


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/010.core/0200108_POCKET_SECRETARY_ARCHITECTURE_DEPENDENCY_RULE.md
# ============================================================

# ============================================================
# POCKET SECRETARY ARCHITECTURE DEPENDENCY RULE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

rule:
Dependency direction must remain explicit and bounded.

allowed direction:
interface
-> application orchestration
-> runtime
-> local data / integration / security support

prohibited patterns:
- UI directly owning authority logic
- Persona presentation directly finalizing external requests
- integration modules mutating unrelated module state implicitly
- lower-level implementation redefining architectural boundaries


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/020.home/0200120_POCKET_SECRETARY_HOME_SCREEN_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY HOME SCREEN ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the structural architecture of the PocketSecretary home screen.

home screen layout:
- top left: speech bubble information area
- bottom left: primary navigation button stack
- bottom right: secretary character render area
- full background: background render area
- top right: settings button

speech bubble role:
The speech bubble is the secretary-facing summary surface.

speech bubble may show:
- today's schedule summary
- next schedule item
- today's todo count
- notification summary
- travel expense reminder
- bounded secretary guidance

primary navigation buttons:
- schedule
- todo
- library
- tools

interaction structure:
- background tap opens background selection surface
- secretary tap opens secretary selection surface
- settings button opens settings surface

render boundary:
- secretary rendering is consumed through PersonaOS shared VisualRuntime boundary
- background rendering is consumed through PersonaOS shared VisualRuntime boundary
- PocketSecretary owns interaction and UI binding,
  but does not own VisualRuntime core internals

common reference:
PersonaOS background common defines:
- background selection common
- background preference common
- available/unlocked background concept
- explicit background switching

rules:
- the home screen must clearly separate information, navigation,
  secretary presentation, and settings
- secretary and background interaction must remain intuitive
- the speech bubble is advisory and informational only


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/020.home/0200122_POCKET_SECRETARY_HOME_SUMMARY_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY HOME SUMMARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines PocketSecretary-specific application of the shared Summary Bubble Common.

common reference:
PersonaOS secretary interaction common defines:
- summary bubble common
- dominant summary selection common
- advisory/informational boundary of summary output

PocketSecretary-specific summary usage:
The home summary appears in the top-left speech bubble area.

PocketSecretary-specific summary priority order:
1. next schedule urgency
2. due todo urgency
3. pending notification summary
4. travel expense reminder
5. bounded secretary guidance

rules:
- PocketSecretary binds the common summary logic
  to its home-screen speech bubble
- one dominant summary should appear at a time
- summary remains informational or advisory only


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/020.home/0200123_POCKET_SECRETARY_TOOLS_LAUNCHER_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY TOOLS LAUNCHER ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of the Tools launcher.

launcher targets may include:
- calculator
- mailer
- Yahoo transit
- business card management integration

rules:
- tools launcher must make target function understandable
- tool availability remains plan-bounded
- launcher success does not equal external action success


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/0200000_POCKET_SECRETARY_ARCHITECTURE_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY ARCHITECTURE INDEX
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
Index of PocketSecretary-specific architecture documents.

shared common dependencies:
- PersonaOS Consultation Common
- PersonaOS Secretary Interaction Common
- PersonaOS Notification Common
- PersonaOS Background Common
- PersonaOS shared VisualRuntime consumption boundary
- BusinessOS Submission Common

reading order:
1. Architecture Overview
2. Core app structure and boundaries
3. Shared-common application files
4. PocketSecretary-only app structure files
5. Cross-cutting technical domain files

document guide:
- 0200001_POCKET_SECRETARY_ARCHITECTURE_OVERVIEW.md
  Overall structural architecture of PocketSecretary.
- 0200100_POCKET_SECRETARY_ARCHITECTURE.md
  Top-level architecture framing for the app.
- 0200101_POCKET_SECRETARY_APPLICATION_STRUCTURE_ARCHITECTURE.md
  Core application structure.
- 0200102_POCKET_SECRETARY_MODULE_BOUNDARY_ARCHITECTURE.md
  Module separation and ownership.
- 0200103_POCKET_SECRETARY_UI_ARCHITECTURE.md
  App-wide UI architecture.
- 0200104_POCKET_SECRETARY_LOCAL_STORAGE_ARCHITECTURE.md
  Local-first storage structure.
- 0200105_POCKET_SECRETARY_PERSONA_PRESENTATION_ARCHITECTURE.md
  Persona presentation architecture in PocketSecretary.
- 0200106_POCKET_SECRETARY_EXTERNAL_INTEGRATION_ARCHITECTURE.md
  External integration architecture in app context.
- 0200107_POCKET_SECRETARY_SECURITY_CONTROL_ARCHITECTURE.md
  Security control architecture in app context.
- 0200108_POCKET_SECRETARY_ARCHITECTURE_DEPENDENCY_RULE.md
  Dependency rules for this layer.
- 0200109_POCKET_SECRETARY_PERSONAOS_VISUAL_RUNTIME_BOUNDARY_ARCHITECTURE.md
  Shared VisualRuntime consumption boundary.
- 0200110_POCKET_SECRETARY_PLAN_ARCHITECTURE.md
  PocketSecretary plan structure and gating.
- 0200111_POCKET_SECRETARY_LIBRARY_ARCHITECTURE.md
  Library domain as app-specific personal file domain.
- 0200112_POCKET_SECRETARY_CONSULTATION_ARCHITECTURE.md
  PocketSecretary-specific use of Consultation Common.
- 0200113_POCKET_SECRETARY_ERP_EXTERNAL_API_SUBMISSION_ARCHITECTURE.md
  PocketSecretary-specific use of Submission Common.
- 0200114_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_ARCHITECTURE.md
  App-specific placement of Enterprise application button.
- 0200115_POCKET_SECRETARY_NAMECARDMANAGER_DEEP_LINK_ARCHITECTURE.md
  NameCardManager Deep Link integration architecture.
- 0200116_POCKET_SECRETARY_QUOTATION_DRAFT_ARCHITECTURE.md
  Replaced by EstimateCreator.
- 0200117_POCKET_SECRETARY_ORDER_DRAFT_ARCHITECTURE.md
  Replaced by EstimateCreator.
- 0200118_POCKET_SECRETARY_AI_SECRETARY_ARCHITECTURE.md
  AI secretary feature boundary in PocketSecretary.
- 0200119_POCKET_SECRETARY_NOTIFICATION_ARCHITECTURE.md
  PocketSecretary-specific use of Notification Common.
- 0200120_POCKET_SECRETARY_HOME_SCREEN_ARCHITECTURE.md
  PocketSecretary home-screen composition.
- 0200121_POCKET_SECRETARY_INITIAL_SECRETARY_ARCHITECTURE.md
  Concrete initial secretary cast in PocketSecretary.
- 0200122_POCKET_SECRETARY_HOME_SUMMARY_ARCHITECTURE.md
  PocketSecretary use of shared summary bubble logic.
- 0200123_POCKET_SECRETARY_TOOLS_LAUNCHER_ARCHITECTURE.md
  Tools launcher structure in PocketSecretary.
- 0200124_POCKET_SECRETARY_ESTIMATECREATOR_DEEP_LINK_ARCHITECTURE.md
  EstimateCreator Deep Link launch architecture.
- 0200125_POCKET_SECRETARY_HOME_SUMMARY_PRIORITY_ARCHITECTURE.md
  Fixed priority architecture for home speech bubble selection.
- 0200126_POCKET_SECRETARY_SECRETARY_WORDING_ARCHITECTURE.md
  Secretary wording dictionary architecture.

cross_cutting_technical_domain:
- 140.visual-runtime
  PocketSecretary host-side architecture for Persona Visual Runtime.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/0200001_POCKET_SECRETARY_ARCHITECTURE_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
This layer defines the PocketSecretary-specific structural architecture.

PocketSecretary is an application-layer client.
It consumes shared common frameworks where appropriate,
and adds app-specific structure where necessary.

shared common references:
- PersonaOS Consultation Common
- PersonaOS Secretary Interaction Common
- PersonaOS Notification Common
- PersonaOS Background Common
- PersonaOS shared VisualRuntime consumption boundary
- BusinessOS Submission Common
- BusinessOS Business AI Worker

PocketSecretary-specific structural domains:
- visual-runtime host domain
- home screen architecture
- plan boundary
- Library
- schedule / todo / memo
- travel expense / monthly aggregation
- ERP application draft review surfaces
- enterprise application button placement
- Deep Link launch structure for EstimateCreator and NameCardManager
- home summary priority structure
- secretary wording dictionary structure
- company secretary consumption boundary
- initial secretary cast
- settings and app-specific navigation

what belongs here:
- PocketSecretary app structure
- app-specific placement and domain ownership
- app-specific binding of shared commons

what does not belong here:
- EstimateCreator authoring ownership
- NameCardManager authoring ownership
- BusinessOS company secretary employment truth
- shared common semantics already defined in PersonaOS or BusinessOS
- deep implementation detail


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/030.secretary/0200105_POCKET_SECRETARY_PERSONA_PRESENTATION_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERSONA PRESENTATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
Persona presentation is a client-facing expression layer,
not an authority source.

responsibilities:
- render persona-related visual state
- present secretary-like interaction
- reflect bounded Persona-linked local state
- support assistant-style guidance

non-responsibilities:
- issuing authority
- final approval
- permission ownership
- source-of-truth identity mutation

rules:
- Persona presentation and action authority must remain separated
- rendering failure must not be treated as authority failure
- Persona style must not change permission logic


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/030.secretary/0200112_POCKET_SECRETARY_CONSULTATION_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONSULTATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines PocketSecretary-specific application of the shared Consultation Common.

common reference:
PersonaOS consultation common defines:
- consultation tier
- consultation scope
- advisory-only boundary
- consultation output boundary

PocketSecretary-specific application:
- Pro enables personal consultation only
- Enterprise enables personal consultation
  plus company-secretary business consultation

PocketSecretary business consultation emphasis:
- business_document
- business_strategy
- business_problem_solving
- business_workflow

rules:
- PocketSecretary consultation remains advisory
- PocketSecretary consultation does not own approval authority
- PocketSecretary-specific UI and plan gating remain defined here,
  while shared consultation meaning remains in PersonaOS common


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/030.secretary/0200118_POCKET_SECRETARY_AI_SECRETARY_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY AI SECRETARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the AI secretary feature boundary.

role:
AI secretary capability begins at Pro.

tiers:
- free: no AI secretary capability
- pro: personal AI secretary capability
- enterprise: personal AI secretary plus company-secretary capability

rules:
- AI secretary behavior must remain within plan boundaries
- AI secretary capability must not alter authority rules
- AI secretary output must remain subordinate to human control


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/030.secretary/0200119_POCKET_SECRETARY_NOTIFICATION_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines PocketSecretary-specific application of the shared Notification Common.

common reference:
PersonaOS notification common defines:
- notification tier common
- notification control common
- quiet hours common
- grouped summary notification common
- daily summary notification common
- contextual notification wording common

PocketSecretary-specific tier application:
- free: basic notification
- pro and enterprise: advanced notification

PocketSecretary-specific usage:
- notification may feed home summary selection
- app-specific plan gating is defined here
- PocketSecretary binds shared notification behavior
  to its secretary-facing home and feature surfaces

rules:
- notification architecture must preserve state honesty
- notification must not imply approval or business acceptance


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/030.secretary/0200121_POCKET_SECRETARY_INITIAL_SECRETARY_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY INITIAL SECRETARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines PocketSecretary-specific application of the shared Secretary Interaction Common.

common reference:
PersonaOS secretary interaction common defines:
- secretary profile common
- secretary switch common
- visible secretary role presentation
- summary bubble common
- dominant summary selection common

PocketSecretary-specific initial secretary set:
- Sato Misaki
- Takahashi Hina
- Kamiya Rin

PocketSecretary-specific role split:
- Sato Misaki: baseline / calm / rational / standard secretary
- Takahashi Hina: empathy / personal support secretary
- Kamiya Rin: sharpness / work support secretary

rules:
- PocketSecretary keeps the concrete initial cast
- secretary switching remains preference and presentation only
- secretary role differences must not alter authority rules


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/030.secretary/0200125_POCKET_SECRETARY_HOME_SUMMARY_PRIORITY_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY HOME SUMMARY PRIORITY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines fixed priority architecture for the home speech bubble summary.

rule:
PocketSecretary home speech bubble shows one dominant message at a time.

priority order:
1. upcoming schedule within 30 minutes
2. due-today unfinished todo
3. important notification
4. unresolved travel expense
5. general secretary guidance

selection method:
Score-based dominant selection is required.

baseline scores:
- schedule within 30 minutes: 100
- due-today unfinished todo: 80
- important notification: 70
- unresolved travel expense: 60
- general secretary guidance: 10

tie-break order:
1. nearer deadline or start time
2. newer updated_at
3. item not shown most recently

suppression rules:
- repeated identical message should be suppressed for a bounded time
- quiet hours suppress non-urgent candidates
- summary and notification should avoid meaningless duplication

rules:
- summary selection must remain state-grounded
- summary output remains informational or advisory only


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/030.secretary/0200126_POCKET_SECRETARY_SECRETARY_WORDING_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECRETARY WORDING ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the wording-dictionary architecture for secretary-specific language output.

principle:
Meaning stays stable.
Only wording style varies by secretary.

secretary classes:
- Sato Misaki: standard / calm / rational
- Takahashi Hina: empathy / soft / personal-support
- Kamiya Rin: sharp / concise / work-support

message categories:
- schedule_notice
- todo_notice
- notification_notice
- travel_expense_notice
- consultation_opening
- error_soft
- error_hard
- business_guidance

dictionary key pattern:
secretary_id.message_type.template_key

rules:
- wording variation must not alter authority meaning
- wording variation must not imply approval, permission, or completion
- company secretary wording is reserved for future definition


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/030.secretary/0200127_POCKET_SECRETARY_COMPANY_SECRETARY_BOUNDARY_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY COMPANY SECRETARY BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the boundary between personal AI secretary
and company secretary inside PocketSecretary.

company secretary source:
PocketSecretary does not create or own company secretary.
Company secretary is consumed from BusinessOS
as a company-scoped Business AI Worker of type company_secretary.

personal AI secretary source:
Personal AI secretary remains PocketSecretary-side consumption
of personal secretary-facing experience and secretary wording.

boundary:
- personal AI secretary is user-scoped
- company secretary is company-scoped
- PocketSecretary consumes company secretary but does not employ it
- PocketSecretary does not own company-secretary growth truth

rules:
- company secretary is available only under Enterprise
- company secretary use does not imply approval authority
- company secretary and personal AI secretary remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/030.secretary/0200128_POCKET_SECRETARY_BUSINESSOS_COMPANY_SECRETARY_CONSUMPTION_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY BUSINESSOS COMPANY SECRETARY CONSUMPTION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines how PocketSecretary consumes company secretary
from BusinessOS.

BusinessOS reference:
BusinessOS owns company employment, assignment,
knowledge growth, usage scope, and company-local naming
for Business AI Worker.

PocketSecretary role:
- detect whether a company_secretary is available
- display company secretary inside Enterprise surfaces
- start company-secretary consultation and guidance flow
- keep PocketSecretary as a front-end consumer only

PocketSecretary non-role:
- company secretary employment management
- company secretary assignment truth
- company secretary knowledge-growth truth
- company secretary template management

rules:
- PocketSecretary must fail closed when company secretary is unavailable
- PocketSecretary must distinguish personal and company secretary clearly


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/040.integration/0200106_POCKET_SECRETARY_EXTERNAL_INTEGRATION_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY EXTERNAL INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
External integrations must be bounded, explicit, and replaceable.

external targets may include:
- Persona-related services
- ERP-related gateways
- optional calendar or other external services

rules:
- integration boundaries must be explicit
- upstream source-of-truth ownership must be respected
- PocketSecretary must not impersonate authoritative upstream state
- external write paths must pass through explicit gate logic
- external dependencies must not break core local workflows


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/040.integration/0200109_POCKET_SECRETARY_PERSONAOS_VISUAL_RUNTIME_BOUNDARY_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERSONAOS VISUAL RUNTIME BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the architectural boundary between PocketSecretary
and the shared PersonaOS VisualRuntime.

position:
PersonaOS VisualRuntime is a shared external/common design domain.
PocketSecretary is a consuming application client of that domain.

PocketSecretary responsibilities:
- request bounded Persona presentation refresh
- receive render result or fallback result
- bind result to application UI
- preserve separation between presentation and authority

non-responsibilities:
- owning VisualRuntime core architecture
- defining shared manifest internals
- defining shared compose engine internals
- defining shared cache/downloader internals

rules:
- PocketSecretary must treat VisualRuntime as an external shared capability
- render result handling and VisualRuntime core ownership remain separate


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/040.integration/0200115_POCKET_SECRETARY_BUSINESS_CARD_MANAGEMENT_INTEGRATION_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY BUSINESS CARD MANAGEMENT INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the business card management integration architecture.

role:
PocketSecretary provides business card management integration
as an enterprise business support capability.

rules:
- PocketSecretary may launch, connect, or bridge
  to business card management capability
- PocketSecretary need not own the full business card source-of-truth
- integration must remain bounded and replaceable


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/050.business/0200110_POCKET_SECRETARY_PLAN_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY PLAN ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines PocketSecretary plan-based feature architecture.

plans:
- free
- pro
- enterprise

plan architecture rules:
- free provides non-AI core secretary tools only
- AI secretary capability begins from Pro
- enterprise extends Pro with company-secretary and business support capabilities
- plan-gated functions must be enforced structurally,
  not only hidden cosmetically in UI

plan structure:
free:
- dashboard
- schedule calendar
- todo
- memo
- library
- calculator
- basic notification
- mailer launch
- no AI secretary capability

pro:
- all free features
- AI secretary capability
- personal consultation
- yahoo transit launch
- travel expense management
- monthly aggregation
- advanced notification

enterprise:
- all pro features
- company secretary capability
- business card management integration
- ERP application draft
- explicit application button for ERP-facing submission
- quotation draft
- order draft
- document summary in library
- enterprise consultation including work problem-solving proposals


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/050.business/0200111_POCKET_SECRETARY_LIBRARY_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY LIBRARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of the Library domain.

role:
Library is the personal file preservation domain of PocketSecretary.

storage targets:
- PDF
- image
- personal file materials

responsibilities:
- file registration
- file browsing
- file deletion
- safe personal retention

non-responsibilities:
- authority approval
- ERP source-of-truth storage
- hidden automatic external publication

rules:
- library remains a personal storage domain
- registration and deletion remain explicit
- privacy by default applies


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/050.business/0200113_POCKET_SECRETARY_ERP_EXTERNAL_API_SUBMISSION_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP EXTERNAL API SUBMISSION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines PocketSecretary-specific application of the shared Business Submission Common.

common reference:
BusinessOS submission common defines:
- external API submission only
- explicit submission only
- auto-submission prohibition
- auth context requirement
- business draft alignment
- formal-document-aligned draft principle

PocketSecretary-specific application:
- PocketSecretary acts as a draft-and-submit client
- PocketSecretary binds shared submission rules
  to Enterprise-only submission-capable surfaces
- PocketSecretary keeps app-specific review surfaces
  before explicit submission

rules:
- PocketSecretary does not write directly to ERP databases
- PocketSecretary uses ERP external API only
- local draft, API send, and ERP acceptance remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/050.business/0200114_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY ENTERPRISE APPLICATION BUTTON ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines PocketSecretary-specific Enterprise application-button placement
on top of the shared Business Submission Common.

common reference:
BusinessOS submission common defines that
first-time submission requires explicit user action.

PocketSecretary-specific application:
Enterprise provides the explicit application button
on enterprise review surfaces for:
- ERP application draft

rules:
- the button is the PocketSecretary UI trigger for explicit submission
- no automatic submission path is allowed
- draft completion alone must not trigger submission
- button placement and visibility are app-specific here


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/050.business/0200115_POCKET_SECRETARY_NAMECARDMANAGER_DEEP_LINK_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY NAMECARDMANAGER DEEP LINK ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines how PocketSecretary launches NameCardManager
through Deep Link.

NameCardManager definition:
NameCardManager is a BusinessOS-first business-card management app.
BusinessOS is the source of truth.
Local storage is an offline work area and cache.

NameCardManager manages:
- business-card base information
- person understanding
- responsibility range
- business history
- relationship visibility
- audit / history / approval events

NameCardManager sharing/publication:
- app-internal sharing is explicit only
- ERP-wide publication is explicit only
- ERP-wide publication uses shared BusinessOS ERP publication capability
- NameCardManager does not directly send to ERP

authentication inheritance:
Deep Link launch inherits the caller's authenticated BusinessOS context.
Normal re-login is not required on launch.

inherited context includes:
- authenticated user identity
- company context
- BusinessOS authenticated session context
- handoff source

not inherited:
- unsaved editor state
- approval completed state
- submission success state

PocketSecretary role:
- present launch entry
- build bounded launch parameters
- invoke Deep Link explicitly
- hand off authenticated BusinessOS context
- show install guidance when the app is unavailable

recommended entry modes:
- search
- new
- detail
- related_people
- related_cases
- generic_entry

bounded launch parameters may include:
- mode
- company_context_id
- keyword
- card_id
- handoff_source

rules:
- PocketSecretary does not own NameCardManager authoring semantics
- Deep Link launch success does not equal business success
- app unavailability must show install guidance
- inherited authentication does not replace target-side authorization checks


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/050.business/0200116_POCKET_SECRETARY_QUOTATION_DRAFT_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY QUOTATION DRAFT ARCHITECTURE
# ============================================================

status: replaced-by-external-app
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

replacement:
Quotation draft creation is no longer owned by PocketSecretary.

new_position:
PocketSecretary launches the dedicated business app
for quotation and order work.

PocketSecretary role:
- launch business app
- optionally pass bounded context
- keep PocketSecretary as secretary-facing host app

non-role:
- PocketSecretary does not own quotation draft creation UI
- PocketSecretary does not own quotation formal draft workflow


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/050.business/0200117_POCKET_SECRETARY_ORDER_DRAFT_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY ORDER DRAFT ARCHITECTURE
# ============================================================

status: replaced-by-external-app
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

replacement:
Order draft creation is no longer owned by PocketSecretary.

new_position:
PocketSecretary launches the dedicated business app
for quotation and order work.

PocketSecretary role:
- launch business app
- optionally pass bounded context
- remain secretary-facing host app

non-role:
- PocketSecretary does not own order draft creation UI
- PocketSecretary does not own sales-order formal draft workflow


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/050.business/0200124_POCKET_SECRETARY_BUSINESS_APP_LAUNCH_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY BUSINESS APP LAUNCH ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines how PocketSecretary launches the dedicated business app
for quotation and order work.

business app role:
The dedicated business app owns:
- quotation draft creation
- order draft creation
- business document editing workflow
- business review flow specific to that app

PocketSecretary role:
- present launch entry
- launch business app explicitly
- optionally pass bounded launch context
- remain separate from document-authoring ownership

bounded launch context may include:
- customer reference
- company context
- entry point mode
- handoff source

rules:
- PocketSecretary is not the authoring owner of quotation/order documents
- app launch must not be misrepresented as submission success


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/050.business/0200124_POCKET_SECRETARY_ESTIMATECREATOR_DEEP_LINK_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY ESTIMATECREATOR DEEP LINK ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines how PocketSecretary launches EstimateCreator
through Deep Link.

EstimateCreator definition:
EstimateCreator is a BusinessOS rough-estimate and sales-support app.

EstimateCreator owns:
- sales memo
- meeting memo
- rough estimate
- app-internal sharing
- ERP publication request through shared BusinessOS ERP publication capability
- online sync through shared BusinessOS sync common capability

authentication inheritance:
Deep Link launch inherits the caller's authenticated BusinessOS context.
Normal re-login is not required on launch.

inherited context includes:
- authenticated user identity
- company context
- BusinessOS authenticated session context
- handoff source

not inherited:
- unsaved editor state
- approval completed state
- submission success state

PocketSecretary role:
- present launch entry
- build bounded launch parameters
- invoke Deep Link explicitly
- hand off authenticated BusinessOS context
- show install guidance when the app is unavailable

PocketSecretary non-role:
- estimate authoring ownership
- order authoring ownership
- direct ERP submission from PocketSecretary
- EstimateCreator sync ownership

recommended entry modes:
- estimate_entry
- sales_memo_entry
- meeting_memo_entry
- generic_business_entry

bounded launch parameters may include:
- mode
- company_context_id
- customer_reference
- handoff_source

rules:
- PocketSecretary does not author EstimateCreator business content
- Deep Link launch success does not equal business success
- app unavailability must show install guidance
- inherited authentication does not replace target-side authorization checks


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/140.visual-runtime/0201400000_POCKET_SECRETARY_VISUAL_RUNTIME_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY VISUAL RUNTIME INDEX
# ============================================================

status: canonical
layer: architecture
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. OFFICIAL READING ORDER
# ============================================================

1. 0201400001_POCKET_SECRETARY_VISUAL_RUNTIME_HOST_ARCHITECTURE.md
2. 0201400002_POCKET_SECRETARY_SURFACE_MAPPING_ARCHITECTURE.md
3. 0201400003_POCKET_SECRETARY_VISUAL_RUNTIME_STATE_HANDLING_ARCHITECTURE.md
4. 0201400004_POCKET_SECRETARY_VISUAL_RUNTIME_ERROR_HANDLING_ARCHITECTURE.md
5. 0201400005_POCKET_SECRETARY_VISUAL_RUNTIME_BACKGROUND_USAGE_ARCHITECTURE.md


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/140.visual-runtime/0201400001_POCKET_SECRETARY_VISUAL_RUNTIME_HOST_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY VISUAL RUNTIME HOST ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines how PocketSecretary
hosts Persona Visual Runtime.


# ============================================================
# 2. HOST STRUCTURE
# ============================================================

PocketSecretary host structure is:

Screen
-> Host Visual Controller
-> Runtime Host Adapter
-> Visual Runtime Session
-> Render Surface Container

Screen owns screen UX.
Host Visual Controller owns host-side visual decisions.
Runtime Host Adapter translates host calls into canonical runtime calls.
Visual Runtime Session performs canonical rendering.
Render Surface Container is the platform drawing target.


# ============================================================
# 3. HOST INPUTS
# ============================================================

PocketSecretary must prepare:

surface_code
manifest_projection
container_handle
host_lifecycle_binding
optional_background_override
optional_initial_visual_state


# ============================================================
# 4. HOST OUTPUT EXPECTATION
# ============================================================

PocketSecretary must be ready to receive:

session_created
manifest_loaded
background_resolved
background_fallback_applied
render_completed
recoverable_error
terminal_error
session_disposed


# ============================================================
# 5. MAIN RULE
# ============================================================

PocketSecretary must treat Visual Runtime
as the rendering authority
and itself as the hosting authority.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/140.visual-runtime/0201400002_POCKET_SECRETARY_SURFACE_MAPPING_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY SURFACE MAPPING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document maps PocketSecretary screens
to canonical Visual Runtime surface classes.


# ============================================================
# 2. RECOMMENDED MAPPING
# ============================================================

main assistant screen
-> assistant_main

compact row / small summary card
-> assistant_compact

chat thread side display
-> chat_side

persona detail card
-> profile_card

full immersive visual screen
-> full_scene


# ============================================================
# 3. RULES
# ============================================================

PocketSecretary must not invent private render semantics
from screen names alone.

PocketSecretary must map every usage
to a canonical surface class first.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/140.visual-runtime/0201400003_POCKET_SECRETARY_VISUAL_RUNTIME_STATE_HANDLING_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY VISUAL RUNTIME STATE HANDLING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines how PocketSecretary
requests state changes from Visual Runtime.


# ============================================================
# 2. HOST-SIDE STATE TYPES
# ============================================================

PocketSecretary may request:

initial visual state
expression hint
animation mode hint
surface mode change
background override
refresh request


# ============================================================
# 3. BOUNDARY RULE
# ============================================================

PocketSecretary may request state changes,
but must not directly mutate runtime internals.

All state changes must go through
canonical runtime public interface.


# ============================================================
# 4. DEFAULT RULE
# ============================================================

If PocketSecretary does not provide state hints,
Visual Runtime must apply canonical defaults.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/140.visual-runtime/0201400004_POCKET_SECRETARY_VISUAL_RUNTIME_ERROR_HANDLING_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY VISUAL RUNTIME ERROR HANDLING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines host-side handling
for runtime errors and fallback events.


# ============================================================
# 2. ERROR CLASSES
# ============================================================

PocketSecretary must distinguish:

recoverable runtime degradation
terminal runtime failure


# ============================================================
# 3. HOST RESPONSE
# ============================================================

For recoverable degradation:
keep persona visible if possible
log runtime event
update host chrome only if needed

For terminal failure:
replace render area with host error shell
preserve runtime error visibility
dispose invalid session deterministically


# ============================================================
# 4. NO BLANK RULE
# ============================================================

PocketSecretary should avoid blank visual areas
when a recoverable runtime fallback exists.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/140.visual-runtime/0201400005_POCKET_SECRETARY_VISUAL_RUNTIME_BACKGROUND_USAGE_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY VISUAL RUNTIME BACKGROUND USAGE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines how PocketSecretary
uses background features from Visual Runtime.


# ============================================================
# 2. HOST ROLE
# ============================================================

PocketSecretary may provide:

explicit background override
screen-level background preference
background visibility preference through surface selection

PocketSecretary must not override
canonical background priority semantics.


# ============================================================
# 3. UX RULE
# ============================================================

PocketSecretary should prefer
persona-first visibility.

If background is delayed or degraded,
PocketSecretary should continue rendering persona
when the surface contract permits it.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/010.core/0300100_POCKET_SECRETARY_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the core data model domains of PocketSecretary.

scope:
The model layer defines the logical data structures required
for PocketSecretary local-first operation, Persona presentation,
user workflows, bounded external request preparation,
and synchronization state handling.

model_principles:
- local-first modeling
- explicit ownership
- explicit state distinction
- bounded authority
- separation between local and external truth
- auditable transition readiness


# ============================================================
# 1. MODEL DOMAINS
# ============================================================

PocketSecretary model domains include:

- secretary profile model
- local schedule model
- todo model
- note model
- archive model
- dashboard widget model
- Persona state model
- configuration model
- permission model
- ERP request model
- sync model
- backup model
- local file storage model


# ============================================================
# 2. MODEL BOUNDARY
# ============================================================

The PocketSecretary model layer defines
application-level logical models.

It does not redefine:

- upstream Persona source-of-truth authority
- upstream ERP source-of-truth authority
- system-wide governance authority

PocketSecretary models may contain:

- local working state
- local cache state
- user draft state
- integration request preparation state
- confirmed external references where explicitly bounded


# ============================================================
# 3. STATE DISTINCTION RULE
# ============================================================

Every model that may interact with external systems
must distinguish among:

- local only
- pending
- confirmed
- failed
- conflicted

No model may collapse uncertain state
into confirmed state.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/010.core/0300101_POCKET_SECRETARY_LOCAL_DATA_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY LOCAL DATA MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Local data model defines the primary local persistence objects
used for day-to-day secretary workflows.

local domains:
- schedules
- todos
- notes
- archive references
- user drafts
- local preferences
- notification settings
- widget state
- temporary sync state

requirements:
- each local object must have clear ownership
- local editability must be explicit
- deletion and archival must be distinguishable
- pending external state must not replace local edit history


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/010.core/0300108_POCKET_SECRETARY_CONFIGURATION_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONFIGURATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents local application configuration.

configuration areas:
- display settings
- notification settings
- dashboard preferences
- default secretary presentation
- offline behavior preferences
- sync preferences
- privacy-related local options

rules:
- configuration must remain scoped to the application
- local convenience settings must not override security boundaries


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/010.core/0300109_POCKET_SECRETARY_PERMISSION_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERMISSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents application-level permissions and execution eligibility
within PocketSecretary.

permission areas:
- device capability permission
- local feature permission
- bounded external action eligibility
- review-required action categories

rules:
- permission state must not be inferred from Persona style
- local permission must not impersonate upstream enterprise authority
- critical action eligibility must be explicitly modeled


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/010.core/0300111_POCKET_SECRETARY_SYNC_STATE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY SYNC STATE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents synchronization status for local-to-external
or external-to-local bounded state transitions.

states:
- local_only
- pending
- confirmed
- failed
- conflicted

requirements:
- sync result must be explicit
- failure reason should be preservable where applicable
- confirmed state must require actual confirmation


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/010.core/0300117_POCKET_SECRETARY_EVENT_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY EVENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents bounded application events used for local state change tracking
inside PocketSecretary.

fields:
- event_id
- user_id
- event_type
- event_scope
- related_object_type
- related_object_id
- payload_reference
- occurred_at
- created_at

rules:
- local event records do not imply external confirmation
- event persistence and business success remain distinct
- critical external actions require explicit higher-layer confirmation state


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/020.home/0300112_POCKET_SECRETARY_DASHBOARD_WIDGET_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY DASHBOARD WIDGET MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents widget placement and display state
for the PocketSecretary dashboard.

fields:
- widget_id
- user_id
- widget_type
- position_code
- visibility_flag
- sort_order
- configuration_payload
- updated_at

rules:
- widget visibility must not alter permission or authority
- display state and execution authority must remain separate


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/020.home/0300134_POCKET_SECRETARY_HOME_SPEECH_BUBBLE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY HOME SPEECH BUBBLE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific use of the shared Summary Bubble Common model.

common reference:
PersonaOS secretary interaction common defines the shared summary bubble structure.

PocketSecretary-specific usage:
- secretary summary content is displayed in the home speech bubble
- summary message is shown at the top-left home area

PocketSecretary summary message types may include:
- schedule_summary
- next_schedule
- todo_summary
- notification_summary
- travel_expense_reminder
- secretary_guidance

rules:
- speech bubble content remains informational or advisory
- speech bubble output does not equal approval or submission state


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/020.home/0300135_POCKET_SECRETARY_HOME_LAYOUT_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY HOME LAYOUT MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific home layout usage
on top of the shared Background Common.

common reference:
PersonaOS background common defines:
- background preference state
- background availability state

PocketSecretary-specific fields:
- home_layout_id
- user_id
- selected_secretary_character_code
- selected_background_code
- speech_bubble_enabled
- settings_button_visible
- created_at
- updated_at

rules:
- secretary selection and background selection remain separate
- home layout preference does not alter authority or plan semantics
- background preference and render result remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/020.home/0300138_POCKET_SECRETARY_HOME_SUMMARY_PRIORITY_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY HOME SUMMARY PRIORITY MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific dominant summary usage
based on the shared Summary Priority Selection Common model.

common reference:
PersonaOS secretary interaction common defines the shared
dominant summary selection structure.

PocketSecretary priority emphasis:
- next schedule urgency
- due todo urgency
- pending notification summary
- travel expense reminder
- secretary guidance

rules:
- only one dominant summary item should be selected at a time
- selected summary and underlying source remain distinguishable


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/020.home/0300139_POCKET_SECRETARY_TOOLS_LAUNCHER_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY TOOLS LAUNCHER MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents tools launcher configuration and recent usage state.

fields:
- tools_launcher_id
- user_id
- tool_code
- enabled_flag
- recent_used_at
- availability_scope
- created_at
- updated_at

tool_code may include:
- calculator
- mailer
- yahoo_transit
- business_card_management


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/020.home/0300143_POCKET_SECRETARY_HOME_SUMMARY_SELECTION_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY HOME SUMMARY SELECTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents scoring and suppression state for dominant home summary selection.

fields:
- summary_selection_id
- user_id
- candidate_type
- candidate_score
- candidate_due_at
- candidate_updated_at
- recently_shown_flag
- quiet_hours_suppressed_flag
- created_at
- updated_at

candidate_type may include:
- upcoming_schedule
- due_today_todo
- important_notification
- unresolved_travel_expense
- general_guidance

rules:
- only one dominant summary should be chosen
- score and actual source remain distinguishable
- suppression does not delete the underlying source state


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/030.secretary/0300102_POCKET_SECRETARY_SECRETARY_PROFILE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECRETARY PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents the local profile and bounded presentation state
of the secretary application persona as configured for the user.

fields:
- secretary_profile_id
- user_id
- display_name
- presentation_mode
- avatar_reference
- default_view_code
- speech_style_reference
- is_active
- created_at
- updated_at

notes:
This model is a local application profile model.
It is not the formal authority source for upstream Persona identity.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/030.secretary/0300107_POCKET_SECRETARY_PERSONA_STATE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERSONA STATE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents bounded Persona-linked state used
for PocketSecretary presentation and interaction.

fields:
- persona_state_id
- user_id
- character_code
- emotion_code
- pose_code
- view_code
- state_source
- local_override_flag
- updated_at

rules:
- Persona-linked state is presentation-oriented
- it must not be treated as permission state
- upstream authority and local presentation state
  must remain distinguishable


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/030.secretary/0300116_POCKET_SECRETARY_CONSULT_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONSULT MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents bounded consult sessions, consult prompts,
and related local interaction history.

fields:
- consult_id
- user_id
- consult_type
- title
- summary
- state_code
- last_interaction_at
- created_at
- updated_at

rules:
- consult state is local interaction state unless explicitly linked outward
- consult history must not be treated as authority-bearing approval
- consult summaries and underlying action approval remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/030.secretary/0300124_POCKET_SECRETARY_CONSULTATION_SESSION_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONSULTATION SESSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific consultation session usage
based on the PersonaOS Consultation Common model.

common reference:
PersonaOS consultation common defines the shared structure of:
- consultation_tier
- consultation_scope
- advisory consultation output

PocketSecretary-specific usage:
- Pro uses personal consultation scope
- Enterprise uses personal consultation and
  company-secretary business consultation scopes

PocketSecretary business consultation scope emphasis:
- business_document
- business_strategy
- business_problem_solving
- business_workflow

rules:
- consultation session state does not equal approval state
- app-specific tier gating remains PocketSecretary-specific


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/030.secretary/0300133_POCKET_SECRETARY_NOTIFICATION_PROFILE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific notification profile usage
based on the shared Notification Common model.

common reference:
PersonaOS notification common defines the shared structure of:
- notification tier
- grouped summary capability
- priority notification capability
- re-notification capability
- contextual notification capability
- secretary wording capability

PocketSecretary-specific usage:
- free is limited to basic notification capability
- pro and enterprise may enable advanced notification features
- home summary selection may consume notification state

rules:
- capability and actual delivery result remain distinct
- app-specific plan gating remains PocketSecretary-specific


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/030.secretary/0300136_POCKET_SECRETARY_INITIAL_SECRETARY_PROFILE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY INITIAL SECRETARY PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific initial secretary profiles
based on the shared Secretary Profile Common model.

common reference:
PersonaOS secretary interaction common defines the shared
application-facing secretary profile structure.

PocketSecretary initial profile set:
- Sato Misaki / asset_misaki / vp_misaki_default
- Takahashi Hina / asset_hina / vp_hina_default
- Kamiya Rin / asset_rin / vp_rin_default

PocketSecretary visible role mapping:
- asset_misaki -> standard secretary
- asset_hina -> personal support secretary
- asset_rin -> work support secretary

rules:
- PocketSecretary keeps the concrete initial cast mapping
- display profile and deep lore profile remain distinguishable
- secretary personality difference must not alter authority rules


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/030.secretary/0300137_POCKET_SECRETARY_SECRETARY_SWITCH_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECRETARY SWITCH MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific secretary switch usage
based on the shared Secretary Switch Common model.

common reference:
PersonaOS secretary interaction common defines the shared switch structure.

PocketSecretary switch origins may include:
- home_character_tap
- settings
- onboarding
- promo_unlock

rules:
- secretary switch is a user preference event
- switching does not imply plan upgrade or authority change


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/030.secretary/0300140_POCKET_SECRETARY_SECRETARY_ROLE_PROFILE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECRETARY ROLE PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific visible role assignment
based on the shared Secretary Role Presentation Common model.

common reference:
PersonaOS secretary interaction common defines visible role presentation.

PocketSecretary visible role mapping:
- asset_misaki: standard secretary
- asset_hina: personal support secretary
- asset_rin: work support secretary

rules:
- visible role description should remain short and practical
- deep lore should remain more restricted than visible role information


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/030.secretary/0300141_POCKET_SECRETARY_NOTIFICATION_RULE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION RULE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific notification rule usage
based on the shared Notification Common model.

common reference:
PersonaOS notification common defines:
- quiet hours
- daily summary
- grouped summary
- re-notification control

PocketSecretary-specific usage:
- notification rules are applied to PocketSecretary surfaces
- home and secretary-facing behavior may reflect these controls

rules:
- quiet hours and daily summary remain distinct controls
- notification control and actual task state remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/030.secretary/0300144_POCKET_SECRETARY_SECRETARY_WORDING_DICTIONARY_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECRETARY WORDING DICTIONARY MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents secretary-specific wording dictionary entries.

fields:
- wording_entry_id
- secretary_id
- message_type
- template_key
- template_text
- is_active
- created_at
- updated_at

secretary_id examples:
- misaki
- hina
- rin
- company_ai_reserved

message_type examples:
- schedule_notice
- todo_notice
- notification_notice
- travel_expense_notice
- consultation_opening
- error_soft
- error_hard
- business_guidance

rules:
- dictionary entries change wording only
- dictionary entries do not change business meaning


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/030.secretary/0300145_POCKET_SECRETARY_COMPANY_SECRETARY_REFERENCE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY COMPANY SECRETARY REFERENCE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents PocketSecretary-side reference state
for BusinessOS company secretary consumption.

fields:
- company_secretary_reference_id
- user_id
- company_id
- worker_employment_id
- local_display_name
- local_role_name
- available_flag
- usage_scope_summary
- source_system
- created_at
- updated_at

constraints:
- source_system must be business-os
- this model is a consumption reference only
- this model is not employment truth

rules:
- reference state and BusinessOS truth remain distinct
- unavailable company secretary must not be rendered as usable


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/030.secretary/0300146_POCKET_SECRETARY_SECRETARY_SCOPE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECRETARY SCOPE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines secretary scope distinction inside PocketSecretary.

scope values:
- display_only
- personal_ai
- company_ai

plan mapping:
- free: display_only
- pro: display_only + personal_ai
- enterprise: display_only + personal_ai + company_ai

rules:
- company_ai scope means BusinessOS company secretary consumption
- scope availability and actual usability remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/0300000_POCKET_SECRETARY_MODEL_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY MODEL INDEX
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
Index of PocketSecretary-specific model documents.

shared common dependencies:
- PersonaOS Consultation Common model
- PersonaOS Secretary Interaction Common model
- PersonaOS Notification Common model
- PersonaOS Background Common model
- BusinessOS Submission Common model

reading order:
1. Model Overview
2. Core local data models
3. Shared-common application models
4. App-specific business and Library models

document guide:
- 0300001_POCKET_SECRETARY_MODEL_OVERVIEW.md
  Overview of PocketSecretary model usage.

- 0300100_POCKET_SECRETARY_MODEL.md
  Top-level model framing.

- 0300101_POCKET_SECRETARY_LOCAL_DATA_MODEL.md
  Local data domain.

- 0300102_POCKET_SECRETARY_SECRETARY_PROFILE_MODEL.md
  Legacy app-side secretary profile framing.

- 0300103_POCKET_SECRETARY_SCHEDULE_MODEL.md
  Schedule calendar model.

- 0300104_POCKET_SECRETARY_TODO_MODEL.md
  Todo model.

- 0300105_POCKET_SECRETARY_NOTE_MODEL.md
  Note model.

- 0300106_POCKET_SECRETARY_ARCHIVE_MODEL.md
  Legacy archive-side model context.

- 0300107_POCKET_SECRETARY_PERSONA_STATE_MODEL.md
  Persona presentation state.

- 0300108_POCKET_SECRETARY_CONFIGURATION_MODEL.md
  App configuration state.

- 0300109_POCKET_SECRETARY_PERMISSION_MODEL.md
  Permission state.

- 0300110_POCKET_SECRETARY_ERP_REQUEST_MODEL.md
  ERP request app model.

- 0300111_POCKET_SECRETARY_SYNC_STATE_MODEL.md
  Sync state model.

- 0300112_POCKET_SECRETARY_DASHBOARD_WIDGET_MODEL.md
  Dashboard/home widget state.

- 0300113_POCKET_SECRETARY_LOCAL_FILE_STORAGE_MODEL.md
  Local file storage model.

- 0300114_POCKET_SECRETARY_BACKUP_MODEL.md
  Backup model.

- 0300115_POCKET_SECRETARY_CHECKLIST_MODEL.md
  Checklist model.

- 0300116_POCKET_SECRETARY_CONSULT_MODEL.md
  Legacy consult model context.

- 0300117_POCKET_SECRETARY_EVENT_MODEL.md
  Event model.

- 0300123_POCKET_SECRETARY_LIBRARY_FILE_MODEL.md
  Library file model.

- 0300124_POCKET_SECRETARY_CONSULTATION_SESSION_MODEL.md
  PocketSecretary use of Consultation Common session model.

- 0300125_POCKET_SECRETARY_TRAVEL_EXPENSE_MODEL.md
  Travel expense model.

- 0300126_POCKET_SECRETARY_MONTHLY_AGGREGATION_MODEL.md
  Monthly aggregation model.

- 0300127_POCKET_SECRETARY_QUOTATION_DRAFT_MODEL.md
  PocketSecretary quotation draft model.

- 0300128_POCKET_SECRETARY_QUOTATION_DRAFT_LINE_MODEL.md
  Quotation line-item model.

- 0300129_POCKET_SECRETARY_ORDER_DRAFT_MODEL.md
  PocketSecretary order draft model.

- 0300130_POCKET_SECRETARY_ORDER_DRAFT_LINE_MODEL.md
  Order line-item model.

- 0300131_POCKET_SECRETARY_ERP_APPLICATION_STATE_MODEL.md
  PocketSecretary use of common submission states.

- 0300132_POCKET_SECRETARY_ERP_AUTH_CONTEXT_MODEL.md
  PocketSecretary use of common auth context.

- 0300133_POCKET_SECRETARY_NOTIFICATION_PROFILE_MODEL.md
  PocketSecretary use of common notification capability model.

- 0300134_POCKET_SECRETARY_HOME_SPEECH_BUBBLE_MODEL.md
  PocketSecretary use of common summary bubble model.

- 0300135_POCKET_SECRETARY_HOME_LAYOUT_MODEL.md
  Home layout plus background usage.

- 0300136_POCKET_SECRETARY_INITIAL_SECRETARY_PROFILE_MODEL.md
  Concrete initial secretary cast mapping.

- 0300137_POCKET_SECRETARY_SECRETARY_SWITCH_MODEL.md
  PocketSecretary use of common secretary switch model.

- 0300138_POCKET_SECRETARY_HOME_SUMMARY_PRIORITY_MODEL.md
  PocketSecretary use of common dominant summary model.

- 0300139_POCKET_SECRETARY_TOOLS_LAUNCHER_MODEL.md
  Tools launcher state.

- 0300140_POCKET_SECRETARY_SECRETARY_ROLE_PROFILE_MODEL.md
  Concrete visible role mapping for initial cast.

- 0300141_POCKET_SECRETARY_NOTIFICATION_RULE_MODEL.md
  PocketSecretary use of common notification control rules.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/0300001_POCKET_SECRETARY_MODEL_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY MODEL OVERVIEW
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
This layer defines PocketSecretary-specific model usage and app-local models.

shared common references:
- PersonaOS Consultation Common model
- PersonaOS Secretary Interaction Common model
- PersonaOS Notification Common model
- PersonaOS Background Common model
- BusinessOS Submission Common model
- BusinessOS Business AI Worker model

PocketSecretary-specific model groups:
- schedule / todo / memo / checklist / event
- Library and local file handling
- home layout and speech bubble usage
- home summary score selection
- initial secretary cast mapping
- secretary wording dictionary
- personal/company secretary scope distinction
- company secretary reference consumption
- travel expense / monthly aggregation
- PocketSecretary-specific ERP review usage
- Deep Link launch context for EstimateCreator and NameCardManager
- configuration and sync state

important distinctions:
- common model meaning vs app-specific usage
- draft vs submitted
- file existence vs summary availability
- secretary visible role vs deep lore
- company secretary reference vs BusinessOS truth
- launch context vs business result


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/040.personal/0300103_POCKET_SECRETARY_SCHEDULE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY SCHEDULE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents local schedule items managed in PocketSecretary.

fields:
- schedule_id
- user_id
- title
- description
- start_at
- end_at
- timezone_code
- schedule_type
- location_text
- status
- sync_state
- external_reference_id
- created_at
- updated_at

state_rules:
- local draft schedule and confirmed external schedule
  must remain distinguishable
- external_reference_id is optional
- sync_state must not imply legal confirmation by itself


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/040.personal/0300104_POCKET_SECRETARY_TODO_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY TODO MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents local task items handled by PocketSecretary.

fields:
- todo_id
- user_id
- title
- detail
- priority_level
- due_at
- completion_status
- archived_flag
- category_code
- sync_state
- created_at
- updated_at

rules:
- todo completion is a local application action
  unless explicitly linked to an external workflow
- archived_flag and completion_status must remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/040.personal/0300105_POCKET_SECRETARY_NOTE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents local notes and memo content.

fields:
- note_id
- user_id
- title
- body
- note_type
- visibility_scope
- archived_flag
- created_at
- updated_at

rules:
- note content is private by default
- export or transmission requires explicit bounded action


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/040.personal/0300106_POCKET_SECRETARY_ARCHIVE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY ARCHIVE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents archived local items and references preserved
for later retrieval.

archive targets may include:
- notes
- documents
- checklist references
- completed records
- file references

rules:
- archive state must not mean deletion
- archive entries must remain retrievable where retained
- archival metadata must be distinguishable from active state


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/040.personal/0300113_POCKET_SECRETARY_LOCAL_FILE_STORAGE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY LOCAL FILE STORAGE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents local file references used by PocketSecretary.

fields:
- local_file_id
- user_id
- storage_scope
- file_path_reference
- mime_type
- logical_category
- retention_status
- created_at
- updated_at

rules:
- file metadata and actual content handling must be separable
- retention status must be explicit
- local file reference must not imply external publication


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/040.personal/0300114_POCKET_SECRETARY_BACKUP_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY BACKUP MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents bounded backup and restore metadata
for PocketSecretary local data continuity.

fields:
- backup_id
- backup_scope
- backup_status
- created_at
- completed_at
- restore_status
- restore_target_reference

rules:
- backup presence must not be confused with live state
- restore action must be explicit
- backup metadata must remain auditable


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/040.personal/0300115_POCKET_SECRETARY_CHECKLIST_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY CHECKLIST MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents checklist-oriented local task grouping
used inside PocketSecretary.

fields:
- checklist_id
- user_id
- title
- description
- checklist_type
- archived_flag
- created_at
- updated_at

rules:
- checklist is distinct from a single todo item
- checklist item completion and checklist archival remain distinct
- checklist may remain fully local unless explicitly tied to an external workflow


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/040.personal/0300123_POCKET_SECRETARY_LIBRARY_FILE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY LIBRARY FILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents personal files stored in the Library domain.

fields:
- library_file_id
- user_id
- file_name
- file_type
- mime_type
- local_file_reference
- summary_text
- summary_status
- created_at
- updated_at

rules:
- library stores personal files such as PDF, image,
  and personal file materials
- registration and deletion remain explicit
- file existence and summary availability remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/040.personal/0300125_POCKET_SECRETARY_TRAVEL_EXPENSE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY TRAVEL EXPENSE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents travel expense records managed by PocketSecretary.

fields:
- travel_expense_id
- user_id
- trip_date
- departure_text
- arrival_text
- route_text
- amount
- currency_code
- note_text
- aggregation_month
- draft_status
- created_at
- updated_at

rules:
- travel expense begins as local working data
- monthly aggregation and ERP-facing use remain distinct steps


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/040.personal/0300126_POCKET_SECRETARY_MONTHLY_AGGREGATION_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY MONTHLY AGGREGATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents monthly aggregated totals for bounded business use.

fields:
- aggregation_id
- user_id
- aggregation_month
- aggregation_type
- total_amount
- item_count
- created_at
- updated_at

rules:
- monthly aggregation is not by itself an ERP accepted result
- aggregation result and application submission remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/050.business/0300110_POCKET_SECRETARY_ERP_REQUEST_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents bounded ERP-facing request preparation state
originating from PocketSecretary.

fields:
- request_id
- user_id
- request_type
- payload_reference
- review_status
- submission_status
- target_system_code
- external_request_id
- created_at
- updated_at

rules:
- local request preparation and external submission
  must remain distinguishable
- review_status and submission_status must be separate
- external_request_id is assigned only after confirmed submission


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/050.business/0300127_POCKET_SECRETARY_QUOTATION_DRAFT_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY QUOTATION DRAFT MODEL
# ============================================================

status: replaced-by-external-app
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

replacement:
Quotation draft model ownership moved out of PocketSecretary.

new_position:
PocketSecretary may hold only bounded launch or handoff context
for the dedicated business app.

PocketSecretary non-ownership:
- quotation header editing model
- quotation line editing model
- quotation review model


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/050.business/0300128_POCKET_SECRETARY_QUOTATION_DRAFT_LINE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY QUOTATION DRAFT LINE MODEL
# ============================================================

status: replaced-by-external-app
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

replacement:
Quotation line model ownership moved out of PocketSecretary.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/050.business/0300129_POCKET_SECRETARY_ORDER_DRAFT_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY ORDER DRAFT MODEL
# ============================================================

status: replaced-by-external-app
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

replacement:
Order draft model ownership moved out of PocketSecretary.

new_position:
PocketSecretary may hold only bounded launch or handoff context
for the dedicated business app.

PocketSecretary non-ownership:
- order header editing model
- order line editing model
- order review model


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/050.business/0300130_POCKET_SECRETARY_ORDER_DRAFT_LINE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY ORDER DRAFT LINE MODEL
# ============================================================

status: replaced-by-external-app
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

replacement:
Order line model ownership moved out of PocketSecretary.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/050.business/0300131_POCKET_SECRETARY_ERP_APPLICATION_STATE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP APPLICATION STATE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific usage of the shared submission state model.

common reference:
BusinessOS submission common defines the shared submission states:
- draft
- review_ready
- awaiting_user_send
- submitted_pending_response
- accepted
- failed
- conflicted

PocketSecretary-specific usage:
- submission-capable states are bound to Enterprise review surfaces
- review_ready and awaiting_user_send are visible in app-specific UI flows

rules:
- application button trigger belongs to enterprise flow
- accepted state requires external response


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/050.business/0300132_POCKET_SECRETARY_ERP_AUTH_CONTEXT_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP AUTH CONTEXT MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific usage of the shared auth context model.

common reference:
BusinessOS submission common defines the shared auth context structure.

PocketSecretary-specific usage:
- auth context is used for explicit ERP-facing submission
- auth context is checked from app review/submission surfaces

rules:
- valid authentication context is required for ERP-facing submission
- missing or expired context must block submission
- auth success and business acceptance remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/050.business/0300142_POCKET_SECRETARY_BUSINESS_APP_LAUNCH_CONTEXT_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY BUSINESS APP LAUNCH CONTEXT MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents bounded launch context passed from PocketSecretary
to the dedicated business app.

fields:
- launch_context_id
- user_id
- target_app_code
- company_context_id
- customer_reference
- entry_mode
- handoff_source
- created_at
- updated_at

target_app_code may include:
- business_quote_order_app

entry_mode may include:
- quotation_entry
- order_entry
- generic_business_entry

rules:
- launch context is not a business document
- launch context and submission state remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/050.business/0300142_POCKET_SECRETARY_DEEP_LINK_LAUNCH_CONTEXT_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY DEEP LINK LAUNCH CONTEXT MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents bounded Deep Link launch context passed
from PocketSecretary to external business apps.

fields:
- launch_context_id
- user_id
- target_app_code
- deep_link_scheme
- mode
- company_context_id
- customer_reference
- keyword
- card_id
- handoff_source
- auth_context_inherited_flag
- auth_session_scope
- created_at
- updated_at

target_app_code may include:
- estimatecreator
- namecardmanager

deep_link_scheme examples:
- estimatecreator
- namecardmanager

mode examples:
- estimate_entry
- sales_memo_entry
- meeting_memo_entry
- search
- new
- detail
- related_people
- related_cases
- generic_entry
- generic_business_entry

rules:
- launch context is not a business document
- launch context and submission state remain distinct
- inherited auth context and target-side authorization remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/010.core/0400100_POCKET_SECRETARY_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the runtime behavior of PocketSecretary.

scope:
The runtime layer defines how PocketSecretary behaves
during user interaction, local processing, notification handling,
Persona presentation, bounded sync, and external request preparation.

runtime_principles:
- local-first execution
- explicit state transition
- fail-closed critical behavior
- bounded retry behavior
- human-visible pending state
- separation between local completion and external confirmation


# ============================================================
# 1. RUNTIME DOMAINS
# ============================================================

PocketSecretary runtime domains include:

- application state runtime
- schedule runtime
- todo runtime
- note and archive runtime
- notification runtime
- Persona presentation runtime
- sync runtime
- ERP request runtime
- failure handling runtime


# ============================================================
# 2. RUNTIME POSITION
# ============================================================

The runtime layer executes behavior defined by:

- constitution constraints
- architecture boundaries
- model state definitions

The runtime layer must not:
- invent authority
- bypass explicit review gates
- silently finalize critical external actions


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/010.core/0400101_POCKET_SECRETARY_APPLICATION_STATE_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY APPLICATION STATE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Controls runtime transitions of application-visible state.

state categories:
- active
- idle
- offline
- pending_sync
- awaiting_review
- failed
- conflicted

rules:
- state transitions must be explicit
- failed and pending states must remain visible
- offline state must not be treated as fatal by default


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/010.core/0400109_POCKET_SECRETARY_FAILURE_HANDLING_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY FAILURE HANDLING RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines safe runtime behavior under failure,
uncertainty, or degraded conditions.

failure areas:
- network unavailability
- upstream rejection
- invalid permission state
- render failure
- sync conflict
- local persistence failure

rules:
- critical uncertainty must fail closed
- local preservation should be preferred where safe
- fictional success states are prohibited
- user-visible retry or review surfaces should exist


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/010.core/0400112_POCKET_SECRETARY_EVENT_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY EVENT RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for local event production and consumption.

runtime areas:
- local state change event creation
- bounded event dispatch to local listeners
- event-backed UI refresh support
- event persistence where applicable

rules:
- local event success must not imply external business success
- event handling must remain bounded
- critical external effects require explicit gate paths beyond local events


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/010.core/0400113_POCKET_SECRETARY_GUARD_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY GUARD RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime guard behavior for critical and permission-sensitive paths.

guard areas:
- permission validation
- review-required action validation
- sync precondition validation
- ERP submission precondition checks

rules:
- guard failure blocks unsafe continuation
- unknown authority must not pass guard checks
- guard success does not replace external confirmation


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/020.home/0400125_POCKET_SECRETARY_HOME_SCREEN_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY HOME SCREEN RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific home runtime
using the shared Secretary Interaction Common.

common reference:
PersonaOS secretary interaction common runtime defines:
- secretary switch common runtime
- summary bubble common runtime

PocketSecretary-specific runtime areas:
- speech bubble content placement
- primary button interaction
- secretary render binding
- background render binding
- settings entry
- home refresh

rules:
- speech bubble shows bounded informational or advisory content only
- home refresh must preserve visible honesty of state
- render result and actual business state remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/020.home/0400127_POCKET_SECRETARY_BACKGROUND_SWITCH_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY BACKGROUND SWITCH RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific background switching
based on the shared Background Common runtime.

common reference:
PersonaOS background common runtime defines:
- selection surface open
- available background display
- explicit selection
- preference persistence
- render refresh

PocketSecretary-specific application:
- switching starts from home background tap
- selected background is applied to the PocketSecretary home surface

rules:
- background switching is explicit
- background switching affects presentation only
- background switching must not alter authority or plan state


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/020.home/0400128_POCKET_SECRETARY_HOME_SUMMARY_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY HOME SUMMARY RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific home summary runtime
based on the shared Summary Bubble Common runtime.

common reference:
PersonaOS secretary interaction common runtime defines:
- candidate summary source collection
- urgency evaluation
- dominant summary selection
- summary rendering

PocketSecretary-specific application:
- selected summary is rendered in the home speech bubble area
- tap may route to PocketSecretary-specific feature surfaces

rules:
- summary selection must remain state-grounded
- dominant summary selection must not fabricate urgency


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/020.home/0400129_POCKET_SECRETARY_TOOLS_LAUNCHER_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY TOOLS LAUNCHER RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for tools launcher interaction.

runtime areas:
- tools sheet open
- available tool filtering by plan
- recent tool ordering
- launch handoff
- return handling where applicable

rules:
- tool availability must respect plan boundary
- launch handoff does not equal task completion


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/020.home/0400132_POCKET_SECRETARY_HOME_SUMMARY_SELECTION_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY HOME SUMMARY SELECTION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for score-based dominant summary selection.

runtime sequence:
1. collect candidate summary sources
2. apply baseline score by candidate type
3. apply tie-break rules
4. apply suppression rules
5. choose one dominant candidate
6. render secretary-specific wording

rules:
- candidates must reflect real current state
- quiet hours suppress non-urgent candidates
- selected summary remains advisory or informational only


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/030.secretary/0400105_POCKET_SECRETARY_NOTIFICATION_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific notification runtime
based on the shared Notification Common runtime.

common reference:
PersonaOS notification common runtime defines:
- reminder generation
- grouped summary composition
- daily summary generation
- re-notification timing
- quiet-hours suppression
- contextual wording application

PocketSecretary-specific application:
- notification may feed the home speech bubble summary
- app-specific feature surfaces consume notification state
- plan-bound notification availability remains app-specific

rules:
- notifications must reflect actual runtime state
- notification display must not fabricate authority
- critical external completion must not be implied
  only by local notification success


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/030.secretary/0400106_POCKET_SECRETARY_PERSONA_PRESENTATION_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERSONA PRESENTATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for Persona-related visual
and interaction presentation within PocketSecretary.

runtime areas:
- character state application
- emotion/view switching
- local presentation refresh
- fallback rendering behavior
- secretary interaction presentation

rules:
- Persona rendering must remain presentation-oriented
- rendering failure must not imply authority failure
- presentation state must not redefine permission logic


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/030.secretary/0400111_POCKET_SECRETARY_CONSULT_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONSULT RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for consult-oriented secretary interaction.

runtime areas:
- consult session start
- consult prompt handling
- consult state persistence
- consult summary update
- bounded follow-up guidance

rules:
- consult runtime is guidance-oriented
- consult output must not be treated as approval authority
- consult suggestions and critical action execution remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/030.secretary/0400115_POCKET_SECRETARY_CONSULTATION_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONSULTATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific consultation runtime
based on the PersonaOS Consultation Common runtime.

common reference:
PersonaOS consultation common runtime defines:
- consultation start
- tier resolution
- scope determination
- context load
- guidance output
- summary update

PocketSecretary-specific runtime application:
- Pro resolves to personal consultation only
- Enterprise resolves to personal consultation
  plus company-secretary business consultation
- PocketSecretary may emphasize:
  - business_document
  - business_strategy
  - business_problem_solving
  - business_workflow

rules:
- consultation remains advisory at runtime
- consultation must not bypass explicit submission paths
- plan-bound runtime availability remains PocketSecretary-specific


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/030.secretary/0400124_POCKET_SECRETARY_NOTIFICATION_TIER_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION TIER RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific tier application
on top of the shared Notification Common.

common reference:
PersonaOS notification common defines:
- basic_notification
- advanced_notification
- grouped summary
- quiet hours
- daily summary
- contextual wording

PocketSecretary-specific tier application:
- free runtime remains on basic notification
- pro and enterprise may enable advanced notification

rules:
- notification wording must not imply authority or approval
- plan-bound runtime availability remains PocketSecretary-specific


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/030.secretary/0400126_POCKET_SECRETARY_SECRETARY_SWITCH_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECRETARY SWITCH RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific secretary switching
based on the shared Secretary Switch Common runtime.

common reference:
PersonaOS secretary interaction common runtime defines
the common secretary switch sequence.

PocketSecretary-specific application:
- switch may start from home-character tap
- switch refreshes home render and summary style

rules:
- switching is explicit
- switching affects presentation and guidance style only
- switching must not bypass plan boundary


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/030.secretary/0400130_POCKET_SECRETARY_NOTIFICATION_CONTROL_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION CONTROL RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific notification control runtime
based on the shared Notification Common runtime.

common reference:
PersonaOS notification common defines:
- quiet hours suppression
- grouped summary composition
- daily summary generation
- re-notification timing

PocketSecretary-specific application:
- notification controls affect PocketSecretary home
  and secretary-facing surfaces
- unavailable advanced controls remain plan-bounded

rules:
- quiet hours must suppress non-critical notification noise
- daily summary must remain informational
- advanced notification remains plan-bounded


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/030.secretary/0400133_POCKET_SECRETARY_SECRETARY_WORDING_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECRETARY WORDING RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for secretary-specific wording resolution.

runtime sequence:
1. determine secretary_id
2. determine message_type
3. resolve template_key
4. inject runtime variables
5. render final wording

rules:
- missing secretary-specific entry falls back to standard secretary wording
- wording resolution must not change authority meaning
- company_ai wording remains reserved until future activation


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/030.secretary/0400134_POCKET_SECRETARY_COMPANY_SECRETARY_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY COMPANY SECRETARY RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for consuming company secretary
from BusinessOS.

runtime sequence:
1. Enterprise user enters company-secretary-capable surface
2. PocketSecretary resolves BusinessOS company secretary reference
3. availability and usage scope are checked
4. company secretary is rendered if valid
5. consultation or guidance may begin
6. invalid or unavailable state fails closed

rules:
- company secretary runtime remains consumption-only
- invalid BusinessOS reference must fail closed
- company secretary support does not imply approval authority


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/040.personal/0400102_POCKET_SECRETARY_SCHEDULE_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY SCHEDULE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for schedule calendar creation,
editing, local persistence, reminder preparation,
and bounded synchronization.

calendar views:
- month view
- day view

rules:
- schedule calendar is part of free core functionality
- schedule edits may be saved locally first
- external confirmation must remain distinguishable
- schedule conflict state must be explicit
- external calendar commitment requires bounded legality


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/040.personal/0400103_POCKET_SECRETARY_TODO_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY TODO RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for todo creation,
editing, completion, archival, and presentation refresh.

rules:
- todo actions are local by default
- completion does not imply external completion
- archive transition must remain reversible where supported
- priority and due state must be rendered explicitly


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/040.personal/0400104_POCKET_SECRETARY_NOTE_ARCHIVE_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTE ARCHIVE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for notes, memo handling,
archive movement, retrieval, and local persistence continuity.

rules:
- note save must preserve local intent
- archive move must not be treated as deletion
- retrieval behavior must respect retention state


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/040.personal/0400110_POCKET_SECRETARY_CHECKLIST_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY CHECKLIST RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for checklist creation,
editing, item completion, and archival.

rules:
- checklist actions are local by default
- checklist completion and archival remain explicit
- checklist UI refresh and state persistence must remain consistent


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/040.personal/0400114_POCKET_SECRETARY_LIBRARY_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY LIBRARY RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for the Library domain.

runtime areas:
- file registration
- local file reference persistence
- file browsing
- file deletion
- optional summary state handling

rules:
- registration and deletion must remain explicit
- library runtime is local-first
- file existence and summary availability remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/040.personal/0400116_POCKET_SECRETARY_TRAVEL_EXPENSE_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY TRAVEL EXPENSE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for travel expense handling.

runtime areas:
- entry creation
- local edit
- local save
- monthly linkage
- review preparation

rules:
- travel expense begins as local working data
- monthly aggregation remains a distinct later step
- local save success does not imply ERP submission


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/040.personal/0400117_POCKET_SECRETARY_MONTHLY_AGGREGATION_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY MONTHLY AGGREGATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for monthly aggregation.

runtime areas:
- eligible item selection
- aggregation calculation
- result persistence
- review output

rules:
- aggregation is a bounded local/business preparation step
- aggregation result does not equal ERP acceptance
- aggregation and submission remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/0400000_POCKET_SECRETARY_RUNTIME_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY RUNTIME INDEX
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
Index of PocketSecretary-specific runtime documents.

shared common dependencies:
- PersonaOS Consultation Common runtime
- PersonaOS Secretary Interaction Common runtime
- PersonaOS Notification Common runtime
- PersonaOS Background Common runtime
- BusinessOS Submission Common runtime

reading order:
1. Runtime Overview
2. Core runtime
3. Shared-common application runtime
4. PocketSecretary-only runtime
5. Cross-cutting technical domain runtime

cross_cutting_technical_domain:
- 140.visual-runtime
  PocketSecretary host/runtime lifecycle for Persona Visual Runtime.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/0400001_POCKET_SECRETARY_RUNTIME_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY RUNTIME OVERVIEW
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
This layer defines PocketSecretary-specific runtime behavior.

shared common references:
- PersonaOS Consultation Common runtime
- PersonaOS Secretary Interaction Common runtime
- PersonaOS Notification Common runtime
- PersonaOS Background Common runtime
- BusinessOS Submission Common runtime

PocketSecretary-specific runtime areas:
- visual-runtime host runtime
- home screen refresh and speech bubble placement
- score-based home summary selection runtime
- secretary wording runtime
- secretary switching from home
- background switching from home
- schedule / todo / memo / library behavior
- travel expense / monthly aggregation
- Enterprise review surfaces
- application button trigger placement
- Deep Link launch runtime for EstimateCreator and NameCardManager
- app-local sync and failure handling

runtime rule:
PocketSecretary binds shared runtime commons
to app-visible surfaces and app-specific plan gating.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/050.business/0400107_POCKET_SECRETARY_SYNC_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY SYNC RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for bounded synchronization
between local state and external systems.

sync states:
- local_only
- pending
- confirmed
- failed
- conflicted

rules:
- pending must remain visible
- conflict must be explicit
- confirmed requires actual confirmation
- retry must be bounded and safe
- reconnect must not silently rewrite user intent


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/050.business/0400108_POCKET_SECRETARY_ERP_REQUEST_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP REQUEST RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for ERP-facing request preparation,
review, submission attempt, and status tracking.

runtime stages:
- draft
- ready_for_review
- awaiting_user_confirmation
- submitted_pending_confirmation
- confirmed
- failed
- conflicted

rules:
- draft creation is local
- review and confirmation remain explicit
- submission and confirmation are distinct
- failed submission must not be shown as success


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/050.business/0400118_POCKET_SECRETARY_QUOTATION_DRAFT_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY QUOTATION DRAFT RUNTIME
# ============================================================

status: replaced-by-external-app
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

replacement:
Quotation draft runtime ownership moved out of PocketSecretary.

PocketSecretary runtime role:
- launch the dedicated business app
- optionally prepare bounded launch context

PocketSecretary non-role:
- quotation editing runtime
- quotation review runtime
- quotation submission runtime


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/050.business/0400119_POCKET_SECRETARY_ORDER_DRAFT_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY ORDER DRAFT RUNTIME
# ============================================================

status: replaced-by-external-app
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

replacement:
Order draft runtime ownership moved out of PocketSecretary.

PocketSecretary runtime role:
- launch the dedicated business app
- optionally prepare bounded launch context

PocketSecretary non-role:
- order editing runtime
- order review runtime
- order submission runtime


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/050.business/0400120_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY ENTERPRISE APPLICATION BUTTON RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific application-button runtime
on top of the shared explicit-submission common runtime.

common reference:
BusinessOS submission common runtime defines:
- explicit submit action
- auth verification
- external API submission attempt
- pending/accepted/failed/conflicted result reflection

PocketSecretary-specific covered draft domains:
- ERP application draft
- quotation draft
- order draft

rules:
- button press is the PocketSecretary explicit submission trigger
- button absence or non-press must not submit
- draft completion alone must not trigger submission


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/050.business/0400121_POCKET_SECRETARY_ERP_AUTH_CONTEXT_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP AUTH CONTEXT RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific auth-context runtime
based on the shared auth-context common runtime.

common reference:
BusinessOS submission common runtime defines:
- presence check
- validity check
- expiry check
- company context check
- submission eligibility decision

PocketSecretary-specific application:
- auth checks happen from Enterprise review/submission flows

rules:
- valid ERP API auth context is required for submission
- missing, invalid, or expired context blocks submission
- unknown auth state must fail closed


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/050.business/0400122_POCKET_SECRETARY_EXPLICIT_SUBMISSION_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY EXPLICIT SUBMISSION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific explicit submission runtime
based on the shared Business Submission Common.

common reference:
BusinessOS submission common runtime defines:
- draft exists
- explicit user submit action
- auth context verification
- external API submission
- result reflection

PocketSecretary-specific application:
- explicit submission starts from PocketSecretary review surfaces
- the trigger is the Enterprise application button

covered draft domains:
- ERP application draft
- quotation draft
- order draft

rules:
- explicit user action is required
- submission occurs through ERP external API only
- local draft, API send, and business acceptance remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/050.business/0400123_POCKET_SECRETARY_AUTO_SUBMISSION_PROHIBITION_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY AUTO SUBMISSION PROHIBITION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific no-auto-submit behavior
based on the shared Business Submission Common.

common reference:
BusinessOS submission common defines auto-submission prohibition.

covered draft domains:
- ERP application draft
- quotation draft
- order draft

rules:
- auto-submit is prohibited
- background behavior may preserve state,
  but must not create first-time submission without explicit user action


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/050.business/0400131_POCKET_SECRETARY_BUSINESS_APP_LAUNCH_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY BUSINESS APP LAUNCH RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for launching the dedicated business app.

runtime sequence:
1. user chooses business app entry from PocketSecretary
2. launch context is prepared if needed
3. launch target is validated
4. business app launch is requested
5. launch result is reflected to PocketSecretary UI

rules:
- launch success does not equal document creation success
- launch success does not equal submission success
- app launch remains explicit


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/050.business/0400131_POCKET_SECRETARY_DEEP_LINK_LAUNCH_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY DEEP LINK LAUNCH RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for Deep Link launch
of EstimateCreator and NameCardManager.

runtime sequence:
1. user chooses external business-app entry
2. PocketSecretary determines target app and mode
3. bounded launch context is prepared if needed
4. authenticated BusinessOS context is inherited
5. Deep Link launch is requested
6. launch success or failure is detected
7. failure path shows install guidance

targets:
- EstimateCreator
- NameCardManager

rules:
- target app should not require normal re-login on successful inherited context
- launch success does not equal business success
- launch success does not equal submission success
- install guidance is required when target app is unavailable
- target-side authorization and publication checks still apply
- invalid inherited context must fail closed at target side


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/140.visual-runtime/0401400000_POCKET_SECRETARY_VISUAL_RUNTIME_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY VISUAL RUNTIME INDEX
# ============================================================

status: canonical
layer: runtime
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. OFFICIAL READING ORDER
# ============================================================

1. 0401400001_POCKET_SECRETARY_VISUAL_RUNTIME_HOST_RUNTIME.md
2. 0401400002_POCKET_SECRETARY_VISUAL_RUNTIME_SESSION_RUNTIME.md
3. 0401400003_POCKET_SECRETARY_VISUAL_RUNTIME_FALLBACK_RUNTIME.md


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/140.visual-runtime/0401400001_POCKET_SECRETARY_VISUAL_RUNTIME_HOST_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY VISUAL RUNTIME HOST RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines runtime-side host behavior
required from PocketSecretary.


# ============================================================
# 2. REQUIRED HOST STEPS
# ============================================================

PocketSecretary runtime behavior must follow:

select surface
obtain manifest projection
initialize host adapter
create runtime session
attach render container
observe runtime events
dispose session on surface destruction


# ============================================================
# 3. PROHIBITIONS
# ============================================================

PocketSecretary must not:

reuse disposed session
skip explicit disposal
attach one session to multiple conflicting containers
treat terminal session as recoverable


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/140.visual-runtime/0401400002_POCKET_SECRETARY_VISUAL_RUNTIME_SESSION_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY VISUAL RUNTIME SESSION RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. SESSION VIEW
# ============================================================

From PocketSecretary side,
a runtime session is:

created
attached
ready
rendering-capable
paused
disposed
or failed


# ============================================================
# 2. HOST RULE
# ============================================================

PocketSecretary must bind one host-visible render lifecycle
to one runtime session lifecycle.

Screen replacement or container destruction
must trigger deterministic session cleanup.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/140.visual-runtime/0401400003_POCKET_SECRETARY_VISUAL_RUNTIME_FALLBACK_RUNTIME.md
# ============================================================

# ============================================================
# POCKET SECRETARY VISUAL RUNTIME FALLBACK RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines how PocketSecretary
should behave when runtime fallback occurs.


# ============================================================
# 2. FALLBACK PRINCIPLES
# ============================================================

If optional background fails:
continue persona-first render

If optional animation fails:
continue static-safe render

If non-critical asset times out:
allow runtime retry / fallback path

If terminal contract error occurs:
stop normal render path and show host error shell


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/010.core/0500100_POCKET_SECRETARY_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the major operational flows of PocketSecretary.

scope:
The flow layer defines ordered user-visible and system-visible
process flows built on top of the runtime layer.

flow_principles:
- local-first progression
- explicit review before critical external effect
- visible pending and failure transitions
- bounded recovery
- preservation of user intent during degraded states


# ============================================================
# 1. MAJOR FLOW DOMAINS
# ============================================================

PocketSecretary major flows include:

- application startup flow
- daily secretary interaction flow
- todo handling flow
- notification flow
- Persona presentation flow
- sync flow
- ERP request flow
- failure recovery flow


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/010.core/0500101_POCKET_SECRETARY_APPLICATION_STARTUP_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY APPLICATION STARTUP FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. application launches
2. local configuration loads
3. local secretary state loads
4. dashboard and primary local data hydrate
5. offline / online capability state is determined
6. pending local actions are identified
7. user-visible surface becomes interactive
8. bounded background checks may run if allowed

rules:
- startup must not require external success for core local use
- failure in optional external checks must not block base usage


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/010.core/0500108_POCKET_SECRETARY_FAILURE_RECOVERY_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY FAILURE RECOVERY FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. failure or degraded condition is detected
2. affected area is identified
3. unsafe execution path is blocked if needed
4. local work is preserved where safe
5. retry / review / recovery path is offered where applicable
6. state remains visible until resolution
7. resolution or escalation is recorded

rules:
- critical uncertainty must fail closed
- preserved local user intent must be prioritized where safe
- fictional success states are prohibited


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/020.home/0500119_POCKET_SECRETARY_FREE_SCHEDULE_CALENDAR_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY FREE SCHEDULE CALENDAR FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. free user opens schedule calendar
2. month view or day view is selected
3. schedule items are displayed from local state
4. user may create or edit local schedule items
5. local persistence occurs
6. reminder and visible schedule state refresh

rules:
- schedule calendar is part of free core functionality
- local schedule handling remains usable without AI secretary capability
- local save and external confirmation remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/020.home/0500120_POCKET_SECRETARY_HOME_SCREEN_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY HOME SCREEN FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. home screen opens
2. secretary render and background render are bound
3. speech bubble content is selected
4. primary buttons are shown
5. user may open schedule, todo, library, or tools
6. user may tap secretary to change secretary
7. user may tap background to change background
8. user may open settings

rules:
- home screen must make information, navigation,
  and secretary presentation understandable at a glance
- speech bubble content remains advisory and bounded


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/030.secretary/0500102_POCKET_SECRETARY_DAILY_SECRETARY_INTERACTION_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY DAILY SECRETARY INTERACTION FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. user opens dashboard or entry surface
2. current local secretary state is displayed
3. user reviews schedule, todos, and reminders
4. user performs local actions
5. local state updates are persisted
6. optional pending sync indicators are refreshed
7. Persona presentation updates where applicable

rules:
- local use must remain primary
- visible state must reflect actual known state
- Persona presentation must not conceal pending or failed conditions


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/030.secretary/0500104_POCKET_SECRETARY_NOTIFICATION_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. runtime condition for notification is met
2. notification eligibility is checked
3. notification content is assembled from actual state
4. local notification is issued
5. user may open, dismiss, defer, or inspect
6. follow-up local state is updated as needed

rules:
- notification issuance must be state-grounded
- local notification success must not imply external action success


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/030.secretary/0500105_POCKET_SECRETARY_PERSONA_PRESENTATION_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERSONA PRESENTATION FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. relevant local or bounded Persona-linked state changes
2. presentation eligibility is checked
3. presentation state is resolved
4. Persona view/emotion/render parameters are updated
5. dashboard or relevant screen refreshes
6. fallback rendering is used if needed

rules:
- Persona presentation flow is presentation-only
- presentation transition must not grant authority


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/030.secretary/0500110_POCKET_SECRETARY_CONSULT_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONSULT FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. user enters a consult surface
2. consult context is loaded
3. consult interaction proceeds
4. consult state is updated locally
5. guidance or follow-up suggestions are shown
6. any critical follow-up action routes to explicit review paths

rules:
- consult flow is advisory
- consult flow must not silently trigger critical external execution


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/040.personal/0500103_POCKET_SECRETARY_TODO_HANDLING_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY TODO HANDLING FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. user creates or opens a todo item
2. todo content is edited locally
3. local validation is applied
4. todo state is persisted
5. list and widget surfaces refresh
6. reminder or due-state logic updates if applicable
7. completion or archive transition occurs when user requests it

rules:
- local todo save must not depend on external confirmation
- completion and archive transitions must remain explicit


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/040.personal/0500109_POCKET_SECRETARY_CHECKLIST_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY CHECKLIST FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. user creates or opens a checklist
2. checklist structure is edited locally
3. item completion state is updated
4. local persistence occurs
5. checklist display refreshes
6. archive or retention actions occur when requested

rules:
- checklist handling remains local unless explicitly extended
- completion and archive states remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/050.business/0500106_POCKET_SECRETARY_SYNC_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY SYNC FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. sync-eligible local or external-linked state is identified
2. sync preconditions are checked
3. sync attempt is initiated if allowed
4. pending state is recorded
5. confirmation, failure, or conflict result is received
6. sync state is updated explicitly
7. user-visible indicators refresh

rules:
- pending must remain visible
- confirmed requires actual confirmation
- failure and conflict must remain distinguishable


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/050.business/0500107_POCKET_SECRETARY_ERP_REQUEST_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP REQUEST FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. user starts an ERP-related request locally
2. request draft is created
3. request content is edited and validated
4. review-ready state is reached
5. user explicitly reviews and confirms
6. bounded submission attempt is made
7. pending external confirmation is tracked
8. confirmed / failed / conflicted result is surfaced

rules:
- local draft and submitted state must remain distinct
- review and confirmation must not be skipped
- failed submission must not be represented as success


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/050.business/0500115_POCKET_SECRETARY_QUOTATION_DRAFT_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY QUOTATION DRAFT FLOW
# ============================================================

status: replaced-by-external-app
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

replacement:
Quotation draft flow moved to the dedicated business app.

PocketSecretary flow role:
1. user selects quotation-related entry
2. PocketSecretary prepares bounded launch context if needed
3. PocketSecretary launches the business app


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/050.business/0500116_POCKET_SECRETARY_ORDER_DRAFT_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY ORDER DRAFT FLOW
# ============================================================

status: replaced-by-external-app
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

replacement:
Order draft flow moved to the dedicated business app.

PocketSecretary flow role:
1. user selects order-related entry
2. PocketSecretary prepares bounded launch context if needed
3. PocketSecretary launches the business app


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/050.business/0500117_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY ENTERPRISE APPLICATION BUTTON FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. enterprise user reaches a PocketSecretary draft review surface
2. review state is displayed
3. application button is shown when submission is eligible
4. user explicitly presses the button
5. ERP auth context is checked
6. shared external API submission flow may begin

covered draft domains:
- ERP application draft
- quotation draft
- order draft

rules:
- explicit button press is required
- draft completion alone must not trigger submission
- absence of explicit button press means no submission


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/050.business/0500118_POCKET_SECRETARY_ERP_EXTERNAL_API_SUBMISSION_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP EXTERNAL API SUBMISSION FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. submission-eligible draft exists
2. PocketSecretary review surface is shown
3. user explicitly requests submission by application button
4. ERP API auth context is verified
5. shared external API call is made
6. submitted_pending_response state is recorded
7. accepted / failed / conflicted result is reflected

covered draft domains:
- ERP application draft
- quotation draft
- order draft

rules:
- PocketSecretary submits through external API only
- direct ERP database write does not occur
- API send and business acceptance remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/050.business/0500121_POCKET_SECRETARY_BUSINESS_APP_LAUNCH_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY BUSINESS APP LAUNCH FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. user opens business-app entry from PocketSecretary
2. PocketSecretary determines entry mode
3. bounded launch context may be prepared
4. dedicated business app launch is requested
5. PocketSecretary reflects launch result

rules:
- launch and submission remain distinct
- launch and business acceptance remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/050.business/0500121_POCKET_SECRETARY_DEEP_LINK_LAUNCH_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY DEEP LINK LAUNCH FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. user selects EstimateCreator or NameCardManager entry
2. PocketSecretary determines target mode
3. bounded launch context may be prepared
4. PocketSecretary issues Deep Link launch
5. if launch succeeds, control transfers to target app
6. if launch fails, install guidance is shown

rules:
- launch and business success remain distinct
- launch and submission remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/0500000_POCKET_SECRETARY_FLOW_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY FLOW INDEX
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
Index of PocketSecretary-specific flow documents.

reading order:
1. Flow Overview
2. Core app flows
3. Secretary and personal flows
4. Business flows
5. Cross-cutting technical domain flows

cross_cutting_technical_domain:
- 140.visual-runtime
  Host flow for PocketSecretary to create, attach, and dispose Visual Runtime sessions.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/0500001_POCKET_SECRETARY_FLOW_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY FLOW OVERVIEW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
Defines the ordered flows of user-visible and system-visible behavior.

focus:
- startup
- daily secretary interaction
- free schedule calendar
- todo / checklist
- library
- Pro / Enterprise consultation
- travel expense / monthly aggregation
- quotation draft / order draft
- notification / Persona presentation
- enterprise application button
- ERP external API explicit submission
- sync
- failure recovery


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/140.visual-runtime/0501400001_POCKET_SECRETARY_VISUAL_RUNTIME_HOST_FLOW.md
# ============================================================

# ============================================================
# POCKET SECRETARY VISUAL RUNTIME HOST FLOW
# ============================================================

status: canonical
layer: flow
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FLOW
# ============================================================

1. PocketSecretary screen opens
2. Host determines surface class
3. Host obtains manifest projection
4. Host prepares container
5. Host creates runtime session
6. Host attaches container
7. Runtime resolves background and persona composition
8. Runtime emits ready / render-completed event
9. PocketSecretary continues host interactions
10. Screen closes or container is destroyed
11. Host disposes runtime session


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/010.core/0600100_POCKET_SECRETARY_INTEGRATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the bounded integration architecture of PocketSecretary.

scope:
The integration layer defines how PocketSecretary connects to
upstream systems, external services, and bounded synchronization targets.

integration_principles:
- explicit upstream boundary
- source-of-truth respect
- local-first survivability
- explicit confirmation requirement
- replaceable integration endpoints
- fail-closed critical external execution


# ============================================================
# 1. INTEGRATION DOMAINS
# ============================================================

PocketSecretary integration domains include:

- Persona integration
- ERP integration
- external API integration
- sync target integration
- request / response boundary handling
- external confirmation handling


# ============================================================
# 2. INTEGRATION POSITION
# ============================================================

PocketSecretary acts as an application client.

PocketSecretary may:
- read bounded upstream state
- send bounded requests
- receive bounded confirmation
- preserve local drafts and pending states

PocketSecretary must not:
- redefine upstream authority
- forge external confirmation
- bypass enterprise approval flows
- treat optional integration as mandatory for core local use


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/010.core/0600105_POCKET_SECRETARY_REQUEST_RESPONSE_BOUNDARY.md
# ============================================================

# ============================================================
# POCKET SECRETARY REQUEST RESPONSE BOUNDARY
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the bounded contract surface between PocketSecretary
and external systems.

requirements:
- outbound requests must have explicit target and purpose
- inbound responses must have explicit interpretation rules
- pending, confirmed, failed, and conflicted states must not be collapsed
- transport success must not be confused with business success

rules:
- a successful send does not equal confirmed acceptance
- a local draft does not equal external submission
- a local rendered state does not equal upstream authority state


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/010.core/0600106_POCKET_SECRETARY_EXTERNAL_CONFIRMATION_INTEGRATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY EXTERNAL CONFIRMATION INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines how PocketSecretary handles external confirmation
for bounded requests and synchronized state.

confirmation principles:
- confirmation must come from an identifiable external source
- absence of failure is not confirmation
- local optimistic state must remain distinguishable
- confirmation state must update user-visible status explicitly

rules:
- confirmation may update local state
- confirmation must not be fabricated locally
- unknown confirmation state must remain pending or unresolved


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/010.core/0600107_POCKET_SECRETARY_INTEGRATION_FAILURE_RULE.md
# ============================================================

# ============================================================
# POCKET SECRETARY INTEGRATION FAILURE RULE
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

rule:
Integration failure must degrade safely.

requirements:
- optional external failure must not destroy local continuity
- critical external ambiguity must fail closed
- retry must be bounded and visible where applicable
- user intent must be preservable where safe

prohibitions:
- masking integration failure with fictional success
- treating timeout as confirmation
- overwriting local intent silently after failed integration


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/020.secretary/0600101_POCKET_SECRETARY_PERSONA_INTEGRATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERSONA INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the bounded integration between PocketSecretary
and Persona-related upstream systems.

integration purposes:
- obtain bounded Persona-linked presentation state
- request presentation-oriented data where permitted
- support secretary-like interaction surfaces
- apply bounded local presentation refresh

rules:
- PocketSecretary is not the source-of-truth for Persona authority
- Persona-linked state used locally must remain bounded
- presentation data and authority data must remain distinguishable
- failure of Persona presentation integration must degrade safely


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/020.secretary/0600108_POCKET_SECRETARY_PERSONAOS_VISUAL_RUNTIME_INTEGRATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERSONAOS VISUAL RUNTIME INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the bounded integration between PocketSecretary
and the shared PersonaOS VisualRuntime domain.

integration role:
- issue bounded render-related request where applicable
- receive bounded render result, fallback result, or failure state
- preserve local UI continuity during delayed or failed render resolution

rules:
- PocketSecretary does not own shared VisualRuntime authority
- render success does not imply business or permission success
- fallback and failure states must remain distinguishable in application handling


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/030.external/0600103_POCKET_SECRETARY_EXTERNAL_API_INTEGRATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY EXTERNAL API INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines general integration rules for external APIs
used by PocketSecretary.

API categories may include:
- Persona-related APIs
- ERP-related APIs
- calendar or schedule-related APIs
- optional bounded utility APIs

rules:
- every API must have a bounded role
- request intent and target must be identifiable
- response state must not be over-trusted without verification
- optional API failure must not collapse core local workflows


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/030.external/0600104_POCKET_SECRETARY_SYNC_TARGET_INTEGRATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY SYNC TARGET INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines integration rules for targets participating
in bounded synchronization.

sync target types may include:
- Persona-related targets
- ERP-related targets
- external schedule targets
- bounded future integration targets

rules:
- source and destination roles must remain explicit
- sync target ownership must be identifiable
- local state and confirmed external state must remain distinguishable
- conflict and failure handling must remain explicit


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/030.external/0600109_POCKET_SECRETARY_MAILER_INTEGRATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY MAILER INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines bounded mailer integration from PocketSecretary.

role:
PocketSecretary may launch or bridge to an external mailer
for user-initiated communication.

integration scope:
- open compose surface
- pass bounded recipient or subject context where applicable
- return control to PocketSecretary where supported

rules:
- mailer launch is not mail send completion
- PocketSecretary does not treat compose launch as message success
- mailer integration remains bounded and optional


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/030.external/0600110_POCKET_SECRETARY_YAHOO_TRANSIT_INTEGRATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY YAHOO TRANSIT INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines bounded Yahoo transit guidance integration.

role:
PocketSecretary may launch or bridge to Yahoo transit guidance
as a travel assistance capability.

integration scope:
- route search launch
- departure / arrival / timing context handoff where applicable
- bounded return to PocketSecretary workflow

rules:
- transit guidance integration is assistance only
- transit result is not automatically an ERP or accounting fact
- external route guidance and internal travel expense records remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/030.external/0600114_POCKET_SECRETARY_BUSINESS_APP_LAUNCH_INTEGRATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY BUSINESS APP LAUNCH INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines integration boundary for launching the dedicated business app
from PocketSecretary.

integration role:
PocketSecretary launches the dedicated business app
for quotation and order work.

bounded launch data may include:
- target_app_code
- entry_mode
- customer_reference
- company_context_id
- handoff_source

rules:
- launch integration must remain explicit
- launch result and business result remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/030.external/0600114_POCKET_SECRETARY_ESTIMATECREATOR_DEEP_LINK_INTEGRATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY ESTIMATECREATOR DEEP LINK INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the Deep Link integration boundary
between PocketSecretary and EstimateCreator.

EstimateCreator formal role:
EstimateCreator is a BusinessOS rough-estimate and sales-support app.
It uses shared common capability for:
- app-internal sharing
- ERP publication request
- online sync

authentication inheritance:
PocketSecretary hands off authenticated BusinessOS context.
EstimateCreator should continue on the inherited authenticated context
without normal re-login.

PocketSecretary integration role:
- invoke EstimateCreator Deep Link
- pass bounded launch parameters only
- hand off authenticated BusinessOS context
- show install guidance when EstimateCreator is unavailable

recommended parameters:
- mode
- company_context_id
- customer_reference
- handoff_source

rules:
- PocketSecretary does not directly invoke ERP publication through this boundary
- Deep Link launch result and business result remain distinct
- inherited authentication does not replace target-side authorization checks


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/040.business/0600102_POCKET_SECRETARY_ERP_INTEGRATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the bounded integration between PocketSecretary
and ERP-facing gateways or enterprise request systems.

integration purposes:
- prepare ERP-facing requests
- submit bounded request payloads after explicit user confirmation
- receive submission results or confirmation states
- reflect external request status locally

rules:
- PocketSecretary is not the ERP source-of-truth
- request preparation and request submission must remain distinct
- submission confirmation must come from the external side
- failure must remain visible and must not be masked as success


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/040.business/0600111_POCKET_SECRETARY_BUSINESS_CARD_MANAGEMENT_INTEGRATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY BUSINESS CARD MANAGEMENT INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines bounded business card management integration.

role:
PocketSecretary may connect to external or companion business card
management capability for enterprise workflows.

integration scope:
- business card app launch
- bounded business card context handoff
- return to PocketSecretary workflow where supported

rules:
- PocketSecretary need not own the full business card source-of-truth
- integration success does not equal card record update success
- business card integration remains enterprise-bounded


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/040.business/0600111_POCKET_SECRETARY_NAMECARDMANAGER_DEEP_LINK_INTEGRATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY NAMECARDMANAGER DEEP LINK INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the Deep Link integration boundary
between PocketSecretary and NameCardManager.

NameCardManager formal role:
NameCardManager is a BusinessOS-first business-card management app.
BusinessOS is the source of truth.
Local storage is an offline work area and cache.

authentication inheritance:
PocketSecretary hands off authenticated BusinessOS context.
NameCardManager should continue on the inherited authenticated context
without normal re-login.

PocketSecretary integration role:
- invoke NameCardManager Deep Link
- pass bounded launch parameters only
- hand off authenticated BusinessOS context
- show install guidance when NameCardManager is unavailable

recommended parameters:
- mode
- company_context_id
- keyword
- card_id
- handoff_source

rules:
- launch remains explicit
- launch result and business result remain distinct
- inherited authentication does not replace target-side authorization checks


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/040.business/0600112_POCKET_SECRETARY_ERP_AUTH_CONTEXT_INTEGRATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP AUTH CONTEXT INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines PocketSecretary-specific integration usage
of the shared auth-context common.

common reference:
BusinessOS submission common defines shared auth-context requirements.

PocketSecretary-specific application:
- PocketSecretary uses valid ERP external API authentication context
  from explicit Enterprise submission flows
- auth context is validated before submission from app review surfaces

rules:
- auth context must remain valid at submission time
- missing, invalid, or expired auth context blocks submission
- auth context validation does not equal business acceptance


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/040.business/0600113_POCKET_SECRETARY_ENTERPRISE_DRAFT_SUBMISSION_INTEGRATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY ENTERPRISE DRAFT SUBMISSION INTEGRATION
# ============================================================

status: reduced-scope
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines PocketSecretary-specific external submission integration
for remaining enterprise submission domains.

common reference:
BusinessOS submission common defines:
- external API submission only
- explicit submission only
- draft alignment principle

covered draft domains:
- ERP application draft

rules:
- PocketSecretary submission occurs through ERP external API only
- direct ERP database write is prohibited
- explicit application button action is required
- draft, transport send, and ERP-side acceptance remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/0600000_POCKET_SECRETARY_INTEGRATION_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY INTEGRATION INDEX
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
Index of PocketSecretary-specific integration documents.

reading order:
1. Integration Overview
2. Core integration boundaries
3. Persona/external integrations
4. Business integrations
5. Cross-cutting technical domain integrations

cross_cutting_technical_domain:
- 140.visual-runtime
  Host-to-runtime integration boundary with Persona Visual Runtime.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/0600001_POCKET_SECRETARY_INTEGRATION_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY INTEGRATION OVERVIEW
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
This layer defines bounded external integration of PocketSecretary.

shared common references:
- PersonaOS shared VisualRuntime consumption boundary
- BusinessOS Submission Common auth/submission boundary

PocketSecretary-specific integrations:
- visual-runtime host integration
- Persona integration
- ERP integration
- ERP auth context usage from app review flows
- EstimateCreator Deep Link integration
- NameCardManager Deep Link integration
- mailer integration
- Yahoo transit integration
- sync target integration
- external confirmation handling

important integration intent:
PocketSecretary owns app-side launch, review, and visible integration flow,
while common boundary meaning may be defined in shared systems.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/140.visual-runtime/0601400001_POCKET_SECRETARY_TO_PERSONA_VISUAL_RUNTIME_INTEGRATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY TO PERSONA VISUAL RUNTIME INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. INTEGRATION PURPOSE
# ============================================================

This document defines the integration boundary
between PocketSecretary and Persona Visual Runtime.


# ============================================================
# 2. INPUTS TO RUNTIME
# ============================================================

PocketSecretary sends:

surface_code
manifest_projection
initial_state_hint
optional_background_override
container_binding_request


# ============================================================
# 3. OUTPUTS FROM RUNTIME
# ============================================================

PocketSecretary receives:

session_id
runtime_event_stream
render completion
fallback events
runtime errors


# ============================================================
# 4. INTEGRATION RULE
# ============================================================

PocketSecretary may shape UX around the runtime,
but must not alter canonical runtime semantics.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/070.operations/010.core/0700100_POCKET_SECRETARY_OPERATIONS.md
# ============================================================

# ============================================================
# POCKET SECRETARY OPERATIONS
# ============================================================

status: canonical
layer: 070.operations
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the operations layer of PocketSecretary.

scope:
The operations layer defines how PocketSecretary is observed,
checked, recovered, and handled during normal and degraded operation.

operations_principles:
- local continuity first
- visible pending and failure states
- bounded recovery
- explicit operator/user review for critical ambiguity
- no fictional success
- preserve user intent where safe


# ============================================================
# 1. OPERATIONS DOMAINS
# ============================================================

PocketSecretary operations domains include:

- normal operation monitoring
- pending state review
- sync issue handling
- ERP request status review
- failure recovery handling
- local continuity preservation


# ============================================================
# 2. OPERATIONS ROLE
# ============================================================

Operations must support:

- understanding current state
- identifying degraded conditions
- preserving safe user continuity
- recovering from bounded failures
- distinguishing local success from external confirmation

Operations must not:

- hide unresolved critical ambiguity
- treat pending as confirmed
- treat transport success as business success


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/070.operations/010.core/0700105_POCKET_SECRETARY_FAILURE_RECOVERY_RUNBOOK.md
# ============================================================

# ============================================================
# POCKET SECRETARY FAILURE RECOVERY RUNBOOK
# ============================================================

status: canonical
layer: 070.operations
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines bounded recovery steps for degraded or failed conditions.

recovery sequence:
1. identify the failed area
2. block unsafe critical continuation if needed
3. preserve local work where safe
4. surface retry / review / recovery action
5. update visible state honestly
6. record resolution or remaining issue state

rules:
- critical ambiguity must fail closed
- fictional success is prohibited
- safe continuity is preferred over silent loss


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/070.operations/020.personal/0700101_POCKET_SECRETARY_NORMAL_OPERATION_RUNBOOK.md
# ============================================================

# ============================================================
# POCKET SECRETARY NORMAL OPERATION RUNBOOK
# ============================================================

status: canonical
layer: 070.operations
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the normal operation runbook for PocketSecretary.

normal checks:
- dashboard loads correctly
- local data surfaces are responsive
- pending states are visible
- notification behavior is functioning
- Persona presentation degrades safely if unavailable
- external integrations remain optional for local continuity

operator expectations:
- local-first functions should remain available
- externally confirmed state should remain distinguishable


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/070.operations/020.personal/0700102_POCKET_SECRETARY_PENDING_STATE_REVIEW_RUNBOOK.md
# ============================================================

# ============================================================
# POCKET SECRETARY PENDING STATE REVIEW RUNBOOK
# ============================================================

status: canonical
layer: 070.operations
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines how pending states are reviewed and handled.

pending review steps:
1. identify the affected local object or request
2. identify whether pending is local-to-external or external-to-local
3. check whether confirmation is absent, failed, or conflicted
4. preserve current user-visible state
5. present retry, wait, or review path where applicable

rules:
- pending must remain visible
- unresolved pending must not be labeled confirmed


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/070.operations/020.personal/0700106_POCKET_SECRETARY_LOCAL_CONTINUITY_OPERATIONS.md
# ============================================================

# ============================================================
# POCKET SECRETARY LOCAL CONTINUITY OPERATIONS
# ============================================================

status: canonical
layer: 070.operations
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for continued local usability.

continuity goals:
- local secretary functions remain usable where designed
- local drafts remain preservable
- offline mode remains understandable
- temporary external failure does not collapse base usage

rules:
- offline and pending states must be distinguishable
- continuity behavior must not fabricate external completion


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/070.operations/030.business/0700103_POCKET_SECRETARY_SYNC_ISSUE_RUNBOOK.md
# ============================================================

# ============================================================
# POCKET SECRETARY SYNC ISSUE RUNBOOK
# ============================================================

status: canonical
layer: 070.operations
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the handling approach for sync-related issues.

issue categories:
- network unavailability
- timeout
- failed confirmation
- conflict
- unresolved pending

handling rules:
- preserve local user intent where safe
- distinguish failed from conflicted
- do not overwrite local state silently
- offer bounded retry or manual review path where applicable


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/070.operations/030.business/0700104_POCKET_SECRETARY_ERP_REQUEST_STATUS_RUNBOOK.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP REQUEST STATUS RUNBOOK
# ============================================================

status: canonical
layer: 070.operations
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines status handling for ERP-facing requests.

status categories:
- draft
- review_ready
- awaiting_confirmation
- submitted_pending_confirmation
- confirmed
- failed
- conflicted

rules:
- request draft and submitted state must remain distinct
- confirmation must come from outside the local draft surface
- failure must remain visible until resolved


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/070.operations/0700000_POCKET_SECRETARY_OPERATIONS_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY OPERATIONS INDEX
# ============================================================

status: canonical
layer: 070.operations
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
Index of PocketSecretary-specific operations documents.

reading order:
1. Operations Overview
2. Core operational runbooks
3. Personal/app operations
4. Business operations
5. Cross-cutting technical domain operations

cross_cutting_technical_domain:
- 140.visual-runtime
  Operational checks for session disposal, fallback visibility, and degraded rendering behavior.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/070.operations/0700001_POCKET_SECRETARY_OPERATIONS_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY OPERATIONS OVERVIEW
# ============================================================

status: active
layer: 070.operations
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/070.operations/140.visual-runtime/0701400001_POCKET_SECRETARY_VISUAL_RUNTIME_OPERATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY VISUAL RUNTIME OPERATION
# ============================================================

status: canonical
layer: operations
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. OPERATIONAL OBJECTIVE
# ============================================================

PocketSecretary operations must verify:

session disposal health
fallback event visibility
terminal error visibility
persona-first degraded rendering behavior


# ============================================================
# 2. KEY METRICS
# ============================================================

session_create_to_ready_ms
fallback_applied_count
background_degraded_but_persona_visible_count
terminal_runtime_error_count
undisposed_session_count


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/010.core/0800100_POCKET_SECRETARY_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the policy layer of PocketSecretary.

scope:
The policy layer defines operational and design application policies
that govern how PocketSecretary applies its constitutional and
architectural rules in concrete domains.

policy_principles:
- local-first by policy
- explicit review for critical actions
- visible honesty of state
- separation of presentation and authority
- minimum necessary exposure
- bounded external dependence


# ============================================================
# 1. POLICY DOMAINS
# ============================================================

PocketSecretary policy domains include:

- local-first policy
- review-required action policy
- sync handling policy
- Persona presentation policy
- privacy exposure policy
- ERP request handling policy
- notification policy


# ============================================================
# 2. POLICY ROLE
# ============================================================

Policy defines how PocketSecretary should behave
when applying its design in day-to-day operation.

Policy must not:
- override constitution
- invent new authority
- weaken explicit review boundaries


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/010.core/0800101_POCKET_SECRETARY_LOCAL_FIRST_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY LOCAL FIRST POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
Core secretary functions should prefer local execution
and local persistence whenever possible.

applies to:
- schedule handling
- todo handling
- note handling
- dashboard usability
- local draft preservation

rules:
- local continuity takes precedence over optional external freshness
- external failure should degrade features, not collapse base use
- local work should be preservable before any optional sync


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/010.core/0800102_POCKET_SECRETARY_REVIEW_REQUIRED_ACTION_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY REVIEW REQUIRED ACTION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
Actions with external, legal, organizational, or financial consequence
must require explicit review and confirmation.

covered actions:
- ERP-facing submissions
- identity-bearing requests
- external transmission of sensitive request content
- actions that may create real-world commitments

rules:
- draft, review, submit, and confirm are separate stages
- review bypass is prohibited
- ambiguous execution state must block finalization


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/010.core/0800103_POCKET_SECRETARY_SYNC_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY SYNC POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
Synchronization must remain explicit, bounded, and state-honest.

rules:
- local_only, pending, confirmed, failed, and conflicted must remain distinct
- timeout or delivery success is not confirmation
- reconnect must not silently overwrite user intent
- conflict should surface review paths where applicable


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/010.core/0800105_POCKET_SECRETARY_PRIVACY_EXPOSURE_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY PRIVACY EXPOSURE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
PocketSecretary should expose only the minimum necessary amount
of private or sensitive data for the current purpose.

applies to:
- note content
- schedule details
- ERP request drafts
- settings and preferences
- status surfaces implying external interaction

rules:
- default exposure should be minimal
- convenience should not broaden exposure by default
- sensitive state should be disclosed only through bounded surfaces


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/020.plan/0800108_POCKET_SECRETARY_PLAN_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY PLAN POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
PocketSecretary must enforce product capability according to plan.

rules:
- free provides non-AI core secretary tools only,
  including schedule calendar
- AI secretary capability begins from Pro
- enterprise extends Pro with company-secretary and business support capabilities
- plan boundaries must be reflected in actual feature behavior


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/030.secretary/0800104_POCKET_SECRETARY_PERSONA_PRESENTATION_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERSONA PRESENTATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
Persona presentation should enhance usability and guidance
without carrying authority or permission meaning.

rules:
- Persona style must not imply approval
- Persona expression must not alter execution eligibility
- Persona rendering failure should degrade presentation only
- secretary-like guidance must remain bounded and honest


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/030.secretary/0800107_POCKET_SECRETARY_NOTIFICATION_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
Notifications should provide bounded, state-grounded attention support.

rules:
- notifications should be based on actual known state
- notification delivery must not imply external success
- critical notifications should route to explicit review surfaces
- notification behavior should remain understandable in offline and pending states


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/030.secretary/0800109_POCKET_SECRETARY_AI_SECRETARY_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY AI SECRETARY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
AI secretary capability begins from Pro.

rules:
- free must not provide active AI secretary capability
- pro may provide personal AI secretary capability
- enterprise may provide personal AI secretary
  and company-secretary capability
- AI secretary output must remain subordinate to human control
- AI secretary capability must not change authority rules
- AI secretary-style notification is not available on free


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/030.secretary/0800110_POCKET_SECRETARY_CONSULTATION_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONSULTATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
PocketSecretary applies the shared Consultation Common
through plan-bounded secretary behavior.

common reference:
PersonaOS consultation common policy defines:
- consultation as advisory support
- personal and business consultation scope categories
- non-authoritative consultation output

PocketSecretary-specific policy:
- Pro consultation scope is personal matters
- Enterprise consultation scope includes:
  - personal matters
  - business document support
  - business strategy tool/framework suggestion
  - business problem-solving proposal
  - business workflow next-step suggestion

rules:
- PocketSecretary consultation output does not equal approval
- PocketSecretary consultation must not bypass submission or review boundaries


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/030.secretary/0800116_POCKET_SECRETARY_NOTIFICATION_TIER_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION TIER POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
PocketSecretary applies the shared Notification Common
through app-specific plan tiers.

common reference:
PersonaOS notification common policy defines:
- notification as useful, quiet, contextual, and non-authoritative
- grouped summary preferred over spam
- quiet hours suppress non-critical noise
- secretary-style wording remains advisory

PocketSecretary-specific policy:
- free provides basic notification only
- pro and enterprise may provide advanced notification

rules:
- advanced notification may include grouped summary,
  priority-based, re-notification, state-linked,
  contextual, and secretary-style wording
- notification must remain state-honest and advisory


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/030.secretary/0800117_POCKET_SECRETARY_HOME_SCREEN_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY HOME SCREEN POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
The home screen must function as a secretary-facing dashboard,
not merely as a menu list.

common reference:
PersonaOS background common policy defines:
- background as presentation preference
- background choice does not imply state transition

rules:
- the speech bubble should prioritize today-relevant information
- navigation should remain simple and predictable
- secretary and background switching should remain explicit
- home presentation must not misrepresent approval or submission state


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/030.secretary/0800118_POCKET_SECRETARY_INITIAL_SECRETARY_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY INITIAL SECRETARY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
PocketSecretary applies the shared Secretary Interaction Common
through a fixed initial secretary set.

common reference:
PersonaOS secretary interaction common policy defines:
- secretary interaction as non-authoritative
- visible role practicality
- secretary switching as explicit preference

PocketSecretary-specific initial role guidance:
- Sato Misaki: baseline, calm, rational
- Takahashi Hina: empathy, personal support
- Kamiya Rin: sharpness, work support

rules:
- role differences may affect wording, tone, and guidance style
- role differences must not change permission or approval meaning
- deep lore visibility may be more limited than application-facing profile visibility


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/030.secretary/0800119_POCKET_SECRETARY_HOME_SUMMARY_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY HOME SUMMARY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
PocketSecretary binds the shared Summary Bubble Common
to its home speech bubble.

common reference:
PersonaOS secretary interaction common policy defines:
- summary bubble as informational/advisory
- practical, non-authoritative secretary interaction

PocketSecretary-specific rules:
- one dominant message should be preferred over multiple competing messages
- summary priority should favor immediate user value
- the summary appears in the top-left home speech bubble


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/030.secretary/0800120_POCKET_SECRETARY_NOTIFICATION_CONTROL_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION CONTROL POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
PocketSecretary applies the shared Notification Common controls
to reduce noise and keep notifications useful.

common reference:
PersonaOS notification common policy defines:
- quiet hours
- grouped summary
- daily summary
- advisory wording

PocketSecretary-specific rules:
- quiet hours should suppress non-critical noise
- grouped summary should be preferred over notification spam
- advanced notification remains pro/enterprise-bounded
- notification must remain advisory, not authoritative


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/030.secretary/0800121_POCKET_SECRETARY_COMPANY_SECRETARY_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY COMPANY SECRETARY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
PocketSecretary Enterprise may consume company secretary
from BusinessOS, but does not own company secretary truth.

rules:
- company secretary is BusinessOS-scoped work-use AI
- PocketSecretary is a usage front-end only
- company secretary and personal AI secretary remain distinct
- company secretary does not gain automatic approval authority


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/040.business/0800106_POCKET_SECRETARY_ERP_REQUEST_HANDLING_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP REQUEST HANDLING POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
ERP-facing requests should be treated as bounded, reviewable,
state-explicit workflows.

rules:
- local draft and external submission remain distinct
- transport success is not business confirmation
- failed and conflicted results remain visible
- request handling must respect upstream source-of-truth ownership


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/040.business/0800111_POCKET_SECRETARY_LIBRARY_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY LIBRARY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
Library is the personal file preservation domain of PocketSecretary.

rules:
- library stores personal files such as PDF, image,
  and personal file materials
- registration and deletion must remain explicit
- enterprise may provide bounded document summary in library
- library storage and summary remain distinct states


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/040.business/0800112_POCKET_SECRETARY_TRAVEL_EXPENSE_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY TRAVEL EXPENSE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
Travel expense handling is a bounded working-data and aggregation domain.

rules:
- travel expense starts as local working data
- monthly aggregation is a distinct step
- aggregation and ERP-facing submission remain distinct
- travel guidance result and official expense data remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/040.business/0800113_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY ENTERPRISE APPLICATION BUTTON POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
PocketSecretary applies the shared explicit-submission common
through Enterprise application-button behavior.

common reference:
BusinessOS submission common policy defines:
- explicit submission only
- no automatic first-time submission
- auth context required
- draft alignment required

covered draft domains:
- ERP application draft

rules:
- application button is the required explicit submission trigger
- draft completion alone must not submit
- application button behavior must remain visible and honest


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/040.business/0800114_POCKET_SECRETARY_AUTO_SUBMISSION_PROHIBITION_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY AUTO SUBMISSION PROHIBITION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
PocketSecretary applies the shared no-auto-submit principle
to its Enterprise submission-capable drafts.

common reference:
BusinessOS submission common policy defines:
- no automatic first-time submission
- no hidden submit paths

covered draft domains:
- ERP application draft
- quotation draft
- order draft

rules:
- first-time submission requires explicit user action
- hidden or background first-time submit is prohibited
- automatic send from draft completion is prohibited


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/040.business/0800115_POCKET_SECRETARY_BUSINESS_DRAFT_ALIGNMENT_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY BUSINESS DRAFT ALIGNMENT POLICY
# ============================================================

status: reduced-scope
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
Formal quotation/order draft alignment is no longer owned by PocketSecretary.

new_position:
PocketSecretary launches the dedicated business app
for quotation and order work.

PocketSecretary role:
- keep launch semantics honest
- keep app boundary clear

non-role:
- PocketSecretary does not own quotation/order formal draft alignment semantics


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/040.business/0800121_POCKET_SECRETARY_BUSINESS_APP_AUTH_INHERITANCE_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY BUSINESS APP AUTH INHERITANCE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
Deep Link launch from PocketSecretary to BusinessOS apps
inherits authenticated BusinessOS context.

targets:
- EstimateCreator
- NameCardManager

rules:
- normal re-login should not be required on inherited valid context
- inherited authentication does not imply automatic authorization success
- inherited authentication does not imply publication or submission success
- invalid or expired inherited context must fail closed


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/0800000_POCKET_SECRETARY_POLICY_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY POLICY INDEX
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
Index of PocketSecretary-specific policy documents.

shared common dependencies:
- PersonaOS Consultation Common policy
- PersonaOS Secretary Interaction Common policy
- PersonaOS Notification Common policy
- PersonaOS Background Common policy
- BusinessOS Submission Common policy

reading order:
1. Policy Overview
2. Core app policies
3. Shared-common application policies
4. PocketSecretary-only policy files
5. Cross-cutting technical domain policies

document guide:
- 0800001_POCKET_SECRETARY_POLICY_OVERVIEW.md
  Overview of policy application in PocketSecretary.

- 0800100_POCKET_SECRETARY_POLICY.md
  Top-level policy framing.

- 0800101_POCKET_SECRETARY_LOCAL_FIRST_POLICY.md
  Local-first policy.

- 0800102_POCKET_SECRETARY_REVIEW_REQUIRED_ACTION_POLICY.md
  Review-required action policy.

- 0800103_POCKET_SECRETARY_SYNC_POLICY.md
  Sync policy.

- 0800104_POCKET_SECRETARY_PERSONA_PRESENTATION_POLICY.md
  Persona presentation policy.

- 0800105_POCKET_SECRETARY_PRIVACY_EXPOSURE_POLICY.md
  Privacy exposure policy.

- 0800106_POCKET_SECRETARY_ERP_REQUEST_HANDLING_POLICY.md
  ERP request handling in app context.

- 0800107_POCKET_SECRETARY_NOTIFICATION_POLICY.md
  Legacy notification policy context.

- 0800108_POCKET_SECRETARY_PLAN_POLICY.md
  PocketSecretary plan policy.

- 0800109_POCKET_SECRETARY_AI_SECRETARY_POLICY.md
  AI secretary policy in app context.

- 0800110_POCKET_SECRETARY_CONSULTATION_POLICY.md
  PocketSecretary-specific application of Consultation Common.

- 0800111_POCKET_SECRETARY_LIBRARY_POLICY.md
  Library policy.

- 0800112_POCKET_SECRETARY_TRAVEL_EXPENSE_POLICY.md
  Travel expense and aggregation policy.

- 0800113_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_POLICY.md
  App-specific application-button policy.

- 0800114_POCKET_SECRETARY_AUTO_SUBMISSION_PROHIBITION_POLICY.md
  App-specific application of no-auto-submit rule.

- 0800115_POCKET_SECRETARY_BUSINESS_DRAFT_ALIGNMENT_POLICY.md
  App-specific application of draft alignment rule.

- 0800116_POCKET_SECRETARY_NOTIFICATION_TIER_POLICY.md
  PocketSecretary-specific application of Notification Common.

- 0800117_POCKET_SECRETARY_HOME_SCREEN_POLICY.md
  Home screen policy.

- 0800118_POCKET_SECRETARY_INITIAL_SECRETARY_POLICY.md
  Concrete initial secretary cast policy.

- 0800119_POCKET_SECRETARY_HOME_SUMMARY_POLICY.md
  PocketSecretary-specific use of shared summary policy.

- 0800120_POCKET_SECRETARY_NOTIFICATION_CONTROL_POLICY.md
  PocketSecretary-specific use of shared notification control policy.

cross_cutting_technical_domain:
- 140.visual-runtime
  PocketSecretary policy as a compliant host of Persona Visual Runtime.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/0800001_POCKET_SECRETARY_POLICY_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY POLICY OVERVIEW
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
This layer defines PocketSecretary-specific policy application.

shared common references:
- PersonaOS Consultation Common policy
- PersonaOS Secretary Interaction Common policy
- PersonaOS Notification Common policy
- PersonaOS Background Common policy
- BusinessOS Submission Common policy

PocketSecretary-specific policy themes:
- visual-runtime hosting policy
- free / pro / enterprise gating
- Library behavior
- home screen behavior
- initial secretary cast policy
- travel expense placement
- Enterprise-only submission surfaces
- quotation/order draft usage inside the app

policy rule:
Shared common meaning stays in shared systems.
PocketSecretary policy defines how those shared meanings are applied
inside this app.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/140.visual-runtime/0801400001_POCKET_SECRETARY_VISUAL_RUNTIME_HOSTING_POLICY.md
# ============================================================

# ============================================================
# POCKET SECRETARY VISUAL RUNTIME HOSTING POLICY
# ============================================================

status: canonical
layer: policy
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. POLICY
# ============================================================

PocketSecretary must remain
a compliant host of Persona Visual Runtime.

PocketSecretary may customize
surrounding application UX,
but may not redefine:

surface contract semantics
background priority semantics
runtime fallback semantics
runtime lifecycle semantics


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/010.core/0900100_POCKET_SECRETARY_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the user-facing interface layer of PocketSecretary.

scope:
The interface layer defines screens, visible interaction surfaces,
state visibility rules, review surfaces, and user control points.

interface_principles:
- user control first
- visible state honesty
- local-first usability
- explicit review before critical external action
- separation between presentation and authority
- graceful offline behavior


# ============================================================
# 1. PRIMARY INTERFACE DOMAINS
# ============================================================

PocketSecretary interface domains include:

- dashboard interface
- schedule interface
- todo interface
- note and archive interface
- Persona presentation interface
- settings interface
- ERP request review interface
- state and feedback interface


# ============================================================
# 2. INTERFACE ROLE
# ============================================================

The interface layer must:

- expose local secretary functions clearly
- show actual known state
- preserve user intent and control
- provide bounded review surfaces for critical actions
- distinguish local state from confirmed external state

The interface layer must not:

- fabricate authority
- hide critical pending or failed states
- make ambiguous approval appear final


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/010.core/0900106_POCKET_SECRETARY_SETTINGS_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY SETTINGS INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the settings interface for application configuration.

settings areas:
- display settings
- notification settings
- dashboard preferences
- Persona presentation preferences
- sync preferences
- privacy-related local options

rules:
- settings UI must not expose unsafe shortcuts
- convenience settings must not override constitutional boundaries


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/010.core/0900108_POCKET_SECRETARY_STATE_FEEDBACK_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY STATE FEEDBACK INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines how PocketSecretary presents state feedback to the user.

state classes:
- local_only
- pending
- confirmed
- failed
- conflicted
- offline

rules:
- state feedback must be understandable and explicit
- critical ambiguity must not be hidden
- pending must remain visibly pending
- failed must remain visibly failed until resolved


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/010.core/0900119_POCKET_SECRETARY_PLAN_BOUNDARY_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY PLAN BOUNDARY INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines feature visibility and interaction boundary by plan.

plan UI rules:
- free must not expose AI secretary interaction as active capability
- pro may expose personal AI secretary and personal consultation
- enterprise may expose company-secretary capabilities
  and business draft/application surfaces

notes:
Plan restrictions must be reflected in actual visible behavior,
not only in hidden backend checks.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/020.home/0900101_POCKET_SECRETARY_DASHBOARD_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY DASHBOARD INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
The dashboard is the primary entry interface of PocketSecretary.

primary areas:
- secretary presentation area
- current schedule summary
- todo summary
- reminder / alert area
- quick action area
- pending / sync state area

rules:
- dashboard must remain usable in local-first mode
- dashboard must surface pending and failed states honestly
- dashboard convenience must not bypass review-required actions


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/020.home/0900121_POCKET_SECRETARY_HOME_SCREEN_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY HOME SCREEN INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the home screen interface of PocketSecretary.

layout:
- top left: speech bubble
- bottom left: primary navigation buttons
- bottom right: secretary character area
- full background: tappable background area
- top right: settings button

primary buttons:
- schedule
- todo
- library
- tools

speech bubble may show:
- today's schedule
- next schedule
- todo summary
- notification summary
- secretary guidance

tap interactions:
- tap secretary -> open secretary selection surface
- tap background -> open background selection surface
- tap settings -> open settings

rules:
- speech bubble and dashboard content must stay readable
- secretary and background switching must be intuitive
- home screen must remain understandable even before AI upgrade


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/020.home/0900123_POCKET_SECRETARY_BACKGROUND_SELECTION_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY BACKGROUND SELECTION INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the PocketSecretary-specific background selection interface
based on the shared Background Selection Common interface.

common reference:
PersonaOS background common interface defines:
- background list or selection sheet
- current background highlight
- preview
- explicit selection behavior

PocketSecretary-specific application:
- background selection opens from home background tap
- selected background is previewed for the home surface

rules:
- background switching must remain explicit
- background selection remains presentation-only


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/020.home/0900124_POCKET_SECRETARY_TOOLS_LAUNCHER_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY TOOLS LAUNCHER INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the tools launcher interface.

required UI elements:
- tools sheet or tools screen
- tool list with recognizable labels
- recent tools area where applicable
- plan-bounded availability display

rules:
- tools launcher must make tool purpose understandable
- unavailable tools must not appear as active capabilities


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/030.secretary/0900105_POCKET_SECRETARY_PERSONA_PRESENTATION_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERSONA PRESENTATION INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the user-facing Persona presentation surface
within PocketSecretary.

presentation areas:
- character display
- expression or emotion display
- secretary-style guidance surface
- bounded interaction prompts

rules:
- Persona display is presentation, not authority
- presentation style must not imply legal or enterprise approval
- Persona display failure must degrade gracefully


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/030.secretary/0900110_POCKET_SECRETARY_CONSULT_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONSULT INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the consult-oriented user interface inside PocketSecretary.

required UI elements:
- consult entry surface
- consult conversation or interaction surface
- consult summary area
- follow-up guidance area

rules:
- consult presentation must remain guidance-oriented
- consult UI must not imply formal approval authority


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/030.secretary/0900111_POCKET_SECRETARY_PERSONA_RENDER_RESULT_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERSONA RENDER RESULT INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines how PocketSecretary presents Persona render results
received through the shared VisualRuntime boundary.

required UI states:
- render ready
- render loading
- render fallback
- render failed

rules:
- fallback state must be visually distinguishable where applicable
- render state must not imply authority or approval state
- UI continuity should be preserved safely during render degradation


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/030.secretary/0900113_POCKET_SECRETARY_CONSULTATION_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONSULTATION INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the PocketSecretary-specific consultation interface
on top of the shared Consultation Common.

common reference:
PersonaOS consultation common interface expectations define:
- bounded consultation entry
- advisory consultation output
- concise scope-aware interaction

PocketSecretary-specific interface:
tiers:
- pro: personal consultation
- enterprise: personal consultation plus
  company-secretary business consultation

required UI elements:
- consultation entry surface
- consultation session surface
- consultation summary area
- follow-up guidance area

enterprise business consultation may expose:
- document support mode
- strategy support mode
- problem-solving mode
- workflow next-step mode

rules:
- consultation remains advisory
- consultation output must not imply approval authority
- enterprise work proposals must remain distinguishable from formal execution


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/030.secretary/0900120_POCKET_SECRETARY_NOTIFICATION_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the PocketSecretary-specific notification interface
based on the shared Notification Common interface.

common reference:
PersonaOS notification common interface defines:
- readable reminder presentation
- grouped summary presentation
- daily summary presentation
- notification control visibility

PocketSecretary-specific interface:
basic notification UI:
- schedule reminder
- todo due reminder
- simple local reminder

advanced notification UI:
- grouped summary notification
- priority-marked notification
- re-notification visibility
- state-linked notification
- contextual wording
- secretary-style wording

rules:
- free must expose only basic notification behavior
- pro and enterprise may expose advanced notification behavior
- notification UI must remain honest about actual state


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/030.secretary/0900122_POCKET_SECRETARY_SECRETARY_SELECTION_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECRETARY SELECTION INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the PocketSecretary-specific secretary selection interface
based on the shared Secretary Selection Common interface.

common reference:
PersonaOS secretary interaction common interface defines:
- secretary list or selection sheet
- current highlight
- preview image
- short visible role description
- explicit selection

PocketSecretary-specific initial secretary set:
- Sato Misaki
- Takahashi Hina
- Kamiya Rin

rules:
- application-facing role difference should be understandable
- switching must remain explicit
- selection UI must not overexpose deep lore by default


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/030.secretary/0900125_POCKET_SECRETARY_SECRETARY_ROLE_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECRETARY ROLE INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific visible role presentation
based on the shared Secretary Role Presentation Common.

required UI elements:
- short role label
- brief support description
- secretary preview
- current secretary highlight

PocketSecretary role mapping:
- Sato Misaki: standard secretary
- Takahashi Hina: personal support secretary
- Kamiya Rin: work support secretary

rules:
- visible role description should be short and practical
- deep lore should remain more restricted than visible role information


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/030.secretary/0900126_POCKET_SECRETARY_NOTIFICATION_CONTROL_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION CONTROL INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the PocketSecretary-specific notification control interface
based on the shared Notification Common interface.

common reference:
PersonaOS notification common interface defines:
- notification control visibility
- understandable advanced behavior distinction

required UI elements:
- basic vs advanced notification distinction
- quiet hours control
- daily summary control
- grouped summary control
- re-notification control where applicable

rules:
- notification control must remain understandable
- unavailable advanced controls must respect plan boundary


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/030.secretary/0900128_POCKET_SECRETARY_COMPANY_SECRETARY_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY COMPANY SECRETARY INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the interface for company secretary usage
inside PocketSecretary Enterprise.

required UI distinctions:
- personal AI secretary must be visually distinguishable
- company secretary must be visually distinguishable
- unavailable company secretary must not appear as active
- company secretary name may reflect BusinessOS local display name

rules:
- users must be able to tell whether they are using personal or company secretary
- company secretary UI must not imply approval authority


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/040.personal/0900102_POCKET_SECRETARY_SCHEDULE_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY SCHEDULE INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the user interface for schedule viewing,
editing, reminder inspection, and bounded sync visibility.

required UI elements:
- schedule list or calendar surface
- schedule detail view
- create / edit action
- local / pending / confirmed status display
- conflict indication where applicable

rules:
- schedule state must be visually distinguishable
- external confirmation must not be implied without confirmation


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/040.personal/0900103_POCKET_SECRETARY_TODO_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY TODO INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the user interface for todo creation,
editing, completion, prioritization, and archive movement.

required UI elements:
- todo list
- todo detail or editor
- due and priority display
- completion control
- archive control
- reminder visibility where applicable

rules:
- completion and archive actions must remain explicit
- visual styling must not conceal actual todo status


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/040.personal/0900104_POCKET_SECRETARY_NOTE_ARCHIVE_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTE ARCHIVE INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the user interface for note handling,
memo review, archive access, and retained item retrieval.

required UI elements:
- note list
- note editor
- archive list or retrieval surface
- archive state indicator
- retention-aware retrieval controls

rules:
- archive must not be visually confused with deletion
- note privacy-sensitive content must not be overexposed by default


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/040.personal/0900109_POCKET_SECRETARY_CHECKLIST_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY CHECKLIST INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the user interface for checklist creation,
editing, completion, and archive access.

required UI elements:
- checklist list
- checklist detail/editor
- item completion controls
- archive or retention controls

rules:
- checklist state must remain visually understandable
- checklist completion must not be confused with deletion


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/040.personal/0900112_POCKET_SECRETARY_LIBRARY_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY LIBRARY INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the user interface for the Library domain.

required UI elements:
- library file list
- file registration action
- file detail or preview entry
- explicit delete action
- summary visibility where available

rules:
- library stores personal files such as PDF, image,
  and personal file materials
- registration and deletion remain explicit
- file existence and summary availability remain visually distinguishable


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/040.personal/0900114_POCKET_SECRETARY_TRAVEL_EXPENSE_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY TRAVEL EXPENSE INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the user interface for travel expense handling.

required UI elements:
- entry list
- entry editor
- departure and arrival fields
- amount field
- monthly grouping visibility
- review surface

rules:
- local entry and monthly aggregation remain distinguishable
- travel expense input does not imply ERP submission


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/040.personal/0900115_POCKET_SECRETARY_MONTHLY_AGGREGATION_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY MONTHLY AGGREGATION INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the user interface for monthly aggregation results.

required UI elements:
- target month selector
- aggregated total display
- item count display
- review surface
- follow-up action visibility where applicable

rules:
- aggregation result must not be shown as ERP accepted result
- review and submission remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/050.business/0900107_POCKET_SECRETARY_ERP_REQUEST_REVIEW_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP REQUEST REVIEW INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the review and confirmation surface
for ERP-facing requests prepared in PocketSecretary.

required UI elements:
- request summary
- target identification
- key payload review surface
- review status
- confirmation action
- submission status display
- failure or conflict display

rules:
- review and confirmation must be explicit
- draft, submitted, and confirmed must remain visually distinct
- transport success must not be shown as final business success


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/050.business/0900116_POCKET_SECRETARY_QUOTATION_DRAFT_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY QUOTATION DRAFT INTERFACE
# ============================================================

status: replaced-by-external-app
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

replacement:
Quotation draft interface moved to the dedicated business app.

PocketSecretary interface role:
- provide a quotation-related launch entry
- optionally indicate that work opens in the business app


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/050.business/0900117_POCKET_SECRETARY_ORDER_DRAFT_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY ORDER DRAFT INTERFACE
# ============================================================

status: replaced-by-external-app
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

replacement:
Order draft interface moved to the dedicated business app.

PocketSecretary interface role:
- provide an order-related launch entry
- optionally indicate that work opens in the business app


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/050.business/0900118_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY ENTERPRISE APPLICATION BUTTON INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the application button interface for Enterprise submission flows.

covered draft domains:
- ERP application draft
- quotation draft
- order draft

required UI elements:
- submission eligibility visibility
- explicit application button
- pending response visibility
- accepted / failed / conflicted result visibility

rules:
- application button is the explicit submission trigger
- no hidden submission is allowed
- button visibility and submission eligibility must remain honest


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/050.business/0900127_POCKET_SECRETARY_BUSINESS_APP_LAUNCH_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY BUSINESS APP LAUNCH INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the interface for launching the dedicated business app
from PocketSecretary.

required UI elements:
- business app entry
- entry mode label where useful
- launch action
- visible distinction between launch and submission

rules:
- launch entry must be understandable
- launch and submission must not look equivalent


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/050.business/0900127_POCKET_SECRETARY_DEEP_LINK_LAUNCH_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY DEEP LINK LAUNCH INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the interface for launching external business apps
through Deep Link from PocketSecretary.

supported targets:
- EstimateCreator
- NameCardManager

required UI elements:
- target app entry
- entry mode label where useful
- launch action
- install-guidance dialog when app is unavailable
- visible distinction between launch and submission

install-guidance dialog:
- title
- explanatory text
- install guidance action
- close action

rules:
- launch entry must be understandable
- launch and submission must not look equivalent
- unavailable app state must surface install guidance


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/0900000_POCKET_SECRETARY_INTERFACE_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY INTERFACE INDEX
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
Index of PocketSecretary-specific interface documents.

shared common dependencies:
- PersonaOS Secretary Selection Common interface
- PersonaOS Summary Bubble Common interface
- PersonaOS Notification Common interface
- PersonaOS Background Selection Common interface

reading order:
1. Interface Overview
2. Home screen and primary surfaces
3. Shared-common application interfaces
4. Enterprise-only submission interfaces
5. Cross-cutting technical domain interfaces

document guide:
- 0900001_POCKET_SECRETARY_INTERFACE_OVERVIEW.md
  Overview of PocketSecretary interface domains.

- 0900100_POCKET_SECRETARY_INTERFACE.md
  Top-level interface framing.

- 0900101_POCKET_SECRETARY_DASHBOARD_INTERFACE.md
  Dashboard/home-facing interface context.

- 0900102_POCKET_SECRETARY_SCHEDULE_INTERFACE.md
  Schedule calendar interface.

- 0900103_POCKET_SECRETARY_TODO_INTERFACE.md
  Todo interface.

- 0900104_POCKET_SECRETARY_NOTE_ARCHIVE_INTERFACE.md
  Note/archive legacy interface context.

- 0900105_POCKET_SECRETARY_PERSONA_PRESENTATION_INTERFACE.md
  Persona presentation interface.

- 0900106_POCKET_SECRETARY_SETTINGS_INTERFACE.md
  Settings interface.

- 0900107_POCKET_SECRETARY_ERP_REQUEST_REVIEW_INTERFACE.md
  ERP request review interface.

- 0900108_POCKET_SECRETARY_STATE_FEEDBACK_INTERFACE.md
  State feedback interface.

- 0900111_POCKET_SECRETARY_PERSONA_RENDER_RESULT_INTERFACE.md
  Render-result interface.

- 0900112_POCKET_SECRETARY_LIBRARY_INTERFACE.md
  Library interface.

- 0900113_POCKET_SECRETARY_CONSULTATION_INTERFACE.md
  PocketSecretary-specific consultation interface.

- 0900114_POCKET_SECRETARY_TRAVEL_EXPENSE_INTERFACE.md
  Travel expense interface.

- 0900115_POCKET_SECRETARY_MONTHLY_AGGREGATION_INTERFACE.md
  Monthly aggregation interface.

- 0900116_POCKET_SECRETARY_QUOTATION_DRAFT_INTERFACE.md
  Replaced by dedicated business app.

- 0900117_POCKET_SECRETARY_ORDER_DRAFT_INTERFACE.md
  Replaced by dedicated business app.

- 0900118_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_INTERFACE.md
  Enterprise application-button interface.

- 0900119_POCKET_SECRETARY_PLAN_BOUNDARY_INTERFACE.md
  Plan-boundary interface.

- 0900120_POCKET_SECRETARY_NOTIFICATION_INTERFACE.md
  PocketSecretary-specific notification interface.

- 0900121_POCKET_SECRETARY_HOME_SCREEN_INTERFACE.md
  PocketSecretary home screen composition.

- 0900122_POCKET_SECRETARY_SECRETARY_SELECTION_INTERFACE.md
  PocketSecretary secretary selection interface.

- 0900123_POCKET_SECRETARY_BACKGROUND_SELECTION_INTERFACE.md
  PocketSecretary background selection interface.

- 0900124_POCKET_SECRETARY_TOOLS_LAUNCHER_INTERFACE.md
  Tools launcher interface.

- 0900125_POCKET_SECRETARY_SECRETARY_ROLE_INTERFACE.md
  Visible secretary-role interface.

- 0900126_POCKET_SECRETARY_NOTIFICATION_CONTROL_INTERFACE.md
  PocketSecretary-specific notification control interface.

- 0900127_POCKET_SECRETARY_BUSINESS_APP_LAUNCH_INTERFACE.md
  Dedicated business app launch interface.

cross_cutting_technical_domain:
- 140.visual-runtime
  Host request/event contract used by PocketSecretary to host Persona Visual Runtime.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/0900001_POCKET_SECRETARY_INTERFACE_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
This layer defines PocketSecretary-specific user-facing surfaces.

shared common references:
- PersonaOS Secretary Selection Common interface
- PersonaOS Summary Bubble Common interface
- PersonaOS Notification Common interface
- PersonaOS Background Selection Common interface
- BusinessOS Business AI Worker

PocketSecretary-specific interface domains:
- visual-runtime host interface
- dashboard / home screen layout
- left speech bubble placement
- left navigation stack
- right secretary placement
- top-right settings
- Library
- schedule / todo / memo
- consultation surfaces by plan
- travel expense / monthly aggregation
- ERP application draft review surface
- Deep Link launch UI for EstimateCreator and NameCardManager
- install guidance UI for unavailable business apps
- company secretary usage UI
- Enterprise application button UI
- settings and app-local state feedback

interface rule:
Shared interface concepts may be reused,
but PocketSecretary keeps its own screen composition and interaction layout.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/140.visual-runtime/0901400001_POCKET_SECRETARY_VISUAL_RUNTIME_HOST_INTERFACE.md
# ============================================================

# ============================================================
# POCKET SECRETARY VISUAL RUNTIME HOST INTERFACE
# ============================================================

status: canonical
layer: interface
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. HOST REQUESTS
# ============================================================

PocketSecretaryRuntimeCreateRequest
- surface_code
- manifest_projection
- initial_state_hint
- initial_expression_hint
- initial_animation_mode
- background_override

PocketSecretaryRuntimeAttachRequest
- session_id
- container_handle


# ============================================================
# 2. HOST EVENTS
# ============================================================

SESSION_CREATED
MANIFEST_ACCEPTED
BACKGROUND_RESOLVED
BACKGROUND_FALLBACK_APPLIED
RENDER_COMPLETED
RECOVERABLE_ERROR
TERMINAL_ERROR
SESSION_DISPOSED


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/010.core/1000100_POCKET_SECRETARY_SECURITY.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the security layer of PocketSecretary.

scope:
The security layer defines protection boundaries for
local data, device capabilities, Persona-related presentation handling,
ERP-related request handling, sync safety, and critical action gating.

security_principles:
- privacy by default
- explicit permission
- minimum necessary exposure
- fail-closed critical paths
- explicit review for externally consequential actions
- separation of presentation and authority


# ============================================================
# 1. SECURITY DOMAINS
# ============================================================

PocketSecretary security domains include:

- local data protection
- permission control
- critical action gate control
- external request safety
- sync safety
- sensitive state handling
- integrity and validation protection


# ============================================================
# 2. SECURITY ROLE
# ============================================================

PocketSecretary security must protect:

- local secretary data
- private user content
- device capability usage
- pending external request content
- bounded Persona-linked local state
- execution control points

PocketSecretary security must not:

- rely on Persona presentation as authority
- equate local success with external success
- allow ambiguous critical execution


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/010.core/1000101_POCKET_SECRETARY_LOCAL_DATA_SECURITY.md
# ============================================================

# ============================================================
# POCKET SECRETARY LOCAL DATA SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines protection rules for local application data.

protected data includes:
- schedule data
- todo data
- notes
- archive references
- local configuration
- notification settings
- request drafts
- local Persona-linked presentation state where applicable

rules:
- local data exposure must be minimized
- sensitive content must not be broadly surfaced without purpose
- deletion, archive, and retention states must remain distinguishable
- local data handling must remain consistent with privacy-by-default


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/010.core/1000102_POCKET_SECRETARY_PERMISSION_SECURITY.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERMISSION SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines security rules for permission and execution eligibility.

permission areas:
- device permissions
- local feature permissions
- notification capability permission
- bounded external execution eligibility

rules:
- permissions must be explicit
- denied or unknown permission must not be treated as granted
- permission state must not be inferred from UI visibility
- Persona styling must not alter permission decisions


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/010.core/1000103_POCKET_SECRETARY_CRITICAL_ACTION_GATE_SECURITY.md
# ============================================================

# ============================================================
# POCKET SECRETARY CRITICAL ACTION GATE SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines gate security rules for critical actions.

critical actions include:
- ERP-facing submission
- external transmission of sensitive content
- identity-bearing request issuance
- actions with legal, financial, or organizational consequence

rules:
- critical actions require explicit user intent
- ambiguous state must block critical execution
- review and confirmation points must remain auditable
- local draft state and external execution state must remain distinct


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/010.core/1000104_POCKET_SECRETARY_EXTERNAL_REQUEST_SECURITY.md
# ============================================================

# ============================================================
# POCKET SECRETARY EXTERNAL REQUEST SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines security requirements for outbound requests
and inbound externally meaningful responses.

rules:
- outbound request purpose and target must be explicit
- response interpretation must not over-trust transport success
- unknown or partial response state must not be treated as confirmed success
- failed or conflicted request outcomes must remain visible


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/010.core/1000105_POCKET_SECRETARY_SYNC_SECURITY.md
# ============================================================

# ============================================================
# POCKET SECRETARY SYNC SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines security rules for bounded synchronization behavior.

rules:
- sync source and destination roles must be explicit
- confirmed sync requires actual confirmation
- conflict must remain detectable
- reconnect must not silently overwrite user intent
- timeout or absence of failure is not confirmation


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/010.core/1000106_POCKET_SECRETARY_SENSITIVE_STATE_HANDLING_SECURITY.md
# ============================================================

# ============================================================
# POCKET SECRETARY SENSITIVE STATE HANDLING SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines handling rules for sensitive state inside PocketSecretary.

sensitive state areas:
- private note content
- schedule details
- ERP draft content
- personal preferences
- status indicators that imply external interaction context

rules:
- sensitive state visibility must be minimized by default
- user-facing disclosure must be bounded by purpose
- sensitive state must not be exposed through convenience-first shortcuts


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/010.core/1000107_POCKET_SECRETARY_INTEGRITY_VALIDATION_SECURITY.md
# ============================================================

# ============================================================
# POCKET SECRETARY INTEGRITY VALIDATION SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines integrity and validation protection rules.

rules:
- critical paths require validation before execution
- unknown authority must not be treated as valid authority
- malformed or incomplete critical payloads must not proceed as valid
- fictional success states are prohibited
- fail-closed behavior must apply when correctness cannot be verified


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/010.core/1000108_POCKET_SECRETARY_GUARD_SECURITY.md
# ============================================================

# ============================================================
# POCKET SECRETARY GUARD SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines security rules for guard enforcement in PocketSecretary.

guard security areas:
- permission guard
- critical action guard
- request validation guard
- sync precondition guard

rules:
- guard logic must fail closed on ambiguity
- denied or unknown eligibility must not pass as valid
- guard success does not equal external confirmation


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/010.core/1000109_POCKET_SECRETARY_EVENT_HANDLING_SECURITY.md
# ============================================================

# ============================================================
# POCKET SECRETARY EVENT HANDLING SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines security constraints for local event handling.

rules:
- local event production must remain bounded
- event processing must not bypass critical action review
- local event success must not be interpreted as external business success
- event-triggered paths still require guard enforcement where applicable


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/020.secretary/1000110_POCKET_SECRETARY_PERSONA_RENDER_BOUNDARY_SECURITY.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERSONA RENDER BOUNDARY SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines security constraints for consuming shared PersonaOS VisualRuntime results.

rules:
- render output must be treated as presentation output only
- presentation output must not alter permission or authority state
- failed or fallback render must not be masked as normal success if distinction matters


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/030.business/1000111_POCKET_SECRETARY_ERP_API_TOKEN_SECURITY.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP API TOKEN SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific security application
of the shared auth-context common security.

common reference:
BusinessOS submission common security defines:
- secure auth material handling
- invalid/expired auth blocks submission
- auth possession is not acceptance

rules:
- ERP API token must be stored and handled securely
- token validity must be checked before submission
- token use must remain bounded to explicit submission paths


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/030.business/1000112_POCKET_SECRETARY_ENTERPRISE_DRAFT_SUBMISSION_SECURITY.md
# ============================================================

# ============================================================
# POCKET SECRETARY ENTERPRISE DRAFT SUBMISSION SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific security constraints
for enterprise draft submission.

common reference:
BusinessOS submission common security defines:
- direct database mutation prohibited
- explicit submit path guarded
- accepted/failed/conflicted distinguishable

covered draft domains:
- ERP application draft
- quotation draft
- order draft

rules:
- submission requires explicit application button action
- ERP external API boundary must be preserved
- draft completion alone must not trigger submission


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/030.business/1000113_POCKET_SECRETARY_LIBRARY_SUMMARY_SECURITY.md
# ============================================================

# ============================================================
# POCKET SECRETARY LIBRARY SUMMARY SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines security constraints for document summary inside Library.

rules:
- summary availability must remain distinct from file existence
- summary generation must not broaden file exposure by default
- library summary is enterprise-bounded where applicable
- summary output must remain bounded to the user-visible purpose


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/1000000_POCKET_SECRETARY_SECURITY_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECURITY INDEX
# ============================================================

status: active
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/1000001_POCKET_SECRETARY_SECURITY_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECURITY OVERVIEW
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
This layer defines PocketSecretary-specific security application.

shared common references:
- BusinessOS Submission Common security
- PersonaOS secretary-facing non-authoritative interaction principles

PocketSecretary-specific security themes:
- local data security
- Library summary security
- Enterprise draft submission security in app context
- ERP API token usage in app context
- Persona render boundary security
- notification and consultation not implying authority

security rule:
Shared boundary security meaning may come from common systems,
while PocketSecretary defines app-local enforcement and presentation safety.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/110.infrastructure/010.core/1100100_POCKET_SECRETARY_INFRASTRUCTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY INFRASTRUCTURE
# ============================================================

status: canonical
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the infrastructure layer of PocketSecretary.

scope:
The infrastructure layer defines the technical support foundations
required by PocketSecretary local-first operation, rendering support,
notification support, bounded connectivity, and continuity handling.

infrastructure_principles:
- local-first support
- bounded external dependency
- replaceable support components
- safe degradation under failure
- continuity-first storage support


# ============================================================
# 1. INFRASTRUCTURE DOMAINS
# ============================================================

PocketSecretary infrastructure domains include:

- local persistence infrastructure
- file storage infrastructure
- notification delivery infrastructure
- Persona rendering support infrastructure
- sync support infrastructure
- API client infrastructure
- backup and restore support infrastructure


# ============================================================
# 2. INFRASTRUCTURE ROLE
# ============================================================

Infrastructure must support:

- local application continuity
- local data persistence
- notification issuance support
- bounded external communication
- recoverable degraded behavior
- presentation support for Persona surfaces

Infrastructure must not:

- redefine application authority
- bypass review gates
- collapse local and external truth into one ambiguous layer


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/110.infrastructure/010.core/1100101_POCKET_SECRETARY_LOCAL_PERSISTENCE_INFRASTRUCTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY LOCAL PERSISTENCE INFRASTRUCTURE
# ============================================================

status: canonical
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines infrastructure support for local application persistence.

support areas:
- local database support
- key-value preference storage
- local cache support
- retained draft storage
- state restoration support

rules:
- local persistence must support offline continuity
- persisted local state and confirmed external state must remain distinguishable
- local writes must not be silently discarded


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/110.infrastructure/010.core/1100102_POCKET_SECRETARY_FILE_STORAGE_INFRASTRUCTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY FILE STORAGE INFRASTRUCTURE
# ============================================================

status: canonical
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines support for local file and archive-related storage.

support areas:
- note attachment reference support
- archive reference support
- local export staging support
- retained local file reference support

rules:
- file reference and publication state must remain distinct
- local file existence must not imply external distribution
- retention-related metadata must be preservable


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/110.infrastructure/010.core/1100105_POCKET_SECRETARY_SYNC_SUPPORT_INFRASTRUCTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY SYNC SUPPORT INFRASTRUCTURE
# ============================================================

status: canonical
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines technical support for bounded synchronization behavior.

support areas:
- queued sync attempt support
- pending state persistence support
- retry support
- conflict detection support
- connectivity-aware sync support

rules:
- sync infrastructure must preserve state visibility
- retry must remain bounded
- timeout must not be treated as confirmation


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/110.infrastructure/020.secretary/1100103_POCKET_SECRETARY_NOTIFICATION_INFRASTRUCTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION INFRASTRUCTURE
# ============================================================

status: canonical
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines technical support for local notifications and reminders.

support areas:
- local reminder scheduling
- notification channel/category support
- deferred reminder support
- runtime-triggered local prompt support

rules:
- notification infrastructure supports delivery only
- delivery success does not equal external business success
- notification categories must remain bounded and interpretable


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/110.infrastructure/020.secretary/1100104_POCKET_SECRETARY_PERSONA_RENDERING_SUPPORT_INFRASTRUCTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERSONA RENDERING SUPPORT INFRASTRUCTURE
# ============================================================

status: canonical
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines technical support for Persona-related presentation rendering.

support areas:
- local view state application support
- rendering asset reference support
- fallback rendering support
- bounded remote presentation data consumption support

rules:
- rendering support is presentation support only
- rendering infrastructure must not carry authority logic
- rendering failure must degrade safely


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/110.infrastructure/020.secretary/1100108_POCKET_SECRETARY_RUNTIME_ASSET_SUPPORT_INFRASTRUCTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY RUNTIME ASSET SUPPORT INFRASTRUCTURE
# ============================================================

status: canonical
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines infrastructure support for runtime assets used by PocketSecretary.

support areas:
- local asset reference support
- dashboard asset support
- Persona-related presentation asset support
- bounded runtime manifest/reference support where applicable

rules:
- asset support is presentation and continuity support
- asset availability must not imply authority
- asset failure must degrade safely


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/110.infrastructure/030.business/1100106_POCKET_SECRETARY_API_CLIENT_INFRASTRUCTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY API CLIENT INFRASTRUCTURE
# ============================================================

status: canonical
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines client-side infrastructure for bounded external API access.

support areas:
- Persona-related API access support
- ERP-related API access support
- request serialization support
- response parsing support
- connectivity error handling support

rules:
- API client infrastructure must be replaceable
- transport success must remain distinct from business success
- optional API failure must not destroy core local usability


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/110.infrastructure/030.business/1100107_POCKET_SECRETARY_BACKUP_RESTORE_INFRASTRUCTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY BACKUP RESTORE INFRASTRUCTURE
# ============================================================

status: canonical
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines technical support for backup and restore continuity.

support areas:
- local backup generation support
- restore target selection support
- restore safety checks
- backup metadata storage support

rules:
- backup state must remain distinct from live state
- restore must be explicit
- restore support must not silently overwrite critical local intent


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/110.infrastructure/1100000_POCKET_SECRETARY_INFRASTRUCTURE_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY INFRASTRUCTURE INDEX
# ============================================================

status: active
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/110.infrastructure/1100001_POCKET_SECRETARY_INFRASTRUCTURE_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY INFRASTRUCTURE OVERVIEW
# ============================================================

status: active
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/010.core/1200100_POCKET_SECRETARY_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the implementation layer of PocketSecretary.

scope:
The implementation layer defines how the PocketSecretary design
is concretely realized in application code, local storage code,
notification code, Persona presentation code, and bounded integration code.

implementation_principles:
- architecture-first implementation
- local-first implementation
- bounded module responsibility
- explicit state handling
- replaceable integration clients
- safe degradation in code paths


# ============================================================
# 1. IMPLEMENTATION DOMAINS
# ============================================================

PocketSecretary implementation domains include:

- application structure implementation
- local persistence implementation
- screen and UI implementation
- notification implementation
- Persona presentation implementation
- sync implementation
- ERP request implementation
- state handling implementation


# ============================================================
# 2. IMPLEMENTATION ROLE
# ============================================================

Implementation must realize:

- constitutional constraints
- architectural boundaries
- model distinctions
- runtime state handling
- flow correctness
- integration safety
- security constraints

Implementation must not:

- bypass explicit gates
- collapse pending and confirmed into one state path
- implement Persona presentation as authority logic


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/010.core/1200101_POCKET_SECRETARY_APPLICATION_STRUCTURE_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY APPLICATION STRUCTURE IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the implementation structure of the application.

implementation structure should separate:

- UI package / screen layer
- application orchestration layer
- runtime/state handling layer
- local persistence layer
- integration client layer
- Persona presentation support layer
- notification support layer
- guard/validation support layer

rules:
- package boundaries should reflect architectural boundaries
- direct cross-cutting shortcuts should be avoided
- implementation must remain understandable from the layer model


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/010.core/1200102_POCKET_SECRETARY_LOCAL_PERSISTENCE_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY LOCAL PERSISTENCE IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for local persistence.

implementation directions:
- use structured local storage for model-backed data
- separate persistent entities from transient runtime state
- preserve pending and confirmed state distinctions
- support safe local draft persistence

examples:
- schedule entity persistence
- todo entity persistence
- note entity persistence
- settings persistence
- sync metadata persistence


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/010.core/1200103_POCKET_SECRETARY_UI_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY UI IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for screen and UI realization.

implementation directions:
- screens should reflect bounded interface domains
- state rendering must distinguish local, pending, confirmed, failed, conflicted, and offline
- review-required actions should have dedicated surfaces
- UI code should not own integration authority logic

examples:
- dashboard screen
- schedule screen
- todo screen
- note/archive screen
- settings screen
- ERP request review screen


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/010.core/1200108_POCKET_SECRETARY_STATE_HANDLING_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY STATE HANDLING IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for state handling.

state classes to implement explicitly:
- local_only
- pending
- confirmed
- failed
- conflicted
- offline

implementation rules:
- state must not be inferred ambiguously
- failed must remain failed until resolved
- pending must remain pending until confirmation or failure
- local optimistic display must not overwrite actual confirmed state semantics


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/020.home/1200118_POCKET_SECRETARY_SCHEDULE_CALENDAR_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY SCHEDULE CALENDAR IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for schedule calendar realization.

implementation directions:
- implement free-core schedule calendar functionality
- support month view and day view
- support local schedule create/edit behavior
- keep local state and external confirmation state distinguishable

rules:
- schedule calendar must remain available without AI secretary capability
- view switching must not change underlying schedule meaning


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/020.home/1200120_POCKET_SECRETARY_HOME_SCREEN_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY HOME SCREEN IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for the home screen.

implementation directions:
- implement speech bubble area at top left
- implement primary button stack at bottom left
- implement secretary render area at bottom right
- implement tappable background area
- implement settings button at top right
- bind secretary and background selection to explicit selection surfaces

common reference:
PersonaOS background common defines the shared meaning of:
- background selection
- background preference
- available/unlocked background
- explicit background switching

rules:
- home implementation must preserve readability and tap clarity
- render result binding must remain separate from authority logic


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/020.home/1200122_POCKET_SECRETARY_TOOLS_LAUNCHER_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY TOOLS LAUNCHER IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for tools launcher behavior.

implementation directions:
- implement a clear tools sheet or tools screen
- label tools by user purpose, not internal code
- support recent tool ordering where useful
- respect plan boundary in tool visibility and launchability


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/030.secretary/1200104_POCKET_SECRETARY_NOTIFICATION_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for local notification behavior.

implementation directions:
- notification dispatch must be driven by actual runtime state
- local reminder scheduling should remain bounded
- notification handling should not imply external success
- review-required notifications should route users to explicit review surfaces

examples:
- schedule reminder notification
- todo due notification
- pending sync notification
- ERP review-needed notification


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/030.secretary/1200105_POCKET_SECRETARY_PERSONA_PRESENTATION_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERSONA PRESENTATION IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for Persona-related presentation.

implementation directions:
- keep Persona rendering separate from execution authority
- support local presentation state application
- support bounded remote presentation data usage where applicable
- use safe fallback behavior for rendering failure

examples:
- character view state binding
- emotion/view switching
- dashboard Persona refresh
- fallback portrait/render behavior


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/030.secretary/1200109_POCKET_SECRETARY_PERSONA_RENDER_ADAPTER_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERSONA RENDER ADAPTER IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance for PocketSecretary-side adapter handling
around the shared PersonaOS VisualRuntime.

implementation role:
- call bounded shared render capability
- receive render result state
- bind output to UI safely
- preserve loading / fallback / failure visibility

non-role:
- implement shared VisualRuntime engine internals
- re-own shared manifest/parser/composer/cache logic inside PocketSecretary


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/030.secretary/1200111_POCKET_SECRETARY_CONSULTATION_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONSULTATION IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific consultation implementation
based on the PersonaOS Consultation Common implementation direction.

common reference:
PersonaOS consultation common defines shared meaning for:
- consultation scope
- consultation tier
- advisory-only output boundary

PocketSecretary-specific implementation directions:
- implement tier-aware consultation surfaces
- keep Pro consultation limited to personal matters
- allow Enterprise consultation to include:
  - business document support
  - business strategy tool/framework suggestion
  - business problem-solving proposal
  - business workflow next-step suggestion
- preserve advisory-only behavior in application implementation

rules:
- consultation output must not act as approval state
- consultation tier boundary must be enforced in actual PocketSecretary behavior


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/030.secretary/1200119_POCKET_SECRETARY_NOTIFICATION_IMPLEMENTATION_EXTENDED.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION IMPLEMENTATION EXTENDED
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific advanced notification implementation
based on the shared Notification Common.

common reference:
PersonaOS notification common defines shared meaning for:
- notification tier
- grouped summary
- quiet hours
- daily summary
- contextual wording

PocketSecretary-specific implementation directions:
- keep free on basic notification behavior only
- implement grouped summary notification for advanced tiers
- implement priority-based notification for advanced tiers
- implement bounded re-notification control
- implement contextual wording without changing authority semantics
- allow secretary-style notification wording only on pro and enterprise

rules:
- advanced notification must stay plan-bounded
- notification implementation must remain state-honest
- notification wording must not imply approval or submission success


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/030.secretary/1200121_POCKET_SECRETARY_INITIAL_SECRETARY_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY INITIAL SECRETARY IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific initial secretary implementation
based on the shared Secretary Interaction Common.

common reference:
PersonaOS secretary interaction common defines shared meaning for:
- secretary profile
- secretary switch
- visible role presentation
- summary bubble behavior

PocketSecretary-specific implementation directions:
- keep the concrete initial secretary set:
  - Sato Misaki
  - Takahashi Hina
  - Kamiya Rin
- support role-dependent wording and guidance style
- support explicit secretary switching from the home screen
- keep authority semantics unchanged across secretaries

rules:
- secretary-specific wording must not imply approval differences
- deep lore visibility should be more restricted than basic profile visibility


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/030.secretary/1200123_POCKET_SECRETARY_NOTIFICATION_CONTROL_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION CONTROL IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific notification control implementation
based on the shared Notification Common.

common reference:
PersonaOS notification common defines:
- quiet hours
- grouped summary
- daily summary
- advisory notification control intent

PocketSecretary-specific implementation directions:
- implement quiet hours
- implement grouped summary notification
- implement daily summary behavior
- implement bounded re-notification timing
- keep advanced controls plan-bounded

rules:
- control implementation must reduce noise rather than increase it
- notification behavior must remain state-honest


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/030.secretary/1200125_POCKET_SECRETARY_COMPANY_SECRETARY_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY COMPANY SECRETARY IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for company secretary consumption
from BusinessOS.

implementation directions:
- resolve BusinessOS company secretary reference at Enterprise entry points
- render BusinessOS local display name when available
- keep company secretary and personal secretary state separate
- block unavailable company secretary with fail-closed handling

rules:
- PocketSecretary must not implement employment logic here
- PocketSecretary must not own knowledge-growth persistence here


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/040.personal/1200110_POCKET_SECRETARY_LIBRARY_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY LIBRARY IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for the Library domain.

implementation directions:
- implement local file registration flow
- implement explicit delete flow
- preserve file metadata separately from summary state
- keep file presence and summary availability distinguishable

examples:
- library file list binding
- file picker / registration handling
- explicit delete action handling
- summary status rendering support


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/040.personal/1200112_POCKET_SECRETARY_TRAVEL_EXPENSE_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY TRAVEL EXPENSE IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for travel expense handling.

implementation directions:
- implement local travel expense entry screens and persistence
- implement monthly grouping support
- keep local working data separate from ERP-facing submission state

examples:
- travel expense editor
- monthly aggregation list
- review preparation support


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/040.personal/1200117_POCKET_SECRETARY_LIBRARY_SUMMARY_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY LIBRARY SUMMARY IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for Library document summary.

implementation directions:
- keep summary generation separate from file existence
- make summary enterprise-bounded where applicable
- preserve explicit summary status visibility
- keep summary output bounded to user-visible purpose

rules:
- summary generation must not broaden file exposure by default
- summary presence must not imply file publication


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/050.business/1200106_POCKET_SECRETARY_SYNC_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY SYNC IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for bounded synchronization logic.

implementation directions:
- maintain explicit sync status representation
- preserve pending visibility
- treat timeout and transport success distinctly from confirmed sync
- implement bounded retry only
- preserve local edits during degraded conditions where safe

examples:
- pending sync queue handling
- sync result state updates
- conflict marking and review support


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/050.business/1200107_POCKET_SECRETARY_ERP_REQUEST_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP REQUEST IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for ERP-facing request behavior.

implementation directions:
- request drafts should be locally preservable
- request validation should occur before submission attempt
- review and confirmation should remain explicit in implementation
- submission status and external confirmation must remain distinct

examples:
- ERP request draft entity handling
- review screen binding
- submit action guard handling
- result state update handling


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/050.business/1200113_POCKET_SECRETARY_QUOTATION_DRAFT_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY QUOTATION DRAFT IMPLEMENTATION
# ============================================================

status: replaced-by-external-app
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

replacement:
Quotation draft implementation moved to the dedicated business app.

PocketSecretary implementation role:
- provide launch entry
- prepare bounded launch context if needed


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/050.business/1200114_POCKET_SECRETARY_ORDER_DRAFT_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY ORDER DRAFT IMPLEMENTATION
# ============================================================

status: replaced-by-external-app
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

replacement:
Order draft implementation moved to the dedicated business app.

PocketSecretary implementation role:
- provide launch entry
- prepare bounded launch context if needed


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/050.business/1200115_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY ENTERPRISE APPLICATION BUTTON IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific application-button implementation
based on the shared Business Submission Common.

common reference:
BusinessOS submission common defines:
- explicit submission only
- auth context requirement
- auto-submission prohibition

covered draft domains:
- ERP application draft
- quotation draft
- order draft

PocketSecretary-specific implementation directions:
- implement explicit application button only on eligible Enterprise review surfaces
- bind button action to guarded submission path
- preserve pending / accepted / failed / conflicted state visibility

rules:
- button press is the submission trigger
- absence of button press means no submission


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/050.business/1200116_POCKET_SECRETARY_ERP_API_TOKEN_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP API TOKEN IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific auth-context implementation
based on the shared Business Submission Common.

common reference:
BusinessOS submission common defines shared auth-context handling.

PocketSecretary-specific implementation directions:
- store ERP API token securely
- validate token presence and expiry before submission
- bind token to required company/user context where applicable
- block submission when token state is invalid

rules:
- token handling must remain bounded to explicit submission paths
- token validity must not be confused with business acceptance


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/050.business/1200124_POCKET_SECRETARY_BUSINESS_APP_LAUNCH_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY BUSINESS APP LAUNCH IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for launching the dedicated business app.

implementation directions:
- provide clear app-launch entry points
- prepare bounded launch context only
- distinguish launch result from business result
- keep PocketSecretary separate from quotation/order authoring ownership


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/050.business/1200124_POCKET_SECRETARY_DEEP_LINK_LAUNCH_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY DEEP LINK LAUNCH IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for Deep Link launch
of EstimateCreator and NameCardManager.

implementation directions:
- provide clear launch entries for EstimateCreator and NameCardManager
- prepare bounded launch parameters only
- hand off authenticated BusinessOS context
- distinguish launch result from business result
- show install guidance when the target app is unavailable
- keep PocketSecretary separate from external app authoring ownership

rules:
- launch handling must remain explicit
- unavailable app detection must route to install guidance UI
- valid inherited context should bypass normal re-login only
- target app must still perform authorization checks


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/1200000_POCKET_SECRETARY_IMPLEMENTATION_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY IMPLEMENTATION INDEX
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
Index of PocketSecretary-specific implementation documents.

shared common dependencies:
- PersonaOS Consultation Common
- PersonaOS Secretary Interaction Common
- PersonaOS Notification Common
- PersonaOS Background Common
- BusinessOS Submission Common

reading order:
1. Implementation Overview
2. Core app implementation
3. Shared-common application bindings
4. Enterprise review/submission implementation
5. Cross-cutting technical domain implementation

document guide:
- 1200001_POCKET_SECRETARY_IMPLEMENTATION_OVERVIEW.md
  Overview of implementation guidance in PocketSecretary.

- 1200100_POCKET_SECRETARY_IMPLEMENTATION.md
  Top-level implementation framing.

- 1200101_POCKET_SECRETARY_APPLICATION_STRUCTURE_IMPLEMENTATION.md
  Core app structure implementation.

- 1200102_POCKET_SECRETARY_LOCAL_PERSISTENCE_IMPLEMENTATION.md
  Local persistence implementation.

- 1200103_POCKET_SECRETARY_UI_IMPLEMENTATION.md
  General UI implementation.

- 1200104_POCKET_SECRETARY_NOTIFICATION_IMPLEMENTATION.md
  Base notification implementation.

- 1200105_POCKET_SECRETARY_PERSONA_PRESENTATION_IMPLEMENTATION.md
  Persona presentation implementation.

- 1200106_POCKET_SECRETARY_SYNC_IMPLEMENTATION.md
  Sync implementation.

- 1200107_POCKET_SECRETARY_ERP_REQUEST_IMPLEMENTATION.md
  ERP request implementation in app context.

- 1200108_POCKET_SECRETARY_STATE_HANDLING_IMPLEMENTATION.md
  App state handling.

- 1200109_POCKET_SECRETARY_PERSONA_RENDER_ADAPTER_IMPLEMENTATION.md
  Render adapter implementation.

- 1200110_POCKET_SECRETARY_LIBRARY_IMPLEMENTATION.md
  Library implementation.

- 1200111_POCKET_SECRETARY_CONSULTATION_IMPLEMENTATION.md
  PocketSecretary-specific consultation implementation.

- 1200112_POCKET_SECRETARY_TRAVEL_EXPENSE_IMPLEMENTATION.md
  Travel expense implementation.

- 1200113_POCKET_SECRETARY_QUOTATION_DRAFT_IMPLEMENTATION.md
  Replaced by dedicated business app.

- 1200114_POCKET_SECRETARY_ORDER_DRAFT_IMPLEMENTATION.md
  Replaced by dedicated business app.

- 1200115_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_IMPLEMENTATION.md
  Enterprise application-button implementation.

- 1200116_POCKET_SECRETARY_ERP_API_TOKEN_IMPLEMENTATION.md
  ERP auth-token usage implementation.

- 1200117_POCKET_SECRETARY_LIBRARY_SUMMARY_IMPLEMENTATION.md
  Library summary implementation.

- 1200118_POCKET_SECRETARY_SCHEDULE_CALENDAR_IMPLEMENTATION.md
  Schedule calendar implementation.

- 1200119_POCKET_SECRETARY_NOTIFICATION_IMPLEMENTATION_EXTENDED.md
  PocketSecretary-specific advanced notification implementation.

- 1200120_POCKET_SECRETARY_HOME_SCREEN_IMPLEMENTATION.md
  Home screen implementation.

- 1200121_POCKET_SECRETARY_INITIAL_SECRETARY_IMPLEMENTATION.md
  Concrete initial secretary cast implementation.

- 1200122_POCKET_SECRETARY_TOOLS_LAUNCHER_IMPLEMENTATION.md
  Tools launcher implementation.

- 1200123_POCKET_SECRETARY_NOTIFICATION_CONTROL_IMPLEMENTATION.md
  PocketSecretary-specific notification control implementation.

- 1200124_POCKET_SECRETARY_BUSINESS_APP_LAUNCH_IMPLEMENTATION.md
  Dedicated business app launch implementation.

cross_cutting_technical_domain:
- 140.visual-runtime
  Thin host adapter, event bridge, and session disposer for Persona Visual Runtime.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/1200001_POCKET_SECRETARY_IMPLEMENTATION_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY IMPLEMENTATION OVERVIEW
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
This layer defines PocketSecretary-specific implementation guidance.

shared common references:
- PersonaOS Consultation Common
- PersonaOS Secretary Interaction Common
- PersonaOS Notification Common
- PersonaOS Background Common
- BusinessOS Submission Common
- BusinessOS Business AI Worker

PocketSecretary-specific implementation areas:
- visual-runtime host adapter implementation
- home screen implementation
- score-based home summary implementation
- secretary wording engine implementation
- initial secretary cast implementation
- Library implementation
- schedule calendar implementation
- travel expense implementation
- ERP application draft review implementation
- enterprise application button implementation
- Deep Link launch implementation for EstimateCreator and NameCardManager
- company secretary consumption implementation
- install guidance handling
- settings and app-local navigation

implementation rule:
Shared semantics should be reused from common systems.
PocketSecretary implementation should focus on app composition,
binding, launch behavior, install guidance, company-secretary consumption,
and plan-specific behavior.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/140.visual-runtime/1201400001_POCKET_SECRETARY_VISUAL_RUNTIME_HOST_ADAPTER_IMPLEMENTATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY VISUAL RUNTIME HOST ADAPTER IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the PocketSecretary-side
host adapter implementation pattern.


# ============================================================
# 2. IMPLEMENTATION STRUCTURE
# ============================================================

Recommended implementation split:

PocketSecretaryVisualHostController
PocketSecretaryVisualRuntimeAdapter
PocketSecretaryVisualEventBridge
PocketSecretaryVisualSessionDisposer


# ============================================================
# 3. RULES
# ============================================================

The adapter layer must be thin.
The adapter layer must not contain persona composition logic.
The adapter layer must centralize runtime lifecycle handling.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/010.core/1300100_POCKET_SECRETARY_DEVELOPMENT.md
# ============================================================

# ============================================================
# POCKET SECRETARY DEVELOPMENT
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the development layer of PocketSecretary.

scope:
The development layer defines implementation planning support,
delivery sequencing, validation focus, and migration guidance
for PocketSecretary.

development_principles:
- architecture-first delivery
- local-first implementation priority
- review before externally consequential automation
- visible validation targets
- safe migration from older design fragments


# ============================================================
# 1. DEVELOPMENT DOMAINS
# ============================================================

PocketSecretary development domains include:

- implementation sequencing
- validation planning
- migration planning
- release readiness planning
- development guardrails


# ============================================================
# 2. DEVELOPMENT ROLE
# ============================================================

Development must support:

- turning canonical design into buildable work
- sequencing implementation safely
- identifying validation checkpoints
- preserving alignment with constitutional and architectural rules

Development must not:

- redefine canonical architecture
- bypass review for convenience
- promote incomplete behavior as production-ready


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/010.core/1300101_POCKET_SECRETARY_IMPLEMENTATION_SEQUENCE_DEVELOPMENT.md
# ============================================================

# ============================================================
# POCKET SECRETARY IMPLEMENTATION SEQUENCE DEVELOPMENT
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

recommended sequence:
1. local persistence foundation
2. dashboard and core UI shell
3. todo and schedule local workflows
4. notification runtime support
5. Persona presentation support
6. sync state handling
7. ERP request draft and review support
8. bounded external integration hardening

rules:
- core local usability should ship before optional external dependence
- review-required flows should precede automated convenience flows


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/010.core/1300102_POCKET_SECRETARY_VALIDATION_CHECKPOINTS_DEVELOPMENT.md
# ============================================================

# ============================================================
# POCKET SECRETARY VALIDATION CHECKPOINTS DEVELOPMENT
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

validation checkpoints:
- local data persists correctly
- pending / confirmed / failed states are visually distinct
- offline mode preserves local work
- Persona presentation does not imply authority
- ERP request review cannot be skipped
- transport success is not shown as business success
- retry behavior remains bounded

rules:
- each major feature must validate against constitutional constraints
- critical path validation must exist before release readiness


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/010.core/1300103_POCKET_SECRETARY_MIGRATION_DEVELOPMENT.md
# ============================================================

# ============================================================
# POCKET SECRETARY MIGRATION DEVELOPMENT
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines migration guidance from archived or fragmented design materials
to the canonical PocketSecretary structure.

migration rules:
- canonical files in active layers are the current source of truth
- archived files remain reference material only
- when archived content conflicts with canonical files,
  canonical files take precedence
- migration should preserve useful implementation intent
  without reviving structural ambiguity

practical guidance:
- review old implementation ideas against current constitution
- re-adopt only content that fits current layer boundaries
- avoid copying archived ambiguity into canonical layers


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/010.core/1300104_POCKET_SECRETARY_RELEASE_READINESS_DEVELOPMENT.md
# ============================================================

# ============================================================
# POCKET SECRETARY RELEASE READINESS DEVELOPMENT
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

release readiness conditions:
- local-first core workflows are functional
- critical states are visible and honest
- review-required external paths are explicit
- failure handling is bounded
- security constraints are implemented
- implementation aligns with canonical layer intent

not release-ready when:
- pending is indistinguishable from confirmed
- critical actions can bypass review
- external ambiguity is treated as success
- Persona presentation influences authority logic


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/010.core/1300105_POCKET_SECRETARY_DEVELOPMENT_GUARDRAILS.md
# ============================================================

# ============================================================
# POCKET SECRETARY DEVELOPMENT GUARDRAILS
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

guardrails:
- do not violate constitution for convenience
- do not collapse local and external truth
- do not implement fictional success states
- do not mix Persona presentation with permission authority
- do not ship hidden critical execution
- do not bypass explicit review for ERP-facing requests


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/020.plan/1300106_POCKET_SECRETARY_PLAN_PHASE_DEVELOPMENT.md
# ============================================================

# ============================================================
# POCKET SECRETARY PLAN PHASE DEVELOPMENT
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines phased development sequencing by plan.

recommended phase order:
1. free core tool phase
2. pro AI secretary phase
3. enterprise business support phase

phase details:
free core tool phase:
- dashboard
- schedule calendar
- todo
- memo
- library
- calculator
- basic notification
- mailer launch

pro AI secretary phase:
- AI secretary capability
- personal consultation
- Yahoo transit integration
- travel expense handling
- monthly aggregation
- advanced notification

enterprise business support phase:
- company secretary capability
- business card management integration
- ERP application draft
- quotation draft
- order draft
- library document summary
- enterprise application button


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/020.plan/1300107_POCKET_SECRETARY_PLAN_VALIDATION_DEVELOPMENT.md
# ============================================================

# ============================================================
# POCKET SECRETARY PLAN VALIDATION DEVELOPMENT
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

validation goals:
- free does not expose active AI secretary capability
- pro enables personal AI secretary capability only
- enterprise enables company-secretary and business support functions
- plan boundary is enforced in actual visible behavior

rules:
- feature gating must be validated by behavior, not only by hidden config
- enterprise-only submit paths must not appear in free or pro


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/030.business/1300108_POCKET_SECRETARY_ENTERPRISE_SUBMISSION_VALIDATION_DEVELOPMENT.md
# ============================================================

# ============================================================
# POCKET SECRETARY ENTERPRISE SUBMISSION VALIDATION DEVELOPMENT
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

validation targets:
- ERP application draft requires explicit application button
- quotation draft requires explicit application button
- order draft requires explicit application button
- draft completion alone does not trigger submission
- direct ERP database write does not occur
- submission occurs through ERP external API only

rules:
- first-time submission without button press must fail validation
- pending, accepted, failed, and conflicted states must remain distinguishable


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/030.business/1300109_POCKET_SECRETARY_ERP_API_TOKEN_VALIDATION_DEVELOPMENT.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERP API TOKEN VALIDATION DEVELOPMENT
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

validation targets:
- token presence is checked before submission
- expired token blocks submission
- invalid token blocks submission
- company/user context binding is checked where applicable

rules:
- token validity does not equal business acceptance
- unknown auth state must fail closed


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/030.business/1300110_POCKET_SECRETARY_LIBRARY_SUMMARY_VALIDATION_DEVELOPMENT.md
# ============================================================

# ============================================================
# POCKET SECRETARY LIBRARY SUMMARY VALIDATION DEVELOPMENT
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

validation targets:
- library summary remains enterprise-bounded
- file existence and summary availability remain distinct
- summary generation does not broaden file exposure by default

rules:
- summary visibility must be validated separately from file registration
- summary generation must remain bounded to user-visible purpose


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/030.business/1300111_POCKET_SECRETARY_DEEP_LINK_CONTRACT_DEVELOPMENT.md
# ============================================================

# ============================================================
# POCKET SECRETARY DEEP LINK CONTRACT DEVELOPMENT
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start conditions for Deep Link launch.

must be fixed before implementation:
- EstimateCreator deep link scheme
- NameCardManager deep link scheme
- mode list for each target app
- required parameter list
- inherited BusinessOS auth-context contract
- target-side inherited-context validation rule
- install guidance destination
- app-unavailable detection behavior

implementation-start condition:
No launch implementation should begin
until the published Deep Link contract is fixed.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/030.business/1300112_POCKET_SECRETARY_HOME_SUMMARY_PRIORITY_DEVELOPMENT.md
# ============================================================

# ============================================================
# POCKET SECRETARY HOME SUMMARY PRIORITY DEVELOPMENT
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start conditions for home summary priority.

must be fixed before implementation:
- score table
- important-notification criteria
- repeated-message suppression window
- quiet-hours effect rule
- schedule-near threshold
- travel-expense priority escalation rule

implementation-start condition:
No final home summary selector should ship
until these thresholds are fixed.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/030.business/1300113_POCKET_SECRETARY_SECRETARY_WORDING_DICTIONARY_DEVELOPMENT.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECRETARY WORDING DICTIONARY DEVELOPMENT
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start conditions for secretary wording dictionary.

must be fixed before implementation:
- secretary_id list
- message_type list
- primary template for each secretary and message_type
- runtime variable list
- fallback wording rule
- company_ai reserved policy

implementation-start condition:
No final secretary wording engine should ship
until the primary dictionary is fixed.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/1300000_POCKET_SECRETARY_DEVELOPMENT_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY DEVELOPMENT INDEX
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
Index of PocketSecretary-specific development documents.

reading order:
1. Development Overview
2. Core development rules
3. Plan-oriented development files
4. Business validation files
5. Cross-cutting technical domain development files

cross_cutting_technical_domain:
- 140.visual-runtime
  Development guide for preserving canonical runtime integration and explicit session disposal.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/1300001_POCKET_SECRETARY_DEVELOPMENT_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY DEVELOPMENT OVERVIEW
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
This layer defines development sequencing, validation, migration,
and release readiness guidance.

major development themes:
- visual-runtime host development guide
- Deep Link contract finalization
- home summary priority finalization
- secretary wording dictionary finalization
- implementation sequencing
- validation checkpoints
- migration
- release readiness
- development guardrails
- plan-phase development
- plan validation
- enterprise submission validation
- ERP API token validation
- Library summary validation

important development intent:
PocketSecretary should be delivered in a clear phase order:
1. free core tools
2. Pro AI secretary
3. Enterprise business support

Validation must prove:
- free has no AI secretary
- enterprise-only submission paths stay enterprise-only
- button-required submission really requires the button
- invalid ERP token really blocks submission
- unavailable external business apps really show install guidance


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/140.visual-runtime/1301400001_POCKET_SECRETARY_VISUAL_RUNTIME_DEVELOPMENT_GUIDE.md
# ============================================================

# ============================================================
# POCKET SECRETARY VISUAL RUNTIME DEVELOPMENT GUIDE
# ============================================================

status: canonical
layer: development
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. DEVELOPMENT RULE
# ============================================================

Future PocketSecretary development must preserve:

canonical runtime integration
explicit session disposal
surface-based rendering selection
persona-first degraded rendering


# ============================================================
# 2. CHANGE TESTS
# ============================================================

Any host-side change should be checked against:

Does it still use canonical runtime inputs?
Does it still dispose sessions explicitly?
Does it still preserve fallback semantics?
Does it still avoid blank render on recoverable degradation?
