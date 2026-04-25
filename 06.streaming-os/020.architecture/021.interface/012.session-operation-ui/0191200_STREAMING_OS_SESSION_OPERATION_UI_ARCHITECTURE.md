# ============================================================
# STREAMING OS SESSION OPERATION UI ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: session-operation-ui
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the UI architecture
for operating streaming sessions in StreamingOS.

# ============================================================
# 2. UI GOAL
# ============================================================

The session UI must make the current state
of a session obvious and operable.

It must support:
- preparation
- live operation
- pause / interrupt handling
- post-live closure
- archive readiness
- governance awareness

# ============================================================
# 3. MAIN SCREEN BLOCKS
# ============================================================

Recommended blocks:
- session header summary
- ownership / principal card
- performer card
- lifecycle state panel
- live control panel
- archive status panel
- publication panel
- monetization panel
- governance warning panel
- activity log panel

# ============================================================
# 4. SESSION HEADER SUMMARY
# ============================================================

The header should show:
- session title
- current lifecycle state
- principal display name
- ownership mode
- scheduled time
- actual start/end time if known

# ============================================================
# 5. LIVE CONTROL PANEL
# ============================================================

Recommended actions:
- move to ready
- run pre-live check
- start live
- pause
- resume
- end session
- cancel session

Buttons should be state-aware
and disabled when invalid.

# ============================================================
# 6. LIFECYCLE PANEL
# ============================================================

The UI should visually show:
- current state
- previous state
- next allowed states
- blocked transitions if any

This helps operators understand
why a session cannot proceed.

# ============================================================
# 7. ARCHIVE STATUS PANEL
# ============================================================

The archive section should show:
- archive generating / ready / failed
- clip availability
- archive review status
- publish readiness summary

# ============================================================
# 8. MONETIZATION PANEL
# ============================================================

The monetization panel should show:
- tipping enabled or disabled
- beneficiary summary
- held tips count if any
- refund count if any
- settlement status

# ============================================================
# 9. GOVERNANCE WARNING PANEL
# ============================================================

The UI should visibly surface:
- session suspended
- publication blocked
- monetization hold
- performer restriction
- rights review pending

Warnings must remain prominent and non-hidden.

# ============================================================
# 10. CANONICAL FIXED STATEMENT
# ============================================================

The session operation UI
shall expose session lifecycle state,
ownership state,
archive state,
publication state,
monetization state,
and governance restrictions
in a single operational view.

