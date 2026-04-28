# AICompanyManager Phase XX-YA final preview readiness alignment roadmap

## Current position
- President robot payload: robot fields OK
- Worker payload: OK
- Manager/Leader payload: still needs clean BusinessOS DB robot selection
- company binding card exists

## This phase
- Preview companyId() also reads localStorage aicm_businessos_db_company_binding_id.
- Company binding stores auto-selected single DB company into localStorage.
- Preview validation requires robot_pool_id to be canonical UUID.
- Preview validation blocks old local robot IDs such as aiw-manager-001.
- No persistent save.

## Not executed
- DB write
- DB DDL
- API write
- RLS apply
- persistent save
- quantity consumption
- main UI JS change
