# ============================================================
# STREAMING OS ACTOR AND ROLE MATRIX FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: final-rls-and-auth-freeze
owner: Boss
prepared_by: Zero

# ============================================================
# 1. ACTOR CLASSES
# ============================================================

actor_classes:
- viewer_self
- creator_self
- channel_owner
- company_official_manager
- company_overseer
- assigned_reviewer
- moderation_operator
- platform_operator
- runtime_worker
- integration_service

# ============================================================
# 2. AUTHORITY GROUPS
# ============================================================

authority_groups:
- read_public
- read_self
- mutate_self
- mutate_owned
- review_assigned
- moderate_assigned
- oversee_company
- operate_platform
- execute_runtime
- execute_integration

# ============================================================
# 3. ROLE MATRIX
# ============================================================

viewer_self:
- read_public
- read_self
- mutate_self

creator_self:
- read_public
- read_self
- mutate_self

channel_owner:
- read_public
- read_self
- mutate_owned

company_official_manager:
- read_public
- read_self
- mutate_owned
- oversee_company

company_overseer:
- read_public
- oversee_company

assigned_reviewer:
- read_public
- review_assigned

moderation_operator:
- read_public
- review_assigned
- moderate_assigned

platform_operator:
- read_public
- operate_platform

runtime_worker:
- execute_runtime

integration_service:
- execute_integration

# ============================================================
# 4. FREEZE RULE
# ============================================================

freeze_rules:
- actor identity and role must be evaluated before row policy resolution
- runtime_worker and integration_service are not end-user actors
- company affiliation alone is not equivalent to company ownership authority
- moderation authority is not equivalent to creator ownership authority

