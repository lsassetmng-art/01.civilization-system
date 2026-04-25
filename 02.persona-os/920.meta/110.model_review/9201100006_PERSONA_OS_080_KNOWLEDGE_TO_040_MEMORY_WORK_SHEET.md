# ============================================================
# PERSONA OS 080.KNOWLEDGE TO 040.MEMORY WORK SHEET
# ============================================================

status: canonical
layer: meta
domain: model-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the focused work sheet for absorbing
030.model/010.canonical/080.knowledge into 030.model/040.memory.

# ============================================================
# 1. MERGE_OR_ABSORB
# ============================================================

| old_file | target_domain | target_action |
|---|---|---|
| 030.model/010.canonical/080.knowledge/0300800002_memory.md | 030.model/040.memory | absorb_into_memory_domain |
| 030.model/010.canonical/080.knowledge/0300800008_persona_memory.md | 030.model/040.memory | absorb_into_memory_domain |
| 030.model/010.canonical/080.knowledge/0300800014_memory_index.md | 030.model/040.memory | absorb_or_merge_index_meaning |
| 030.model/010.canonical/080.knowledge/0300800015_memory_retrieval.md | 030.model/040.memory | absorb_as_memory_submodel |
| 030.model/010.canonical/080.knowledge/0300800016_memory_decay.md | 030.model/040.memory | absorb_as_memory_submodel |
| 030.model/010.canonical/080.knowledge/0300800017_persona_memory_archive.md | 030.model/040.memory | absorb_as_memory_archive_submodel |

# ============================================================
# 2. MERGE_OR_SPLIT
# ============================================================

| old_file | target_domain | target_action |
|---|---|---|
| 030.model/010.canonical/080.knowledge/0300800001_knowledge.md | 030.model/040.memory | merge_or_split_as_memory_knowledge |
| 030.model/010.canonical/080.knowledge/0300800003_experience.md | 030.model/040.memory | merge_or_split_as_memory_experience |
| 030.model/010.canonical/080.knowledge/0300800004_knowledge_graph.md | 030.model/040.memory | merge_or_split_as_memory_knowledge_graph |
| 030.model/010.canonical/080.knowledge/0300800005_knowledge_fact.md | 030.model/040.memory | merge_or_split_as_memory_knowledge_fact |
| 030.model/010.canonical/080.knowledge/0300800006_knowledge_rule.md | 030.model/040.memory | merge_or_split_as_memory_knowledge_rule |
| 030.model/010.canonical/080.knowledge/0300800007_knowledge_source.md | 030.model/040.memory | merge_or_split_as_memory_knowledge_source |
| 030.model/010.canonical/080.knowledge/0300800012_persona_experience.md | 030.model/040.memory | merge_or_split_as_persona_experience |
| 030.model/010.canonical/080.knowledge/0300800018_persona_experience_archive.md | 030.model/040.memory | merge_or_split_as_persona_experience_archive |

# ============================================================
# 3. SPLIT_OR_REASSIGN
# ============================================================

| old_file | current_suspected_target | target_action |
|---|---|---|
| 030.model/010.canonical/080.knowledge/0300800009_persona_event.md | 030.model/040.memory + other domain | reassign_out_of_memory_or_split |
| 030.model/010.canonical/080.knowledge/0300800010_persona_snapshot.md | 030.model/090.snapshot | reassign_to_snapshot_domain |
| 030.model/010.canonical/080.knowledge/0300800011_persona_history.md | 030.model/040.memory or 030.model/030.state | split_or_reassign_after review |
| 030.model/010.canonical/080.knowledge/0300800013_persona_growth.md | 030.model/050.growth | reassign_to_growth_domain |

# ============================================================
# 4. SAFE WORK ORDER
# ============================================================

Step 1:
review existing files already under 030.model/040.memory

Step 2:
decide whether new submodels are needed under memory

Step 3:
absorb clear memory-family models first

Step 4:
review split_or_reassign files separately

# ============================================================
# 5. FIRST REVIEW TARGETS
# ============================================================

Review first:
- 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md
- 030.model/010.canonical/080.knowledge/0300800002_memory.md
- 030.model/010.canonical/080.knowledge/0300800008_persona_memory.md
- 030.model/010.canonical/080.knowledge/0300800015_memory_retrieval.md
- 030.model/010.canonical/080.knowledge/0300800016_memory_decay.md

# ============================================================
# 6. DECISION RULE
# ============================================================

- if old file meaning is already covered -> merge and retire old
- if old file adds valid missing structure -> add new canonical model under 040.memory
- if old file crosses domains -> reassign or split
