# CareerLaunch LOGICAL TABLE DEFINITIONS

schema: life
## Logical definitions
### life.career_profile
- id uuid pk
- user_id uuid
- display_name text
- primary_locale text
- target_country text
- desired_compensation_amount numeric
- desired_compensation_currency text
- career_summary text
- headline text
- current_status text
- created_at timestamptz
- updated_at timestamptz

### life.job_posting_paste
- id uuid pk
- user_id uuid
- source_url text
- source_label text
- posting_language text
- compensation_currency text
- job_title text
- company_name text
- posting_body text
- must_requirements_json jsonb
- preferred_requirements_json jsonb
- ats_keywords_json jsonb
- created_at timestamptz
- updated_at timestamptz

### life.application_position
- id uuid pk
- user_id uuid
- company_id uuid
- job_posting_id uuid
- status text
- applied_at timestamptz
- interview_at timestamptz
- result_at timestamptz
- document_bundle_id uuid
- thank_you_status text
- interviewer_notes text
- created_at timestamptz
- updated_at timestamptz

### life.document_asset
- id uuid pk
- user_id uuid
- bundle_id uuid
- document_type text
- language_code text
- title text
- body_markdown text
- render_template_key text
- latest_revision_no int
- created_at timestamptz
- updated_at timestamptz

### life.document_revision
- id uuid pk
- document_asset_id uuid
- revision_no int
- revision_reason text
- job_posting_id uuid
- diff_summary text
- snapshot_markdown text
- created_by_role text
- created_at timestamptz

### life.interview_plan
- id uuid pk
- application_position_id uuid
- company_research_note text
- pre_interview_summary text
- day_of_checklist_json jsonb
- question_count int
- reverse_question_count int
- created_at timestamptz
- updated_at timestamptz

### life.thank_you_message
- id uuid pk
- application_position_id uuid
- channel text
- message_body text
- send_status text
- sent_at timestamptz
- confirmed_by_user boolean
- created_at timestamptz
- updated_at timestamptz

### life.persona_display_preference
- id uuid pk
- user_id uuid
- active_persona_id uuid
- active_background_id uuid
- show_on_dashboard boolean
- show_on_editor boolean
- show_on_interview boolean
- lightweight_mode boolean
- updated_at timestamptz

### Shared column standard
- 全 user-owned テーブルは user_id または application_position_id 経由で owner を確定する。
- soft delete は deleted_at / deleted_by_role で統一する。
- revision を持つ文書は current row overwrite ではなく revision append を原則とする。
