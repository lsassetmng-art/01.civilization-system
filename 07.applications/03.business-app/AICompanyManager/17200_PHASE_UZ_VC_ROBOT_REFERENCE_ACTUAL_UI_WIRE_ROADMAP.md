# AICompanyManager Phase UZ-VC robot reference actual UI wire roadmap

## Phase
- UZ-VC

## Current position
- AICompanyManager actual UI use closeout complete.
- robot_pool / role catalog / CX reference boundary closeout complete.
- Next target is actual UI reference display.

## This phase
- Read robot reference objects from PERSONA_DATABASE_URL in read-only mode.
- Build static robot reference cache JSON.
- Wire reference cards into actual AICompanyManager UI.
- Show reference availability for:
  - role catalog
  - model / robot pool
  - personality profile
  - public profile
  - CX full reference

## UI locations
- AI企業設定: President reference card.
- 部門詳細: Manager reference card.
- 課詳細: Leader reference card.
- 課詳細 Worker配置: Worker reference card.

## Safety
- DB READ ONLY.
- No DB DDL.
- No API write.
- No RLS apply.
- No quantity consumption.
- JS backup is created.
- node --check failure restores backup.

## Review
- SQL is read-only and still treated as 佐藤(DB担当) review対象.
