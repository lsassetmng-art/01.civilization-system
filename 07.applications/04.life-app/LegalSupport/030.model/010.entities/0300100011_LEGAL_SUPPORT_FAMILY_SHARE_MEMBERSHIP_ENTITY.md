# ============================================================
# LEGAL SUPPORT FAMILY SHARE MEMBERSHIP ENTITY
# ============================================================

status: draft-formal
system: LegalSupport
layer: model
subdomain: entities
schema: life

entity:
  table_name: life.family_share_membership

purpose:
  - family share の共有対象者と権限状態を案件単位で管理する
  - shared_family_viewer を明示的に保持する
  - invitation 承認前後の状態を追跡する

fields:
  - family_share_membership_id: uuid
  - legal_case_id: uuid
  - owner_user_id: uuid
  - invited_user_id: uuid|null
  - invite_channel_type: text
  - invite_target_label: text|null
  - membership_status: text
  - permission_role: text
  - invited_at: timestamptz|null
  - accepted_at: timestamptz|null
  - revoked_at: timestamptz|null
  - created_at: timestamptz
  - updated_at: timestamptz
  - deleted_at: timestamptz|null

enums:
  invite_channel_type:
    - internal_user
    - external_placeholder
    - family_slot
  membership_status:
    - invited
    - active
    - declined
    - revoked
    - expired
  permission_role:
    - shared_family_viewer

rules:
  - 1 legal_case に複数 membership を持てる
  - active membership のみ family view 対象とする
  - revoked / expired / declined は履歴として保持する
  - 初期段階では permission_role は shared_family_viewer のみ
