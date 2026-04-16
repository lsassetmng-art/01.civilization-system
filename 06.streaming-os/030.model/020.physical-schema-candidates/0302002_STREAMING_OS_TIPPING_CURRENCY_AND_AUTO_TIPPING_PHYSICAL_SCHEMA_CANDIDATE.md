# ============================================================
# STREAMING OS TIPPING CURRENCY AND AUTO TIPPING PHYSICAL SCHEMA CANDIDATE
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
for tipping,
currency conversion,
and auto tipping data.

# ============================================================
# 2. CANDIDATE TABLE FAMILIES
# ============================================================

Recommended table families:
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

All listed candidate table families
are assumed to be placed under the `streaming` schema.

# ============================================================
# 3. FOREIGN KEY DIRECTION CANDIDATE
# ============================================================

Recommended direction:
- tip_events reference streaming_sessions
- beneficiary resolutions reference tip_events
- currency conversions reference tip_events
- auto-tip emotional contexts reference tip_events when tip was generated
- BusinessOS linkage refs reference tip_events
- ai_auto_tipping_* tables reference ai_auto_tipping_profiles

# ============================================================
# 4. INDEXING CANDIDATE
# ============================================================

Likely indexes:
- by session_id
- by primary_revenue_beneficiary_civilization_id
- by tip_status
- by tip_origin_type
- by source_nation_id
- by beneficiary_nation_id
- by ai_human_civilization_id
- by auto_tipping_stop_flag
- by updated_at

# ============================================================
# 5. CANONICAL FIXED STATEMENT
# ============================================================

Physical schema for tipping and auto tipping data
should preserve formal tip events,
beneficiary resolution,
source-to-beneficiary currency conversion,
and emotional auto tipping profile/state separation.

