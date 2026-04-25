# ============================================================
# MONETIZATION REACTION RANKING AD NEXT ACTIONS
# ============================================================

status: canonical-next-actions
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

current_state:
- K6-001 resolved
- K6-002 resolved
- K6-003 resolved
- K6 promoted to pass_with_wording_refinement_only

next_actions_in_order:
1. tighten wording for non-public raw event boundary
2. tighten wording for ranking projection-only semantics
3. tighten wording for ad candidate safe-projection semantics
4. prepare SQL-precision review memo usage with Sato(DB reviewer)
5. review payload-to-DDL mapping for support families
6. review payload-to-transport mapping for viewer-safe projection rules
