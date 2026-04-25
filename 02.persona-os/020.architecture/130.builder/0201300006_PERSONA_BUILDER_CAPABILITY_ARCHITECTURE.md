# ============================================================
# PERSONA BUILDER CAPABILITY ARCHITECTURE
# ============================================================

status: canonical
scope: persona.builder.capability.architecture
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the official capability architecture
used by Persona Builder.


# CORE PRINCIPLE

Capability handling must separate:

- qualification
- skill
- specialty

These are not identical.


# QUALIFICATION RULE

Qualification master must be defined by CivilizationOS.

Persona Builder must select qualifications
from Civilization-defined qualification master.

PersonaOS may store Persona-owned qualification holding state,
visibility state, and verification-related state.

CivilizationOS owns:
- qualification definition
- issuer context
- qualification category
- validity rule

PersonaOS owns:
- Persona qualification holding state
- visibility state
- verification state
- Persona linkage


# SKILL RULE

Skill master must be defined by PersonaOS.

System-created Persona must be able to select skills
from PersonaOS skill master.

Persona skill truth belongs to PersonaOS.

Persona skill level must be fixed to:

- Level 1
- Level 2
- Level 3
- Level 4
- Level 5

skill level meaning:
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


# CIVILIZATION TRAINING RELATION

Civilization-side training, education, work experience,
and other learning events may trigger skill gain or skill growth.

However:
- CivilizationOS is the source of skill-acquisition opportunity
- PersonaOS is the source of skill definition master
- PersonaOS is the source of Persona-owned skill truth


# SPECIALTY RULE

Specialty is a descriptive capability surface used for:

- profile presentation
- role suitability summary
- marketplace explanation
- release summary

Specialty may be derived from:
- skill combination
- qualification combination
- human-authored summary


# FINAL DEFINITION

Persona Builder separates Civilization-defined qualifications,
PersonaOS-defined skills,
and profile-facing specialties,
while keeping Persona-owned capability truth in PersonaOS.

# EXACT READY ARCHITECTURE REINFORCEMENT

status_extension: author-reviewed-with-architecture-reinforcement
reinforced_at: 20260417_150617
reinforcement_scope:
- component boundary clarification
- flow boundary clarification
- persistence edge clarification
- failure path clarification

domain: builder

minimum_architecture_requirements:
- define entry component
- define coordination or orchestration component
- define persistence or state boundary
- define outbound interface or integration boundary
- define reject, retry, and terminal failure path where applicable

mandatory_flow_requirements:
- happy path
- reject or block path
- retry or recovery path where applicable
- dead-letter or terminal failure path where applicable

mandatory_boundary_requirements:
- no hidden write path
- no shortcut around validation or policy
- no silent external effect
- no terminal action without observable evidence

architecture_ready_note:
This reinforcement does not replace the authored architectural content above.
It marks the minimum exact-ready architectural items that must be explicit
before implementation contract fixation is considered complete.
