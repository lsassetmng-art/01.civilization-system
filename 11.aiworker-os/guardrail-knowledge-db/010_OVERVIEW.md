# AIWorkerOS Guardrail Knowledge DB Overview

Purpose:
AIWorkerOS Guardrail Knowledge DB は、作業ミス、対応手順、再発防止、禁止/注意パターン、作業前チェック、実行前判定結果、証跡リンクを保持する品質管理基盤である。

Canonical responsibility:
- Owner: AIWorkerOS / aiworker schema

Consumers:
- AICM: 表示・実行証跡 consumer
- CX22073JW: 背景知識・参照材料のみ
- CommonOS: 表示共通部品のみ
- 各OS/各アプリ: 適用結果・実行証跡

Important boundaries:
- AICMにガードレール正本を置かない
- CX22073JWを実行主体にしない
- CommonOSに判定本体を置かない
- DB適用前に既存aiworker構造を必ず確認する
- SQLは佐藤レビュー後、明示GOがある場合のみ適用する

Next phase:
- GKD-0 existing aiworker schema / policy / safety / audit / evidence / runtime inventory
- DB_WRITE=NO
- DDL_APPLY=NO
- API_POST=NO
- PATCH=NO
- GIT_PUSH=NO
