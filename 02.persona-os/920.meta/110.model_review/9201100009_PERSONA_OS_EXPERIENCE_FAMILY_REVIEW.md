# ============================================================
# PERSONA OS EXPERIENCE FAMILY REVIEW
# ============================================================

status: canonical
layer: meta
domain: model-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Reviews whether experience-family models
should remain under memory domain.

# ============================================================
# 1. REVIEW TARGETS
# ============================================================

current canonical:
- /data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md

old candidates:
- /data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800003_experience.md
- /data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800012_persona_experience.md
- /data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800018_persona_experience_archive.md

# ============================================================
# 2. CURRENT CANONICAL MEMORY MODEL
# ============================================================

# ============================================================
# PERSONA MEMORY MODEL
# ============================================================

status: canonical
layer: model
domain: memory
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_memory

purpose:
Defines the canonical memory truth record for a persona.

core_fields:
persona_memory_id
persona_id
memory_scope
memory_status
memory_version
short_term_summary
working_memory_summary
long_term_summary
persistent_memory_policy
last_compacted_at
created_at
updated_at

memory_scope_examples:
short_term
working
long_term
persistent-approved

rules:
Memory truth belongs to PersonaOS.
Not all observed information may become persistent memory.
Persistent memory must follow explicit policy.

# ============================================================
# 3. OLD EXPERIENCE
# ============================================================

# ============================================================
# MODEL
# ============================================================

model_id: 0300800003
model_name: experience

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents experiential knowledge.


# ============================================================
# DESCRIPTION
# ============================================================

Experience represents knowledge acquired
through events and interactions.


# ============================================================
# RELATIONS
# ============================================================

experience
 -> memory
 -> learning
 -> behavior

# ============================================================
# 4. OLD PERSONA_EXPERIENCE
# ============================================================

# ============================================================
# MODEL
# ============================================================

model_id: 0300800012
model_name: persona_experience

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents interpreted experience.


# ============================================================
# DESCRIPTION
# ============================================================

Persona experience represents internalized
interpretation of events and interactions.


# ============================================================
# RELATIONS
# ============================================================

persona_experience
 -> persona_memory
 -> learning

# ============================================================
# 5. OLD PERSONA_EXPERIENCE_ARCHIVE
# ============================================================

# ============================================================
# MODEL
# ============================================================

model_id: 0300800018
model_name: persona_experience

domain: 0080.knowledge
system: 03.persona_os

# PURPOSE
Represents interpreted experience.

# DESCRIPTION
Persona experience represents
meaning extracted from past events.

# RELATIONS
persona_experience
 -> persona_memory
 -> learning

# ============================================================
# 6. REVIEW QUESTIONS
# ============================================================

1. Is experience already covered by canonical memory truth?
2. Does persona_experience deserve its own canonical submodel?
3. Does persona_experience_archive deserve its own archive submodel?
4. Or should all three be absorbed into PERSONA_MEMORY_MODEL only?
