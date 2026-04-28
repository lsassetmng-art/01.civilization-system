# AICompanyManager robot_pool role exact filter scope

## In scope
- President exact candidates.
- Manager exact candidates.
- Leader exact candidates.
- Worker exact candidates.
- BusinessOS DB read-only API reuse.
- Stable Android select behavior.

## Exact role buckets
- President screen:
  - President only
- Manager screen:
  - Manager
  - ExecutiveManager
- Leader screen:
  - Leader only
- Worker screen:
  - Worker only

## Excluded from normal business placement screens unless explicitly selected elsewhere
- Friend
- Lover
- Butler
- Battler
- Security
- CombatSpecialist
- TacticalLeader
- StrategicCommander
- Advisor
- Specialist
- Helper

## Canonical model map
Use AIWorkerOS / BusinessOS model role canon.
Do not rely on broad substring matching such as "manager" inside "AICompanyManager".

## Out of scope
- DB write.
- RLS change.
- API write.
- Direct browser DB access.
- Quantity consumption.
