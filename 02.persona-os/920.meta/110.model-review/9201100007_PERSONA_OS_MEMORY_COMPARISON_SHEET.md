# ============================================================
# PERSONA OS MEMORY COMPARISON SHEET
# ============================================================

status: canonical
layer: meta
domain: model-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Compares current canonical memory files
against old 080.knowledge candidates.

# ============================================================
# 1. CURRENT CANONICAL MEMORY FILES
# ============================================================

/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/040.memory/0300400000_PERSONA_MEMORY_MODEL_INDEX.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/040.memory/0300400001_PERSONA_MEMORY_MODEL_OVERVIEW.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md

# ============================================================
# 2. OLD 080.KNOWLEDGE FILES
# ============================================================

/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800001_knowledge.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800002_memory.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800003_experience.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800004_knowledge_graph.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800005_knowledge_fact.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800006_knowledge_rule.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800007_knowledge_source.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800008_persona_memory.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800009_persona_event.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800010_persona_snapshot.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800011_persona_history.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800012_persona_experience.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800013_persona_growth.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800014_memory_index.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800015_memory_retrieval.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800016_memory_decay.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800017_persona_memory_archive.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/080.knowledge/0300800018_persona_experience_archive.md

# ============================================================
# 3. DIRECT REVIEW PAIRS
# ============================================================

| canonical_side | old_side | expected_decision |
|---|---|---|
| 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md | 030.model/010.canonical/080.knowledge/0300800002_memory.md | merge_review |
| 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md | 030.model/010.canonical/080.knowledge/0300800008_persona_memory.md | merge_review |
| 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md | 030.model/010.canonical/080.knowledge/0300800015_memory_retrieval.md | add_submodel_or_merge |
| 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md | 030.model/010.canonical/080.knowledge/0300800016_memory_decay.md | add_submodel_or_merge |
| 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md | 030.model/010.canonical/080.knowledge/0300800017_persona_memory_archive.md | add_archive_submodel_or_merge |
| 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md | 030.model/010.canonical/080.knowledge/0300800001_knowledge.md | split_review |
| 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md | 030.model/010.canonical/080.knowledge/0300800003_experience.md | split_review |
| 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md | 030.model/010.canonical/080.knowledge/0300800012_persona_experience.md | split_review |
| 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md | 030.model/010.canonical/080.knowledge/0300800018_persona_experience_archive.md | split_review |
| 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md | 030.model/010.canonical/080.knowledge/0300800010_persona_snapshot.md | reassign_to_snapshot |
| 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md | 030.model/010.canonical/080.knowledge/0300800013_persona_growth.md | reassign_to_growth |

# ============================================================
# 4. SAFE DECISION RULE
# ============================================================

- merge_review: old file likely covered by current memory model
- add_submodel_or_merge: add only if current memory model lacks the concept
- split_review: concept may belong partly in memory and partly elsewhere
- reassign_to_snapshot: do not keep under memory
- reassign_to_growth: do not keep under memory

# ============================================================
# 5. NEXT STEP
# ============================================================

Open and compare these first:
- 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md
- 030.model/010.canonical/080.knowledge/0300800002_memory.md
- 030.model/010.canonical/080.knowledge/0300800008_persona_memory.md
- 030.model/010.canonical/080.knowledge/0300800015_memory_retrieval.md
- 030.model/010.canonical/080.knowledge/0300800016_memory_decay.md
