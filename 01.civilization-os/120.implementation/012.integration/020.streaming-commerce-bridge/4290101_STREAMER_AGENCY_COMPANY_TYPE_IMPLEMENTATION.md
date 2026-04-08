# ============================================================
# STREAMER AGENCY COMPANY TYPE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines how streamer agency company types are represented and resolved
inside the streaming-commerce bridge.

# 2. STORAGE

Fields:
- company_type_code
- platform_role
- sales_capability_flag
- agency_capability_flag
- fulfillment_capability_flag
- moderation_required_flag
- enabled_flag

# 3. CONTRACTS

Input:
- company_id
- company_type_code
- requested_bridge_scope

Output:
- resolved_capability_profile
- allowed_actions
- restriction_codes

# 4. EXECUTION

1. validate company type
2. resolve bridge capability profile
3. apply policy restrictions
4. expose capability result to downstream flows

# 5. AUTHORIZATION

Mutation is controlled.
Read is internal to integration and authorized interface consumers only.

# 6. AUDIT

- company_id
- company_type_code
- resolved_at
- actor_ref

# 7. FAILURE HANDLING

Fail closed on unknown company type or ambiguous capability profile.
