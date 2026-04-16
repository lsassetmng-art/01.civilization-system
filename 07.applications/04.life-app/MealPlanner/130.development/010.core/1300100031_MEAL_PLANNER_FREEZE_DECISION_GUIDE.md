# MealPlanner Freeze Decision Guide

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


## 1. purpose
Boss が MealPlanner を freeze candidate として扱うか判断するための簡潔ガイド。

## 2. decide_yes_when
以下がすべて満たされる時、freeze candidate として扱ってよい。

- schema が life で統一
- pricing が 無料 / 有料500円 で統一
- support が AIチャットのみ で統一
- CX22073JW 境界が明確
- API / model / UI / policy が major contradiction なく揃っている
- CSV free / paid 差が明確
- user_menu / publish / versioning が明確
- 実装まだ禁止の境界が守られている

## 3. decide_hold_when
以下がある場合は freeze を保留する。

- old wording が多数残る
- integrated と detail が食い違う
- plus / family 分離案が残る
- schema の旧名残が残る
- private / public 境界が崩れている
- 実装コードや SQL が混入している

## 4. decide_after_fix_when
軽微修正後に freeze でよいもの:
- wording drift
- overview の表現ずれ
- integrated 文書の反映漏れ
- minor copy inconsistency

## 5. note
freeze candidate は「もう変更しない」ではなく、
大きな rule を軽く動かさないための基準である。
