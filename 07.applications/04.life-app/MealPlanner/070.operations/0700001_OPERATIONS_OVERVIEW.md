
# Operations Overview

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


## role
MealPlanner の運用、サポート、課金案内境界を定義する。

## operations_summary
- サポートは AIチャットのみ
- 操作案内、設定案内、基本トラブルシュートを扱う
- 医療相談は扱わない
- ストア決済や返金はストア / プラットフォーム側案内を優先する

## support_scope_included
- 使い方案内
- 画面案内
- budget_tier 説明
- CSV出力案内
- user_menu 作成案内
- 公開申請案内
- free / paid 差の説明

## support_scope_excluded
- 医療相談
- 栄養士業務相当の個別指導
- 人手による代行
- ストア課金の内部修正
- 返金の個別裁量判断

## operation_notes
- AIチャットは短く分かりやすく案内する
- 課金処理エラーはストア案内へ寄せる
