# AICompanyManager Cache / Offline Policy Canon

phase: Phase BL
status: cache-offline-policy-canon
api_implementation: false

## 1. 基本方針

AICompanyManager は現時点では localStorage mock。

将来DB接続後:
- DBが正本
- localStorageはcache/draft/offline fallback
- ローカルキューをユーザーに見せる必要はない

## 2. ユーザー理解優先

ユーザーが「ローカルキュー」を見ても理解しにくい。

そのため画面表示では:
- 保存済み
- 下書き
- 同期待ち
- 同期失敗
程度の表現にする。

## 3. cache対象

cache対象:
- bootstrap取得結果
- 会社一覧
- 部門一覧
- 組織一覧
- 台帳一覧
- レビュー一覧

draft対象:
- 入力中フォーム
- CSV preview前のテキスト
- 未送信の台帳行

## 4. offline時の扱い

offline時:
- 閲覧はcache
- 新規追加/変更はdraft保存
- 同期は明示画面ではなく、状態表示に留める

## 5. 同期失敗

同期失敗時:
- エラー表示
- 再試行ボタン
- 変更内容は破棄しない
- 監査対象操作は二重送信防止

## 6. 承認操作

承認/差し戻しは重要操作。

方針:
- offline時は実行不可または確認付き下書き
- 二重承認防止
- review_action履歴を必ず作る

## 7. AI自動処理

Manager/Leader/Worker自動処理はサーバ側。

offline時:
- startWorkflow要求は送信できなければ保留
- AI結果はDB/APIから再取得する

## 8. 今回の結論

localStorageは当面維持する。
ただし、次の実装から repository 経由に寄せる。
