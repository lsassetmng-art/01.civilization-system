# ============================================================
# PERSONA OS SPLIT OR REASSIGN DISPOSITION
# ============================================================

status: canonical
layer: meta
domain: model-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the final disposition
for reviewed split_or_reassign models
from 030.model/010.canonical/080.knowledge.

# ============================================================
# 1. DISPOSITION
# ============================================================

| old_file | disposition | canonical_target | reason |
|---|---|---|---|
| 030.model/010.canonical/080.knowledge/0300800009_persona_event.md | reassign_to_state_domain | 030.model/030.state | experienced occurrence is closer to state-transition/event history than memory truth or ops log |
| 030.model/010.canonical/080.knowledge/0300800010_persona_snapshot.md | reassign_to_snapshot_domain | 030.model/090.snapshot | time-point recorded state matches snapshot domain directly |
| 030.model/010.canonical/080.knowledge/0300800011_persona_history.md | reassign_to_state_domain | 030.model/030.state | chronological record of major transitions belongs closer to state/history than memory truth |
| 030.model/010.canonical/080.knowledge/0300800013_persona_growth.md | reassign_to_growth_domain | 030.model/050.growth | long-term change belongs directly to growth domain |

# ============================================================
# 2. NEXT CANONICAL ADD CANDIDATES
# ============================================================

Potential new state-side canonical candidates:

- PERSONA_EVENT_MODEL
- PERSONA_HISTORY_MODEL

Potential new direct reassignment targets already present:

- 030.model/090.snapshot/0300900002_PERSONA_SNAPSHOT_MODEL.md
- 030.model/050.growth/0300500002_PERSONA_GROWTH_MODEL.md

# ============================================================
# 3. DECISION RULE
# ============================================================

reassign_to_snapshot_domain:
old concept is already naturally owned by snapshot domain

reassign_to_growth_domain:
old concept is already naturally owned by growth domain

reassign_to_state_domain:
old concept is closer to lifecycle/state transition tracking
than to memory truth, integration contract, or operations log
