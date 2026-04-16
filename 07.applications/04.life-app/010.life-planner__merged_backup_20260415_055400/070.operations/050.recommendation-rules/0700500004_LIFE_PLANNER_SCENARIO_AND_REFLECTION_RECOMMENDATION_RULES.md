# ============================================================
# LIFE PLANNER SCENARIO AND REFLECTION RECOMMENDATION RULES
# ============================================================

status: draft
system: LifePlanner
layer: 070.operations
subfolder: 050.recommendation-rules
owner: Boss
prepared_by: Zero
schema: life

reflection_recommendation_rules:
  - if source app changed and affected category has active goals:
      recommendation:
        - suggest review of related goals first

  - if source app changed and no direct related goal exists:
      recommendation:
        - suggest review at plan summary level

scenario_recommendation_rules:
  - if compare exists but no decision recorded:
      recommendation:
        - show scenario decision pending

  - if major plan assumption changed after compare:
      recommendation:
        - show possible stale compare result prompt

note:
  - these are recommendation heuristics, not automatic actions
