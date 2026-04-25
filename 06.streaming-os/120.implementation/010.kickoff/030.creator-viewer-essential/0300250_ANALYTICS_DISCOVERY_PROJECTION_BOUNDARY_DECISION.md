# ============================================================
# ANALYTICS DISCOVERY PROJECTION BOUNDARY DECISION
# ============================================================

status: canonical-decision
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

decision_id:
K3-003

decision:
creator analytics projections and viewer discovery projections remain distinct projection families.

creator_analytics_projection:
- creator-facing or oversight-safe projection
- performance-oriented
- may include revenue/ranking/reaction summary for authorized actors
- not a public discovery output

viewer_discovery_projection:
- viewer-facing recommendation/search output
- public/projection-safe only
- must not expose creator-private or oversight-only metrics

rules:
- analytics projection is not a public discovery source of truth
- discovery projection is not a creator performance dashboard substitute
- transport and auth must preserve the audience separation
