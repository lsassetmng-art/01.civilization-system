# AICompanyManager Phase NH-NK live AIWorkerOS localhost auth retry roadmap

## Phase
- NH-NK

## Previous result
- ND-NG-L executed curl.
- Endpoint returned HTTP 401.
- Endpoint is reachable.
- Cause: missing or invalid Authorization.

## This phase
Retry one live AIWorkerOS call with Authorization if token/header is set.

## Endpoint
- http://127.0.0.1:8787/aicm/v1/workflow-start/live-aiworkeros-call

## Not executed
- DB write
- psql
- RLS apply
- git push
