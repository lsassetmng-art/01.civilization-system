# ============================================================
# STATIC ART OS PHASE 2 TO PHASE 8 TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

phase_2:
  objective:
    - implement creator write backbone
  major_tasks:
    - asset create route/service/repository binding
    - localization write
    - rights policy write
    - sales offer write
    - subscription rule write
    - base validation and version_token handling
  exit_condition:
    - creator governed writes work end-to-end

phase_3:
  objective:
    - implement self check, review request, review decision, publish actions
  major_tasks:
    - self check service
    - review request creation
    - review decision flow
    - publish marketplace
    - publish library only
    - delist/restrict/archive actions
    - audit event creation for governance actions
  exit_condition:
    - lifecycle and governance flow works end-to-end

phase_4:
  objective:
    - implement entitlement and access session
  major_tasks:
    - entitlement resolution
    - purchase reflection
    - subscription reflection
    - access session creation
  exit_condition:
    - full/sample access rules work correctly

phase_5:
  objective:
    - implement library and continuity
  major_tasks:
    - my library list
    - continue reading
    - continue viewing
    - reader progress save
    - viewer progress save
    - favorite and annotation flows
  exit_condition:
    - continuity surfaces work correctly

phase_6:
  objective:
    - implement admin governance surfaces
  major_tasks:
    - review queue
    - review detail
    - restriction/audit detail
    - support_readonly behavior
  exit_condition:
    - governance UI and permission behavior work end-to-end

phase_7:
  objective:
    - implement CX22073JW reference publish
  major_tasks:
    - projection search area publish
    - preview summary area publish
    - rights reference area publish
    - continuity signal publish
    - review risk reference publish
    - exhibition reference publish
  exit_condition:
    - CX22073JW reference sync works one-way from canonical

phase_8:
  objective:
    - execute acceptance and harden regressions
  major_tasks:
    - run acceptance cases
    - run permission matrix
    - run policy/projection matrix
    - fix blocking regressions
  exit_condition:
    - implementation-ready acceptance target passes
