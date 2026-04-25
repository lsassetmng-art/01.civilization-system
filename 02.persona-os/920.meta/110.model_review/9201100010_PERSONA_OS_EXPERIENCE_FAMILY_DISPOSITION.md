# ============================================================
# PERSONA OS EXPERIENCE FAMILY DISPOSITION
# ============================================================

status: canonical
layer: meta
domain: model-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the final disposition
for reviewed experience-family models
from 030.model/010.canonical/080.knowledge.

# ============================================================
# 1. DISPOSITION
# ============================================================

| old_file | disposition | canonical_target | reason |
|---|---|---|---|
| 030.model/010.canonical/080.knowledge/0300800003_experience.md | retire_old_after_absorption | 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md | abstract experience meaning is sufficiently absorbed into memory domain |
| 030.model/010.canonical/080.knowledge/0300800012_persona_experience.md | add_as_new_canonical_submodel | 030.model/040.memory/0300400005_PERSONA_EXPERIENCE_MODEL.md | interpreted persona-scoped experience deserves explicit canonical submodel |
| 030.model/010.canonical/080.knowledge/0300800018_persona_experience_archive.md | hold_for_later_archive_review | none_for_now | archive layer should wait until persona_experience model stabilizes |

# ============================================================
# 2. DECISION RULE
# ============================================================

retire_old_after_absorption:
old file meaning is sufficiently covered by stronger canonical structure

add_as_new_canonical_submodel:
old file contributes a valid missing canonical submodel

hold_for_later_archive_review:
concept may be valid later, but is not required in first-wave canonicalization
