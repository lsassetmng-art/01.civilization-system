# ============================================================
# LEGAL SUPPORT DOMAIN MODULES
# ============================================================

status: draft-formal
system: LegalSupport
layer: architecture
subdomain: domain

domain_modules:
  case_management:
    purpose:
      - 相談案件の作成、分類、状態管理
    responsibilities:
      - 案件作成
      - 分野分類
      - 状態管理
      - 優先度管理

  fact_timeline_management:
    purpose:
      - 出来事を時系列に整理する
    responsibilities:
      - 事実登録
      - 推測分離
      - 未確認事項保持
      - 並び替え
      - 要約表示

  stakeholder_management:
    purpose:
      - 関係者を整理する
    responsibilities:
      - 本人
      - 家族
      - 相手方
      - 専門家
      - 関係性メモ

  document_management:
    purpose:
      - 必要書類と受領書類を管理する
    responsibilities:
      - 書類分類
      - 取得状況
      - 提出状況
      - 関連案件紐付け
      - 共有可否設定

  question_management:
    purpose:
      - 相談前後の確認事項を管理する
    responsibilities:
      - 質問リスト作成
      - 保留事項管理
      - 回答済み管理
      - 次回確認事項管理

  consultation_history_management:
    purpose:
      - 相談履歴を継続記録する
    responsibilities:
      - 面談記録
      - 電話記録
      - チャット記録
      - 回答要点
      - 保留事項

  action_deadline_management:
    purpose:
      - 次回行動と期限を管理する
    responsibilities:
      - action_item管理
      - deadline_item管理
      - 通知対象選定
      - 優先度付け

  family_share_export:
    purpose:
      - 家族共有と共有資料出力を担う
    responsibilities:
      - 共有範囲設定
      - 案件単位共有
      - 書類単位共有
      - PDF出力
      - 共有前確認

  template_navigation:
    purpose:
      - 分野別に入力導線を最適化する
    responsibilities:
      - 相続テンプレート
      - 離婚テンプレート
      - 消費者トラブルテンプレート
      - 住まいテンプレート
      - その他テンプレート

architecture_principles:
  - 事実と推測を混在させない
  - 共有は常に明示操作で行う
  - 法的判断はモジュール責務に含めない
  - LifeOS他アプリとの連携は案件分類ベースで振り分ける

common_components_addition_candidates:
  - 相談ケース管理共通部品
  - タイムライン整理共通部品
  - 書類管理共通部品
  - 期限通知共通部品
  - 共有エクスポート共通部品
  - 質問リスト共通部品
  - 関係者整理共通部品
