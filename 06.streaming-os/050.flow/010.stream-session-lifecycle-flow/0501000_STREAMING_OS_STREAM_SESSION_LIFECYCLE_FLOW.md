# ============================================================
# STREAMING OS STREAM SESSION LIFECYCLE FLOW
# ============================================================

status: canonical-draft
system: streaming-os
domain: stream-session-lifecycle-flow
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FLOW PURPOSE
# ============================================================

This flow defines the end-to-end session progression
from stream preparation
to historical closure.

# ============================================================
# 2. PRIMARY FLOW
# ============================================================

Recommended primary flow:

principal selected
-> program prepared or selected
-> session created in draft
-> session scheduled
-> session ready
-> pre_live_check
-> live
-> ended
-> archive_generating
-> archive_ready
-> rights_review_pending
-> publish_ready
-> optionally pushing_external
-> optionally externally_published
-> monetization_open
-> settlement_pending
-> settled
-> locked
-> archived

# ============================================================
# 3. PRE-LIVE CHECK FLOW
# ============================================================

Before live starts:
- principal eligibility validated
- performer readiness validated
- governance restriction checked
- required permissions checked
- session state moved to pre_live_check
- only then may session enter live

# ============================================================
# 4. LIVE OPERATION FLOW
# ============================================================

During live:
- session accepts audience events
- session may accept tipping
- session may enter paused state
- session may enter interrupted state
- session may resume or end
- governance restrictions may alter continuation

# ============================================================
# 5. POST-LIVE FLOW
# ============================================================

After end:
- session runtime closes live phase
- archive generation begins
- archive readiness is evaluated
- review readiness is evaluated
- publish readiness remains separate

# ============================================================
# 6. ALTERNATIVE PATHS
# ============================================================

Alternative paths may include:
- draft -> cancelled
- scheduled -> cancelled
- live -> interrupted -> ended
- archive_ready -> locked without external publication
- any state -> suspended under governance action

# ============================================================
# 7. CANONICAL FIXED STATEMENT
# ============================================================

This flow shall preserve the distinction between:
- session start
- live execution
- session end
- archive readiness
- publication readiness
- monetization openness
- settlement closure
- governance restriction
- historical archival closure

