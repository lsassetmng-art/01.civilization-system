# ============================================================
# PERSONA OS VISUAL CORE COMPARISON
# ============================================================

status: canonical
layer: meta
domain: semantic-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Compares visual-domain core layers
to review semantic boundary quality.

# ============================================================
# 1. CONSTITUTION
# ============================================================

# ============================================================
# PERSONA VISUAL CONSTITUTION OVERVIEW
# ============================================================

status: canonical
layer: constitution
domain: visual
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional role of persona visual domain.

summary:
Visual defines canonical visual truth,
expression semantics,
background semantics,
and composition semantics.

constitutional_principles:
visual truth belongs to PersonaOS
visual runtime executes but does not author truth
host applications do not redefine visual truth

# ============================================================
# 2. ARCHITECTURE
# ============================================================

# ============================================================
# PERSONA VISUAL ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: architecture
domain: visual
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the structural overview of persona visual domain.

summary:
Visual is the canonical domain for visual truth,
expression mapping, composition rules,
background semantics, and rendering behavior.

scope:
visual profile
expression semantics
background semantics
composition structure
visual runtime relation

boundary:
Visual truth belongs to PersonaOS.
Visual runtime executes visual semantics.
Runtime-hosting consumes runtime behavior,
but does not redefine visual truth.

# ============================================================
# 3. MODEL
# ============================================================

# ============================================================
# PERSONA VISUAL MODEL OVERVIEW
# ============================================================

status: canonical
layer: model
domain: visual
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of visual models.

summary:
Visual models define canonical visual truth,
visual profile structure, expression-related state,
and composition-facing truth records.

scope:
visual profile
default expression
default background
visual style markers
visual truth linkage

boundary:
Visual models are not runtime session models.
Visual models are not host container state.

# ============================================================
# PERSONA VISUAL PROFILE MODEL
# ============================================================

status: canonical
layer: model
domain: visual
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_visual_profile

core_fields:
persona_visual_profile_id
persona_id
visual_profile_version
base_style_code
default_expression_code
default_background_code
theme_color
motif
signature_visual_summary
is_enabled
created_at
updated_at

rules:
Visual profile truth belongs to PersonaOS.
Visual profile is separate from runtime session state.

# ============================================================
# PERSONA VISUAL AVATAR MODEL
# ============================================================

status: canonical
layer: model
domain: visual
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_visual_avatar

purpose:
Defines the canonical avatar model
for persona visual appearance.

core_fields:
persona_visual_avatar_id
persona_id
avatar_code
avatar_status
avatar_summary
created_at
updated_at

rules:
Visual avatar belongs to the visual truth domain.
Visual avatar is not runtime session state.

# ============================================================
# PERSONA VISUAL ASSET MODEL
# ============================================================

status: canonical
layer: model
domain: visual
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_visual_asset

purpose:
Defines the canonical visual asset model
used to represent a persona visually.

core_fields:
persona_visual_asset_id
persona_id
asset_type
asset_status
asset_reference
created_at
updated_at

asset_type_examples:
image
model
animation
layer_asset

rules:
Visual assets belong to PersonaOS visual truth.
Visual asset references must remain explicit and traceable.

# ============================================================
# PERSONA ANIMATION PROFILE MODEL
# ============================================================

status: canonical
layer: model
domain: visual
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_animation_profile

purpose:
Defines the canonical animation profile
for persona visual behavior.

core_fields:
persona_animation_profile_id
persona_id
animation_profile_code
animation_status
animation_summary
created_at
updated_at

rules:
Animation profile belongs to visual truth.
Animation profile is separate from runtime execution state.

# ============================================================
# PERSONA VISUAL STATE MODEL
# ============================================================

status: canonical
layer: model
domain: visual
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_visual_state

purpose:
Defines the canonical visual state model
for current visual configuration of a persona.

core_fields:
persona_visual_state_id
persona_id
visual_state_code
visual_state_status
active_avatar_code
active_expression_code
active_animation_profile_code
created_at
updated_at

rules:
Visual state belongs to visual domain.
Visual state is not the same as general persona lifecycle state.

# ============================================================
# PERSONA VISUAL EXPRESSION MODEL
# ============================================================

status: canonical
layer: model
domain: visual
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_visual_expression

purpose:
Defines the canonical visual expression model
for visible emotion and expression presentation.

core_fields:
persona_visual_expression_id
persona_id
expression_code
expression_status
expression_summary
created_at
updated_at

rules:
Visual expression belongs to visual truth.
Visual expression may reference emotional meaning
but is not identical to emotion state itself.

# ============================================================
# 4. POLICY
# ============================================================

# ============================================================
# PERSONA VISUAL POLICY OVERVIEW
# ============================================================

status: canonical
layer: policy
domain: visual
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of visual policies.

summary:
Visual policy protects canonical visual truth,
composition semantics,
and explicit fallback-safe rendering behavior.

scope:
visual truth ownership
fallback safety
background handling policy
runtime rendering constraints

boundary:
Host applications do not redefine visual truth semantics.

# ============================================================
# PERSONA VISUAL TRUTH POLICY
# ============================================================

status: canonical
layer: policy
domain: visual
system: persona-os
owner: Boss
prepared_by: Zero

policy_rules:
visual truth belongs to PersonaOS
host-side rendering must not redefine visual truth
runtime session state must not overwrite canonical visual truth
visual expression must remain distinct from emotion state
visual asset selection must remain explicit and traceable

# ============================================================
# 5. INTERFACE
# ============================================================

# ============================================================
# PERSONA VISUAL INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
domain: visual
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of visual interfaces.

summary:
Visual interfaces define render request,
render response,
and render event contracts.

scope:
render request
render response
fallback event
render completion event

boundary:
Visual interface does not define host session ownership.


# ============================================================
# 6. REVIEW QUESTIONS
# ============================================================

1. Is visual truth clearly separated from runtime session state?
2. Is visual truth clearly separated from general persona state?
3. Are avatar / asset / animation / expression / visual_state placed correctly?
4. Is visual expression clearly separated from emotion state itself?
5. Is host-side rendering authority kept out of visual truth?
