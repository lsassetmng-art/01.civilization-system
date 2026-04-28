# AICompanyManager Phase ZX-ZZ Worker change force DB clone roadmap

## Current state
- Worker追加 select uses BusinessOS DB candidates.
- Worker変更 select still shows legacy local Worker Alpha / Worker Beta.

## This phase
- Force Worker変更 select options to be cloned from BusinessOS DB Worker candidate options already present in the page.
- Exclude Worker Alpha / Worker Beta.
- Run on DOMContentLoaded, mutation, interval, focus, pointerdown, touchstart, mousedown, click.

## Execution
- DB WRITE: NOT EXECUTED
- API WRITE: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
