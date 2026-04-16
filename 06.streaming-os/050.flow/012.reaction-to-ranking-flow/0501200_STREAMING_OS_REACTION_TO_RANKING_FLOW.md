# ============================================================
# STREAMING OS REACTION TO RANKING FLOW
# ============================================================

status: canonical-draft
system: streaming-os
domain: reaction-to-ranking-flow
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FLOW PURPOSE
# ============================================================

This flow defines how native reactions
become ranking-relevant signals.

# ============================================================
# 2. PRIMARY FLOW
# ============================================================

Recommended primary flow:

viewer interacts
-> native reaction event created
-> reaction target validated
-> reaction event stored
-> favorite state updated when relevant
-> summary signals updated or queued
-> ranking period input signals accumulated
-> ranking generation batch executed
-> ranking results stored
-> ranking UI surfaces outputs

# ============================================================
# 3. REACTION TARGET FLOW
# ============================================================

Reactions may target:
- video asset
- live session
- broadcaster
- clip asset

Target type must remain explicit
throughout the flow.

# ============================================================
# 4. PERIOD FLOW
# ============================================================

Ranking period flows remain separate:
- daily aggregation
- monthly aggregation
- yearly aggregation
- overall aggregation

# ============================================================
# 5. CANONICAL FIXED STATEMENT
# ============================================================

This flow shall preserve the distinction between:
- raw reaction events
- stateful favorite meaning
- aggregated reaction/view signals
- ranking batch generation
- ranking result output

