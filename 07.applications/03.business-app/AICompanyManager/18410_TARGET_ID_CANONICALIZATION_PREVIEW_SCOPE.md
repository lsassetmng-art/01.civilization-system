# AICompanyManager target_id canonicalization preview scope

## In scope
- Read-only structure map API.
- Target ID canonicalization preview.
- payload preview V2.
- Save-block warning when target_id is local-only.

## Out of scope
- Persistent save.
- DB write.
- DB DDL.
- RLS change.
- API write.
- Main UI JS edit.
- Quantity consumption.

## New API
GET /api/aicm/structure-map

## DB source
- business.aicm_company
- business.aicm_department
- business.aicm_organization

## Preview payload additions
- target_id_input
- target_id
- target_id_source
- target_id_canonicalization_status
- target_display_hint
- save_blocked
