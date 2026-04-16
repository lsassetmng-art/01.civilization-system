# ============================================================
# ESTIMATE CREATOR COMMON COMPONENT ADOPTION NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This note organizes
which common components EstimateCreator should directly use,
which planned/candidate components should be promoted in practice,
and which responsibilities should remain app-specific.

EstimateCreator is positioned as a strong reuser of BusinessOS common capabilities,
not as an isolated custom implementation.

# ============================================================
# 2. DIRECTLY ADOPTED COMMON COMPONENTS
# ============================================================

EstimateCreator should directly adopt the following common components
as current shared capabilities.

## 2-1. Submission / Publication / Review
- Submission Common
- ERP Publication Capability
- Approval / Review Surface Common

These cover:
- rough estimate submission intent
- ERP rough estimate publication request
- approval-linked publication visibility
- publication result handling

## 2-2. Sharing / Sync / Draft
- Online Sync Common
- App-internal Sharing Common
- Draft / Work-in-progress Common
- Activity Log / Audit Trail Common

These cover:
- offline drafting
- pending sync and replay
- preconfigured-user sharing
- share revoke
- history and auditability

## 2-3. Contact / Delivery / Notifications
- Contact / Destination Common
- External Notification Delivery Common
- Channel Routing Common

These cover:
- customer/contact destination reference
- outbound notice routing
- future notification expansion

## 2-4. Template / Generation
- Template / Generated Output Common

These cover:
- estimate template usage
- reusable output-oriented template behavior
- generated content support

## 2-5. AI / Assistant Support
- Business AI Worker

This covers:
- future estimate support assistance
- business-side AI review or suggestion workflows
- app-consistent AI worker interaction surface

# ============================================================
# 3. PLANNED OR CANDIDATE ITEMS THAT SHOULD BE TREATED AS CURRENT
# ============================================================

EstimateCreator should effectively raise the following items
to near-current importance.

## 3-1. Attachment / Evidence Common
Reason:
EstimateCreator will naturally need support for:
- estimate support evidence
- supplementary materials
- publication evidence
- future PDF or related proof attachment

Therefore Attachment / Evidence Common should be treated
as practically important for EstimateCreator.

## 3-2. Install Guidance / Cross-app Launch Common
Reason:
EstimateCreator now formally supports:
- standalone launch
- deeplink launch

Therefore cross-app launch guidance and invocation normalization
are practically required,
not merely optional.

# ============================================================
# 4. CANDIDATE ITEMS THAT SHOULD REMAIN CANDIDATE FOR NOW
# ============================================================

The following are useful,
but should remain candidate or later-phase shared components for now.

## 4-1. Assignment / Work Queue Common
Useful for:
- QA ownership
- follow-up task routing

Reason to defer:
EstimateCreator can operate without full shared assignment infrastructure initially.

## 4-2. Consultation Common
Useful for:
- review consultation
- internal assistance

Reason to defer:
Not part of the estimate core yet.

## 4-3. Reminder Common
Useful for:
- estimate expiry reminders
- follow-up reminders
- QA due reminders

Reason to defer:
Helpful, but not core to first canonical design closure.

## 4-4. Companion Conversation Framing Common
Useful for:
- secretary-style guided interaction
- persona-coupled app experience

Reason to defer:
EstimateCreator is currently more business-workbench oriented
than companion-conversation oriented.

## 4-5. Preference Common
Useful for:
- default estimate values
- display behavior
- user-preferred template defaults

Reason to defer:
Can be layered later without blocking canonical completion.

## 4-6. Publication / Versioned Snapshot Common
Useful for:
- revision snapshots
- publication snapshots

Reason to defer:
EstimateCreator currently can preserve this meaning
inside its own current model set.

## 4-7. Visibility Scope Evaluation Common
Useful for:
- richer access evaluation
- deeper share visibility rules

Reason to defer:
Current explicit share-target design is sufficient for now.

## 4-8. Rule-based Draft Generation Common
Useful for:
- auto-generated estimate drafts
- guided estimate creation

Reason to defer:
Premium template support is enough for the current phase.

## 4-9. Generation Warning / Shortage Review Common
Useful for:
- shortage warnings
- estimate caution banners
- risk indication

Reason to defer:
Can initially remain app-specific warning behavior.

## 4-10. Publish Target Confirmation Common
Useful for:
- final publication confirmation
- destination validation

Reason to defer:
Current publication flow can carry this inside app/runtime/policy.

# ============================================================
# 5. SHARED COMPONENTS THAT SHOULD BE EXPLICITLY PROMOTED
# ============================================================

EstimateCreator reveals several high-value common components
that should be explicitly promoted for reuse across other applications.

## 5-1. Cross-app Launch / Deeplink Entry Common
This should be promoted as a shared component.

Shared responsibilities:
- standalone and deeplink dual-entry support
- source_app / source_screen intake
- launch context normalization
- deeplink parameter validation
- invalid context fallback
- readonly / mode routing

This is reusable beyond EstimateCreator.

## 5-2. Shared Session Reuse Common
This should be promoted as a shared component.

Shared responsibilities:
- authenticated calling-app session reuse
- no redundant login UI when shared session is valid
- shared session validity check
- authorization check retention
- invalid session fallback
- prohibition of raw credential transport in deeplink parameters

This is structurally important for BusinessOS app-to-app launch.

## 5-3. Business Draft + Pending Operation Common
This should be promoted as a shared component.

Shared responsibilities:
- offline draft persistence
- pending operation queue
- local_only / pending_push / synced / conflict / failed state conventions
- restart recovery
- replay behavior
- separation of local save from external completion

This fits both EstimateCreator and NameCardManager strongly.

## 5-4. Publication Request + Result Surface Common
This should be promoted as a shared component.

Shared responsibilities:
- publication request state model
- publication pending / completed / failed / rejected status handling
- badge / banner / message behavior
- publication readiness indication
- approval-linked result rendering

This complements ERP Publication Capability at the app surface layer.

## 5-5. Inventory Reference Common
This should be promoted as a shared component.

Shared responsibilities:
- fresh / cached / stale / failed state handling
- checked_at and source timestamp handling
- advisory-only semantics
- stock warning surface
- non-authoritative UI wording

This will be reusable for other business apps.

## 5-6. Template Application Common
This should be promoted as a shared component.

Shared responsibilities:
- app default template
- user template
- template apply flow
- template materialization into draft objects
- template enabled/disabled state
- premium gate integration where needed

This has value beyond EstimateCreator.

# ============================================================
# 6. RESPONSIBILITIES THAT SHOULD REMAIN APP-SPECIFIC
# ============================================================

The following should remain EstimateCreator-specific
rather than being forced into common component scope.

- estimate editor UI
- negotiation memo UI behavior
- estimate preview and summary presentation
- estimate-specific line item interaction
- rough_estimate and local_formal_estimate business semantics
- estimate-specific amount summary wording
- estimate-specific inventory-in-context presentation

These are application-facing business behaviors,
not reusable common primitives.

# ============================================================
# 7. ADOPTION SUMMARY
# ============================================================

## 7-1. Use as-is
EstimateCreator should use:
- Submission Common
- ERP Publication Capability
- Online Sync Common
- App-internal Sharing Common
- Business AI Worker
- External Notification Delivery Common
- Channel Routing Common
- Approval / Review Surface Common
- Draft / Work-in-progress Common
- Activity Log / Audit Trail Common
- Contact / Destination Common
- Template / Generated Output Common

## 7-2. Treat as effectively current
EstimateCreator should treat as practically current:
- Attachment / Evidence Common
- Install Guidance / Cross-app Launch Common

## 7-3. Promote to explicit common components
EstimateCreator strongly supports promoting:
- Cross-app Launch / Deeplink Entry Common
- Shared Session Reuse Common
- Business Draft + Pending Operation Common
- Publication Request + Result Surface Common
- Inventory Reference Common
- Template Application Common

## 7-4. Keep app-specific
EstimateCreator should keep app-specific:
- estimate editor behavior
- estimate-specific memo behavior
- estimate-specific preview behavior
- estimate-specific line flow
- estimate-specific business wording

# ============================================================
# 8. CONCLUSION
# ============================================================

EstimateCreator should be treated as a major consumer
and clarifying case
for BusinessOS common components.

It should maximize reuse of already-available shared capabilities,
while also serving as a trigger to formalize
high-value shared patterns around:

- deeplink launch
- shared session reuse
- offline draft replay
- publication surface state
- inventory reference state
- template application

