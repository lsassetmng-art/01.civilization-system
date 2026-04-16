# ============================================================
# STREAMING OS ENDPOINT NAMING FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: final-api-freeze
owner: Boss
prepared_by: Zero

# ============================================================
# 1. NAMING STYLE
# ============================================================

frozen_style:
- verb_first
- singular_target_when_detail_or_mutation
- plural_target_when_list
- explicit_domain_wording
- no ambiguous generic names

examples:
- get_streaming_session_detail
- list_streaming_sessions
- create_tip_event
- upsert_creator_studio_draft
- search_streaming_content
- list_notifications

# ============================================================
# 2. ALLOWED VERBS
# ============================================================

allowed_verbs:
- get
- list
- create
- update
- upsert
- search
- transition
- mutate
- decide

# ============================================================
# 3. DISALLOWED STYLE
# ============================================================

avoid:
- vague verbs such as do / run / handle
- overloaded names such as save_data
- mixed casing conventions in canonical endpoint names
- transport-specific names inside canonical freeze names

# ============================================================
# 4. DETAIL VS LIST RULE
# ============================================================

rules:
- use get_*_detail for single-object read
- use list_* for collection reads
- use create_* for append-like writes
- use update_* for strict existing-target mutation
- use upsert_* when create/update behavior is intentionally merged
- use transition_* for explicit lifecycle/state transition
- use mutate_* for structured list-like mutation such as watch queue

