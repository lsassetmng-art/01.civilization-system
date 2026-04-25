# CasualChatWorker Persona DB Boundary Audit Append

status: REVIEW_REQUIRED
generated_at: 20260425_205110

## 1. Decision

The current DB target for CasualChatWorker / WorkerRentalCore is Persona-side DB.

Use:

- PERSONA_DATABASE_URL

Do not use:

- DATABASE_URL
- ERP DB path

## 2. Responsibility Correction

- business owns contract/payment/entitlement/session facts
- aiworker owns AI worker entity/series/personality/safety canon
- cx22073jw owns read-only smalltalk/topic material
- app_common/CommonOS owns UI presentation metadata only

## 3. Audit

- audit_summary: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/900.meta/persona-db-boundary-audit/20260425_205110_persona_db_boundary_audit/000_PERSONA_DB_BOUNDARY_AUDIT_SUMMARY.md
- correction_map: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/900.meta/persona-db-boundary-audit/20260425_205110_persona_db_boundary_audit/050_correction_map.md

## 4. Phase N

Phase N remains current.

Phase O remains STOP until boundary audit is acceptable and validation gates pass.

