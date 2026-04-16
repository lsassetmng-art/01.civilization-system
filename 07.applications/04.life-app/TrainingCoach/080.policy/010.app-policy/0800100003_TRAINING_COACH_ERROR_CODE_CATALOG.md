# ============================================================
# TRAINING COACH ERROR CODE CATALOG
# ============================================================

status: canonical-draft
phase: payload-definition
system: TrainingCoach
layer: 080.policy
owner: Boss
prepared_by: Zero

purpose:
  - 画面 / API / integration 共通のエラーコード体系を固定する
  - 表示文言と内部エラー識別子を分離する

error_code_policy:
  format:
    - TC-VAL-xxxx  : validation
    - TC-AUTH-xxxx : auth / permission
    - TC-DATA-xxxx : data state
    - TC-SYNC-xxxx : sync / linkage
    - TC-SAFE-xxxx : safety restriction
    - TC-SYS-xxxx  : unexpected system

catalog:

validation_errors:
  - code: TC-VAL-0001
    name: required_field_missing
    meaning: 必須項目不足
  - code: TC-VAL-0002
    name: invalid_enum_value
    meaning: 許可されない列挙値
  - code: TC-VAL-0003
    name: invalid_date_format
    meaning: 日付形式不正
  - code: TC-VAL-0004
    name: invalid_range
    meaning: 許可範囲外の数値
  - code: TC-VAL-0005
    name: invalid_payload_version
    meaning: 非対応 payload version

auth_permission_errors:
  - code: TC-AUTH-0001
    name: unauthenticated
    meaning: 未認証
  - code: TC-AUTH-0002
    name: forbidden_role
    meaning: 権限不足
  - code: TC-AUTH-0003
    name: premium_required
    meaning: Premium 限定機能
  - code: TC-AUTH-0004
    name: owner_scope_only
    meaning: owner のみ操作可能

data_state_errors:
  - code: TC-DATA-0001
    name: plan_not_found
    meaning: plan 不在
  - code: TC-DATA-0002
    name: session_not_found
    meaning: session 不在
  - code: TC-DATA-0003
    name: already_completed
    meaning: 既に完了済み
  - code: TC-DATA-0004
    name: immutable_after_finalize
    meaning: 確定後は直接更新不可
  - code: TC-DATA-0005
    name: stale_update_rejected
    meaning: 古い更新を拒否

sync_integration_errors:
  - code: TC-SYNC-0001
    name: upstream_unavailable
    meaning: 連携元一時利用不可
  - code: TC-SYNC-0002
    name: upstream_timeout
    meaning: 連携元タイムアウト
  - code: TC-SYNC-0003
    name: duplicate_event_ignored
    meaning: 重複イベントを無視
  - code: TC-SYNC-0004
    name: version_mismatch
    meaning: 連携 payload version 不一致

safety_errors:
  - code: TC-SAFE-0001
    name: rest_recommended_only
    meaning: 休息推奨状態
  - code: TC-SAFE-0002
    name: high_fatigue_restriction
    meaning: 高疲労のため制限
  - code: TC-SAFE-0003
    name: unsafe_condition_stop
    meaning: 安全上セッション中断推奨

system_errors:
  - code: TC-SYS-0001
    name: unexpected_error
    meaning: 想定外エラー
  - code: TC-SYS-0002
    name: storage_write_failed
    meaning: 保存失敗
  - code: TC-SYS-0003
    name: read_failed
    meaning: 読取失敗

ui_message_mapping_policy:
  - エラーコードと表示文言キーは分離する
  - locale ごとの翻訳は別資産で管理する
  - 内部詳細は response.debug_info に直接出さない
