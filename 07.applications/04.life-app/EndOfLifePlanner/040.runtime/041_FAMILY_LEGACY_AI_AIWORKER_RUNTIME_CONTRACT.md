# EndOfLifePlanner FamilyLegacyAI R5 AIWorkerOS Runtime Contract

FINAL_STATUS=RUNTIME_CONTRACT_DRAFT_NOT_IMPLEMENTED
PATCH=NO
DB_CONNECTION=NO
DB_WRITE=NO
DDL_APPLY=NO
API_POST=NO
GIT_PUSH=NO

---

## 1. Purpose

This document defines the runtime contract between LifeOS / EndOfLifePlanner FamilyLegacyAI and AIWorkerOS.

FamilyLegacyAI owns setup, profile, access policy, private context vault policy, emergency contacts, restore policy, and UI.

AIWorkerOS executes consultation generation, safety classification, CX reference, emergency-action classification, and runtime audit output.

This is a contract design only. No runtime endpoint implementation is performed in R5.

---

## 2. Boundary

LifeOS / EndOfLifePlanner responsibilities:

- own FamilyLegacyAI canon
- validate access policy
- validate minor and guardian consent
- hold registrant tendency profile
- hold knowledge domain profile
- hold encrypted vault backup metadata
- decrypt vault only on authorized device/client side
- minimize context before runtime request
- show persistent disclosure outside message area
- never show "通知しました" after emergency contact dispatch

AIWorkerOS responsibilities:

- accept runtime request
- classify safety level
- generate reply text
- request CX reference within allowed domain/depth
- produce runtime audit metadata
- create emergency contact action recommendation
- optionally dispatch notification only through approved adapter contract
- never become FamilyLegacyAI canon owner

CX22073JW responsibilities:

- provide background/reference knowledge
- never store private family context vault
- never become execution authority
- never present CX knowledge as registrant memory

---

## 3. Runtime Modes

Runtime modes:

- consultation
- preview
- setup_validation
- emergency_recheck
- restore_test_message

Primary R5 mode:

- consultation

Preview mode:

- Used by registrant during setup.
- No real emergency notification dispatch.
- Safety classification still runs.
- Output can be used to tune tendency profile and NG expressions.

Consultation mode:

- Used by family/child after access policy is valid.
- May trigger emergency action classification.
- May trigger silent emergency contact notification depending on policy.

---

## 4. Request Lifecycle

Recommended lifecycle:

1. User opens FamilyLegacyAI chat in EndOfLifePlanner.
2. LifeOS checks access policy.
3. If user is minor, LifeOS checks guardian consent.
4. LifeOS builds minimal runtime payload.
5. LifeOS decrypts private context vault locally only when needed and allowed.
6. LifeOS selects minimal context entities.
7. LifeOS sends request to AIWorkerOS runtime.
8. AIWorkerOS classifies safety level.
9. AIWorkerOS retrieves CX reference only if allowed.
10. AIWorkerOS generates reply.
11. AIWorkerOS returns reply, safety, audit refs, and emergency action metadata.
12. LifeOS displays reply.
13. If emergency action requires contact notification, user is not shown "通知しました".
14. Notification target receives safety-check guidance only.

---

## 5. Async Queue Principle

FamilyLegacyAI should not depend only on immediate AIWorkerOS availability.

Runtime status values:

- accepted
- queued
- pending
- processing
- completed
- failed
- blocked_by_policy
- blocked_by_minor_consent
- blocked_by_restore_policy
- blocked_by_safety_policy

If AIWorkerOS is offline:

- LifeOS may queue request or show pending state.
- LifeOS must not fabricate a completed reply.
- Emergency classification should prefer local lightweight precheck if available, then sync when AIWorkerOS is online.
- For urgent safety cases, app-side emergency guidance should be shown even if AIWorkerOS is offline.

---

## 6. Request Contract

Request object concept:

- request_type
- runtime_mode
- request_id
- idempotency_key
- source_app_code
- legacy_profile_id
- registrant_user_ref
- beneficiary_user_ref
- age_mode_code
- user_message
- ui_locale
- disclosure_policy
- access_policy_snapshot
- trait_profile_snapshot
- knowledge_profile_snapshot
- context_vault_minimized_payload
- cx_reference_policy
- safety_policy
- emergency_policy
- audit_policy

Required values:

- request_type = family_legacy_consultation
- source_app_code = lifeos_end_of_life_planner
- disclosure_policy.persistent_ui_disclosure_required = true
- disclosure_policy.repeat_disclosure_in_each_message = false
- safety_policy.minor_consent_required = true
- emergency_policy.silent_contact_notification = true
- emergency_policy.do_not_show_notification_done = true

---

## 7. Access Preflight

LifeOS must run access preflight before calling AIWorkerOS.

Preflight checks:

- legacy profile exists
- profile status is active or preview
- beneficiary has access
- posthumous mode allows use if required
- minor consent exists when user is minor
- guardian consent scope is valid
- restore policy is valid if context was restored
- conversation is not suspended
- disclosure policy exists
- emergency policy exists for serious/urgent handling

AIWorkerOS may re-check policy snapshot, but LifeOS remains the owner of access rules.

Blocked preflight response examples:

- blocked_by_minor_consent
- blocked_by_access_policy
- blocked_by_posthumous_policy
- blocked_by_restore_policy
- blocked_by_profile_status
- blocked_by_suspension

---

## 8. Context Minimization

LifeOS must not send full private context vault to AIWorkerOS.

Allowed minimized payload:

- entity_id
- entity_type
- display_label_or_alias
- relationship_or_reason_summary
- allowed_usage_policy
- sensitive_level
- relevant_note_excerpt
- source_confidence_level

Not allowed:

- full vault file
- decryption key
- unnecessary third-party details
- unrelated family notes
- raw sensitive memory unless needed and allowed
- data for AI training
- data for CX registration

Runtime payload should include only context required for the current reply.

---

## 9. Trait Profile Runtime Snapshot

Trait profile snapshot may include:

- speech_style_code
- encouragement_style_code
- scolding_style_code
- money_view_summary
- work_view_summary
- family_view_summary
- relationship_view_summary
- failure_view_summary
- message_to_children_summary
- ng_expression_summary
- person_likeness_level
- source_confidence_level

Rules:

- person_likeness_level must not mean impersonation.
- Reply must not claim to be the registrant.
- UI disclosure handles persistent "not the person" explanation.
- Body should be natural unless asked directly or risk requires clarification.

---

## 10. Knowledge Profile Runtime Snapshot

Knowledge profile snapshot may include:

- domain_code
- depth_level
- explanation_style_code
- cx_reference_allowed
- cx_depth_limit
- professional_boundary_code
- caution_note

Rules:

- CX may be used only in allowed domains.
- CX depth must not exceed cx_depth_limit.
- CX content is background knowledge.
- CX content must not be represented as registrant memory.
- Medical, legal, inheritance, and contract topics must use caution language and specialist guidance.

---

## 11. CX Reference Contract

AIWorkerOS may request CX22073JW reference with:

- domain_code
- topic
- requested_depth_level
- registrant_depth_limit
- language_code
- source_app_code
- source_app_ref
- safety_boundary_code

AIWorkerOS must log:

- cx_reference_id
- domain_code
- depth_level_used
- registrant_depth_limit
- used_as_background_only = true

Prohibited:

- storing private context vault into CX
- treating CX content as registrant memory
- using CX to create unsupported personal memories
- using CX to make final medical/legal/inheritance decisions

---

## 12. Safety Classification Contract

AIWorkerOS must classify safety level before final reply.

Safety levels:

- 0 = normal
- 1 = caution
- 2 = serious
- 3 = urgent

Classification fields:

- safety_level
- reason_code
- risk_summary
- self_harm_risk_flag
- violence_risk_flag
- medical_emergency_flag
- abuse_or_dv_caveat_flag
- minor_safety_flag
- notification_candidate_flag
- user_notification_prohibited

Default rule:

- user_notification_prohibited = true when notification_candidate_flag is true

Reason code examples:

- normal_life_advice
- grief_or_loneliness
- strong_isolation
- self_harm_ideation
- imminent_self_harm
- violence_threat
- abuse_or_coercion
- minor_at_risk
- medical_emergency
- legal_or_inheritance_boundary
- unknown_high_risk

---

## 13. Emergency Action Contract

Emergency action values:

- none
- supportive_guidance_only
- recommend_trusted_person
- contact_notification_candidate
- contact_notification_dispatched
- contact_notification_withheld_abuse_dv_caveat
- require_guardian_review
- require_admin_review
- urgent_local_resource_guidance

User-facing rule:

- Do not show "通知しました"
- Do not show "保護者に連絡しました"
- Do not show "家族に知らせました"

User-facing allowed copy direction:

- 一人で抱えなくていい
- 今すぐ全部を決めなくていい
- 近くに信頼できる人がいるなら少しだけ話してみて
- 緊急の危険がある場合は、近くの大人や緊急窓口につながってください

Notification target content:

- safety check request
- natural contact guidance
- do-not-interrogate guidance
- risk summary
- support resources
- no full conversation by default

---

## 14. Notification Dispatch Contract

AIWorkerOS may prepare or dispatch notification only if LifeOS policy allows it.

Dispatch provider candidates:

- line
- email
- sms
- app_push
- webhook

Dispatch input:

- emergency_event_id
- selected_contact_refs
- provider_code
- risk_summary
- safety_check_guidance_template
- support_resource_template
- full_conversation_allowed = false by default
- user_told_notification_done = false

Dispatch output:

- dispatch_status_code
- provider_code
- destination_ref
- sent_summary_only
- full_conversation_sent
- user_told_notification_done
- dispatch_audit_ref

Critical invariant:

- user_told_notification_done must normally be false.
- full_conversation_sent must normally be false.

---

## 15. Response Contract

Response object concept:

- ok
- request_id
- runtime_status
- reply_text
- safety_level
- emergency_action
- used_trait_refs
- used_knowledge_refs
- used_context_entity_refs
- used_cx_refs
- audit_id
- retryable
- error_code
- error_message_for_ui

Reply text rules:

- Natural message body.
- No repeated "本人ではない" boilerplate in every reply.
- Direct identity questions must answer clearly that it is an AI based on records.
- High-risk or legal/medical/inheritance boundaries must include appropriate limitation.
- No unsupported personal memory.
- No public figure impersonation.
- No secret notification disclosure.

---

## 16. Error Contract

Error code candidates:

- invalid_request
- access_policy_missing
- minor_consent_missing
- profile_not_active
- posthumous_mode_not_allowed
- vault_context_not_allowed
- cx_domain_not_allowed
- safety_policy_missing
- aiworker_unavailable
- generation_failed
- safety_blocked
- notification_policy_error
- internal_error

UI handling:

- access and minor errors are shown as setup/action required.
- aiworker_unavailable should show pending or retry state.
- safety_blocked should show supportive safe guidance, not raw technical error.
- notification errors must not disclose emergency notification internals to the user.

---

## 17. Audit Contract

LifeOS audit should track:

- who requested consultation
- profile used
- access policy result
- minor consent result
- restore policy result
- context minimization result
- displayed response reference
- emergency event reference if any

AIWorkerOS audit should track:

- runtime request
- safety classification
- CX reference use
- generation result
- notification dispatch result
- policy snapshot hash

Audit should avoid storing full private vault plaintext.

---

## 18. Runtime Non-Goals

R5 does not implement:

- runtime endpoint
- queue worker
- DB tables
- DDL
- API POST
- notification adapter
- LINE sending
- Drive integration
- encryption implementation
- UI implementation

---

## 19. Required Future Tests

When implementation starts, tests should verify:

- minor request is blocked without guardian consent
- persistent disclosure is UI-level, not repeated in message body
- emergency notification does not produce "通知しました" in user chat
- context vault payload is minimized
- decryption key is never sent to AIWorkerOS
- CX references are background-only
- public figure references do not impersonate or imply endorsement
- AIWorkerOS offline state returns queued/pending rather than fake completion
- serious safety cases produce contact guidance metadata
- abuse/DV caveat can withhold or reroute notification

---

## 20. R5 Decision

Decision:

- RUNTIME_CONTRACT_READY_FOR_R6_CX_BOUNDARY_OR_R4C_QUESTIONNAIRE_COPY
- NOT_READY_FOR_IMPLEMENTATION
- NOT_READY_FOR_API_POST
- NOT_READY_FOR_DB_APPLY

Recommended next:

- R6 CX reference boundary detail
- or R4C questionnaire and UI copy draft
