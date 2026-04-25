# ============================================================
# MONETIZATION REACTION RANKING AD PAYLOAD TO DDL MAPPING MEMO
# ============================================================

status: canonical-mapping-memo
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

mapping:
- tip_event -> tip_events
- tip support projections -> tip_beneficiary_resolutions + tip_currency_conversions
- reaction_event -> reaction_events
- ranking_result -> ranking_results
- ranking generation control -> ranking_generation_batches
- ad control data -> ad_data + ad_insertion_rules
- ad display logging -> ad_display_events

memo_notes:
- ad_candidate_projection is not a single base table
- creator-facing monetization summaries remain projection-oriented
