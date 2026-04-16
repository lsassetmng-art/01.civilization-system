# MealPlanner Design Freeze Ready Message

## 1. purpose
freeze candidate 段階に入ったことを簡潔に共有するための文面草案。

## 2. draft_message
MealPlanner は、実装前の設計 freeze candidate 段階にかなり近い状態です。

固定済みの主な内容:
- schema は life
- 無料 / 有料500円
- サポートは AIチャットのみ
- 日 / 週 / 月の献立提案
- budget_tier
- CSV出力
- user_menu 追加 / 公開申請
- CX22073JW 正本境界
- API / DB logical / UI / policy の主要設計

まだ含めないもの:
- DDL
- SQL
- migration
- 実装コード

次は、最終棚卸しのうえで freeze candidate として扱うかを判断する段階です。
