# ============================================================
# STREAMING OS REACTION RANKING AND AD IMPLEMENTATION
# ============================================================

status: canonical-draft
system: streaming-os
domain: reaction-ranking-and-ad-implementation
owner: Boss
prepared_by: Zero

# ============================================================
# 1. IMPLEMENTATION PURPOSE
# ============================================================

This implementation domain defines
how reaction,
ranking,
and ad logic
should be separated in code-facing structure.

# ============================================================
# 2. IMPLEMENTATION RESPONSIBILITY SPLIT
# ============================================================

Recommended implementation responsibility split:
- reaction event recorder
- favorite-state manager
- summary projection updater
- ranking batch generator
- ranking result publisher
- ad candidate resolver
- ad insertion decision service
- ad display-event recorder

# ============================================================
# 3. RAW VS AGGREGATED PRINCIPLE
# ============================================================

Raw reaction history
should remain separate from:
- summary projections
- ranking results
- ad-event history

# ============================================================
# 4. CANONICAL FIXED STATEMENT
# ============================================================

Implementation-facing reaction,
ranking,
and ad logic
shall keep raw reactions,
aggregated/ranking outputs,
and internal ad behavior
as separate responsibilities.

