# ============================================================
# STREAMING OS LIVE WATCH AND WAITING ROOM UI ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: live-watch-and-waiting-room-ui
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the UI architecture
for live watch and waiting-room behavior in StreamingOS.

# ============================================================
# 2. UI GOAL
# ============================================================

The UI must support:
- pre-live waiting room
- scheduled live information
- countdown / start expectation visibility
- live video surface
- live chat or live reaction visibility
- live tipping visibility
- live moderation visibility where relevant

# ============================================================
# 3. MAIN SCREEN BLOCKS
# ============================================================

Recommended blocks:
- waiting room summary
- schedule / countdown panel
- live video panel
- live reaction bar
- live chat panel
- live tipping panel
- moderation notice panel

# ============================================================
# 4. CANONICAL FIXED STATEMENT
# ============================================================

The live watch and waiting room UI
shall distinguish waiting-room behavior
from active live-watch behavior
as separate viewer-facing states.

