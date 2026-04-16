
# Architecture Overview

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


## role
MealPlanner の構造設計、分割、依存、境界を定義する。

## architecture_summary
- MealPlanner は life schema を正とする
- 基礎知識 / 公開知識 / 辞書知識の正本は CX22073JW 側を前提とする
- MealPlanner 側は household 固有設定、実績、private データ、運用状態を持つ
- 公開審査本体は LifeOS 側責務
- app 単体でMVP開始可能、後で共通化差し替え可能な構造を取る

## main_layers
- constitution:
  - 原則 / 境界
- architecture:
  - 構造 / 分割 / 依存
- model:
  - データ意味
- runtime:
  - 状態遷移 / 実行挙動
- flow:
  - 利用 / 公開 / CSV出力 / 履歴
- integration:
  - CX22073JW / LifeOS Publish / LifeOS連携
- interface:
  - 画面 / 文言 / CSV / component 分解
- policy:
  - free / paid / versioning / retention
- operations:
  - AIチャットサポート / ストア境界

## boundary_highlights
- private / household / lifeos_public を混同しない
- published menu は直接上書きしない
- favorite / template は snapshot-first
- state transition は自由遷移にしない
