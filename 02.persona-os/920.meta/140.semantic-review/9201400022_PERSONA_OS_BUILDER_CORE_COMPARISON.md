# ============================================================
# PERSONA OS BUILDER CORE COMPARISON
# ============================================================

status: canonical
layer: meta
domain: semantic-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Compares builder-domain core layers
to review semantic boundary quality.

# ============================================================
# 1. CONSTITUTION
# ============================================================

# ============================================================
# PERSONA BUILDER CONSTITUTION OVERVIEW
# ============================================================

status: canonical
layer: constitution
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional role of Persona Builder.

summary:
Builder is the canonical authoring subsystem.
It creates and edits draft state,
runs validation,
prepares approval,
and prepares publish-facing artifacts.

constitutional_principles:
builder is not final truth authority
builder must not bypass governance
builder must not directly seize growth or rights authority

# ============================================================
# 2. ARCHITECTURE
# ============================================================

# ============================================================
# PERSONA BUILDER ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: architecture
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the structural overview of Persona Builder.

summary:
Builder is the canonical authoring subsystem of PersonaOS.
It manages draft creation, editing, validation,
approval preparation, and publish preparation.

scope:
draft structures
authoring workflow
validation flow
approval preparation
publish preparation

boundary:
Builder is not final truth authority.
Builder is not runtime execution.
Builder must hand approved outcomes into canonical truth paths.

# ============================================================
# 3. MODEL
# ============================================================

# ============================================================
# PERSONA BUILDER MODEL OVERVIEW
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of builder models.

summary:
Builder models define authoring-side draft structures,
section edit state, validation-related state,
and approval-preparation state.

scope:
draft record
section draft linkage
validation-related state
approval-preparation state
publish-preparation linkage

boundary:
Builder models are not final truth models.
Builder models are not runtime execution state.

# ============================================================
# PERSONA BUILDER DRAFT MODEL
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_builder_draft

core_fields:
persona_builder_draft_id
persona_id
draft_status
draft_version
identity_draft_ref
state_draft_ref
memory_draft_ref
growth_draft_note
visual_draft_ref
package_prep_ref
approval_prep_status
created_at
updated_at

rules:
Builder draft is an authoring structure.
Builder draft is not final persona truth.

# ============================================================
# 4. POLICY
# ============================================================

# ============================================================
# PERSONA BUILDER POLICY OVERVIEW
# ============================================================

status: canonical
layer: policy
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of builder policies.

summary:
Builder policy governs draft handling,
validation expectations,
approval boundaries,
and publish-preparation restrictions.

scope:
draft policy
validation policy
approval-preparation policy
publish-preparation policy

boundary:
Builder is not final truth authority.
Builder must not bypass release, growth, memory, or rights policy.

# ============================================================
# PERSONA BUILDER DRAFT POLICY
# ============================================================

status: canonical
layer: policy
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero

policy_rules:
builder draft is not final persona truth
builder changes require validation and approval path where required
builder must not bypass growth, memory, release, or rights policy
builder actions must remain auditable

# ============================================================
# 5. INTERFACE
# ============================================================

# ============================================================
# PERSONA BUILDER INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of builder interfaces.

summary:
Builder interfaces define requests and responses
for draft create/update,
validation,
and approval preparation.

scope:
draft create
draft update
validation request
approval-preparation response

boundary:
Builder interface is not direct final truth mutation interface.

# ============================================================
# PERSONA BUILDER DRAFT INTERFACE
# ============================================================

status: canonical
layer: interface
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero

interface_examples:
PersonaBuilderDraftCreateRequest
PersonaBuilderDraftUpdateRequest
PersonaBuilderValidationRequest
PersonaBuilderApprovalPreparationResponse

# ============================================================
# 6. REVIEW QUESTIONS
# ============================================================

1. Is builder clearly separated from canonical truth ownership?
2. Is builder draft state clearly separated from persona state/growth/identity truth?
3. Is apply/approve boundary clearly separated from authoring/editing behavior?
4. Is builder clearly separated from runtime-hosting and render execution?
5. Do policy and interface keep builder as non-authoritative unless explicitly applied?
