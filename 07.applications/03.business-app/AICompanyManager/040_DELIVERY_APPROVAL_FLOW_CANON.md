# ============================================================
# AICompanyManager DELIVERY APPROVAL FLOW CANON
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase A
status: delivery-approval-canon-initialized

## 1. Purpose

本書は成果物統合、Manager 確認、President 最終確認、人間承認、人間納品までの正本フローを定義する。

## 2. Delivery Flow Overview

Worker Output
→ Leader Review
→ Leader Integration
→ Manager Review
→ President Final Review
→ Human Approval
→ Delivery

## 3. Leader Integration

Leader は承認済み Worker 成果物を統合する。

Leader の責務:
- Worker 成果物の取りまとめ
- 成果物間の整合性確認
- 重複・矛盾の除去
- Manager に渡す単位への整形
- 統合成果物の作成
- 統合メモの作成

出力:
- leader_integrated_output
- leader_review_summary
- open_issues

## 4. Manager Review

Manager は Leader から受け取った統合成果物を確認する。

Manager の確認観点:
- 部門または領域の目的を満たしているか
- President の事業計画と整合しているか
- 領域内の成果物が揃っているか
- 品質に問題がないか
- 期限、リスク、未解決事項が整理されているか

判定:
- approved_to_president
- returned_to_leader
- needs_area_rework
- blocked

## 5. President Final Review

President は Manager から受け取った成果物を全体視点で確認する。

President の確認観点:
- 人間の方針を満たしているか
- 事業計画全体と整合しているか
- 納品物として十分か
- リスクが人間に説明可能か
- 最終納品形式が満たされているか

判定:
- approved_to_human
- returned_to_manager
- needs_replan
- blocked

## 6. Human Approval

President が approved_to_human とした成果物は、人間承認待ちになる。

人間が確認する項目:
- 最終成果物
- 成果物概要
- President の最終コメント
- Manager の確認コメント
- Leader の統合メモ
- 主要な差し戻し履歴
- 未解決事項
- 納品形式
- 利用上の注意

人間の判定:
- approve_delivery
- request_revision
- reject
- cancel

## 7. Delivery

人間が approve_delivery を選択した場合、納品完了とする。

納品時に保存するもの:
- 最終成果物
- 納品日時
- 承認者
- 承認コメント
- 納品形式
- 成果物バージョン
- 監査ログ
- 関連レビュー履歴

## 8. Return Route After Human Review

人間が request_revision を選択した場合、President に戻す。

Human
→ revision_request
→ President
→ Manager
→ Leader
→ Worker

戻し先は President が判断する。

## 9. Canonical Rule

人間への納品は、President 最終確認後、必ず人間承認を経由する。
人間承認前の成果物は「納品物」ではなく「納品候補」とする。
