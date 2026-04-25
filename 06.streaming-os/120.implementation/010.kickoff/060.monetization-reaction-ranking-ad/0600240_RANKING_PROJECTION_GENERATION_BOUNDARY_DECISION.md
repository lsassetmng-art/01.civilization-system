# ============================================================
# RANKING PROJECTION GENERATION BOUNDARY DECISION
# ============================================================

status: canonical-decision
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

decision_id:
K6-002

decision:
ranking_results and ranking_generation_batches remain distinct families.

ranking_results:
- public/projection-facing output
- read-oriented ranking presentation

ranking_generation_batches:
- runtime/control object
- generation-tracking and operational coordination object

rules:
- end users do not mutate ranking_results
- ranking_generation_batches do not leak as public ranking payload
