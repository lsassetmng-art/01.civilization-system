# ============================================================
# STREAMING OS SUBSCRIPTION HISTORY AND PLAYLIST FLOW
# ============================================================

status: canonical-draft
system: streaming-os
domain: subscription-history-and-playlist-flow
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FLOW PURPOSE
# ============================================================

This flow defines how viewer continuity structures progress
inside StreamingOS.

# ============================================================
# 2. FOLLOW FLOW
# ============================================================

Recommended follow flow:

viewer opens channel/creator/broadcaster surface
-> follow or subscribe action taken
-> follow state created or updated
-> notification eligibility updated
-> future live/publish event relation preserved

# ============================================================
# 3. HISTORY FLOW
# ============================================================

Recommended history flow:

viewer watches content
-> watch history entry created or updated
-> history visibility becomes available
-> later re-entry uses prior watch relation

# ============================================================
# 4. PLAYLIST FLOW
# ============================================================

Recommended playlist flow:

viewer creates playlist
-> playlist named
-> items added
-> order maintained
-> playlist saved for later viewing

# ============================================================
# 5. WATCH QUEUE FLOW
# ============================================================

Recommended queue flow:

viewer adds content to queue
-> temporary order established
-> next-up state updated
-> queue consumed / reordered / cleared later

# ============================================================
# 6. CANONICAL FIXED STATEMENT
# ============================================================

This flow shall preserve the distinction between:
- follow/subscription continuity
- watch-history continuity
- saved playlist continuity
- temporary watch queue continuity

