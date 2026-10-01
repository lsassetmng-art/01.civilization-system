# AICompanyManager Phase OX-PA first real use with actual Node server roadmap

## Phase
- OX-PA

## Purpose
Use the actual live-aiworkeros-call Node server command and send the first real AICompanyManager request.

## Actual server command
node /data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/live-aiworkeros-call/src/server.mjs

## This phase
- If localhost:8787 is already reachable, reuse the running server.
- If not reachable, start the Node server in background in the same Termux session.
- Send one live AIWorkerOS call.
- Stop only the server process started by this script.
- Push evidence if call succeeds.

## First real use request
Ask live AIWorkerOS to prepare strict tenant RLS exact design for AICompanyManager.

## Not executed
- DB write
- psql
- RLS apply
- schema change
