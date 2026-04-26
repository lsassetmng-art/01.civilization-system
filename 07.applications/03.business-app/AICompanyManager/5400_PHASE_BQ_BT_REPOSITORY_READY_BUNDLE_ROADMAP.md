# AICompanyManager Phase BQ-BT Repository Ready Bundle Roadmap

phase: Phase BQ-BT
status: repository-ready-bundle-started
db_apply: false
rls_apply: false
api_implementation: false
real_api_connect: false

## 目的

accepted UIを壊さず、repository skeletonを1本のbundle JSへ同梱する。

## 今回まとめる範囲

Phase BQ:
- repository integration plan

Phase BR:
- handleAction separation plan

Phase BS:
- one-script repository-ready bundle creation

Phase BT:
- no DB/API connect gate and verification

## 現在位置

完了済み:
- 画面OK
- DB/RLS design
- API payload contract
- adapter/repository precheck
- repository skeleton作成

今回:
- accepted UIのまま、repository-ready bundle化

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- 実API接続
- LIVE AIWORKEROS CALL
- APIRepository実通信
- handleAction本体置換

## 完了条件

- repository-ready bundle JS がある
- index.html はbundle JS 1本だけを読む
- accepted UI文言が維持される
- repository skeleton symbols がbundle内にある
- ApiRepositoryStub は disabled のまま
- 検証PASS
