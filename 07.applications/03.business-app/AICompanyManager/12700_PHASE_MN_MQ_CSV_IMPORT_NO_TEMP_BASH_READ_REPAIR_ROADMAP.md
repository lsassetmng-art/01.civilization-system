# AICompanyManager Phase MN-MQ CSV import no-temp bash-read repair roadmap

## Phase
- MN-MQ

## Previous issue
- MI-ML failed because TEMP TABLE with ON COMMIT DROP disappeared before copy/use.

## Repair
- Do not use TEMP TABLE.
- Do not use COPY.
- Create a CSV file as the import source.
- Read exactly one CSV data row with bash.
- Insert that row into ledger using psql.

## Boss approval
- CSV import OK: received

## Out of scope
- workflow start
- live AIWorkerOS call
- RLS apply
- API write
- git push
