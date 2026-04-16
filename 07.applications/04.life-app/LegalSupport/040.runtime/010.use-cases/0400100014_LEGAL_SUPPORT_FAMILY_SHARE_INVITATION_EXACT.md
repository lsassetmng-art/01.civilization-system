# ============================================================
# LEGAL SUPPORT FAMILY SHARE INVITATION EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

principles:
  - family share は plus_family のみ
  - owner の明示操作で invitation を作る
  - 初期は viewer 権限のみ
  - 招待承認前は案件本文を開示しない

# ------------------------------------------------------------
# 1. invite family member
# ------------------------------------------------------------
invite_family_member:
  request:
    action: invite_family_member
    payload:
      legal_case_id: uuid
      invite_channel_type: enum[internal_user, external_placeholder, family_slot]
      invited_user_id: uuid|null
      invite_target_label: string|null
      permission_role: enum[shared_family_viewer]
  response:
    family_share_membership:
      family_share_membership_id: uuid
      legal_case_id: uuid
      invited_user_id: uuid|null
      invite_channel_type: string
      invite_target_label: string|null
      membership_status: invited
      permission_role: shared_family_viewer
      invited_at: timestamptz
      created_at: timestamptz
      updated_at: timestamptz

# ------------------------------------------------------------
# 2. accept family invitation
# ------------------------------------------------------------
accept_family_invitation:
  request:
    action: accept_family_invitation
    payload:
      family_share_membership_id: uuid
  response:
    family_share_membership:
      family_share_membership_id: uuid
      membership_status: active
      accepted_at: timestamptz
      updated_at: timestamptz

# ------------------------------------------------------------
# 3. decline family invitation
# ------------------------------------------------------------
decline_family_invitation:
  request:
    action: decline_family_invitation
    payload:
      family_share_membership_id: uuid
  response:
    family_share_membership:
      family_share_membership_id: uuid
      membership_status: declined
      updated_at: timestamptz

# ------------------------------------------------------------
# 4. revoke family membership
# ------------------------------------------------------------
revoke_family_membership:
  request:
    action: revoke_family_membership
    payload:
      family_share_membership_id: uuid
      revoke_reason: string|null
  response:
    family_share_membership:
      family_share_membership_id: uuid
      membership_status: revoked
      revoked_at: timestamptz
      updated_at: timestamptz

# ------------------------------------------------------------
# 5. list family memberships
# ------------------------------------------------------------
list_family_memberships:
  request:
    action: list_family_memberships
    payload:
      legal_case_id: uuid
  response:
    items:
      - family_share_membership_id: uuid
        invited_user_id: uuid|null
        invite_channel_type: string
        invite_target_label: string|null
        membership_status: string
        permission_role: string
        invited_at: timestamptz|null
        accepted_at: timestamptz|null
        revoked_at: timestamptz|null

rules:
  - invite_family_member は owner のみ
  - accept / decline は対象招待先本人のみ
  - revoked membership は family view 対象外
  - active membership が 1件以上あっても case visibility_scope は family_shared のまま維持できる
