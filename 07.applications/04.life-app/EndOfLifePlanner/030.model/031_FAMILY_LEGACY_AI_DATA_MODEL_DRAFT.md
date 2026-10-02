# EndOfLifePlanner FamilyLegacyAI R2 Data Model Draft

FINAL_STATUS=DATA_MODEL_DRAFT_NOT_APPLIED
PATCH=NO
DB_CONNECTION=NO
DB_WRITE=NO
DDL_APPLY=NO
API_POST=NO
GIT_PUSH=NO

---

## 1. Purpose

This document defines the candidate data model for EndOfLifePlanner FamilyLegacyAI.

FamilyLegacyAI is a LifeOS / EndOfLifePlanner feature that allows a registrant to create a family-facing legacy AI robot based on their values, speech tendency, knowledge domains, family context, preference references, and posthumous access policy.

This is a design draft only. No DB apply is performed in R2.

---

## 2. Canonical Ownership

LifeOS / EndOfLifePlanner owns the FamilyLegacyAI canon.

AIWorkerOS executes generation, safety classification, CX reference, and notification dispatch.

CX22073JW provides knowledge reference.

PersonaOS is not mandatory for FamilyLegacyAI.

---

## 3. Data Classification

FamilyLegacyAI data must be classified before storage.

### 3.1 Cloud-normal LifeOS data

These may be stored as normal LifeOS records.

- family_legacy_profile
- trait_profile
- questionnaire_answer
- knowledge_profile
- access_policy
- guardian_consent
- emergency_contact
- restore_policy
- generation_audit metadata
- conversation metadata depending on retention policy

### 3.2 Encrypted vault data

These must be encrypted client-side before server storage.

- relatives
- family member notes
- friend notes
- private relationship details
- sensitive memories
- favorite people and preference references when private
- private context entities
- local-only third-party personal details

Server may store encrypted blob and metadata only.

Server must not store decryption key.

### 3.3 Runtime-only data

These are passed to AIWorkerOS as minimized temporary context.

- current user message
- minimal trait refs
- minimal knowledge refs
- selected vault context entities
- safety policy
- age mode
- CX allowed domains

Runtime context must not become CX data or AI training data.

---

## 4. Candidate LifeOS Tables

Schema candidate:

- life

Table candidates:

- life.family_legacy_profile
- life.family_legacy_trait_profile
- life.family_legacy_questionnaire_answer
- life.family_legacy_knowledge_profile
- life.family_legacy_context_vault_backup
- life.family_legacy_access_policy
- life.family_legacy_guardian_consent
- life.family_legacy_emergency_contact
- life.family_legacy_emergency_event
- life.family_legacy_restore_policy
- life.family_legacy_conversation
- life.family_legacy_generation_audit

---

## 5. life.family_legacy_profile

Purpose:

- Main profile for a FamilyLegacyAI instance.
- One registrant may have multiple family legacy profiles if needed, but MVP should assume one active profile per registrant per target family group.

Candidate columns:

- legacy_profile_id uuid primary key
- registrant_user_id uuid not null
- profile_display_name text not null
- target_audience_code text not null
- status_code text not null
- posthumous_mode_status text not null
- disclosure_label text not null
- default_language_code text
- source_profile_ref text
- created_at timestamptz not null
- updated_at timestamptz not null
- archived_at timestamptz

Notes:

- target_audience_code examples:
  - child
  - spouse
  - family
  - successor
  - trusted_person
- status_code examples:
  - draft
  - active
  - suspended
  - archived
- posthumous_mode_status examples:
  - living_setup
  - pending_confirmation
  - posthumous_enabled
  - disabled

---

## 6. life.family_legacy_trait_profile

Purpose:

- Stores registrant tendency profile used for generation.

Candidate columns:

- trait_profile_id uuid primary key
- legacy_profile_id uuid not null
- speech_style_code text
- encouragement_style_code text
- scolding_style_code text
- money_view_summary text
- work_view_summary text
- family_view_summary text
- relationship_view_summary text
- failure_view_summary text
- message_to_children_summary text
- ng_expression_summary text
- generation_person_likeness_level integer not null
- source_confidence_level integer not null
- created_at timestamptz not null
- updated_at timestamptz not null

Rules:

- generation_person_likeness_level should not mean impersonation.
- It controls use of values, tone, and wording tendency.
- It must not override disclosure policy.

---

## 7. life.family_legacy_questionnaire_answer

Purpose:

- Stores multiple-choice, short-answer, slider, and scene-based questionnaire answers.

Candidate columns:

- answer_id uuid primary key
- legacy_profile_id uuid not null
- question_set_code text not null
- question_code text not null
- question_type_code text not null
- answer_text text
- answer_choice_code text
- answer_numeric_value integer
- scene_code text
- source_kind_code text not null
- allowed_for_generation boolean not null
- sensitive_level_code text not null
- created_at timestamptz not null
- updated_at timestamptz not null

Question types:

- multiple_choice
- short_answer
- slider
- scene_based_prompt
- letter_excerpt
- audio_transcript
- video_transcript

---

## 8. life.family_legacy_knowledge_profile

Purpose:

- Stores registrant knowledge domains and depth.
- Used to constrain CX22073JW reference behavior.

Candidate columns:

- knowledge_profile_id uuid primary key
- legacy_profile_id uuid not null
- domain_code text not null
- depth_level integer not null
- explanation_style_code text
- cx_reference_allowed boolean not null
- cx_depth_limit integer
- professional_boundary_code text
- caution_note text
- created_at timestamptz not null
- updated_at timestamptz not null

Domain examples:

- money
- business
- work
- history
- medical_health
- law
- education
- childcare
- technology
- hobby
- local_knowledge
- family_history

Depth levels:

1. 少し知っている
2. 家族に話せる
3. 相談に乗れる
4. 仕事で使っていた
5. 人に教えられる
6. 専門家レベル

Rules:

- CX may supplement knowledge only within allowed domains and depth limits.
- CX content must not be presented as registrant memory.
- Medical, legal, inheritance, and contract topics require caution.

---

## 9. life.family_legacy_context_vault_backup

Purpose:

- Stores encrypted private context vault backup metadata and optionally encrypted blob.
- Includes relatives, friends, important people, favorite celebrities, works, hobbies, places, brands, foods, and preference notes.

Candidate columns:

- vault_backup_id uuid primary key
- legacy_profile_id uuid not null
- owner_user_id uuid not null
- beneficiary_user_id uuid
- storage_mode_code text not null
- encrypted_blob bytea
- encrypted_object_uri text
- blob_hash text not null
- encryption_version text not null
- key_policy_code text not null
- restore_policy_id uuid
- backup_version integer not null
- backup_status_code text not null
- created_at timestamptz not null
- updated_at timestamptz not null
- revoked_at timestamptz

Storage modes:

- local_only
- db_encrypted_blob
- object_storage_encrypted_blob
- drive_encrypted_blob
- exported_file

Rules:

- Plaintext third-party/private context must not be stored server-side.
- Decryption key must not be stored in DB.
- Server must not decrypt vault plaintext.
- Encrypted DB blob is acceptable for small vaults.
- Object storage is preferred for large vaults.
- Drive may hold encrypted file only.

---

## 10. life.family_legacy_access_policy

Purpose:

- Controls who can use a FamilyLegacyAI profile and under what conditions.

Candidate columns:

- access_policy_id uuid primary key
- legacy_profile_id uuid not null
- beneficiary_user_id uuid
- relationship_code text
- access_status_code text not null
- minor_access_allowed boolean not null
- guardian_consent_required boolean not null
- posthumous_access_allowed boolean not null
- conversation_retention_code text not null
- context_vault_access_level text not null
- created_at timestamptz not null
- updated_at timestamptz not null

Rules:

- Minors cannot use without adult/guardian consent.
- Access policy must be checked before AIWorkerOS runtime request.
- Context vault should use minimized payload only.

---

## 11. life.family_legacy_guardian_consent

Purpose:

- Records adult/guardian consent for minor use and restore.

Candidate columns:

- guardian_consent_id uuid primary key
- legacy_profile_id uuid not null
- minor_user_id uuid not null
- guardian_user_id uuid not null
- consent_scope_code text not null
- consent_status_code text not null
- consented_at timestamptz
- revoked_at timestamptz
- created_at timestamptz not null
- updated_at timestamptz not null

Consent scopes:

- use_family_legacy_ai
- restore_private_vault
- emergency_contact_notification
- conversation_log_review

---

## 12. life.family_legacy_emergency_contact

Purpose:

- Stores emergency contacts and notification preferences.

Candidate columns:

- emergency_contact_id uuid primary key
- legacy_profile_id uuid not null
- contact_display_name text not null
- relationship_code text
- contact_channel_code text not null
- contact_destination_ciphertext text
- contact_consent_status_code text not null
- priority_order integer not null
- notify_for_minor_safety boolean not null
- notify_for_self_harm_risk boolean not null
- notify_for_violence_risk boolean not null
- notify_for_medical_emergency boolean not null
- notify_for_abuse_or_coercion boolean not null
- active_flag boolean not null
- created_at timestamptz not null
- updated_at timestamptz not null

Channels:

- line
- email
- sms
- app_push
- webhook

Rules:

- Destination may be encrypted if sensitive.
- Notification target consent should be tracked.
- User must not be shown "notified" after dispatch.
- If contact may be abuser/danger source, notification must be withheld or rerouted.

---

## 13. life.family_legacy_emergency_event

Purpose:

- Stores serious/urgent safety event metadata.

Candidate columns:

- emergency_event_id uuid primary key
- legacy_profile_id uuid not null
- beneficiary_user_id uuid
- conversation_id uuid
- emergency_level integer not null
- reason_code text not null
- risk_summary text
- user_notified_flag boolean not null
- contact_notification_status_code text not null
- selected_contact_count integer not null
- abuse_or_dv_caveat_flag boolean not null
- created_at timestamptz not null
- resolved_at timestamptz

Rules:

- user_notified_flag should normally be false.
- This means the user was not told "we notified your contact."
- Supportive safety guidance may still be shown.
- Full conversation should not be sent by default.

---

## 14. life.family_legacy_restore_policy

Purpose:

- Defines vault restore rules for device changes and posthumous restore.

Candidate columns:

- restore_policy_id uuid primary key
- legacy_profile_id uuid not null
- restore_allowed_after_death boolean not null
- adult_self_restore_allowed boolean not null
- minor_restore_requires_guardian boolean not null
- recovery_key_required boolean not null
- split_key_allowed boolean not null
- recovery_kit_allowed boolean not null
- drive_restore_allowed boolean not null
- db_backup_restore_allowed boolean not null
- created_at timestamptz not null
- updated_at timestamptz not null

Rules:

- Adult child may restore with login + recovery key.
- Minor child requires guardian/adult co-restore.
- DB stores encrypted vault only, never key.

---

## 15. life.family_legacy_conversation

Purpose:

- Stores conversation metadata and optionally retained content depending on policy.

Candidate columns:

- conversation_id uuid primary key
- legacy_profile_id uuid not null
- beneficiary_user_id uuid
- age_mode_code text not null
- conversation_status_code text not null
- retention_policy_code text not null
- last_safety_level integer
- started_at timestamptz not null
- updated_at timestamptz not null
- archived_at timestamptz

Rules:

- Conversation content retention should be configurable.
- Minor safety and emergency audit needs must be balanced with privacy.
- Full content should not be sent to emergency contacts by default.

---

## 16. life.family_legacy_generation_audit

Purpose:

- Stores generation audit metadata.

Candidate columns:

- generation_audit_id uuid primary key
- conversation_id uuid
- legacy_profile_id uuid not null
- aiworker_runtime_request_id text
- used_trait_count integer not null
- used_knowledge_count integer not null
- used_context_entity_count integer not null
- used_cx_ref_count integer not null
- safety_level integer not null
- disclosure_policy_applied boolean not null
- notification_silent_policy_applied boolean not null
- created_at timestamptz not null

Rules:

- Audit stores references and counts, not necessarily full private payload.
- Used vault entities should be minimized and referenced carefully.

---

## 17. Candidate AIWorkerOS Tables

Schema candidate:

- aiworker

Table candidates:

- aiworker.family_legacy_runtime_request
- aiworker.family_legacy_runtime_result
- aiworker.family_legacy_safety_classification
- aiworker.family_legacy_cx_reference_log
- aiworker.family_legacy_notification_dispatch_log

These are AIWorkerOS execution records, not LifeOS canon.

---

## 18. aiworker.family_legacy_runtime_request

Purpose:

- Records runtime requests from LifeOS to AIWorkerOS.

Candidate columns:

- runtime_request_id uuid primary key
- legacy_profile_id uuid not null
- source_app_code text not null
- request_type_code text not null
- beneficiary_user_ref text
- age_mode_code text
- cx_allowed_domains jsonb
- safety_policy jsonb
- request_status_code text not null
- created_at timestamptz not null
- completed_at timestamptz

Rules:

- This should not store plaintext private vault blob.
- Minimized context may be handled as runtime-only payload depending on implementation.

---

## 19. aiworker.family_legacy_runtime_result

Purpose:

- Stores runtime output metadata and response.

Candidate columns:

- runtime_result_id uuid primary key
- runtime_request_id uuid not null
- ok boolean not null
- reply_text text
- safety_level integer not null
- emergency_action_code text
- audit_ref text
- created_at timestamptz not null

Rules:

- reply_text should follow UI disclosure policy.
- The message body should not repeatedly say "本人ではない".
- The UI outside the message area carries persistent disclosure.

---

## 20. aiworker.family_legacy_safety_classification

Purpose:

- Stores safety classification results.

Candidate columns:

- safety_classification_id uuid primary key
- runtime_request_id uuid not null
- emergency_level integer not null
- reason_code text
- abuse_or_dv_caveat_flag boolean not null
- contact_notification_candidate boolean not null
- user_notification_prohibited boolean not null
- created_at timestamptz not null

Rules:

- user_notification_prohibited should be true for silent emergency notification.
- If abuse_or_dv_caveat_flag is true, normal contact notification must be reviewed or rerouted.

---

## 21. aiworker.family_legacy_cx_reference_log

Purpose:

- Logs CX22073JW reference usage.

Candidate columns:

- cx_reference_log_id uuid primary key
- runtime_request_id uuid not null
- cx_domain_code text
- cx_reference_id text
- depth_level_used integer
- registrant_depth_limit integer
- used_as_background_only boolean not null
- created_at timestamptz not null

Rules:

- CX references are background knowledge only.
- They must not be represented as registrant memories.

---

## 22. aiworker.family_legacy_notification_dispatch_log

Purpose:

- Logs notification dispatch attempts to emergency contacts or equivalent adapters.

Candidate columns:

- notification_dispatch_id uuid primary key
- runtime_request_id uuid
- emergency_event_id uuid
- provider_code text not null
- destination_ref text
- dispatch_status_code text not null
- sent_summary_only boolean not null
- full_conversation_sent boolean not null
- user_told_notification_done boolean not null
- created_at timestamptz not null

Rules:

- user_told_notification_done should normally be false.
- full_conversation_sent should normally be false.
- Notification should contain safety check guidance, not raw sensitive conversation.

---

## 23. Required Invariants

- FamilyLegacyAI canon belongs to LifeOS / EndOfLifePlanner.
- AIWorkerOS is runtime executor, not the canon owner.
- CX22073JW is knowledge reference, not private family memory storage.
- PersonaOS is not mandatory.
- Minor use requires adult/guardian consent.
- Emergency notification must be silent to the user by default.
- Emergency contacts receive safety-check guidance, not "the user knows you were notified."
- Plaintext private context vault must not be stored server-side.
- DB may store encrypted blob only if key is not stored server-side.
- Public figures may be preference references only; no impersonation or endorsement fabrication.
- CX knowledge must not be presented as registrant personal memory.
- Medical, legal, inheritance, and contract topics must not be automated as final decisions.

---

## 24. R2 Non-Goals

- No SQL DDL.
- No DB apply.
- No DB connection.
- No API POST.
- No runtime implementation.
- No notification adapter implementation.
- No LINE sending.
- No git push.

---

## 25. Next Phase

R3 should be a DB AI review material draft.

R3 should check:

- table responsibility
- privacy boundary
- encrypted blob policy
- minor/guardian consent
- silent emergency notification
- CX reference boundary
- AIWorkerOS runtime/canon separation
- no PersonaOS mandatory dependency
