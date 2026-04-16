# CareerLaunch CANONICAL

app: CareerLaunch
schema: life
status: design-ready-for-implementation
## Canonical Positioning
- 独立した個人向け転職応募実行アプリである。
- 文書生成単体ではなく、応募実務と面接準備の実行支援を主目的とする。
- 求人媒体や ATS 本体ではない。
- schema は life を正本とする。
- ペルソナと背景の表示 / 変更を正式要件とする。

## Included Scope
- 基本プロフィール整理
- 職務経歴 / 実績 / 強み / 転職理由整理
- 履歴書 / 職務経歴書 / 志望動機 / 自己PR / 転職理由の作成
- 求人票貼り付け
- 求人別最適化
- 応募管理
- 面接準備
- 面接後メモとお礼
- PDF / DOCX 出力

## Excluded Scope
- 求人媒体そのもの
- 企業との直接メッセージ基盤
- 採用企業側 ATS 本体
- 労務管理
- 在職企業の人事評価システム
- リアルタイム面接代行

## Main Roles
- owner: 自分の情報整理、書類作成、応募管理、面接準備、面接後対応
- advisor_viewer: 閲覧、コメント参照
- coach_editor: 添削コメント、改善提案、模擬レビュー

## Fixed Design Principles
- pasted job posting first
- local draft first on mobile
- explicit sync state
- silent loss forbidden
- revision history by default
- checklist driven execution
- language and currency ready
- multi platform first
- persona/background visible and configurable

## Core Flow
1. profile preparation
2. document preparation
3. application management
4. interview preparation
5. post interview follow up

## Rival-driven Feature Additions
- job-specific document branching
- ATS keyword suggestions
- interview question generation
- deep-dive follow-up question generation
- interview just-before mode
- thank-you message generation
- application leak-check
- revision comparison
- natural Japanese expression assist

## Billing
- free: 基本文書作成、応募件数制限、基本テンプレート
- pro: 求人別最適化、応募管理、面接準備、PDF / DOCX 出力
- business: AI 添削、面接練習、共有/添削導線、優先サポート

## Implementation-readiness definition
以下が揃った時点を実装準備完了とみなす。
- ドメインモデル固定
- life スキーマ論理テーブル固定
- 主要 payload 固定
- 主要画面の項目と遷移固定
- 状態遷移固定
- ロール / 共有境界固定
- オフライン / 同期 / 出力ルール固定
- Phase boundary fixed

## Document types
- 履歴書
- 職務経歴書
- 志望動機
- 自己PR
- 転職理由
- 企業研究メモ
- 想定質問
- 回答メモ
- 逆質問
- 面接後お礼文
- 面接振り返りメモ

## Application statuses
- 興味あり
- 書類準備中
- 応募済み
- 書類選考中
- 面接予定
- 面接済み
- 内定
- 見送り
- 辞退

## Common component candidate focus
- 文書テンプレート共通
- 改訂履歴共通
- 出力エクスポート共通
- チェックリスト実行共通
- ステータス管理共通
- オフライン下書きキュー共通
- 多言語ラベル共通
- 多通貨表示共通
- ペルソナ表示 / 背景表示共通
