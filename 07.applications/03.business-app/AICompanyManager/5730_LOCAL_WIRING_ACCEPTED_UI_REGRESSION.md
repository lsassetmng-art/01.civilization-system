# AICompanyManager Local Wiring Accepted UI Regression

phase: Phase CF
status: local-wiring-accepted-ui-regression

## 維持必須

- AI企業ダッシュボード
- 部門別タスク台帳
- レビュー・承認待ち一覧
- AI企業設定はtop tabではない
- AI企業新規追加は会社概要から開く
- 部門詳細 / 新規追加
- 組織詳細 / 新規追加
- 部門追加だけ別画面
- 組織追加だけ別画面
- index script count = 1
- MutationObserverなし
- real API networkなし

## 今回の期待

- AicmLocalWiringPilot がbundleに含まれる
- localWiringPilot は初期化可能
- companyPilot がある
- departmentPilot がある
- ApiRepositoryStub は disabled のまま
