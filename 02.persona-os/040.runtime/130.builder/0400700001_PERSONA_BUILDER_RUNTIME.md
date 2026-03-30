# ============================================================
# PERSONA BUILDER RUNTIME
# ============================================================

status: canonical
scope: persona.builder.runtime
system: persona-os
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical runtime behavior
of Persona Builder inside PersonaOS.

This document defines runtime responsibilities for:

- draft handling
- edit progression
- validation triggering
- approval triggering
- publish preparation triggering
- failure handling
- audit-safe progression


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
Builder Runtime
↓
Validation / Approval / Publish Preparation / External Handoff

Builder Runtime belongs to Persona Builder.

Builder Runtime is not Persona Visual Runtime.
Builder Runtime is not Persona state truth authority.


# ============================================================
# CORE PRINCIPLE
# ============================================================

Builder Runtime must be:

- explicit
- eventful
- auditable
- resumable where allowed
- fail-closed
- non-silent

Builder Runtime coordinates draft-side progression.

Builder Runtime must never silently mutate
final Persona mutable truth.


# ============================================================
# RUNTIME ROLE
# ============================================================

Builder Runtime is responsible for:

- creating builder draft runtime context
- loading editable draft state
- applying controlled draft edits
- invoking validation
- invoking approval request creation
- invoking publish candidate preparation
- coordinating audit-safe state progression
- preserving retryable non-authoritative runtime state

Builder Runtime is not responsible for:

- final Persona truth mutation
- visual rendering execution
- snapshot signing
- external-rights final grant
- marketplace truth ownership


# ============================================================
# RUNTIME INPUTS
# ============================================================

Builder Runtime may receive inputs such as:

- create_draft_request
- load_draft_request
- edit_section_request
- validate_request
- approval_request
- publish_prepare_request
- archive_request
- rework_apply_request

Each runtime input must be:

- attributable
- timestamped
- auditable
- scope-bound


# ============================================================
# RUNTIME CONTEXT
# ============================================================

Builder Runtime must preserve a runtime context including:

- builder_session_id
- target_draft_id
- target_persona_ref
- actor_identity
- active_section_scope
- current_runtime_state
- latest_validation_ref
- latest_approval_ref
- latest_publish_candidate_ref
- last_error_ref
- audit_context_ref

Runtime context is operational only.

It must not replace canonical Persona truth.


# ============================================================
# PRIMARY RUNTIME STATES
# ============================================================

Builder Runtime may expose states such as:

- runtime_initialized
- draft_loaded
- editing_active
- validation_running
- validation_passed
- validation_failed
- approval_requesting
- approval_pending
- approval_blocked
- publish_preparing
- publish_ready
- publish_blocked
- runtime_archived
- runtime_failed

These are Builder runtime states,
not Persona lifecycle truth states.


# ============================================================
# DRAFT LOAD RUNTIME
# ============================================================

When loading a draft, Builder Runtime must:

- resolve target draft reference
- confirm actor access
- load section state summary
- load latest validation state
- load latest approval state
- load latest publish candidate state
- restore active editing context if allowed

If the draft is unresolved or inaccessible,
runtime must fail closed.


# ============================================================
# EDIT RUNTIME
# ============================================================

During editing, Builder Runtime must:

- apply scoped draft changes
- preserve changed section markers
- preserve change set references
- invalidate stale validation where required
- invalidate stale approval where required
- write audit trail entries

Material edits must block prior approval reuse
unless explicit policy allows otherwise.


# ============================================================
# VALIDATION INVOCATION RUNTIME
# ============================================================

When validation is requested, Builder Runtime must:

- confirm draft exists
- confirm validation scope
- create validation run request
- persist runtime transition
- await validation result
- reflect blocking or passing result

Runtime must never mark validation passed
without actual validation result persistence.


# ============================================================
# APPROVAL INVOCATION RUNTIME
# ============================================================

When approval is requested, Builder Runtime must:

- verify validation prerequisites
- confirm no blocking issue remains
- create approval request
- move runtime to approval-pending state
- preserve review references
- block downstream publish preparation until approval exists

Runtime must not infer approval from validation.


# ============================================================
# PUBLISH PREPARATION INVOCATION RUNTIME
# ============================================================

When publish preparation is requested, Builder Runtime must:

- verify approval state
- verify approval freshness
- verify release-facing readiness
- create publish candidate preparation request
- preserve dependency summary
- preserve handoff target summary

Runtime must not create publish-ready state
from unresolved approval or unresolved rights conditions.


# ============================================================
# REWORK RUNTIME
# ============================================================

If approval returns a draft for rework,
Builder Runtime must:

- preserve prior approval decision history
- return draft to editable progression
- mark sections requiring correction
- invalidate stale publish candidates
- require new validation and approval cycle where needed

Rework must be explicit and traceable.


# ============================================================
# FAILURE HANDLING
# ============================================================

Builder Runtime must fail closed when:

- draft cannot be resolved
- actor cannot be attributed
- validation result is missing
- approval state is contradictory
- publish preconditions are unresolved
- audit persistence fails
- dependency references are invalid

No unresolved runtime state may silently advance.


# ============================================================
# RESUME RULE
# ============================================================

Builder Runtime may resume only from safe operational states.

Examples:

- draft_loaded
- editing_active
- validation_failed
- approval_pending
- publish_blocked

Resume must not skip required governance steps.

Resume must preserve prior audit context.


# ============================================================
# AUDIT RULE
# ============================================================

Every meaningful runtime transition must be auditable.

Audit targets include:

- draft load
- edit apply
- validation request
- validation completion
- approval request
- approval state change
- publish preparation request
- publish readiness block
- archive action
- runtime failure

Silent runtime transition is prohibited.


# ============================================================
# RUNTIME BOUNDARY
# ============================================================

Builder Runtime must remain separate from:

- Persona state apply runtime
- Persona visual runtime
- Persona snapshot runtime
- external-rights runtime

Builder Runtime coordinates authoring progression only.


# ============================================================
# FINAL DEFINITION
# ============================================================

Persona Builder Runtime is the governed operational runtime
that manages draft-side Persona authoring progression
through edit, validation, approval request,
and publish preparation request states.

It is auditable, fail-closed,
and never replaces PersonaOS truth authority.
