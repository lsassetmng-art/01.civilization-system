# ============================================================
# MONETIZATION REACTION RANKING AD WORDING TIGHTENING CONSOLIDATION
# ============================================================

status: canonical-refinement
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Consolidates wording-tightening points for K6 monetization-reaction-ranking-ad.

tightening_points:

raw_event_visibility:
- raw tip events are not public viewer objects
- raw reaction events are not public viewer objects
- public-facing summaries must always use projection-safe outputs
- creator-facing or authorized summaries must remain audience-bounded

ranking_boundary:
- ranking_results are projection outputs only
- ranking_generation_batches are runtime/control objects only
- generation control state must never leak as public ranking payload
- ranking output must not imply end-user mutability

ad_boundary:
- ad candidate list is viewer-safe projection only
- ad_data and ad_insertion_rules are control-plane only
- ad targeting or insertion internals must never appear in viewer-safe projection
- ad display event remains controlled logging only

support_state_wording:
- beneficiary resolution and currency conversion are support families, not public-facing objects
- auto-tip state families are principal/control-plane scoped and never public output families
