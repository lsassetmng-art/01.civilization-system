# AICompanyManager Phase PP-PS strict tenant RLS exact design roadmap

## Category selection
- 01.civilization-os
- 02.persona-os
▶ 03.business-os
- 04.life-os
- 05.game-os
- 06.streaming-os
- 08.civilization-portal-site
- 10.staticart-os
- 11.aiworker-os
- 12.common-os
- ERP

## Phase
- PP-PS

## Purpose
Create strict tenant RLS exact design package for AICompanyManager.

## Current completed foundation
- persistent write chain: complete
- CSV import smoke: complete
- workflow start smoke: complete
- live AIWorkerOS call smoke: complete
- first real use live AIWorkerOS request: accepted
- smoke-safe RLS apply: complete
- token hygiene and local token reset: complete

## This phase
- Create strict tenant RLS exact design artifacts.
- Define JWT claims.
- Define role/access matrix.
- Define policy plan.
- Define non-destructive apply and rollback plan.
- Define verification canon.
- Prepare Sato DB review handoff.

## Not executed
- DB write
- DB DDL
- psql
- curl
- API call
- RLS apply
- schema change
- policy drop
