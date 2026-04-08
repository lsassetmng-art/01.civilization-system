# ============================================================
# MARKETPLACE CREATOR PROFILE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy

# 1. PURPOSE

Defines physical creator profile storage.

# 2. TABLE PROFILE

Primary profile:
- entity

# 3. PHYSICAL TABLE

Table:
- marketplace_creator_profile

# 4. COLUMNS

Common columns:
- id
- code
- status
- version
- created_at
- updated_at

Domain columns:
- creator_ref
- attribution_payload
- moderation_status
- enabled_flag

# 5. KEYS AND CONSTRAINTS

PK:
- id

Unique:
- code

Indexes:
- idx_marketplace_creator_profile_creator_ref
- idx_marketplace_creator_profile_status
- idx_marketplace_creator_profile_moderation_status

# 6. SOURCE OF TRUTH

Authoritative creator marketplace identity row.

# 7. FAILURE HANDLING

Fail closed on:
- unresolved creator ref
- moderation ambiguity
