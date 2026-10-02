# EndOfLifePlanner FamilyLegacyAI R6 CX / AIWorkerOS Integration Boundary

FINAL_STATUS=CX_BOUNDARY_DRAFT_NOT_IMPLEMENTED
PATCH=NO
DB_CONNECTION=NO
DB_WRITE=NO
DDL_APPLY=NO
API_POST=NO
GIT_PUSH=NO

---

## 1. Purpose

This document defines the boundary between EndOfLifePlanner FamilyLegacyAI, AIWorkerOS, and CX22073JW.

FamilyLegacyAI uses CX22073JW as a background knowledge foundation. CX22073JW must not become the owner of private family memory, registrant tendency, emergency decisions, or execution authority.

This is an integration boundary design only. No implementation is performed in R6.

---

## 2. Canonical Responsibilities

LifeOS / EndOfLifePlanner owns:

- FamilyLegacyAI profile
- registrant tendency
- questionnaire answers
- knowledge domain and depth settings
- private context vault policy
- encrypted vault backup metadata
- family access policy
- minor and guardian consent
- emergency contact policy
- restore policy
- UI disclosure policy
- posthumous mode policy

AIWorkerOS owns runtime execution:

- consultation generation
- safety classification
- emergency action classification
- CX reference request
- reply generation
- runtime audit metadata
- notification dispatch contract if enabled by LifeOS policy

CX22073JW owns reference knowledge:

- background knowledge
- historical knowledge
- domain reference material
- source-backed explanations
- caution-aware reference data

CX22073JW does not own:

- FamilyLegacyAI canon
- registrant private memories
- relatives or family private details
- favorite-person private vault data
- emergency contact data
- guardian consent
- posthumous access policy
- runtime decisions

---

## 3. Core Boundary Rule

CX22073JW is background knowledge only.

Required invariant:

- CX knowledge must not be presented as registrant memory.
- CX knowledge must not be presented as something the registrant personally said.
- CX knowledge must not be mixed into private vault as if it were family memory.
- CX must not receive plaintext private context vault content.
- CX must not decide emergency contact notification.
- CX must not decide access rights.
- CX must not become a medical, legal, inheritance, or contract authority.

---

## 4. Why CX Is Needed

Registrant knowledge domains and depth are part of person-likeness.

Example:

- A registrant who was strong in money and work should answer those topics with more concrete structure.
- A registrant who was weak in medical or legal topics should answer cautiously.
- A registrant who liked history may use historical examples.
- A registrant who loved a specific work or public figure may use it as preference context, but not impersonate it.

CX supports this by providing reliable background material.

---

## 5. Knowledge Domain Gate

Before AIWorkerOS requests CX, LifeOS must provide a knowledge profile snapshot.

Required fields:

- domain_code
- depth_level
- explanation_style_code
- cx_reference_allowed
- cx_depth_limit
- professional_boundary_code
- caution_note

CX can be used only when:

- cx_reference_allowed = true
- domain_code matches the user topic
- requested depth is within cx_depth_limit
- professional_boundary_code allows reference-style explanation
- safety policy allows the topic

CX must not be used when:

- domain is not allowed
- depth limit is missing for sensitive topic
- topic is medical/legal/inheritance/contract and no caution policy exists
- request would require unsupported personal memory
- request needs private vault content as source material

---

## 6. Domain Examples

Allowed domain candidates:

- money
- business
- work
- history
- education
- childcare
- technology
- hobby
- local_knowledge
- family_history_reference
- culture
- media
- life_lessons

Sensitive domain candidates:

- medical_health
- law
- inheritance
- contracts
- debt
- abuse_or_dv
- self_harm
- violence
- child_safety

Sensitive domains require caution language and escalation policy.

---

## 7. Depth Control

Depth levels:

1. 少し知っている
2. 家族に話せる
3. 相談に乗れる
4. 仕事で使っていた
5. 人に教えられる
6. 専門家レベル

Runtime rule:

- AIWorkerOS must not exceed registrant_depth_limit as if it were the registrant's own knowledge.
- If CX provides deeper knowledge than the registrant profile allows, the reply must frame it as general background, not registrant memory.
- For low-depth registrant profiles, reply should be simpler and more cautious.
- For high-depth profiles, reply may be more structured and detailed, but still must not fabricate personal expertise.

---

## 8. Language Boundary

FamilyLegacyAI may serve users in multiple languages later.

R6 canonical language rule:

- CX22073JW knowledge may be primarily Japanese.
- AIWorkerOS handles translation or locale adaptation at runtime.
- LifeOS stores UI locale and user/session language preference.
- CX should not own user-facing language preference.
- Translation must preserve safety caveats and disclosure boundaries.

Implication:

- CX returns reference substance.
- AIWorkerOS adapts it to the chat language.
- LifeOS controls UI labels.

---

## 9. Private Context Vault Boundary

Private context vault may contain:

- relatives
- family members
- friends
- teachers
- important people
- favorite celebrities
- favorite public figures
- favorite works
- music
- movies
- anime
- manga
- books
- hobbies
- places
- brands
- foods
- private preference notes

Boundary:

- Private vault content is LifeOS-owned.
- Vault plaintext exists only on authorized client/device side.
- AIWorkerOS may receive minimized runtime excerpts only.
- CX22073JW must not receive private vault plaintext.
- CX22073JW must not store or index private vault data.
- AIWorkerOS must not send vault plaintext to CX.

---

## 10. Public Figure and Work Reference Boundary

Favorite celebrities, athletes, artists, historical figures, works, and characters may be used as preference references.

Allowed:

- mention that the registrant liked a person/work if registered
- use as analogy or preference cue
- use public/background knowledge as context
- use CX/media knowledge for general explanation

Prohibited:

- impersonating public figures
- claiming endorsement
- claiming personal relationship
- fabricating statements
- reproducing celebrity identity as the AI persona
- treating fictional character speech as the registrant's speech

---

## 11. Personal Memory Boundary

Allowed memory sources:

- registrant-written messages
- questionnaire answers
- letters
- audio/video transcripts
- approved memories
- private context vault minimized excerpts
- family-facing messages

Not allowed:

- CX-generated personal memories
- inferred family events without source
- "昔こう言っていた" unless recorded
- "一緒に行った" unless registered
- unsupported relationship claims
- new posthumous promises by the registrant

Reply should distinguish:

- registrant record
- registered tendency
- private context excerpt
- CX background knowledge
- general safe guidance

---

## 12. AIWorkerOS CX Request Contract

AIWorkerOS may request CX with:

- request_id
- legacy_profile_id
- domain_code
- topic
- user_message_summary
- requested_depth_level
- registrant_depth_limit
- ui_locale
- source_app_code
- safety_boundary_code
- professional_boundary_code
- background_only = true

AIWorkerOS must not send:

- full user conversation
- full private vault
- decryption keys
- unnecessary third-party personal data
- emergency contact destination
- guardian consent details
- raw family sensitive memories

---

## 13. CX Response Contract

CX response should return:

- cx_reference_id
- domain_code
- title
- summary
- key_points
- caution_notes
- source_basis
- source_caution
- recommended_depth_level
- language_code
- verification_status

CX response must not return:

- private family/person data
- emergency decision
- legal/medical final judgment
- instruction to notify contacts
- generated registrant memory

---

## 14. AIWorkerOS Integration Behavior

AIWorkerOS combines:

- user message
- LifeOS trait profile
- LifeOS knowledge profile
- minimized private context
- CX background reference
- safety classification
- disclosure policy
- emergency policy

Then AIWorkerOS returns:

- reply_text
- safety_level
- emergency_action
- used_trait_refs
- used_knowledge_refs
- used_context_entity_refs
- used_cx_refs
- audit_id

The reply must:

- feel natural
- follow registrant tendency
- not repeat "本人ではない" every time
- not claim to be the registrant
- not fabricate personal memories
- not disclose silent emergency notification
- use CX as background only

---

## 15. Medical / Legal / Inheritance / Contract Boundary

These are high-risk domains.

Rules:

- AI may help organize concerns.
- AI may explain general concepts with caution.
- AI must not make final decisions.
- AI must recommend appropriate professionals when needed.
- AI must not replace will, inheritance procedure, medical diagnosis, legal advice, or contract review.
- CX can provide general reference only.
- Registrant-like wording must not override safety boundaries.

Example safe direction:

- "これは自己判断で決めない方がいい。"
- "不安を整理することはできる。"
- "最終判断は医師、弁護士、専門窓口に確認してほしい。"

---

## 16. Emergency Boundary

CX is not emergency authority.

Emergency flow is:

1. AIWorkerOS classifies safety level.
2. LifeOS emergency policy determines notification eligibility.
3. Notification, if any, is silent to user.
4. Notification target receives safety-check guidance.
5. CX may provide general support-resource background only if needed.

CX must not decide:

- whom to notify
- whether user was notified
- contact priority
- guardian consent
- abuse/DV reroute
- emergency dispatch execution

---

## 17. Audit Requirements

AIWorkerOS must log CX use:

- runtime_request_id
- cx_reference_id
- domain_code
- depth_level_used
- registrant_depth_limit
- used_as_background_only = true
- created_at

LifeOS should be able to audit:

- which CX references supported a reply
- whether CX was within allowed domain
- whether depth exceeded registrant limit
- whether caution language was required
- whether private vault data was excluded from CX

Audit must not include:

- decryption key
- full vault plaintext
- unnecessary third-party personal data

---

## 18. Failure and Fallback

If CX is unavailable:

- AIWorkerOS may generate from LifeOS tendency/profile only.
- Reply should be less knowledge-heavy.
- Runtime result should mark cx_reference_unavailable.
- AIWorkerOS must not fabricate source-backed knowledge.
- For serious topics, AIWorkerOS should use caution and support guidance.

If domain is not allowed:

- AIWorkerOS should not query CX.
- Reply should use registered tendency plus general safe guidance.
- Audit should mark cx_domain_not_allowed.

If registrant depth is low:

- AIWorkerOS should simplify answer.
- Avoid pretending deep expertise.
- Use "一般的には" style only when safe.

---

## 19. R6 Test Targets for Future Implementation

Future tests should verify:

- CX is not called when cx_reference_allowed = false.
- CX is not called for private context vault content.
- CX request does not include decryption key.
- CX request does not include emergency contact destination.
- CX response is marked background-only.
- AIWorkerOS does not present CX as registrant memory.
- Domain/depth limits are enforced.
- Medical/legal/inheritance/contract topics trigger caution.
- Public figure preferences do not become impersonation.
- AIWorkerOS can proceed with cautious fallback when CX is unavailable.
- Silent emergency policy remains controlled by LifeOS and AIWorkerOS, not CX.
- UI locale is handled by LifeOS/AIWorkerOS, not CX.

---

## 20. R6 Decision

Decision:

- CX_BOUNDARY_READY_FOR_R4C_QUESTIONNAIRE_COPY_OR_R4A_DB_INVENTORY
- NOT_READY_FOR_IMPLEMENTATION
- NOT_READY_FOR_API_POST
- NOT_READY_FOR_DB_APPLY

Recommended next:

- R4C questionnaire and UI copy draft
- or R4A readonly DB/schema inventory
