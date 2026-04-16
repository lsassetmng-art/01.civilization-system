# ============================================================
# STREAMING OS CREATOR SELF MANAGEMENT AND UPLOAD FLOW
# ============================================================

status: canonical-draft
system: streaming-os
domain: creator-self-management-and-upload-flow
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FLOW PURPOSE
# ============================================================

This flow defines how creator-side management
and upload preparation progress in StreamingOS.

# ============================================================
# 2. PRIMARY FLOW
# ============================================================

Recommended primary flow:

creator opens self page
-> creator enters studio/upload area
-> upload target selected
-> file ingest begins
-> studio draft created
-> metadata saved
-> thumbnail assigned
-> visibility and schedule configured
-> review requirement evaluated
-> review queue entered when required
-> publish-ready state reached
-> publish request executed
-> creator-side status updated

# ============================================================
# 3. DRAFT FLOW
# ============================================================

Draft flow should preserve:
- draft existence
- editable state
- cancellation possibility
- later resume possibility

# ============================================================
# 4. REVIEW RELATION FLOW
# ============================================================

Upload preparation may proceed to:
- direct publish-ready
or
- review-required state

These paths must remain distinguishable.

# ============================================================
# 5. CANONICAL FIXED STATEMENT
# ============================================================

This flow shall preserve the distinction between:
- creator self-management
- upload intake
- studio draft handling
- review readiness
- publish request execution

