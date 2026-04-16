# ============================================================
# STREAMING OS AUDIENCE EVENT UI ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: audience-event-ui
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the UI architecture
for audience event views and handling
in StreamingOS.

# ============================================================
# 2. UI GOAL
# ============================================================

The UI must help operators understand
what the audience is doing during and after sessions.

It must support visibility into:
- comments
- reactions
- participation events
- moderation-related events
- performer-targeted affinity signals
- tip-linked reactions when relevant

# ============================================================
# 3. MAIN SCREEN BLOCKS
# ============================================================

Recommended blocks:
- event timeline
- event type filter
- performer affinity panel
- moderation status panel
- session context summary
- event detail drawer
- governance action shortcuts

# ============================================================
# 4. EVENT TIMELINE
# ============================================================

The timeline should display:
- event timestamp
- event type
- event actor summary if relevant
- message or reaction preview
- performer target if relevant
- moderation flag if relevant

# ============================================================
# 5. EVENT TYPE FILTER
# ============================================================

Supported filters may include:
- all
- comment
- reaction
- audience_join
- audience_leave
- moderation_flag
- tip_related
- performer_affinity
- system_event

# ============================================================
# 6. PERFORMER AFFINITY PANEL
# ============================================================

The UI should summarize:
- which performer is receiving attention
- tip-attributed affinity
- reaction volume by performer
- session-level audience focus trends

This is analytics and interaction meaning only.
It does not redefine ownership.

# ============================================================
# 7. MODERATION STATUS PANEL
# ============================================================

The UI should surface:
- flagged comments
- blocked audience interactions
- review pending events
- hidden events
- policy issue indicators

# ============================================================
# 8. GOVERNANCE ACTION SHORTCUTS
# ============================================================

The UI may allow controlled actions such as:
- open review
- hide event from public view
- mark as resolved
- escalate to governance
- attach to session issue

# ============================================================
# 9. EVENT DETAIL DRAWER
# ============================================================

The detail view should show:
- full event content
- actor reference if available
- session linkage
- performer linkage if any
- moderation history
- governance reference if any

# ============================================================
# 10. CANONICAL FIXED STATEMENT
# ============================================================

The audience event UI
shall present audience interaction meaning,
performer affinity meaning,
and moderation meaning
without conflating them with stream ownership.

