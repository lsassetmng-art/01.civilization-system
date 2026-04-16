# ============================================================
# STREAMING OS REVIEW AND MODERATION PIPELINE ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: review-and-moderation-pipeline
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines:
- AI review position
- human review position
- escalation path
- review decision meanings
- moderation restriction meanings
- re-review and restoration meanings

# ============================================================
# 2. DESIGN POSITION
# ============================================================

StreamingOS shall have a native review pipeline
for uploaded videos,
archives,
and clips.

Review is not an optional side-note.
It is a core publication and monetization gate.

# ============================================================
# 3. PIPELINE PRINCIPLE
# ============================================================

The standard review pipeline is:

AI review
-> if safe and low-risk, proceed toward publish-ready
-> if uncertain / risky / sensitive, escalate to human review
-> human review confirms final strong decision when required

# ============================================================
# 4. AI REVIEW POSITION
# ============================================================

AI review acts as the first-pass review layer.

AI review may evaluate at least:
- rights-risk suspicion
- safety-risk suspicion
- age-gate necessity
- ad suitability risk
- publication-block suspicion
- human-review necessity

AI review is assistive review,
not unrestricted final sovereign review.

# ============================================================
# 5. HUMAN REVIEW POSITION
# ============================================================

Human review is the strong-decision review layer.

Human review should confirm or determine:
- publication allowed
- publication blocked
- age-restricted publication
- monetization allowed
- monetization restricted
- ad suitability restricted
- re-upload or re-edit required
- restoration eligibility

# ============================================================
# 6. STRONG DECISION PRINCIPLE
# ============================================================

Strong decisions should not be silently finalized
by AI-only pathways.

At minimum,
the following should remain human-confirmable when severe:
- publication block
- major monetization hold
- major rights rejection
- major safety rejection
- strong age restriction

# ============================================================
# 7. REVIEW TARGETS
# ============================================================

Review targets may include:
- uploaded video
- archive asset
- clip asset
- publish request
- monetization suitability context

These targets must remain distinguishable.

# ============================================================
# 8. REVIEW DECISION DIMENSIONS
# ============================================================

Review should preserve explicit dimensions such as:
- rights decision
- safety decision
- age decision
- ad suitability decision
- publish decision
- monetization decision

These must not be collapsed into one vague status.

# ============================================================
# 9. QUEUE PRINCIPLE
# ============================================================

StreamingOS should maintain explicit review queues for:
- AI review jobs
- human review tasks
- escalated review tasks
- re-review tasks

# ============================================================
# 10. RE-REVIEW PRINCIPLE
# ============================================================

StreamingOS should support:
- re-review request
- appeal-like restoration review
- corrected content re-review
- updated evidence re-review

Review history must remain visible.

# ============================================================
# 11. GOVERNANCE RELATION
# ============================================================

Review pipeline and governance are related but distinct.

Review decides whether content should be allowed,
restricted,
or escalated.

Governance applies and preserves explicit restriction states
over sessions,
assets,
publication,
or monetization.

# ============================================================
# 12. CANONICAL FIXED STATEMENT
# ============================================================

StreamingOS shall provide a native review pipeline
in which AI review precedes human review when appropriate.

AI review is the first-pass assistive layer.
Human review is the strong-decision layer
for severe publication,
monetization,
rights,
safety,
or age-related outcomes.

Review queues,
review decisions,
escalation,
re-review,
and restoration history
shall remain explicit structures inside StreamingOS.

