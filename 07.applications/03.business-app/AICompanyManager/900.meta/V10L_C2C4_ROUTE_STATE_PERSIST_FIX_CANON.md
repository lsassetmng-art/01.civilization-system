# AICompanyManager V10L-C2C4 Route State Persist Fix Canon

## Status

- DB_WRITE: NO
- API_POST: NO
- CORE_PATCH: YES
- SERVER_PATCH: NO

## Root cause

The section combobox could display a real section, but route application could fail to reflect because the selected section was re-resolved from candidates after rerender.

## Fix canon

When applying a section:

1. read selected option from the local route picker
2. copy section id / section label / department id / department label from option data attributes
3. save them directly to handoffBatchRoute
4. rerender confirmation from effective route
5. display department as selected section's parent department

## Safety

No DB write.
No API POST.
Execution remains locked.
