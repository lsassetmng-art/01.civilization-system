# AICompanyManager Phase PC-PF first real use absolute runtime roadmap

## Phase
- PC-PF

## Previous issue
OX-PA failed with CURL_CODE=52.

## Cause
The Node endpoint started and received POST, but crashed while saving runtime files.

Observed server error:
- ENOENT: no such file or directory, mkdir '/runtime/'

## Repair
Do not modify server.mjs.
Start server with absolute runtime file paths under:
- $HOME/.tmp/AICompanyManager

## This phase
- Start actual Node server with absolute runtime env.
- Send one first-real-use live AIWorkerOS call.
- Stop server if this script started it.
- Push evidence if successful.

## Not executed
- DB write
- psql
- RLS apply
- schema change
