# ============================================================
# AICompanyManager Next Chat Handoff Oneblock
# ============================================================

対象アプリ:
- アプリ名: AICompanyManager
- 表示名: AI企業運営アプリ

カテゴリ選択:
- 01.civilization-app
- 02.persona-app
▶ 03.business-app
- 04.life-app
- 05.game-app
- 06.streaming-app

設計ルート:
- ~/01.civilization-system/07.applications/03.business-app/AICompanyManager

実装ルート:
- ~/03.civilization-development/03.business-os/AICompanyManager

統合版:
- ~/01.civilization-system/07.applications/03.business-app/AICompanyManager/00_AICOMPANYMANAGER_INTEGRATED_DESIGN.md

現在位置:
- Phase O final completion seal 作成済み
- Phase N acceptance / final handoff package 作成済み
- BusinessOS側の静的HTML/CSS/JS実装スケルトン作成済み
- CommonOS consumer folders 作成済み
- API client mock 作成済み
- AIWorkerOS bridge mock 作成済み
- local queue UX 作成済み
- review / delivery / approval UI 作成済み
- server route placeholder 作成済み
- runtime default は mock
- live AIWorkerOS call は未実行
- RLS apply は未実行

重要な正本:
- DBターゲットは Persona側
- DB作業は PERSONA_DATABASE_URL
- current_role は使わない
- current_role_code を使う
- AIWorkerOS内部の President / Manager / Leader / Worker 実行正本は AIWorkerOS 側
- AICompanyManager は人間向け運用・レビュー・承認・納品UIを担当
- CommonOS は表示・sync presentation の provider
- AICompanyManager 側 _commonos は consumer 受け口

DB状況:
- Persona-side DB apply 実施済み
- reserved word fix 実施済み
- current_role_code 修正済み
- RLS exact design は作成済み
- RLS apply は未実行

RLS適用条件:
- Boss が明示的に RLS OK / RLS GO / RLS適用OK / RLS実行して と言った場合のみ
- PERSONA_DATABASE_URL を使う
- 方法A psql "$PERSONA_DATABASE_URL" <<'SQL' を使う
- 佐藤（DB担当）レビュー前提
- no destructive SQL

次の候補:
1. RLS OK が出た場合:
   - Phase M: Persona-side RLS apply execution

2. RLSを後回しにする場合:
   - server route hardening
   - live bridge scaffold
   - auth / ownership check design
   - deployment package

3. 別チャットで再開する場合:
   - まず 1320_NEXT_CHAT_HANDOFF_ONEBLOCK.md を読ませる
   - 次に 00_AICOMPANYMANAGER_INTEGRATED_DESIGN.md を参照する

## Phase O final check keywords

RLS APPLY: DEFERRED
DB TARGET: PERSONA_DATABASE_URL
CURRENT ROLE FIELD: current_role_code
LIVE AIWORKEROS CALL: NOT EXECUTED
