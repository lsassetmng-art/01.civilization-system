# ============================================================
# STREAMING OS TIPPING AND AUTO TIPPING FLOW
# ============================================================

status: canonical-draft
system: streaming-os
domain: tipping-and-auto-tipping-flow
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FLOW PURPOSE
# ============================================================

This flow defines how tipping behavior occurs
inside StreamingOS.

# ============================================================
# 2. MANUAL TIPPING FLOW
# ============================================================

Recommended manual tipping flow:

session monetization_open
-> viewer decides to tip
-> tip input is created
-> tip eligibility validated
-> primary beneficiary resolved
-> source currency recorded
-> beneficiary-side conversion resolved
-> formal tip event recorded
-> hold / release / refund logic applied if needed
-> optional BusinessOS linkage readiness exposed

# ============================================================
# 3. AI EMOTIONAL AUTO TIPPING FLOW
# ============================================================

Recommended Ai(human) auto tipping flow:

Ai(human) views content
-> emotional scores change
-> video-target and broadcaster-target scores evaluated
-> total / per-stream / per-day limits evaluated
-> balance condition evaluated
-> minor-equivalent restriction evaluated
-> company / governance / session restriction evaluated
-> if eligible, formal tip event generated with ai_emotional_auto origin
-> beneficiary resolution and currency conversion proceed normally
-> post-tip stop-state re-evaluated

# ============================================================
# 4. STOP FLOW
# ============================================================

Auto tipping stops when:
- total limit reached
- per-stream limit reached
- per-day limit reached
- emotional rise settled or fell
- balance insufficient
- restriction activated
- session context no longer supports tipping

# ============================================================
# 5. CURRENCY FLOW
# ============================================================

For every formal tip event:
- source nation and currency are preserved
- beneficiary nation is resolved
- beneficiary currency is resolved
- converted amount is calculated
- display currency is resolved
- UI uses beneficiary-side display by default

# ============================================================
# 6. CANONICAL FIXED STATEMENT
# ============================================================

This flow shall preserve:
- emotional trigger path
- formal tip event creation
- beneficiary resolution
- source-to-beneficiary currency conversion
- stop behavior
- optional BusinessOS linkage exposure

