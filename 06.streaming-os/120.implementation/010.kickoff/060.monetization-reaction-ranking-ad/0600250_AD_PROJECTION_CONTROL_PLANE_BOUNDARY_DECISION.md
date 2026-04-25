# ============================================================
# AD PROJECTION CONTROL-PLANE BOUNDARY DECISION
# ============================================================

status: canonical-decision
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

decision_id:
K6-003

decision:
ad_candidate_projection remains distinct from ad control-plane data and insertion rules.

viewer-safe projection:
- ad candidate list
- placement-facing safe display summary

control-plane:
- ad_data
- ad_insertion_rules
- runtime targeting and insertion internals

rules:
- ad candidate list must not expose targeting internals
- ad control-plane data must not become general viewer content identity
- ad display event remains controlled logging object only
