# ============================================================
# PERSONA SKILL HOLDING MODEL
# ============================================================

status: canonical
scope: persona.skill.holding.model
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the canonical Persona-owned skill holding model.

This model represents which skills a Persona holds,
at what level, and from which acquisition source.


# PRIMARY KEY

- persona_skill_holding_id


# NATURAL KEY

- persona_id
- persona_skill_id


# FIELDS

- persona_skill_holding_id
- persona_id
- persona_skill_id
- skill_level
- acquisition_source_type
- acquisition_source_ref
- verification_status
- runtime_usage_flag
- public_visibility
- specialty_note
- created_at
- updated_at


# SKILL LEVEL ENUM

- Level 1
- Level 2
- Level 3
- Level 4
- Level 5


# SKILL LEVEL MEANING

Level 1:
  basic knowledge / initial support possible

Level 2:
  basic operation possible

Level 3:
  practical operational level

Level 4:
  advanced level / applied support possible

Level 5:
  expert level / high capability execution possible


# ACQUISITION SOURCE TYPE EXAMPLES

- system_assign
- training
- education
- work_experience
- import
- manual_reviewed


# VERIFICATION STATUS EXAMPLES

- self_declared
- system_assigned
- verified
- externally_verified


# RULE

Civilization-side training, education, work experience,
and learning events may trigger skill gain or growth.

However,
Persona-owned skill truth must remain in PersonaOS.


# FINAL DEFINITION

Persona skill holding represents Persona-owned capability state,
linked to PersonaOS skill master,
with fixed proficiency levels from Level 1 to Level 5.
