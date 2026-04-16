# MealPlanner Tiny Copy Adjustments

## 1. purpose
既存 UI copy の細かな表現ゆれを統一する。

## 2. standard_terms
- 献立:
  - 基本の表現
- 献立表:
  - 画面 / CSV の文脈で使用
- 買い物リスト:
  - 一貫してこの表現を使う
- 家族共有:
  - household共有 のユーザー向け表現
- 公開申請:
  - publish request のユーザー向け表現
- 基本献立:
  - cx22073jw_base のユーザー向け表現
- 自分の献立:
  - user_private のユーザー向け表現
- 公開献立:
  - user_published のユーザー向け表現

## 3. wording_unification
use:
- 献立を作る
do_not_prefer:
- 献立生成
- プラン生成

use:
- 差し替える
do_not_prefer:
- スロット更新

use:
- 実績を記録
do_not_prefer:
- history record

use:
- 公開準備中
do_not_prefer:
- draft

use:
- 審査中
do_not_prefer:
- review_pending

use:
- 公開済み
do_not_prefer:
- published

use:
- 却下
do_not_prefer:
- rejected

## 4. paid_cta_copy
primary:
- 有料にアップグレード

secondary:
- あとで

assist:
- 月額500円で利用できます
- サポートはAIチャットのみです

## 5. free_limit_copy
- テンプレート保存数の上限に達しました
- お気に入り保存数の上限に達しました
- 30日より前の履歴は有料で確認できます

## 6. empty_state_copy_refine
- まだ献立がありません
- まだ買い物リストがありません
- まだ在庫が登録されていません
- 条件に合う候補が見つかりませんでした

## 7. health_boundary_copy_refine
- 本アプリは生活改善支援を目的としています
- 医療診断や治療判断は行いません
- 体調や治療に関する判断は、必要に応じて専門家へ相談してください

## 8. support_copy_refine
- サポートはAIチャットのみです
- 操作案内や基本的な困りごとを案内します

## 9. csv_copy_refine
- CSV出力
- CSVを出力しました
- CSV出力に失敗しました
