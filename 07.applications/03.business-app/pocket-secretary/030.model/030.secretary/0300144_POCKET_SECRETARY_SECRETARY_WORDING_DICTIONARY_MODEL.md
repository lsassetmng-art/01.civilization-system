# ============================================================
# POCKET SECRETARY SECRETARY WORDING DICTIONARY MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents secretary-specific wording dictionary entries.

fields:
- wording_entry_id
- secretary_id
- message_type
- template_key
- template_text
- is_active
- created_at
- updated_at

secretary_id examples:
- misaki
- hina
- rin
- company_ai_reserved

message_type examples:
- schedule_notice
- todo_notice
- notification_notice
- travel_expense_notice
- consultation_opening
- error_soft
- error_hard
- business_guidance

rules:
- dictionary entries change wording only
- dictionary entries do not change business meaning
