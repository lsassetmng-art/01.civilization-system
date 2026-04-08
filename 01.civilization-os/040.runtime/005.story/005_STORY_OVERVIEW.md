# ============================================================
# 005 STORY OVERVIEW
# ============================================================

status: canonical
layer: runtime
domain: story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the runtime overview of the story domain.

summary:
The story runtime resolves active stories,
selects valid current stages,
applies branching and progression rules,
preserves historical story chains,
and delivers story context safely to consumers.

runtime_intent:
Architecture defines what story means.
Runtime defines what story is currently active,
what stage is effective,
which branch is valid,
and how historical replay is separated from live story.

runtime_rules:
- Runtime must resolve story from canonical scope.
- Runtime must validate current stage before delivery.
- Runtime must separate live story from historical replay.
- Runtime must not expose replay-only stages as live stages.
- Runtime must emit explicit failure when branch conditions are unmet.
