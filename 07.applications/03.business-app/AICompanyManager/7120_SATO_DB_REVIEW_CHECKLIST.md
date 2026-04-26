# AICompanyManager Sato DB Review Checklist

phase: Phase DZ
status: sato-db-review-checklist
reviewer: 佐藤（DB担当）
db_apply: false

## 1. 佐藤レビュー必須項目

佐藤（DB担当）は、DB apply 前に以下を確認する。

## 2. 環境確認

- PERSONA_DATABASE_URL を使う
- ERP側 DATABASE_URL を使わない
- psql実行形式は psql "$PERSONA_DATABASE_URL" <<'SQL'
- SQL
- Transaction Pooler / 接続先の扱いがPersona側DBである

## 3. schema確認

- business schema に置く事実正本が妥当
- aiworker schema にはAIワーカー実体が残る
- ERPへ送るデータではない
- company_id / department_id / organization_id の整合性がある
- idempotency / duplicate prevention がある

## 4. table確認

確認対象:
- company
- department
- organization
- organization robot assignment
- department task ledger
- file metadata
- csv import
- review item
- review action
- workflow run
- workflow step

## 5. RLS確認

- company scoped select / insert / update / delete
- department scoped access
- actor membership
- admin / manager / leader / worker role boundary
- service role bypassの範囲
- userが他companyを見られないこと
- review approvalの二重実行防止
- audit actionは改ざんされないこと

## 6. API/RPC確認

- clientからservice role相当操作を直接叩かない
- RPCが必要な箇所が明確
- review action は監査ログを残す
- workflow start は監査ログを残す
- file metadata と実ファイルstorageの責務が分離されている

## 7. rollback確認

- migration rollback方針がある
- RLS rollback方針がある
- localStorage final bundleへ戻せる
- real API connect前は local stub が維持できる

## 8. GO条件

佐藤レビュー結果:
- GO
- STOP
- CONDITIONAL GO

GOの場合のみ、Boss DB OK と合わせて DB apply Phase へ進む。
