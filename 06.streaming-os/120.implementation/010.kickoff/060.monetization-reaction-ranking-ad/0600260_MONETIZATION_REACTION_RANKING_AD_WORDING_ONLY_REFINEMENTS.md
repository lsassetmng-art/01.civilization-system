# ============================================================
# MONETIZATION REACTION RANKING AD WORDING-ONLY REFINEMENTS
# ============================================================

status: canonical-refinement
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

refinement_targets:
- raw event does not equal public projection
- ranking output is presentation-safe, not generation control state
- ad candidate output is safe projection, not targeting or insertion internals
- creator-facing summaries must remain projection-safe and audience-bounded
