# MealPlanner Decision Ledger

## 1. purpose
MealPlanner で確定した主要判断を短く一覧化する。

## 2. decisions

### decision_01
- theme:
  - schema
- decision:
  - schema は life
- status:
  - fixed

### decision_02
- theme:
  - pricing
- decision:
  - 無料 / 有料500円
- status:
  - fixed

### decision_03
- theme:
  - support
- decision:
  - サポートは AIチャットのみ
- status:
  - fixed

### decision_04
- theme:
  - planning horizon
- decision:
  - 日 / 週 / 月の3粒度
- status:
  - fixed

### decision_05
- theme:
  - budget
- decision:
  - 節約 / 普通 / 多め を主入力にする
- status:
  - fixed

### decision_06
- theme:
  - csv
- decision:
  - free / paid とも CSV出力可
- status:
  - fixed

### decision_07
- theme:
  - user menu
- decision:
  - user_menu を追加可能
- status:
  - fixed

### decision_08
- theme:
  - publish
- decision:
  - LifeOS を通じて公開申請
- status:
  - fixed

### decision_09
- theme:
  - source of truth
- decision:
  - 基礎知識の正本は CX22073JW
- status:
  - fixed

### decision_10
- theme:
  - versioning
- decision:
  - published menu は直接上書きしない
- status:
  - fixed

### decision_11
- theme:
  - favorite/template
- decision:
  - snapshot-first
- status:
  - fixed

### decision_12
- theme:
  - history retention
- decision:
  - DB保持、閲覧差で free / paid を分ける
- status:
  - fixed

### decision_13
- theme:
  - notification
- decision:
  - 通知設定の正本は user 単位
- status:
  - fixed

### decision_14
- theme:
  - implementation phase
- decision:
  - 実装はまだしない
- status:
  - fixed

## 3. usage_rule
- 新しい意思決定を増やしたら、この ledger に追記する
- fixed を覆す時は、related docs 全体を見直す
