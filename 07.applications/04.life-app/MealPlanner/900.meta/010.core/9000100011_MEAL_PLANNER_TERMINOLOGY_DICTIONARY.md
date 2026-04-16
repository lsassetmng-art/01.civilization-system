# MealPlanner Terminology Dictionary

## 1. purpose
MealPlanner 文書群で使う主要用語の意味をそろえる。

## 2. core_terms

### MealPlanner
- 献立管理アプリ
- LifeOS 配下の生活改善支援アプリ

### life schema
- MealPlanner の runtime / household / history / private data を置く schema

### CX22073JW
- 基礎知識
- 公開知識
- 辞書知識
- 参照知識
の正本前提

### LifeOS Publish
- user_menu の公開申請 / 審査 / 反映を担う外部責務

### user_menu
- ユーザーが作る独自献立
- 初期状態は private

### published menu
- 公開済み献立
- 直接上書きしない
- 版管理前提

### snapshot
- 当時の表示や参照安定性を保つために保存する文字列 / 状態
- 自動追従より安定性を優先する文脈で使う

### budget_tier
- 節約
- 普通
- 多め
- 金額直入力の代わりに使う主入力

### plan_horizon
- daily
- weekly
- monthly

### source_type
- system_seed
- cx22073jw_base
- user_private
- user_published

### publication_status
- private
- draft
- review_pending
- published
- rejected

### private
- household 内の内部利用状態

### household
- app 内 family / 家族共有の単位

### lifeos_public
- publish flow 通過後の公開状態

### free
- 無料プラン

### paid
- 月額500円プラン

### ai_chat_only
- サポートは AIチャットのみ
- 人手対応前提ではない

## 3. wording_preferences
use:
- 献立
- 献立表
- 買い物リスト
- 家族共有
- 公開申請
- 基本献立
- 自分の献立
- 公開献立

avoid_when_possible:
- プラン生成
- スロット更新
- draft
- published
- review_pending
- rejected

## 4. note
用語を変える時は、UI copy と design docs の両方を見る。
