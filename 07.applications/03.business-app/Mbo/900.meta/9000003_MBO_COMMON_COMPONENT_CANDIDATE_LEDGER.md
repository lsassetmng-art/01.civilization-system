# ============================================================
# MBO COMMON COMPONENT CANDIDATE LEDGER
# FILE UPDATE NOT REQUIRED FOR COMMON-ONLY CHAT
# ============================================================

status: draft-additive-ledger
application: Mbo
owner: Boss
prepared_by: Zero

purpose:
Extracts common component candidates from Mbo
for separate common-component design in another chat.

rule:
- this ledger lists commonizable parts only
- Mbo-specific domain meaning remains inside Mbo
- common component design is out of scope in this chat

ledger_entries:

  - component_id: MBO-COM-001
    component_name: Template Selection Surface
    category: reusable-ui-flow
    purpose:
      - choose from reusable templates
      - preview template metadata
      - apply selected template
    expected_common_scope:
      - Mbo
      - evaluation apps
      - workflow apps

  - component_id: MBO-COM-002
    component_name: Department Template Admin Surface
    category: reusable-admin-ui
    purpose:
      - create and manage scoped templates
      - activate or deactivate templates
      - language-aware template handling
    expected_common_scope:
      - Mbo
      - HR apps
      - planning apps

  - component_id: MBO-COM-003
    component_name: Bulk Schedule Operation Surface
    category: reusable-batch-ui
    purpose:
      - assign schedules in bulk
      - preview affected targets
      - submit controlled batch jobs
    expected_common_scope:
      - Mbo
      - review apps
      - scheduling apps

  - component_id: MBO-COM-004
    component_name: KPI Chart Surface
    category: reusable-analytics-ui
    purpose:
      - render trend charts
      - render KPI summaries
      - switch scope and period
    expected_common_scope:
      - Mbo
      - sales apps
      - project apps
      - HR apps

  - component_id: MBO-COM-005
    component_name: Aggregation Export Job Surface
    category: reusable-export-ui
    purpose:
      - request export
      - track export job status
      - download result link
    expected_common_scope:
      - Mbo
      - ERP front apps
      - analytics apps

  - component_id: MBO-COM-006
    component_name: Reminder Batch Send Surface
    category: reusable-reminder-ui
    purpose:
      - choose reminder targets
      - send reminders in batch
      - track request result
    expected_common_scope:
      - Mbo
      - workflow apps
      - approval apps
      - task apps

  - component_id: MBO-COM-007
    component_name: Evidence Reference Picker
    category: reusable-reference-ui
    purpose:
      - attach reference links
      - attach file or record references
      - show evidence metadata
    expected_common_scope:
      - Mbo
      - audit apps
      - quality apps
      - project apps

  - component_id: MBO-COM-008
    component_name: Task Link Picker
    category: reusable-linkage-ui
    purpose:
      - search tasks
      - select task links
      - define linkage meaning
    expected_common_scope:
      - Mbo
      - project apps
      - execution apps

  - component_id: MBO-COM-009
    component_name: Project Link Picker
    category: reusable-linkage-ui
    purpose:
      - search projects
      - select project links
      - define linkage meaning
    expected_common_scope:
      - Mbo
      - portfolio apps
      - project apps
      - execution apps

  - component_id: MBO-COM-010
    component_name: Executive Summary Read-Only Viewer
    category: reusable-summary-ui
    purpose:
      - read-only summary viewing
      - filter and compare summary scopes
      - preserve non-editable visibility
    expected_common_scope:
      - Mbo
      - ERP front apps
      - HR apps
      - analytics apps

  - component_id: MBO-COM-011
    component_name: ERP Resend Control Surface
    category: reusable-integration-ui
    purpose:
      - show failed sends
      - request resend with reason
      - show resend history
    expected_common_scope:
      - Mbo
      - ERP-linked apps
      - integration front apps

  - component_id: MBO-COM-012
    component_name: Manager Comment Template Editor
    category: reusable-template-ui
    purpose:
      - create reusable comment templates
      - edit language variants
      - activate or deactivate templates
    expected_common_scope:
      - Mbo
      - review apps
      - support apps

  - component_id: MBO-COM-013
    component_name: Interview Memo Surface
    category: reusable-record-ui
    purpose:
      - record timestamped interview notes
      - preserve author and note type
      - browse note history
    expected_common_scope:
      - Mbo
      - HR apps
      - support apps
      - customer apps

  - component_id: MBO-COM-014
    component_name: Review Cadence Preset Admin Surface
    category: reusable-admin-ui
    purpose:
      - manage recurring cadence presets
      - define interval rules
      - activate or deactivate presets
    expected_common_scope:
      - Mbo
      - workflow apps
      - review apps
      - checkup apps

  - component_id: MBO-COM-015
    component_name: Calibration Session Surface
    category: reusable-review-ui
    purpose:
      - compare evaluation records
      - record calibration decisions
      - preserve review audit trail
    expected_common_scope:
      - Mbo
      - HR apps
      - review apps

boundary_note:
The following remain Mbo-specific and should NOT be extracted as generic common components here:
- objective domain semantics
- Mbo period semantics
- Mbo evaluation confirmation semantics
- Mbo ERP payload business meaning
- Mbo execution-centered dashboard meaning

