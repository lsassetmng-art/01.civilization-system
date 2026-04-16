# TALENT GROWTH PHASE A COMPILE RUN SMOKE AND TRIAGE FIXED

status: draft-phase-a-compile-run-smoke-and-triage-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A の compile / run / smoke / triage を
一括で確認するための資料である。

# 1. compile block
~~~bash
pwd && \
find src/app/api/v1 -type f | sort && \
find src/server/talent-growth -type f | sort && \
npm run build
~~~

# 2. run block
~~~bash
npm run dev -- --hostname 0.0.0.0 --port 3000
~~~

# 3. GET smoke block
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

# 4. POST smoke block
~~~bash
curl -s -X POST http://127.0.0.1:3000/api/v1/notifications/read \
  -H 'content-type: application/json' \
  -d '{"notification_ids":["notif_demo_01"]}' && echo
~~~

# 5. triage order
1. build error
2. import path error
3. alias resolution error
4. route param typing error
5. helper export missing
6. JSON parse error
7. env missing
8. DATABASE_URL missing
9. route compile conflict
10. runtime 500 envelope mismatch

# 6. pass gate
- build succeeds
- dev server starts
- representative GET routes return JSON envelope
- representative POST route returns JSON envelope
- no import crash at startup

# 7. conclusion
phase A smoke は、
compile -> run -> GET -> POST -> triage
の順で固定する。
