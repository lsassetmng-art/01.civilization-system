# ============================================================
# MONETIZATION REACTION RANKING AD SQL PRECISION FIRST-PASS DECISION CANDIDATES
# ============================================================

status: canonical-first-pass-candidates
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

candidate_decisions:

candidate_01:
- title: domain ids
- candidate: uuid
- reason: stable canonical identifiers across monetization, reaction, ranking, and ad families

candidate_02:
- title: money and score fields
- candidate: numeric(20,6)
- reason: safer first schema for precision-sensitive values

candidate_03:
- title: currency and note fields
- candidate: text
- reason: flexible storage before any code-table hardening

candidate_04:
- title: state and type fields
- candidate: text plus check constraints
- reason: additive evolution is easier than early enum lock-in

candidate_05:
- title: rank_position
- candidate: integer
- reason: explicit ordinal semantics

candidate_06:
- title: ad candidate linkage
- candidate: uuid
- reason: stable linkage assumption for candidate-facing references

candidate_07:
- title: first index set
- candidate:
  - tip_events: target_type, target_id
  - tip_events: beneficiary_principal_id
  - reaction_events: target_type, target_id
  - ranking_results: ranking_scope, ranking_window, rank_position
  - ad_display_events: created_at
  - ad_data / ad_insertion_rules: placement_type
- reason: enough for first review without over-indexing

candidate_08:
- title: actor nullability on reaction events
- candidate: nullable actor_principal_id
- reason: preserves flexibility for anonymous/system-derived reaction contexts pending DB review

candidate_09:
- title: projection and visibility strategy
- candidate:
  - creator-safe monetization summaries
  - public-safe ranking projections
  - viewer-safe ad candidate projections
  - runtime-only generation/control families
- reason: preserves raw-event vs projection vs control-plane boundaries
