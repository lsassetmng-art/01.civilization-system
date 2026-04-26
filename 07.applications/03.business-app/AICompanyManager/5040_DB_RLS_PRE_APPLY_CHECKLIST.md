# AICompanyManager DB/RLS Pre-Apply Checklist

phase: Phase BD
status: pre-apply-checklist
reviewer: 佐藤（DB担当）
db_apply: false
rls_apply: false

## 1. DB適用前必須確認

- Bossが DB OK と明示したか
- 佐藤（DB担当）レビューが完了したか
- 適用DBが PERSONA_DATABASE_URL で正しいか
- ERP側 DATABASE_URL ではないことを確認したか
- 既存business schemaへの影響を確認したか
- 既存 ai_company_manager_* テーブル有無を確認したか
- gen_random_uuid() が利用可能か確認したか
- auth.uid() 前提が正しいか確認したか
- actor_membership table 方針を確定したか
- service role / RPC 方針を確定したか
- RLS適用順を確認したか
- rollback方針を確認したか

## 2. DB適用禁止条件

以下が1つでも未確定なら適用禁止:
- Boss DB OK なし
- 佐藤レビュー未完了
- PERSONA_DATABASE_URL 未確認
- RLS方針未確定
- membership方針未確定
- service role / RPC方針未確定

## 3. 実行形式

適用する場合は、今後も以下の形式のみ:

psql "$PERSONA_DATABASE_URL" <<'SQL'
...
SQL

## 4. 今回の結論

このPhaseでは適用しない。
