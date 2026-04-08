# ============================================================
# PERSONA VISUAL SURFACE PROFILE MODEL
# ============================================================

status: canonical
layer: model
domain: visual-runtime
owner: Boss
prepared_by: Zero

model_name: persona_visual_surface_profile

# ============================================================
# 1. PURPOSE
# ============================================================

persona_visual_surface_profile defines
the canonical data model for a render surface contract.


# ============================================================
# 2. CORE FIELDS
# ============================================================

surface_profile_id
surface_code
surface_class
version
width_policy
height_policy
aspect_policy
safe_area_policy
persona_anchor_policy
background_visibility_policy
animation_budget_policy
interaction_policy
fallback_policy
is_enabled
created_at
updated_at


# ============================================================
# 3. SEMANTIC RULES
# ============================================================

surface_code:
stable application-independent identifier

surface_class:
canonical class name used by runtime logic

width_policy / height_policy:
logical size rules, not host widget dimensions

persona_anchor_policy:
defines anchor baseline for composition

background_visibility_policy:
defines whether and how background is rendered

animation_budget_policy:
defines allowed runtime animation intensity and cost


# ============================================================
# 4. MODEL RULES
# ============================================================

1. Surface profile is environment-neutral.
2. Surface profile is reusable across hosts.
3. Surface profile must be versioned.
4. Surface profile must not embed host implementation types.
