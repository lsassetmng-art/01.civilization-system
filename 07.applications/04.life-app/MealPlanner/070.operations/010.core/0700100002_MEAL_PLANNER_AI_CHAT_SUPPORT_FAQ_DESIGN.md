# MealPlanner AI Chat Support FAQ Design

## 1. purpose
MealPlanner のサポートを AIチャットのみで運用する前提で、
対応範囲、FAQ、非対応範囲を固定する。

## 2. support_model
- official_support_mode:
  - ai_chat_only
- no_human_support_default:
  - true

## 3. support_scope_included
- 使い方案内
- 基本設定案内
- 画面遷移案内
- budget_tier の説明
- CSV出力の案内
- user_menu 作成の案内
- 公開申請の案内
- pantry 連携の案内
- family 共有の案内
- よくある入力エラーの案内
- 基本トラブルシュート
- free / paid の違い説明

## 4. support_scope_excluded
- 医療相談
- 栄養士業務相当の個別指導
- 病気や治療に関する助言
- 個別献立の専門責任ある保証
- 人手によるデータ修正代行
- 電話サポート
- メールによる有人サポート
- 返金の個別裁量判断
- LifeOS 公開審査の個別保証

## 5. tone_policy
- 短く分かりやすく
- 家庭向け
- 責めない
- 医療判断に踏み込まない
- 強い断定を避ける

## 6. faq_core

### Q1
- question:
  - 無料と有料の違いは？
- answer:
  - 無料では献立作成、買い物リスト、CSV出力、自分の献立追加などの基本機能を使えます。有料では在庫連携、家族共有、栄養表示、LifeOS連携、AIチャットサポートが使えます。

### Q2
- question:
  - 有料はいくら？
- answer:
  - 有料は月額500円です。

### Q3
- question:
  - サポートはどう受けられる？
- answer:
  - サポートはAIチャットのみです。操作案内や基本的な困りごとを案内します。

### Q4
- question:
  - 献立は日・週・月で作れる？
- answer:
  - はい。日、週、月の3つの粒度で献立提案を使えます。普段は週、急ぎのときは日、先回りには月が向いています。

### Q5
- question:
  - CSV出力はできる？
- answer:
  - はい。日、週、月の献立表をCSV出力できます。

### Q6
- question:
  - 自分の献立を追加できる？
- answer:
  - はい。自分の献立を追加して、普段の提案や献立表に使えます。

### Q7
- question:
  - 自分の献立を公開できる？
- answer:
  - はい。LifeOS を通じて公開申請できます。公開は申請後に処理されます。

### Q8
- question:
  - 食材データや基本献立はどこから来る？
- answer:
  - 基礎知識は CX22073JW を参照基盤として扱います。MealPlanner では家庭ごとの設定や履歴を扱います。

### Q9
- question:
  - 予算はどう決まる？
- answer:
  - 節約、普通、多めから選びます。内部では家族人数や地域、通貨などを見て参考金額を計算します。

### Q10
- question:
  - 家族で共有できる？
- answer:
  - はい。有料では家族で献立や買い物リストを共有できます。

### Q11
- question:
  - 在庫連携はできる？
- answer:
  - 有料では冷蔵庫在庫を登録して、買い物差分や余り食材優先提案に使えます。

### Q12
- question:
  - 医療的な相談もできる？
- answer:
  - いいえ。MealPlanner は生活改善支援アプリであり、医療診断や治療判断は行いません。

## 7. error_help_patterns

### csv_failed
- user_message:
  - CSV出力に失敗しました
- ai_help_message:
  - もう一度お試しください。対象の献立表が保存済みか、出力対象の日・週・月が正しいか確認してください。

### publish_failed
- user_message:
  - 公開申請に失敗しました
- ai_help_message:
  - 献立名や食材情報が不足していないか確認してから、もう一度お試しください。

### pantry_blocked_free
- user_message:
  - 在庫連携は有料で利用できます
- ai_help_message:
  - 有料では在庫登録、買い物差分、余り食材優先提案まで使えます。

### history_limit_free
- user_message:
  - 30日より前の履歴は有料で確認できます
- ai_help_message:
  - 有料では長い期間の履歴も確認できます。

## 8. escalation_policy
- no_human_escalation_default:
  - true
- exceptional_future_placeholder:
  - store_refund_policy_or_platform_support_only
- notes:
  - アプリ内サポートは AIチャットのみ
  - 課金処理そのものはストア側案内を優先する

## 9. non_goals
- FAQ に実装仕様を混ぜない
- FAQ に医療表現を混ぜない
- FAQ に審査保証を混ぜない
