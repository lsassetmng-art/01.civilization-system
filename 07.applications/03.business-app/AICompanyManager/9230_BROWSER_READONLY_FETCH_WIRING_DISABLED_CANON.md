# AICompanyManager Browser Readonly Fetch Wiring Disabled Canon

phase: Phase HC
status: browser-readonly-fetch-wiring-disabled-canon
browser_fetch: false

## 1. 目的

Browser側の readonly fetch wiring 候補を作るが、まだfetchしない。

## 2. Candidate file

- assets/js/aicm-browser-readonly-fetch-disabled.js

## 3. 現時点の制限

Candidate must:
- not be loaded by index.html
- not call fetch
- not call XMLHttpRequest
- not call WebSocket
- not switch active repository
- not erase localStorage
- not write server state
- not call live AIWorkerOS

## 4. Future first request after Boss OK

First request:
- GET /api/aicm/v1/bootstrap

## 5. 現在の判定

browser fetch:
- NOT EXECUTED
