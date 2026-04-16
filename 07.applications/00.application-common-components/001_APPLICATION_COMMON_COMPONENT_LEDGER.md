# ============================================================
# APPLICATION COMMON COMPONENT LEDGER
# PersonaOS / BusinessOS / Cross-Application Reuse Management
# ============================================================

status: canonical
type: common-component-ledger
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This ledger manages the operational status
of reusable common components under CivilizationSystem.

Each ledger row should clarify:
- component name
- canonical owner
- classification
- current status
- reused by
- candidate source app
- app-side residual responsibility
- notes

# ============================================================
# 1. STATUS DEFINITIONS
# ============================================================

fixed:
- already treated as canonical common component

candidate:
- identified as reusable, but not yet fully promoted

app-derived-candidate:
- extracted from a concrete app design and proposed for promotion

planned:
- expected to become common, but still requires design work

# ============================================================
# 2. LEDGER
# ============================================================

## 2-1. PersonaOS-side Fixed Common Components

### Component
Consultation Common

canonical_owner:
PersonaOS

classification:
persona-meaning

current_status:
fixed

reused_by:
- PocketSecretary
- future consultation-enabled apps

candidate_source_app:
- none

app_residual_responsibility:
- consultation entry screen
- UI wording
- app-specific consultation flow

notes:
Advisory-only boundary must remain canonical.

---

### Component
Secretary Interaction Common

canonical_owner:
PersonaOS

classification:
secretary-experience

current_status:
fixed

reused_by:
- PocketSecretary
- future secretary-facing apps

candidate_source_app:
- none

app_residual_responsibility:
- home layout
- switch entrypoint
- role label presentation

notes:
Secretary meaning belongs to PersonaOS, not app UI.

---

### Component
Notification Semantics Common

canonical_owner:
PersonaOS

classification:
notification-meaning

current_status:
fixed

reused_by:
- PocketSecretary
- future companion apps
- future assistant apps

candidate_source_app:
- none

app_residual_responsibility:
- device notification bridge
- plan-dependent visibility
- app-local notification screen

notes:
Meaning and urgency stay here.
Channel delivery belongs elsewhere.

---

### Component
Background Common

canonical_owner:
PersonaOS

classification:
presentation-meaning

current_status:
fixed

reused_by:
- PocketSecretary
- persona display apps
- companion apps

candidate_source_app:
- none

app_residual_responsibility:
- background picker UI
- app-specific layout restrictions

notes:
Background has no authority meaning.

---

### Component
VisualRuntime Common

canonical_owner:
PersonaOS

classification:
runtime-semantics

current_status:
fixed

reused_by:
- PocketSecretary
- future persona-rendering apps

candidate_source_app:
- none

app_residual_responsibility:
- host container
- launch timing
- dispose timing

notes:
Rendering authority does not belong to each app.

---

### Component
Summary / Digest Common

canonical_owner:
PersonaOS

classification:
summary-meaning

current_status:
fixed

reused_by:
- PocketSecretary
- future summary-driven apps

candidate_source_app:
- none

app_residual_responsibility:
- summary screen composition
- emphasis order on screen

notes:
Summary meaning and summary layout are separate.

---

### Component
Reminder Common

canonical_owner:
PersonaOS

classification:
reminder-meaning

current_status:
fixed

reused_by:
- PocketSecretary
- future reminder-enabled apps

candidate_source_app:
- none

app_residual_responsibility:
- reminder setup UI
- local reminder control surface

notes:
Reminder semantics are reusable beyond one app.

---

### Component
Presence / Mood Presentation Common

canonical_owner:
PersonaOS

classification:
persona-presentation

current_status:
fixed

reused_by:
- PocketSecretary
- avatar apps
- assistant apps

candidate_source_app:
- none

app_residual_responsibility:
- local presentation tuning
- screen-specific emphasis

notes:
Role expression mapping should remain shared.

---

### Component
Companion Conversation Framing Common

canonical_owner:
PersonaOS

classification:
conversation-framing

current_status:
fixed

reused_by:
- PocketSecretary
- companion apps
- assistant apps

candidate_source_app:
- none

app_residual_responsibility:
- chat screen layout
- entry button placement

notes:
Conversation posture should remain reusable.

---

### Component
Preference Common

canonical_owner:
PersonaOS

classification:
user-preference-meaning

current_status:
fixed

reused_by:
- PocketSecretary
- future persona-facing apps

candidate_source_app:
- none

app_residual_responsibility:
- settings screen layout
- preference editing UX

notes:
Preference meaning should not fragment across apps.

# ============================================================
# 2-2. BusinessOS-side Fixed Common Components
# ============================================================

### Component
Submission Common

canonical_owner:
BusinessOS

classification:
business-operation

current_status:
fixed

reused_by:
- PocketSecretary Enterprise
- EstimateCreator
- NameCardManager
- future business apps

candidate_source_app:
- none

app_residual_responsibility:
- submit button placement
- review entry screen
- target object selection

notes:
Explicit submission only.

---

### Component
ERP Publication Capability

canonical_owner:
BusinessOS

classification:
erp-publication

current_status:
fixed

reused_by:
- EstimateCreator
- NameCardManager
- future ERP-publication apps

candidate_source_app:
- none

app_residual_responsibility:
- request creation screen
- publication waiting UI

notes:
No direct app-to-ERP publish.

---

### Component
Online Sync Common

canonical_owner:
BusinessOS

classification:
sync-foundation

current_status:
fixed

reused_by:
- EstimateCreator
- NameCardManager
- future BusinessOS apps

candidate_source_app:
- none

app_residual_responsibility:
- local DB schema
- sync state display
- conflict UI

notes:
Local is workspace and cache.
BusinessOS remains canonical.

---

### Component
App-internal Sharing Common

canonical_owner:
BusinessOS

classification:
sharing-operation

current_status:
fixed

reused_by:
- EstimateCreator
- NameCardManager
- future sharing-enabled apps

candidate_source_app:
- none

app_residual_responsibility:
- target picker UI
- share button placement
- unshare flow screen

notes:
Explicit share and explicit unshare only.

---

### Component
Business AI Worker

canonical_owner:
BusinessOS

classification:
company-ai-operation

current_status:
fixed

reused_by:
- PocketSecretary Enterprise
- ERP
- EstimateCreator
- NameCardManager
- future business apps

candidate_source_app:
- none

app_residual_responsibility:
- worker usage front UI
- visible worker type presentation
- app-specific support flow

notes:
PersonaOS supplies persona base.
BusinessOS owns employment and use.

---

### Component
External Notification Delivery Common

canonical_owner:
BusinessOS

classification:
delivery-operation

current_status:
fixed

reused_by:
- PocketSecretary Enterprise
- EstimateCreator
- NameCardManager
- future notification-enabled business apps

candidate_source_app:
- none

app_residual_responsibility:
- local send setting UI
- channel enable toggle UI
- app-specific destination entry

notes:
Includes LINE / Slack / SMS / Email / webhook delivery.

---

### Component
Channel Routing Common

canonical_owner:
BusinessOS

classification:
delivery-routing

current_status:
fixed

reused_by:
- PocketSecretary Enterprise
- EstimateCreator
- NameCardManager
- future routed-delivery apps

candidate_source_app:
- none

app_residual_responsibility:
- route explanation UI
- app-specific routing override display

notes:
Routing is not the same as meaning.

---

### Component
Approval / Review Surface Common

canonical_owner:
BusinessOS

classification:
approval-operation

current_status:
fixed

reused_by:
- EstimateCreator
- NameCardManager
- future approval-enabled apps

candidate_source_app:
- none

app_residual_responsibility:
- review screen layout
- approval button placement
- app-local result emphasis

notes:
Review state semantics must stay reusable.

---

### Component
Draft / Work-in-progress Common

canonical_owner:
BusinessOS

classification:
draft-operation

current_status:
fixed

reused_by:
- PocketSecretary Enterprise
- EstimateCreator
- NameCardManager
- future draft-enabled apps

candidate_source_app:
- none

app_residual_responsibility:
- draft editor UI
- draft resume entry
- unsaved warning surface

notes:
Draft completeness is not submission success.

---

### Component
Attachment / Evidence Common

canonical_owner:
BusinessOS

classification:
attachment-evidence

current_status:
fixed

reused_by:
- future evidence-enabled apps
- future receipt/document apps
- future review-enabled apps

candidate_source_app:
- none

app_residual_responsibility:
- file picker UI
- attachment preview layout
- evidence capture flow

notes:
Evidence linkage should stay reusable.

---

### Component
Activity Log / Audit Trail Common

canonical_owner:
BusinessOS

classification:
audit-operation

current_status:
fixed

reused_by:
- EstimateCreator
- NameCardManager
- future logged business apps

candidate_source_app:
- none

app_residual_responsibility:
- log viewer UI
- audit detail screen
- activity summary layout

notes:
Covers submission, sharing, delivery, and review history.

---

### Component
Assignment / Work Queue Common

canonical_owner:
BusinessOS

classification:
assignment-operation

current_status:
fixed

reused_by:
- ShiftManager
- future queue-enabled apps
- future business workflow apps

candidate_source_app:
- none

app_residual_responsibility:
- queue board UI
- assignee picker UI
- task ordering display

notes:
Assignment logic is reusable across many business apps.

---

### Component
Contact / Destination Common

canonical_owner:
BusinessOS

classification:
recipient-destination

current_status:
fixed

reused_by:
- NameCardManager
- EstimateCreator
- future delivery-enabled apps

candidate_source_app:
- none

app_residual_responsibility:
- contact search UI
- destination edit UI
- route visibility display

notes:
Useful for sharing, sending, and notifications.

---

### Component
Template / Generated Output Common

canonical_owner:
BusinessOS

classification:
template-output

current_status:
fixed

reused_by:
- EstimateCreator
- future document apps
- future generated-output apps

candidate_source_app:
- none

app_residual_responsibility:
- template chooser UI
- output preview UI
- final formatting screen

notes:
Generated output is reusable beyond estimates.

---

### Component
Install Guidance / Cross-app Launch Common

canonical_owner:
BusinessOS

classification:
cross-app-handoff

current_status:
fixed

reused_by:
- PocketSecretary
- EstimateCreator
- NameCardManager
- future linked apps

candidate_source_app:
- none

app_residual_responsibility:
- handoff button placement
- install guidance screen
- app-specific unavailable message

notes:
Useful for multi-app ecosystem continuity.

# ============================================================
# 2-3. ShiftManager-derived Additive Candidates
# ============================================================

### Component
Publication / Versioned Snapshot Common

canonical_owner:
BusinessOS

classification:
publication-versioning

current_status:
app-derived-candidate

reused_by:
- ShiftManager
- EstimateCreator candidate
- InvoiceFlow candidate
- future draft-to-fixed apps

candidate_source_app:
- ShiftManager

app_residual_responsibility:
- publication screen layout
- version history UI
- app-specific publish trigger

notes:
Strong reusable candidate for editable -> fixed release pattern.

---

### Component
Visibility Scope Evaluation Common

canonical_owner:
BusinessOS

classification:
visibility-evaluation

current_status:
app-derived-candidate

reused_by:
- ShiftManager
- NameCardManager candidate
- PocketSecretary Enterprise candidate

candidate_source_app:
- ShiftManager

app_residual_responsibility:
- viewer preview UI
- scope explanation layout
- app-specific audience wording

notes:
Separates share rules from evaluated visible results.

---

### Component
Rule-based Draft Generation Common

canonical_owner:
BusinessOS

classification:
rule-generation

current_status:
app-derived-candidate

reused_by:
- ShiftManager
- EstimateCreator candidate
- MBO candidate
- project planning apps candidate

candidate_source_app:
- ShiftManager

app_residual_responsibility:
- generation trigger UI
- generated draft review UI
- app-specific rule editor

notes:
Draft generation must not bypass human review.

---

### Component
Generation Warning / Shortage Review Common

canonical_owner:
BusinessOS

classification:
generation-review

current_status:
app-derived-candidate

reused_by:
- ShiftManager
- planning assistants candidate
- resource balancing apps candidate

candidate_source_app:
- ShiftManager

app_residual_responsibility:
- warning screen UI
- shortage detail presentation
- manual fix flow

notes:
Useful wherever auto-generation creates incomplete outcomes.

---

### Component
Schedule / Time-slot Planning Common

canonical_owner:
BusinessOS

classification:
planning-assignment

current_status:
app-derived-candidate

reused_by:
- ShiftManager
- reservation planning candidate
- facility planning candidate
- workforce allocation apps candidate

candidate_source_app:
- ShiftManager

app_residual_responsibility:
- calendar layout
- slot editor UI
- app-specific plan display

notes:
Strong reusable planning foundation.

---

### Component
Publish Target Confirmation Common

canonical_owner:
BusinessOS

classification:
publish-confirmation

current_status:
app-derived-candidate

reused_by:
- ShiftManager
- NameCardManager candidate
- controlled release apps candidate

candidate_source_app:
- ShiftManager

app_residual_responsibility:
- confirmation dialog layout
- viewer sample presentation
- app-specific confirmation wording

notes:
Useful for release-accident prevention.

# ============================================================
# 3. LEDGER OPERATING RULE
# ============================================================

When a new app introduces a reusable pattern:

1. first check whether an existing common component already covers it
2. if not, register it here as app-derived-candidate
3. promote it to fixed after cross-application validation
4. record app-side residual responsibility explicitly

# ============================================================
# 4. SUMMARY
# ============================================================

This ledger provides the management layer
for the application common-component catalog.

The catalog tells what exists.
The ledger tells:
- who owns it
- how mature it is
- where it is reused
- what remains app-specific

# ============================================================

# ============================================================
# ADDITIVE PROMOTION ENTRIES FROM 004 CANONICAL ADDITIVE LEDGER
# ============================================================

### Component
External Reflection Chain

canonical_owner:
Application common

classification:
reflection-boundary

current_status:
app-derived-candidate

reused_by:
- GameOS source
- PersonaOS candidate
- LifeOS candidate
- BusinessOS candidate
- future application-layer candidates

candidate_source_app:
- GameOS

app_residual_responsibility:
- source-domain local state modeling
- target canonical truth ownership
- domain-specific decision UI

notes:
Top-priority reusable reflection chain pattern.
Separates local truth, proposal, decision, and sync.

---

### Component
External Intake Boundary

canonical_owner:
Application common

classification:
boundary-control

current_status:
app-derived-candidate

reused_by:
- GameOS source
- PersonaOS candidate
- CivilizationOS candidate
- Foundation candidate

candidate_source_app:
- GameOS

app_residual_responsibility:
- domain-specific source validation details
- intake-specific UI / operator handling surface

notes:
Safe intake boundary for external proposal / request / signal input.

---

### Component
Transformed Adoption Boundary

canonical_owner:
Application common

classification:
canonical-adoption

current_status:
app-derived-candidate

reused_by:
- GameOS source
- PersonaOS candidate
- CivilizationOS candidate
- BusinessOS candidate

candidate_source_app:
- GameOS

app_residual_responsibility:
- source-local semantics
- target canonical model ownership
- domain-specific adoption screen

notes:
Transforms source-local meaning into canonical-fit meaning before adoption.

---

### Component
Reflection Candidate Contract

canonical_owner:
Application common

classification:
contract-model

current_status:
app-derived-candidate

reused_by:
- GameOS source
- PersonaOS candidate
- LifeOS candidate
- BusinessOS candidate

candidate_source_app:
- GameOS

app_residual_responsibility:
- raw evidence storage
- final accepted truth model
- source-specific candidate enrichment

notes:
Formal proposal-candidate contract with meaning/evidence/readiness linkage.

---

### Component
Reflection Decision Contract

canonical_owner:
Application common

classification:
decision-model

current_status:
app-derived-candidate

reused_by:
- GameOS source
- PersonaOS candidate
- BusinessOS candidate
- LifeOS candidate

candidate_source_app:
- GameOS

app_residual_responsibility:
- domain-specific decision workflow
- operator-facing decision UI
- transport status representation

notes:
Formal decision result contract for accept / reject / defer / merge / transform.

---

### Component
Reflection Sync Result Contract

canonical_owner:
Application common

classification:
sync-model

current_status:
app-derived-candidate

reused_by:
- GameOS source
- PersonaOS candidate
- CivilizationOS candidate
- BusinessOS candidate

candidate_source_app:
- GameOS

app_residual_responsibility:
- semantic evaluation result
- canonical apply result UI
- transport adapter implementation

notes:
Formal dispatch / ack / retry / dedupe / external reference sync contract.

---

### Component
Idempotent Dispatch Pattern

canonical_owner:
Application common

classification:
sync-control

current_status:
app-derived-candidate

reused_by:
- GameOS source
- all-systems candidate

candidate_source_app:
- GameOS

app_residual_responsibility:
- domain decision semantics
- transport adapter specifics

notes:
Duplicate-safe dispatch and retry control pattern.

---

### Component
Eligibility Gate Pattern

canonical_owner:
Application common

classification:
controlled-entry

current_status:
app-derived-candidate

reused_by:
- GameOS source
- CivilizationOS candidate
- BusinessOS candidate
- applications candidate

candidate_source_app:
- GameOS

app_residual_responsibility:
- target action execution
- app-specific deny / pending / blocked presentation

notes:
Formal eligibility gate before execution.

---

### Component
Controlled Settlement Separation Pattern

canonical_owner:
BusinessOS

classification:
finance-boundary

current_status:
app-derived-candidate

reused_by:
- GameOS source
- CivilizationOS candidate
- BusinessOS candidate

candidate_source_app:
- GameOS

app_residual_responsibility:
- product-specific financial UX
- settlement provider implementation
- local correction surfaces

notes:
Separates intent / outcome / instruction / result / refund / reversal.

---

### Component
Continuous Meaning Filter

canonical_owner:
Application common

classification:
reflection-policy

current_status:
app-derived-candidate

reused_by:
- GameOS source
- PersonaOS candidate
- LifeOS candidate
- BusinessOS candidate

candidate_source_app:
- GameOS

app_residual_responsibility:
- source-specific transient value rules
- target-domain acceptance policy details

notes:
Filters transient/title-local values and keeps continuity-worthy meaning only.

---

### Component
AI Worker Foundation Web

canonical_owner:
BusinessOS

classification:
control-tower

current_status:
app-derived-candidate

reused_by:
- advisory apps candidate
- execution work apps candidate
- embedded business app surfaces candidate

candidate_source_app:
- BusinessOS

app_residual_responsibility:
- app-specific worker UI
- worker consumption screens
- product-specific commercial presentation

notes:
Central governance platform for company-scoped AI workers.

---

### Component
AI Worker Lending

canonical_owner:
BusinessOS

classification:
resource-control

current_status:
app-derived-candidate

reused_by:
- PocketSecretary candidate
- advisory apps candidate
- execution apps candidate
- CRM / project / expense candidate

candidate_source_app:
- BusinessOS

app_residual_responsibility:
- front grant request UX
- app-local wording
- app-local queue entry display

notes:
Official grant / queue / release interface.

---

### Component
Disclaimer and Consent Core

canonical_owner:
BusinessOS

classification:
governance

current_status:
app-derived-candidate

reused_by:
- high-risk advisory apps candidate
- protected-domain work apps candidate

candidate_source_app:
- BusinessOS

app_residual_responsibility:
- disclaimer screen layout
- consent prompt timing UX
- domain-specific explanation wording

notes:
Unified disclaimer / consent governance.

---

### Component
Job Linkage Core

canonical_owner:
BusinessOS

classification:
orchestration

current_status:
app-derived-candidate

reused_by:
- advisory apps candidate
- execution apps candidate
- embedded worker apps candidate

candidate_source_app:
- BusinessOS

app_residual_responsibility:
- app-local work navigation
- visible job card UI
- source-target handoff explanations

notes:
Connects conversation, task, work order, and output.

---

### Component
Output Handoff Core

canonical_owner:
BusinessOS

classification:
handoff

current_status:
app-derived-candidate

reused_by:
- advisory apps candidate
- execution apps candidate
- artifact-producing apps candidate

candidate_source_app:
- BusinessOS

app_residual_responsibility:
- artifact preview UI
- destination-specific presentation
- app-local confirmation UX

notes:
Shared handoff mechanism for AI-produced artifacts.

---

### Component
Review and Approval Handoff Core

canonical_owner:
BusinessOS

classification:
governance

current_status:
app-derived-candidate

reused_by:
- approval-oriented workflow apps candidate
- governed worker apps candidate
- artifact review apps candidate

candidate_source_app:
- BusinessOS

app_residual_responsibility:
- review screen layout
- approver-facing CTA placement
- local audit visualization

notes:
Shared review / approval boundary for AI-prepared outputs.

---

### Component
AI Worker Audit Trace Core

canonical_owner:
BusinessOS

classification:
audit

current_status:
app-derived-candidate

reused_by:
- governed worker apps candidate
- advisory apps candidate
- execution apps candidate

candidate_source_app:
- BusinessOS

app_residual_responsibility:
- audit viewer UI
- trace summarization layout
- tenant-facing analytics surfaces

notes:
End-to-end traceability across worker lifecycle.

---

### Component
Secretary Wording Resolution Common

canonical_owner:
PersonaOS

classification:
wording-resolution

current_status:
app-derived-candidate

reused_by:
- PocketSecretary
- secretary-facing apps candidate
- companion-facing apps candidate

candidate_source_app:
- PocketSecretary

app_residual_responsibility:
- final screen layout
- app-specific presentation timing
- feature-local wording emphasis

notes:
Stable meaning with persona-specific expression mapping.

---

### Component
Cross-app Launch Contract Common

canonical_owner:
Application common

classification:
cross-app-contract

current_status:
app-derived-candidate

reused_by:
- PocketSecretary
- EstimateCreator candidate
- NameCardManager candidate
- future cross-app fronts candidate

candidate_source_app:
- PocketSecretary
- EstimateCreator

app_residual_responsibility:
- app-specific launch buttons
- install guidance screen layout
- local fallback messaging

notes:
EstimateCreator deeplink entry semantics should be absorbed here.

---

### Component
Auth Inheritance / Cross-app Auth Context Common

canonical_owner:
BusinessOS

classification:
cross-app-auth-context

current_status:
app-derived-candidate

reused_by:
- PocketSecretary -> EstimateCreator candidate
- PocketSecretary -> NameCardManager candidate
- future BusinessOS launches candidate

candidate_source_app:
- PocketSecretary
- EstimateCreator

app_residual_responsibility:
- destination-side authorization UI
- local expired-session fallback
- app-local secure-entry messaging

notes:
Shared Session Reuse Common should be absorbed here.

---

### Component
OS Entry Gateway Common

canonical_owner:
Application common

classification:
entry-gateway

current_status:
app-derived-candidate

reused_by:
- Civilization Portal Site
- future cross-system launch hubs candidate
- future official gateway surfaces candidate

candidate_source_app:
- Civilization Portal Site

app_residual_responsibility:
- page layout
- button placement
- local CTA wording
- portal visual hierarchy

notes:
Canonical gateway semantics for official OS entry.

---

### Component
Entry Eligibility Decision Common

canonical_owner:
Application common

classification:
entry-decision-semantics

current_status:
app-derived-candidate

reused_by:
- Civilization Portal Site
- future launch-decision surfaces candidate
- future centralized access gateways candidate

candidate_source_app:
- Civilization Portal Site

app_residual_responsibility:
- deny page layout
- maintenance page layout
- result presentation wording

notes:
Normalizes launchable / login_required / denied / maintenance / error.

---

### Component
Cross-OS Entry Policy Common

canonical_owner:
Application common

classification:
cross-os-entry-policy

current_status:
app-derived-candidate

reused_by:
- Civilization Portal Site
- future system-level directory services candidate
- future centralized entry controllers candidate

candidate_source_app:
- Civilization Portal Site

app_residual_responsibility:
- local help wording
- policy explanation UI
- portal education surfaces

notes:
Portal-only official entry rule and no direct OS-to-OS link principle.


# ============================================================
# PROJECTFLOW HIGH-PRIORITY + PREMIUM ENTITLEMENT LEDGER ENTRIES
# ============================================================

### Component
Sync Status And Retry Visibility Component

canonical_owner:
BusinessOS

classification:
sync-surface-extension

current_status:
app-derived-candidate

reused_by:
- ProjectFlow
- NameCardManager candidate
- InvoiceFlow candidate
- ExpenseSettlement candidate
- other BusinessOS-integrated applications candidate

candidate_source_app:
- ProjectFlow

app_residual_responsibility:
- sync target meaning
- payload semantics
- app-specific integration wording
- local error detail layout

notes:
Strong reusable operational surface for sync state, failure emphasis,
retryable state display, and drilldown.
Best treated as a surface extension aligned with Online Sync Common.

---

### Component
Spreadsheet Export Request Component

canonical_owner:
BusinessOS

classification:
export-request-common

current_status:
app-derived-candidate

reused_by:
- ProjectFlow
- ShiftManager candidate
- InvoiceFlow candidate
- ExpenseSettlement candidate
- portfolio apps candidate
- MBO candidate

candidate_source_app:
- ProjectFlow

app_residual_responsibility:
- target dataset definition
- column catalog meaning
- export wording
- app-specific export destinations

notes:
High-reuse export request component for xlsx/csv, masking, column selection,
permission-aware export state, and export-history linkage.

---

### Component
Human Editable Report Draft Generation Component

canonical_owner:
BusinessOS

classification:
draft-output-generation

current_status:
app-derived-candidate

reused_by:
- ProjectFlow
- MBO candidate
- ShiftManager candidate
- portfolio apps candidate
- operations reporting apps candidate

candidate_source_app:
- ProjectFlow

app_residual_responsibility:
- report template semantics
- source metric meaning
- app-specific report wording
- app-specific approval detail screens

notes:
Very strong reusable reporting pattern.
Should later be reconciled with Generated Business Draft Common,
Proposal Draft Builder Common, and other draft-output families.

---

### Component
Read Only Entitlement Guard Component

canonical_owner:
BusinessOS

classification:
entitlement-surface-extension

current_status:
app-derived-candidate

reused_by:
- ProjectFlow
- all monthly-use applications candidate

candidate_source_app:
- ProjectFlow

app_residual_responsibility:
- plan names
- pricing
- product-specific upgrade CTA
- feature-specific premium wording

notes:
Important reusable entitlement-facing surface.
Should be interpreted as a surface/behavior extension under
Application Premium Entitlement Common rather than a separate top-level truth owner.

---

### Component
Approval Aware Draft Output Flow

canonical_owner:
BusinessOS

classification:
approval-gated-output

current_status:
app-derived-candidate

reused_by:
- ProjectFlow
- customer-facing report apps candidate
- internal review apps candidate
- explanation material generation flows candidate

candidate_source_app:
- ProjectFlow

app_residual_responsibility:
- final approval authority
- content structure
- app-specific wording
- local approval screen layout

notes:
Strong controlled-output pattern where generated output stays draft-only
until human review or approval completes.

---

### Component
Application Premium Entitlement Common

canonical_owner:
BusinessOS

classification:
billing-and-entitlement

current_status:
app-derived-candidate

reused_by:
- EstimateCreator
- QuickForecast future candidate
- billing-enabled BusinessOS apps candidate
- template-enabled apps candidate
- structured memo / QA / premium support apps candidate

candidate_source_app:
- EstimateCreator

app_residual_responsibility:
- which features are premium
- plan names
- pricing
- payment provider implementation
- upgrade wording and local CTA placement

notes:
Top-tier premium / entitlement common candidate.
Standardizes entitlement state semantics, offline cached entitlement handling,
downgrade-safe read/write split, visible-but-locked UI semantics,
and deeplink-time entitlement bypass prevention.

parent_child_relation_note:
- parent candidate: Application Premium Entitlement Common
- child/surface extension candidate: Read Only Entitlement Guard Component


# ============================================================
# PREMIUM ENTITLEMENT RELATION NOTE
# ============================================================

relation_note:
Application Premium Entitlement Common is the parent fixed BusinessOS common
for app-side premium entitlement semantics.

child_extension_candidates:
- Read Only Entitlement Guard Component
- Read Only Mode Banner

interpretation_rule:
- parent common owns entitlement state semantics,
  offline cached entitlement handling,
  downgrade-safe read/write split,
  fail-closed unknown handling,
  and deeplink-time entitlement enforcement
- child extension candidates own surface / behavior specialization only
- child extension candidates must not redefine entitlement truth

ledger_alignment_rule:
When future entitlement-facing components are added,
they should first be checked against
Application Premium Entitlement Common
before being introduced as independent top-level common components.

# ============================================================

# ============================================================
# NAMECARDMANAGER PROMOTE-HIGHEST LEDGER ENTRIES
# ============================================================

### Component
Contact Profile Screen Common

canonical_owner:
BusinessOS

classification:
business-contact-profile

current_status:
app-derived-candidate

reused_by:
- NameCardManager
- customer management apps candidate
- vendor management apps candidate
- lead management apps candidate
- sales support apps candidate
- PocketSecretary business-facing surfaces candidate

candidate_source_app:
- NameCardManager

app_residual_responsibility:
- relationship graph UI
- app-specific detail layout
- app-specific edit flow
- field-density tuning

notes:
Reusable baseline for person/business profile presentation,
including company / department / title / contact method blocks.

---

### Component
Responsibility Scope Presentation Common

canonical_owner:
BusinessOS

classification:
authority-responsibility-presentation

current_status:
app-derived-candidate

reused_by:
- NameCardManager
- approval systems candidate
- customer management apps candidate
- ERP-related surfaces candidate
- organization / assignee management apps candidate
- deal / case management apps candidate

candidate_source_app:
- NameCardManager

app_residual_responsibility:
- full detail layout
- editing workflow
- app-specific labels
- publication-specific shaping rules

notes:
Reusable block for authority, decision scope,
responsibility scope, work scope, and influence visibility.

---

### Component
Visibility Preview Common

canonical_owner:
BusinessOS

classification:
visibility-preview

current_status:
app-derived-candidate

reused_by:
- NameCardManager
- sharing-enabled apps candidate
- ERP-linked apps candidate
- publication preview surfaces candidate
- approval-before-release apps candidate

candidate_source_app:
- NameCardManager

app_residual_responsibility:
- preview layout
- field wording
- local share/publication targets
- local CTA placement

notes:
Preview surface for what will be visible, shared, or published
before final release or publication.
Should later be reconciled with Publish Target Confirmation Common.

---

### Component
Publication Preflight Common

canonical_owner:
BusinessOS

classification:
publication-readiness-diagnostic

current_status:
app-derived-candidate

reused_by:
- NameCardManager
- ERP publication apps candidate
- external sharing apps candidate
- internal publication apps candidate
- approval-linked send/publish flows candidate

candidate_source_app:
- NameCardManager

app_residual_responsibility:
- domain-specific required fields
- target-specific publication rules
- app-local preflight screen layout

notes:
Pre-publication diagnostic capability including required-field checks,
protected-field contamination checks, summary readiness,
approval-needed judgment, and blocking/warning separation.

---

### Component
Import Mapping Common

canonical_owner:
BusinessOS

classification:
import-mapping

current_status:
app-derived-candidate

reused_by:
- NameCardManager
- customer import candidate
- product import candidate
- invoice import candidate
- master migration candidate
- ERP front migration tools candidate

candidate_source_app:
- NameCardManager

app_residual_responsibility:
- target field semantics
- source-specific heuristics
- local mapping UI density
- app-specific mapping help text

notes:
Reusable mapping component for source-column to target-field alignment,
including auto detect, manual override, and saved mapping profiles.

---

### Component
Import Diagnostic Common

canonical_owner:
BusinessOS

classification:
import-diagnostic

current_status:
app-derived-candidate

reused_by:
- NameCardManager
- CSV intake flows candidate
- data migration tools candidate
- master maintenance tools candidate
- ERP front import tools candidate

candidate_source_app:
- NameCardManager

app_residual_responsibility:
- domain-specific validation rules
- source parsing logic
- diagnostic wording
- app-specific drilldown layout

notes:
Reusable intake diagnostic layer for missing required values,
invalid formats, duplicate candidates, notation-variation candidates,
and suspicious-record warnings.


# ============================================================
# MASTER REGISTRY ALIGNMENT NOTE
# ============================================================

master_registry_alignment:
The complete registered state across all source applications
is now consolidated in:

- 011_APPLICATION_COMMON_COMPONENT_MASTER_REGISTRY.md

ledger_rule:
Use the master registry as the broad inventory,
and use this ledger as the canonical per-component operational ledger
for fixed and actively managed candidate entries.


# ============================================================
# CIVILIZATION OS HIGH-PRIORITY LEDGER ENTRIES
# ============================================================

### Component
Multilingual Content Review Common

canonical_owner:
BusinessOS

classification:
multilingual-governance

current_status:
app-derived-candidate

reused_by:
- multilingual apps candidate
- docs generators candidate
- notification generators candidate
- multilingual customer-output apps candidate

candidate_source_app:
- Civilization OS additive delta

app_residual_responsibility:
- app-specific review policy
- local approval workflow
- forbidden-term list maintenance
- product-specific glossary decisions

notes:
Reusable governance lane for missing translations,
glossary enforcement, forbidden-term checks,
locale completeness review, and translation approval.

---

### Component
Currency Conversion / Rate Policy Common

canonical_owner:
BusinessOS

classification:
multicurrency-governance

current_status:
app-derived-candidate

reused_by:
- multicurrency apps candidate
- reports candidate
- marketplace candidate
- finance apps candidate
- ERP bridge candidate

candidate_source_app:
- Civilization OS additive delta

app_residual_responsibility:
- source connector implementation
- local conversion wording
- product-specific conversion presentation
- domain-specific rate-display policy

notes:
Reusable multicurrency governance/policy layer
for rate selection, conversion basis, historical rate pinning,
and conversion traceability.

---

### Component
Civilization National Currency Bridge Common

canonical_owner:
Civilization common

classification:
civilization-currency-boundary

current_status:
app-derived-candidate

reused_by:
- Civilization economy candidate
- marketplace candidate
- streaming candidate
- game candidate
- finance-adjacent apps candidate

candidate_source_app:
- Civilization OS additive delta

app_residual_responsibility:
- nation-specific policy rules
- economy-specific UIs
- game/streaming-specific settlement surfaces
- local conversion explanation wording

notes:
Boundary component for keeping Civilization national currencies
separate from real-world currencies, company-local currencies,
and app-internal points.


# ============================================================
# UNIMPLEMENTED-SCOPE HIGH-PRIORITY LEDGER ENTRIES
# ============================================================

### Component
Feature Addition Governance Common

canonical_owner:
Civilization common

classification:
feature-addition-governance

current_status:
app-derived-candidate

reused_by:
- all apps candidate
- all OS candidate
- roadmap/review workflows candidate
- planning tools candidate

candidate_source_app:
- unimplemented-scope additive ledger

app_residual_responsibility:
- app-specific release timing
- product-local prioritization detail
- local planning screens
- local feature proposal wording

notes:
Reusable governance component for classifying feature-addition requests
into new feature, shared-common candidate, app-local item, or hold item,
with impact-scope and release-lane awareness.

---

### Component
Multilingual Status Vocabulary Common

canonical_owner:
Civilization common

classification:
multilingual-status-governance

current_status:
app-derived-candidate

reused_by:
- all OS candidate
- all apps candidate
- workflow/status-heavy apps candidate
- multilingual products candidate

candidate_source_app:
- unimplemented-scope additive ledger

app_residual_responsibility:
- app-local display style
- locale-specific UX nuance
- product-local wording preference
- screen-specific layout treatment

notes:
Reusable governance layer for preserving meaning-safe status vocabulary
such as accepted / resolved / executed / displayed / committed
across locales without semantic drift.

---

### Component
Feature Expansion Impact Assessment Common

canonical_owner:
Civilization common

classification:
change-impact-governance

current_status:
app-derived-candidate

reused_by:
- all OS candidate
- all apps candidate
- implementation planning candidate
- controlled change review candidate

candidate_source_app:
- unimplemented-scope additive ledger

app_residual_responsibility:
- product-specific impact heuristics
- local implementation detail
- local reviewer workflow
- local change-review screens

notes:
Reusable assessment component for checking feature-addition impact
across UI, API, permission, notification, document/export,
translation, and multicurrency support.


# ============================================================
# LIFEOS / BUSINESSOS BACKLOG LEDGER ENTRIES (28 + 29)
# ============================================================

### Component
LifeOS Rival Comparison Matrix

canonical_owner:
Application common

classification:
lifeos-rival-matrix

current_status:
app-derived-candidate

reused_by:
- LifeOS candidate
- rival-analysis workflows candidate
- product comparison apps candidate

candidate_source_app:
- LifeOS undone additive ledger

app_residual_responsibility:
- LifeOS-specific rival groups
- local weighting rules
- local comparison presentation
- final differentiation wording

notes:
Reusable matrix for comparing LifeOS against multiple rival groups
across function coverage, integration depth, privacy handling,
review quality, dashboard quality, and reminder quality.

---

### Component
Multilingual Localization Core

canonical_owner:
BusinessOS

classification:
multilingual-localization-foundation

current_status:
app-derived-candidate

reused_by:
- all apps with user-facing text candidate
- advisory apps candidate
- execution apps candidate
- embedded surfaces candidate

candidate_source_app:
- BusinessOS unimplemented-only additions

app_residual_responsibility:
- app-specific business wording
- local translation nuance
- product-specific language availability policy

notes:
Top-tier multilingual foundation for UI, output,
and business-content localization across business apps.

---

### Component
Multi-Currency Core

canonical_owner:
BusinessOS

classification:
multicurrency-foundation

current_status:
app-derived-candidate

reused_by:
- expense apps candidate
- invoicing apps candidate
- receivable apps candidate
- product pricing apps candidate
- marketplace-related work candidate

candidate_source_app:
- BusinessOS unimplemented-only additions

app_residual_responsibility:
- app-specific entry UI
- local settlement semantics
- product-specific display emphasis

notes:
Top-tier multicurrency foundation for handling currencies,
money pairs, rate reference, conversion timing,
rounding policy, and localized monetary display.

---

### Component
Rival Analysis Core

canonical_owner:
BusinessOS

classification:
rival-analysis-foundation

current_status:
app-derived-candidate

reused_by:
- product portfolio apps candidate
- project / planning apps candidate
- MBO support candidate
- consulting apps candidate
- proposal-generation apps candidate

candidate_source_app:
- BusinessOS unimplemented-only additions

app_residual_responsibility:
- app-specific comparison screens
- local recommendation wording
- domain-specific rival sets

notes:
Shared analysis backbone for competitors and rival offerings
across multiple business apps.

---

### Component
Feature Addition Planning Core

canonical_owner:
BusinessOS

classification:
feature-planning-foundation

current_status:
app-derived-candidate

reused_by:
- app planning candidate
- roadmap planning candidate
- product portfolio management candidate
- consulting support candidate

candidate_source_app:
- BusinessOS unimplemented-only additions

app_residual_responsibility:
- product-local planning screens
- local release timing decisions
- domain-specific prioritization detail

notes:
Shared planning backbone for tracking and structuring feature additions.

---

### Component
Translation Resource Registry

canonical_owner:
BusinessOS

classification:
translation-resource-registry

current_status:
app-derived-candidate

reused_by:
- UI localization candidate
- generated outputs candidate
- multilingual business apps candidate

candidate_source_app:
- BusinessOS unimplemented-only additions

app_residual_responsibility:
- local translation workflow
- product-specific key organization
- local review routing

notes:
Shared registry for translation resources and localized strings.

---

### Component
Currency Registry Core

canonical_owner:
BusinessOS

classification:
currency-registry-foundation

current_status:
app-derived-candidate

reused_by:
- all money-aware apps candidate

candidate_source_app:
- BusinessOS unimplemented-only additions

app_residual_responsibility:
- local currency enable/disable policy
- product-specific currency availability rules

notes:
Shared registry of supported currencies.

---

### Component
Exchange Rate Reference Core

canonical_owner:
BusinessOS

classification:
exchange-rate-reference-foundation

current_status:
app-derived-candidate

reused_by:
- cross-currency calculations candidate
- finance apps candidate
- ERP bridge candidate

candidate_source_app:
- BusinessOS unimplemented-only additions

app_residual_responsibility:
- provider integration
- local rate-display wording
- product-specific provider policy

notes:
Shared exchange-rate reference and conversion-support core.

---

### Component
Feature Gap Analysis Core

canonical_owner:
BusinessOS

classification:
feature-gap-analysis-foundation

current_status:
app-derived-candidate

reused_by:
- planning apps candidate
- product strategy workflows candidate
- roadmap review candidate

candidate_source_app:
- BusinessOS unimplemented-only additions

app_residual_responsibility:
- local feature taxonomy
- product-specific complexity rules
- local review display

notes:
Shared core for identifying gaps between current product
and rivals or target vision.

---

### Component
Rival Comparison Matrix Core

canonical_owner:
BusinessOS

classification:
rival-comparison-matrix-foundation

current_status:
app-derived-candidate

reused_by:
- planning candidate
- proposals candidate
- product strategy candidate

candidate_source_app:
- BusinessOS unimplemented-only additions

app_residual_responsibility:
- local matrix layout
- app-specific competitor selection
- final recommendation wording

notes:
Reusable comparison matrix core across apps.


# ============================================================
# HIGHER-ORDER DELTA LEDGER ENTRIES (30)
# ============================================================

### Component
Rival Analysis Framework

canonical_owner:
BusinessOS

classification:
rival-analysis-framework

current_status:
app-derived-candidate

reused_by:
- all applications candidate
- BusinessOS candidate
- product planning candidate
- strategy workflows candidate

candidate_source_app:
- higher-order delta 30

app_residual_responsibility:
- app-specific rival sets
- local comparison presentation
- recommendation wording
- domain-specific market interpretation

notes:
Common framework for analyzing rival products/services
through comparison targets, evaluation axes,
strength/weakness, gaps, and improvement extraction.

---

### Component
Feature Addition Backlog Pattern

canonical_owner:
BusinessOS

classification:
feature-addition-backlog-pattern

current_status:
app-derived-candidate

reused_by:
- all applications candidate
- BusinessOS candidate
- planning/backlog workflows candidate

candidate_source_app:
- higher-order delta 30

app_residual_responsibility:
- app-specific backlog screens
- local rollout timing
- local prioritization nuance
- product-specific implementation routing

notes:
Common additive pattern for managing feature-addition requests
by source, priority, dependency, impact surface, and rollout readiness.

---

### Component
Multilingual Resource Contract

canonical_owner:
Civilization common

classification:
multilingual-resource-contract

current_status:
app-derived-candidate

reused_by:
- all applications candidate
- PersonaOS candidate
- BusinessOS candidate
- CivilizationOS candidate

candidate_source_app:
- higher-order delta 30

app_residual_responsibility:
- app-specific copy catalogs
- local translation nuance
- product-specific language availability
- locale UX detail

notes:
Common contract for managing wording, labels,
descriptions, and notifications through language keys
with locale-aware lookup and fallback handling.

---

### Component
Multi-Currency Monetary Contract

canonical_owner:
BusinessOS

classification:
multicurrency-monetary-contract

current_status:
app-derived-candidate

reused_by:
- all financial domains candidate
- BusinessOS candidate
- CivilizationOS candidate
- GameOS candidate

candidate_source_app:
- higher-order delta 30

app_residual_responsibility:
- domain-specific money semantics
- app-local entry/display behavior
- product-specific settlement wording

notes:
Common multicurrency contract that treats money
as amount + currency code + precision + rounding rule + origin context.

---

### Component
Currency Conversion and Display Pattern

canonical_owner:
BusinessOS

classification:
currency-conversion-display-pattern

current_status:
app-derived-candidate

reused_by:
- all financial domains candidate
- BusinessOS candidate
- CivilizationOS candidate
- GameOS candidate

candidate_source_app:
- higher-order delta 30

app_residual_responsibility:
- product-specific conversion presentation
- local display layout
- domain-specific comparison wording
- local audit display

notes:
Common pattern for safe multicurrency display,
conversion, comparison, and history rendering
while preserving source-currency truth.


# ============================================================
# STREAMINGOS HIGH-PRIORITY LEDGER ENTRIES (31)
# ============================================================

### Component
Creator Studio Shell

canonical_owner:
Application common

classification:
creator-platform-shell

current_status:
app-derived-candidate

reused_by:
- StreamingOS candidate
- future media apps candidate
- creator-facing apps candidate

candidate_source_app:
- StreamingOS additive ledger

app_residual_responsibility:
- app-specific publishing flow detail
- local creator UX wording
- product-specific metadata schema
- local layout density

notes:
Reusable creator-facing media studio shell
for upload, metadata, thumbnail, visibility,
review status, and publish confirmation.

---

### Component
Moderation Workspace Component

canonical_owner:
Application common

classification:
moderation-workspace

current_status:
app-derived-candidate

reused_by:
- StreamingOS candidate
- community apps candidate
- media apps candidate

candidate_source_app:
- StreamingOS additive ledger

app_residual_responsibility:
- product-specific moderation policy detail
- local appeal flow wording
- local reviewer layout
- domain-specific restoration rules

notes:
Reusable moderation workspace for review queue,
report handling, comment moderation,
appeal, and restoration workflows.

---

### Component
Notification Inbox Framework

canonical_owner:
Application common

classification:
notification-inbox-framework

current_status:
app-derived-candidate

reused_by:
- StreamingOS candidate
- cross-application notification base candidate
- creator/community apps candidate

candidate_source_app:
- StreamingOS additive ledger

app_residual_responsibility:
- product-specific notification grouping
- local importance wording
- local inbox layout
- domain-specific alert semantics

notes:
Reusable inbox-style notification framework
for creator notifications, viewer notifications,
review alerts, escalation alerts, and read/unread handling.

---

### Component
Discovery / Continuity Framework

canonical_owner:
Application common

classification:
discovery-continuity-framework

current_status:
app-derived-candidate

reused_by:
- StreamingOS candidate
- content discovery apps candidate
- media/community apps candidate

candidate_source_app:
- StreamingOS additive ledger

app_residual_responsibility:
- ranking logic
- recommendation wording
- local navigation layout
- product-specific queue semantics

notes:
Reusable viewer/content continuity framework
for home, discovery, search, history,
follow, playlist, and queue experiences.


# ============================================================
# EXPENSESETTLEMENT FORMAL-REVIEW PROMOTION ENTRIES (015)
# ============================================================

### Component
Submit / Approval State Badge System

canonical_owner:
BusinessOS

classification:
approval-state-badge-system

current_status:
formally-adopted-candidate

reused_by:
- ExpenseSettlement
- workflow apps candidate
- approval apps candidate
- request / review apps candidate

candidate_source_app:
- ExpenseSettlement formal review ledger

app_residual_responsibility:
- app-specific state meaning
- product-local state labels
- domain-specific approval stage semantics

notes:
Reusable visibility layer for submit state,
approval state, finance/review state,
and external publication state.

---

### Component
Approval Action Surface

canonical_owner:
BusinessOS

classification:
approval-action-surface

current_status:
formally-adopted-candidate

reused_by:
- ExpenseSettlement
- approval apps candidate
- workflow apps candidate
- review apps candidate

candidate_source_app:
- ExpenseSettlement formal review ledger

app_residual_responsibility:
- app-specific approval policy
- domain-specific negative-action wording
- local route policy

notes:
Reusable approval action surface
for approve / return / reject /
reason-required negative action.

---

### Component
Evidence / Attachment Intake Module

canonical_owner:
BusinessOS

classification:
evidence-attachment-intake

current_status:
formally-adopted-candidate

reused_by:
- ExpenseSettlement
- InvoiceFlow candidate
- contract apps candidate
- audit/evidence apps candidate
- attachment-heavy business apps candidate

candidate_source_app:
- ExpenseSettlement formal review ledger

app_residual_responsibility:
- app-specific required-attachment rules
- file-category meaning
- domain-specific attachment policy

notes:
Reusable intake module for image/PDF attachments,
multiple attachment handling, preview,
replacement, and attachment-state visibility.

---

### Component
Validation Result Summary Panel

canonical_owner:
Application common

classification:
validation-result-summary-panel

current_status:
formally-adopted-candidate

reused_by:
- ExpenseSettlement
- complex input apps candidate
- request / registration apps candidate
- business form apps candidate

candidate_source_app:
- ExpenseSettlement formal review ledger

app_residual_responsibility:
- app-specific validation rules
- field semantics
- correction priority wording

notes:
Reusable validation summary panel
for missing required items,
warnings, submit-block visibility,
and correction jump support.

---

### Component
Explicit External Publication Gateway Surface

canonical_owner:
BusinessOS

classification:
explicit-external-publication-gateway

current_status:
formally-adopted-candidate

reused_by:
- ExpenseSettlement
- ERP-linked apps candidate
- external publication apps candidate
- outbound integration apps candidate

candidate_source_app:
- ExpenseSettlement formal review ledger

app_residual_responsibility:
- product-specific payload meaning
- external target semantics
- local retry policy detail

notes:
Reusable explicit outbound publication surface
with request/result separation,
idempotency-aware behavior,
and failure visibility.


# ============================================================
# ORDERFLOW / TALENTGROWTH FORMAL-REVIEW PROMOTION ENTRIES (016 / 017)
# ============================================================

### Component
Handoff Payload Envelope Common

canonical_owner:
BusinessOS

classification:
handoff-payload-envelope

current_status:
formally-adopted-candidate

reused_by:
- OrderFlow
- cross-app handoff apps candidate
- workflow-transfer apps candidate

candidate_source_app:
- OrderFlow formal review ledger

app_residual_responsibility:
- source snapshot meaning
- target business semantics
- product-local transport detail

notes:
Reusable handoff envelope for source/target metadata,
snapshot reference, timestamp, and context transport.

---

### Component
Business Status Badge Common

canonical_owner:
Application common

classification:
business-status-badge

current_status:
formally-adopted-candidate

reused_by:
- OrderFlow
- business apps candidate
- workflow apps candidate
- coordination apps candidate

candidate_source_app:
- OrderFlow formal review ledger

app_residual_responsibility:
- domain-specific state meaning
- local label wording
- app-specific color/detail policy

notes:
Reusable compact/full badge layer
for order/inventory/proposal/shipment/delivery-style states.

---

### Component
Timeline / History Entry Common

canonical_owner:
Application common

classification:
timeline-history-entry

current_status:
formally-adopted-candidate

reused_by:
- OrderFlow
- workflow apps candidate
- history/audit apps candidate
- timeline-centric apps candidate

candidate_source_app:
- OrderFlow formal review ledger

app_residual_responsibility:
- event type meaning
- chronology grouping policy
- app-specific event labeling

notes:
Reusable event-row / chronology surface
for changes, actions, and historical progression.

---

### Component
Audit Log Surface Common

canonical_owner:
BusinessOS

classification:
audit-log-surface

current_status:
formally-adopted-candidate

reused_by:
- OrderFlow
- workflow apps candidate
- ERP-linked apps candidate
- business audit surfaces candidate

candidate_source_app:
- OrderFlow formal review ledger

app_residual_responsibility:
- audited event semantics
- domain-specific redaction rules
- local detail wording

notes:
Reusable who-changed-what audit surface
with timestamp and state transition context.

---

### Component
Customer Proposal / Confirmation Common

canonical_owner:
Application common

classification:
customer-proposal-confirmation

current_status:
formally-adopted-candidate

reused_by:
- OrderFlow
- customer-facing coordination apps candidate
- approval/proposal apps candidate

candidate_source_app:
- OrderFlow formal review ledger

app_residual_responsibility:
- domain-specific proposal meaning
- local response wording
- final acceptance semantics

notes:
Reusable proposal/response structure
for accepted / rejected / revision-requested flows.

---

### Component
Approval Stepper / Review Progress

canonical_owner:
BusinessOS

classification:
approval-stepper-review-progress

current_status:
formally-adopted-candidate

reused_by:
- TalentGrowth
- InvoiceFlow candidate
- ExpenseSettlement candidate
- ProjectFlow candidate
- request/review apps candidate

candidate_source_app:
- TalentGrowth formal review ledger

app_residual_responsibility:
- exact stage definitions
- domain-specific progress naming
- app-specific step count/policy

notes:
Reusable progress surface for draft/review/approval/publication-like flows.

---

### Component
Review Comment Thread Viewer

canonical_owner:
BusinessOS

classification:
review-comment-thread-viewer

current_status:
formally-adopted-candidate

reused_by:
- TalentGrowth
- AppDevelopmentStudio candidate
- ProjectFlow candidate
- ERP review screens candidate

candidate_source_app:
- TalentGrowth formal review ledger

app_residual_responsibility:
- comment semantics
- local reviewer roles
- domain-specific thread policy

notes:
Reusable thread viewer for comments,
returns, resubmissions, and review exchanges.

---

### Component
Evidence Attachment Panel

canonical_owner:
BusinessOS

classification:
evidence-attachment-panel

current_status:
formally-adopted-candidate

reused_by:
- TalentGrowth
- InvoiceFlow candidate
- ExpenseSettlement candidate
- ERP audit/review screens candidate

candidate_source_app:
- TalentGrowth formal review ledger

app_residual_responsibility:
- evidence requirement policy
- local link/file semantics
- domain-specific access rules

notes:
Reusable evidence-oriented panel
for root materials, links, and supporting references.

---

### Component
KPI Summary Card Set

canonical_owner:
Application common

classification:
kpi-summary-card-set

current_status:
formally-adopted-candidate

reused_by:
- TalentGrowth
- ProjectFlow candidate
- InvoiceFlow candidate
- ExpenseSettlement candidate
- dashboard-style apps candidate

candidate_source_app:
- TalentGrowth formal review ledger

app_residual_responsibility:
- KPI meaning
- metric formulas
- app-local thresholds

notes:
Reusable summary-card set
for counts, rates, progress, and compact KPI overviews.

---

### Component
Skill / Capability Radar Chart

canonical_owner:
Application common

classification:
skill-capability-radar-chart

current_status:
formally-adopted-candidate

reused_by:
- TalentGrowth
- Mbo candidate
- ProjectFlow candidate
- evaluation apps candidate

candidate_source_app:
- TalentGrowth formal review ledger

app_residual_responsibility:
- axis meaning
- scoring semantics
- local explanatory wording

notes:
Reusable multi-axis radar visualization
for capability and evaluation-style display.

---

### Component
Gap Analysis Table Viewer

canonical_owner:
Application common

classification:
gap-analysis-table-viewer

current_status:
formally-adopted-candidate

reused_by:
- TalentGrowth
- Mbo candidate
- ProjectFlow candidate
- comparison apps candidate

candidate_source_app:
- TalentGrowth formal review ledger

app_residual_responsibility:
- gap calculation logic
- local comparison semantics
- domain-specific delta interpretation

notes:
Reusable tabular difference viewer
for current-versus-target or baseline-versus-goal comparisons.

---

### Component
Skill Matrix Grid

canonical_owner:
Application common

classification:
skill-matrix-grid

current_status:
formally-adopted-candidate

reused_by:
- TalentGrowth
- ProjectFlow candidate
- Mbo candidate
- matrix-style apps candidate

candidate_source_app:
- TalentGrowth formal review ledger

app_residual_responsibility:
- matrix meaning
- row/column semantics
- local thresholds and annotations

notes:
Reusable matrix grid
for person-by-skill or team-by-capability visualization.

---

### Component
Person / Employee Summary Card

canonical_owner:
ERP

classification:
person-employee-summary-card

current_status:
formally-adopted-candidate

reused_by:
- TalentGrowth
- ERP
- ProjectFlow candidate
- Mbo candidate

candidate_source_app:
- TalentGrowth formal review ledger

app_residual_responsibility:
- app-local extra fields
- context-specific rendering emphasis
- domain-specific detail navigation

notes:
Reusable employee/person summary card
for company-scoped person representation.

---

### Component
Certification / License Ledger Viewer

canonical_owner:
ERP

classification:
certification-license-ledger-viewer

current_status:
formally-adopted-candidate

reused_by:
- TalentGrowth
- ERP
- labor / assignment apps candidate
- qualification-aware apps candidate

candidate_source_app:
- TalentGrowth formal review ledger

app_residual_responsibility:
- scoring meaning
- local compliance policy
- domain-specific renewal rules

notes:
Reusable ledger-style viewer
for certifications, licenses, validity, and renewal dates.


# ============================================================
# INVOICEFLOW / PRODUCTPORTFOLIOMANAGER FORMAL-REVIEW PROMOTION ENTRIES (018 / 019)
# ============================================================

### Component
Document PDF Generation Core

canonical_owner:
BusinessOS

classification:
document-pdf-generation-core

current_status:
formally-adopted-candidate

reused_by:
- InvoiceFlow
- document-output apps candidate
- estimate/receipt/invoice apps candidate

candidate_source_app:
- InvoiceFlow formal review ledger

app_residual_responsibility:
- document business meaning
- template wording
- app-specific payload fields

notes:
Reusable PDF generation core
for invoice/receipt/estimate/document-style outputs.

---

### Component
Bank Transaction Import / Match Candidate Core

canonical_owner:
ERP

classification:
bank-transaction-import-match-candidate

current_status:
formally-adopted-candidate

reused_by:
- InvoiceFlow
- finance apps candidate
- ERP-linked match apps candidate

candidate_source_app:
- InvoiceFlow formal review ledger

app_residual_responsibility:
- domain-specific matching policy
- reconciliation thresholds
- app-specific review wording

notes:
Reusable bank import and candidate-match core
for payment confirmation and related workflows.

---

### Component
Manual Payment / Receipt Confirmation Core

canonical_owner:
BusinessOS

classification:
manual-payment-receipt-confirmation

current_status:
formally-adopted-candidate

reused_by:
- InvoiceFlow
- payment-confirmation apps candidate
- exception-handling apps candidate

candidate_source_app:
- InvoiceFlow formal review ledger

app_residual_responsibility:
- payment semantics
- local exception policy
- domain-specific confirmation detail

notes:
Reusable manual/exception confirmation core
for receipt/payment confirmation flows.

---

### Component
Receipt Issuance Core

canonical_owner:
BusinessOS

classification:
receipt-issuance-core

current_status:
formally-adopted-candidate

reused_by:
- InvoiceFlow
- receipt/payment apps candidate
- document issuance apps candidate

candidate_source_app:
- InvoiceFlow formal review ledger

app_residual_responsibility:
- receipt business semantics
- local issuance constraints
- template detail

notes:
Reusable receipt issuance family
for issue/reissue/history patterns.

---

### Component
Collection Action / Follow-up History Core

canonical_owner:
BusinessOS

classification:
collection-action-followup-history

current_status:
formally-adopted-candidate

reused_by:
- InvoiceFlow
- follow-up apps candidate
- collections/support/reminder apps candidate

candidate_source_app:
- InvoiceFlow formal review ledger

app_residual_responsibility:
- domain-specific action meaning
- escalation policy
- local next-action semantics

notes:
Reusable action/history family
for collection and follow-up operations.

---

### Component
Priority Queue / Work Ranking Core

canonical_owner:
Application common

classification:
priority-queue-work-ranking

current_status:
formally-adopted-candidate

reused_by:
- InvoiceFlow
- work-queue apps candidate
- follow-up apps candidate
- ranking/priority apps candidate

candidate_source_app:
- InvoiceFlow formal review ledger

app_residual_responsibility:
- ranking formula
- queue semantics
- app-specific priority wording

notes:
Reusable ranked work-queue family
for priority-driven operational handling.

---

### Component
Shared ERP Reflection Request Core

canonical_owner:
BusinessOS

classification:
shared-erp-reflection-request

current_status:
formally-adopted-candidate

reused_by:
- InvoiceFlow
- ERP-linked apps candidate
- reflection-result apps candidate

candidate_source_app:
- InvoiceFlow formal review ledger

app_residual_responsibility:
- payload semantics
- target ERP meaning
- local retry policy

notes:
Reusable ERP reflection request/result family
for BusinessOS-to-ERP boundary handling.

---

### Component
Authority Badge / Master Boundary Display Core

canonical_owner:
BusinessOS

classification:
authority-badge-master-boundary-display

current_status:
formally-adopted-candidate

reused_by:
- InvoiceFlow
- ERP-linked apps candidate
- business boundary-visibility apps candidate

candidate_source_app:
- InvoiceFlow formal review ledger

app_residual_responsibility:
- domain-specific authority meanings
- local badge wording
- app-specific boundary detail

notes:
Reusable boundary display family
for FRONT_LOCAL / ERP_MASTER style distinctions.

---

### Component
Period Switch / Comparison Selector

canonical_owner:
Application common

classification:
period-switch-comparison-selector

current_status:
formally-adopted-candidate

reused_by:
- ProductPortfolioManager
- analytics apps candidate
- dashboard/reporting apps candidate

candidate_source_app:
- ProductPortfolioManager formal review ledger

app_residual_responsibility:
- period semantics
- app-specific comparison defaults
- local label wording

notes:
Reusable selector family
for month/quarter/half-year/year and comparative views.

---

### Component
Score Card / Score Breakdown View

canonical_owner:
Application common

classification:
score-card-breakdown-view

current_status:
formally-adopted-candidate

reused_by:
- ProductPortfolioManager
- evaluation apps candidate
- analytics apps candidate

candidate_source_app:
- ProductPortfolioManager formal review ledger

app_residual_responsibility:
- score meaning
- breakdown formulas
- local explanatory wording

notes:
Reusable score-card family
for score summary and reason/breakdown display.

---

### Component
Proposal Status Workflow UI

canonical_owner:
Application common

classification:
proposal-status-workflow-ui

current_status:
formally-adopted-candidate

reused_by:
- ProductPortfolioManager
- proposal apps candidate
- workflow apps candidate

candidate_source_app:
- ProductPortfolioManager formal review ledger

app_residual_responsibility:
- domain-specific status meaning
- app-local workflow semantics
- final state labels

notes:
Reusable status workflow surface
for proposal lifecycle visibility.

---

### Component
Approval Status / Decision Surface

canonical_owner:
BusinessOS

classification:
approval-status-decision-surface

current_status:
formally-adopted-candidate

reused_by:
- ProductPortfolioManager
- approval apps candidate
- review/decision apps candidate

candidate_source_app:
- ProductPortfolioManager formal review ledger

app_residual_responsibility:
- decision semantics
- negative action meanings
- domain-specific labels

notes:
Reusable decision/approval display surface
for approval/reject/return/hold style outputs.

---

### Component
Alert Center Component

canonical_owner:
Application common

classification:
alert-center-component

current_status:
formally-adopted-candidate

reused_by:
- ProductPortfolioManager
- monitoring apps candidate
- dashboard apps candidate

candidate_source_app:
- ProductPortfolioManager formal review ledger

app_residual_responsibility:
- alert meaning
- thresholds
- app-specific escalation wording

notes:
Reusable alert aggregation center
for prioritized alert visibility.

---

### Component
Saved Filter / View Preset Component

canonical_owner:
Application common

classification:
saved-filter-view-preset

current_status:
formally-adopted-candidate

reused_by:
- ProductPortfolioManager
- list-heavy apps candidate
- productivity apps candidate

candidate_source_app:
- ProductPortfolioManager formal review ledger

app_residual_responsibility:
- filter semantics
- app-local preset scope
- sharing rules

notes:
Reusable saved-filter and view-preset family
for repeated list exploration.

---

### Component
Comparison Board Component

canonical_owner:
Application common

classification:
comparison-board-component

current_status:
formally-adopted-candidate

reused_by:
- ProductPortfolioManager
- comparison apps candidate
- decision-support apps candidate

candidate_source_app:
- ProductPortfolioManager formal review ledger

app_residual_responsibility:
- comparison semantics
- app-specific emphasis rules
- local card/table detail

notes:
Reusable comparison board family
for multi-target comparison surfaces.

---

### Component
Review Session Shell

canonical_owner:
BusinessOS

classification:
review-session-shell

current_status:
formally-adopted-candidate

reused_by:
- ProductPortfolioManager
- review-meeting apps candidate
- collaboration/review apps candidate

candidate_source_app:
- ProductPortfolioManager formal review ledger

app_residual_responsibility:
- meeting semantics
- decision recording detail
- local flow wording

notes:
Reusable session shell
for review/meeting oriented workflows.

---

### Component
Role-aware Action Visibility Layer

canonical_owner:
Application common

classification:
role-aware-action-visibility-layer

current_status:
formally-adopted-candidate

reused_by:
- ProductPortfolioManager
- workflow apps candidate
- role-sensitive business apps candidate

candidate_source_app:
- ProductPortfolioManager formal review ledger

app_residual_responsibility:
- permission model
- app-specific action meaning
- local policy wording

notes:
Reusable role-aware action visibility family
for edit/approve/manage/view style control.

---

### Component
Share Scope Indicator

canonical_owner:
BusinessOS

classification:
share-scope-indicator

current_status:
formally-adopted-candidate

reused_by:
- ProductPortfolioManager
- sharing apps candidate
- collaboration apps candidate

candidate_source_app:
- ProductPortfolioManager formal review ledger

app_residual_responsibility:
- share target semantics
- local visibility rules
- app-specific sharing wording

notes:
Reusable share-boundary indicator family
for individual/team/org/limited visibility display.

---

### Component
Source-of-Truth Reference Strip

canonical_owner:
BusinessOS

classification:
source-of-truth-reference-strip

current_status:
formally-adopted-candidate

reused_by:
- ProductPortfolioManager
- ERP-linked apps candidate
- forecast-aware apps candidate
- source-boundary apps candidate

candidate_source_app:
- ProductPortfolioManager formal review ledger

app_residual_responsibility:
- source mapping semantics
- app-specific truth labels
- local detail wording

notes:
Reusable reference strip
for ERP/forecast/source-of-truth boundary visibility.

---

### Component
Forecast Metadata Panel

canonical_owner:
Application common

classification:
forecast-metadata-panel

current_status:
formally-adopted-candidate

reused_by:
- ProductPortfolioManager
- forecast-aware apps candidate
- analytics apps candidate

candidate_source_app:
- ProductPortfolioManager formal review ledger

app_residual_responsibility:
- forecast meaning
- confidence semantics
- local comparison wording

notes:
Reusable forecast metadata family
for period/source/confidence/reference display.


# ============================================================
# MBO / KNOWLEDGE-PORTAL-SCENARIO-WORKER FORMAL-REVIEW PROMOTION ENTRIES (020 / 021)
# ============================================================

### Component
Template Selection Surface

canonical_owner:
Application common

classification:
template-selection-surface

current_status:
formally-adopted-candidate

reused_by:
- Mbo
- evaluation apps candidate
- workflow apps candidate

candidate_source_app:
- Mbo formal review ledger

app_residual_responsibility:
- template semantics
- local metadata meaning
- app-specific apply behavior

notes:
Reusable template-selection and preview surface.

---

### Component
Bulk Schedule Operation Surface

canonical_owner:
BusinessOS

classification:
bulk-schedule-operation-surface

current_status:
formally-adopted-candidate

reused_by:
- Mbo
- review apps candidate
- scheduling apps candidate

candidate_source_app:
- Mbo formal review ledger

app_residual_responsibility:
- schedule semantics
- local impact rules
- app-specific batch policy

notes:
Reusable controlled batch-operation surface.

---

### Component
KPI Chart Surface

canonical_owner:
Application common

classification:
kpi-chart-surface

current_status:
formally-adopted-candidate

reused_by:
- Mbo
- sales apps candidate
- project apps candidate
- HR apps candidate

candidate_source_app:
- Mbo formal review ledger

app_residual_responsibility:
- KPI meaning
- metric formulas
- local chart emphasis

notes:
Reusable KPI chart and trend visualization surface.

---

### Component
Aggregation Export Job Surface

canonical_owner:
BusinessOS

classification:
aggregation-export-job-surface

current_status:
formally-adopted-candidate

reused_by:
- Mbo
- ERP front apps candidate
- analytics apps candidate

candidate_source_app:
- Mbo formal review ledger

app_residual_responsibility:
- export payload meaning
- local format policy
- app-specific job semantics

notes:
Reusable export-job request/result surface.

---

### Component
Evidence Reference Picker

canonical_owner:
BusinessOS

classification:
evidence-reference-picker

current_status:
formally-adopted-candidate

reused_by:
- Mbo
- audit apps candidate
- quality apps candidate
- project apps candidate

candidate_source_app:
- Mbo formal review ledger

app_residual_responsibility:
- evidence meaning
- local picker filters
- app-specific link semantics

notes:
Reusable evidence-reference linking surface.

---

### Component
Executive Summary Read-Only Viewer

canonical_owner:
Application common

classification:
executive-summary-readonly-viewer

current_status:
formally-adopted-candidate

reused_by:
- Mbo
- ERP front apps candidate
- HR apps candidate
- analytics apps candidate

candidate_source_app:
- Mbo formal review ledger

app_residual_responsibility:
- summary semantics
- local filters
- domain-specific read-only layout

notes:
Reusable read-only summary viewer family.

---

### Component
ERP Resend Control Surface

canonical_owner:
BusinessOS

classification:
erp-resend-control-surface

current_status:
formally-adopted-candidate

reused_by:
- Mbo
- ERP-linked apps candidate
- integration front apps candidate

candidate_source_app:
- Mbo formal review ledger

app_residual_responsibility:
- resend policy
- local failure wording
- app-specific target semantics

notes:
Reusable resend/failure-history control surface.

---

### Component
Interview Memo Surface

canonical_owner:
Application common

classification:
interview-memo-surface

current_status:
formally-adopted-candidate

reused_by:
- Mbo
- HR apps candidate
- support apps candidate
- customer apps candidate

candidate_source_app:
- Mbo formal review ledger

app_residual_responsibility:
- memo semantics
- author/note types
- local history grouping

notes:
Reusable timestamped memo/history surface.

---

### Component
Calibration Session Surface

canonical_owner:
BusinessOS

classification:
calibration-session-surface

current_status:
formally-adopted-candidate

reused_by:
- Mbo
- HR apps candidate
- review apps candidate

candidate_source_app:
- Mbo formal review ledger

app_residual_responsibility:
- calibration semantics
- decision rules
- local review wording

notes:
Reusable comparison/review decision session shell.

---

### Component
Common Knowledge Access Gateway

canonical_owner:
Civilization common

classification:
common-knowledge-access-gateway

current_status:
formally-adopted-candidate

reused_by:
- Portal Site
- OS/helpdesk apps candidate
- BusinessOS AI worker candidate
- study/consultation apps candidate

candidate_source_app:
- Knowledge / Portal / Scenario / Worker formal review ledger

app_residual_responsibility:
- caller-specific screen entry
- local scope defaults
- app-specific presentation

notes:
Reusable access gateway for knowledge entry,
scope routing, and fallback behavior.

---

### Component
Caller and Scope Resolution Common

canonical_owner:
Civilization common

classification:
caller-scope-resolution-common

current_status:
formally-adopted-candidate

reused_by:
- Portal Site
- OS helpdesks candidate
- application helpdesks candidate
- worker/consultation apps candidate

candidate_source_app:
- Knowledge / Portal / Scenario / Worker formal review ledger

app_residual_responsibility:
- caller registrations
- local route policy detail
- domain-specific scope labels

notes:
Reusable caller/scope resolution family.

---

### Component
Knowledge Disclaimer and Safety Profile Common

canonical_owner:
Civilization common

classification:
knowledge-disclaimer-safety-profile

current_status:
formally-adopted-candidate

reused_by:
- legal support candidate
- medical support candidate
- general helpdesk candidate
- study support candidate

candidate_source_app:
- Knowledge / Portal / Scenario / Worker formal review ledger

app_residual_responsibility:
- domain disclaimer wording
- local safety thresholds
- app-specific output policy

notes:
Reusable disclaimer/safety-profile family
for knowledge outputs.

---

### Component
Knowledge Source and Review Common

canonical_owner:
Civilization common

classification:
knowledge-source-review-common

current_status:
formally-adopted-candidate

reused_by:
- all knowledge consumers
- worker candidate
- helpdesk candidate
- study apps candidate

candidate_source_app:
- Knowledge / Portal / Scenario / Worker formal review ledger

app_residual_responsibility:
- source ingestion detail
- review workflow policy
- trust wording

notes:
Reusable source/review/trust-status family
for knowledge governance.

---

### Component
Knowledge Learning Path Common

canonical_owner:
Civilization common

classification:
knowledge-learning-path-common

current_status:
formally-adopted-candidate

reused_by:
- qualification learning candidate
- language learning candidate
- academic knowledge candidate
- onboarding candidate

candidate_source_app:
- Knowledge / Portal / Scenario / Worker formal review ledger

app_residual_responsibility:
- curriculum semantics
- domain-specific difficulty rules
- local path presentation

notes:
Reusable guided-learning path family.

---

### Component
Knowledge Timeline and Event Common

canonical_owner:
Civilization common

classification:
knowledge-timeline-event-common

current_status:
formally-adopted-candidate

reused_by:
- history knowledge candidate
- civilization history candidate
- lore explanation candidate
- scenario background candidate

candidate_source_app:
- Knowledge / Portal / Scenario / Worker formal review ledger

app_residual_responsibility:
- event semantics
- timeline grouping rules
- local render detail

notes:
Reusable timeline/event family
for time-structured knowledge.

---

### Component
Character Profile Common

canonical_owner:
Civilization common

classification:
character-profile-common

current_status:
formally-adopted-candidate

reused_by:
- history knowledge candidate
- scenario lore candidate
- guide character info candidate
- app character info candidate

candidate_source_app:
- Knowledge / Portal / Scenario / Worker formal review ledger

app_residual_responsibility:
- profile emphasis
- local presentation
- domain-specific fields

notes:
Reusable structured character/person profile family.

---

### Component
Entity and Relation Graph Common

canonical_owner:
Civilization common

classification:
entity-relation-graph-common

current_status:
formally-adopted-candidate

reused_by:
- academic knowledge candidate
- legal knowledge candidate
- medical knowledge candidate
- history candidate
- concept explanation candidate

candidate_source_app:
- Knowledge / Portal / Scenario / Worker formal review ledger

app_residual_responsibility:
- graph ingestion detail
- local navigation rules
- relation labels

notes:
Reusable entity/relation graph family.

---

### Component
AI Helpdesk Entry Common

canonical_owner:
Portal Site

classification:
ai-helpdesk-entry-common

current_status:
formally-adopted-candidate

reused_by:
- Portal Site
- future OS/app helpdesk entry surfaces candidate

candidate_source_app:
- Knowledge / Portal / Scenario / Worker formal review ledger

app_residual_responsibility:
- entry placement
- local CTA wording
- page-specific UX detail

notes:
Reusable AI helpdesk entry surface
for portal-style entry points.

---

### Component
DB Driven Copy Delivery Common

canonical_owner:
Portal Site

classification:
db-driven-copy-delivery-common

current_status:
formally-adopted-candidate

reused_by:
- Portal Site
- DB-driven content pages candidate
- CMS-like display surfaces candidate

candidate_source_app:
- Knowledge / Portal / Scenario / Worker formal review ledger

app_residual_responsibility:
- copy governance
- local page schema
- app-specific rendering detail

notes:
Reusable DB-driven copy delivery family.

---

### Component
DB Driven Navigation Tree Common

canonical_owner:
Portal Site

classification:
db-driven-navigation-tree-common

current_status:
formally-adopted-candidate

reused_by:
- Portal Site
- directory UIs candidate
- app/OS listing surfaces candidate

candidate_source_app:
- Knowledge / Portal / Scenario / Worker formal review ledger

app_residual_responsibility:
- node semantics
- local renderer policies
- domain-specific targets

notes:
Reusable DB-driven navigation tree family.

---

### Component
Scenario Playback Structure Common

canonical_owner:
Civilization common

classification:
scenario-playback-structure-common

current_status:
formally-adopted-candidate

reused_by:
- story mode candidate
- branching scenario candidate
- guided narrative playback candidate

candidate_source_app:
- Knowledge / Portal / Scenario / Worker formal review ledger

app_residual_responsibility:
- scenario content
- local branch rules
- playback UX detail

notes:
Reusable scenario playback/branching structure family.

---

### Component
Scenario to Knowledge Reference Common

canonical_owner:
Civilization common

classification:
scenario-knowledge-reference-common

current_status:
formally-adopted-candidate

reused_by:
- story mode candidate
- lore support candidate
- background explanation candidate
- scenario helpdesk candidate

candidate_source_app:
- Knowledge / Portal / Scenario / Worker formal review ledger

app_residual_responsibility:
- local bridging policy
- scenario semantics
- app-specific navigation detail

notes:
Reusable bridge family
between scenario layer and knowledge layer.

---

### Component
Fixed Knowledge Access for AI Worker Common

canonical_owner:
Civilization common

classification:
fixed-knowledge-access-for-ai-worker-common

current_status:
formally-adopted-candidate

reused_by:
- BusinessOS AI worker candidate
- future worker candidate
- assistant agents candidate

candidate_source_app:
- Knowledge / Portal / Scenario / Worker formal review ledger

app_residual_responsibility:
- worker-specific prompt policy
- local data boundary rules
- app-specific worker UX detail

notes:
Reusable fixed-knowledge access family
for worker/assistant separation from volatile business data.


# ============================================================
# WAVE 1B LIMITED FIXED REFLECTION LEDGER ENTRIES (026)
# ============================================================

### Component
Local-first Draft / Cache / Replay Common

canonical_owner:
BusinessOS

classification:
local-first-draft-cache-replay

current_status:
limited-fixed-reflected

reused_by:
- PocketSecretary candidate
- NameCardManager candidate
- EstimateCreator candidate
- ExpenseSettlement candidate
- ProjectFlow candidate

notes:
Parent reconciled family for local-first cache,
offline editable state,
draft persistence,
pending/replay/retry,
and recovery guidance.

---

### Component
Explicit Share Scope / Delegated Access Common

canonical_owner:
BusinessOS

classification:
explicit-share-scope-delegated-access

current_status:
limited-fixed-reflected

reused_by:
- NameCardManager candidate
- EstimateCreator candidate
- ProjectFlow candidate
- LifeOS family-share apps candidate

notes:
Parent reconciled family for explicit share,
delegated access,
revocable share,
readonly sharing,
and visibility boundary.

---

### Component
Reminder / Due / Follow-up Common

canonical_owner:
BusinessOS

classification:
reminder-due-followup

current_status:
limited-fixed-reflected

reused_by:
- PocketSecretary candidate
- ProjectFlow candidate
- InvoiceFlow candidate
- ExpenseSettlement candidate
- Legal / Inheritance / EndOfLife apps candidate

notes:
Parent reconciled family for due/reminder/follow-up meaning,
above inbox/alert UI families.

---

### Component
Template Materialization Common

canonical_owner:
Application common

classification:
template-materialization

current_status:
limited-fixed-reflected

reused_by:
- EstimateCreator candidate
- ProjectFlow candidate
- PocketSecretary candidate
- LifeOS planning/consultation/meal template apps candidate

notes:
Parent reconciled family for template definition,
selection,
expansion to draft,
and revision trace.


# ============================================================
# WAVE 2B LIMITED FIXED REFLECTION LEDGER ENTRIES (031)
# ============================================================

### Component
Goal / Timeline / Milestone Review Common

canonical_owner:
Application common

classification:
goal-timeline-milestone-review

current_status:
limited-fixed-reflected

reused_by:
- ProjectFlow candidate
- LifePlanner candidate
- TrainingCoach candidate
- EndOfLifePlanner candidate
- InheritanceSupport candidate

notes:
Parent reconciled family for goals,
milestones,
timeline-based review,
and progress/delay/completion checks.

---

### Component
Consultation Prep / Fact Timeline / Checklist Common

canonical_owner:
Application common

classification:
consultation-prep-fact-timeline-checklist

current_status:
limited-fixed-reflected

reused_by:
- LegalSupport candidate
- BusinessLegalSupport candidate
- InheritanceSupport candidate
- EndOfLifePlanner candidate
- PocketSecretary consultation entry candidate

notes:
Parent reconciled family for consultation preparation,
fact timeline organization,
question lists,
checklists,
and shareable prep summary skeletons.

---

### Component
Family Shared Record / Consent Common

canonical_owner:
LifeOS / BusinessOS boundary family

classification:
family-shared-record-consent

current_status:
limited-fixed-reflected

reused_by:
- LifePlanner candidate
- EndOfLifePlanner candidate
- InheritanceSupport candidate
- BodyMetrics candidate
- MealPlanner candidate

notes:
Parent reconciled family for family sharing,
consent boundary,
emergency limited disclosure,
and delegated family access.

---

### Component
Document Bundle / Summary Pack Common

canonical_owner:
BusinessOS common

classification:
document-bundle-summary-pack

current_status:
limited-fixed-reflected

reused_by:
- LegalSupport candidate
- InheritanceSupport candidate
- EndOfLifePlanner candidate
- EstimateCreator candidate
- InvoiceFlow candidate
- ExpenseSettlement candidate

notes:
Parent reconciled family for document bundles,
summary packs,
submission prep packs,
and package metadata.


# ============================================================
# WAVE 3B LIMITED FIXED REFLECTION LEDGER ENTRIES (036)
# ============================================================

### Component
Approval / Review Visibility Common

canonical_owner:
BusinessOS

classification:
approval-review-visibility

current_status:
limited-fixed-reflected

reused_by:
- ExpenseSettlement candidate
- OrderFlow candidate
- TalentGrowth candidate
- ProductPortfolioManager candidate
- workflow/review apps candidate

notes:
Parent reconciled family for approval/review status,
decision visibility,
progression semantics,
and related action/thread child layers.

---

### Component
Evidence / Attachment / Reference Common

canonical_owner:
BusinessOS

classification:
evidence-attachment-reference

current_status:
limited-fixed-reflected

reused_by:
- ExpenseSettlement candidate
- TalentGrowth candidate
- InvoiceFlow candidate
- Mbo candidate
- audit/review apps candidate

notes:
Parent reconciled family for intake,
panel,
reference linking,
integrity metadata,
and OCR-ready evidence handling.

---

### Component
Timeline / Audit / History Common

canonical_owner:
Application common

classification:
timeline-audit-history

current_status:
limited-fixed-reflected

reused_by:
- OrderFlow candidate
- ProductPortfolioManager candidate
- ExpenseSettlement candidate
- inquiry/history apps candidate
- governance/audit apps candidate

notes:
Parent reconciled family for history,
timeline,
state transition,
and audit-linked chronology viewing.

---

### Component
Analytics / Comparison / KPI Common

canonical_owner:
Application common

classification:
analytics-comparison-kpi

current_status:
limited-fixed-reflected

reused_by:
- TalentGrowth candidate
- ProductPortfolioManager candidate
- Mbo candidate
- analytics/reporting apps candidate
- planning/comparison apps candidate

notes:
Parent reconciled family for KPI,
comparison,
score,
chart,
matrix/radar,
selector,
and metadata-oriented analysis surfaces.


# ============================================================
# WAVE 4B LIMITED FIXED REFLECTION LEDGER ENTRIES (041)
# ============================================================

### Component
Knowledge / Portal / Scenario Common

canonical_owner:
Civilization common

classification:
knowledge-portal-scenario

current_status:
limited-fixed-reflected

reused_by:
- Portal Site candidate
- knowledge/helpdesk apps candidate
- scenario/lore apps candidate
- worker/assistant apps candidate
- study/support apps candidate

notes:
Parent reconciled family for knowledge access,
portal delivery,
scenario bridge,
and worker fixed-knowledge structure.

---

### Component
ERP Boundary / Reflection / Finance Operation Common

canonical_owner:
BusinessOS

classification:
erp-boundary-reflection-finance-operation

current_status:
limited-fixed-reflected

reused_by:
- InvoiceFlow candidate
- ExpenseSettlement candidate
- ERP-linked business apps candidate
- finance operation apps candidate
- publication/reflection apps candidate

notes:
Parent reconciled family for ERP boundary,
reflection/publication handling,
finance operations,
and operational resend/result support.

---

### Component
People / Employee / Certification Common

canonical_owner:
ERP / BusinessOS common boundary

classification:
people-employee-certification

current_status:
limited-fixed-reflected

reused_by:
- TalentGrowth candidate
- ERP candidate
- Mbo candidate
- ProjectFlow candidate
- people/certification apps candidate

notes:
Parent reconciled family for employee/person summary,
certification visibility,
organization-aware selection,
and responsibility/profile structure.


# ============================================================
# CAREERLAUNCH LIMITED REFLECTION LEDGER ENTRIES (050)
# ============================================================

### Component
Document Template Common

canonical_owner:
Application common

classification:
document-template

current_status:
limited-reflected

reused_by:
- CareerLaunch candidate
- document-output apps candidate
- consultation/document apps candidate
- template-driven apps candidate

notes:
Career document template branch family
for reusable document skeletons and variants.

---

### Component
Revision History Common

canonical_owner:
Application common

classification:
revision-history

current_status:
limited-reflected

reused_by:
- CareerLaunch candidate
- document workflow apps candidate
- compare/restore apps candidate

notes:
Revision, diff, submitted-version, and restore branch family
for document-oriented workflows.

---

### Component
Checklist Execution Common

canonical_owner:
Application common

classification:
checklist-execution

current_status:
limited-reflected

reused_by:
- CareerLaunch candidate
- consultation/prep apps candidate
- staged workflow apps candidate

notes:
Execution-oriented checklist branch family
for staged preparation flows.

---

### Component
Status Pipeline Common

canonical_owner:
BusinessOS

classification:
status-pipeline

current_status:
limited-reflected

reused_by:
- CareerLaunch candidate
- workflow apps candidate
- pipeline/progression apps candidate

notes:
Progression-oriented branch family
for multi-stage state pipelines.

