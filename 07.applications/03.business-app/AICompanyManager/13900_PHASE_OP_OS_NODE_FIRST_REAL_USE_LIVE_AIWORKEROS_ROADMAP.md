# AICompanyManager Phase OP-OS-NODE first real use roadmap

## Phase
- OP-OS-NODE

## Purpose
Use one Termux session to start the Node endpoint server in the background, then perform the first real AICompanyManager live AIWorkerOS request.

## Previous issue
OL-OO failed with:
- HTTP_CODE=000
- CURL_CODE=7

Cause:
- localhost server was not running.

## This phase
- Start Node server in background.
- Wait for localhost:8787 readiness.
- Send one live AIWorkerOS call.
- Stop Node server.
- Push evidence only if live call succeeds.

## First real use request
Ask live AIWorkerOS to prepare strict tenant RLS exact design for AICompanyManager.

## Not executed
- DB write
- psql
- RLS apply
- schema change
