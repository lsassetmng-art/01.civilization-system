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
