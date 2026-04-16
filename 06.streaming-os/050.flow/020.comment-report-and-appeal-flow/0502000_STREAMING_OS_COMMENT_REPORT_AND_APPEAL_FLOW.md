# ============================================================
# STREAMING OS COMMENT REPORT AND APPEAL FLOW
# ============================================================

status: canonical-draft
system: streaming-os
domain: comment-report-and-appeal-flow
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FLOW PURPOSE
# ============================================================

This flow defines how moderation-side interaction handling proceeds
inside StreamingOS.

# ============================================================
# 2. REPORT FLOW
# ============================================================

Recommended report flow:

viewer or creator identifies issue
-> report submitted
-> report record created
-> report review begins
-> moderation or governance decision recorded
-> report resolved or rejected

# ============================================================
# 3. COMMENT MODERATION FLOW
# ============================================================

Recommended comment moderation flow:

comment identified as problematic
-> moderation review starts
-> comment state changes to hidden / removed / restricted if needed
-> moderation reason recorded
-> moderation history preserved

# ============================================================
# 4. APPEAL / RE-REVIEW FLOW
# ============================================================

Recommended appeal flow:

affected party submits appeal
-> appeal record created
-> re-review accepted or rejected
-> new moderation/review decision recorded
-> prior history preserved

# ============================================================
# 5. RESTORATION FLOW
# ============================================================

Recommended restoration flow:

restoration request initiated
-> restoration review begins
-> restored or denied outcome recorded
-> explicit final state applied
-> prior restriction history remains visible

# ============================================================
# 6. CANONICAL FIXED STATEMENT
# ============================================================

This flow shall preserve the distinction between:
- report submission
- moderation action
- appeal
- re-review
- restoration outcome

