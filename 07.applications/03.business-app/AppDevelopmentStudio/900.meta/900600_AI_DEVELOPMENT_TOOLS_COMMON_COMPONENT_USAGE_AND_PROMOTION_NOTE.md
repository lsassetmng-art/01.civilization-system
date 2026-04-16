# ============================================================
# AI DEVELOPMENT TOOLS COMMON COMPONENT USAGE AND PROMOTION NOTE
# ============================================================

status: canonical
layer: meta
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines which common components App Development Studio should use
and which capabilities should be promoted into common components.

# ============================================================
# 1. INTERPRETATION RULE
# ============================================================

interpretation_rule:
This note is for AI Development Tools / App Development Studio,
not for QuickForecast or other application-specific domains.

application_position:
App Development Studio is not primarily a business operation app.
It is a governed design / generation / review / apply control tool
for creating and controlling other applications.

Therefore:
- reuse targets are design/governance/execution-control oriented
- promotion candidates are cross-application engineering primitives
- persona/secretary presentation components are not primary here

# ============================================================
# 2. COMMON COMPONENTS TO USE
# ============================================================

## 2-1. BusinessOS-side Common Components To Use

businessos_common_components_to_use:
- Draft / Work-in-progress Common
- Submission Common
- Approval / Review Surface Common
- Activity Log / Audit Trail Common
- Template / Generated Output Common
- Versioned Snapshot Common
- Publication / Release Preparation Common
- Online Sync Common
- App-internal Sharing Common
- Channel Routing Common
- External Notification Delivery Common
- Contact / Destination Common
- Rule-based Draft Generation Common
- Generation Warning / Shortage Review Common
- Publish Target Confirmation Common
- Visibility Scope Evaluation Common

usage_meaning:
These components support:
- draft retention
- proposal review
- governed approval
- artifact traceability
- generated output handling
- synchronization
- governed publication/handoff
- notification/routing
- destination control
- warning and shortage review
- publish target confirmation

## 2-2. Conditional Business Capability Use

conditional_business_capability_use:
- ERP Publication Capability

boundary_note:
ERP Publication Capability may be used
when App Development Studio hands off to ERP-oriented targets,
but App Development Studio must not redefine itself
as ERP primary ownership.

## 2-3. PersonaOS-side Conditional Use

personaos_conditional_components:
- Notification Semantics Common
- Summary / Digest Common
- Reminder Common
- Preference Common

not_primary_components:
- Secretary Interaction Common
- Visual Runtime Common
- Mood / Presence Presentation Common

meaning:
Persona-style components are secondary support only,
not architectural core for this application.

# ============================================================
# 3. COMMON COMPONENTS TO PROMOTE
# ============================================================

## 3-1. High-priority Promotion Candidates

high_priority_promotion_candidates:
- Design Input Mode Common
- Generation Readiness Assessment Common
- Proposal / Review / Approval Common
- Apply / Backup / Rollback Common
- Execution Authority Matrix Common
- Review Escalation Common
- SQL Safety Classification Common
- Git Exact Control Common
- Connection Profile Resolution Common
- Reusable Component Catalog Common
- Artifact Version / Snapshot Common
- Bug / Retest Linkage Common
- Test Progress / Project Progress Common

promotion_meaning:
These are not local-only features.
They are reusable engineering/governance primitives
for multiple future applications and tools.

## 3-2. Secondary Promotion Candidates

secondary_promotion_candidates:
- API Exact Contract Common
- DB Physical Schema Definition Common
- UI Exact Item Definition Common
- Implementation Freeze Pack Common
- MVP Starter Package Common
- Java Skeleton Package Common

promotion_meaning_secondary:
These are reusable delivery/design assets
that can standardize future app-development workflows.

# ============================================================
# 4. EXPLICIT NON-PROMOTION / NON-PRIMARY AREAS
# ============================================================

not_primary_for_this_application:
- secretary-like experience as main product identity
- character presentation runtime
- mood/presence driven UI meaning
- entertainment-first interaction components

do_not_misclassify:
Do not classify App Development Studio
as a presentation-first persona application.

# ============================================================
# 5. FINAL ORGANIZATION
# ============================================================

use_now:
- Draft / Work-in-progress Common
- Submission Common
- Approval / Review Surface Common
- Activity Log / Audit Trail Common
- Template / Generated Output Common
- Versioned Snapshot Common
- Publication / Release Preparation Common
- Online Sync Common
- App-internal Sharing Common
- Channel Routing Common
- External Notification Delivery Common
- Contact / Destination Common
- Rule-based Draft Generation Common
- Generation Warning / Shortage Review Common
- Publish Target Confirmation Common
- Visibility Scope Evaluation Common
- ERP Publication Capability (bounded)
- Notification Semantics / Summary / Reminder / Preference (conditional)

promote_to_common:
- Design Input Mode Common
- Generation Readiness Assessment Common
- Proposal / Review / Approval Common
- Apply / Backup / Rollback Common
- Execution Authority Matrix Common
- Review Escalation Common
- SQL Safety Classification Common
- Git Exact Control Common
- Connection Profile Resolution Common
- Reusable Component Catalog Common
- Artifact Version / Snapshot Common
- Bug / Retest Linkage Common
- Test Progress / Project Progress Common
- API Exact Contract Common
- DB Physical Schema Definition Common
- UI Exact Item Definition Common
- Implementation Freeze Pack Common
- MVP Starter Package Common
- Java Skeleton Package Common

# ============================================================
# 6. CONCLUSION
# ============================================================

conclusion:
App Development Studio should reuse governed business-side common components
for draft, review, approval, traceability, sharing, warning, and publication control,
while promoting engineering/governance primitives
into reusable common components for future applications.
