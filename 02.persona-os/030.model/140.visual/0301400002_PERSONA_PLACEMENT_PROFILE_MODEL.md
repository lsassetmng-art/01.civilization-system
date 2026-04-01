# ============================================================
# PERSONA PLACEMENT PROFILE MODEL
# ============================================================

status: canonical
scope: persona.visual.placement.profile.model
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the canonical placement profile model
owned by PersonaOS.

This model does not hold background assets themselves.
It only defines how a Persona prefers to be placed
against valid background placement slots.


# PRIMARY KEY

- persona_placement_profile_id


# NATURAL KEY

- persona_id


# FIELDS

- persona_placement_profile_id
- persona_id
- preferred_pose_type
- preferred_frame_type
- preferred_scale_profile
- offset_x
- offset_y
- vertical_bias
- horizontal_bias
- created_at
- updated_at


# PREFERRED POSE TYPE EXAMPLES

- standing
- sitting
- desk_sitting
- sofa_sitting
- stage_standing


# PREFERRED FRAME TYPE EXAMPLES

- full_body
- knee_up
- waist_up
- bust_up
- close_up


# SCALE PROFILE EXAMPLES

- small
- normal
- large


# RULES

- Persona placement profile does not own background truth
- Persona placement profile does not choose market ownership of background
- Persona placement profile defines only placement preference and adjustment
- Runtime may combine this profile with background placement slots


# FINAL DEFINITION

Persona placement profile defines
how a Persona should be positioned and framed
when composed against valid background placement slots.
