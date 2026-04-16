# ============================================================
# NAMECARD BADGE LABEL INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
screen_scope: badge_label
owner: Boss
prepared_by: Zero

purpose:
Defines canonical badge and short-label wording for UI states.

# ============================================================
# 1. SYNC BADGES
# ============================================================

UI_SYNC_LOCAL_ONLY:
- badge: Local only
- detail: Saved locally only

UI_SYNC_PENDING:
- badge: Pending sync
- detail: Waiting to sync

UI_SYNC_SYNCING:
- badge: Syncing
- detail: Synchronizing now

UI_SYNC_SYNCED:
- badge: Synced
- detail: Synchronized with BusinessOS

UI_SYNC_CONFLICT:
- badge: Conflict
- detail: Sync conflict needs resolution

UI_SYNC_FAILED:
- badge: Sync failed
- detail: Synchronization failed

# ============================================================
# 2. APP SHARE BADGES
# ============================================================

UI_APP_SHARE_PRIVATE:
- badge: Private
- detail: Visible only to you

UI_APP_SHARE_SHARED_PARTIAL:
- badge: Shared
- detail: Shared with selected users

UI_APP_SHARE_SHARED_ACTIVE:
- badge: Shared
- detail: App-internal sharing active

UI_APP_SHARE_REVOKED:
- badge: Share revoked
- detail: App-internal sharing removed

# ============================================================
# 3. ERP PUBLICATION BADGES
# ============================================================

UI_ERP_NOT_PUBLISHED:
- badge: Not published
- detail: Not shared company-wide

UI_ERP_PENDING_APPROVAL:
- badge: Approval pending
- detail: Waiting for approval

UI_ERP_APPROVED_NOT_PUBLISHED:
- badge: Approved
- detail: Approved, waiting for publication

UI_ERP_RETURNED_FOR_FIX:
- badge: Fix required
- detail: Returned for correction

UI_ERP_REJECTED:
- badge: Rejected
- detail: Publication request rejected

UI_ERP_PUBLISHED:
- badge: Published
- detail: Shared company-wide in ERP

UI_ERP_PUBLISH_FAILED:
- badge: Publish failed
- detail: ERP publication failed

# ============================================================
# 4. RELATIONSHIP BADGES
# ============================================================

UI_REL_NONE:
- badge: No relation
- detail: No related entry shown

UI_REL_EXISTS:
- badge: Related
- detail: Related entries available

UI_REL_IMPORTANT:
- badge: Important relation
- detail: Important related entry exists

UI_REL_MULTIPLE:
- badge: Multiple relations
- detail: Multiple related entries available

# ============================================================
# 5. PROTECTION BADGES
# ============================================================

UI_PROTECTED_NORMAL:
- badge: Visible
- detail: Field visible

UI_PROTECTED_RESTRICTED:
- badge: Restricted
- detail: Limited by access rules

UI_PROTECTED_HIDDEN:
- badge: Hidden
- detail: Hidden by protection policy

