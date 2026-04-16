# ============================================================
# DATA RESPONSIBILITY CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only

data_responsibilities:

  legal_case:
    owns:
      - 案件基本情報
      - 共有既定
      - 秘匿既定
      - アーカイブ状態
    does_not_own:
      - permissions 計算結果
      - 集計 counts
      - pagination 情報

  stakeholder:
    owns:
      - 関係者名
      - 関係者種別
      - owner との関係
      - 役割メモ
    does_not_own:
      - 案件共有権限
      - 法的地位の確定判断

  fact_timeline_event:
    owns:
      - 発生日
      - 出来事タイトル
      - 詳細
      - 事実確度
      - 参照元情報
    does_not_own:
      - 真実性の最終保証
      - 相談先判断

  legal_document:
    owns:
      - 書類 metadata
      - confidentiality_level
      - reviewed_flag
      - 原本保管場所メモ
    does_not_own:
      - 添付 binary 本体そのものの責務定義
      - 共有権限計算結果

  evidence_item:
    owns:
      - 証拠 metadata
      - 入手元要約
      - 真正性メモ
      - confidentiality_level
    does_not_own:
      - 真正性の法的保証
      - binary 保管詳細

  consultation_note:
    owns:
      - 相談日時
      - 相談先
      - 相談要約
      - 助言メモ
      - 未解決点
      - 次対応
    does_not_own:
      - 助言の正当性保証
      - 専門家資格認証

  legal_task:
    owns:
      - 作業単位
      - 期限
      - 状態
      - 関連書類参照
    does_not_own:
      - 案件共有設定
      - 通知エンジン本体

  deadline_event:
    owns:
      - 期限タイトル
      - 期限日
      - 深刻度
      - 完了状態
    does_not_own:
      - 通知送信実体
      - カレンダー連携実処理

  advisor_contact:
    owns:
      - 相談先候補情報
      - 連絡メモ
      - 料金メモ
      - 比較メモ
    does_not_own:
      - 面談記録本体
      - 案件共有制御

  case_share_grant:
    owns:
      - 対象ユーザー
      - 権限種別
      - 共有範囲
      - 秘匿除外設定
      - 有効状態
    does_not_own:
      - export artifact
      - actor 計算済み permissions

  case_share_pack:
    owns:
      - 共有パック種別
      - 出力形式
      - 同梱セクション
      - 伏字レベル
      - 生成状態
    does_not_own:
      - 元資料の正本性
      - 共有相手ごとの権限正本

cross_entity_rules:
  - legal_case が親責務を持つ
  - 子 entity は case_id 基点でぶら下がる
  - permissions は計算結果であり entity 正本ではない
  - counts は集計結果であり entity 正本ではない
