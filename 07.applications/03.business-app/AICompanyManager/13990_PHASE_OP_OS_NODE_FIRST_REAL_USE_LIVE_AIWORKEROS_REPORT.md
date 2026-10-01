# AICompanyManager Phase OP-OS-NODE first real use report

## Result
- RESULT: FAIL

## Reason
Could not determine Node server start command.

## SERVER_DIR
- /data/data/com.termux/files/home/03.civilization-development/11.aiworker-os

## Expected one of
- package.json script: live-aiworkeros
- package.json script: dev
- package.json script: start
- server.js
- index.js

## How to fix
Set:
export AICM_NODE_SERVER_DIR="/data/data/com.termux/files/home/03.civilization-development/11.aiworker-os"
export AICM_NODE_SERVER_CMD="node server.js"

## Execution flags
- NODE SERVER: NOT STARTED
- LIVE AIWORKEROS CALL: NOT EXECUTED
- DB WRITE: NOT EXECUTED
- psql: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- GIT PUSH: NOT EXECUTED
