# ============================================================
# ORDER FLOW FINAL RESTART PROMPT
# ============================================================

status: draft-restart-prompt
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a ready-to-paste restart prompt for the next chat.

restart_prompt:
OrderFlow の現設計を前提に次へ進みたい。
現在は、境界・状態・モデル・画面・API・validation・permission・query・notification・dashboard・table candidate・FK candidate・DDL draft・RLS candidate・migration packaging・seed strategy・InvoiceFlow handoff boundary まで固まっている。
共通部品の exact 設計は別チャット扱いのまま維持したい。
次は以下のどれかに進めたい。
1. 佐藤レビュー結果の反映
2. seed SQL の精密化
3. InvoiceFlow 側受け口の exact 設計
4. 実行前最終整理

start_files:
- 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
- 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
- 9000001_ORDER_FLOW_DESIGN_BIBLE.md
- 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md

