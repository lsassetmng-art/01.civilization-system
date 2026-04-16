# ============================================================
# STREAMING OS REVIEW AND APPROVAL FLOW
# ============================================================

status: canonical-draft
system: streaming-os
domain: review-and-approval-flow
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FLOW PURPOSE
# ============================================================

This flow defines how review and approval proceed
for videos,
archives,
clips,
publish requests,
and monetization-related review contexts.

# ============================================================
# 2. PRIMARY FLOW
# ============================================================

Recommended primary flow:

target created or updated
-> review queue item created
-> AI review job runs
-> AI findings recorded
-> low-risk outcome may proceed toward publish-ready
-> uncertain or severe outcome escalates to human review
-> human review task assigned
-> dimension-specific decisions recorded
-> final decision recorded
-> publish / restriction / monetization state updated
-> history preserved

# ============================================================
# 3. AI REVIEW FLOW
# ============================================================

AI review may:
- detect no major issue
- detect possible rights issue
- detect possible safety issue
- detect age-gate need
- detect ad suitability concern
- require escalation to human review

AI review does not silently erase review history.

# ============================================================
# 4. HUMAN REVIEW FLOW
# ============================================================

Human review may conclude:
- approve
- approve with restriction
- age-restrict
- monetization restrict
- ad restrict
- block
- correction required
- re-review required

# ============================================================
# 5. RE-REVIEW FLOW
# ============================================================

When content is corrected or challenged:
- re-review request is created
-> request is accepted or rejected
-> review restarts in appropriate queue
-> new review decision is recorded
-> previous review history remains preserved

# ============================================================
# 6. RESTORATION FLOW
# ============================================================

When restoration is requested:
- restoration review starts
-> restoration is reviewed
-> restored or denied result is recorded
-> governance/publish/monetization state updates accordingly

# ============================================================
# 7. CANONICAL FIXED STATEMENT
# ============================================================

This flow shall preserve the distinction between:
- AI review
- human review
- dimension-specific outcomes
- final decision
- re-review
- restoration

Strong review outcomes must remain explicitly recorded.

