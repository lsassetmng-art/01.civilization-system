# ============================================================
# TRAINING COACH PERMISSION BOUNDARY
# ============================================================

status: canonical-draft
phase: payload-definition
system: TrainingCoach
layer: 100.security
owner: Boss
prepared_by: Zero

purpose:
  - role ごとの閲覧 / 作成 / 更新 / 実行範囲を固定する
  - owner / coach_view / future shared viewer の境界を明確化する

roles:
  owner:
    summary:
      - 本人の正本利用者
  coach_view:
    summary:
      - 将来拡張の閲覧系ロール
  family_view:
    summary:
      - 将来拡張の共有閲覧系ロール

permission_matrix:

training_plan:
  owner:
    read: allowed
    create: allowed
    update: allowed
    delete: allowed
  coach_view:
    read: future_limited
    create: denied
    update: denied
    delete: denied
  family_view:
    read: future_limited
    create: denied
    update: denied
    delete: denied

training_session:
  owner:
    read: allowed
    create: system_generated
    update: limited
    delete: denied
  coach_view:
    read: future_limited
    create: denied
    update: denied
    delete: denied
  family_view:
    read: denied
    create: denied
    update: denied
    delete: denied

completion_log:
  owner:
    read: allowed
    create: system_generated
    update: denied_after_finalize
    delete: denied
  coach_view:
    read: future_limited
    create: denied
    update: denied
    delete: denied
  family_view:
    read: denied
    create: denied
    update: denied
    delete: denied

fatigue_note:
  owner:
    read: allowed
    create: allowed
    update: allowed_same_day
    delete: limited
  coach_view:
    read: denied_by_default
    create: denied
    update: denied
    delete: denied
  family_view:
    read: denied
    create: denied
    update: denied
    delete: denied

guide_content:
  owner:
    read: allowed
    create: denied
    update: denied
    delete: denied
  coach_view:
    read: future_limited
    create: denied
    update: denied
    delete: denied
  family_view:
    read: future_limited
    create: denied
    update: denied
    delete: denied

premium_features:
  owner:
    access: premium_only
  coach_view:
    access: future_policy_needed
  family_view:
    access: derived_from_owner_subscription_candidate

scope_rules:
  - owner は自分のデータのみ操作可能
  - coach_view は将来追加時も health related raw data を全面閲覧しない
  - family_view は進捗要約中心で、生データ全面共有を避ける
  - 連携 outbound は role に関係なく system policy に従う
