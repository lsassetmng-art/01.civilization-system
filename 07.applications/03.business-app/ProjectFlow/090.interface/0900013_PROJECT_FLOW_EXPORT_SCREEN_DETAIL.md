# ============================================================
# PROJECT FLOW EXPORT SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
export

purpose:
Handles spreadsheet export requests.

main_components:
- export target selector
- format selector
- selected columns panel
- masking option selector
- preview summary
- export history list

main_fields:
- export_format
- target_scope
- selected_columns
- masking_option

actions:
- generate xlsx
- generate csv
- open generated file
- re-run same export setting

rules:
- unavailable columns must be disabled
- masked export must be clearly indicated
