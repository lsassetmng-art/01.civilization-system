# ============================================================
# AI DEVELOPMENT TOOLS COMMON COMPONENT MATRIX ADDENDUM
# ============================================================

status: canonical
layer: meta
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Provides matrix-style addendum content
for common-component reference maintenance.

# ============================================================
# 1. USE MATRIX
# ============================================================

use_matrix:

- component: Draft / Work-in-progress Common
  decision: use
  reason: design drafts, proposal drafts, generated outputs, in-progress review states

- component: Submission Common
  decision: use
  reason: proposal submission, review request, approval request

- component: Approval / Review Surface Common
  decision: use
  reason: design/code/sql/git/apply review and approval

- component: Activity Log / Audit Trail Common
  decision: use
  reason: run-level, step-level, artifact-level traceability

- component: Template / Generated Output Common
  decision: use
  reason: design templates, full-generation format, generated artifact templates

- component: Versioned Snapshot Common
  decision: use
  reason: snapshotting design/code/sql/generated artifacts

- component: Publication / Release Preparation Common
  decision: use
  reason: governed release/handoff preparation

- component: Online Sync Common
  decision: use
  reason: design/rule/progress/proposal synchronization

- component: App-internal Sharing Common
  decision: use
  reason: proposal sharing, review sharing, comparison sharing

- component: Channel Routing Common
  decision: use
  reason: reviewer/approver/notification route control

- component: External Notification Delivery Common
  decision: use
  reason: notify approvals, failures, completions, review requests

- component: Contact / Destination Common
  decision: use
  reason: reviewer/approver/publish/git/db destination handling

- component: Rule-based Draft Generation Common
  decision: use
  reason: generate draft outputs from structured inputs/rules

- component: Generation Warning / Shortage Review Common
  decision: use
  reason: readiness shortage, ambiguity warning, dangerous action warning

- component: Publish Target Confirmation Common
  decision: use
  reason: apply/sql/git/release target confirmation

- component: Visibility Scope Evaluation Common
  decision: use
  reason: scope control for project/shared/company visibility

- component: ERP Publication Capability
  decision: conditional_use
  reason: bounded ERP-oriented handoff only

- component: Notification Semantics Common
  decision: conditional_use
  reason: notification meaning support only

- component: Summary / Digest Common
  decision: conditional_use
  reason: review/change/summary output support only

- component: Reminder Common
  decision: conditional_use
  reason: pending review/approval reminders

- component: Preference Common
  decision: conditional_use
  reason: UI language, output language, review/build preferences

# ============================================================
# 2. PROMOTION MATRIX
# ============================================================

promotion_matrix:

- component: Design Input Mode Common
  decision: promote
  reason: reusable input-mode primitive for future app-generation tools

- component: Generation Readiness Assessment Common
  decision: promote
  reason: reusable auto/manual routing core

- component: Proposal / Review / Approval Common
  decision: promote
  reason: reusable governed proposal lifecycle

- component: Apply / Backup / Rollback Common
  decision: promote
  reason: reusable controlled execution lifecycle

- component: Execution Authority Matrix Common
  decision: promote
  reason: reusable role x action x scope x environment matrix

- component: Review Escalation Common
  decision: promote
  reason: reusable stronger-control override model

- component: SQL Safety Classification Common
  decision: promote
  reason: reusable SQL execution safety primitive

- component: Git Exact Control Common
  decision: promote
  reason: reusable repository/branch/push control primitive

- component: Connection Profile Resolution Common
  decision: promote
  reason: reusable DB target resolution primitive

- component: Reusable Component Catalog Common
  decision: promote
  reason: reusable shared/private/project component lookup primitive

- component: Artifact Version / Snapshot Common
  decision: promote
  reason: reusable version and snapshot handling

- component: Bug / Retest Linkage Common
  decision: promote
  reason: reusable defect-fix-retest linkage

- component: Test Progress / Project Progress Common
  decision: promote
  reason: reusable progress control structure

- component: API Exact Contract Common
  decision: promote_secondary
  reason: reusable API exact-design asset

- component: DB Physical Schema Definition Common
  decision: promote_secondary
  reason: reusable physical-schema design asset

- component: UI Exact Item Definition Common
  decision: promote_secondary
  reason: reusable screen/item exact-definition asset

- component: Implementation Freeze Pack Common
  decision: promote_secondary
  reason: reusable pre-implementation freeze asset

- component: MVP Starter Package Common
  decision: promote_secondary
  reason: reusable MVP start asset

- component: Java Skeleton Package Common
  decision: promote_secondary
  reason: reusable Java starter architecture asset

# ============================================================
# 3. CONCLUSION
# ============================================================

conclusion:
This addendum defines the App Development Studio view
for common-component usage and promotion,
and should be used when updating the broader reference matrix.
