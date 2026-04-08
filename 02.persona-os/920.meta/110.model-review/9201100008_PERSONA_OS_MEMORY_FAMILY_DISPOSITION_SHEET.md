# ============================================================
# PERSONA OS MEMORY FAMILY DISPOSITION SHEET
# ============================================================

status: canonical
layer: meta
domain: model-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the final disposition
for the first reviewed memory-family models
from 030.model/010.canonical/080.knowledge.

# ============================================================
# 1. DISPOSITION
# ============================================================

| old_file | disposition | canonical_target | reason |
|---|---|---|---|
| 030.model/010.canonical/080.knowledge/0300800002_memory.md | retire_old_after_absorption | 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md | current canonical memory model is stronger and broader |
| 030.model/010.canonical/080.knowledge/0300800008_persona_memory.md | retire_old_after_absorption | 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md | current canonical memory model already covers persona-scoped memory truth |
| 030.model/010.canonical/080.knowledge/0300800015_memory_retrieval.md | add_as_new_canonical_submodel | 030.model/040.memory/0300400003_PERSONA_MEMORY_RETRIEVAL_MODEL.md | retrieval concept is valid and not yet explicit enough in canonical memory |
| 030.model/010.canonical/080.knowledge/0300800016_memory_decay.md | add_as_new_canonical_submodel | 030.model/040.memory/0300400004_PERSONA_MEMORY_DECAY_MODEL.md | decay concept is valid and not yet explicit enough in canonical memory |

# ============================================================
# 2. DECISION RULE
# ============================================================

retire_old_after_absorption:
old file meaning is preserved by stronger canonical model

add_as_new_canonical_submodel:
old file contributes a valid missing canonical submodel

# ============================================================
# 3. NEXT TARGETS
# ============================================================

Next review candidates under 080.knowledge:

0300800001_knowledge.md
0300800003_experience.md
0300800012_persona_experience.md
0300800017_persona_memory_archive.md
0300800018_persona_experience_archive.md

split_or_reassign candidates remain separate:

0300800009_persona_event.md
0300800010_persona_snapshot.md
0300800011_persona_history.md
0300800013_persona_growth.md
