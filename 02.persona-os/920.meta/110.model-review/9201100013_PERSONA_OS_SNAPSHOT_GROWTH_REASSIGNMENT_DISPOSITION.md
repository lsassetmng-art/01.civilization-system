# ============================================================
# PERSONA OS SNAPSHOT GROWTH REASSIGNMENT DISPOSITION
# ============================================================

status: canonical
layer: meta
domain: model-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the reassignment disposition
for old persona_snapshot and persona_growth models
from 030.model/010.canonical/080.knowledge.

# ============================================================
# 1. DISPOSITION
# ============================================================

| old_file | disposition | canonical_target | reason |
|---|---|---|---|
| 030.model/010.canonical/080.knowledge/0300800010_persona_snapshot.md | retire_old_after_reassignment | 030.model/090.snapshot/0300900002_PERSONA_SNAPSHOT_MODEL.md | time-point persona state record belongs directly to snapshot domain |
| 030.model/010.canonical/080.knowledge/0300800013_persona_growth.md | retire_old_after_reassignment | 030.model/050.growth/0300500002_PERSONA_GROWTH_MODEL.md | long-term persona change belongs directly to growth domain |

# ============================================================
# 2. REASSIGNMENT RULE
# ============================================================

retire_old_after_reassignment:
old file meaning is preserved by the canonical target domain,
so the old file can later be retired from the old canonical tree.

# ============================================================
# 3. TARGETS TO REVIEW IF NEEDED
# ============================================================

snapshot target:
030.model/090.snapshot/0300900002_PERSONA_SNAPSHOT_MODEL.md

growth target:
030.model/050.growth/0300500002_PERSONA_GROWTH_MODEL.md

# ============================================================
# 4. NEXT STEP
# ============================================================

Next work:
review remaining old canonical families after 080.knowledge,
especially:

110.security
130.integration
140.visual
