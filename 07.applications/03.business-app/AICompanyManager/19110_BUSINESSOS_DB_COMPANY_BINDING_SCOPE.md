# AICompanyManager BusinessOS DB company binding scope

## In scope
- BusinessOS DB company select UI.
- Preview uses DB company UUID when binding is selected.
- Eliminates single_db_company_fallback warning in payload preview.
- Keeps local UI company data unchanged.

## Out of scope
- DB write.
- API write.
- Persistent save.
- RLS change.
- Main UI JS edit.
- Quantity consumption.

## Expected payload after this phase
- company_id_input: canonical UUID
- company_id: canonical UUID
- company_id_source: input_uuid
- company_id_canonicalization_status: OK_INPUT_UUID
- validation_warnings: []
- company_mapping_warning: ""
