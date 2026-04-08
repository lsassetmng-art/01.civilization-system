# ============================================================
# PERSONA OS SPLIT OR REASSIGN FAMILY REVIEW
# ============================================================

status: canonical
layer: meta
domain: model-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Reviews the four split_or_reassign models
from 030.model/010.canonical/080.knowledge.

# ============================================================
# 1. CURRENT TARGET DOMAINS
# ============================================================

snapshot target:
- /data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/090.snapshot

growth target:
- /data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/050.growth

event/history possible targets:
- /data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/040.memory
- /data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/030.state
- /data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/140.integration
- /data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/170.operations-support

# ============================================================
# 2. OLD PERSONA_EVENT
# ============================================================

# ============================================================
# MODEL
# ============================================================

model_id: 0300800009
model_name: persona_event

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents event experienced by persona.


# ============================================================
# DESCRIPTION
# ============================================================

Persona event represents significant occurrence
involving persona such as interaction,
decision or environmental change.


# ============================================================
# RELATIONS
# ============================================================

persona_event
 -> persona_memory
 -> experience
 -> emotion_trigger

# ============================================================
# 3. OLD PERSONA_SNAPSHOT
# ============================================================

# ============================================================
# MODEL
# ============================================================

model_id: 0300800010
model_name: persona_snapshot

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents state snapshot of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Persona snapshot represents recorded state
of persona at a specific time including
emotion, cognition and behavior.


# ============================================================
# RELATIONS
# ============================================================

persona_snapshot
 -> persona_state
 -> persona_memory

# ============================================================
# 4. OLD PERSONA_HISTORY
# ============================================================

# ============================================================
# MODEL
# ============================================================

model_id: 0300800011
model_name: persona_history

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents historical record of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Persona history represents chronological
record of major events and transitions
experienced by persona.


# ============================================================
# RELATIONS
# ============================================================

persona_history
 -> persona_event
 -> persona_snapshot

# ============================================================
# 5. OLD PERSONA_GROWTH
# ============================================================

# ============================================================
# MODEL
# ============================================================

model_id: 0300800013
model_name: persona_growth

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents long-term development of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Persona growth represents gradual change
in capability, knowledge and personality
over time.


# ============================================================
# RELATIONS
# ============================================================

persona_growth
 -> persona_experience
 -> learning
 -> capability

# ============================================================
# 6. CURRENT CANONICAL TARGET SIDE
# ============================================================

---- 050.growth ----
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/050.growth/0300500000_PERSONA_GROWTH_MODEL_INDEX.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/050.growth/0300500001_PERSONA_GROWTH_MODEL_OVERVIEW.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/050.growth/0300500002_PERSONA_GROWTH_MODEL.md

---- 090.snapshot ----
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/090.snapshot/0300900000_PERSONA_SNAPSHOT_MODEL_INDEX.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/090.snapshot/0300900001_PERSONA_SNAPSHOT_MODEL_OVERVIEW.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/090.snapshot/0300900002_PERSONA_SNAPSHOT_MODEL.md

---- 040.memory ----
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/040.memory/0300400000_PERSONA_MEMORY_MODEL_INDEX.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/040.memory/0300400001_PERSONA_MEMORY_MODEL_OVERVIEW.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/040.memory/0300400003_PERSONA_MEMORY_RETRIEVAL_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/040.memory/0300400004_PERSONA_MEMORY_DECAY_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/040.memory/0300400005_PERSONA_EXPERIENCE_MODEL.md

---- 170.operations-support ----
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/170.operations-support/0301700001_PERSONA_OPERATIONS_SUPPORT_MODEL_OVERVIEW.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/170.operations-support/0301700002_PERSONA_AUDIT_RECORD_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/170.operations-support/030170000_PERSONA_OPERATIONS_SUPPORT_MODEL_INDEX.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/170.operations-support/030170001_PERSONA_OPERATIONS_SUPPORT_MODEL_OVERVIEW.md

# ============================================================
# 7. EXPECTED FIRST-PASS DECISION
# ============================================================

| old_file | expected_target | expected_action |
|---|---|---|
| 0300800009_persona_event.md | 170.operations-support or 140.integration | split_or_reassign_review |
| 0300800010_persona_snapshot.md | 090.snapshot | reassign_to_snapshot_domain |
| 0300800011_persona_history.md | 040.memory or 030.state | split_or_reassign_review |
| 0300800013_persona_growth.md | 050.growth | reassign_to_growth_domain |
