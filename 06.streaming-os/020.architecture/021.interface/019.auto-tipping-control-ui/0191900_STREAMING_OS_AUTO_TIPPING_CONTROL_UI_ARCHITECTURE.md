# ============================================================
# STREAMING OS AUTO TIPPING CONTROL UI ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: auto-tipping-control-ui
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the UI architecture
for observing and controlling
Ai(human) emotional auto tipping in StreamingOS.

# ============================================================
# 2. UI GOAL
# ============================================================

The UI must make emotional auto tipping explainable.

It must help operators understand:
- why auto tipping can occur
- why auto tipping stopped
- how emotional reactions changed
- how limits are being consumed
- how balance and restrictions affect behavior

# ============================================================
# 3. MAIN SCREEN BLOCKS
# ============================================================

Recommended blocks:
- subject summary card
- emotion state panel
- target split panel
- limit state panel
- balance state panel
- restriction state panel
- stop flag panel
- auto tip history panel

# ============================================================
# 4. SUBJECT SUMMARY CARD
# ============================================================

The summary should show:
- Ai(human) identity
- Persona linkage
- affiliation context
- company affiliation if relevant
- minor-equivalent flag if relevant
- auto tipping enabled / disabled status

# ============================================================
# 5. EMOTION STATE PANEL
# ============================================================

The emotion panel should show:
- impression intensity
- empathy intensity
- support intention
- current trend:
  rising / stable / falling

# ============================================================
# 6. TARGET SPLIT PANEL
# ============================================================

The UI should distinguish:
- reaction toward the video
- reaction toward the broadcaster

This distinction must remain visible
because tipping may depend on different targets.

# ============================================================
# 7. LIMIT STATE PANEL
# ============================================================

The limit panel should show:
- total auto tipping limit
- per-stream limit
- per-day limit
- current consumption against each limit
- system safety cap note

# ============================================================
# 8. BALANCE STATE PANEL
# ============================================================

The balance panel should show:
- available national currency balance
- source currency if relevant
- beneficiary-side display currency meaning if relevant
- whether balance condition currently permits auto tipping

# ============================================================
# 9. RESTRICTION STATE PANEL
# ============================================================

The restriction panel should show:
- minor-equivalent restriction
- governance restriction
- company policy restriction if relevant
- session-level restriction if relevant

# ============================================================
# 10. STOP FLAG PANEL
# ============================================================

The stop flag panel should clearly show:
- active / inactive
- reason code
- human-readable explanation
- whether the stop is temporary or terminal
- what condition must change to resume if resumable

# ============================================================
# 11. AUTO TIP HISTORY PANEL
# ============================================================

The history panel should show:
- auto tip timestamp
- amount
- currency
- target context
- emotional trigger summary
- resulting stop or continue decision if relevant

# ============================================================
# 12. CANONICAL FIXED STATEMENT
# ============================================================

The auto tipping control UI
shall make Ai(human) emotional auto tipping explainable
through explicit visibility of
emotion state,
target split,
limit state,
balance state,
restriction state,
and stop conditions.

