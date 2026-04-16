# ============================================================
# STATIC ART RUNTIME ENTITLEMENT AND CONSUMPTION BEHAVIOR
# ============================================================

status: implementation-ready-runtime
layer: runtime
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Entitlement Resolution Order

1. asset exists and current version is visible
2. lifecycle state allows exposure
3. regional policy allows exposure
4. age policy allows exposure
5. rights policy allows requested action
6. ownership or subscription entitlement is checked
7. sample entitlement is checked if full entitlement is absent
8. action set is returned

## 2. Open Action Rules

### Sample Open
Allowed when:
- sample assets exist
- sample is published
- region and age policy allow sample exposure

### Full Reader Open
Allowed when:
- asset type is publishing
- entitlement state is owned_permanent or subscription_access or owned_and_subscription_access
- lifecycle state is published
- rights do not block full access

### Full Viewer Open
Allowed when:
- asset type is visual
- entitlement state is owned_permanent or subscription_access or owned_and_subscription_access
- lifecycle state is published
- rights do not block full access

## 3. Library Visibility Rules

### Visible in My Library
True when:
- entitlement state is owned_permanent or subscription_access or owned_and_subscription_access
- blocked flags are false

### Visible in Continue Reading
True when:
- asset type is publishing
- last-opened exists
- user still has a full-open entitlement

### Visible in Continue Viewing
True when:
- asset type is visual
- last-opened exists
- user still has a full-open entitlement

## 4. Subscription Expiry Runtime

When subscription expires:
- subscription_access is removed
- owned_permanent remains if present
- library visibility is recalculated
- progress history may remain stored
- full-open action is removed if no remaining entitlement exists

## 5. Rights Change Runtime

When rights are tightened:
- marketplace exposure may be removed
- library access may be blocked
- exhibition projection may be revoked
- progress and bookmark history remain stored unless deletion is mandated by policy
