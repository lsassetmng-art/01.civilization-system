# ============================================================
# 005 STORY OVERVIEW
# ============================================================

status: canonical
layer: security
domain: story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the security overview of the story domain.

summary:
The story security layer defines authorization,
masking, branch protection, replay protection,
and fail-closed disclosure controls
for canonical live and historical stories.

security_intent:
Story can reveal private branches, internal strategy,
event-response logic, or user-specific progression context.
Security exists to ensure story disclosure is bounded,
historical replay is controlled,
and live story state cannot be inferred from restricted traces.

scope:
- story read authorization
- branch confidentiality
- replay/history access control
- masking of restricted story context
- prevention of live/history leakage
- trace and audit evidence preservation

security_rules:
- Story access must be authorized by scope and story class.
- Restricted branch context must be masked or blocked.
- Historical replay requires separate authorization from live story view.
- Story traces used for audit must not be exposed as live progression.
- Security failures must fail closed.
