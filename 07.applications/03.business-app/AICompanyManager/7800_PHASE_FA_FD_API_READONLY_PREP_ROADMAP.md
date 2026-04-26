# AICompanyManager Phase FA-FD API Readonly Prep Roadmap

phase: Phase FA-FD
status: api-readonly-prep-started
db_write: false
rls_apply: false
psql: false
real_api_connect: false
live_aiworkeros_call: false
git_push: false

## 目的

ApiRepository candidate 作成後、real API connect へ進む前に API readonly mode の候補設計と mode resolver candidate を作る。

## 今回まとめる範囲

Phase FA:
- Boss implementation OK wait gate

Phase FB:
- API readonly mode candidate canon

Phase FC:
- readonly endpoint smoke design

Phase FD:
- repository mode resolver candidate

## 現在位置

完了済み:
- DB/RLS apply
- DB/RLS postcheck
- ApiRepository candidate 作成
- ApiRepository candidate は index.html 未読込
- final UI は LocalRepository active

今回:
- readonly API接続準備
- ただし real API connect はしない

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- real API connect
- fetch
- live AIWorkerOS call
- git push
