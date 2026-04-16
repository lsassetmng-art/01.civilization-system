# MealPlanner Final Alignment Actions

## 1. purpose
freeze candidate 化の前に、最後に揃えるべき action を短くまとめる。

## 2. actions

### action_01
- title:
  - integrated と detail の wording drift 確認
- done_when:
  - old wording なし

### action_02
- title:
  - overview と detail の意味差確認
- done_when:
  - overview が detail と矛盾しない

### action_03
- title:
  - free / paid / support 文言の最終統一
- done_when:
  - 無料 / 有料500円 / AIチャットのみ で統一

### action_04
- title:
  - schema naming の最終統一
- done_when:
  - life 以外の旧命名なし

### action_05
- title:
  - implementation leak の最終確認
- done_when:
  - DDL / SQL / code 混入なし

## 3. exit_statement
この action 群に大きな問題がなければ、
MealPlanner は実装前設計 freeze candidate として十分に整理されたとみなせる。
