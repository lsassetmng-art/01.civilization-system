# ============================================================
# STREAMING OS AI AUTO TIPPING RUNTIME
# ============================================================

status: canonical-draft
system: streaming-os
domain: ai-auto-tipping-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. RUNTIME PURPOSE
# ============================================================

This runtime governs execution-time handling
of Ai(human) emotional auto tipping.

# ============================================================
# 2. PRIMARY RESPONSIBILITIES
# ============================================================

The auto tipping runtime is responsible for:
- reading emotional state
- evaluating trigger thresholds
- evaluating limit state
- evaluating restriction state
- evaluating balance condition
- setting or clearing stop behavior
- generating formal auto-origin tip events

# ============================================================
# 3. SUBJECT SCOPE
# ============================================================

This runtime applies to:
- Ai(human)

It does not apply by default to:
- Ai(robot)

# ============================================================
# 4. TARGETED EMOTIONAL EVALUATION
# ============================================================

Runtime should preserve separate evaluation for:
- video-target emotional response
- broadcaster-target emotional response

These should influence trigger decisions
without being collapsed into one score.

# ============================================================
# 5. LIMIT EVALUATION
# ============================================================

Runtime should evaluate:
- total auto tipping limit
- per-stream limit
- per-day limit
- system safety cap

All must be satisfied for continued eligibility.

# ============================================================
# 6. RESTRICTION EVALUATION
# ============================================================

Runtime should evaluate:
- minor-equivalent restriction
- company policy restriction
- governance restriction
- session restriction
- balance insufficiency

# ============================================================
# 7. STOP STATE HANDLING
# ============================================================

Runtime should set stop behavior when:
- limits are reached
- emotional rise has settled or fallen below threshold
- balance is insufficient
- restriction becomes active
- tipping context ends

Stop behavior should remain explainable and stateful.

# ============================================================
# 8. TIP EVENT GENERATION
# ============================================================

When all required conditions are satisfied,
runtime may generate a formal tip event
with origin type:
- ai_emotional_auto

The resulting tip remains a formal tip event
handled by tipping runtime.

# ============================================================
# 9. CANONICAL FIXED STATEMENT
# ============================================================

The Ai auto tipping runtime
shall evaluate emotion,
limits,
restrictions,
balance,
and stop conditions
to determine whether Ai(human)
may automatically generate formal tip events.

