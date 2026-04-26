# AICompanyManager Next Phase Start Conditions Canon

phase: Phase DS
status: next-phase-start-conditions-canon

## 1. DB apply 開始条件

DB apply を開始するには以下が必須。

Required:
- Boss が明示的に DB OK と言う
- 佐藤（DB担当）レビュー完了
- PERSONA_DATABASE_URL を使うことを確認
- ERP側 DATABASE_URL ではないことを確認
- DDL refined draft を再確認
- RLS方針を再確認
- rollback方針を作成
- migration適用前チェック PASS

DB apply method:
- psql "$PERSONA_DATABASE_URL" <<'SQL'
- SQL

## 2. RLS apply 開始条件

RLS apply を開始するには以下が必須。

Required:
- Boss DB OK
- 佐藤（DB担当）レビュー
- actor_membership 方針確定
- auth.uid() 前提確認
- service role / RPC 境界確認
- review_action 監査方針確認
- company_id / department_id 整合方針確認

## 3. real API connect 開始条件

real API connect を開始するには以下が必須。

Required:
- Boss implementation OK
- DB/RLS apply 完了または接続先mock API確定
- endpoint security review
- service role / RPC boundary review
- error handling policy
- localStorage cache/offline policy
- no duplicate submit policy
- review approval二重送信防止

## 4. live AIWorkerOS call 開始条件

live AIWorkerOS call を開始するには以下が必須。

Required:
- Boss live AIWorkerOS OK
- AIWorkerOS call boundary review
- workflow_run / workflow_step 監査設計
- timeout / retry / error handling
- AIが人間承認を偽装しない境界
- service role / RPC 境界
- audit log design
- fallback / local stub rollback policy
