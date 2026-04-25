# ============================================================
# MONETIZATION REACTION RANKING AD SQL PRECISION REVIEW HOLD POINTS
# ============================================================

status: canonical-hold-points
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Identifies the exact hold points that must be confirmed in K6 SQL precision review.

hold_points:
- numeric scale/precision choice for tip and score values
- text vs constrained code-table strategy for currency and state families
- exact actor-nullability policy for reaction events
- exact stable linkage strategy for ad_candidate_id in ad_display_events
- exact target_type + target_id storage shape across reaction/ad families
- exact projection SQL split for creator-safe, public-safe, viewer-safe, and runtime-only families
- exact non-public enforcement strategy for raw monetization and reaction event storage

hold_severity:
- blocking_for_ddl_if_unresolved: yes

note:
These are precision hold points only.
They do not reopen K6 meaning-level design.
