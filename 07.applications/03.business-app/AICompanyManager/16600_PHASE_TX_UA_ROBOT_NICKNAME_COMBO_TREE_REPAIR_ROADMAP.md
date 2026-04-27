# AICompanyManager Phase TX-UA robot nickname combo tree repair roadmap

## Phase
- TX-UA

## Current issues
- President robot needs an internal company nickname.
- Assigned robots need an internal company nickname.
- UI should display nickname@role.
- Organization robot placement is still effectively text-box based.
- Organization robot placement must be combo-box select -> add.
- Multiple robots must be addable to one organization.
- Organization tree is hard to read.

## Current app rule
AICompanyManager is a system-use app.
Robot allocation is unlimited and does not consume contracted quantity.

## This phase
- Directly repair existing UI source.
- Add President internal nickname input.
- Display President as nickname@President.
- Add organization robot assignment combo-box.
- Add organization robot internal nickname input.
- Add organization role combo-box.
- Add one selected robot at a time with "追加".
- Allow multiple assignments per organization.
- Show organization tree as department -> organization -> robot assignments.
- Keep index.html script count 1.
- Run node --check.

## Not executed
- DB write
- psql
- API write
- RLS apply
- policy change
- quantity consumption
