# TALENT GROWTH PHASE A COMPILE RUN SMOKE COMMAND BLOCK FIXED

status: draft-phase-a-compile-run-smoke-command-block-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A の compile / run / smoke を
最初に実行する command block として固定するための資料である。

# 1. goal
- file bootstrap後に path 崩れを早期検出する
- stub route が返ることを確認する
- phase A 最低限の build/run 導線を確認する
- compile break を早期に潰す

# 2. preconditions
- app project root にいる
- package manager / scripts は既存プロジェクト方針に従う
- TypeScript / Next.js 系を想定
- route actual files は生成済み

# 3. smoke command block
~~~bash
pwd && \
find src/app/api/v1 -type f | sort && \
find src/server/talent-growth -type f | sort && \
npm run build
~~~

# 4. dev run smoke block
Next.js 系想定:
~~~bash
npm run dev -- --hostname 0.0.0.0 --port 3000
~~~

# 5. endpoint smoke examples
local curl checks:
~~~bash
curl -s http://127.0.0.1:3000/api/v1/me && echo
curl -s http://127.0.0.1:3000/api/v1/home && echo
curl -s http://127.0.0.1:3000/api/v1/employee/dashboard && echo
curl -s http://127.0.0.1:3000/api/v1/employee-certifications && echo
curl -s http://127.0.0.1:3000/api/v1/employee-skills && echo
curl -s http://127.0.0.1:3000/api/v1/evaluation-sheets/esheet_demo_01 && echo
curl -s http://127.0.0.1:3000/api/v1/manager/review-queue && echo
curl -s http://127.0.0.1:3000/api/v1/growth-plans && echo
curl -s http://127.0.0.1:3000/api/v1/notifications && echo
~~~

# 6. POST smoke examples
~~~bash
curl -s -X POST http://127.0.0.1:3000/api/v1/notifications/read \
  -H 'content-type: application/json' \
  -d '{"notification_ids":["notif_demo_01"]}' && echo
~~~

# 7. compile pass definition
- build command succeeds
- route import path errors absent
- response/auth helper import errors absent
- route actual files compile
- representative endpoints return JSON envelope

# 8. early failure checklist
- alias path not resolved
- route param typing mismatch
- missing exported function
- duplicate route files conflict
- runtime JSON parse crash
- incorrect Response helper import

# 9. conclusion
phase A kickoff 後の最初の確認は、
compile -> run -> curl smoke の順で固定する。
