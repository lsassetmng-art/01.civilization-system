# ============================================================
# STREAMING OS REVIEW AND RIGHTS QUEUE UI ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: review-and-rights-queue-ui
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the UI architecture
for review and rights queue handling in StreamingOS.

# ============================================================
# 2. UI GOAL
# ============================================================

The UI must help operators understand:
- what is waiting for review
- why it is in review
- what AI found
- what human review must decide
- what rights / safety / age / ad issues exist
- what final decision has been made
- whether re-review is possible

# ============================================================
# 3. MAIN SCREEN BLOCKS
# ============================================================

Recommended blocks:
- review queue list
- target summary card
- AI review findings panel
- rights panel
- safety panel
- age gate panel
- ad suitability panel
- human decision panel
- decision history panel
- re-review / restoration panel

# ============================================================
# 4. REVIEW QUEUE LIST
# ============================================================

The queue list should show:
- target type
- target title
- queue type
- current review stage
- priority
- escalation flag
- waiting duration
- latest review status

# ============================================================
# 5. AI REVIEW FINDINGS PANEL
# ============================================================

The AI findings panel should show:
- AI review status
- suspected issue categories
- confidence or severity hints if available
- escalation recommendation
- publication risk hint
- monetization risk hint

# ============================================================
# 6. HUMAN DECISION PANEL
# ============================================================

The human decision panel should support:
- approve for publication
- approve with restriction
- age gate
- monetization hold
- ad suitability restriction
- reject / block
- request correction
- request re-review

# ============================================================
# 7. DECISION HISTORY PANEL
# ============================================================

The history panel should show:
- review stage transitions
- who made the decision
- when the decision was made
- dimension-specific outcomes
- restoration or re-review history

# ============================================================
# 8. CANONICAL FIXED STATEMENT
# ============================================================

The review and rights queue UI
shall expose AI review,
human review,
dimension-specific review outcomes,
and restoration/re-review history
as explicit UI structures inside StreamingOS.

