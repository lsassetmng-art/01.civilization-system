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
