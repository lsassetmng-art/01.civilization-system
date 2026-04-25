# ============================================================
# MONETIZATION REACTION RANKING AD EXACTNESS REVIEW CHECKLIST
# ============================================================

status: canonical-checklist
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

review_targets:
- 0600120_MONETIZATION_EXACT_PAYLOAD.md
- 0600130_REACTION_RANKING_AD_EXACT_PAYLOAD.md
- 0600140_MONETIZATION_TABLE_COLUMN_EXACTNESS.md
- 0600150_REACTION_RANKING_AD_TABLE_COLUMN_EXACTNESS.md
- 0600160_AUTH_RLS_EXACTNESS.md
- 0600170_SCREEN_TO_ENDPOINT_MAPPING.md

checklist:
- raw monetization events remain non-public
- raw reaction events remain non-public
- ranking_results remain projection outputs only
- ranking_generation_batches remain runtime/control objects
- ad candidate projection remains distinct from ad control-plane data
- ad display event remains controlled logging object, not public content object
