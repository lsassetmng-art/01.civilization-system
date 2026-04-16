# ============================================================
# TRAINING COACH NOTIFICATION LOCALIZATION SET POLICY
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 080.policy
owner: Boss
prepared_by: Zero

purpose:
  - notification 文言群の locale 設計方針を固定する
  - 通知の subject/body/action が locale ごとに破綻しないようにする
  - safety 優先の通知を先に固める

notification_localization_policy:
  - notification code 単位で key set を持つ
  - title / body / action_label を分ける
  - safety 系通知は最優先で locale 確定する
  - same meaning, different tone の乱立を避ける

key_set_shape:
  fields:
    notification_code: string
    title_key: string
    body_key: string
    action_primary_key: string|null
    action_secondary_key: string|null
    safety_level: normal|elevated|critical

required_initial_sets:

TC-NOTI-0001:
  title_key: TC_NOTI_TC-NOTI-0001_title
  body_key: TC_NOTI_TC-NOTI-0001_body
  action_primary_key: TC_NOTI_TC-NOTI-0001_action_open
  action_secondary_key: null
  safety_level: normal

TC-NOTI-0002:
  title_key: TC_NOTI_TC-NOTI-0002_title
  body_key: TC_NOTI_TC-NOTI-0002_body
  action_primary_key: TC_NOTI_TC-NOTI-0002_action_open
  action_secondary_key: null
  safety_level: normal

TC-NOTI-0003:
  title_key: TC_NOTI_TC-NOTI-0003_title
  body_key: TC_NOTI_TC-NOTI-0003_body
  action_primary_key: TC_NOTI_TC-NOTI-0003_action_open
  action_secondary_key: TC_NOTI_TC-NOTI-0003_action_dismiss
  safety_level: normal

TC-NOTI-0004:
  title_key: TC_NOTI_TC-NOTI-0004_title
  body_key: TC_NOTI_TC-NOTI-0004_body
  action_primary_key: TC_NOTI_TC-NOTI-0004_action_open
  action_secondary_key: TC_NOTI_TC-NOTI-0004_action_rest
  safety_level: elevated

TC-NOTI-0005:
  title_key: TC_NOTI_TC-NOTI-0005_title
  body_key: TC_NOTI_TC-NOTI-0005_body
  action_primary_key: TC_NOTI_TC-NOTI-0005_action_open
  action_secondary_key: null
  safety_level: normal

fallback_rules:
  - locale fallback policy に従う
  - title missing でも body のみ送る設計にしない
  - safety notification は missing locale でも default locale で送れるようにする
  - action label missing の場合は open action のみ残す候補

tone_rules:
  - reminder は support tone
  - streak は guilt-free
  - missed followup は pressure-free
  - rest recommendation は calm + safety-first
  - premium hint は non-pushy

review_priority_order:
  - TC-NOTI-0004
  - TC-NOTI-0001
  - TC-NOTI-0003
  - TC-NOTI-0002
  - TC-NOTI-0005
