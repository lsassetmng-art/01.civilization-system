# ============================================================
# COMMON OS RULE DOCUMENT PLACEMENT MATRIX
# ============================================================

status: canonical
system: CommonOS
owner: Boss
prepared_by: Zero
generated_at: 20260421_154313

## PURPOSE
This document fixes where rule documents should be placed.

## PLACEMENT MATRIX

| rule_type | primary_location | interpretation |
|-----------|------------------|----------------|
| civilization-system top rule | civilization-system upper layer | highest-level global rule; CommonOS references it |
| common-os foundation rule | 12.common-os/010.constitution | CommonOS local constitutional rule |
| shared ui policy | 12.common-os/080.policy | policy rule for shared UI and metadata usage |
| implementation rule | 12.common-os/120.implementation | practical implementation rule and runtime boundary |
| development workflow rule | 12.common-os/130.development | build, workflow, contribution, sequencing |
| shared schema ddl canon | 12.common-os/030.model | structural/data-model direction |
| shared ledger / adoption ledger | 12.common-os/060.integration | applicability and adoption references |
| root entry rule | 12.common-os root | root summary and root canonical only |

## OFFICIAL INTERPRETATION
- Put CommonOS-specific rules inside 12.common-os.
- Keep global civilization-system rules at the upper shared system layer.
- CommonOS may reference upper rules but must not overwrite them locally.
- Rule placement must follow responsibility boundaries.

## WHAT BELONGS HERE
- shared UI rules
- shared metadata boundary rules
- app_common usage rules
- ERP shared UI applicability rules
- offline-first shared sync rules
- client/server separation rules for the shared foundation

## WHAT DOES NOT BELONG HERE
- ERP accounting canon
- business transaction canon
- persona canon
- life personal canon
- secrets
- pricing decision engines
- access decision engines
- AI prompt canon

## RECOMMENDED FILE GROUPS
- 010.constitution : foundation and governance rules
- 080.policy : shared use and boundary rules
- 120.implementation : runtime/build/SQL/practical implementation rules
- 130.development : development workflow and contribution rules
