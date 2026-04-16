# ============================================================
# APPLICATION COMMON COMPONENTS
# PersonaOS / BusinessOS / Cross-Application Reuse Catalog
# ============================================================

status: canonical
type: integrated-common-catalog
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This document defines the reusable common-component catalog
for applications under CivilizationSystem.

Its purpose is to:
- identify reusable components early
- separate common responsibility from app-specific responsibility
- improve consistency across apps
- make future app design faster and cleaner

Principles:
- PersonaOS is the canonical owner of persona meaning, secretary experience, and presentation semantics
- BusinessOS is the canonical owner of business operations, delivery, sharing, sync, publication, and company AI operation
- applications keep only app-specific UI, entry flow, and feature-specific presentation

# ============================================================
# 1. PERSONAOS-SIDE COMMON COMPONENTS
# ============================================================

## 1-1. Consultation Common

purpose:
Defines the shared meaning boundary of consultation features.

contains:
- consultation tier
- consultation scope
- advisory-only boundary
- consultation output boundary

## 1-2. Secretary Interaction Common

purpose:
Defines the shared meaning of secretary-facing interaction.

contains:
- secretary profile common
- secretary switch common
- visible role presentation common
- summary bubble common
- dominant summary common

## 1-3. Notification Semantics Common

purpose:
Defines shared notification meaning and wording semantics.

contains:
- notification priority
- basic notification
- advanced notification
- quiet hours
- grouped summary
- daily summary
- contextual wording
- secretary tone mapping
- reminder semantics
- urgency semantics

## 1-4. Background Common

purpose:
Defines shared meaning for background presentation switching.

contains:
- background selection
- background preference
- available / unlocked background
- explicit background switching

## 1-5. VisualRuntime Common

purpose:
Defines the canonical runtime semantics for persona and background rendering.

contains:
- canonical rendering semantics
- surface contract
- fallback semantics
- runtime lifecycle semantics
- session disposal semantics

## 1-6. Summary / Digest Common

purpose:
Defines reusable summary and digest semantics.

contains:
- one-item dominant summary
- grouped digest summary
- daily digest semantics
- secretary recap wording
- summary priority semantics

## 1-7. Reminder Common

purpose:
Defines reusable reminder semantics.

contains:
- reminder timing semantics
- snooze semantics
- dismiss semantics
- recurring reminder semantics
- priority escalation semantics

## 1-8. Presence / Mood Presentation Common

purpose:
Defines shared presentation semantics for visible persona state.

contains:
- visible mood state
- role-based expression mapping
- calm / urgent presentation style
- presence wording

## 1-9. Companion Conversation Framing Common

purpose:
Defines reusable conversation framing for companion / assistant style applications.

contains:
- entry framing
- assistant response posture
- supportive wording boundary
- secretary-like framing

## 1-10. Preference Common

purpose:
Defines shared preference meaning for persona-facing apps.

contains:
- tone preference
- summary preference
- notification preference
- background preference
- secretary display preference

# ============================================================
# 2. BUSINESSOS-SIDE COMMON COMPONENTS
# ============================================================

## 2-1. Submission Common

purpose:
Defines common submission semantics for business applications.

contains:
- external API submission only
- explicit submission only
- auto-submission prohibition
- auth context common
- business draft alignment
- formal draft principle

## 2-2. ERP Publication Capability

purpose:
Defines common ERP publication capability.

contains:
- ERP publication request
- approval-needed publication
- publication result state
- no direct app-to-ERP publish

## 2-3. Online Sync Common

purpose:
Defines common online sync foundation for BusinessOS applications.

contains:
- local store
- pending operation queue
- sync coordinator
- push-pull sync
- conflict detection
- conflict resolution

## 2-4. App-internal Sharing Common

purpose:
Defines explicit sharing semantics inside application scope.

contains:
- explicit share
- explicit unshare
- target user selection
- shared state handling

## 2-5. Business AI Worker

purpose:
Defines shared operation layer for company-facing work AI.

contains:
- worker template
- worker employment
- worker assignment / dispatch
- company-grown knowledge
- company-local naming
- usage log
- authority boundary

## 2-6. External Notification Delivery Common

purpose:
Defines shared external delivery capability for notifications and business alerts.

contains:
- LINE delivery
- Slack delivery
- SMS delivery
- Email delivery
- webhook delivery
- delivery target binding
- retry policy
- delivery failure state
- delivery audit log
- explicit send policy
- notification channel preference
- channel fallback rule

## 2-7. Channel Routing Common

purpose:
Defines shared routing logic for delivery and channel selection.

contains:
- channel selection rule
- priority-based routing
- user preference routing
- company policy routing
- fallback route
- delivery suppression rule

## 2-8. Approval / Review Surface Common

purpose:
Defines shared semantics for review and approval states.

contains:
- review-needed state
- approval-required state
- review result state
- hold / rejected / approved semantics

## 2-9. Draft / Work-in-progress Common

purpose:
Defines shared draft and unfinished-work semantics.

contains:
- draft state
- draft completeness
- unsent work state
- review-before-send state
- restore / resume state

## 2-10. Attachment / Evidence Common

purpose:
Defines reusable attachment and evidence handling semantics.

contains:
- attachment metadata
- evidence linkage
- proof file handling
- preview / secure access semantics

## 2-11. Activity Log / Audit Trail Common

purpose:
Defines reusable operation-history and audit semantics.

contains:
- who did what
- when changed
- share history
- submission history
- delivery history
- review history

## 2-12. Assignment / Work Queue Common

purpose:
Defines reusable assignment and work-queue semantics.

contains:
- assigned user
- work queue state
- pending / in-progress / completed
- reassignment semantics

## 2-13. Contact / Destination Common

purpose:
Defines reusable recipient / destination semantics.

contains:
- destination identity
- contact channel binding
- preferred route
- reachable state
- organization-linked contact

## 2-14. Template / Generated Output Common

purpose:
Defines reusable template and generated business output semantics.

contains:
- template selection
- generated wording
- formal output mode
- company style adaptation

## 2-15. Install Guidance / Cross-app Launch Common

purpose:
Defines reusable cross-application launch and install guidance semantics.

contains:
- deep link launch
- app install guidance
- unavailable feature fallback
- cross-app handoff semantics

# ============================================================
# 3. LINE / SLACK / SMS POSITIONING
# ============================================================

LINE / Slack / SMS are not notification meaning themselves.

They should be split into two layers:

PersonaOS side:
- urgency meaning
- quiet-hours meaning
- summary meaning
- secretary wording
- companion-facing tone

BusinessOS side:
- external delivery channel
- channel routing
- delivery target binding
- retry and failure handling
- delivery log and audit

Principle:
- PersonaOS defines what the notification means
- BusinessOS defines where and how it is delivered

# ============================================================
# 4. WHAT BELONGS TO COMMON VS APP-SPECIFIC
# ============================================================

Common components should contain:
- meaning
- boundaries
- authority principles
- common models
- common operation layers
- common runtime semantics
- common policy semantics

App-specific responsibility should contain:
- screen layout
- button placement
- entry flow
- final wording presentation
- plan unlock UI
- app-specific guidance
- app-specific review surface

Principle:
Common components are the canonical source of meaning.
Applications own presentation and flow.

# ============================================================
# 5. REUSE DECISION RULE
# ============================================================

When designing a new app, determine in this order:

1. is this a canonical meaning definition?
2. is this a reusable authority / operation / delivery / sync capability?
3. is this likely to be reused across multiple apps?
4. is this not just UI but reusable meaning or capability?
5. should this belong to PersonaOS common or BusinessOS common?
6. keep only the residual part inside the app itself

# ============================================================
# 6. PRIMARY REUSE TARGETS
# ============================================================

PersonaOS-side reuse targets:
- PocketSecretary
- companion apps
- avatar apps
- assistant apps
- future secretary-facing applications

BusinessOS-side reuse targets:
- PocketSecretary Enterprise
- EstimateCreator
- NameCardManager
- ERP-related apps
- future business apps

External Notification Delivery reuse targets:
- PocketSecretary Enterprise
- EstimateCreator
- NameCardManager
- approval request apps
- business alert apps
- future delivery-enabled apps

# ============================================================
# 7. SUMMARY
# ============================================================

The application common-component catalog is fixed as follows.

PersonaOS-side common:
- Consultation Common
- Secretary Interaction Common
- Notification Semantics Common
- Background Common
- VisualRuntime Common
- Summary / Digest Common
- Reminder Common
- Presence / Mood Presentation Common
- Companion Conversation Framing Common
- Preference Common

BusinessOS-side common:
- Submission Common
- ERP Publication Capability
- Online Sync Common
- App-internal Sharing Common
- Business AI Worker
- External Notification Delivery Common
- Channel Routing Common
- Approval / Review Surface Common
- Draft / Work-in-progress Common
- Attachment / Evidence Common
- Activity Log / Audit Trail Common
- Assignment / Work Queue Common
- Contact / Destination Common
- Template / Generated Output Common
- Install Guidance / Cross-app Launch Common

This structure enables all future apps to reuse common meaning first,
and keep only screen-specific and flow-specific differences inside each app.

# ============================================================
# SHIFTMANAGER_ADDITIONAL_COMMON_COMPONENTS_BEGIN
# ============================================================
# SHIFTMANAGER-DERIVED COMMON COMPONENT CANDIDATES
# ============================================================

status: additive-candidate
source_application: ShiftManager
owner: Boss
prepared_by: Zero

purpose:
Adds new reusable common-component candidates
identified through ShiftManager design work.

principles:
- these are not ShiftManager-only features
- they should be reusable across multiple applications
- they should be appended to the common-component canonical set
- they should not break existing component definitions

# ============================================================
# 1. PUBLICATION / VERSIONED SNAPSHOT COMMON
# ============================================================

component_name:
Publication / Versioned Snapshot Common

purpose:
Provides a shared pattern for converting editable draft state
into fixed publication snapshots,
while preserving version history and superseded states.

core_capabilities:
- draft to fixed publication conversion
- version_no based publication management
- old version superseded handling
- publication-based external delivery/export
- separation of editable state and fixed state

reusable_for:
- ShiftManager
- EstimateCreator
- InvoiceFlow
- document publication flows
- any draft -> fixed release style application

# ============================================================
# 2. VISIBILITY SCOPE EVALUATION COMMON
# ============================================================

component_name:
Visibility Scope Evaluation Common

purpose:
Separates:
- visibility rules / share conditions
from
- evaluated visible results

core_capabilities:
- explicit share-rule modeling
- evaluated visible-scope result modeling
- precomputed view scope support
- permission-safe viewer expansion
- reusable RLS / API visibility basis

reusable_for:
- ShiftManager
- NameCardManager
- PocketSecretary enterprise sharing
- document sharing
- controlled internal visibility applications

# ============================================================
# 3. RULE-BASED DRAFT GENERATION COMMON
# ============================================================

component_name:
Rule-based Draft Generation Common

purpose:
Provides a shared pattern
for generating editable drafts from stored conditions/rules,
without automatically publishing final results.

core_capabilities:
- condition-based draft generation
- generation rule storage
- draft-only output
- generation summary
- human review required after generation
- no automatic publication shortcut

reusable_for:
- ShiftManager
- EstimateCreator draft generation
- project planning draft generation
- MBO initial draft generation
- resource/task allocation apps

# ============================================================
# 4. GENERATION WARNING / SHORTAGE REVIEW COMMON
# ============================================================

component_name:
Generation Warning / Shortage Review Common

purpose:
Provides a reusable pattern
for reviewing warnings, shortages, fallback decisions,
and unresolved items created by auto-generation logic.

core_capabilities:
- warning list
- shortage list
- severity levels
- target slot/date references
- manual-fix entry support
- result summary support

reusable_for:
- ShiftManager
- estimate auto-generation
- schedule auto-generation
- planning assistants
- resource balancing applications

# ============================================================
# 5. SCHEDULE / TIME-SLOT PLANNING COMMON
# ============================================================

component_name:
Schedule / Time-slot Planning Common

purpose:
Provides a shared model
for person-date-time-slot based planning and assignment.

core_capabilities:
- day / week / month planning basis
- slot-based required headcount
- person assignment to timeslots
- overlap / shortage / gap detection
- assignment planning summary

reusable_for:
- ShiftManager
- reservation planning
- facility operation planning
- visit planning
- workforce allocation apps

# ============================================================
# 6. PUBLISH TARGET CONFIRMATION COMMON
# ============================================================

component_name:
Publish Target Confirmation Common

purpose:
Provides a reusable review surface
for confirming who will be able to view something
before publication or wide sharing is executed.

core_capabilities:
- viewer count preview
- scope breakdown preview
- sample viewer preview
- share accident prevention surface
- stronger confirmation before wide release

reusable_for:
- ShiftManager
- NameCardManager
- internal document sharing
- approval-result sharing
- controlled release applications

# ============================================================
# 7. SHIFTMANAGER -> EXISTING COMMON COMPONENT MAPPING
# ============================================================

shiftmanager_reuses_existing_common_components:
- Submission Common
- ERP Publication Capability
- Online Sync Common
- App-internal Sharing Common
- External Notification Delivery Common
- Channel Routing Common
- Approval / Review Surface Common
- Draft / Work-in-progress Common
- Activity Log / Audit Trail Common
- Assignment / Work Queue Common
- Install Guidance / Cross-app Launch Common

mapping_notes:
ShiftManager should reuse existing common components where compatible,
and add the new candidates above as shared reusable components
for future application design work.

# SHIFTMANAGER_ADDITIONAL_COMMON_COMPONENTS_END
# ============================================================

# SHIFTMANAGER_PDF_COMMON_COMPONENT_BEGIN
# ============================================================
# PRINTABLE PUBLICATION EXPORT COMMON
# ============================================================

component_name:
Printable Publication Export Common

purpose:
Provides a reusable pattern for printable fixed-output generation,
especially PDF export based on fixed publication snapshots.

core_capabilities:
- publication-based printable export
- draft review printable export
- A4/A3 print-oriented layout support
- output history support
- printable board/personal layout variants

reusable_for:
- ShiftManager
- EstimateCreator
- InvoiceFlow
- NameCardManager printable lists
- publication-oriented business documents

# SHIFTMANAGER_PDF_COMMON_COMPONENT_END

# ============================================================
# 8. NEWLY PROMOTED CROSS-APPLICATION COMMON COMPONENTS
# ============================================================

## 8-1. Secretary Wording Resolution Common

owner_side:
PersonaOS common

purpose:
Resolves stable message meaning into secretary- or persona-specific wording
without changing semantic intent.

contains:
- secretary/persona style mapping
- message type to wording resolution
- fallback wording
- stable meaning with varied expression
- expression-layer separation from semantic meaning

app_specific_residuals:
- final screen composition
- timing of display
- app-local visual emphasis
- feature-local wording overrides

notes:
This component commonizes wording resolution logic,
not the final screen UI itself.

## 8-2. Cross-app Launch Contract Common

owner_side:
Application common

purpose:
Defines the shared contract for app-to-app launch and handoff.

contains:
- scheme semantics
- path semantics
- required parameters
- optional parameters
- handoff_source semantics
- install guidance semantics
- fail-closed contract rules
- launch success != business success distinction

app_specific_residuals:
- launch button placement
- app-specific install guidance screen
- local fallback messaging
- destination-specific navigation behavior

notes:
This is the generic cross-app launch contract layer.
Business authorization truth remains outside this component.

## 8-3. Auth Inheritance / Cross-app Auth Context Common

owner_side:
BusinessOS common

purpose:
Defines inheritance of authenticated business context across app launches.

contains:
- authenticated context inheritance
- company context handoff
- invalid / expired fail-closed handling
- auth inheritance != authorization success rule
- destination-side revalidation requirement

app_specific_residuals:
- local expired-session messaging
- destination authorization result screen
- app-specific secure-entry wording

notes:
This common component absorbs shared-session reuse semantics
but does not bypass destination-side authorization checks.

## 8-4. OS Entry Gateway Common

owner_side:
Application common

purpose:
Defines the official gateway semantics for entering each OS.

contains:
- official OS entry boundary
- central gateway responsibility
- gateway-to-OS handoff meaning
- upper-layer entry ownership
- gateway role separation from OS-internal navigation

app_specific_residuals:
- page layout
- button placement
- visual hierarchy
- local CTA wording

notes:
This is not an OS-internal component.
It belongs to the upper-layer entry gateway surface.

## 8-5. Entry Eligibility Decision Common

owner_side:
Application common

purpose:
Normalizes pre-entry decision results before OS launch.

contains:
- launchable
- login_required
- denied
- maintenance
- error
- pre-entry result normalization
- deny / maintenance / error separation

app_specific_residuals:
- deny page layout
- maintenance page layout
- result presentation wording
- local support CTA placement

notes:
This component covers entry decision semantics only,
not internal authorization after entry.

## 8-6. Cross-OS Entry Policy Common

owner_side:
Application common

purpose:
Defines upper-layer policy that official links into each OS
are owned by the gateway layer, not by direct OS-to-OS linking.

contains:
- centralized entry policy
- no direct OS-to-OS link principle
- official portal-only entry rule
- top-level routing governance
- cross-domain entry boundary

app_specific_residuals:
- local policy help UI
- explanation page composition
- educational copy
- local guidance emphasis

notes:
This is a civilization-level entry policy common,
not a page-specific implementation detail.

## 8-7. Inventory Reference Common

owner_side:
BusinessOS common

purpose:
Defines reference-only inventory freshness and advisory display semantics.

contains:
- fresh state
- cached state
- stale state
- failed state
- checked_at timestamp meaning
- source timestamp meaning
- advisory-only semantics
- stock warning badge semantics
- reference-only UI wording baseline

app_specific_residuals:
- inventory lookup UI
- app-specific product context
- local warning emphasis
- action wording around referenced stock

notes:
Authoritative inventory truth remains in ERP.
This common component standardizes reference-side meaning only.

# ============================================================
# 9. PROMOTION NOTE
# ============================================================

promotion_note:
These components are promoted because:
- reuse targets are already visible
- responsibility boundaries are clear
- overlap with existing fixed common components is manageable
- app-specific residual responsibilities can be clearly separated

Deferred items should remain in additive ledger
until abstraction quality is stable enough for fixed promotion.


# ============================================================
# 10. NEWLY PROMOTED BUSINESSOS COMMON COMPONENTS
# ============================================================

## 10-1. Application Premium Entitlement Common

owner_side:
BusinessOS common

purpose:
Defines shared entitlement-state semantics,
premium gate runtime behavior,
and premium-facing UI/policy consistency
across monthly-use applications.

contains:
- entitlement state model
- active / inactive / grace / expired / unknown semantics
- premium-only write eligibility
- unknown -> fail-closed rule
- offline cached entitlement handling
- last_verified_at meaning
- downgrade-safe read/write split
- visible premium lock semantics
- premium badge semantics
- premium grace / premium expired semantics
- deeplink-time entitlement bypass prevention
- verification-required semantics

app_specific_residuals:
- which features are premium
- plan names
- pricing
- payment provider implementation
- upgrade wording
- local CTA placement
- product-specific premium value explanation

notes:
This common component standardizes app-side entitlement behavior,
not external payment processing or accounting truth.

## 10-2. Spreadsheet Export Request Component

owner_side:
BusinessOS common

purpose:
Defines reusable spreadsheet export request behavior
for xlsx/csv output and export-option handling
across business applications.

contains:
- xlsx/csv export request semantics
- target scope selection
- selected columns handling
- masking option handling
- permission-aware export state
- export history linkage
- export request/result baseline behavior

app_specific_residuals:
- target dataset definition
- column catalog meaning
- export wording
- product-specific destination choice
- local file naming rules
- app-specific export access policy details

notes:
This common component covers export request and option semantics.
Dataset meaning remains application-owned.

# ============================================================
# 11. PROMOTION NOTE
# ============================================================

promotion_note:
These components are promoted because:
- reuse targets are already visible across multiple applications
- BusinessOS ownership is clear
- responsibility boundaries are stable
- app-specific residual scope remains clearly separable


# ============================================================
# 12. NEWLY PROMOTED NAMECARDMANAGER-DERIVED BUSINESSOS COMMONS
# ============================================================

## 12-1. Contact Profile Screen Common

owner_side:
BusinessOS common

purpose:
Defines a reusable business contact/profile presentation baseline
for person-, company-, customer-, vendor-, and lead-facing applications.

contains:
- contact profile screen baseline
- person/business profile summary
- company / department / title block
- contact method block
- profile section composition baseline
- reusable profile display semantics

app_specific_residuals:
- relationship graph UI
- app-specific detail layout
- app-specific edit flow
- field-density tuning
- local section order and emphasis

notes:
This common component standardizes the business contact/profile display baseline.
Application-specific richness remains outside this component.

## 12-2. Import Mapping Common

owner_side:
BusinessOS common

purpose:
Defines reusable source-column to target-field mapping behavior
for CSV and structured import workflows.

contains:
- source column mapping
- target field binding semantics
- auto detect support
- manual override support
- saved mapping profile support
- import mapping baseline behavior

app_specific_residuals:
- target field semantics
- source-specific heuristics
- mapping help wording
- app-specific UI density
- app-specific target model structure

notes:
This common component standardizes mapping behavior,
not the meaning of each application’s imported data model.

# ============================================================
# 13. PROMOTION NOTE
# ============================================================

promotion_note:
These components are promoted because:
- reuse targets are already visible across multiple business applications
- BusinessOS ownership is clear
- responsibility boundaries are stable
- app-specific residual responsibilities remain clearly separable


# ============================================================
# WAVE 1B LIMITED FIXED REFLECTION (026)
# ============================================================

## Local-first Draft / Cache / Replay Common

owner_side:
BusinessOS common

purpose:
Defines the parent reusable family for
local-first cache,
offline editable state,
draft persistence,
pending operation queue,
replay / retry behavior,
sync failure visibility,
and conflict-safe recovery guidance.

contains:
- local cache contract
- offline editable state
- draft persistence
- pending queue linkage
- replay / retry rule
- sync failure visibility
- recovery hint structure

app_specific_residuals:
- domain-specific object meaning
- app-local conflict wording
- screen-specific editing flow

notes:
This parent family absorbs narrower draft-only naming
without reviving old absorbed names as peers.

---

## Explicit Share Scope / Delegated Access Common

owner_side:
BusinessOS common

purpose:
Defines the parent reusable family for
explicit share,
delegated editor,
readonly share target,
revocable share,
approval-governed publication boundary,
and scope-based visibility.

contains:
- owner / editor / viewer
- delegated_editor
- readonly target
- revocable share
- publication-boundary-aware sharing
- scope-based visibility

app_specific_residuals:
- domain-specific share semantics
- local approval rules
- app-specific role wording

notes:
Share scope meaning is the parent family.
Role-aware action visibility remains a subfamily/lower layer.

---

## Reminder / Due / Follow-up Common

owner_side:
BusinessOS common

purpose:
Defines the parent meaning family for
reminder target,
due-date trigger,
next-action reminder,
follow-up queue,
advisory notification,
duplicate suppression,
and escalation hint.

contains:
- reminder target model
- due trigger model
- next-action reminder
- follow-up queue
- advisory notification rule
- duplicate suppression
- escalation hint

app_specific_residuals:
- domain-specific due semantics
- local escalation policy
- app-specific notification wording

notes:
Notification inbox and alert center stay as child UI families under this meaning layer.

---

## Template Materialization Common

owner_side:
Application common

purpose:
Defines the parent family for
template definition,
template selection,
locale/domain variants,
template expansion to draft,
and template revision trace.

contains:
- app default template
- user reusable template
- locale-specific template
- domain-specific template
- selection linkage
- expansion to draft
- revision trace

app_specific_residuals:
- domain template semantics
- local editor/admin rules
- app-specific expansion detail

notes:
Template selection is now treated as a child responsibility
inside the broader materialization family.


# ============================================================
# WAVE 2B LIMITED FIXED REFLECTION (031)
# ============================================================

## Goal / Timeline / Milestone Review Common

owner_side:
Application common

purpose:
Defines the parent reusable family for
goal object,
milestone object,
timeline view contract,
periodic review cycle,
progress / delay / completion check,
milestone-linked next action,
and review checkpoint visibility.

contains:
- goal object
- milestone object
- timeline view contract
- periodic review cycle
- progress / delay / completion check
- milestone-linked next action
- review checkpoint visibility

app_specific_residuals:
- domain-specific goal meaning
- app-local milestone semantics
- screen-specific review wording

notes:
Timeline/history, review-session, and KPI summary remain child reusable families.

---

## Consultation Prep / Fact Timeline / Checklist Common

owner_side:
Application common

purpose:
Defines the parent reusable family for
fact timeline,
issue/question list,
required document checklist,
next consultation memo,
shareable summary skeleton,
and prep-state validation.

contains:
- fact timeline
- issue / question list
- required document checklist
- next consultation memo
- shareable summary skeleton
- prep-state validation

app_specific_residuals:
- domain-specific consultation meaning
- app-local memo wording
- document requirement detail

notes:
This family supports preparation only.
It does not include legal, medical, or inheritance judgment logic itself.

---

## Family Shared Record / Consent Common

owner_side:
LifeOS / BusinessOS boundary family

purpose:
Defines the parent reusable family for
family viewer/editor scope,
consent-based sharing,
emergency limited disclosure,
revocation rule,
delegated family access,
and family-scoped visibility boundary.

contains:
- family viewer/editor scope
- consent-based sharing
- emergency limited disclosure
- revocation rule
- delegated family access
- family-scoped visibility boundary

app_specific_residuals:
- family relationship semantics
- local emergency policy wording
- app-specific consent detail

notes:
Explicit Share Scope / Delegated Access Common remains a broader cross-app share family.
This is the family/consent-specialized branch.

---

## Document Bundle / Summary Pack Common

owner_side:
BusinessOS common

purpose:
Defines the parent reusable family for
attachment bundle,
summary pack,
submission prep pack,
pre-share validation,
export-ready package metadata,
and bundle composition boundary.

contains:
- attachment bundle
- summary pack
- submission prep pack
- pre-share validation
- export-ready package metadata
- bundle composition boundary

app_specific_residuals:
- domain-specific bundle meaning
- local export wording
- app-specific package detail

notes:
Document PDF Generation Core and Evidence / Attachment Intake Module
remain child reusable families below this parent pack meaning layer.


# ============================================================
# WAVE 3B LIMITED FIXED REFLECTION (036)
# ============================================================

## Approval / Review Visibility Common

owner_side:
BusinessOS common

purpose:
Defines the parent reusable family for
stage visibility,
approval action surface,
review progression,
review-thread continuity,
decision display,
workflow progression semantics,
and return / reject / approve visibility.

contains:
- stage visibility
- approval action surface
- review progression
- review-thread continuity
- decision display
- workflow progression semantics
- return / reject / approve visibility

app_specific_residuals:
- domain-specific workflow meaning
- app-local decision wording
- screen-specific progression detail

notes:
Approval Action Surface, Approval Stepper / Review Progress,
Review Comment Thread Viewer, and Proposal Status Workflow UI
remain child reusable families.

---

## Evidence / Attachment / Reference Common

owner_side:
BusinessOS common

purpose:
Defines the parent reusable family for
evidence intake,
attachment intake,
evidence panel,
evidence reference linking,
integrity metadata,
OCR-ready intake boundary,
and review-oriented evidence handling.

contains:
- evidence intake
- attachment intake
- evidence panel
- evidence reference linking
- integrity metadata
- OCR-ready intake boundary
- review-oriented evidence handling

app_specific_residuals:
- domain-specific evidence meaning
- local review wording
- app-specific attachment policy

notes:
Evidence Reference Picker,
Evidence Integrity Metadata Layer,
and OCR-Ready Intake Boundary
remain child technical/review subfamilies.

---

## Timeline / Audit / History Common

owner_side:
Application common

purpose:
Defines the parent reusable family for
chronology row,
state transition visibility,
who-did-what audit,
before/after change tracking,
inquiry-oriented history viewing,
and audit/event chronology linkage.

contains:
- chronology row
- state transition visibility
- who-did-what audit
- before/after change tracking
- inquiry-oriented history viewing
- audit/event chronology linkage

app_specific_residuals:
- domain-specific event meaning
- local audit wording
- screen-specific history emphasis

notes:
Audit Log Surface Common,
Timeline / State Transition Viewer,
and Audit Event Surface
remain child reusable families.

---

## Analytics / Comparison / KPI Common

owner_side:
Application common

purpose:
Defines the parent reusable family for
KPI summary,
chart/trend view,
score breakdown,
comparison board,
gap view,
matrix visualization,
radar visualization,
period comparison,
and analysis metadata.

contains:
- KPI summary
- chart/trend view
- score breakdown
- comparison board
- gap view
- matrix visualization
- radar visualization
- period comparison
- analysis metadata

app_specific_residuals:
- domain-specific KPI meaning
- local comparison semantics
- app-specific formula/detail wording

notes:
KPI Chart Surface,
Comparison Board Component,
Gap Analysis Table Viewer,
Skill / Capability Radar Chart,
Skill Matrix Grid,
Period Switch / Comparison Selector,
and Forecast Metadata Panel
remain child reusable families.


# ============================================================
# WAVE 4B LIMITED FIXED REFLECTION (041)
# ============================================================

## Knowledge / Portal / Scenario Common

owner_side:
Civilization common

purpose:
Defines the parent reusable family for
knowledge access gateway,
caller/scope routing,
source/review governance,
disclaimer/safety profile,
knowledge graph/profile/timeline structure,
portal entry/copy/navigation delivery,
scenario playback and bridge,
and worker fixed-knowledge access.

contains:
- knowledge access gateway
- caller/scope routing
- source/review governance
- disclaimer/safety profile
- knowledge graph/profile/timeline structure
- portal entry/copy/navigation delivery
- scenario playback and bridge
- worker fixed-knowledge access

app_specific_residuals:
- domain-specific knowledge wording
- local portal UX detail
- scenario content semantics

notes:
Knowledge governance, graph/profile, navigation, scenario,
and worker-access families remain child reusable families.

---

## ERP Boundary / Reflection / Finance Operation Common

owner_side:
BusinessOS common

purpose:
Defines the parent reusable family for
ERP boundary visibility,
reflection/publication request-result handling,
resend/failure visibility,
finance operation support,
bank match / manual confirmation / receipt issuance,
collection/follow-up operation support,
and priority-driven operational handling.

contains:
- ERP boundary visibility
- reflection/publication request-result handling
- resend/failure visibility
- finance operation support
- bank match / manual confirmation / receipt issuance
- collection/follow-up operation support
- priority-driven operational handling

app_specific_residuals:
- domain-specific finance semantics
- local ERP wording
- app-specific operation detail

notes:
Finance-operation details, gateway surfaces,
and resend/result families remain child reusable families.

---

## People / Employee / Certification Common

owner_side:
ERP / BusinessOS common boundary

purpose:
Defines the parent reusable family for
person/employee summary,
organization-aware person selection,
certification/license visibility,
responsibility scope presentation,
people-profile reference structure,
and company/person role visibility.

contains:
- person/employee summary
- organization-aware person selection
- certification/license visibility
- responsibility scope presentation
- people-profile reference structure
- company/person role visibility

app_specific_residuals:
- domain-specific people semantics
- local organization wording
- app-specific certification detail

notes:
Certification, responsibility, selector,
and people-profile families remain child reusable families.


# ============================================================
# CAREERLAUNCH LIMITED REFLECTION (050)
# ============================================================

## Document Template Common

owner_side:
Application common

purpose:
Defines the reusable family for
career document template skeleton,
template variants,
template expansion to draft,
and document-oriented template reuse.

contains:
- resume template skeleton
- work history template skeleton
- motivation template skeleton
- self-PR template skeleton
- thank-you message template skeleton
- language-aware template structure

app_specific_residuals:
- job-specific copy detail
- document-local wording nuance
- app-specific template editor detail

notes:
This is the document-oriented branch
above generic template materialization mechanics.

---

## Revision History Common

owner_side:
Application common

purpose:
Defines the reusable family for
revision chronology,
document diff,
change summary,
submitted-version fixation,
restore,
and comparison visibility.

contains:
- revision chronology
- document diff
- change summary
- submitted version fixation
- restore
- comparison visibility

app_specific_residuals:
- domain-specific change semantics
- document-local compare emphasis
- app-specific restore wording

notes:
This is the document-version branch
linked to broader history/audit families.

---

## Checklist Execution Common

owner_side:
Application common

purpose:
Defines the reusable family for
staged checklist execution,
completion state,
pre-step preparation,
post-step follow-up,
and preparation-flow execution support.

contains:
- staged checklist execution
- completion state
- pre-step preparation
- post-step follow-up
- preparation-flow execution support

app_specific_residuals:
- domain-specific checklist content
- local follow-up wording
- app-specific execution rules

notes:
This is the execution-oriented branch
of the broader preparation/checklist family.

---

## Status Pipeline Common

owner_side:
BusinessOS common

purpose:
Defines the reusable family for
multi-stage progression visibility,
current stage,
terminal states,
progression pipeline semantics,
and stage transition visibility.

contains:
- current stage
- stage ordering
- terminal states
- progression visibility
- stage transition visibility

app_specific_residuals:
- recruiting-specific state names
- local business wording
- app-specific transition policy

notes:
This is the progression-oriented branch
that extends broader approval/review visibility semantics.

