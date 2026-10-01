# AICompanyManager ledger persistent write execution canon

## Execution method
- psql "$PERSONA_DATABASE_URL"

## Reason
This is Persona-side DB work.

## ERP DATABASE_URL
- Not used.

## Insert behavior
- Discover ledger table.
- Try allowed candidate values for constrained columns.
- Failed candidate attempts are rolled back by PL/pgSQL exception blocks.
- Successful insert leaves one persistent ledger smoke row.

## Marker
- phase_kn_kq_ledger_persistent_write_smoke_20260427_122956
