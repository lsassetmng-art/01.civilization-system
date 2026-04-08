# ============================================================
# 120 005 STORY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Provides the implementation summary for domain 005.story.

summary:
This file summarizes the implementation responsibilities of story:
- stage selection
- branch evaluation
- public/internal projection separation
- replay/history reading
- correction lineage preservation
- trace emission

included_core_files:
- 1200050001_STORY_CORE_IMPLEMENTATION.md
- 1200050002_WORLD_STORY_IMPLEMENTATION.md
- 1200050003_PLAYER_STORY_IMPLEMENTATION.md
- 1200050004_EVENT_STORY_IMPLEMENTATION.md
- 1200050005_PROGRESS_STORY_IMPLEMENTATION.md

implementation_rules:
- live and replay paths must remain separate
- branch filtering must happen before delivery
- correction must preserve prior stage lineage
- public projection must not leak restricted branch detail
