# MealPlanner Final Action Ledger

## 1. purpose
実装前の最終レビューで見るべき action を整理する。

## 2. action_items_now

### action_01
- title:
  - integrated document との整合点検
- status:
  - pending
- goal:
  - 最新方針が 00_MEAL_PLANNER_INTEGRATED.md に十分反映されているか確認

### action_02
- title:
  - overview 群の軽い整合点検
- status:
  - pending
- goal:
  - architecture / model / operations / policy / interface の summary が矛盾していないか確認

### action_03
- title:
  - old wording の残存確認
- status:
  - pending
- goal:
  - plus / family 分離案や app_meal_planner など旧表現が残っていないか確認

### action_04
- title:
  - free / paid CSV 差の最終確認
- status:
  - pending
- goal:
  - free でも CSV 出力できる方針が全体で統一されているか確認

### action_05
- title:
  - CX22073JW 境界の最終確認
- status:
  - pending
- goal:
  - MealPlanner 側が基礎知識正本化していないか確認

### action_06
- title:
  - implementation not yet 境界の確認
- status:
  - pending
- goal:
  - DDL / SQL / code が混入していないか確認

## 3. action_items_later

### later_01
- title:
  - framework 決定後の props 落とし込み
- reopen_when:
  - 実装フェーズ移行時

### later_02
- title:
  - notification delivery 実装設計
- reopen_when:
  - 実装フェーズ移行時

### later_03
- title:
  - publish flow transport 詳細
- reopen_when:
  - LifeOS 側 contract 詳細化時

## 4. close_condition
- now actions を一通り見て大きな矛盾がなければ、
  実装前設計フェーズとしてはかなり閉じられる
