# ============================================================
# APPLICATION COMMON COMPONENT REFERENCE MATRIX
# PersonaOS / BusinessOS / Cross-Application Reuse Mapping
# ============================================================

status: canonical
type: application-reference-matrix
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This matrix maps applications to reusable common components.

It clarifies:
- which common components are already reused
- which common components are planned reuse targets
- which responsibilities remain app-specific

# ============================================================
# 1. STATUS DEFINITIONS
# ============================================================

current:
- already reused by the application

planned:
- expected to be reused by the application

candidate:
- reuse is likely but still under validation

not-applicable:
- not naturally relevant to the application

# ============================================================
# 2. APPLICATION REFERENCE MATRIX
# ============================================================

# ------------------------------------------------------------
# 2-1. PocketSecretary
# ------------------------------------------------------------

application:
PocketSecretary

app_type:
secretary-facing companion application

personaos_common_usage:
- Consultation Common: current
- Secretary Interaction Common: current
- Notification Semantics Common: current
- Background Common: current
- VisualRuntime Common: current
- Summary / Digest Common: current
- Reminder Common: current
- Presence / Mood Presentation Common: current
- Companion Conversation Framing Common: current
- Preference Common: current

businessos_common_usage:
- Submission Common: planned
- ERP Publication Capability: planned
- Online Sync Common: planned
- App-internal Sharing Common: planned
- Business AI Worker: current
- External Notification Delivery Common: planned
- Channel Routing Common: planned
- Approval / Review Surface Common: planned
- Draft / Work-in-progress Common: current
- Attachment / Evidence Common: candidate
- Activity Log / Audit Trail Common: planned
- Assignment / Work Queue Common: candidate
- Contact / Destination Common: candidate
- Template / Generated Output Common: candidate
- Install Guidance / Cross-app Launch Common: current

app_specific_residuals:
- home layout
- secretary wording final presentation
- summary priority on screen
- deep link launch UX
- install guidance screen details
- enterprise-specific front UI
- ERP request draft UI

notes:
PocketSecretary is the strongest consumer
of PersonaOS-side common components.

# ------------------------------------------------------------
# 2-2. PocketSecretary Enterprise
# ------------------------------------------------------------

application:
PocketSecretary Enterprise

app_type:
enterprise-facing secretary and work-assist front

personaos_common_usage:
- Consultation Common: current
- Secretary Interaction Common: current
- Notification Semantics Common: current
- Background Common: current
- VisualRuntime Common: current
- Summary / Digest Common: current
- Reminder Common: current
- Presence / Mood Presentation Common: current
- Companion Conversation Framing Common: current
- Preference Common: current

businessos_common_usage:
- Submission Common: current
- ERP Publication Capability: planned
- Online Sync Common: planned
- App-internal Sharing Common: planned
- Business AI Worker: current
- External Notification Delivery Common: current
- Channel Routing Common: current
- Approval / Review Surface Common: planned
- Draft / Work-in-progress Common: current
- Attachment / Evidence Common: candidate
- Activity Log / Audit Trail Common: planned
- Assignment / Work Queue Common: candidate
- Contact / Destination Common: current
- Template / Generated Output Common: candidate
- Install Guidance / Cross-app Launch Common: current

app_specific_residuals:
- enterprise dashboard layout
- worker consumption UI
- company-facing entry flow
- enterprise plan presentation
- business support screen composition

notes:
Enterprise variant is a stronger BusinessOS consumer
than the personal PocketSecretary surface.

# ------------------------------------------------------------
# 2-3. EstimateCreator
# ------------------------------------------------------------

application:
EstimateCreator

app_type:
business estimate and negotiation support app

personaos_common_usage:
- Consultation Common: candidate
- Secretary Interaction Common: not-applicable
- Notification Semantics Common: planned
- Background Common: not-applicable
- VisualRuntime Common: not-applicable
- Summary / Digest Common: planned
- Reminder Common: candidate
- Presence / Mood Presentation Common: not-applicable
- Companion Conversation Framing Common: candidate
- Preference Common: candidate

businessos_common_usage:
- Submission Common: current
- ERP Publication Capability: current
- Online Sync Common: current
- App-internal Sharing Common: current
- Business AI Worker: current
- External Notification Delivery Common: current
- Channel Routing Common: current
- Approval / Review Surface Common: current
- Draft / Work-in-progress Common: current
- Attachment / Evidence Common: planned
- Activity Log / Audit Trail Common: current
- Assignment / Work Queue Common: candidate
- Contact / Destination Common: current
- Template / Generated Output Common: current
- Install Guidance / Cross-app Launch Common: planned

shiftmanager_additive_candidate_usage:
- Publication / Versioned Snapshot Common: candidate
- Visibility Scope Evaluation Common: candidate
- Rule-based Draft Generation Common: candidate
- Generation Warning / Shortage Review Common: candidate
- Schedule / Time-slot Planning Common: not-applicable
- Publish Target Confirmation Common: candidate

app_specific_residuals:
- estimate editor UI
- negotiation memo UI
- estimate preview screen
- estimate-specific line item flow
- business wording for estimate actions

notes:
EstimateCreator is one of the strongest consumers
of BusinessOS common capability.

# ------------------------------------------------------------
# 2-4. NameCardManager
# ------------------------------------------------------------

application:
NameCardManager

app_type:
business contact and relationship intelligence app

personaos_common_usage:
- Consultation Common: candidate
- Secretary Interaction Common: not-applicable
- Notification Semantics Common: planned
- Background Common: not-applicable
- VisualRuntime Common: not-applicable
- Summary / Digest Common: planned
- Reminder Common: candidate
- Presence / Mood Presentation Common: not-applicable
- Companion Conversation Framing Common: candidate
- Preference Common: candidate

businessos_common_usage:
- Submission Common: current
- ERP Publication Capability: current
- Online Sync Common: current
- App-internal Sharing Common: current
- Business AI Worker: current
- External Notification Delivery Common: current
- Channel Routing Common: current
- Approval / Review Surface Common: current
- Draft / Work-in-progress Common: current
- Attachment / Evidence Common: planned
- Activity Log / Audit Trail Common: current
- Assignment / Work Queue Common: candidate
- Contact / Destination Common: current
- Template / Generated Output Common: candidate
- Install Guidance / Cross-app Launch Common: planned

shiftmanager_additive_candidate_usage:
- Publication / Versioned Snapshot Common: candidate
- Visibility Scope Evaluation Common: current
- Rule-based Draft Generation Common: candidate
- Generation Warning / Shortage Review Common: candidate
- Schedule / Time-slot Planning Common: not-applicable
- Publish Target Confirmation Common: current

app_specific_residuals:
- card scan flow
- contact profile screen
- relationship graph UI
- responsibility scope presentation
- person-specific detail layout

notes:
Visibility and publish confirmation are especially relevant here.

# ------------------------------------------------------------
# 2-5. ShiftManager
# ------------------------------------------------------------

application:
ShiftManager

app_type:
planning and shift allocation application

personaos_common_usage:
- Consultation Common: candidate
- Secretary Interaction Common: not-applicable
- Notification Semantics Common: planned
- Background Common: not-applicable
- VisualRuntime Common: not-applicable
- Summary / Digest Common: planned
- Reminder Common: planned
- Presence / Mood Presentation Common: not-applicable
- Companion Conversation Framing Common: not-applicable
- Preference Common: candidate

businessos_common_usage:
- Submission Common: current
- ERP Publication Capability: current
- Online Sync Common: current
- App-internal Sharing Common: current
- Business AI Worker: candidate
- External Notification Delivery Common: current
- Channel Routing Common: current
- Approval / Review Surface Common: current
- Draft / Work-in-progress Common: current
- Attachment / Evidence Common: candidate
- Activity Log / Audit Trail Common: current
- Assignment / Work Queue Common: current
- Contact / Destination Common: planned
- Template / Generated Output Common: candidate
- Install Guidance / Cross-app Launch Common: planned

shiftmanager_additive_candidate_usage:
- Publication / Versioned Snapshot Common: current
- Visibility Scope Evaluation Common: current
- Rule-based Draft Generation Common: current
- Generation Warning / Shortage Review Common: current
- Schedule / Time-slot Planning Common: current
- Publish Target Confirmation Common: current

app_specific_residuals:
- shift calendar UI
- slot editing UI
- assignment board
- staffing shortage display
- shift-specific generation tuning
- workplace-specific operational rules

notes:
ShiftManager is the primary source app
for the additive candidate group.

# ------------------------------------------------------------
# 2-6. InvoiceFlow
# ------------------------------------------------------------

application:
InvoiceFlow

app_type:
invoice issuance and payment confirmation front

personaos_common_usage:
- Consultation Common: candidate
- Secretary Interaction Common: not-applicable
- Notification Semantics Common: planned
- Background Common: not-applicable
- VisualRuntime Common: not-applicable
- Summary / Digest Common: planned
- Reminder Common: planned
- Presence / Mood Presentation Common: not-applicable
- Companion Conversation Framing Common: candidate
- Preference Common: candidate

businessos_common_usage:
- Submission Common: current
- ERP Publication Capability: current
- Online Sync Common: current
- App-internal Sharing Common: planned
- Business AI Worker: planned
- External Notification Delivery Common: current
- Channel Routing Common: current
- Approval / Review Surface Common: current
- Draft / Work-in-progress Common: current
- Attachment / Evidence Common: current
- Activity Log / Audit Trail Common: current
- Assignment / Work Queue Common: planned
- Contact / Destination Common: current
- Template / Generated Output Common: current
- Install Guidance / Cross-app Launch Common: planned

shiftmanager_additive_candidate_usage:
- Publication / Versioned Snapshot Common: candidate
- Visibility Scope Evaluation Common: candidate
- Rule-based Draft Generation Common: candidate
- Generation Warning / Shortage Review Common: candidate
- Schedule / Time-slot Planning Common: not-applicable
- Publish Target Confirmation Common: candidate

app_specific_residuals:
- invoice issue flow
- payment confirmation UI
- receipt issuance UI
- invoice PDF preview
- banking confirmation details

notes:
Publication and attachment/evidence are especially important here.

# ------------------------------------------------------------
# 2-7. ExpenseSettlement
# ------------------------------------------------------------

application:
ExpenseSettlement

app_type:
expense request and settlement application

personaos_common_usage:
- Consultation Common: candidate
- Secretary Interaction Common: candidate
- Notification Semantics Common: planned
- Background Common: not-applicable
- VisualRuntime Common: candidate
- Summary / Digest Common: planned
- Reminder Common: planned
- Presence / Mood Presentation Common: candidate
- Companion Conversation Framing Common: candidate
- Preference Common: candidate

businessos_common_usage:
- Submission Common: current
- ERP Publication Capability: planned
- Online Sync Common: current
- App-internal Sharing Common: planned
- Business AI Worker: planned
- External Notification Delivery Common: current
- Channel Routing Common: current
- Approval / Review Surface Common: current
- Draft / Work-in-progress Common: current
- Attachment / Evidence Common: current
- Activity Log / Audit Trail Common: current
- Assignment / Work Queue Common: planned
- Contact / Destination Common: planned
- Template / Generated Output Common: candidate
- Install Guidance / Cross-app Launch Common: planned

shiftmanager_additive_candidate_usage:
- Publication / Versioned Snapshot Common: candidate
- Visibility Scope Evaluation Common: candidate
- Rule-based Draft Generation Common: candidate
- Generation Warning / Shortage Review Common: candidate
- Schedule / Time-slot Planning Common: not-applicable
- Publish Target Confirmation Common: candidate

app_specific_residuals:
- expense form UI
- receipt capture flow
- category allocation UI
- reimbursement summary screen
- expense-specific review wording

notes:
Has strong overlap with approval, evidence, and draft handling.

# ------------------------------------------------------------
# 2-8. ProjectFlow
# ------------------------------------------------------------

application:
ProjectFlow

app_type:
project planning and management application

personaos_common_usage:
- Consultation Common: candidate
- Secretary Interaction Common: candidate
- Notification Semantics Common: planned
- Background Common: not-applicable
- VisualRuntime Common: candidate
- Summary / Digest Common: current
- Reminder Common: current
- Presence / Mood Presentation Common: candidate
- Companion Conversation Framing Common: candidate
- Preference Common: candidate

businessos_common_usage:
- Submission Common: planned
- ERP Publication Capability: planned
- Online Sync Common: current
- App-internal Sharing Common: current
- Business AI Worker: planned
- External Notification Delivery Common: current
- Channel Routing Common: current
- Approval / Review Surface Common: planned
- Draft / Work-in-progress Common: current
- Attachment / Evidence Common: current
- Activity Log / Audit Trail Common: current
- Assignment / Work Queue Common: current
- Contact / Destination Common: planned
- Template / Generated Output Common: candidate
- Install Guidance / Cross-app Launch Common: planned

shiftmanager_additive_candidate_usage:
- Publication / Versioned Snapshot Common: candidate
- Visibility Scope Evaluation Common: candidate
- Rule-based Draft Generation Common: current
- Generation Warning / Shortage Review Common: current
- Schedule / Time-slot Planning Common: candidate
- Publish Target Confirmation Common: candidate

app_specific_residuals:
- project board UI
- milestone timeline UI
- progress visualization
- project-specific task grouping
- project-level navigation structure

notes:
ProjectFlow is a good consumer
of rule-based draft generation and queue semantics.

# ------------------------------------------------------------
# 2-9. MBO
# ------------------------------------------------------------

application:
MBO

app_type:
goal setting and progress management application

personaos_common_usage:
- Consultation Common: current
- Secretary Interaction Common: candidate
- Notification Semantics Common: planned
- Background Common: not-applicable
- VisualRuntime Common: candidate
- Summary / Digest Common: current
- Reminder Common: current
- Presence / Mood Presentation Common: candidate
- Companion Conversation Framing Common: candidate
- Preference Common: candidate

businessos_common_usage:
- Submission Common: planned
- ERP Publication Capability: planned
- Online Sync Common: current
- App-internal Sharing Common: planned
- Business AI Worker: planned
- External Notification Delivery Common: current
- Channel Routing Common: current
- Approval / Review Surface Common: planned
- Draft / Work-in-progress Common: current
- Attachment / Evidence Common: candidate
- Activity Log / Audit Trail Common: current
- Assignment / Work Queue Common: planned
- Contact / Destination Common: planned
- Template / Generated Output Common: candidate
- Install Guidance / Cross-app Launch Common: planned

shiftmanager_additive_candidate_usage:
- Publication / Versioned Snapshot Common: candidate
- Visibility Scope Evaluation Common: candidate
- Rule-based Draft Generation Common: current
- Generation Warning / Shortage Review Common: current
- Schedule / Time-slot Planning Common: candidate
- Publish Target Confirmation Common: candidate

app_specific_residuals:
- goal setting UI
- process definition UI
- progress review screen
- self-evaluation UX
- MBO-specific wording

notes:
MBO naturally consumes consultation,
summary, reminder, and draft generation patterns.

# ============================================================
# 3. MATRIX OPERATING RULE
# ============================================================

For every new or updated application:

1. list the app here
2. map PersonaOS common usage
3. map BusinessOS common usage
4. map additive candidate usage if relevant
5. write app-specific residual responsibility explicitly

# ============================================================
# 4. SUMMARY
# ============================================================

This matrix is the application-side reuse view.

It helps CivilizationSystem keep a stable rule:
- common meaning is reused
- common capability is reused
- only app-specific presentation and flow remain local

# ============================================================

# ============================================================
# ADDITIVE PROMOTION MATRIX ENTRIES
# ============================================================

# ------------------------------------------------------------
# A. GAMEOS-ORIGINATED CROSS-SYSTEM PATTERNS
# ------------------------------------------------------------

component_usage_matrix:

- component_name: External Reflection Chain
  owner_side: Application common
  source_origin: GameOS
  usage:
    - GameOS: current
    - PersonaOS: candidate
    - LifeOS: candidate
    - BusinessOS: candidate
    - future application-layer systems: candidate
  notes:
    strongest reflection-chain reusable pattern

- component_name: External Intake Boundary
  owner_side: Application common
  source_origin: GameOS
  usage:
    - GameOS: current
    - PersonaOS: candidate
    - CivilizationOS: candidate
    - Foundation: candidate
  notes:
    safe intake boundary for proposal / request / signal entry

- component_name: Transformed Adoption Boundary
  owner_side: Application common
  source_origin: GameOS
  usage:
    - GameOS: current
    - PersonaOS: candidate
    - CivilizationOS: candidate
    - BusinessOS: candidate
  notes:
    transforms source-local meaning before canonical adoption

- component_name: Reflection Candidate Contract
  owner_side: Application common
  source_origin: GameOS
  usage:
    - GameOS: current
    - PersonaOS: candidate
    - LifeOS: candidate
    - BusinessOS: candidate

- component_name: Reflection Decision Contract
  owner_side: Application common
  source_origin: GameOS
  usage:
    - GameOS: current
    - PersonaOS: candidate
    - BusinessOS: candidate
    - LifeOS: candidate

- component_name: Reflection Sync Result Contract
  owner_side: Application common
  source_origin: GameOS
  usage:
    - GameOS: current
    - PersonaOS: candidate
    - CivilizationOS: candidate
    - BusinessOS: candidate

- component_name: Idempotent Dispatch Pattern
  owner_side: Application common
  source_origin: GameOS
  usage:
    - GameOS: current
    - all-systems: candidate

- component_name: Eligibility Gate Pattern
  owner_side: Application common
  source_origin: GameOS
  usage:
    - GameOS: current
    - CivilizationOS: candidate
    - BusinessOS: candidate
    - applications: candidate

- component_name: Controlled Settlement Separation Pattern
  owner_side: BusinessOS common
  source_origin: GameOS
  usage:
    - GameOS: current
    - CivilizationOS: candidate
    - BusinessOS: candidate

- component_name: Continuous Meaning Filter
  owner_side: Application common
  source_origin: GameOS
  usage:
    - GameOS: current
    - PersonaOS: candidate
    - LifeOS: candidate
    - BusinessOS: candidate

# ------------------------------------------------------------
# B. BUSINESSOS-ORIGINATED WORKER / GOVERNANCE PATTERNS
# ------------------------------------------------------------

- component_name: AI Worker Foundation Web
  owner_side: BusinessOS common
  source_origin: BusinessOS
  usage:
    - PocketSecretary Enterprise: planned
    - advisory apps: candidate
    - execution work apps: candidate
    - embedded business app surfaces: candidate

- component_name: AI Worker Lending
  owner_side: BusinessOS common
  source_origin: BusinessOS
  usage:
    - PocketSecretary Enterprise: planned
    - advisory apps: candidate
    - execution apps: candidate
    - CRM / project / expense apps: candidate

- component_name: Disclaimer and Consent Core
  owner_side: BusinessOS common
  source_origin: BusinessOS
  usage:
    - protected-domain advisory apps: candidate
    - high-risk work apps: candidate
    - governed business fronts: candidate

- component_name: Job Linkage Core
  owner_side: BusinessOS common
  source_origin: BusinessOS
  usage:
    - PocketSecretary Enterprise: candidate
    - advisory apps: candidate
    - execution apps: candidate
    - embedded worker apps: candidate

- component_name: Output Handoff Core
  owner_side: BusinessOS common
  source_origin: BusinessOS
  usage:
    - advisory apps: candidate
    - execution apps: candidate
    - artifact-producing apps: candidate

- component_name: Review and Approval Handoff Core
  owner_side: BusinessOS common
  source_origin: BusinessOS
  usage:
    - approval-oriented workflow apps: candidate
    - governed worker apps: candidate
    - artifact review apps: candidate

- component_name: AI Worker Audit Trace Core
  owner_side: BusinessOS common
  source_origin: BusinessOS
  usage:
    - governed worker apps: candidate
    - advisory apps: candidate
    - execution apps: candidate

# ------------------------------------------------------------
# C. POCKETSECRETARY / ESTIMATECREATOR FRONT COMMONS
# ------------------------------------------------------------

- component_name: Secretary Wording Resolution Common
  owner_side: PersonaOS common
  source_origin: PocketSecretary
  usage:
    - PocketSecretary: current
    - secretary-facing apps: candidate
    - companion-facing apps: candidate

- component_name: Cross-app Launch Contract Common
  owner_side: Application common
  source_origin:
    - PocketSecretary
    - EstimateCreator
  usage:
    - PocketSecretary: current
    - EstimateCreator: planned
    - NameCardManager: planned
    - cross-app front surfaces: candidate

- component_name: Auth Inheritance / Cross-app Auth Context Common
  owner_side: BusinessOS common
  source_origin:
    - PocketSecretary
    - EstimateCreator
  usage:
    - PocketSecretary -> EstimateCreator: planned
    - PocketSecretary -> NameCardManager: planned
    - future BusinessOS launches: candidate

# ------------------------------------------------------------
# D. PORTAL / ENTRY COMMONS
# ------------------------------------------------------------

- component_name: OS Entry Gateway Common
  owner_side: Application common
  source_origin: Civilization Portal Site
  usage:
    - Civilization Portal Site: current
    - future cross-system launch hubs: candidate
    - future official gateway surfaces: candidate

- component_name: Entry Eligibility Decision Common
  owner_side: Application common
  source_origin: Civilization Portal Site
  usage:
    - Civilization Portal Site: current
    - future launch-decision surfaces: candidate
    - future centralized access gateways: candidate

- component_name: Cross-OS Entry Policy Common
  owner_side: Application common
  source_origin: Civilization Portal Site
  usage:
    - Civilization Portal Site: current
    - future system-level directory services: candidate
    - future centralized entry controllers: candidate


# ============================================================
# PROJECTFLOW HIGH-PRIORITY + PREMIUM ENTITLEMENT MATRIX ENTRIES
# ============================================================

component_usage_matrix:

- component_name: Sync Status And Retry Visibility Component
  owner_side: BusinessOS common
  source_origin: ProjectFlow
  usage:
    - ProjectFlow: current
    - NameCardManager: candidate
    - InvoiceFlow: candidate
    - ExpenseSettlement: candidate
    - other BusinessOS-integrated applications: candidate
  notes:
    Strong sync-surface extension candidate aligned with Online Sync Common.

- component_name: Spreadsheet Export Request Component
  owner_side: BusinessOS common
  source_origin: ProjectFlow
  usage:
    - ProjectFlow: current
    - ShiftManager: candidate
    - InvoiceFlow: candidate
    - ExpenseSettlement: candidate
    - portfolio apps: candidate
    - MBO: candidate
  notes:
    Reusable spreadsheet export request/settings component.

- component_name: Human Editable Report Draft Generation Component
  owner_side: BusinessOS common
  source_origin: ProjectFlow
  usage:
    - ProjectFlow: current
    - MBO: candidate
    - ShiftManager: candidate
    - portfolio apps: candidate
    - operations reporting apps: candidate
  notes:
    Draft-first report generation with human editing and approval linkage.

- component_name: Read Only Entitlement Guard Component
  owner_side: BusinessOS common
  source_origin: ProjectFlow
  usage:
    - ProjectFlow: current
    - EstimateCreator: candidate
    - QuickForecast: candidate
    - monthly-use applications: candidate
  notes:
    Surface/behavior extension under Application Premium Entitlement Common.

- component_name: Approval Aware Draft Output Flow
  owner_side: BusinessOS common
  source_origin: ProjectFlow
  usage:
    - ProjectFlow: current
    - customer-facing report apps: candidate
    - internal review apps: candidate
    - explanation material generation flows: candidate
  notes:
    Generated output remains draft-only until human review/approval.

- component_name: Application Premium Entitlement Common
  owner_side: BusinessOS common
  source_origin: EstimateCreator
  usage:
    - EstimateCreator: current
    - QuickForecast future premiumization: candidate
    - MBO: candidate
    - InvoiceFlow: candidate
    - ExpenseSettlement: candidate
    - template-enabled BusinessOS apps: candidate
    - structured memo / QA / premium support apps: candidate
  notes:
    Parent premium / entitlement common covering state semantics,
    offline cached entitlement, downgrade-safe read/write split,
    visible premium lock UI, and deeplink-time entitlement enforcement.

relationship_notes:
- Application Premium Entitlement Common is the parent common candidate.
- Read Only Entitlement Guard Component is a surface/behavior extension candidate under it.


# ============================================================
# PREMIUM ENTITLEMENT RELATION MATRIX NOTE
# ============================================================

relationship_note:
Application Premium Entitlement Common is the parent reusable common
for premium entitlement semantics.

surface_extension_candidates:
- Read Only Entitlement Guard Component
- Read Only Mode Banner

matrix_interpretation_rule:
- usage of Read Only Entitlement Guard Component
  should be interpreted as usage of a child/surface extension
  under the parent Application Premium Entitlement Common
- usage of Read Only Mode Banner
  should be interpreted as an even narrower UI extension
  under the same entitlement family

future_mapping_rule:
If another application uses visible-but-locked premium UI,
offline entitlement checks,
or downgrade-safe read/write split,
it should map first to Application Premium Entitlement Common
before creating a new entitlement-named component.

# ============================================================

# ============================================================
# NAMECARDMANAGER PROMOTE-HIGHEST MATRIX ENTRIES
# ============================================================

component_usage_matrix:

- component_name: Contact Profile Screen Common
  owner_side: BusinessOS common
  source_origin: NameCardManager
  usage:
    - NameCardManager: current
    - customer management apps: candidate
    - vendor management apps: candidate
    - lead management apps: candidate
    - sales support apps: candidate
    - PocketSecretary business-facing surfaces: candidate
  notes:
    Reusable baseline for person/business profile presentation.

- component_name: Responsibility Scope Presentation Common
  owner_side: BusinessOS common
  source_origin: NameCardManager
  usage:
    - NameCardManager: current
    - approval systems: candidate
    - customer management apps: candidate
    - ERP-related surfaces: candidate
    - organization / assignee management apps: candidate
    - deal / case management apps: candidate
  notes:
    Reusable block for authority, decision scope, responsibility scope, work scope, and influence visibility.

- component_name: Visibility Preview Common
  owner_side: BusinessOS common
  source_origin: NameCardManager
  usage:
    - NameCardManager: current
    - sharing-enabled apps: candidate
    - ERP-linked apps: candidate
    - publication preview surfaces: candidate
    - approval-before-release apps: candidate
  notes:
    Preview surface for what will be visible, shared, or published before release.
    Should later be reconciled with Publish Target Confirmation Common.

- component_name: Publication Preflight Common
  owner_side: BusinessOS common
  source_origin: NameCardManager
  usage:
    - NameCardManager: current
    - ERP publication apps: candidate
    - external sharing apps: candidate
    - internal publication apps: candidate
    - approval-linked send/publish flows: candidate
  notes:
    Pre-publication diagnostic capability including required-field checks,
    contamination checks, summary readiness, and blocking/warning separation.

- component_name: Import Mapping Common
  owner_side: BusinessOS common
  source_origin: NameCardManager
  usage:
    - NameCardManager: current
    - customer import flows: candidate
    - product import flows: candidate
    - invoice import flows: candidate
    - master migration tools: candidate
    - ERP front migration tools: candidate
  notes:
    Reusable mapping component for source-column to target-field alignment.

- component_name: Import Diagnostic Common
  owner_side: BusinessOS common
  source_origin: NameCardManager
  usage:
    - NameCardManager: current
    - CSV intake flows: candidate
    - data migration tools: candidate
    - master maintenance tools: candidate
    - ERP front import tools: candidate
  notes:
    Reusable intake diagnostic layer for missing required values,
    invalid formats, duplicate candidates, variation candidates,
    and suspicious-record warnings.

relationship_notes:
- Contact Profile Screen Common and Responsibility Scope Presentation Common
  form the strongest NameCardManager-derived business profile family.
- Visibility Preview Common and Publication Preflight Common
  form the strongest publication / release-readiness family.
- Import Mapping Common and Import Diagnostic Common
  form the strongest migration / intake family.


# ============================================================
# MASTER REGISTRY ALIGNMENT NOTE
# ============================================================

master_registry_alignment:
The complete cross-application registration scope
is now consolidated in:

- 011_APPLICATION_COMMON_COMPONENT_MASTER_REGISTRY.md

matrix_rule:
Use the master registry for broad inventory and family grouping,
and use this matrix for explicit app-to-component usage mapping.


# ============================================================
# CIVILIZATION OS HIGH-PRIORITY MATRIX ENTRIES
# ============================================================

component_usage_matrix:

- component_name: Multilingual Content Review Common
  owner_side: BusinessOS common
  source_origin: Civilization OS additive delta
  usage:
    - multilingual apps: candidate
    - docs generators: candidate
    - notification generators: candidate
    - multilingual customer-output apps: candidate
  notes:
    Review/governance layer for translation completeness,
    glossary enforcement, and multilingual quality control.

- component_name: Currency Conversion / Rate Policy Common
  owner_side: BusinessOS common
  source_origin: Civilization OS additive delta
  usage:
    - multicurrency apps: candidate
    - reports: candidate
    - marketplace: candidate
    - finance apps: candidate
    - ERP bridge: candidate
  notes:
    Governance/policy layer for rate selection,
    conversion basis, historical rate pinning,
    and conversion traceability.

- component_name: Civilization National Currency Bridge Common
  owner_side: Civilization common
  source_origin: Civilization OS additive delta
  usage:
    - Civilization economy: candidate
    - marketplace: candidate
    - streaming: candidate
    - game: candidate
    - finance-adjacent apps: candidate
  notes:
    Boundary family for Civilization national currencies,
    kept distinct from generic multicurrency handling.

relationship_notes:
- Multilingual Content Review Common strengthens the multilingual family
  as a governance/review lane.
- Currency Conversion / Rate Policy Common strengthens the multicurrency family
  as a policy/control lane.
- Civilization National Currency Bridge Common remains a Civilization-boundary family,
  not a generic multicurrency display feature.


# ============================================================
# UNIMPLEMENTED-SCOPE HIGH-PRIORITY MATRIX ENTRIES
# ============================================================

component_usage_matrix:

- component_name: Feature Addition Governance Common
  owner_side: Civilization common
  source_origin: unimplemented-scope additive ledger
  usage:
    - all apps: candidate
    - all OS: candidate
    - roadmap/review workflows: candidate
    - planning tools: candidate
  notes:
    Governance layer for classifying feature-addition requests
    and linking them to commonization judgment, impact scope,
    and release-lane review.

- component_name: Multilingual Status Vocabulary Common
  owner_side: Civilization common
  source_origin: unimplemented-scope additive ledger
  usage:
    - all OS: candidate
    - all apps: candidate
    - workflow/status-heavy apps: candidate
    - multilingual products: candidate
  notes:
    Meaning-safe multilingual status-vocabulary governance layer
    aligned with stage-separation semantics.

- component_name: Feature Expansion Impact Assessment Common
  owner_side: Civilization common
  source_origin: unimplemented-scope additive ledger
  usage:
    - all OS: candidate
    - all apps: candidate
    - implementation planning: candidate
    - controlled change review: candidate
  notes:
    Cross-change impact assessment layer
    spanning UI, API, permission, notification, document/export,
    translation, and multicurrency impact.

relationship_notes:
- Feature Addition Governance Common is the intake/classification layer.
- Feature Expansion Impact Assessment Common is the downstream impact-review layer.
- Multilingual Status Vocabulary Common is a multilingual governance safeguard
  connected to stage-separation and status semantics.


# ============================================================
# LIFEOS / BUSINESSOS BACKLOG MATRIX ENTRIES (28 + 29)
# ============================================================

component_usage_matrix:

- component_name: LifeOS Rival Comparison Matrix
  owner_side: Application common
  source_origin: LifeOS undone additive ledger
  usage:
    - LifeOS: candidate
    - rival-analysis workflows: candidate
    - product comparison apps: candidate
  notes:
    Reusable matrix for LifeOS-vs-rival comparison
    across function, privacy, review, dashboard,
    and reminder quality dimensions.

- component_name: Multilingual Localization Core
  owner_side: BusinessOS common
  source_origin: BusinessOS unimplemented-only additions
  usage:
    - all apps with user-facing text: candidate
    - advisory apps: candidate
    - execution apps: candidate
    - embedded surfaces: candidate
  notes:
    Top-tier multilingual localization foundation
    for UI, output, and business content.

- component_name: Multi-Currency Core
  owner_side: BusinessOS common
  source_origin: BusinessOS unimplemented-only additions
  usage:
    - expense apps: candidate
    - invoicing apps: candidate
    - receivable apps: candidate
    - product pricing apps: candidate
    - marketplace-related work: candidate
  notes:
    Top-tier multicurrency foundation
    for money objects, rate reference,
    conversion timing, and localized monetary display.

- component_name: Rival Analysis Core
  owner_side: BusinessOS common
  source_origin: BusinessOS unimplemented-only additions
  usage:
    - product portfolio apps: candidate
    - project / planning apps: candidate
    - MBO support: candidate
    - consulting apps: candidate
    - proposal-generation apps: candidate
  notes:
    Shared rival-analysis backbone for planning and strategy use.

- component_name: Feature Addition Planning Core
  owner_side: BusinessOS common
  source_origin: BusinessOS unimplemented-only additions
  usage:
    - app planning: candidate
    - roadmap planning: candidate
    - product portfolio management: candidate
    - consulting support: candidate
  notes:
    Shared planning backbone for feature requests, proposals,
    rationale, priority, and release targets.

- component_name: Translation Resource Registry
  owner_side: BusinessOS common
  source_origin: BusinessOS unimplemented-only additions
  usage:
    - UI localization: candidate
    - generated outputs: candidate
    - multilingual business apps: candidate
  notes:
    Shared registry for translation resources and localized strings.

- component_name: Currency Registry Core
  owner_side: BusinessOS common
  source_origin: BusinessOS unimplemented-only additions
  usage:
    - all money-aware apps: candidate
  notes:
    Shared registry of supported currencies.

- component_name: Exchange Rate Reference Core
  owner_side: BusinessOS common
  source_origin: BusinessOS unimplemented-only additions
  usage:
    - cross-currency calculations: candidate
    - finance apps: candidate
    - ERP bridge: candidate
  notes:
    Shared exchange-rate reference and conversion-support core.

- component_name: Feature Gap Analysis Core
  owner_side: BusinessOS common
  source_origin: BusinessOS unimplemented-only additions
  usage:
    - planning apps: candidate
    - product strategy workflows: candidate
    - roadmap review: candidate
  notes:
    Shared core for identifying gaps between current product
    and rivals or target vision.

- component_name: Rival Comparison Matrix Core
  owner_side: BusinessOS common
  source_origin: BusinessOS unimplemented-only additions
  usage:
    - planning: candidate
    - proposals: candidate
    - product strategy: candidate
  notes:
    Reusable comparison matrix core across apps.

relationship_notes:
- LifeOS Rival Comparison Matrix is a LifeOS-specific strengthening case
  under the broader rival-analysis / comparison-matrix family.
- Multilingual Localization Core and Translation Resource Registry
  form the BusinessOS localization-foundation axis.
- Multi-Currency Core, Currency Registry Core, and Exchange Rate Reference Core
  form the BusinessOS multicurrency-foundation axis.
- Rival Analysis Core, Rival Comparison Matrix Core, and Feature Gap Analysis Core
  form the planning/strategy analysis axis.
- Feature Addition Planning Core is the planning/governance backbone
  on top of that analysis axis.


# ============================================================
# HIGHER-ORDER DELTA MATRIX ENTRIES (30)
# ============================================================

component_usage_matrix:

- component_name: Rival Analysis Framework
  owner_side: BusinessOS common
  source_origin: higher-order delta 30
  usage:
    - all applications: candidate
    - BusinessOS: candidate
    - product planning: candidate
    - strategy workflows: candidate
  notes:
    Higher-order framework above rival registry/matrix details
    for structured competitor analysis.

- component_name: Feature Addition Backlog Pattern
  owner_side: BusinessOS common
  source_origin: higher-order delta 30
  usage:
    - all applications: candidate
    - BusinessOS: candidate
    - planning/backlog workflows: candidate
  notes:
    Higher-order backlog pattern above simple feature proposals,
    connecting request intake, dependency, impact surface,
    and rollout readiness.

- component_name: Multilingual Resource Contract
  owner_side: Civilization common
  source_origin: higher-order delta 30
  usage:
    - all applications: candidate
    - PersonaOS: candidate
    - BusinessOS: candidate
    - CivilizationOS: candidate
  notes:
    Contract-level multilingual primitive
    for language keys, locale-aware lookup, and fallback handling.

- component_name: Multi-Currency Monetary Contract
  owner_side: BusinessOS common
  source_origin: higher-order delta 30
  usage:
    - all financial domains: candidate
    - BusinessOS: candidate
    - CivilizationOS: candidate
    - GameOS: candidate
  notes:
    Contract-level money primitive treating monetary values
    as amount + currency code + precision + rounding + context.

- component_name: Currency Conversion and Display Pattern
  owner_side: BusinessOS common
  source_origin: higher-order delta 30
  usage:
    - all financial domains: candidate
    - BusinessOS: candidate
    - CivilizationOS: candidate
    - GameOS: candidate
  notes:
    Higher-order safe display/conversion pattern
    preserving source-currency truth and conversion traceability.

relationship_notes:
- Rival Analysis Framework sits above rival registry/matrix details.
- Feature Addition Backlog Pattern sits above feature request/proposal records.
- Multilingual Resource Contract sits above localization registries/resources.
- Multi-Currency Monetary Contract sits above money-value and currency-core families.
- Currency Conversion and Display Pattern sits above FX policy/display families.


# ============================================================
# STREAMINGOS HIGH-PRIORITY MATRIX ENTRIES (31)
# ============================================================

component_usage_matrix:

- component_name: Creator Studio Shell
  owner_side: Application common
  source_origin: StreamingOS additive ledger
  usage:
    - StreamingOS: candidate
    - future media apps: candidate
    - creator-facing apps: candidate
  notes:
    Reusable creator-platform shell
    for upload, metadata, thumbnail,
    visibility, review status, and publish confirmation.

- component_name: Moderation Workspace Component
  owner_side: Application common
  source_origin: StreamingOS additive ledger
  usage:
    - StreamingOS: candidate
    - community apps: candidate
    - media apps: candidate
  notes:
    Reusable moderation workspace
    for queue, report handling,
    appeals, restoration, and moderation operations.

- component_name: Notification Inbox Framework
  owner_side: Application common
  source_origin: StreamingOS additive ledger
  usage:
    - StreamingOS: candidate
    - cross-application notification base: candidate
    - creator/community apps: candidate
  notes:
    Inbox-oriented notification surface
    above raw delivery-only notification behavior.

- component_name: Discovery / Continuity Framework
  owner_side: Application common
  source_origin: StreamingOS additive ledger
  usage:
    - StreamingOS: candidate
    - content discovery apps: candidate
    - media/community apps: candidate
  notes:
    Reusable continuity framework
    for home, discovery, search, history,
    follow, playlist, and queue.

relationship_notes:
- Creator Studio Shell is the creator-side media authoring family.
- Moderation Workspace Component is the moderation operations family.
- Notification Inbox Framework is the inbox-oriented notification family.
- Discovery / Continuity Framework is the viewer/content continuity family.


# ============================================================
# EXPENSESETTLEMENT FORMAL-REVIEW MATRIX ENTRIES (015)
# ============================================================

component_usage_matrix:

- component_name: Submit / Approval State Badge System
  owner_side: BusinessOS common
  source_origin: ExpenseSettlement formal review ledger
  usage:
    - ExpenseSettlement: adopted
    - workflow apps: candidate
    - approval apps: candidate
    - request / review apps: candidate
  notes:
    Reusable approval-state visibility surface
    for submit/approval/review/publication state expression.

- component_name: Approval Action Surface
  owner_side: BusinessOS common
  source_origin: ExpenseSettlement formal review ledger
  usage:
    - ExpenseSettlement: adopted
    - approval apps: candidate
    - workflow apps: candidate
    - review apps: candidate
  notes:
    Reusable action surface for approve / return / reject
    and reason-required negative actions.

- component_name: Evidence / Attachment Intake Module
  owner_side: BusinessOS common
  source_origin: ExpenseSettlement formal review ledger
  usage:
    - ExpenseSettlement: adopted
    - InvoiceFlow: candidate
    - contract apps: candidate
    - audit/evidence apps: candidate
    - attachment-heavy business apps: candidate
  notes:
    Reusable attachment-intake family
    for preview, replacement, and state handling.

- component_name: Validation Result Summary Panel
  owner_side: Application common
  source_origin: ExpenseSettlement formal review ledger
  usage:
    - ExpenseSettlement: adopted
    - complex input apps: candidate
    - request / registration apps: candidate
    - business form apps: candidate
  notes:
    Reusable validation summary surface
    for missing items, warnings, and correction guidance.

- component_name: Explicit External Publication Gateway Surface
  owner_side: BusinessOS common
  source_origin: ExpenseSettlement formal review ledger
  usage:
    - ExpenseSettlement: adopted
    - ERP-linked apps: candidate
    - external publication apps: candidate
    - outbound integration apps: candidate
  notes:
    Reusable explicit outbound publication boundary surface
    with request/result separation and failure visibility.

relationship_notes:
- Submit / Approval State Badge System and Approval Action Surface
  form a workflow-visible approval family.
- Evidence / Attachment Intake Module strengthens the attachment/evidence family.
- Validation Result Summary Panel strengthens the complex-input validation family.
- Explicit External Publication Gateway Surface strengthens the outbound integration boundary family.


# ============================================================
# ORDERFLOW / TALENTGROWTH FORMAL-REVIEW MATRIX ENTRIES (016 / 017)
# ============================================================

component_usage_matrix:

- component_name: Handoff Payload Envelope Common
  owner_side: BusinessOS common
  source_origin: OrderFlow formal review ledger
  usage:
    - OrderFlow: adopted
    - cross-app handoff apps: candidate
    - workflow-transfer apps: candidate
  notes:
    Reusable payload envelope
    for source/target metadata and snapshot/context transport.

- component_name: Business Status Badge Common
  owner_side: Application common
  source_origin: OrderFlow formal review ledger
  usage:
    - OrderFlow: adopted
    - business apps: candidate
    - workflow apps: candidate
    - coordination apps: candidate
  notes:
    Reusable state-badge family
    for compact/full business state visibility.

- component_name: Timeline / History Entry Common
  owner_side: Application common
  source_origin: OrderFlow formal review ledger
  usage:
    - OrderFlow: adopted
    - workflow apps: candidate
    - history/audit apps: candidate
    - timeline-centric apps: candidate
  notes:
    Reusable chronology/event-row surface
    for historical progression and change tracking.

- component_name: Audit Log Surface Common
  owner_side: BusinessOS common
  source_origin: OrderFlow formal review ledger
  usage:
    - OrderFlow: adopted
    - workflow apps: candidate
    - ERP-linked apps: candidate
    - business audit surfaces: candidate
  notes:
    Reusable audit surface
    for who-changed-what and when.

- component_name: Customer Proposal / Confirmation Common
  owner_side: Application common
  source_origin: OrderFlow formal review ledger
  usage:
    - OrderFlow: adopted
    - customer-facing coordination apps: candidate
    - approval/proposal apps: candidate
  notes:
    Reusable proposal/response structure
    for accepted/rejected/revision-requested patterns.

- component_name: Approval Stepper / Review Progress
  owner_side: BusinessOS common
  source_origin: TalentGrowth formal review ledger
  usage:
    - TalentGrowth: adopted
    - InvoiceFlow: candidate
    - ExpenseSettlement: candidate
    - ProjectFlow: candidate
    - request/review apps: candidate
  notes:
    Reusable progress-stepper surface
    for workflow stage visibility.

- component_name: Review Comment Thread Viewer
  owner_side: BusinessOS common
  source_origin: TalentGrowth formal review ledger
  usage:
    - TalentGrowth: adopted
    - AppDevelopmentStudio: candidate
    - ProjectFlow: candidate
    - ERP review screens: candidate
  notes:
    Reusable threaded review/comment surface.

- component_name: Evidence Attachment Panel
  owner_side: BusinessOS common
  source_origin: TalentGrowth formal review ledger
  usage:
    - TalentGrowth: adopted
    - InvoiceFlow: candidate
    - ExpenseSettlement: candidate
    - ERP audit/review screens: candidate
  notes:
    Reusable evidence-oriented panel
    above simple attachment intake.

- component_name: KPI Summary Card Set
  owner_side: Application common
  source_origin: TalentGrowth formal review ledger
  usage:
    - TalentGrowth: adopted
    - ProjectFlow: candidate
    - InvoiceFlow: candidate
    - ExpenseSettlement: candidate
    - dashboard-style apps: candidate
  notes:
    Reusable KPI summary card family
    for compact metric overviews.

- component_name: Skill / Capability Radar Chart
  owner_side: Application common
  source_origin: TalentGrowth formal review ledger
  usage:
    - TalentGrowth: adopted
    - Mbo: candidate
    - ProjectFlow: candidate
    - evaluation apps: candidate
  notes:
    Reusable multi-axis radar visualization.

- component_name: Gap Analysis Table Viewer
  owner_side: Application common
  source_origin: TalentGrowth formal review ledger
  usage:
    - TalentGrowth: adopted
    - Mbo: candidate
    - ProjectFlow: candidate
    - comparison apps: candidate
  notes:
    Reusable tabular difference viewer.

- component_name: Skill Matrix Grid
  owner_side: Application common
  source_origin: TalentGrowth formal review ledger
  usage:
    - TalentGrowth: adopted
    - ProjectFlow: candidate
    - Mbo: candidate
    - matrix-style apps: candidate
  notes:
    Reusable matrix-grid visualization.

- component_name: Person / Employee Summary Card
  owner_side: ERP common
  source_origin: TalentGrowth formal review ledger
  usage:
    - TalentGrowth: adopted
    - ERP: candidate
    - ProjectFlow: candidate
    - Mbo: candidate
  notes:
    Reusable company/person summary surface.

- component_name: Certification / License Ledger Viewer
  owner_side: ERP common
  source_origin: TalentGrowth formal review ledger
  usage:
    - TalentGrowth: adopted
    - ERP: candidate
    - labor / assignment apps: candidate
    - qualification-aware apps: candidate
  notes:
    Reusable ledger-style qualification viewer.

relationship_notes:
- OrderFlow contributes handoff/state/history/audit/proposal families.
- TalentGrowth contributes review/evidence/KPI/visualization/person/qualification families.


# ============================================================
# INVOICEFLOW / PRODUCTPORTFOLIOMANAGER FORMAL-REVIEW MATRIX ENTRIES (018 / 019)
# ============================================================

component_usage_matrix:

- component_name: Document PDF Generation Core
  owner_side: BusinessOS common
  source_origin: InvoiceFlow formal review ledger
  usage:
    - InvoiceFlow: adopted
    - document-output apps: candidate
    - estimate/receipt/invoice apps: candidate
  notes:
    Reusable PDF generation core.

- component_name: Bank Transaction Import / Match Candidate Core
  owner_side: ERP common
  source_origin: InvoiceFlow formal review ledger
  usage:
    - InvoiceFlow: adopted
    - finance apps: candidate
    - ERP-linked match apps: candidate
  notes:
    Reusable bank import and match-candidate family.

- component_name: Manual Payment / Receipt Confirmation Core
  owner_side: BusinessOS common
  source_origin: InvoiceFlow formal review ledger
  usage:
    - InvoiceFlow: adopted
    - payment-confirmation apps: candidate
    - exception-handling apps: candidate
  notes:
    Reusable manual confirmation family.

- component_name: Receipt Issuance Core
  owner_side: BusinessOS common
  source_origin: InvoiceFlow formal review ledger
  usage:
    - InvoiceFlow: adopted
    - receipt/payment apps: candidate
    - document issuance apps: candidate
  notes:
    Reusable receipt issuance family.

- component_name: Collection Action / Follow-up History Core
  owner_side: BusinessOS common
  source_origin: InvoiceFlow formal review ledger
  usage:
    - InvoiceFlow: adopted
    - follow-up apps: candidate
    - collections/support/reminder apps: candidate
  notes:
    Reusable action/history family.

- component_name: Priority Queue / Work Ranking Core
  owner_side: Application common
  source_origin: InvoiceFlow formal review ledger
  usage:
    - InvoiceFlow: adopted
    - work-queue apps: candidate
    - follow-up apps: candidate
    - ranking/priority apps: candidate
  notes:
    Reusable priority queue family.

- component_name: Shared ERP Reflection Request Core
  owner_side: BusinessOS common
  source_origin: InvoiceFlow formal review ledger
  usage:
    - InvoiceFlow: adopted
    - ERP-linked apps: candidate
    - reflection-result apps: candidate
  notes:
    Reusable ERP reflection boundary family.

- component_name: Authority Badge / Master Boundary Display Core
  owner_side: BusinessOS common
  source_origin: InvoiceFlow formal review ledger
  usage:
    - InvoiceFlow: adopted
    - ERP-linked apps: candidate
    - business boundary-visibility apps: candidate
  notes:
    Reusable master-boundary display family.

- component_name: Period Switch / Comparison Selector
  owner_side: Application common
  source_origin: ProductPortfolioManager formal review ledger
  usage:
    - ProductPortfolioManager: adopted
    - analytics apps: candidate
    - dashboard/reporting apps: candidate
  notes:
    Reusable period/comparison selector.

- component_name: Score Card / Score Breakdown View
  owner_side: Application common
  source_origin: ProductPortfolioManager formal review ledger
  usage:
    - ProductPortfolioManager: adopted
    - evaluation apps: candidate
    - analytics apps: candidate
  notes:
    Reusable score summary/breakdown family.

- component_name: Proposal Status Workflow UI
  owner_side: Application common
  source_origin: ProductPortfolioManager formal review ledger
  usage:
    - ProductPortfolioManager: adopted
    - proposal apps: candidate
    - workflow apps: candidate
  notes:
    Reusable proposal workflow visibility family.

- component_name: Approval Status / Decision Surface
  owner_side: BusinessOS common
  source_origin: ProductPortfolioManager formal review ledger
  usage:
    - ProductPortfolioManager: adopted
    - approval apps: candidate
    - review/decision apps: candidate
  notes:
    Reusable decision/approval surface.

- component_name: Alert Center Component
  owner_side: Application common
  source_origin: ProductPortfolioManager formal review ledger
  usage:
    - ProductPortfolioManager: adopted
    - monitoring apps: candidate
    - dashboard apps: candidate
  notes:
    Reusable alert center family.

- component_name: Saved Filter / View Preset Component
  owner_side: Application common
  source_origin: ProductPortfolioManager formal review ledger
  usage:
    - ProductPortfolioManager: adopted
    - list-heavy apps: candidate
    - productivity apps: candidate
  notes:
    Reusable saved-filter/view-preset family.

- component_name: Comparison Board Component
  owner_side: Application common
  source_origin: ProductPortfolioManager formal review ledger
  usage:
    - ProductPortfolioManager: adopted
    - comparison apps: candidate
    - decision-support apps: candidate
  notes:
    Reusable comparison board family.

- component_name: Review Session Shell
  owner_side: BusinessOS common
  source_origin: ProductPortfolioManager formal review ledger
  usage:
    - ProductPortfolioManager: adopted
    - review-meeting apps: candidate
    - collaboration/review apps: candidate
  notes:
    Reusable review session shell.

- component_name: Role-aware Action Visibility Layer
  owner_side: Application common
  source_origin: ProductPortfolioManager formal review ledger
  usage:
    - ProductPortfolioManager: adopted
    - workflow apps: candidate
    - role-sensitive business apps: candidate
  notes:
    Reusable role-aware action visibility family.

- component_name: Share Scope Indicator
  owner_side: BusinessOS common
  source_origin: ProductPortfolioManager formal review ledger
  usage:
    - ProductPortfolioManager: adopted
    - sharing apps: candidate
    - collaboration apps: candidate
  notes:
    Reusable share-scope indicator family.

- component_name: Source-of-Truth Reference Strip
  owner_side: BusinessOS common
  source_origin: ProductPortfolioManager formal review ledger
  usage:
    - ProductPortfolioManager: adopted
    - ERP-linked apps: candidate
    - forecast-aware apps: candidate
    - source-boundary apps: candidate
  notes:
    Reusable truth-boundary reference strip.

- component_name: Forecast Metadata Panel
  owner_side: Application common
  source_origin: ProductPortfolioManager formal review ledger
  usage:
    - ProductPortfolioManager: adopted
    - forecast-aware apps: candidate
    - analytics apps: candidate
  notes:
    Reusable forecast metadata family.

relationship_notes:
- InvoiceFlow contributes document/finance/reflection/boundary families.
- ProductPortfolioManager contributes comparison/workflow/alert/filter/source-boundary families.


# ============================================================
# MBO / KNOWLEDGE-PORTAL-SCENARIO-WORKER FORMAL-REVIEW MATRIX ENTRIES (020 / 021)
# ============================================================

component_usage_matrix:

- component_name: Template Selection Surface
  owner_side: Application common
  source_origin: Mbo formal review ledger
  usage:
    - Mbo: adopted
    - evaluation apps: candidate
    - workflow apps: candidate
  notes:
    Reusable template-selection surface.

- component_name: Bulk Schedule Operation Surface
  owner_side: BusinessOS common
  source_origin: Mbo formal review ledger
  usage:
    - Mbo: adopted
    - review apps: candidate
    - scheduling apps: candidate
  notes:
    Reusable controlled batch scheduling surface.

- component_name: KPI Chart Surface
  owner_side: Application common
  source_origin: Mbo formal review ledger
  usage:
    - Mbo: adopted
    - sales apps: candidate
    - project apps: candidate
    - HR apps: candidate
  notes:
    Reusable KPI/trend chart surface.

- component_name: Aggregation Export Job Surface
  owner_side: BusinessOS common
  source_origin: Mbo formal review ledger
  usage:
    - Mbo: adopted
    - ERP front apps: candidate
    - analytics apps: candidate
  notes:
    Reusable export job surface.

- component_name: Evidence Reference Picker
  owner_side: BusinessOS common
  source_origin: Mbo formal review ledger
  usage:
    - Mbo: adopted
    - audit apps: candidate
    - quality apps: candidate
    - project apps: candidate
  notes:
    Reusable evidence-reference picker.

- component_name: Executive Summary Read-Only Viewer
  owner_side: Application common
  source_origin: Mbo formal review ledger
  usage:
    - Mbo: adopted
    - ERP front apps: candidate
    - HR apps: candidate
    - analytics apps: candidate
  notes:
    Reusable read-only executive summary viewer.

- component_name: ERP Resend Control Surface
  owner_side: BusinessOS common
  source_origin: Mbo formal review ledger
  usage:
    - Mbo: adopted
    - ERP-linked apps: candidate
    - integration front apps: candidate
  notes:
    Reusable resend/failure-history control surface.

- component_name: Interview Memo Surface
  owner_side: Application common
  source_origin: Mbo formal review ledger
  usage:
    - Mbo: adopted
    - HR apps: candidate
    - support apps: candidate
    - customer apps: candidate
  notes:
    Reusable timestamped memo surface.

- component_name: Calibration Session Surface
  owner_side: BusinessOS common
  source_origin: Mbo formal review ledger
  usage:
    - Mbo: adopted
    - HR apps: candidate
    - review apps: candidate
  notes:
    Reusable calibration/review session surface.

- component_name: Common Knowledge Access Gateway
  owner_side: Civilization common
  source_origin: Knowledge / Portal / Scenario / Worker formal review ledger
  usage:
    - Portal Site: adopted
    - OS/helpdesk apps: candidate
    - BusinessOS AI worker: candidate
    - study/consultation apps: candidate
  notes:
    Reusable knowledge access gateway.

- component_name: Caller and Scope Resolution Common
  owner_side: Civilization common
  source_origin: Knowledge / Portal / Scenario / Worker formal review ledger
  usage:
    - Portal Site: adopted
    - OS helpdesks: candidate
    - application helpdesks: candidate
    - worker/consultation apps: candidate
  notes:
    Reusable caller/scope resolution family.

- component_name: Knowledge Disclaimer and Safety Profile Common
  owner_side: Civilization common
  source_origin: Knowledge / Portal / Scenario / Worker formal review ledger
  usage:
    - legal support: candidate
    - medical support: candidate
    - general helpdesk: candidate
    - study support: candidate
  notes:
    Reusable safety-profile family for knowledge outputs.

- component_name: Knowledge Source and Review Common
  owner_side: Civilization common
  source_origin: Knowledge / Portal / Scenario / Worker formal review ledger
  usage:
    - all knowledge consumers: candidate
    - worker: candidate
    - helpdesk: candidate
    - study apps: candidate
  notes:
    Reusable source/review/trust-status family.

- component_name: Knowledge Learning Path Common
  owner_side: Civilization common
  source_origin: Knowledge / Portal / Scenario / Worker formal review ledger
  usage:
    - qualification learning: candidate
    - language learning: candidate
    - academic knowledge: candidate
    - onboarding: candidate
  notes:
    Reusable learning-path family.

- component_name: Knowledge Timeline and Event Common
  owner_side: Civilization common
  source_origin: Knowledge / Portal / Scenario / Worker formal review ledger
  usage:
    - history knowledge: candidate
    - civilization history: candidate
    - lore explanation: candidate
    - scenario background: candidate
  notes:
    Reusable timeline/event knowledge family.

- component_name: Character Profile Common
  owner_side: Civilization common
  source_origin: Knowledge / Portal / Scenario / Worker formal review ledger
  usage:
    - history knowledge: candidate
    - scenario lore: candidate
    - guide character info: candidate
    - app character info: candidate
  notes:
    Reusable character/profile family.

- component_name: Entity and Relation Graph Common
  owner_side: Civilization common
  source_origin: Knowledge / Portal / Scenario / Worker formal review ledger
  usage:
    - academic knowledge: candidate
    - legal knowledge: candidate
    - medical knowledge: candidate
    - history: candidate
    - concept explanation: candidate
  notes:
    Reusable entity/relation graph family.

- component_name: AI Helpdesk Entry Common
  owner_side: Portal Site
  source_origin: Knowledge / Portal / Scenario / Worker formal review ledger
  usage:
    - Portal Site: adopted
    - future OS/app helpdesk entry surfaces: candidate
  notes:
    Reusable AI helpdesk entry surface.

- component_name: DB Driven Copy Delivery Common
  owner_side: Portal Site
  source_origin: Knowledge / Portal / Scenario / Worker formal review ledger
  usage:
    - Portal Site: adopted
    - DB-driven content pages: candidate
    - CMS-like display surfaces: candidate
  notes:
    Reusable DB-driven copy delivery family.

- component_name: DB Driven Navigation Tree Common
  owner_side: Portal Site
  source_origin: Knowledge / Portal / Scenario / Worker formal review ledger
  usage:
    - Portal Site: adopted
    - directory UIs: candidate
    - app/OS listing surfaces: candidate
  notes:
    Reusable DB-driven navigation-tree family.

- component_name: Scenario Playback Structure Common
  owner_side: Civilization common
  source_origin: Knowledge / Portal / Scenario / Worker formal review ledger
  usage:
    - story mode: candidate
    - branching scenario: candidate
    - guided narrative playback: candidate
  notes:
    Reusable scenario playback structure family.

- component_name: Scenario to Knowledge Reference Common
  owner_side: Civilization common
  source_origin: Knowledge / Portal / Scenario / Worker formal review ledger
  usage:
    - story mode: candidate
    - lore support: candidate
    - background explanation: candidate
    - scenario helpdesk: candidate
  notes:
    Reusable scenario-to-knowledge bridge family.

- component_name: Fixed Knowledge Access for AI Worker Common
  owner_side: Civilization common
  source_origin: Knowledge / Portal / Scenario / Worker formal review ledger
  usage:
    - BusinessOS AI worker: candidate
    - future worker: candidate
    - assistant agents: candidate
  notes:
    Reusable fixed-knowledge access family.

relationship_notes:
- Mbo contributes template/batch/chart/export/reference/memo/session families.
- Knowledge/Portal contributes knowledge access/governance/graph/navigation/scenario bridge families.


# ============================================================
# WAVE 1B LIMITED FIXED REFLECTION MATRIX ENTRIES (026)
# ============================================================

component_usage_matrix:

- component_name: Local-first Draft / Cache / Replay Common
  owner_side: BusinessOS common
  source_origin: wave 1b limited fixed reflection
  usage:
    - PocketSecretary: candidate
    - NameCardManager: candidate
    - EstimateCreator: candidate
    - ExpenseSettlement: candidate
    - ProjectFlow: candidate
  notes:
    Parent reconciled family for local-first cache and replay behavior.

- component_name: Explicit Share Scope / Delegated Access Common
  owner_side: BusinessOS common
  source_origin: wave 1b limited fixed reflection
  usage:
    - NameCardManager: candidate
    - EstimateCreator: candidate
    - ProjectFlow: candidate
    - LifeOS family-share apps: candidate
  notes:
    Parent reconciled family for explicit share/delegated access semantics.

- component_name: Reminder / Due / Follow-up Common
  owner_side: BusinessOS common
  source_origin: wave 1b limited fixed reflection
  usage:
    - PocketSecretary: candidate
    - ProjectFlow: candidate
    - InvoiceFlow: candidate
    - ExpenseSettlement: candidate
    - Legal / Inheritance / EndOfLife apps: candidate
  notes:
    Parent reconciled family for reminder/due/follow-up meaning.

- component_name: Template Materialization Common
  owner_side: Application common
  source_origin: wave 1b limited fixed reflection
  usage:
    - EstimateCreator: candidate
    - ProjectFlow: candidate
    - PocketSecretary: candidate
    - LifeOS planning/consultation/meal template apps: candidate
  notes:
    Parent reconciled family for template definition/materialization.

relationship_notes:
- These four names are the reconciled parent families from wave 1.
- Absorbed old names should not be reflected independently.


# ============================================================
# WAVE 2B LIMITED FIXED REFLECTION MATRIX ENTRIES (031)
# ============================================================

component_usage_matrix:

- component_name: Goal / Timeline / Milestone Review Common
  owner_side: Application common
  source_origin: wave 2b limited fixed reflection
  usage:
    - ProjectFlow: candidate
    - LifePlanner: candidate
    - TrainingCoach: candidate
    - EndOfLifePlanner: candidate
    - InheritanceSupport: candidate
  notes:
    Parent reconciled family for goals, milestones, timeline review, and progress checks.

- component_name: Consultation Prep / Fact Timeline / Checklist Common
  owner_side: Application common
  source_origin: wave 2b limited fixed reflection
  usage:
    - LegalSupport: candidate
    - BusinessLegalSupport: candidate
    - InheritanceSupport: candidate
    - EndOfLifePlanner: candidate
    - PocketSecretary consultation entry: candidate
  notes:
    Parent reconciled family for consultation preparation structure.

- component_name: Family Shared Record / Consent Common
  owner_side: LifeOS / BusinessOS boundary family
  source_origin: wave 2b limited fixed reflection
  usage:
    - LifePlanner: candidate
    - EndOfLifePlanner: candidate
    - InheritanceSupport: candidate
    - BodyMetrics: candidate
    - MealPlanner: candidate
  notes:
    Parent reconciled family for family sharing and consent boundary structure.

- component_name: Document Bundle / Summary Pack Common
  owner_side: BusinessOS common
  source_origin: wave 2b limited fixed reflection
  usage:
    - LegalSupport: candidate
    - InheritanceSupport: candidate
    - EndOfLifePlanner: candidate
    - EstimateCreator: candidate
    - InvoiceFlow: candidate
    - ExpenseSettlement: candidate
  notes:
    Parent reconciled family for bundle/pack structure and package metadata.

relationship_notes:
- These four names are the reconciled parent families from wave 2.
- Child subfamilies should not be reflected independently in place of these names.


# ============================================================
# WAVE 3B LIMITED FIXED REFLECTION MATRIX ENTRIES (036)
# ============================================================

component_usage_matrix:

- component_name: Approval / Review Visibility Common
  owner_side: BusinessOS common
  source_origin: wave 3b limited fixed reflection
  usage:
    - ExpenseSettlement: candidate
    - OrderFlow: candidate
    - TalentGrowth: candidate
    - ProductPortfolioManager: candidate
    - workflow/review apps: candidate
  notes:
    Parent reconciled family for approval/review visibility and progression semantics.

- component_name: Evidence / Attachment / Reference Common
  owner_side: BusinessOS common
  source_origin: wave 3b limited fixed reflection
  usage:
    - ExpenseSettlement: candidate
    - TalentGrowth: candidate
    - InvoiceFlow: candidate
    - Mbo: candidate
    - audit/review apps: candidate
  notes:
    Parent reconciled family for evidence intake, panel, reference, and metadata/OCR handling.

- component_name: Timeline / Audit / History Common
  owner_side: Application common
  source_origin: wave 3b limited fixed reflection
  usage:
    - OrderFlow: candidate
    - ProductPortfolioManager: candidate
    - ExpenseSettlement: candidate
    - inquiry/history apps: candidate
    - governance/audit apps: candidate
  notes:
    Parent reconciled family for timeline/history/audit-linked chronology.

- component_name: Analytics / Comparison / KPI Common
  owner_side: Application common
  source_origin: wave 3b limited fixed reflection
  usage:
    - TalentGrowth: candidate
    - ProductPortfolioManager: candidate
    - Mbo: candidate
    - analytics/reporting apps: candidate
    - planning/comparison apps: candidate
  notes:
    Parent reconciled family for KPI, comparison, score, chart, matrix/radar, and metadata.

relationship_notes:
- These four names are the reconciled parent families from wave 3.
- Child subfamilies should not be reflected independently in place of these names.


# ============================================================
# WAVE 4B LIMITED FIXED REFLECTION MATRIX ENTRIES (041)
# ============================================================

component_usage_matrix:

- component_name: Knowledge / Portal / Scenario Common
  owner_side: Civilization common
  source_origin: wave 4b limited fixed reflection
  usage:
    - Portal Site: candidate
    - knowledge/helpdesk apps: candidate
    - scenario/lore apps: candidate
    - worker/assistant apps: candidate
    - study/support apps: candidate
  notes:
    Parent reconciled family for knowledge, portal, scenario, and worker access structure.

- component_name: ERP Boundary / Reflection / Finance Operation Common
  owner_side: BusinessOS common
  source_origin: wave 4b limited fixed reflection
  usage:
    - InvoiceFlow: candidate
    - ExpenseSettlement: candidate
    - ERP-linked business apps: candidate
    - finance operation apps: candidate
    - publication/reflection apps: candidate
  notes:
    Parent reconciled family for ERP boundary/reflection and finance-operation structure.

- component_name: People / Employee / Certification Common
  owner_side: ERP / BusinessOS common boundary
  source_origin: wave 4b limited fixed reflection
  usage:
    - TalentGrowth: candidate
    - ERP: candidate
    - Mbo: candidate
    - ProjectFlow: candidate
    - people/certification apps: candidate
  notes:
    Parent reconciled family for people/employee/certification structure.

relationship_notes:
- These three names are the reconciled parent families from wave 4.
- Child subfamilies should not be reflected independently in place of these names.


# ============================================================
# CAREERLAUNCH LIMITED REFLECTION MATRIX ENTRIES (050)
# ============================================================

component_usage_matrix:

- component_name: Document Template Common
  owner_side: Application common
  source_origin: CareerLaunch limited reflection
  usage:
    - CareerLaunch: candidate
    - document-output apps: candidate
    - consultation/document apps: candidate
    - template-driven apps: candidate
  notes:
    Document-oriented template branch family.

- component_name: Revision History Common
  owner_side: Application common
  source_origin: CareerLaunch limited reflection
  usage:
    - CareerLaunch: candidate
    - document workflow apps: candidate
    - compare/restore apps: candidate
  notes:
    Revision/diff/submitted-version branch family.

- component_name: Checklist Execution Common
  owner_side: Application common
  source_origin: CareerLaunch limited reflection
  usage:
    - CareerLaunch: candidate
    - consultation/prep apps: candidate
    - staged workflow apps: candidate
  notes:
    Execution-oriented checklist branch family.

- component_name: Status Pipeline Common
  owner_side: BusinessOS common
  source_origin: CareerLaunch limited reflection
  usage:
    - CareerLaunch: candidate
    - workflow apps: candidate
    - pipeline/progression apps: candidate
  notes:
    Progression-oriented pipeline branch family.

relationship_notes:
- Only the selected CareerLaunch reduced subset is reflected here.
- Export Common and Advisor Share Common remain deferred.

