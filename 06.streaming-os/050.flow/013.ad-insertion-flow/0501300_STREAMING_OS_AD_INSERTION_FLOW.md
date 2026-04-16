# ============================================================
# STREAMING OS AD INSERTION FLOW
# ============================================================

status: canonical-draft
system: streaming-os
domain: ad-insertion-flow
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FLOW PURPOSE
# ============================================================

This flow defines how internal StreamingOS ads
are selected and inserted.

# ============================================================
# 2. PRIMARY FLOW
# ============================================================

Recommended primary flow:

target content starts or reaches insertion point
-> active ad candidates resolved
-> insertion rules filtered
-> governance / monetization / policy restrictions checked
-> frequency burden posture checked
-> ad selected
-> ad inserted or shown
-> ad display event recorded
-> subsequent insertion eligibility re-evaluated

# ============================================================
# 3. TARGET CONTENT FLOW
# ============================================================

Internal ad insertion may target:
- live session
- archive asset
- clip asset

# ============================================================
# 4. POSITION FLOW
# ============================================================

Insertion position may be:
- pre_roll
- mid_roll
- post_roll
- overlay

Position meaning must remain explicit.

# ============================================================
# 5. CANONICAL FIXED STATEMENT
# ============================================================

This flow shall preserve:
- ad candidate resolution
- rule filtering
- insertion decision
- display event recording
- burden/frequency posture control

