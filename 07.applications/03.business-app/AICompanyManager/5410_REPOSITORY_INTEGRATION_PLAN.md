# AICompanyManager Repository Integration Plan

phase: Phase BQ
status: repository-integration-plan
api_implementation: false

## 1. 統合方針

既存accepted UIを直接壊さない。

段階:
1. repository skeletonをbundleに同梱
2. index one-script policyを維持
3. accepted UIの画面挙動を維持
4. 次PhaseでhandleActionをrepository経由へ分割
5. さらに後続でLocalRepositoryを既定repositoryにする
6. 最後にApiRepositoryへ切替可能にする

## 2. 今回の実装

今回やる:
- aicm-api-client.js をbundleへ同梱
- aicm-state-adapter.js をbundleへ同梱
- aicm-repository.js をbundleへ同梱
- aicm-local-repository.js をbundleへ同梱
- aicm-api-repository-stub.js をbundleへ同梱
- accepted UI JS をbundleへ同梱
- index.html は bundle JS 1本だけ読む

今回やらない:
- handleAction置換
- real API call
- DB接続
- RLS適用
- live AIWorkerOS call

## 3. 理由

accepted UIは画面OK済み。
そのため、直接大改造せず、まずbundleにrepository層を同居させる。

## 4. 次Phase候補

Phase BU-BX:
- action adapter作成
- handleActionを小分け関数化
- LocalRepository経由へ段階移行
- UI回帰チェック
