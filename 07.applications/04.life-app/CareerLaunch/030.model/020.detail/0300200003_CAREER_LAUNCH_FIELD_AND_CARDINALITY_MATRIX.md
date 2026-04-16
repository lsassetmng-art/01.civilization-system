# CareerLaunch FIELD AND CARDINALITY MATRIX
## Cardinality
- career_profile 1 - n career_achievement_item
- career_profile 1 - n career_strength_item
- career_profile 1 - n career_reason_item
- job_posting_paste 1 - n application_position
- application_company 1 - n application_position
- application_position 1 - 1 active document_bundle
- document_bundle 1 - n document_asset
- document_asset 1 - n document_revision
- application_position 1 - 1 interview_plan
- interview_plan 1 - n interview_question_item
- interview_plan 1 - n interview_answer_note
- application_position 1 - n interview_session_note
- application_position 1 - n thank_you_message
