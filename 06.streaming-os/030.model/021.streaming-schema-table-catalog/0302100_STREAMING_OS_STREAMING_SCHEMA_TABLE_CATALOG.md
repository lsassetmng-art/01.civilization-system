# ============================================================
# STREAMING OS STREAMING SCHEMA TABLE CATALOG
# ============================================================

status: canonical-draft
system: streaming-os
domain: streaming-schema-table-catalog
owner: Boss
prepared_by: Zero

physical_schema:
- streaming

# ============================================================
# 1. PURPOSE
# ============================================================

This document freezes the canonical table catalog
for the `streaming` schema.

This is a table-list freeze,
not yet a final column-by-column DDL freeze.

# ============================================================
# 2. TABLE CATALOG
# ============================================================

principal / session family:
- streaming_principals
- streaming_sessions
- performer_participations
- stream_rights_holders
- stream_primary_revenue_beneficiaries
- stream_secondary_distribution_refs
- session_archive_states
- session_publication_states
- session_monetization_states
- session_governance_states

asset / publish family:
- archive_assets
- clip_assets
- clip_derivation_refs
- asset_review_states
- asset_governance_states
- external_publish_targets
- external_publish_settings
- external_publish_jobs
- external_publish_results

tipping / currency / auto tipping family:
- tip_events
- tip_beneficiary_resolutions
- tip_currency_conversions
- auto_tip_emotional_contexts
- businessos_linkage_refs
- ai_auto_tipping_profiles
- ai_auto_tipping_emotion_states
- ai_auto_tipping_limit_states
- ai_auto_tipping_restriction_states
- ai_auto_tipping_stop_states

reaction / ranking / ad family:
- reaction_events
- favorite_states
- view_signal_summaries
- ranking_results
- ranking_generation_batches
- ad_data
- ad_insertion_rules
- ad_display_events

# ============================================================
# 3. NAMING RULE
# ============================================================

Because the physical schema is fixed as `streaming`,
future refinement may omit redundant `streaming_` prefixes
where clarity is preserved.

However,
the current canonical table catalog
is frozen exactly as listed above
until an explicit rename decision is made.

# ============================================================
# 4. CANONICAL FIXED STATEMENT
# ============================================================

The canonical physical table catalog
for StreamingOS shall be the table list above
under the `streaming` schema.

Further work may refine columns,
keys,
indexes,
constraints,
and exact DDL,
but should not casually add,
remove,
or rename tables
without explicit design review.

