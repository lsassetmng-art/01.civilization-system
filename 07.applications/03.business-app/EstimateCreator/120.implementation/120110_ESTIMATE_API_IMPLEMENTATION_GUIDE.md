# ============================================================
# ESTIMATE API IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. API IMPLEMENTATION PURPOSE
# ============================================================

Estimate API implementation must expose stable, sync-friendly,
audit-friendly object handling for EstimateCreator business objects.

# ============================================================
# 2. PRIMARY OBJECTS
# ============================================================

Primary objects:

- estimate_record
- estimate_line_item
- opportunity_memo
- meeting_memo
- estimate_inventory_check
- estimate_qa_record
- estimate_template
- estimate_premium_feature_state
- estimate_launch_context

# ============================================================
# 3. API FIELD RULES
# ============================================================

API implementation must preserve:

- stable object id
- object type clarity
- required vs optional field clarity
- explicit state fields
- explicit created_at / updated_at handling
- explicit sync-related metadata where needed

# ============================================================
# 4. STATE SEPARATION RULE
# ============================================================

API fields must not overload:

- local business status
- sync state
- publication state
- approval state
- premium entitlement state

Each must remain independently addressable.

# ============================================================
# 5. MUTATION RULE
# ============================================================

Mutations should be object-oriented and explicit.

Examples:

- create_estimate
- update_estimate_header
- add_estimate_line
- update_opportunity_memo
- update_meeting_memo
- request_share
- request_publication
- refresh_inventory_reference
- create_qa
- apply_template

