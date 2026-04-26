# AICompanyManager Implementation Precheck / NO APPLY Gate

phase: Phase BL
status: implementation-precheck-no-apply-gate
api_implementation: false

## 1. 実装前チェック

実API実装前に確認すること:

- 画面構成OKが維持されている
- accepted JS/CSSが壊れていない
- top-level tabが増えていない
- AI企業設定はtop tabではない
- 部門/組織は追加だけ別画面
- 部門詳細で変更/削除できる
- 組織詳細で変更/削除/ロボット配置変更できる
- CSV操作は部門別タスク台帳内
- レビュー承認はレビュー・承認待ち一覧内
- MutationObserverを使わない
- repository interfaceを通す
- API contractに従う

## 2. 実装禁止条件

以下が未確定なら実装禁止:
- Boss implementation OK
- API endpoint contract
- DB/RLS review
- service role / RPC boundary
- error handling policy
- cache/offline policy

## 3. DB/RLS禁止

このPhaseでは禁止:
- DB WRITE
- RLS APPLY
- psql
- migration

## 4. LIVE AIWorkerOS call禁止

このPhaseでは禁止:
- LIVE AIWORKEROS CALL

## 5. 次に進む条件

次のPhaseで可能:
- adapter/repository skeleton生成
- LocalRepository実装
- 既存UIをLocalRepository経由に移行
- APIRepositoryはまだmockでもよい

ただし、実API接続はBoss承認後。
