# ============================================================
# STATIC ART RIGHTS SUBSCRIPTION AND RESTRICTION POLICY
# ============================================================

status: implementation-ready-policy
layer: policy
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Rights Policy

If exhibition_allowed is false:
- projection must be blocked
- exhibition badge must be hidden or rendered as not allowed

If commercial_use_allowed is false:
- commercial derivative downstream use must be blocked

If region_scope excludes user region:
- full access must be blocked
- sample access follows explicit sample region policy

## 2. Subscription Policy

Subscription access is allowed only when:
- user subscription is active
- asset subscription_eligible_flag is true
- current time is within subscription window if bounded
- region policy allows subscription access

Subscription access does not create:
- permanent ownership
- exhibition entitlement unless separately allowed by creator policy

## 3. Restriction Policy

Restriction may be triggered by:
- rights conflict
- regional legal requirement
- age classification requirement
- operational safety decision
- asset integrity or release quality issue

When restricted:
- marketplace exposure may be removed
- full access may be blocked
- projection is blocked
- audit reason must be preserved
