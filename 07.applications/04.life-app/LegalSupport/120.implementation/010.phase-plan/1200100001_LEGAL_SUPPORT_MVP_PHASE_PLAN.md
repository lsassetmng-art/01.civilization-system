# ============================================================
# LEGAL SUPPORT MVP PHASE PLAN
# ============================================================

status: draft-formal
system: LegalSupport
layer: implementation
subdomain: phase-plan

phase_a0_design_lock:
  goal:
    - 設計正本を固定する
  outputs:
    - constitution固め
    - architecture固め
    - model固め
    - flow固め
    - interface固め

phase_a1_mvp:
  goal:
    - 相談準備の最小価値を提供する
  scope:
    - 相談テーマ作成
    - 事実メモ
    - 時系列整理
    - 関係者整理
    - 書類一覧
    - 質問リスト
    - 相談履歴
    - 次回アクション
  excluded:
    - 家族共有
    - PDF出力
    - AI要約
    - 音声メモ

phase_a2_paid_core:
  goal:
    - 有料価値を成立させる
  scope:
    - 分野別テンプレート
    - 相談前チェックリスト
    - 重要期限管理
    - 共有PDF出力
    - 家族共有

phase_a3_extension:
  goal:
    - 継続利用価値を高める
  scope:
    - 会話要約
    - 契約書メタ情報管理
    - 音声メモ
    - 外部専門家連携導線

priority_rules:
  - まず記録と整理
  - 次に共有と期限
  - 最後に要約と拡張連携
