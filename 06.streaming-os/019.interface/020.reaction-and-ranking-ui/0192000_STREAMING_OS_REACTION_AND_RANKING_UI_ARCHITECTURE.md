# ============================================================
# STREAMING OS REACTION AND RANKING UI ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: reaction-and-ranking-ui
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the UI architecture
for native audience reactions
and ranking views in StreamingOS.

# ============================================================
# 2. UI GOAL
# ============================================================

The UI must support:
- visible native reaction controls
- visible audience reaction summaries
- distinguishable like / dislike / favorite meanings
- ranking exploration by target and period
- broadcaster popularity visibility

# ============================================================
# 3. MAIN SCREEN BLOCKS
# ============================================================

Recommended blocks:
- reaction control bar
- reaction summary panel
- audience interaction panel
- ranking tab group
- ranking target filter
- ranking period filter
- ranking list
- ranking detail drawer

# ============================================================
# 4. REACTION CONTROL BAR
# ============================================================

The reaction bar should support:
- like
- dislike
- favorite
- comment entry

These controls should remain visible
as native platform controls.

# ============================================================
# 5. REACTION SUMMARY PANEL
# ============================================================

The summary panel should show:
- total likes
- total dislikes
- total favorites
- total comments
- total rewatch signals if relevant

# ============================================================
# 6. RANKING TAB GROUP
# ============================================================

The UI should support ranking target tabs for:
- videos
- streams
- broadcasters

# ============================================================
# 7. RANKING PERIOD FILTER
# ============================================================

The UI should support period filters for:
- daily
- monthly
- yearly
- overall

# ============================================================
# 8. RANKING LIST
# ============================================================

The ranking list should show:
- ranking position
- target display name
- trend indicator if relevant
- visible summary signals
- period label

# ============================================================
# 9. RANKING DETAIL DRAWER
# ============================================================

The detail view may show:
- ranking score summary
- reaction summary
- watch summary
- monetization summary
- popularity continuity hints

The exact score formula need not be exposed fully.

# ============================================================
# 10. CANONICAL FIXED STATEMENT
# ============================================================

The reaction and ranking UI
shall expose native StreamingOS audience reactions
and native StreamingOS ranking views
for videos,
streams,
and broadcasters.

Like,
dislike,
favorite,
and comment
shall remain distinguishable visible controls.

Ranking periods shall include:
- daily
- monthly
- yearly
- overall

