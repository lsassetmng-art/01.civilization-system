# ============================================================
# LIFE PLANNER INTEGRATED CANONICAL
# ============================================================

status: integrated-draft
system: LifePlanner
owner: Boss
prepared_by: Zero

definition:
  - LifePlannerは人生全体の中長期計画を整理する主軸アプリである
  - ライフイベントと目標を時間軸で管理し、人生設計の見直しを継続支援する
  - お金だけではなく、家族、住居、仕事、学び、健康、老後、終活、法務を横断して扱う
  - 自動決定アプリではなく、整理・比較・見直し支援アプリである

core_functions:
  - 人生計画表
  - 年表表示
  - 目標カテゴリ管理
  - 優先順位
  - 実行予定時期
  - 関連費用概算
  - メモ
  - 見直し履歴
  - 家族共有
  - シナリオ比較

pricing:
  free:
    price_jpy_month: 0
    features:
      - 人生計画表
      - 年表表示
      - 目標管理
      - 基本通知
  family:
    price_jpy_month: 500
    features:
      - 家族共有
      - 家族共同編集
      - シナリオ比較
      - 分野別ダッシュボード
      - 年齢別ビュー

lifeos_boundaries:
  inbound:
    - MoneyPlannerから資金計画受信
    - EndOfLifePlannerから終活状況受信
    - BodyMetrics/TrainingCoachから健康目標受信
    - 法律系アプリから手続きメモ受信
  rule:
    - 他アプリ正本を上書きしない
    - 受信情報は見直し候補として扱う
