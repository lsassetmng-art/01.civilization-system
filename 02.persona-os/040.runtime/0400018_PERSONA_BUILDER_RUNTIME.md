# ============================================================
# PERSONA BUILDER RUNTIME
# PersonaOS Canonical Design
# ============================================================

status: canonical
scope: personaos.builder.runtime
component: persona-builder-runtime
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical runtime behavior of Persona Builder.

This document specifies how Persona Builder operates at runtime
from creation entry through review, cloud eligibility,
snapshot issuance request, distribution readiness,
and marketplace readiness.

This document focuses on runtime behavior,
state progression, orchestration boundaries,
and fail-closed execution rules.


# ============================================================
# RUNTIME ROLE
# ============================================================

Persona Builder Runtime is the orchestration runtime
for authoring-side Persona creation and release preparation.

It is responsible for:

- receiving governed builder actions
- validating route-specific runtime preconditions
- creating and advancing builder-side operational state
- coordinating visual generation flow
- coordinating review request flow
- coordinating cloud eligibility flow
- coordinating snapshot issuance request flow
- coordinating distribution and marketplace preparation flow

Persona Builder Runtime is not the source of Persona truth.

PersonaOS remains the sole mutable truth holder.


# ============================================================
# RUNTIME PRINCIPLE
# ============================================================

Runtime behavior must be:

- explicit
- stateful
- auditable
- resumable where allowed
- idempotent where required
- fail-closed when unresolved

No runtime stage may silently promote a Persona
from private-local to cloud-eligible state.

No runtime stage may silently issue public proof.


# ============================================================
# ENTRY EVENTS
# ============================================================

Persona Builder Runtime may receive the following entry actions:

- CREATE_PERSONA_REQUESTED
- EDIT_PERSONA_REQUESTED
- SUBMIT_VISUAL_GENERATION_REQUESTED
- VISUAL_UPLOAD_CONFIRMED
- REVIEW_REQUESTED
- AI_REVIEW_RESULT_RECEIVED
- HUMAN_REVIEW_RESULT_RECEIVED
- APPROVAL_REQUESTED
- ACTIVATION_REQUESTED
- SNAPSHOT_ISSUE_REQUESTED
- DISTRIBUTION_ENABLE_REQUESTED
- MARKETPLACE_ENABLE_REQUESTED
- MARKETPLACE_LIST_REQUESTED

Each entry action must be explicit and authenticated.


# ============================================================
# RUNTIME INPUT CONTRACT
# ============================================================

Minimum create-time runtime input:

- persona_name
- source_type
- visual_type
- route_payload
- distribution_intent
- marketplace_intent
- actor_identity
- request_timestamp
- request_id

Optional runtime inputs may include:

- initial profile values
- initial trait values
- visual selection data
- voice selection data
- route-specific declarations
- legal acknowledgement data

All required route inputs must be present
before runtime may advance.


# ============================================================
# PRIMARY RUNTIME STATES
# ============================================================

Persona Builder Runtime may expose the following operational states:

- DRAFT
- INPUT_INVALID
- ROUTE_VALIDATED
- VISUAL_PENDING
- VISUAL_PROCESSING
- VISUAL_READY
- VISUAL_FAILED
- REVIEW_NOT_REQUIRED
- REVIEW_REQUESTED
- AI_REVIEWING
- AI_REVIEW_PASSED
- AI_REVIEW_REJECTED
- HUMAN_REVIEWING
- HUMAN_REVIEW_PASSED
- HUMAN_REVIEW_REJECTED
- APPROVAL_PENDING
- APPROVED
- ACTIVE_READY
- ACTIVE
- SNAPSHOT_PENDING
- SNAPSHOT_ISSUED
- DISTRIBUTION_PENDING
- DISTRIBUTABLE
- MARKETPLACE_PENDING
- MARKETPLACE_ELIGIBLE
- MARKETPLACE_LISTED
- SUSPENDED
- ARCHIVED
- FAILED

These are operational states for runtime orchestration.

Canonical Persona lifecycle truth remains governed by PersonaOS.


# ============================================================
# ROUTE VALIDATION RUNTIME
# ============================================================

At runtime, the first mandatory stage is route validation.

Validation must confirm:

- source_type is one of the four official routes
- route_payload exists
- route-specific mandatory fields are present
- requested distribution intent is allowed for the route
- requested marketplace intent is allowed for the route
- legal declarations exist where required
- provenance evidence exists where required

If validation fails:

state:
- INPUT_INVALID

rule:
- fail closed
- do not create downstream review or visual jobs
- return explicit validation error set


# ============================================================
# LOCAL_UPLOAD RUNTIME RULE
# ============================================================

Default runtime rule for LOCAL_UPLOAD:

- private-local only
- cloud prohibited
- distribution prohibited
- marketplace prohibited

A LOCAL_UPLOAD Persona may advance beyond local-only mode
only when a distribution or marketplace request is explicitly submitted.

That request creates a governed review route.

Until both required reviews pass,
the runtime must treat the Persona as non-cloud.


# ============================================================
# PRESET_PARTS RUNTIME RULE
# ============================================================

For PRESET_PARTS:

- selected assets must be valid
- asset policy must permit intended usage
- expired or blocked assets must fail closed
- distribution readiness depends on policy and approval chain

No downstream release-ready state may be entered
if source asset rights are unresolved.


# ============================================================
# AI_GENERATED RUNTIME RULE
# ============================================================

For AI_GENERATED:

- ai_generation_log must exist
- generated asset provenance must be resolvable
- policy checks must pass
- blocked generation outputs must fail closed

If provenance evidence is missing,
runtime must stop before release-facing states.


# ============================================================
# EXTERNAL_IMPORT RUNTIME RULE
# ============================================================

For EXTERNAL_IMPORT:

- license_type must exist
- license_note must exist
- import_manifest must exist
- external_import_log must exist

If rights basis is unclear or incomplete:

- runtime must fail closed
- review escalation may occur only if policy allows
- no cloud-ready or marketplace-ready promotion is allowed


# ============================================================
# DRAFT CREATION RUNTIME
# ============================================================

After successful route validation,
runtime may create or update a Persona draft context.

Draft runtime responsibilities:

- bind request to persona draft
- preserve route provenance
- preserve declared usage intent
- preserve current visual preparation status
- preserve required review requirement flags

Draft runtime must keep editable state
separate from public release state.


# ============================================================
# VISUAL GENERATION RUNTIME
# ============================================================

Visual generation runtime follows this path:

ROUTE_VALIDATED
↓
VISUAL_PENDING
↓
visual_generation_jobs creation
↓
VISUAL_PROCESSING
↓
visual-compose request
↓
client composition
↓
visual-upload confirmation
↓
VISUAL_READY

Runtime responsibilities:

- create generation job request
- bind job to persona_id
- track generation state
- track composition completion signal
- track upload confirmation
- stop advancement if visual registration is unresolved

Runtime must not perform PNG composition directly.


# ============================================================
# VISUAL FAILURE RUNTIME
# ============================================================

If visual generation fails,
runtime must enter:

- VISUAL_FAILED

Runtime must preserve:

- failure reason
- failed stage
- related request_id
- retry eligibility if allowed

Runtime must not auto-promote VISUAL_FAILED
to VISUAL_READY without explicit new action.


# ============================================================
# VISUAL READY GATE
# ============================================================

A Persona may enter VISUAL_READY only when:

- required visual generation completed successfully
- visual-upload confirmation succeeded
- visual_assets registration is confirmed
- required route-specific visual requirements are satisfied

Without registered visual result,
distribution-facing and snapshot-facing advancement must stop.


# ============================================================
# REVIEW REQUEST RUNTIME
# ============================================================

Review runtime starts only on explicit request
or when route policy makes review mandatory.

Typical path:

VISUAL_READY or DRAFT_READY
↓
REVIEW_REQUESTED
↓
AI_REVIEWING
↓
AI_REVIEW_PASSED / AI_REVIEW_REJECTED
↓
HUMAN_REVIEWING
↓
HUMAN_REVIEW_PASSED / HUMAN_REVIEW_REJECTED

Runtime must create review case linkage
and preserve evidence references.


# ============================================================
# AI REVIEW RUNTIME
# ============================================================

AI review runtime may evaluate:

- prohibited content indicators
- similarity or misuse indicators
- route-policy mismatch
- asset or import anomalies
- distribution risk indicators
- marketplace risk indicators

AI review may produce:

- pass
- reject
- escalate
- insufficient_evidence

AI review must not finalize local-to-cloud release on its own.

Human review remains mandatory where policy requires it.


# ============================================================
# HUMAN REVIEW RUNTIME
# ============================================================

Human review is final for local-to-cloud escalation route.

Human review runtime may produce:

- pass
- reject
- return_for_fix
- request_more_evidence

Only after required human pass may runtime advance to:

- CLOUD_ELIGIBLE
- DISTRIBUTABLE
- MARKETPLACE_ELIGIBLE

where policy permits.


# ============================================================
# REVIEW REJECTION RUNTIME
# ============================================================

If review is rejected:

- preserve rejection reason
- preserve rejecting stage
- preserve evidence summary
- preserve next allowed action if any

Possible resulting states:

- AI_REVIEW_REJECTED
- HUMAN_REVIEW_REJECTED
- DRAFT
- FAILED

No rejected review may silently convert into pass.


# ============================================================
# CLOUD ELIGIBILITY RUNTIME
# ============================================================

Cloud eligibility runtime is explicit.

A Persona or visual material becomes CLOUD_ELIGIBLE only when:

- route-specific review requirements are satisfied
- rights basis is valid
- policy checks pass
- required visual state is complete
- required evidence is attached

CLOUD_ELIGIBLE is not equal to MARKETPLACE_LISTED.

It only means cloud registration and release-facing progression
are allowed under policy.


# ============================================================
# APPROVAL RUNTIME
# ============================================================

Approval runtime is separate from review runtime.

Review answers:
- may this route/material proceed

Approval answers:
- may this Persona be treated as approved Persona state

Possible path:

REVIEW_PASSED or REVIEW_NOT_REQUIRED
↓
APPROVAL_PENDING
↓
APPROVED
↓
ACTIVE_READY
↓
ACTIVE

Approval runtime must not be inferred
from visual success alone.


# ============================================================
# ACTIVATION RUNTIME
# ============================================================

Activation runtime moves approved Persona state
into governed active Persona state.

Activation requires:

- Persona draft validity
- required approval state
- required visual readiness
- no blocking review state
- no unresolved legal state

If any requirement is unresolved,
activation must fail closed.


# ============================================================
# SNAPSHOT ISSUE RUNTIME
# ============================================================

Snapshot issuance runtime starts only by explicit request.

Path:

ACTIVE or APPROVED_RELEASE_READY
↓
SNAPSHOT_PENDING
↓
snapshot issuance process
↓
SNAPSHOT_ISSUED

Preconditions:

- Persona truth is in issuable state
- required release gating passed
- required public representation fields are resolvable
- signing path is available
- issuance policy permits action

Builder runtime may request issuance,
but may not self-issue snapshot truth.


# ============================================================
# SNAPSHOT FAILURE RUNTIME
# ============================================================

If issuance fails:

- remain non-public
- preserve failure reason
- preserve request correlation
- allow explicit retry if policy permits

Runtime must never mark SNAPSHOT_ISSUED
without completed issuance confirmation.


# ============================================================
# DISTRIBUTION ENABLEMENT RUNTIME
# ============================================================

Distribution runtime handles eligibility
for releasable or shareable Persona use.

Possible path:

SNAPSHOT_ISSUED or APPROVED_RELEASE_READY
↓
DISTRIBUTION_PENDING
↓
distribution validation
↓
DISTRIBUTABLE

Preconditions may include:

- cloud eligibility if relevant
- required reviews complete
- release policy satisfied
- rights basis valid
- public representation available

Distribution runtime must not expose raw mutable truth.


# ============================================================
# MARKETPLACE ENABLEMENT RUNTIME
# ============================================================

Marketplace enablement runtime is separate
from distribution enablement.

Possible path:

DISTRIBUTABLE
↓
MARKETPLACE_PENDING
↓
marketplace eligibility checks
↓
MARKETPLACE_ELIGIBLE
↓
listing request
↓
MARKETPLACE_LISTED

This separation is mandatory because
not all distributable Personas are marketplace-sellable.


# ============================================================
# MARKETPLACE GATING RUNTIME
# ============================================================

Marketplace runtime may require:

- distribution eligibility
- cloud eligibility
- review completion
- legal basis completeness
- policy approval
- listing metadata completeness
- commercial suitability checks

If any commercial condition is unresolved,
runtime must stop before MARKETPLACE_LISTED.


# ============================================================
# PRIVATE-ONLY RUNTIME
# ============================================================

A Persona may remain permanently private-only.

Private-only path:

CREATE
↓
DRAFT
↓
VISUAL_READY
↓
APPROVED
↓
ACTIVE
↓
private use only

This path must remain valid.

Distribution and marketplace are optional capabilities,
not mandatory outcomes.


# ============================================================
# IDPOTENCY AND RETRY RULE
# ============================================================

Runtime must suppress duplicate effective actions where required.

At minimum, the following should be idempotent
by request_id or equivalent correlation:

- create request processing
- visual generation request creation
- review request creation
- snapshot issuance request creation
- distribution enablement request creation
- marketplace enablement request creation

Retry must be explicit and auditable.


# ============================================================
# AUDIT RUNTIME
# ============================================================

Runtime must emit auditable records for:

- request received
- validation result
- state transition
- review request created
- review result received
- cloud eligibility granted or denied
- approval granted or denied
- snapshot requested
- snapshot confirmed
- distribution enabled or denied
- marketplace enabled or denied
- listing requested and confirmed

No hidden runtime transition is allowed.


# ============================================================
# SECURITY RUNTIME RULE
# ============================================================

Runtime actions must require authenticated actor context.

Sensitive actions include:

- distribution request
- marketplace request
- review decision
- approval
- activation
- snapshot issuance request
- cloud eligibility grant
- listing handoff

Unattributed sensitive action is prohibited.


# ============================================================
# FAILURE HANDLING
# ============================================================

Runtime must fail closed when:

- route validation fails
- required provenance is missing
- visual generation is unresolved
- review evidence is missing
- human review is required but absent
- cloud eligibility is unresolved
- issuance preconditions are unresolved
- listing conditions are unresolved

Failure must be explicit and inspectable.


# ============================================================
# RESUME RULE
# ============================================================

Runtime may allow resume from interrupted non-terminal states such as:

- VISUAL_PENDING
- VISUAL_PROCESSING
- REVIEW_REQUESTED
- AI_REVIEWING
- HUMAN_REVIEWING
- SNAPSHOT_PENDING
- DISTRIBUTION_PENDING
- MARKETPLACE_PENDING

Resume must preserve prior evidence and correlation data.

Resume must not skip required stages.


# ============================================================
# RUNTIME BOUNDARY WITH VISUAL RUNTIME
# ============================================================

Persona Builder Runtime is not Persona Visual Runtime.

Persona Builder Runtime:
- orchestrates preparation and release-facing flow

Persona Visual Runtime:
- executes visual state interpretation and rendering behavior

The two may connect,
but they are not interchangeable runtimes.


# ============================================================
# RUNTIME BOUNDARY WITH MARKETPLACE
# ============================================================

Persona Builder Runtime may prepare Persona
for marketplace eligibility and listing handoff.

It does not own Marketplace sales truth,
listing truth, settlement truth, or commerce truth.

Those remain outside Builder Runtime
and must be handled by approved marketplace systems.


# ============================================================
# REQUIRED FOLLOW-UP DOCUMENTS
# ============================================================

This runtime implies follow-up documents such as:

- PERSONA_BUILDER_POLICY
- PERSONA_BUILDER_INTERFACE
- PERSONA_CREATE_FLOW
- PERSONA_DISTRIBUTION_REVIEW_FLOW
- PERSONA_MARKETPLACE_ENABLEMENT_FLOW
- PERSONA_BUILDER_IMPLEMENTATION

Supporting model documents are also recommended for:

- builder request state
- review case state
- cloud eligibility state
- marketplace eligibility state


# ============================================================
# FINAL DEFINITION
# ============================================================

Persona Builder Runtime is the governed orchestration runtime
that advances a Persona through validated creation,
visual preparation, review, cloud eligibility,
approval, snapshot issuance, distribution readiness,
and marketplace readiness.

It is explicit, auditable, fail-closed,
and never replaces PersonaOS as the source of Persona truth.
