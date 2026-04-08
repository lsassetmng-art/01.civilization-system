# ============================================================
# 005 STORY OVERVIEW
# ============================================================

status: canonical
layer: flow
domain: story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the flow overview of the story domain.

summary:
The story flow layer governs how stories are requested,
how stages are selected,
how branches are evaluated,
how replay is separated from current progression,
and how rejection or historical delivery paths work.

flow_intent:
Architecture defines story structure.
Runtime resolves story state.
Flow defines the order in which stage, branch,
history, and replay decisions must occur.

flow_rules:
- Story flow must begin from canonical scope.
- Stage selection must happen before consumer delivery.
- Branch checks must happen before stage confirmation.
- Replay and live paths must remain separated.
- Completed and cancelled stories must go through historical paths.
