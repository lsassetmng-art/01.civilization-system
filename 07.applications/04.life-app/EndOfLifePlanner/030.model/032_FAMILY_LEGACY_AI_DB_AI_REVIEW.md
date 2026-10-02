# EndOfLifePlanner FamilyLegacyAI R3 DB AI Review

FINAL_STATUS=DB_AI_REVIEW_DRAFT_NOT_APPLIED
PATCH=NO
DB_CONNECTION=NO
DB_WRITE=NO
DDL_APPLY=NO
API_POST=NO
GIT_PUSH=NO

---

## 1. Review Target

This document reviews the R2 FamilyLegacyAI data model draft before any DB DDL is created or applied.

R0 canonical design:

- path: /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/EndOfLifePlanner/020.architecture/021_FAMILY_LEGACY_AI_R0_CANONICAL_DESIGN.md
- line_count: 510
- sha256: 664f3a2e26297835f4d74e9f8cbff9ecce3a5efc4c60f9937fffaf21cb0a4295

R2 data model draft:

- path: /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/EndOfLifePlanner/030.model/031_FAMILY_LEGACY_AI_DATA_MODEL_DRAFT.md
- line_count: 721
- sha256: 27abe8f5a0efd8c69e855315daccea386049775ee0ab419500ba33b3103b7cf2

---

## 2. Review Summary

R2 is acceptable as a design draft.

The model keeps FamilyLegacyAI canon in LifeOS / EndOfLifePlanner, separates AIWorkerOS as runtime executor, uses CX22073JW as knowledge reference, and does not make PersonaOS mandatory.

The design correctly treats private context vault data as encrypted client-side content and prevents plaintext third-party context from becoming server-side canonical data.

No DB apply is approved by this review. This review only prepares DB design quality checks.

---

## 3. Evidence Counts

- life_table_candidate_count: 12
- aiworker_table_candidate_count: 5
- vault_privacy_marker_count: 23
- minor_guardian_marker_count: 16
- silent_emergency_marker_count: 6
- cx_reference_marker_count: 16
- persona_not_mandatory_marker_count: 3

---

## 4. Canon Ownership Review

Decision:

- PASS

Reason:

- FamilyLegacyAI canon remains in LifeOS / EndOfLifePlanner.
- AIWorkerOS is limited to runtime execution, safety classification, CX reference logging, and notification dispatch logging.
- CX22073JW is reference knowledge only.
- PersonaOS is not required for FamilyLegacyAI core canon.
- PersonaOS is not mandatory for FamilyLegacyAI.

Required invariant:

- LifeOS owns registrant profile, tendency, access, emergency, restore, and vault backup policy.
- AIWorkerOS must not become the canonical owner of FamilyLegacyAI records.
- CX22073JW must not store private family/person context vault content.

---

## 5. Privacy Boundary Review

Decision:

- PASS_WITH_STRICT_CONDITIONS

Accepted:

- DB may store encrypted vault blob.
- DB may store encrypted object URI.
- DB may store hash, version, policy, status, and audit metadata.
- Small vaults may use DB bytea/blob if client-side encrypted.
- Large vaults should use object storage with DB metadata.

Strict conditions:

- DB must not store plaintext private context.
- DB must not store decryption key.
- Server must not decrypt vault plaintext.
- AIWorkerOS must receive only minimized runtime context.
- Private context vault must not be registered into CX22073JW.
- Private context vault must not be used for AI training.

Design implication for later DDL:

- encrypted_blob should be nullable.
- encrypted_object_uri should be nullable.
- at least one encrypted storage pointer should be required by application validation.
- encryption_version and blob_hash should be required.
- key_policy_code should be required.
- no plaintext relative or favorite-person columns should be added to cloud tables.

---

## 6. Minor and Guardian Review

Decision:

- PASS

Accepted:

- Minor use requires guardian/adult consent.
- Minor restore requires guardian/adult approval.
- Consent scope is separated by use, restore, emergency notification, and log review.

Required invariant:

- AIWorkerOS runtime request must not be created for a minor unless LifeOS access policy and guardian consent are valid.
- Restore flow must check age mode before decrypting local vault.
- Adult child may restore with login and recovery key if restore policy allows it.

---

## 7. Emergency Silent Notification Review

Decision:

- PASS_WITH_ABUSE_DV_CAVEAT

Accepted:

- Serious or urgent consultation may trigger contact notification.
- User must not be shown "通知しました".
- Emergency contact receives safety-check guidance, not raw full conversation by default.
- user_notified_flag should normally be false.
- user_told_notification_done should normally be false.
- full_conversation_sent should normally be false.

Required abuse/DV caveat:

- If the registered contact may be the abuser, coercive party, or dangerous person, normal notification must be withheld, rerouted, or escalated to a separate review/support path.

Design implication for later DDL:

- emergency_event should include abuse_or_dv_caveat_flag.
- notification dispatch log should include full_conversation_sent and user_told_notification_done.
- emergency contact should include per-risk notification flags.
- contact notification status must be logged.

---

## 8. CX22073JW Reference Review

Decision:

- PASS

Accepted:

- Registrant knowledge domain and depth are person-likeness.
- CX22073JW may provide background knowledge within allowed domains and depth limits.
- CX references must not be represented as registrant memory.
- CX references must not turn into medical/legal/inheritance final decision automation.

Required invariant:

- used_as_background_only must be true in CX reference log.
- depth_level_used must not exceed registrant_depth_limit unless response uses explicit caution language.
- CX references must not use private context vault data.

---

## 9. Public Figure and Preference Reference Review

Decision:

- PASS

Accepted:

- Favorite celebrities, athletes, artists, works, hobbies, brands, foods, places, and public figures can be stored as preference/context entities inside encrypted private context vault when private.
- These are person-likeness cues and analogy/reference material.

Prohibited:

- impersonating public figures
- implying endorsement
- fabricating direct relationships
- fabricating statements
- copying voice/personality of celebrities as the response identity

Design implication:

- private context vault can include entity_type and usage_policy.
- public figure data used from CX/media knowledge must remain reference-only.

---

## 10. Table Responsibility Review

LifeOS tables are appropriate for canon:

- family_legacy_profile
- family_legacy_trait_profile
- family_legacy_questionnaire_answer
- family_legacy_knowledge_profile
- family_legacy_context_vault_backup
- family_legacy_access_policy
- family_legacy_guardian_consent
- family_legacy_emergency_contact
- family_legacy_emergency_event
- family_legacy_restore_policy
- family_legacy_conversation
- family_legacy_generation_audit

AIWorkerOS tables are appropriate for runtime:

- family_legacy_runtime_request
- family_legacy_runtime_result
- family_legacy_safety_classification
- family_legacy_cx_reference_log
- family_legacy_notification_dispatch_log

No table should be moved to PersonaOS for this feature.

---

## 11. Required DDL Guardrails for Future R4/R5

Before any DDL apply, the following must be true:

- Explicit user GO is required.
- PERSONA_DATABASE_URL must be used if applying to Persona-side DB.
- DATABASE_URL must not be used for LifeOS/Persona-side work.
- DDL must be additive only.
- No DROP.
- No TRUNCATE.
- No CASCADE.
- No destructive migration.
- No service key or secret output.
- Precheck must inspect existing schema first.
- Rollback or safe no-op strategy must be prepared.
- DDL must include comments or design references where appropriate.
- RLS must be separately designed and reviewed before enabling.
- DB apply and RLS apply must not be bundled without explicit approval.

---

## 12. Open Questions Before DDL

These should be answered before generating SQL:

1. Which actual schema name is canonical for LifeOS in the target DB?
2. Does existing LifeOS have user/account/profile tables to reference?
3. Are UUID generation functions already available?
4. Is object storage metadata already modeled elsewhere?
5. Should encrypted_blob be bytea, text base64, or storage-only in MVP?
6. Should conversation content be stored at all, or only metadata plus safety audit?
7. What is the exact LINE/app notification provider boundary?
8. Are emergency contact destinations encrypted by app layer or DB extension?
9. Should restore key policy be table-driven or app-config driven?
10. Should guardian consent integrate with an existing family/account consent model?

---

## 13. R3 Decision

Decision:

- READY_FOR_R4_DB_DESIGN_REFINEMENT
- NOT_READY_FOR_DB_APPLY

Reason:

- R2 data model is structurally acceptable.
- Privacy and safety boundaries are clear enough for the next design phase.
- SQL should not be generated until existing DB/schema inventory is performed or a DDL target is explicitly selected.

---

## 14. Next Recommended Phase

R4 should be one of the following:

Option A:
- R4A READONLY DB/schema inventory
- DB_CONNECTION=YES
- DB_WRITE=NO
- DDL_APPLY=NO

Option B:
- R4B UI wire/design draft
- DB_CONNECTION=NO
- PATCH=NO

Option C:
- R4C runtime contract detail
- DB_CONNECTION=NO
- API_POST=NO

Recommended next:
- R4A READONLY DB/schema inventory if DB design will continue.
- R4B UI wire/design if product screen structure should be designed first.
