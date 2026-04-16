# ============================================================
# LEGAL SUPPORT DEVELOPMENT BACKLOG
# ============================================================

status: draft-formal
system: LegalSupport
layer: development
subdomain: backlog

now_focus:
  - schema=life 前提の正本固定
  - 相談案件構造の確定
  - 事実と推測の分離ルール固定
  - 画面一覧とプラン差分の固定
  - 家族共有境界の固定

next_focus:
  - 分野別テンプレート詳細化
  - 書類カテゴリ体系の固定
  - PDF出力項目の固定
  - 期限通知条件の固定
  - LifeOS他アプリへの振り分けUI整理

later_focus:
  - 会話要約の導線詳細化
  - 音声メモ格納方針
  - 契約書メタ情報の標準項目
  - 外部専門家共有モード
  - MoneyPlanner連携粒度の最適化

mvp_backlog:
  must_lock:
    - legal_case 入力項目
    - fact_timeline 入力項目
    - stakeholder 入力項目
    - document_item 入力項目
    - question_list 入力項目
    - consultation_note 入力項目
    - action_item 入力項目
    - deadline_item 入力項目

  should_lock:
    - 案件一覧フィルタ
    - 共有前確認UI
    - 案件状態遷移
    - アーカイブ条件

  later_lock:
    - AI要約出力形式
    - 音声メモ整理導線
    - 外部専門家共有パッケージ

pricing_related_backlog:
  - Free保存件数上限の最終決定
  - PlusFamily の共有上限有無の決定
  - PDF出力テンプレート数の決定
