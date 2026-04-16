# CareerLaunch ENTITY DEFINITIONS
## career_profile
応募の土台になる基本プロフィール。氏名、連絡先、希望条件、要約を保持する。

## career_profile_revision
プロフィール変更履歴。比較や復元に用いる。

## career_achievement_item
成果・実績の箇条書き単位。STARや数値成果を保持する。

## career_strength_item
強み・自己PR素材。根拠エピソードと結び付ける。

## career_reason_item
転職理由・志望理由の素材。ネガティブ理由と前向き変換を分離する。

## job_posting_paste
貼り付けた求人票原文と抽出メタ情報。URL、本文、言語、通貨を保持する。

## application_company
応募先企業の管理単位。企業名、メモ、参照リンクを保持する。

## application_position
求人単位の応募管理本体。ステータス、応募日、選考日程を保持する。

## application_stage_event
選考進行イベント履歴。書類提出、面接実施、結果受領などを保持する。

## document_bundle
1応募に紐づく提出書類セット。履歴書・職務経歴書・志望動機などの組を表す。

## document_asset
文書本体。ドキュメント種別ごとの最新スナップショットを保持する。

## document_revision
文書改訂履歴。差分、バージョン、根拠求人との対応を保持する。

## interview_plan
面接準備パック。企業研究、想定質問、逆質問、当日チェックを保持する。

## interview_question_item
想定質問、深掘り質問、逆質問の単位。

## interview_answer_note
回答下書き、要約、長さ調整、改善メモを保持する。

## interview_session_note
面接後メモ、良かった点、改善点、次回対策を保持する。

## thank_you_message
お礼メッセージ案と送付状況を保持する。

## checklist_instance
応募前・面接前・面接後のチェックリスト実行本体。

## checklist_item_state
チェック項目ごとの完了状態とメモ。

## advisor_share
advisor_viewer / coach_editor 共有設定。

## export_job
PDF / DOCX 出力ジョブ履歴。

## reminder_schedule
応募期限、面接予定、送付確認の通知設定。

## persona_display_preference
表示ペルソナ、背景、画面別表示ON/OFFなどを保持する。
