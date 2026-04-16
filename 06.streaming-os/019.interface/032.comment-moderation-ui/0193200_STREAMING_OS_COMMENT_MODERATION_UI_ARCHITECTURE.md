# ============================================================
# STREAMING OS COMMENT MODERATION UI ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: comment-moderation-ui
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the UI architecture
for comment moderation in StreamingOS.

# ============================================================
# 2. UI GOAL
# ============================================================

The UI must support:
- flagged comment review
- hidden comment review
- comment removal action
- comment restriction action
- moderation reason visibility
- moderation history visibility

# ============================================================
# 3. MAIN SCREEN BLOCKS
# ============================================================

Recommended blocks:
- flagged comments list
- comment detail panel
- moderation action panel
- moderation reason panel
- moderation history panel
- restore action panel

# ============================================================
# 4. CANONICAL FIXED STATEMENT
# ============================================================

The comment moderation UI
shall provide explicit moderation handling
for comment-side user interaction
without collapsing moderation action
into silent deletion.

