# ============================================================
# AICompanyManager Three Work Routes Canon
# ============================================================

phase: Phase AF
status: three-work-routes-canon-created

## 1. Route Types

Canonical route_type values:

- president_policy_route
- user_to_manager_route
- user_to_leader_route

## 2. President Policy Route

Flow:

President:
- issues policy

Manager:
- creates initial broad breakdown table

Leader:
- expands Manager rows into deliverable names and task rows

Worker:
- executes task rows and creates deliverables

## 3. User to Manager Route

Flow:

User:
- uploads or provides department task ledger / work packet

Manager:
- validates broad work structure
- groups rows by deliverable name / work area
- distributes rows to Leaders

Leader:
- expands or assigns task rows

Worker:
- executes task rows

## 4. User to Leader Route

Flow:

User:
- uploads or provides department task ledger / work packet directly to Leader

Leader:
- validates task rows
- assigns rows to Workers

Worker:
- executes task rows

## 5. Required UI

The application should display route selection and route help.

Manager route needs:
- ManagerからLeaderへ配布

Leader route needs:
- LeaderからWorkerへ配布
