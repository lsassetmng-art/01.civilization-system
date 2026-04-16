# ============================================================
# OPEN ISSUE LEDGER
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only
schema_name: life

open_issues:

  issue_001:
    title: viewer にコメント権限を与えるか
    current_state: resolved
    decision:
      - 初期は閲覧のみ
      - コメント権限なし

  issue_002:
    title: highly_sensitive を案件共有からどこまで切り離すか
    current_state: resolved
    decision:
      - owner-only を許容
      - delegated_editor にも見せない構成を許可

  issue_003:
    title: 書類と証拠をどこまで分離表示するか
    current_state: resolved
    decision:
      - model は分離
      - interface は同一整理画面で区分表示

  issue_004:
    title: consultation_note から task / deadline への変換導線をどこまで明示するか
    current_state: resolved
    decision:
      - 保存後の候補提示まで
      - 自動作成しない

  issue_005:
    title: advisor_contact を案件配下でなく owner 配下に保つか
    current_state: resolved
    decision:
      - owner 配下を基本
      - 案件から参照

  issue_006:
    title: 共有パックの定型テンプレートを共通部品化するか
    current_state: partially_resolved
    decision:
      - 初期は LegalSupport 固有
      - 将来の共通部品候補には残す

  issue_007:
    title: 期限が曖昧な場合の仮期限表現をどうするか
    current_state: partially_resolved
    decision:
      - 将来拡張候補として保持
      - 初期は専用 field をまだ増やし切らない

  issue_008:
    title: audio_future_candidate を正式対象にするか
    current_state: resolved
    decision:
      - 初期対象外
      - 将来拡張候補

remaining_focus_points:
  - 仮期限表現の正式 field 化をいつ行うか
  - share pack を共通部品へ昇格させるタイミング
