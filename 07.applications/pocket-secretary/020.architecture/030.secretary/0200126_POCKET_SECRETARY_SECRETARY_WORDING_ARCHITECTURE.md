# ============================================================
# POCKET SECRETARY SECRETARY WORDING ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the wording-dictionary architecture for secretary-specific language output.

principle:
Meaning stays stable.
Only wording style varies by secretary.

secretary classes:
- Sato Misaki: standard / calm / rational
- Takahashi Hina: empathy / soft / personal-support
- Kamiya Rin: sharp / concise / work-support

message categories:
- schedule_notice
- todo_notice
- notification_notice
- travel_expense_notice
- consultation_opening
- error_soft
- error_hard
- business_guidance

dictionary key pattern:
secretary_id.message_type.template_key

rules:
- wording variation must not alter authority meaning
- wording variation must not imply approval, permission, or completion
- company secretary wording is reserved for future definition
