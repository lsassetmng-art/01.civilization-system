# ============================================================
# AI OPERATION DESK FREEZE PRECHECK AND APPLY SEQUENCE
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: implementation
owner: Boss
prepared_by: Zero

precheck_items:
- root index exists
- root overview exists
- integrated canonical exists
- exact domain model exists
- exact api request / response exists
- exact view family requirement exists
- exact resident ERP stateflow exists
- exact resident Builder stateflow exists
- exact main console module exact exists
- exact DDL exists
- review / approval reason dictionary exists
- risk / review / approval freeze exists
- supported app registry seed exact exists
- notification bridge contract exact exists
- batch summary payload exact exists

apply_sequence:
1. validate root and freeze documents
2. validate supported app registry seed rows
3. review DDL exact against schema conventions
4. apply DDL in non-destructive order
5. seed supported app registry
6. seed task types / QA scopes / write surfaces
7. implement request intake APIs
8. implement review / approval APIs
9. implement queue / retry / failure APIs
10. implement ERP resident modules
11. implement Builder resident modules
12. implement main console modules
13. implement notification bridge
14. implement batch summary jobs
15. run verification checklist

verification_focus:
- supported-app-only QA preserved
- resident scope preserved as ERP + Builder only
- no raw aiworker/business direct AI read introduced
- no unsupported write surface introduced
- no ungated final posting introduced
