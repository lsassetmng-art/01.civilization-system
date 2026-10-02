# ============================================================
# CX22073JW ROBOT ROLE KNOWLEDGE PACK IMPLEMENTATION READY
# ============================================================

status: implementation-ready-design
system: CX22073JW
schema: cx22073jw
owner: Boss
prepared_by: Zero
reviewer: Sato (DB)
db_write_status: not-applied

## 1. Purpose
Prepare implementation of role_code based CX knowledge packs.

## 2. Implementation Principle
Use additive DB changes only.

Do not create tables named with:
- aiemployee
- ai_employee
- Aiemployee

Views may refer to AIWorker/Business integration concepts, but table names should remain neutral.

## 3. Proposed Neutral DB Objects

Recommended table candidates:
- `robot_role_knowledge_pack`
- `robot_role_series_supplement`
- `robot_role_knowledge_registration_run`

Recommended views:
- `vw_robot_role_knowledge_pack_v1`
- `vw_robot_role_knowledge_domain_v1`
- `vw_robot_role_safety_boundary_v1`
- `vw_robot_role_template_reference_v1`
- `vw_robot_model_role_knowledge_reference_v1`
- `vw_robot_model_full_reference_v3`

## 4. Minimum Seed Requirement
Seed all 16 role codes:
- President
- ExecutiveManager
- Manager
- Leader
- Worker
- Helper
- Advisor
- Specialist
- Butler
- Friend
- Lover
- Battler
- Security
- CombatSpecialist
- TacticalLeader
- StrategicCommander

## 5. Series Supplements
Seed series supplement entries for:
- HD
- LoVerS
- Beyond
- MEGAMI

## 6. Review Rule
All SQL/DDL/DML should be reviewed by Sato (DB).

## 7. Environment
Use:
- `PERSONA_DATABASE_URL`

Do not use:
- `DATABASE_URL`

because this work belongs to the Persona-side DB context for CX22073JW / AIWorkerOS / BusinessOS integration.

## 8. Next Implementation Step
Next block should:
1. create neutral tables if missing
2. insert/upsert 16 role knowledge packs
3. insert/upsert 4 series supplements
4. create v1 reference views
5. verify role count / group count / view count
6. refresh Model exact registry after DB object additions
