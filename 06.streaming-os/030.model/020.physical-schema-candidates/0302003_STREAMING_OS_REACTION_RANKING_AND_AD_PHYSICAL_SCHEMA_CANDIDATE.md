# ============================================================
# STREAMING OS REACTION RANKING AND AD PHYSICAL SCHEMA CANDIDATE
# ============================================================

status: canonical-draft
system: streaming-os
domain: physical-schema-candidates
owner: Boss
prepared_by: Zero

physical_schema:
- streaming

# ============================================================
# 1. PURPOSE
# ============================================================

This document proposes physical-schema candidate grouping
for native reactions,
ranking,
and internal ads.

# ============================================================
# 2. CANDIDATE TABLE FAMILIES
# ============================================================

Recommended table families:
- reaction_events
- favorite_states
- view_signal_summaries
- ranking_results
- ranking_generation_batches
- ad_data
- ad_insertion_rules
- ad_display_events

All listed candidate table families
are assumed to be placed under the `streaming` schema.

# ============================================================
# 3. FOREIGN KEY DIRECTION CANDIDATE
# ============================================================

Recommended direction:
- reaction_events reference target objects by typed target fields
- favorite_states reference target objects by typed target fields
- view_signal_summaries reference target objects by typed target fields
- ranking_results reference ranking targets by typed target fields
- ad_insertion_rules reference ad_data
- ad_display_events reference ad_data and insertion rules

# ============================================================
# 4. INDEXING CANDIDATE
# ============================================================

Likely indexes:
- by reaction_target_type + reaction_target_id
- by audience_subject_id
- by reaction_timestamp
- by ranking_target_type + ranking_period_type
- by ranking_position
- by ad_status
- by target_content_type + insertion_position
- by displayed_at

# ============================================================
# 5. CANONICAL FIXED STATEMENT
# ============================================================

Physical schema for reactions,
rankings,
and ads
should preserve raw events,
stateful favorites,
aggregated summaries,
ranking outputs,
ad rules,
and ad display history
as distinct structures.

