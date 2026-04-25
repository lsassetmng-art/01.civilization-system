# ============================================================
# AICompanyManager REVIEW RETURN FLOW CANON
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase A
status: review-return-canon-initialized

## 1. Purpose

本書は Worker 成果物のレビュー、差し戻し、再提出フローを定義する。

## 2. Review Start Point

Worker が成果物を作成し、Leader に提出した時点でレビューが開始される。

Worker
→ worker_output
→ Leader Review

## 3. Leader Review

Leader は以下を確認する。

- タスク要件を満たしているか
- 成果物定義に合っているか
- 品質基準を満たしているか
- 不足、誤り、矛盾がないか
- Manager へ渡せる粒度か
- 統合時に問題がないか

## 4. Review Judgment

Leader は次のいずれかを判定する。

| judgment | meaning |
|---|---|
| approved | 合格。次工程へ進める |
| returned | 差し戻し。Worker に修正させる |
| needs_clarification | 不明点あり。確認が必要 |
| blocked | 実行不能。上位者判断が必要 |

## 5. Return Flow

Leader が returned と判定した場合、成果物は Worker に戻される。

Leader
→ return_comment
→ Worker
→ rework
→ resubmit
→ Leader Review

## 6. Required Return Comment

差し戻しには必ず以下を含める。

- 差し戻し理由
- 修正対象
- 修正方法
- 再提出期限
- 品質基準
- 追加確認事項

## 7. Return Count Rule

差し戻し回数は履歴として残す。

推奨制御:
- 1回目: 通常差し戻し
- 2回目: 詳細指摘付き差し戻し
- 3回目: Leader が Manager にエスカレーション可能
- 4回以上: Manager または President 判断対象

## 8. Escalation

次の場合は Manager へエスカレーションする。

- Worker がタスク要件を満たせない
- 要件が曖昧で判断できない
- 成果物定義自体に問題がある
- 期限内再提出が難しい
- 複数 Worker 間の依存関係が破綻している

## 9. Review History

AICompanyManager は以下を表示・記録する。

- レビュー担当
- レビュー日時
- 判定
- 指摘内容
- 差し戻し理由
- 再提出履歴
- 最終承認者
- エスカレーション有無

## 10. Canonical Rule

Worker 成果物は Leader が一次レビューする。
不合格なら Worker に差し戻す。
合格した成果物だけが Leader 統合対象になる。
