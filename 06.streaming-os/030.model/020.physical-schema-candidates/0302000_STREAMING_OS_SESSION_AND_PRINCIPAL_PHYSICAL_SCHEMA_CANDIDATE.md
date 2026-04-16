# ============================================================
# STREAMING OS SESSION AND PRINCIPAL PHYSICAL SCHEMA CANDIDATE
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
for principal and session-side data.

# ============================================================
# 2. CANDIDATE TABLE FAMILIES
# ============================================================

Recommended table families:
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

All listed candidate table families
are assumed to be placed under the `streaming` schema.

# ============================================================
# 3. PRIMARY KEY STYLE CANDIDATE
# ============================================================

Recommended style:
- surrogate UUID-like internal ids
- separate Civilization ids stored explicitly where needed

# ============================================================
# 4. FOREIGN KEY DIRECTION CANDIDATE
# ============================================================

Recommended direction:
- streaming_sessions references streaming_principals by Civilization-aware ownership fields
- performer_participations references streaming_sessions
- rights / beneficiary / distribution refs reference streaming_sessions
- session_*_states reference streaming_sessions one-to-one or one-to-few by design choice

# ============================================================
# 5. INDEXING CANDIDATE
# ============================================================

Likely indexes:
- by session_state
- by stream_principal_civilization_id
- by ownership_mode
- by scheduled_start_at
- by updated_at
- by performer_civilization_id when relevant

# ============================================================
# 6. CANONICAL FIXED STATEMENT
# ============================================================

Physical schema for session and principal data
should preserve ownership,
participation,
rights,
beneficiary,
and state-separation meanings
already fixed in the model layer.

