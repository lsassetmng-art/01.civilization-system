# MealPlanner AI Chat Billing And Store Boundary

## 1. purpose
AIチャットが説明してよい範囲と、ストア案内へ寄せる範囲を固定する。

## 2. AI_chat_can_explain
- 無料 / 有料の違い
- 月額500円であること
- CSV出力可否
- pantry / family share / nutrition / integration が有料であること
- AIチャットのみサポートであること
- 使い方
- 画面操作
- よくあるエラー

## 3. AI_chat_should_redirect_to_store_or_platform
- 実際の課金処理失敗
- 購入復元の詳細
- ストア決済状態の食い違い
- 返金申請
- プラットフォーム側請求詳細
- App Store / Google Play アカウント起因問題

## 4. approved_copy_patterns

### billing_difference
- 無料では基本機能を使えます。有料では在庫連携、家族共有、栄養表示、LifeOS連携、AIチャットサポートが使えます。

### billing_price
- 有料は月額500円です。

### restore_or_store_help
- 購入や請求に関する詳細は、ご利用中のストア案内も確認してください。

### refund_help
- 返金については、購入したストアの案内に沿って確認してください。

## 5. forbidden_copy_patterns
- こちらで返金できます
- 課金状態をこちらで直接修正します
- ストア審査結果を保証します
- 必ず課金が復元されます

## 6. support_boundary_summary
- app usage:
  - AIチャットで案内
- billing transaction internals:
  - store / platform を正とする
- medical:
  - non-supported

## 7. non_goals
- ストア課金実装仕様の詳細化
- 課金復旧手順の画面実装
