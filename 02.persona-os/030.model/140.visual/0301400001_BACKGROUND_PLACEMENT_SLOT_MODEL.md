# ============================================================
# BACKGROUND PLACEMENT SLOT MODEL
# ============================================================

status: canonical
scope: persona.visual.background.placement.slot.model
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the canonical placement slot model
owned by background-side visual assets.

This model allows background assets
to define where a Persona may be placed
without making background part of Persona base visual truth.


# ROLE

A background placement slot defines
a valid placement position and framing hint
for runtime composition.

Background assets may be distributed or sold independently,
including through Marketplace-facing distribution surfaces.


# PRIMARY KEY

- background_placement_slot_id


# NATURAL KEY

- background_id
- slot_code


# FIELDS

- background_placement_slot_id
- background_id
- slot_code
- anchor_x
- anchor_y
- default_scale
- z_hint
- allowed_pose_type
- frame_type
- safe_area_left
- safe_area_top
- safe_area_right
- safe_area_bottom
- created_at
- updated_at


# SLOT CODE EXAMPLES

- center_stand
- left_stand
- right_stand
- desk_front
- desk_left
- sofa_left
- sofa_right
- bed_side
- counter_center
- stage_center


# RULES

- placement slots belong to background-side assets
- placement slot definition is independent from Persona truth
- placement slots may be used by runtime only when the background is available on the current surface
- placement slots do not redefine Persona base visual identity


# FINAL DEFINITION

Background assets may define placement slots
that specify valid Persona placement points
for runtime composition.
