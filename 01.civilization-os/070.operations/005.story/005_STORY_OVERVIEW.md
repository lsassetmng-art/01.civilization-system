# ============================================================
# 005 STORY OVERVIEW
# ============================================================

status: canonical
layer: operations
domain: story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the operational overview of the story domain.

summary:
The story operations layer governs stage activation,
branch review, pause and completion handling,
cancellation, replay preparation, correction handling,
and audit-safe historical preservation for story records.

operations_intent:
Story affects meaning and progression.
Operations exists so that story transitions are deliberate,
reviewable, historically preserved, and safe against live/history confusion.

scope:
- stage activation and review
- branch management
- pause and completion handling
- cancellation handling
- replay preparation
- correction and containment
- audit-safe historical preservation

operations_rules:
- Active story stage changes must be traceable.
- Live and replay states must remain distinct operationally.
- Cancelled or completed stories must move to historical-safe handling.
- Story corrections must preserve prior stage history.
