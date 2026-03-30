# ============================================================
# PERSONA SKILL MASTER MODEL
# ============================================================

status: canonical
scope: persona.skill.master.model
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the canonical skill master model of PersonaOS.

Skill definition truth belongs to PersonaOS.

System-created Personas must be able to select skills
from this skill master.


# ROLE

Persona skill master defines:

- skill identity
- skill code
- skill name
- skill category
- skill description
- skill usage semantics
- release/profile exposure policy defaults


# PRIMARY KEY

- persona_skill_id


# NATURAL KEY

- skill_code


# FIELDS

- persona_skill_id
- skill_code
- skill_name
- skill_category
- skill_description
- runtime_usage_flag
- public_profile_default_visibility
- marketplace_default_visibility
- active_flag
- created_at
- updated_at


# SKILL CATEGORY EXAMPLES

- communication
- clerical
- technical
- creative
- management
- sales
- caregiving
- education
- analysis
- physical


# LEVEL RULE

Skill proficiency level itself is not defined in master rows.
It is defined in Persona-owned skill holding rows.

Allowed level range is fixed to:

- Level 1
- Level 2
- Level 3
- Level 4
- Level 5


# FINAL DEFINITION

PersonaOS owns the canonical skill master.
Civilization-side training may trigger skill gain,
but skill definition truth remains in PersonaOS.
