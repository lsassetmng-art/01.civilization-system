# ============================================================
# STREAMING OS ARCHIVE AND CLIP UI ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: archive-and-clip-ui
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the UI architecture
for archive and clip management
in StreamingOS.

# ============================================================
# 2. UI GOAL
# ============================================================

The UI must help users understand:
- canonical archive existence
- clip derivation from sessions
- publication readiness
- rights review state
- external publication relation

# ============================================================
# 3. MAIN SCREEN BLOCKS
# ============================================================

Recommended blocks:
- asset summary card
- source session summary
- archive / clip type badge
- rights review panel
- publication readiness panel
- YouTube push linkage panel
- governance restriction panel
- asset history timeline

# ============================================================
# 4. ASSET SUMMARY CARD
# ============================================================

The summary should show:
- asset title
- asset type
- source session
- source principal
- current asset status
- canonical ownership context

# ============================================================
# 5. RIGHTS REVIEW PANEL
# ============================================================

Show:
- rights review status
- company approval status if relevant
- safety review status
- external publication eligibility summary

# ============================================================
# 6. PUBLICATION READINESS PANEL
# ============================================================

Show:
- archive_ready or not
- publish_ready or not
- block reason if any
- pending review reason if any
- publication target availability

# ============================================================
# 7. YOUTUBE LINKAGE PANEL
# ============================================================

Show:
- whether asset is a YouTube push candidate
- latest publish job status
- external video id if published
- retry state if failed
- visibility result if known

# ============================================================
# 8. GOVERNANCE RESTRICTION PANEL
# ============================================================

Show:
- publication blocked
- hidden
- locked
- suspended
- under review

Canonical asset existence should remain visible
even when publication is restricted.

# ============================================================
# 9. ASSET HISTORY TIMELINE
# ============================================================

The timeline should show:
- asset created
- archive generated
- clip derived
- review opened
- approved or blocked
- push requested
- push succeeded or failed
- lock / suspension actions

# ============================================================
# 10. CANONICAL FIXED STATEMENT
# ============================================================

The archive and clip UI
shall preserve the distinction between:
- canonical asset existence
- rights review state
- publication readiness
- external publication result
- governance restriction

