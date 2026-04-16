# ============================================================
# PROJECT FLOW OVERVIEW
# ============================================================

status: canonical
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
ProjectFlow is a project execution front for daily operational use.

summary:
ProjectFlow manages project execution,
task progress,
milestones,
issues,
risks,
time entry,
member workload,
and ERP synchronization.

positioning:
ProjectFlow is not the full ERP.
It is a field operation front that cooperates with ERP
through shared BusinessOS integration capability.

core_formula:
ProjectFlow
=
project execution
+ task management
+ progress tracking
+ issue/risk management
+ workload view
+ ERP import/export orchestration

erp_boundary:
ProjectFlow must not own full ERP transmission logic.
ERP integration is not direct application-local integration.
It is a shared BusinessOS-controlled integration path.

source_of_truth:
ERP owns:
- official project code
- customer
- contract
- formal budget
- formal actual cost
- billing and sales
- formal organization references

ProjectFlow owns:
- task execution
- issue
- risk
- milestone operation
- work logs
- operational comments
- daily progress visibility


# ============================================================
# PROJECT FLOW RULES INDEX
# ============================================================

status: canonical
layer: rules
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0000000_PROJECT_FLOW_RULES_INDEX.md
- 0000001_PROJECT_FLOW_RULES_OVERVIEW.md
- 0000002_PROJECT_FLOW_DOCUMENT_RULE.md

# ============================================================
# PROJECT FLOW RULES OVERVIEW
# ============================================================

status: canonical
layer: rules
application: ProjectFlow
owner: Boss
prepared_by: Zero

rules:
- design is architecture-first
- source of truth must be explicit
- ERP integration must be shared-BusinessOS-based
- protected ERP fields must not be locally overwritten
- index and overview files must exist at layer level
- destructive delete should be avoided

# ============================================================
# PROJECT FLOW DOCUMENT RULE
# ============================================================

status: canonical
layer: rules
application: ProjectFlow
owner: Boss
prepared_by: Zero

document_rules:
- use canonical wording
- keep role boundaries explicit
- separate ERP truth from local truth
- define editability and auditability


# ============================================================
# PROJECT FLOW CONSTITUTION INDEX
# ============================================================

status: canonical
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0100000_PROJECT_FLOW_CONSTITUTION_INDEX.md
- 0100001_PROJECT_FLOW_CONSTITUTION_OVERVIEW.md
- 0100002_PROJECT_FLOW_APPLICATION_DEFINITION.md
- 0100003_PROJECT_FLOW_SCOPE_CONSTITUTION.md
- 0100004_PROJECT_FLOW_PROVISION_AND_SUBSCRIPTION_DEFINITION.md
- 0100005_PROJECT_FLOW_COMPETITIVE_FEATURE_ADDITION_DEFINITION.md
- 0100006_PROJECT_FLOW_CUSTOMER_PROVISION_DEFINITION.md
- 0100007_PROJECT_FLOW_MULTILINGUAL_DEFINITION.md
- 0100008_PROJECT_FLOW_INITIAL_LANGUAGE_SCOPE_DEFINITION.md
- 0100009_PROJECT_FLOW_DEVICE_SUPPORT_DEFINITION.md
- 0100010_PROJECT_FLOW_IMPLEMENTATION_DIRECTION_FINAL_DECISION.md

# ============================================================
# PROJECT FLOW CONSTITUTION OVERVIEW
# ============================================================

status: canonical
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

constitutional_role:
ProjectFlow exists to make project execution easy to operate
without replacing ERP formal authority.

constitutional_principles:
- field usability is mandatory
- ERP authority must be preserved
- project visibility is mandatory
- issue and risk visibility is mandatory
- sync must be auditable
- silent corruption is forbidden

# ============================================================
# PROJECT FLOW APPLICATION DEFINITION
# ============================================================

status: canonical
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

definition:
ProjectFlow is a project management application
that imports formal project references from ERP,
supports day-to-day execution,
and returns selected operational results through shared BusinessOS integration.

included_capabilities:
- project list
- project detail
- task management
- milestone management
- issue management
- risk management
- work log and time entry
- workload visibility
- import status view
- export status view
- sync retry
- dashboard and alerts

excluded_capabilities:
- full accounting
- final contract authority
- billing authority
- payroll authority

# ============================================================
# PROJECT FLOW SCOPE CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

in_scope:
- project execution control
- task and member coordination
- progress tracking
- issue/risk handling
- ERP project intake
- selected outbound operational publication

out_of_scope:
- ERP replacement
- contract authoring
- billing ownership
- accounting close

# ============================================================
# PROJECT FLOW PROVISION AND SUBSCRIPTION DEFINITION
# ============================================================

status: canonical
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines provision style, subscription style, trial, and unpaid behavior.

provision_style:
- pre-installed application

device_support:
- smartphone
- pc

device_capability_rule:
ProjectFlow must provide the same functional capability
on smartphone and PC.

Differences between smartphone and PC are limited to
layout,
interaction density,
and presentation optimization.

Functional gaps by device are not allowed.

subscription_style:
- monthly-use application

pricing_policy:
- monthly_price_jpy: 900

trial_policy:
- initial_trial_period_days: 7

unpaid_policy_summary:
When subscription is inactive,
ProjectFlow enters read-only mode.

read_only_mode_allows:
- dashboard view
- project view
- task view
- issue and risk view
- report history view
- sync history view

read_only_mode_blocks:
- create
- edit
- archive
- import request
- export request
- spreadsheet generation
- report draft generation
- report draft update

# ============================================================
# PROJECT FLOW COMPETITIVE FEATURE ADDITION DEFINITION
# ============================================================

status: canonical
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines feature additions derived from competitor analysis
and operational fit for ProjectFlow.

high_priority_additions:
- form-based intake
- lightweight automation and notifications
- stronger timeline and gantt visibility
- richer live dashboard
- project-linked memo and meeting note support
- project template support
- WBS-template-based scheduling proposal

medium_priority_additions:
- short comment and communication history

principles:
- additions must preserve small-and-easy operation
- additions must preserve customer usability
- additions must preserve low-support monthly-use positioning
- additions must remain editable after proposal generation

# ============================================================
# PROJECT FLOW CUSTOMER PROVISION DEFINITION
# ============================================================

status: canonical
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines customer-facing provision conditions for ProjectFlow.

customer_positioning:
ProjectFlow is a small-and-easy monthly-use application
for customer-facing operational project management.

provision_summary:
- pre-installed application
- smartphone and pc capable
- same functional capability on both device types
- low-support monthly-use offering
- customer-facing explanation material support included

standard_customer_value:
- easy daily project operation
- customer explanation support
- spreadsheet export
- progress report draft support
- schedule and follow-up visibility

commercial_summary:
- monthly_price_jpy: 900
- initial_trial_period_days: 7
- unpaid_state: read_only

# ============================================================
# PROJECT FLOW MULTILINGUAL DEFINITION
# ============================================================

status: canonical
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines multilingual support as a first-class requirement.

multilingual_positioning:
ProjectFlow should support multilingual operation
for both internal users and customer-facing outputs.

multilingual_targets:
- application UI labels
- screen titles
- action labels
- status wording
- error wording
- customer-facing materials
- spreadsheet export headers
- one-page summary wording

principles:
- multilingual support must not be an afterthought
- smartphone and pc must support the same language capability
- customer-facing output must be language-aware
- fallback behavior must be explicit

# ============================================================
# PROJECT FLOW INITIAL LANGUAGE SCOPE DEFINITION
# ============================================================

status: canonical
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines initial language scope for ProjectFlow.

initial_language_scope:
- japanese
- english

future_expandable_language_scope:
- chinese_simplified
- chinese_traditional
- korean
- spanish
- other languages by later policy

initial_scope_rules:
- japanese and english are first-class initial targets
- UI,
  customer-facing materials,
  and export headers should support both
- smartphone and pc must support the same initial language scope

# ============================================================
# PROJECT FLOW DEVICE SUPPORT DEFINITION
# ============================================================

status: canonical
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines explicit device support targets.

supported_device_types:
- iphone
- android
- tablet
- pc

device_capability_rule:
ProjectFlow must provide the same functional capability
across iPhone,
Android,
tablet,
and PC.

allowed_difference:
- layout
- density
- navigation placement
- panel arrangement
- touch optimization
- pointer and keyboard optimization

forbidden_difference:
- feature availability gap by device type
- export available on only one device type
- report generation available on only one device type
- ERP-related request available on only one device type

# ============================================================
# PROJECT FLOW IMPLEMENTATION DIRECTION FINAL DECISION
# ============================================================

status: canonical-finalized
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Finalizes the remaining implementation-direction open items
that can be resolved at design level.

finalized_items:
- Android module naming
- DI framework choice
- offline/cache strategy
- background job scheduling style

important_boundary:
DB-owner review items remain separate
and are not auto-finalized by this decision.


# ============================================================
# PROJECT FLOW ARCHITECTURE INDEX
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0200000_PROJECT_FLOW_ARCHITECTURE_INDEX.md
- 0200001_PROJECT_FLOW_ARCHITECTURE_OVERVIEW.md
- 0200002_PROJECT_FLOW_ARCHITECTURE.md
- 0200003_PROJECT_FLOW_ERP_BOUNDARY_ARCHITECTURE.md
- 0200004_PROJECT_FLOW_SYNC_CONFLICT_ARCHITECTURE.md
- 0200005_PROJECT_FLOW_PERMISSION_ARCHITECTURE.md
- 0200006_PROJECT_FLOW_SCREEN_ARCHITECTURE.md
- 0200007_PROJECT_FLOW_EXPORT_AND_REPORT_ARCHITECTURE.md
- 0200008_PROJECT_FLOW_IMPLEMENTATION_ALIGNMENT_ARCHITECTURE.md
- 0200010_PROJECT_FLOW_MULTI_DEVICE_PARITY_ARCHITECTURE.md
- 0200011_PROJECT_FLOW_COMMON_COMPONENT_CANDIDATE_ARCHITECTURE.md
- 0200012_PROJECT_FLOW_ADDITIVE_FEATURE_ARCHITECTURE.md
- 0200013_PROJECT_FLOW_TIMELINE_GANTT_DASHBOARD_ARCHITECTURE.md
- 0200014_PROJECT_FLOW_FORM_MEMO_COMMENT_ARCHITECTURE.md
- 0200015_PROJECT_FLOW_LIGHT_AUTOMATION_ARCHITECTURE.md
- 0200016_PROJECT_FLOW_TEMPLATE_AND_WBS_PROPOSAL_ARCHITECTURE.md
- 0200018_PROJECT_FLOW_CUSTOMER_FACING_SCHEDULE_ARCHITECTURE.md
- 0200019_PROJECT_FLOW_CUSTOMER_EXPLANATION_MATERIAL_ARCHITECTURE.md
- 0200017_PROJECT_FLOW_CROSS_FEATURE_ALIGNMENT_ARCHITECTURE.md
- 0200020_PROJECT_FLOW_IMPLEMENTATION_PREP_ALIGNMENT.md
- 0200021_PROJECT_FLOW_MULTILINGUAL_ARCHITECTURE.md
- 0200022_PROJECT_FLOW_MULTILINGUAL_ALIGNMENT_ARCHITECTURE.md
- 0200023_PROJECT_FLOW_MULTI_DEVICE_ARCHITECTURE_EXTENSION.md
- 0200024_PROJECT_FLOW_DEVICE_PARITY_ALIGNMENT_ARCHITECTURE.md
- 0200025_PROJECT_FLOW_FOUNDATION_AND_COMMON_COMPONENT_ALIGNMENT.md
- 0200026_PROJECT_FLOW_CANONICAL_PRIORITY_ARCHITECTURE.md
- 0200027_PROJECT_FLOW_BUSINESSOS_DEPENDENCY_ARCHITECTURE.md
- 0200028_PROJECT_FLOW_ERP_DEPENDENCY_ARCHITECTURE.md
- 0200029_PROJECT_FLOW_COMMON_COMPONENT_DEPENDENCY_ARCHITECTURE.md
- 0200030_PROJECT_FLOW_LOCAL_OWNERSHIP_ARCHITECTURE.md
- 0200031_PROJECT_FLOW_DATA_OWNERSHIP_MATRIX_ARCHITECTURE.md
- 0200032_PROJECT_FLOW_EDITABILITY_BOUNDARY_ARCHITECTURE.md
- 0200033_PROJECT_FLOW_ACTION_AUTHORITY_ARCHITECTURE.md
- 0200034_PROJECT_FLOW_STATE_TRANSITION_ARCHITECTURE.md
- 0200035_PROJECT_FLOW_AUDITABILITY_ARCHITECTURE.md
- 0200036_PROJECT_FLOW_UPLOADED_CANONICAL_REFERENCE_ARCHITECTURE.md
- 0200037_PROJECT_FLOW_REFERENCE_UPDATE_GOVERNANCE_ARCHITECTURE.md
- 0200038_PROJECT_FLOW_REFERENCE_CONFLICT_RESOLUTION_ARCHITECTURE.md
- 0200039_PROJECT_FLOW_IMPLEMENTATION_PREP_SCOPE_SPLIT_ARCHITECTURE.md
- 0200040_PROJECT_FLOW_NEXT_PHASE_PRIORITY_ARCHITECTURE.md
- 0200041_PROJECT_FLOW_FINAL_MODULE_AND_RUNTIME_ARCHITECTURE.md
- 0200042_PROJECT_FLOW_DB_OWNER_REVIEW_ENTRY_ARCHITECTURE.md
- 0200043_PROJECT_FLOW_IMPLEMENTATION_START_ENTRY_ARCHITECTURE.md
- 0200044_PROJECT_FLOW_OFFICIAL_COMMON_COMPONENT_LEDGER_ALIGNMENT.md
- 0200045_PROJECT_FLOW_SHARED_COMPONENT_ADAPTER_ARCHITECTURE.md
- 0200046_PROJECT_FLOW_LOCAL_ORCHESTRATION_ARCHITECTURE.md
- 0200047_PROJECT_FLOW_CODING_START_ENTRY_ARCHITECTURE.md
- 0200048_PROJECT_FLOW_ACTUAL_IMPLEMENTATION_TASK_ENTRY_ARCHITECTURE.md
- 0200049_PROJECT_FLOW_ACTUAL_IMPLEMENTATION_TASK_ARCHITECTURE.md
- 0200050_PROJECT_FLOW_NEXT_IMPLEMENTATION_UNIT_ARCHITECTURE.md
- 0200051_PROJECT_FLOW_CONCRETE_CODING_WORK_GROUP_ARCHITECTURE.md
- 0200052_PROJECT_FLOW_CONCRETE_FILE_UNIT_ARCHITECTURE.md
- 0200053_PROJECT_FLOW_PATCH_TASK_ARCHITECTURE.md
- 0200054_PROJECT_FLOW_COMMIT_PR_UNIT_ARCHITECTURE.md
- 0200055_PROJECT_FLOW_MERGE_RELEASE_UNIT_ARCHITECTURE.md
- 0200056_PROJECT_FLOW_RC_HANDOFF_UNIT_ARCHITECTURE.md
- 0200057_PROJECT_FLOW_FINAL_CLOSURE_ENTRY_ARCHITECTURE.md

# ============================================================
# PROJECT FLOW ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

major_components:
- dashboard
- project registry
- task engine
- milestone engine
- issue/risk engine
- time entry engine
- sync orchestration UI
- notification engine
- permission guard
- shared BusinessOS integration boundary

# ============================================================
# PROJECT FLOW ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

architecture_style:
Operational front with explicit integration boundary.

modules:
1. dashboard module
2. project module
3. task module
4. milestone module
5. issue/risk module
6. time entry module
7. sync module
8. notification module
9. permission module
10. integration request module

design_rules:
- ERP-owned fields must remain separable
- local operational fields must remain editable by role
- import must not overwrite protected local fields
- export must only use mapped outbound fields
- conflict state must be explicit

# ============================================================
# PROJECT FLOW ERP BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

boundary_rule:
ProjectFlow must not own full ERP transmission logic.

path_inbound:
ERP
-> shared BusinessOS ERP integration capability
-> ProjectFlow intake/update view

path_outbound:
ProjectFlow publication request
-> shared BusinessOS ERP integration capability
-> ERP

shared_businessos_responsibility:
- company context attachment
- permission and publish guard
- payload mapping
- transmission execution
- result normalization
- audit logging
- retry control

projectflow_responsibility:
- request issuance
- target selection
- UI display
- sync state display
- error display
- retry action

# ============================================================
# PROJECT FLOW SYNC CONFLICT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

conflict_types:
- same field modified on both sides
- ERP protected field local edit attempt
- missing ERP reference
- stale outbound payload
- deleted upstream project reference

principles:
- ERP-owned fields prefer ERP
- local-owned fields prefer ProjectFlow
- destructive overwrite is forbidden without rule
- unresolved conflict must surface in UI

# ============================================================
# PROJECT FLOW PERMISSION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

roles:
- project_admin
- project_manager
- project_member
- project_viewer
- sync_operator
- erp_reference_viewer

permission_summary:
project_admin:
- full project edit
- mapping view
- sync retry
- archive control

project_manager:
- project edit
- task edit
- milestone update
- issue/risk update
- progress update

project_member:
- assigned task update
- work log entry
- issue registration
- comment entry

project_viewer:
- read only

# ============================================================
# PROJECT FLOW SCREEN ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

screens:
- dashboard
- project list
- project detail
- task list
- task detail
- milestone view
- issue/risk board
- work log entry
- workload view
- ERP import status
- ERP export status
- sync error review
- settings

# ============================================================
# PROJECT FLOW EXPORT AND REPORT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines spreadsheet export and progress report generation architecture.

architecture_position:
ProjectFlow must support spreadsheet-exportable operational views
for customer explanation and offline sharing.

ProjectFlow must also support human-editable progress report generation
with both quantitative and qualitative sections.

major_components:
- export request UI
- export formatter
- export file generator
- report draft generator
- report editor UI
- report template selector
- export history
- report history

export_formats:
- xlsx
- csv

export_targets:
- project list
- task list
- milestone list
- issue list
- risk list
- time entry list
- workload list
- progress summary
- sync result list

report_targets:
- weekly report
- monthly report
- customer report
- internal report

design_rules:
- export output is a snapshot
- export columns must be permission-aware
- protected fields may be masked or excluded
- auto-generated report is draft only
- human review and editing are mandatory before external use

# ============================================================
# PROJECT FLOW IMPLEMENTATION ALIGNMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Explains how implementation modules align with architecture responsibilities.

alignment_summary:
- operational screens belong to ui-feature-screens
- core business rules belong to separated domain modules
- shared BusinessOS boundary belongs to integration-boundary
- export/report logic belongs to export-report-domain
- sync orchestration belongs to sync-domain

architectural_constraints:
- UI must not directly call shared BusinessOS transport
- domain modules must not own Android view concerns
- integration-boundary must not own screen state
- report generation must remain editable after draft creation

# ============================================================
# PROJECT FLOW INTERFACE ARCHITECTURE ALIGNMENT
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Explains interface alignment with architecture.

alignment_points:
- dashboard concentrates visibility
- list screens optimize daily operation
- detail screens preserve edit/read-only boundaries
- sync screens isolate operational integration visibility
- export/report screens isolate customer-facing output concerns

rules:
- ERP-owned fields must be visually distinct
- report draft editing must remain human-centered
- export actions must stay permission-aware

# ============================================================
# PROJECT FLOW MULTI DEVICE PARITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines parity architecture across smartphone and PC.

architecture_rule:
Smartphone and PC must expose the same functional capability set.

allowed_differences:
- layout density
- panel arrangement
- navigation placement
- button sizing
- list/table presentation
- split view availability
- keyboard and pointer optimization
- touch optimization

forbidden_differences:
- create available on only one device
- edit available on only one device
- export available on only one device
- report generation available on only one device
- sync status available on only one device
- ERP integration request available on only one device

design_intent:
Device difference is presentation-only,
not business capability difference.

# ============================================================
# PROJECT FLOW COMMON COMPONENT CANDIDATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Extracts reusable common component candidates from ProjectFlow.

selection_principles:
- not project-management-specific only
- reusable across multiple operational applications
- stable responsibility boundary
- UI and domain reuse both allowed
- ERP direct coupling forbidden

common_component_candidate_groups:
- operational dashboard summary card set
- overdue and delay visibility component
- issue/risk list and severity emphasis component
- sync status and retry visibility component
- spreadsheet export request component
- progress report draft generation component
- read-only entitlement guard component
- multi-device parity layout policy component

candidate_details:

operational_dashboard_summary_card_set:
Reusable summary card block for counts,
delay indicators,
issue counts,
risk counts,
and sync counts.

overdue_and_delay_visibility_component:
Reusable visual and logic component
for overdue highlight,
delay day display,
and urgent-state emphasis.

issue_risk_list_and_severity_component:
Reusable list/table/card component
for issue and risk visibility,
severity emphasis,
status update entry point,
and exportable filtered view.

sync_status_and_retry_visibility_component:
Reusable operational integration component
for sync request list,
failure emphasis,
retryable state display,
and error detail drilldown.

spreadsheet_export_request_component:
Reusable export settings component
for target scope,
column selection,
masking options,
format selection,
and export history.

progress_report_draft_generation_component:
Reusable human-editable draft generation component
for quantitative summary,
qualitative draft,
approval state,
and external-use warning.

read_only_entitlement_guard_component:
Reusable feature guard component
for subscribed,
trial,
and unpaid_read_only behavior.

multi_device_parity_layout_policy_component:
Reusable policy and UI pattern set
for smartphone/PC same capability with layout-only differences.

# ============================================================
# PROJECT FLOW ADDITIVE FEATURE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines architecture additions for new functional areas.

additive_feature_groups:
- form intake
- lightweight automation
- timeline and gantt
- live dashboard enhancement
- memo and meeting note
- short comment history
- project template
- WBS scheduling proposal

architecture_notes:

form_intake:
Supports simplified structured input
for task creation,
issue registration,
and progress report request.

lightweight_automation:
Supports event-triggered notification and simple rule-based actions
without turning ProjectFlow into a heavy automation platform.

timeline_and_gantt:
Strengthens milestone and dependency visibility
with schedule-oriented operational view.

live_dashboard_enhancement:
Aggregates progress,
delay,
time actual,
workload,
risk,
and sync failures into a unified daily view.

memo_and_meeting_note:
Stores project-linked notes,
decisions,
and meeting records as operational context.

short_comment_history:
Stores lightweight thread-like communication
on tasks,
issues,
and project-level items.

project_template:
Allows repeated project patterns to be reused.

wbs_scheduling_proposal:
Generates schedule proposals from template task structure,
dependencies,
milestones,
relative offsets,
and business-day rules.

boundary_rules:
- generated schedules are proposals only
- human review and adjustment are mandatory before confirmation
- project-specific semantics remain editable after generation

# ============================================================
# PROJECT FLOW TIMELINE GANTT DASHBOARD ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines architecture for timeline,
gantt,
and live dashboard capability.

major_capabilities:
- timeline view
- gantt-like schedule view
- dependency visibility
- live operational dashboard
- schedule proposal preview support

timeline_architecture:
Timeline focuses on:
- milestone sequence
- key task sequence
- dependency awareness
- delay visibility
- project-level schedule understanding

gantt_architecture:
Gantt focuses on:
- task bar visualization
- parent-child grouping
- dependency relation visibility
- planned vs actual awareness
- editable schedule review support

dashboard_architecture:
Dashboard focuses on:
- progress summary
- delay summary
- workload summary
- issue/risk summary
- sync failure summary
- export/report quick actions

boundary_rules:
- gantt and timeline are operational views,
  not separate sources of truth
- all dates must come from editable operational data or proposal data
- dependency rendering must not redefine dependency ownership
- dashboard values are aggregated views of underlying records

# ============================================================
# PROJECT FLOW FORM MEMO COMMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines architecture for form intake,
project-linked memo,
and short comment history.

functional_domains:
- form intake
- memo and meeting note
- short comment history

form_intake_architecture:
Structured forms provide lightweight entry paths for:
- task creation
- issue registration
- progress report request

memo_architecture:
Project-linked memo supports:
- general note
- meeting note
- decision note

comment_architecture:
Short comment history supports:
- task-linked comments
- issue-linked comments
- risk-linked comments
- project-linked comments
- milestone-linked comments

boundary_rules:
- forms are simplified entry points, not separate source-of-truth layers
- memos preserve operational context and meeting trace
- comments remain lightweight and should not become heavy chat replacement
- comment and memo ownership remains tied to project context

# ============================================================
# PROJECT FLOW LIGHT AUTOMATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines lightweight automation and notification architecture.

architecture_position:
ProjectFlow supports light operational automation,
not a heavy workflow engine.

major_domains:
- trigger detection
- rule evaluation
- notification dispatch request
- action result recording
- operator visibility

supported_trigger_domains:
- overdue task
- delayed milestone
- high risk detected
- critical issue detected
- sync failed
- report draft review pending

supported_action_domains:
- in-app notification
- notification list registration
- manager attention flag
- dashboard highlight
- optional external notification request

boundary_rules:
- automation must remain simple and reviewable
- automation must not mutate core business data invisibly
- automation should prefer notification and visibility actions
- heavy multi-step workflow orchestration is out of scope

# ============================================================
# PROJECT FLOW TEMPLATE AND WBS PROPOSAL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines architecture for project templates
and WBS-template-based scheduling proposals.

major_domains:
- project template
- template task structure
- milestone template support
- dependency template support
- business-day rule support
- schedule proposal generation
- proposal adjustment and confirmation

project_template_architecture:
Project templates represent repeated project patterns
for common delivery or operational work.

template_structure_may_include:
- project default structure
- task templates
- milestone templates
- issue/checklist templates
- relative start offsets
- planned duration rules
- dependency relations

wbs_proposal_architecture:
A user selects:
- project type
- project template
- project start date
- optional business-day rule

The system generates:
- proposed task schedule
- proposed milestone schedule
- dependency-aware ordering
- projected completion view

boundary_rules:
- template is a reusable pattern source
- generated schedule is proposal-only until confirmed
- proposal must remain human-editable
- confirmed schedule becomes normal project/task operational data

# ============================================================
# PROJECT FLOW CROSS FEATURE ALIGNMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines cross-feature alignment after additive feature expansion.

alignment_targets:
- core project/task/milestone operation
- sync and shared BusinessOS boundary
- export and report output
- subscription and read-only control
- timeline/gantt/dashboard
- form/memo/comment
- light automation
- template and WBS proposal

cross_feature_rules:
- all features must preserve small-and-easy operation
- all features must remain usable by customers
- smartphone and pc must keep the same functional capability
- ERP direct call from ProjectFlow remains forbidden
- generated outputs remain draft or proposal where human review is required
- dashboard, timeline, and gantt are views, not sources of truth
- automation remains lightweight and visibility-oriented
- templates and proposals remain editable before confirmation

consistency_focus:
- avoid duplicate ownership of schedule data
- avoid duplicate ownership of report output state
- avoid duplicate notification logic across features
- keep read-only entitlement behavior consistent across all screens

# ============================================================
# PROJECT FLOW CUSTOMER FACING SCHEDULE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines customer-facing schedule architecture derived from WBS and proposal data.

architecture_position:
ProjectFlow must support not only internal WBS scheduling
but also customer-facing schedule output.

customer_facing_schedule_role:
- explanation-friendly schedule view
- simplified milestone and phase communication
- customer meeting material support
- spreadsheet-exportable external schedule view

source_inputs:
- confirmed project schedule
- WBS proposal data
- milestone data
- task grouping data
- customer-facing wording rules

separation_rules:
- internal operational WBS and customer-facing schedule must remain separable
- customer-facing schedule may hide internal-only task detail
- customer-facing schedule must preserve milestone visibility
- customer-facing schedule must remain editable before external use

# ============================================================
# PROJECT FLOW CUSTOMER EXPLANATION MATERIAL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the full standard set of customer-facing explanation materials.

standard_customer_facing_materials:
- customer-facing schedule
- progress report
- issue list
- risk list
- decision note
- follow-up action list

material_roles:
customer-facing schedule:
- explains overall plan
- explains milestone timing
- explains future schedule outlook

progress report:
- explains current progress
- explains completed work
- explains next planned work

issue list:
- explains open issues and current handling state

risk list:
- explains identified risks and mitigation direction

decision note:
- explains what was decided and when

follow-up action list:
- explains pending actions,
  owners,
  and due direction

architecture_rules:
- these materials are standard outputs from the beginning
- they are not optional afterthought outputs
- they may share underlying source data
- they must remain separable by output type

# ============================================================
# PROJECT FLOW IMPLEMENTATION PREP ALIGNMENT
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Aligns implementation-detail preparation with architecture decisions.

alignment_rules:
- use case grouping must follow domain boundaries
- screen state design must not re-own business truth
- repository and gateway boundaries must remain separate
- migration split must preserve additive introduction path
- implementation detail must not bypass shared BusinessOS architecture

# ============================================================
# PROJECT FLOW MULTILINGUAL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines multilingual architecture across UI and output layers.

architecture_domains:
- locale resolution
- translation key layer
- fallback language layer
- customer-facing wording layer
- export label localization layer

multilingual_coverage:
application_ui:
- menu labels
- screen labels
- button labels
- filter labels
- badge and state labels

customer_outputs:
- customer-facing schedule headings
- progress report headings
- issue list headings
- risk list headings
- decision note headings
- follow-up action headings
- one-page summary headings

export_outputs:
- xlsx column headers
- csv column headers
- material section labels where exported

boundary_rules:
- business truth is language-neutral where possible
- displayed wording is localized through key-based resolution
- customer-facing wording may use material-specific localized templates
- localized output must remain reviewable before external use

# ============================================================
# PROJECT FLOW MULTILINGUAL ALIGNMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines final multilingual alignment across UI,
customer-facing outputs,
exports,
and summary outputs.

alignment_targets:
- application UI
- customer-facing materials
- spreadsheet export headers
- one-page summary
- read-only and entitlement wording
- proposal / confirmed / reviewed / approved state wording

alignment_rules:
- one concept should resolve through stable localization keys
- one generated output should remain one locale consistently
- customer-facing wording should remain explanation-friendly
- export headers should align with output locale
- multilingual handling must not change business truth
- smartphone and pc must keep the same multilingual capability

# ============================================================
# PROJECT FLOW MULTI DEVICE ARCHITECTURE EXTENSION
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Extends device architecture from smartphone/pc wording
to explicit iPhone, Android, tablet, and PC support.

supported_targets:
- iPhone
- Android
- tablet
- PC

architecture_rules:
- feature parity applies to all supported device types
- tablet is treated as a first-class supported form factor
- iPhone and Android are both first-class smartphone targets
- PC may use denser layout,
  but must not gain exclusive business capability
- tablet may use split or hybrid layout,
  but must not gain exclusive business capability

# ============================================================
# PROJECT FLOW DEVICE PARITY ALIGNMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines final alignment for iPhone,
Android,
tablet,
and PC parity across all major feature groups.

alignment_targets:
- core project operation
- customer-facing materials
- spreadsheet export
- progress report generation
- template and WBS proposal
- timeline and gantt
- light automation
- multilingual support
- entitlement and read-only behavior

alignment_rules:
- all supported device types must keep the same functional capability
- customer-facing outputs must be available on all supported device types
- multilingual capability must be available on all supported device types
- read-only and blocked-action behavior must be consistent on all supported device types
- device-specific differences must remain presentation-only

# ============================================================
# PROJECT FLOW FOUNDATION AND COMMON COMPONENT ALIGNMENT
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how ProjectFlow should align with higher-level foundation,
application common components,
and ERP scope references.

alignment_reference_domains:
- civilization foundation rules
- application common components
- ERP design bible and enterprise scope
- BusinessOS mediated integration boundary
- Persona and other OS references only when needed by ProjectFlow scope

alignment_rules:
- ProjectFlow must not redefine system-wide foundation rules locally
- ProjectFlow must not redefine application common component ownership locally
- ERP scope references must remain external source references,
  not ProjectFlow-owned truth
- shared BusinessOS remains the formal mediation layer for ERP-facing interaction
- ProjectFlow-specific additions remain additive and app-owned unless promoted later

projectflow_owned_scope_examples:
- project execution front behavior
- project/task/milestone local UX
- customer-facing explanation material composition
- template and WBS proposal usage in ProjectFlow context

non_projectflow_owned_scope_examples:
- civilization-wide constitutional rules
- common component canonical ownership
- ERP formal enterprise truth

# ============================================================
# PROJECT FLOW CANONICAL PRIORITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines priority order when ProjectFlow references wider canonical sources.

priority_order:
1. civilization foundation and system-wide constitutional rules
2. ERP formal truth and ERP-side canonical enterprise scope
3. shared BusinessOS mediation and integration ownership
4. application common component canonical ownership
5. ProjectFlow application-local additive design

priority_rules:
- lower-priority local wording must not override higher-priority canonical ownership
- ProjectFlow may add local detail only within its own application scope
- when conflict is found, ProjectFlow should defer upward rather than fork silently
- app-local UX optimization is allowed if ownership and truth boundaries are preserved

# ============================================================
# PROJECT FLOW BUSINESSOS DEPENDENCY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines BusinessOS dependency points for ProjectFlow.

businessos_dependency_domains:
- ERP mediation boundary
- shared integration execution
- sync request routing
- reference master access when exposed through BusinessOS
- possible shared organizational/user context
- possible shared common component consumption

projectflow_depends_on_businessos_for:
- ERP-facing import request mediation
- ERP-facing export request mediation
- sync retry mediation
- sync status retrieval at mediated boundary
- ERP-side reference access through approved shared boundary

projectflow_does_not_depend_on_businessos_for:
- local project/task/milestone UI rendering
- local issue/risk handling
- local memo/comment handling
- local template/WBS proposal behavior
- local customer-facing material composition
- local multilingual label resolution

architecture_rules:
- BusinessOS is a mediation layer,
  not ProjectFlow local screen logic owner
- ProjectFlow local operational UX should remain operable
  even when mediated sync paths are unavailable where allowed
- local app scope and mediated external scope must remain separable

# ============================================================
# PROJECT FLOW ERP DEPENDENCY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines ERP dependency points and non-dependency points for ProjectFlow.

erp_dependency_domains:
- formal project reference
- formal customer reference
- formal contract or budget reference
- formal organization reference
- ERP-facing import/export mediation through BusinessOS

projectflow_depends_on_erp_for:
- formal project code when present
- formal customer reference when present
- formal budget or accounting-side view values when exposed
- ERP-origin organization or enterprise reference values
- ERP-side project synchronization through approved mediated path

projectflow_does_not_depend_on_erp_for:
- local task execution UX
- local milestone manipulation UX
- local issue and risk operation
- local memo and comment operation
- local customer-facing material composition
- local export file generation
- local report draft generation
- local template and WBS proposal generation

architecture_rules:
- ERP is a formal truth source for ERP-owned fields
- ProjectFlow is a local execution front for app-owned fields
- ERP dependency must remain mediated by BusinessOS
- ERP absence must not erase ProjectFlow local UX ownership

# ============================================================
# PROJECT FLOW COMMON COMPONENT DEPENDENCY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines which areas of ProjectFlow should depend on common components
and which areas should remain application-local.

common_component_dependency_domains:
- dashboard summary cards
- overdue and delay visibility
- severity and risk emphasis
- sync status and retry visibility
- spreadsheet export request shell
- customer explanation material shell
- read-only entitlement guard
- multilingual label and export header layer
- device parity action/layout shell

application_local_domains:
- ProjectFlow project lifecycle wording
- ProjectFlow task and milestone operational semantics
- ProjectFlow customer-facing material composition rules
- ProjectFlow template and WBS proposal behavior
- ProjectFlow project-specific scheduling assumptions
- ProjectFlow customer-explanation-specific source selection

architecture_rules:
- common components should be consumed where canonicalized elsewhere
- ProjectFlow should not locally re-canonicalize shared common components
- app-local behavior should remain app-local unless promoted later
- local UX composition may combine common shells with app-specific data

# ============================================================
# PROJECT FLOW LOCAL OWNERSHIP ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines what ProjectFlow locally owns
after separating higher-level canonical references,
BusinessOS mediation,
ERP-owned truth,
and shared common components.

projectflow_local_ownership_domains:
- project execution front UX
- task execution UX
- milestone execution UX
- issue and risk operational UX
- local time entry UX
- customer-facing material composition
- progress report draft composition
- template usage and WBS proposal behavior
- local memo and comment context
- local screen state and wireframe composition
- local multilingual label application in ProjectFlow context

local_ownership_rules:
- ProjectFlow owns app-local composition and behavior
- ProjectFlow may consume external truth but does not re-own it
- ProjectFlow may consume common shells but keeps app semantics local
- ProjectFlow local ownership should remain additive and app-scoped

# ============================================================
# PROJECT FLOW DATA OWNERSHIP MATRIX ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines field-level and data-level ownership matrix guidance.

ownership_categories:
- projectflow_local_truth
- erp_formal_truth
- mediated_status_context
- common_component_display_only
- localized_display_only

architecture_rules:
- one field should have one primary truth owner
- ProjectFlow may display ERP-owned values without re-owning them
- mediated status context remains boundary-derived,
  not local truth replacement
- common components may display or shell-wrap data,
  but do not become truth owner
- localized labels are display-only,
  not business-truth data

# ============================================================
# PROJECT FLOW EDITABILITY BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines editability versus reference-only boundaries
for ProjectFlow data fields.

editability_categories:
- locally_editable
- locally_editable_after_generation
- reference_only
- derived_read_only
- mediated_status_only
- localized_display_only

architecture_rules:
- locally_editable fields belong to ProjectFlow operational scope
- reference_only fields must not be edited as local truth
- derived_read_only fields may be recalculated,
  but not directly edited as source truth
- mediated_status_only fields reflect boundary state,
  not editable business truth
- localized_display_only fields are presentation artifacts only

# ============================================================
# PROJECT FLOW ACTION AUTHORITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines action-level authority and execution boundary guidance.

action_authority_categories:
- always_viewable
- locally_executable
- locally_executable_if_permitted
- blocked_in_read_only
- mediated_boundary_action
- review_required_before_external_use

architecture_rules:
- visibility and executability must be distinguished
- blocked actions may remain visible
- mediated boundary actions must remain separate from local actions
- external-use outputs require explicit review awareness
- device type must not change action authority

# ============================================================
# PROJECT FLOW STATE TRANSITION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines state-transition and review-transition boundaries.

state_domains:
- project execution state
- task execution state
- milestone execution state
- sync state
- report review state
- schedule proposal state
- export job state
- entitlement state

architecture_rules:
- execution state and review state must remain distinct
- proposal state and confirmed state must remain distinct
- sync boundary state must remain distinct from business execution state
- entitlement state must remain distinct from business item state
- export completion must not imply review completion automatically

# ============================================================
# PROJECT FLOW AUDITABILITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines auditability,
history,
and traceability boundaries.

auditability_domains:
- project header changes
- task and milestone changes
- issue and risk changes
- time entry changes
- sync request and sync result visibility
- report draft review progression
- schedule proposal adjustment and confirmation
- customer-facing material generation and export awareness

architecture_rules:
- operational truth changes should remain traceable
- proposal adjustment should remain distinguishable from confirmed truth
- review progression should remain distinguishable from export execution
- sync boundary history should remain inspectable
- audit visibility should support customer-facing explanation accountability where needed

# ============================================================
# PROJECT FLOW UPLOADED CANONICAL REFERENCE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how ProjectFlow should reference the uploaded canonical documents
that exist outside the local ProjectFlow folder.

uploaded_reference_domains:
- foundation canonical
- civilization system rules
- CivilizationOS canonical
- PersonaOS integrated canonical
- BusinessOS integrated canonical
- GameOS integrated canonical
- StreamingOS integrated canonical
- ERP design bible
- ERP enterprise scope
- portal-site reflection note
- ERP dumps and schema summaries

reference_usage_rules:
- uploaded canonicals are alignment references,
  not locally re-owned ProjectFlow documents
- ProjectFlow should defer to them when ownership is external
- ProjectFlow may add local app detail without replacing uploaded canonical ownership
- dumps and schema summaries are reference aids,
  not canonical replacements by themselves

reference_priority_examples:
- foundation and civilization rules guide upper boundary interpretation
- BusinessOS integrated canonical guides mediation interpretation
- ERP design bible and ERP enterprise scope guide ERP-side truth interpretation
- schema summaries guide implementation-prep understanding only

# ============================================================
# PROJECT FLOW REFERENCE UPDATE GOVERNANCE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines governance for updating or replacing external reference documents
used by ProjectFlow.

governance_targets:
- uploaded canonical references
- uploaded schema summaries
- uploaded dumps
- ProjectFlow local reference indexes

governance_rules:
- ProjectFlow local reference notes must track reference filename changes explicitly
- replacement of an external reference does not automatically change local ownership rules
- higher-canonical ownership remains external even when filenames are updated
- schema summaries and dumps may be refreshed,
  but their role as reference aids remains unchanged
- ProjectFlow should record new reference filenames rather than silently overwriting interpretation assumptions

# ============================================================
# PROJECT FLOW REFERENCE CONFLICT RESOLUTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how ProjectFlow should resolve conflicts
between local notes and external reference documents.

conflict_types:
- local_vs_higher_canonical
- businessos_vs_erp_interpretation
- schema_summary_vs_schema_full_detail
- canonical_vs_dump_detail
- old_uploaded_reference_vs_new_uploaded_reference

resolution_rules:
- higher canonical ownership wins over ProjectFlow local wording
- BusinessOS mediation interpretation wins over local direct-ERP assumptions
- ERP formal truth interpretation wins over local ERP-field reinterpretation
- schema full detail may refine schema summary,
  but does not replace higher ownership rules
- dumps may support inspection,
  but do not override canonical ownership by themselves
- newer explicit reference should be reviewed before reuse of older interpretation

required_result:
When conflict exists,
ProjectFlow should record:
- which sources conflict
- which source has priority
- whether local notes need adjustment

# ============================================================
# PROJECT FLOW IMPLEMENTATION PREP SCOPE SPLIT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the split between areas that are safe for implementation-prep
and areas that should remain blocked until further confirmation.

safe_for_implementation_prep_domains:
- local screen composition planning
- local state and event shaping
- local use case grouping
- local wireframe refinement
- customer-facing material layout refinement
- multilingual label-pack expansion within fixed scope
- read-only UI affordance refinement
- auditability capture planning at app-local scope

blocked_until_further_confirmation_domains:
- unresolved ERP-owned field reinterpretation
- unresolved BusinessOS mediation reinterpretation
- unresolved external canonical conflicts
- final DB hardening assumptions tied to unresolved ownership questions
- any direct ERP access assumption
- any local takeover of shared common component ownership

architecture_rules:
- safe prep does not mean implementation execution
- blocked areas remain blocked until ownership and boundary conflicts are resolved
- local additive refinement may continue where it does not rewrite higher ownership

# ============================================================
# PROJECT FLOW NEXT PHASE PRIORITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines recommended priority order
for the next phase after current design closure.

priority_groups:
- safe_local_refinement_first
- boundary_sensitive_planning_second
- blocked_or_deferred_areas_last

architecture_rules:
- start from app-local stable areas first
- boundary-sensitive planning should follow only after safe-local refinement is clear
- unresolved external ownership conflict areas remain blocked
- no direct ERP assumption enters earlier priority groups

# ============================================================
# PROJECT FLOW FINAL MODULE AND RUNTIME ARCHITECTURE
# ============================================================

status: canonical-finalized
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Finalizes module naming,
dependency injection direction,
offline/cache strategy,
and background-job style.

# ============================================================
# 1. FINAL MODULE NAMING
# ============================================================

final_module_set:
- app-projectflow
- core-common
- core-ui
- core-domain
- core-data
- feature-dashboard
- feature-project
- feature-task
- feature-milestone
- feature-issue-risk
- feature-time-entry
- feature-sync
- feature-export-report
- feature-form-memo-comment
- feature-automation
- feature-template-proposal
- feature-customer-material
- integration-businessos
- test-support

module_rules:
- app-projectflow is the application entry module
- core-common contains cross-feature common utilities
- core-ui contains shared UI primitives inside ProjectFlow scope
- core-domain contains ProjectFlow-local domain contracts
- core-data contains ProjectFlow-local repository/data implementations
- feature modules stay feature-scoped
- integration-businessos isolates mediated external interaction

# ============================================================
# 2. FINAL DI DIRECTION
# ============================================================

final_di_choice:
manual_dependency_injection

di_rules:
- initial implementation uses manual dependency injection
- no DI framework is required in the first implementation-planning phase
- constructor injection is the default style
- module wiring stays explicit and readable
- framework-based DI may be revisited later only if complexity justifies it

reasoning:
- reduces early framework lock-in
- matches current design-stable but implementation-not-started phase
- keeps dependency graph understandable

# ============================================================
# 3. FINAL OFFLINE / CACHE STRATEGY
# ============================================================

final_offline_cache_strategy:
local_first_operational_cache_with_mediated_sync

strategy_rules:
- ProjectFlow local operational data is cached locally
- local operational UX should remain readable without immediate network dependency where possible
- ERP-facing synchronization remains mediated and asynchronous
- sync state must clearly show when local and mediated state differ
- offline mode is not treated as full autonomous ERP replacement
- cache invalidation is driven by local mutation and mediated refresh events

initial_cache_scope:
- project list and detail
- task and milestone lists
- issue and risk lists
- time entry lists
- memo and comment lists
- report drafts
- templates
- proposals
- latest sync status snapshots

non_goal:
- full offline ERP truth ownership
- silent conflict resolution across mediated boundary

# ============================================================
# 4. FINAL BACKGROUND JOB STYLE
# ============================================================

final_background_job_style:
platform_scheduler_plus_local_refresh_triggers

style_rules:
- background work is limited to safe refresh,
  sync polling,
  export/report job status refresh,
  and retry-eligible mediated follow-up
- background work must not silently mutate local business meaning
- background work must surface status outcomes explicitly
- UI-driven refresh remains primary,
  background refresh is supportive only

initial_background_job_targets:
- sync status refresh
- export job status refresh
- report generation status refresh
- notification summary refresh

non_goal:
- hidden autonomous workflow execution
- hidden ERP-direct retry behavior

# ============================================================
# PROJECT FLOW DB OWNER REVIEW ENTRY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Defines the entry architecture
for DB-owner review of remaining ProjectFlow DB concerns.

db_review_scope:
- final schema confirmation
- migration hardening order
- RLS execution design
- final constraint hardening rollout
- trigger rollout sequencing

architecture_rules:
- DB-owner review starts from already-fixed ownership and exact-boundary notes
- DB-owner review must not reopen broad app identity or ERP/BusinessOS boundary without explicit reason
- DB-owner review focuses on execution-readiness and DB hardening only
- DB-owner review outputs should remain separable from later application coding work

# ============================================================
# PROJECT FLOW IMPLEMENTATION START ENTRY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the clean entry point into implementation-start planning
after DB-owner review and reflection are complete enough.

entry_conditions:
- design-phase closure remains valid
- exact boundary notes remain valid
- DB-owner review result is recorded
- DB-owner review reflection is recorded where applicable
- blocked DB areas remain explicit if not fully unlocked

architecture_rules:
- implementation-start planning should begin from confirmed local ownership and boundary assumptions
- implementation-start planning must not silently assume unresolved DB items are fixed
- implementation-start planning should separate:
  - app-local implementation work
  - DB-phase dependent work
  - still-blocked work

# ============================================================
# PROJECT FLOW OFFICIAL COMMON COMPONENT LEDGER ALIGNMENT
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Aligns ProjectFlow with the official application common component ledger.

official_common_component_reference:
- 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md

alignment_rules:
- the official common component ledger is the primary source
  for already-promoted shared component ownership
- ProjectFlow must not locally redefine ownership
  for components already registered in the official ledger
- ProjectFlow may still keep app-local composition logic
  around officially shared components
- ProjectFlow-origin candidates remain app-local
  until separately promoted into the official ledger

important_boundary:
Official shared component ownership and ProjectFlow local additive behavior
must remain distinct.

# ============================================================
# PROJECT FLOW SHARED COMPONENT ADAPTER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines adapter and wrapper architecture
when ProjectFlow consumes official shared common components.

architecture_rules:
- ProjectFlow should not inject app-specific semantics directly into official shared components
- app-specific mapping should be handled by ProjectFlow-side adapters or wrappers
- shared component contract stays shared
- ProjectFlow-specific labels,
  visibility rules,
  grouping,
  and composition remain local unless officially shared elsewhere

adapter_targets:
- dashboard summary shell
- sync status shell
- export shell
- entitlement guard shell
- multilingual label shell
- customer material shell
- device parity layout shell

important_boundary:
Shared component ownership remains external.
ProjectFlow owns only local mapping and composition around it.

# ============================================================
# PROJECT FLOW LOCAL ORCHESTRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how ProjectFlow composes final screens
when using official shared common components.

architecture_rules:
- final screen responsibility remains ProjectFlow-local
- shared components may provide shells,
  primitives,
  or reusable panels
- ProjectFlow local orchestration decides:
  - screen order
  - grouping
  - visibility
  - local wording
  - local state binding
  - local action routing
- one screen may combine multiple shared components
  with ProjectFlow-local sections
- orchestration must not be mistaken for shared ownership

screen_orchestration_targets:
- dashboard
- project_detail
- export and report screens
- customer material screens
- sync visibility screens

# ============================================================
# PROJECT FLOW CODING START ENTRY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the entry point from feature-slice planning
into coding-start planning.

entry_conditions:
- required feature-slice deliverables are reviewed in usable form
- approved scope is explicit
- blocked scope remains explicit
- boundary-aware unresolved items remain excluded from coding-start scope
- shared versus local component decisions are explicit where needed

architecture_rules:
- coding-start planning must consume approved slice outputs,
  not raw planning drafts
- coding-start scope must be narrower than broad feature scope
- blocked or boundary-sensitive unresolved areas must not leak into initial coding-start scope

# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK ENTRY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the entry point from coding-start planning
into actual implementation task breakdown.

entry_conditions:
- coding-start package outputs are reviewed in usable form
- approved scope is explicit
- blocked scope remains explicit
- module/package boundaries remain explicit
- shared/local component decisions are explicit where relevant
- boundary-aware unresolved scope remains excluded

architecture_rules:
- actual implementation task breakdown must consume approved coding-start outputs
- actual implementation task scope must be narrower than coding-start package scope
- blocked or unresolved boundary-aware areas must not leak into initial coding tasks

# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the first-wave actual implementation task structure
after coding-start planning outputs are approved.

task_groups:
- module skeleton tasks
- screen state-holder tasks
- viewmodel boundary tasks
- customer material flow tasks
- repository contract tasks
- gateway contract tasks
- cache and sync surface tasks

architecture_rules:
- actual implementation tasks must remain narrower than coding-start packages
- local tasks should come before most boundary-aware tasks
- blocked or unresolved boundary-sensitive scope must remain excluded
- task grouping should preserve module ownership explicitly

# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the next implementation-unit layer
after first-wave actual implementation tasks.

unit_groups:
- app entry units
- navigation units
- dashboard units
- project detail units
- customer material units
- repository units
- gateway units
- sync/cache units

architecture_rules:
- implementation units must be narrower than actual implementation tasks
- units should preserve module and package ownership
- boundary-aware units must stay separated from purely local units
- blocked boundary scope must remain excluded

# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the concrete coding work-group layer
after next implementation units are approved.

work_group_domains:
- app bootstrap
- navigation graph
- dashboard ui
- dashboard state and actions
- project detail state
- customer material preview
- customer material export
- repository implementation
- gateway implementation
- sync visibility
- cache refresh

architecture_rules:
- concrete coding work groups must be narrower than implementation units
- work groups should preserve module,
  package,
  and ownership boundaries
- local work groups should come before most boundary-aware work groups
- blocked boundary scope must remain excluded

# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the concrete file/task unit layer
after concrete coding work groups are approved.

unit_domains:
- app entry files
- navigation files
- screen container files
- reducer files
- viewmodel files
- preview files
- export route files
- repository files
- gateway files
- sync UI files
- cache trigger files

architecture_rules:
- concrete file/task units must be narrower than concrete coding work groups
- file units should preserve module and package ownership
- local file units should come before most boundary-aware file units
- blocked boundary scope must remain excluded

# ============================================================
# PROJECT FLOW PATCH TASK ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the patch-level coding task layer
after concrete file/task units are approved.

patch_task_domains:
- entry wiring patches
- initializer patches
- navigation patches
- container composition patches
- reducer branch patches
- viewmodel dispatch patches
- preview binding patches
- export action patches
- repository method patches
- gateway mapping patches
- sync ui patches
- refresh trigger patches

architecture_rules:
- patch tasks must be narrower than file/task units
- patch tasks should preserve file ownership and package boundaries
- local patch tasks should come before most boundary-aware patch tasks
- blocked boundary scope must remain excluded
- one patch task should target one small explicit change area

# ============================================================
# PROJECT FLOW COMMIT PR UNIT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the commit / PR-sized unit layer
after patch-level coding tasks are approved.

unit_domains:
- entry bootstrap commits
- navigation commits
- dashboard commits
- project detail commits
- material preview commits
- material export commits
- repository commits
- gateway commits
- sync UI commits
- refresh trigger commits

architecture_rules:
- commit / PR-sized units must be narrower than patch tasks
- one unit should target one coherent reviewable change set
- local units should come before most boundary-aware units
- blocked boundary scope must remain excluded
- commit / PR scope must stay review-friendly and additive

# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the merge / release-prep unit layer
after commit / PR-sized units are approved.

unit_domains:
- app entry merge units
- bootstrap merge units
- navigation merge units
- dashboard merge units
- project detail merge units
- material preview merge units
- material export merge units
- repository merge units
- gateway merge units
- sync ui merge units
- refresh trigger merge units
- release-prep packaging units

architecture_rules:
- merge / release-prep units must be broader than single commit / PR units
  but still reviewable and explicit
- merge units should preserve approved-scope boundaries
- local merge units should come before most boundary-aware merge units
- blocked boundary scope must remain excluded
- release-prep units must not silently merge blocked scope

# ============================================================
# PROJECT FLOW RC HANDOFF UNIT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the release-candidate and handoff unit layer
after merge / release-prep outputs are approved.

unit_domains:
- feature-area release-candidate check units
- packaging release-candidate units
- implementation handoff summary units
- release-note and readiness units

architecture_rules:
- release-candidate and handoff units must be broader than merge units
  but still explicit and reviewable
- approved-scope boundaries must remain preserved
- blocked boundary scope must remain excluded
- handoff units must summarize approved reality,
  not aspirational future scope

# ============================================================
# PROJECT FLOW FINAL CLOSURE ENTRY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the final-closure entry layer
after release-candidate and handoff units are approved.

closure_entry_conditions:
- required RC units are reviewed in usable form
- approved scope is explicit
- blocked scope remains explicit
- handoff summary is based on approved reality
- unresolved boundary-sensitive scope remains excluded from closure claims

architecture_rules:
- final closure should summarize approved reality only
- final closure must not silently convert blocked scope into done scope
- closure materials should remain restart-friendly
- closure should preserve distinction between:
  - done
  - approved but deferred
  - blocked
  - future sophistication


# ============================================================
# PROJECT FLOW MODEL INDEX
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0300000_PROJECT_FLOW_MODEL_INDEX.md
- 0300001_PROJECT_FLOW_MODEL_OVERVIEW.md
- 0300002_PROJECT_MODEL.md
- 0300003_PROJECT_TASK_MODEL.md
- 0300004_PROJECT_MILESTONE_MODEL.md
- 0300005_PROJECT_ISSUE_MODEL.md
- 0300006_PROJECT_RISK_MODEL.md
- 0300007_PROJECT_TIME_ENTRY_MODEL.md
- 0300008_PROJECT_SYNC_REQUEST_MODEL.md
- 0300009_PROJECT_SYNC_LOG_MODEL.md
- 0300010_PROJECT_EXPORT_JOB_MODEL.md
- 0300011_PROJECT_PROGRESS_REPORT_DRAFT_MODEL.md
- 0300012_PROJECT_FLOW_PHYSICAL_MODEL_BINDING_NOTE.md
- 0300013_PROJECT_FORM_REQUEST_MODEL.md
- 0300014_PROJECT_AUTOMATION_RULE_MODEL.md
- 0300015_PROJECT_MEMO_MODEL.md
- 0300016_PROJECT_COMMENT_THREAD_MODEL.md
- 0300017_PROJECT_TEMPLATE_MODEL.md
- 0300018_PROJECT_TEMPLATE_TASK_MODEL.md
- 0300019_PROJECT_SCHEDULE_PROPOSAL_MODEL.md
- 0300020_PROJECT_FLOW_LOCAL_OWNERSHIP_MODEL_NOTE.md
- 0300021_PROJECT_FLOW_DATA_OWNERSHIP_MATRIX_NOTE.md
- 0300022_PROJECT_FLOW_EDITABILITY_MATRIX_NOTE.md
- 0300023_PROJECT_FLOW_ACTION_AUTHORITY_MATRIX_NOTE.md
- 0300024_PROJECT_FLOW_STATE_TRANSITION_MATRIX_NOTE.md
- 0300025_PROJECT_FLOW_AUDIT_EVENT_MODEL_NOTE.md

# ============================================================
# PROJECT FLOW MODEL OVERVIEW
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

models:
- project
- project_task
- project_milestone
- project_issue
- project_risk
- project_time_entry
- project_sync_request
- project_sync_log

# ============================================================
# PROJECT MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- project_id
- erp_project_code
- project_name
- project_status
- project_type
- customer_id
- customer_name_snapshot
- project_manager_id
- planned_start_date
- planned_end_date
- actual_start_date
- actual_end_date
- progress_percent
- delay_days
- budget_amount_view
- actual_cost_amount_view
- priority
- health_status
- sync_state
- last_imported_at
- last_exported_at
- created_at
- updated_at

ownership_notes:
- erp_project_code is ERP-owned
- budget_amount_view is ERP-owned
- progress_percent may be mapped outbound by policy

# ============================================================
# PROJECT TASK MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- task_id
- project_id
- parent_task_id
- task_title
- task_description
- assignee_id
- status
- priority
- planned_start_date
- planned_end_date
- actual_start_date
- actual_end_date
- progress_percent
- delay_days
- dependency_task_id
- workload_estimate_hours
- workload_actual_hours
- created_at
- updated_at

# ============================================================
# PROJECT MILESTONE MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- milestone_id
- project_id
- milestone_name
- milestone_status
- due_date
- completed_at
- delay_days
- owner_id
- created_at
- updated_at

# ============================================================
# PROJECT ISSUE MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- issue_id
- project_id
- related_task_id
- title
- description
- severity
- status
- owner_id
- due_date
- resolved_at
- created_at
- updated_at

# ============================================================
# PROJECT RISK MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- risk_id
- project_id
- title
- description
- probability_level
- impact_level
- risk_score
- mitigation_plan
- owner_id
- status
- created_at
- updated_at

# ============================================================
# PROJECT TIME ENTRY MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- time_entry_id
- project_id
- task_id
- member_id
- work_date
- hours
- work_type
- note
- export_state
- exported_at
- created_at
- updated_at

# ============================================================
# PROJECT SYNC REQUEST MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- sync_request_id
- sync_direction
- sync_type
- target_project_id
- status
- requested_by
- requested_at
- executed_at
- retry_count
- error_code
- error_message

# ============================================================
# PROJECT SYNC LOG MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- sync_log_id
- sync_request_id
- target_entity_type
- target_entity_id
- field_name
- previous_value_snapshot
- next_value_snapshot
- result_status
- created_at

# ============================================================
# PROJECT EXPORT JOB MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- export_job_id
- export_type
- export_format
- target_scope
- filter_snapshot_json
- column_selection_json
- masking_policy_snapshot_json
- requested_by
- requested_at
- completed_at
- status
- file_uri
- error_code
- error_message

notes:
export_format supports xlsx and csv.
target_scope identifies which operational view was exported.

# ============================================================
# PROJECT PROGRESS REPORT DRAFT MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- report_draft_id
- project_id
- report_type
- report_period_start
- report_period_end
- quantitative_summary_json
- qualitative_draft_text
- next_actions_text
- support_requests_text
- customer_confirmation_items_text
- created_by
- created_at
- updated_at
- approval_status

report_types:
- weekly
- monthly
- customer
- internal

notes:
This model stores draft content only.
Final external use requires human editing and approval.

# ============================================================
# PROJECT FLOW PHYSICAL MODEL BINDING NOTE
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
This note binds logical models to physical tables.

bindings:
- project -> pf_project
- project_task -> pf_project_task
- project_milestone -> pf_project_milestone
- project_issue -> pf_project_issue
- project_risk -> pf_project_risk
- project_time_entry -> pf_project_time_entry
- project_sync_request -> pf_sync_request
- project_sync_log -> pf_sync_log
- project_export_job -> pf_export_job
- project_progress_report_draft -> pf_progress_report_draft

# ============================================================
# PROJECT FORM REQUEST MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- form_request_id
- company_id
- project_id
- form_type
- title
- payload_json
- submitted_by_user_id
- submitted_at
- status
- created_target_entity_type
- created_target_entity_id

form_type_candidates:
- task_create
- issue_register
- progress_report_request

# ============================================================
# PROJECT AUTOMATION RULE MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- automation_rule_id
- company_id
- rule_name
- trigger_type
- target_scope
- condition_json
- action_json
- is_enabled
- created_at
- updated_at

trigger_type_candidates:
- overdue_task_detected
- high_risk_detected
- sync_failed
- milestone_delayed

# ============================================================
# PROJECT MEMO MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- memo_id
- company_id
- project_id
- memo_type
- title
- body_text
- created_by_user_id
- created_at
- updated_at

memo_type_candidates:
- general_note
- meeting_note
- decision_note

# ============================================================
# PROJECT COMMENT THREAD MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- comment_id
- company_id
- project_id
- target_entity_type
- target_entity_id
- parent_comment_id
- comment_text
- created_by_user_id
- created_at
- updated_at

target_entity_type_candidates:
- project
- task
- issue
- risk
- milestone

# ============================================================
# PROJECT TEMPLATE MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- project_template_id
- company_id
- template_name
- project_type
- description
- is_active
- created_by_user_id
- created_at
- updated_at

notes:
Project template is a reusable pattern source
for project creation and WBS scheduling proposal.

# ============================================================
# PROJECT TEMPLATE TASK MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- project_template_task_id
- project_template_id
- task_template_name
- description
- sequence_no
- relative_start_offset_days
- planned_duration_days
- dependency_template_task_id
- default_priority
- milestone_flag

notes:
Offsets are relative and used for scheduling proposal generation.

# ============================================================
# PROJECT SCHEDULE PROPOSAL MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- schedule_proposal_id
- company_id
- project_id
- project_template_id
- project_type
- project_start_date
- business_day_rule_key
- proposal_payload_json
- generated_by_user_id
- generated_at
- status

status_candidates:
- proposed
- adjusted
- confirmed
- discarded

notes:
Generated schedule remains proposal-only until confirmed by a human.

# ============================================================
# PROJECT FLOW LOCAL OWNERSHIP MODEL NOTE
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Summarizes models that represent primarily ProjectFlow-local ownership.

primarily_local_models:
- project_task
- project_milestone
- project_issue
- project_risk
- project_time_entry
- project_export_job
- project_progress_report_draft
- project_form_request
- project_memo
- project_comment_thread
- project_template
- project_template_task
- project_schedule_proposal

mixed_boundary_models:
- project header with ERP reference fields
- sync request and sync log

notes:
Mixed-boundary models may contain ERP-linked or mediated status context,
but ProjectFlow still owns their app-local usage and presentation layer.

# ============================================================
# PROJECT FLOW DATA OWNERSHIP MATRIX NOTE
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps major ProjectFlow data fields to ownership categories.

ownership_matrix:

project_id:
- owner_type: projectflow_local_truth
- note: local application identifier

erp_project_code:
- owner_type: erp_formal_truth
- note: ERP-origin formal reference when present

project_name:
- owner_type: mixed_by_source
- note: local projectflow-created project may own locally;
        ERP-imported reference may be ERP-origin display-aligned

project_status:
- owner_type: projectflow_local_truth
- note: local operational execution status

customer_id:
- owner_type: erp_formal_truth_or_external_reference
- note: formal customer reference when ERP-linked

customer_name_snapshot:
- owner_type: display_snapshot
- note: local display convenience,
        not formal truth owner

project_manager_id:
- owner_type: local_or_enterprise_reference
- note: depends on approved reference source

planned_start_date:
- owner_type: projectflow_local_truth
- note: operational planning field after local confirmation

planned_end_date:
- owner_type: projectflow_local_truth
- note: operational planning field after local confirmation

actual_start_date:
- owner_type: projectflow_local_truth
- note: operational execution tracking

actual_end_date:
- owner_type: projectflow_local_truth
- note: operational execution tracking

progress_percent:
- owner_type: projectflow_local_truth
- note: local operational progress measure

delay_days:
- owner_type: derived_local_truth
- note: derived from local schedule state

budget_amount_view:
- owner_type: erp_formal_truth_view
- note: view/reference value only when ERP-linked

actual_cost_amount_view:
- owner_type: erp_formal_truth_view
- note: accounting-side reference value only when ERP-linked

task_title:
- owner_type: projectflow_local_truth
- note: local execution task naming

task_description:
- owner_type: projectflow_local_truth
- note: local execution detail

assignee_id:
- owner_type: local_or_reference_bound
- note: local assignment referencing approved identity source

task_status:
- owner_type: projectflow_local_truth
- note: local execution state

milestone_name:
- owner_type: projectflow_local_truth
- note: local milestone operation

milestone_status:
- owner_type: projectflow_local_truth
- note: local milestone execution state

issue_title:
- owner_type: projectflow_local_truth
- note: local issue tracking

risk_title:
- owner_type: projectflow_local_truth
- note: local risk tracking

work_date:
- owner_type: projectflow_local_truth
- note: local work log truth

hours:
- owner_type: projectflow_local_truth
- note: local time-entry truth

sync_request_id:
- owner_type: mediated_status_context
- note: boundary-tracking identifier for mediated sync flow

sync_status:
- owner_type: mediated_status_context
- note: boundary-derived status shown locally

error_code:
- owner_type: mediated_status_context_or_local_operation_error
- note: depends on context

report_draft_id:
- owner_type: projectflow_local_truth
- note: local draft identifier

quantitative_summary_json:
- owner_type: projectflow_local_truth_derived
- note: locally aggregated output data

qualitative_draft_text:
- owner_type: projectflow_local_truth
- note: local editable draft content

memo_body_text:
- owner_type: projectflow_local_truth
- note: local contextual note content

comment_text:
- owner_type: projectflow_local_truth
- note: local lightweight communication content

project_template_id:
- owner_type: projectflow_local_truth
- note: local reusable template identity

schedule_proposal_id:
- owner_type: projectflow_local_truth
- note: local proposal identity

proposal_payload_json:
- owner_type: projectflow_local_truth
- note: local generated proposal content

localized_label_key:
- owner_type: localized_display_only
- note: display-layer artifact,
        not business truth

# ============================================================
# PROJECT FLOW EDITABILITY MATRIX NOTE
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps major fields to editability categories.

editability_matrix:

project_id:
- category: reference_only
- note: identifier only

erp_project_code:
- category: reference_only
- note: ERP-owned formal reference

project_name:
- category: locally_editable_or_reference_only_by_source
- note: locally created project may edit;
        ERP-origin reference may be locked by policy

project_status:
- category: locally_editable
- note: local operational status

customer_id:
- category: reference_only
- note: formal customer reference when ERP-linked

customer_name_snapshot:
- category: derived_read_only
- note: display snapshot convenience

project_manager_id:
- category: locally_editable_or_reference_bound
- note: local assignment within approved reference source

planned_start_date:
- category: locally_editable
- note: editable operational schedule field

planned_end_date:
- category: locally_editable
- note: editable operational schedule field

actual_start_date:
- category: locally_editable
- note: operational execution tracking

actual_end_date:
- category: locally_editable
- note: operational execution tracking

progress_percent:
- category: locally_editable_or_derived_read_only_by_policy
- note: may be directly updated or derived from tasks depending on local rule

delay_days:
- category: derived_read_only
- note: derived from schedule state

budget_amount_view:
- category: reference_only
- note: ERP-side view/reference

actual_cost_amount_view:
- category: reference_only
- note: ERP/accounting-side view/reference

task_title:
- category: locally_editable

task_description:
- category: locally_editable

assignee_id:
- category: locally_editable

task_status:
- category: locally_editable

milestone_name:
- category: locally_editable

milestone_status:
- category: locally_editable

issue_title:
- category: locally_editable

risk_title:
- category: locally_editable

work_date:
- category: locally_editable

hours:
- category: locally_editable

sync_request_id:
- category: mediated_status_only

sync_status:
- category: mediated_status_only

error_code:
- category: mediated_status_only_or_local_operation_error

report_draft_id:
- category: reference_only

quantitative_summary_json:
- category: derived_read_only
- note: generated summary base

qualitative_draft_text:
- category: locally_editable_after_generation

next_actions_text:
- category: locally_editable_after_generation

support_requests_text:
- category: locally_editable_after_generation

customer_confirmation_items_text:
- category: locally_editable_after_generation

memo_body_text:
- category: locally_editable

comment_text:
- category: locally_editable

project_template_id:
- category: reference_only

template_name:
- category: locally_editable

task_template_name:
- category: locally_editable

relative_start_offset_days:
- category: locally_editable

planned_duration_days:
- category: locally_editable

schedule_proposal_id:
- category: reference_only

proposal_payload_json:
- category: locally_editable_after_generation
- note: editable through proposal adjustment flow before confirmation

localized_label_key:
- category: localized_display_only

# ============================================================
# PROJECT FLOW ACTION AUTHORITY MATRIX NOTE
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps major actions to authority categories.

action_authority_matrix:

view_dashboard:
- category: always_viewable

view_project_list:
- category: always_viewable

view_project_detail:
- category: always_viewable

create_project:
- category: blocked_in_read_only

edit_project_local_fields:
- category: locally_executable_if_permitted

archive_project:
- category: blocked_in_read_only

view_task_list:
- category: always_viewable

create_task:
- category: blocked_in_read_only

edit_task:
- category: locally_executable_if_permitted

change_task_status:
- category: locally_executable_if_permitted

register_time_entry:
- category: blocked_in_read_only

create_milestone:
- category: blocked_in_read_only

complete_milestone:
- category: locally_executable_if_permitted

register_issue:
- category: blocked_in_read_only

register_risk:
- category: blocked_in_read_only

edit_issue_or_risk:
- category: locally_executable_if_permitted

request_erp_import:
- category: mediated_boundary_action

request_erp_export:
- category: mediated_boundary_action

request_sync_retry:
- category: mediated_boundary_action

view_sync_status:
- category: always_viewable

generate_xlsx:
- category: blocked_in_read_only

generate_csv:
- category: blocked_in_read_only

generate_progress_report_draft:
- category: blocked_in_read_only

edit_progress_report_draft:
- category: locally_executable_if_permitted

export_customer_facing_schedule:
- category: review_required_before_external_use

export_progress_report:
- category: review_required_before_external_use

export_issue_list:
- category: review_required_before_external_use

export_risk_list:
- category: review_required_before_external_use

export_decision_note:
- category: review_required_before_external_use

export_follow_up_action_list:
- category: review_required_before_external_use

create_template:
- category: blocked_in_read_only

edit_template:
- category: locally_executable_if_permitted

generate_schedule_proposal:
- category: blocked_in_read_only

adjust_schedule_proposal:
- category: locally_executable_if_permitted

confirm_schedule_proposal:
- category: locally_executable_if_permitted

create_memo:
- category: blocked_in_read_only

edit_memo:
- category: locally_executable_if_permitted

add_comment:
- category: blocked_in_read_only

edit_automation_rule:
- category: locally_executable_if_permitted

view_notification_center:
- category: always_viewable

# ============================================================
# PROJECT FLOW STATE TRANSITION MATRIX NOTE
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps major states and allowed transitions.

state_transition_matrix:

project_status:
allowed_values:
- draft
- imported
- active
- on_hold
- completed
- archived

typical_transitions:
- draft -> active
- imported -> active
- active -> on_hold
- on_hold -> active
- active -> completed
- completed -> archived

task_status:
allowed_values:
- not_started
- in_progress
- blocked
- done
- cancelled

typical_transitions:
- not_started -> in_progress
- in_progress -> blocked
- blocked -> in_progress
- in_progress -> done
- not_started -> cancelled

milestone_status:
allowed_values:
- not_started
- in_progress
- completed
- delayed
- cancelled

typical_transitions:
- not_started -> in_progress
- in_progress -> completed
- in_progress -> delayed
- delayed -> in_progress
- delayed -> completed

schedule_proposal_status:
allowed_values:
- proposed
- adjusted
- confirmed
- discarded

typical_transitions:
- proposed -> adjusted
- proposed -> confirmed
- adjusted -> confirmed
- proposed -> discarded
- adjusted -> discarded

report_approval_status:
allowed_values:
- draft
- reviewed
- approved

typical_transitions:
- draft -> reviewed
- reviewed -> approved
- reviewed -> draft

export_job_status:
allowed_values:
- queued
- generating
- completed
- failed

typical_transitions:
- queued -> generating
- generating -> completed
- generating -> failed

sync_status:
allowed_values:
- queued
- running
- partially_failed
- completed
- failed
- cancelled

typical_transitions:
- queued -> running
- running -> completed
- running -> partially_failed
- running -> failed
- queued -> cancelled

entitlement_state:
allowed_values:
- trial_active
- subscribed_active
- unpaid_read_only
- suspended

typical_transitions:
- trial_active -> subscribed_active
- trial_active -> unpaid_read_only
- subscribed_active -> unpaid_read_only
- unpaid_read_only -> subscribed_active

# ============================================================
# PROJECT FLOW AUDIT EVENT MODEL NOTE
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the intended audit-event model scope.

candidate_audit_event_fields:
- audit_event_id
- company_id
- actor_user_id
- target_entity_type
- target_entity_id
- action_type
- previous_state_snapshot_json
- next_state_snapshot_json
- review_state_before
- review_state_after
- occurred_at
- source_context

target_entity_type_candidates:
- project
- task
- milestone
- issue
- risk
- time_entry
- sync_request
- progress_report_draft
- schedule_proposal
- customer_material

action_type_candidates:
- create
- update
- status_change
- review_state_change
- confirm
- discard
- export
- retry_request


# ============================================================
# PROJECT FLOW RUNTIME INDEX
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0400000_PROJECT_FLOW_RUNTIME_INDEX.md
- 0400001_PROJECT_FLOW_RUNTIME_OVERVIEW.md
- 0400002_PROJECT_LIFECYCLE_RUNTIME.md
- 0400003_TASK_RUNTIME.md
- 0400004_PROGRESS_RUNTIME.md
- 0400005_SYNC_RUNTIME.md
- 0400006_IMPORT_EXPORT_RUNTIME.md
- 0400007_EXPORT_AND_REPORT_RUNTIME.md
- 0400008_PROJECT_FLOW_SUBSCRIPTION_RUNTIME.md
- 0400009_PROJECT_FLOW_TEMPLATE_AND_AUTOMATION_RUNTIME.md
- 0400010_PROJECT_FLOW_TIMELINE_GANTT_RUNTIME.md
- 0400011_PROJECT_FLOW_FORM_MEMO_COMMENT_RUNTIME.md
- 0400012_PROJECT_FLOW_LIGHT_AUTOMATION_RUNTIME.md
- 0400013_PROJECT_FLOW_TEMPLATE_AND_WBS_PROPOSAL_RUNTIME.md
- 0400014_PROJECT_FLOW_CUSTOMER_FACING_SCHEDULE_RUNTIME.md
- 0400015_PROJECT_FLOW_MULTILINGUAL_RUNTIME.md
- 0400016_PROJECT_FLOW_LANGUAGE_SELECTION_RUNTIME.md

# ============================================================
# PROJECT FLOW RUNTIME OVERVIEW
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

runtime_focus:
- project lifecycle
- task progression
- milestone delay
- issue/risk lifecycle
- sync execution
- retry behavior

# ============================================================
# PROJECT LIFECYCLE RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

project_states:
- draft
- imported
- active
- on_hold
- completed
- archived

rules:
- imported projects start as imported or active by policy
- completed requires milestone closure or approved override
- archived is read-mostly

# ============================================================
# TASK RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

task_states:
- not_started
- in_progress
- blocked
- done
- cancelled

rules:
- overdue is derived
- blocked task must expose blocking reason
- done requires completion timestamp

# ============================================================
# PROGRESS RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

rules:
- task progress must remain between 0 and 100
- project progress may be manual or task-derived by policy
- delay_days is derived from schedule and completion state

# ============================================================
# SYNC RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

sync_modes:
- manual
- scheduled
- retry
- initial_full_import
- differential_import

rules:
- each sync must create a sync_request record
- each mutation must create sync logs
- silent discard is forbidden

# ============================================================
# IMPORT EXPORT RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

import_rules:
- ERP-owned fields are refreshed from ERP path
- protected local fields remain unchanged

export_rules:
- only mapped outbound fields are publishable
- rejected export must remain reviewable and retryable

# ============================================================
# EXPORT AND REPORT RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

export_rules:
- export output is generated from current filtered view snapshot
- column visibility must follow permission policy
- masked fields must remain masked in file output
- export history must preserve requester and timing

report_generation_rules:
- quantitative section is system-generated from operational data
- qualitative section is draft-generated from templates and recent records
- auto-generated report must remain editable
- external sharing must be blocked until human review is complete

approval_rules:
- project_manager or higher must confirm final external report usage

# ============================================================
# PROJECT FLOW SUBSCRIPTION RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for subscription,
trial,
and unpaid read-only mode.

entitlement_states:
- trial_active
- subscribed_active
- unpaid_read_only
- suspended

runtime_principles:
- entitlement must be evaluated before protected actions
- read-only mode must preserve visibility but block mutation
- smartphone and pc must follow the same entitlement behavior
- trial expiration must transition deterministically
- silent capability disappearance is forbidden

state_behavior:

trial_active:
- full feature access
- create allowed
- edit allowed
- archive allowed
- spreadsheet generation allowed
- report draft generation allowed
- ERP integration request allowed

subscribed_active:
- full feature access
- create allowed
- edit allowed
- archive allowed
- spreadsheet generation allowed
- report draft generation allowed
- ERP integration request allowed

unpaid_read_only:
- dashboard view allowed
- project/task/issue/risk/detail view allowed
- export history view allowed
- report history view allowed
- sync history view allowed
- create blocked
- edit blocked
- archive blocked
- spreadsheet generation blocked
- report draft generation blocked
- report draft update blocked
- ERP import request blocked
- ERP export request blocked
- sync retry blocked

suspended:
- behavior follows business suspension rule
- implementation must keep auditability

transition_rules:
- trial_active -> subscribed_active when payment becomes valid
- trial_active -> unpaid_read_only when trial expires without valid payment
- subscribed_active -> unpaid_read_only when subscription becomes inactive
- unpaid_read_only -> subscribed_active when payment becomes valid again

ui_runtime_rules:
- blocked actions must remain visible
- blocked actions must show entitlement reason
- read-only state must be shown in screen chrome or banner

# ============================================================
# PROJECT FLOW TEMPLATE AND AUTOMATION RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

runtime_domains:
- form request handling
- automation trigger handling
- template expansion
- schedule proposal generation
- memo/comment update lifecycle

rules:
- form requests may create downstream entities after validation
- automation remains lightweight and rule-based
- schedule proposal must use relative offsets and dependency order
- schedule proposal must remain editable after generation
- business-day rules may adjust suggested dates

# ============================================================
# PROJECT FLOW TIMELINE GANTT RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

timeline_runtime_rules:
- milestone order follows due_date and dependency context
- delayed milestones must be emphasized
- completed milestones must remain visible for historical understanding

gantt_runtime_rules:
- task bar start/end uses planned dates by default
- actual dates may be overlaid when available
- parent task grouping must not lose child task visibility
- dependency relation display is derived from dependency_task_id or template dependency mapping
- overdue display is derived, not stored by gantt itself

dashboard_runtime_rules:
- dashboard aggregates latest operational state
- dashboard should prefer quick-read values over heavy detail
- failed sync and high-risk counts must remain visible at top level
- dashboard should support drilldown into source screens

proposal_runtime_rules:
- schedule proposal preview may render as gantt or timeline
- proposal state must remain distinct from confirmed schedule state

# ============================================================
# PROJECT FLOW FORM MEMO COMMENT RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

form_runtime_rules:
- form submission must validate required fields before downstream creation
- successful form submission may create target entities directly
- invalid form submission must remain reviewable to the user

memo_runtime_rules:
- memo remains editable by permitted roles
- meeting note and decision note must preserve created/updated history
- memo is project-linked and should remain discoverable from project detail

comment_runtime_rules:
- comments are append-oriented
- short edit window may be allowed by implementation policy
- comment threads must remain attached to their target entity
- deleted comment behavior should prefer hidden/archived semantics over destructive erase

# ============================================================
# PROJECT FLOW LIGHT AUTOMATION RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

trigger_runtime_rules:
- triggers are evaluated from current operational state
- repeated identical notifications should be suppressible by rule
- failed sync trigger must remain visible until acknowledged or resolved

action_runtime_rules:
- in-app notification is the default action
- dashboard emphasis is allowed as a lightweight action
- external notification request may be optional by policy
- automation result must be recordable for later review

safety_rules:
- automation must not silently edit project dates
- automation must not silently close issues or risks
- automation must not bypass permission or approval boundaries

review_rules:
- triggered rule,
  action result,
  and execution time should remain reviewable

# ============================================================
# PROJECT FLOW TEMPLATE AND WBS PROPOSAL RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

template_runtime_rules:
- only active templates may be used for new proposal generation
- template tasks are expanded in sequence and dependency order
- template milestone markers remain visible in proposal output

proposal_runtime_rules:
- proposal generation starts from project_start_date
- relative_start_offset_days and planned_duration_days drive initial suggestion
- dependency relation must shift downstream suggestion when needed
- business-day rule may move suggested dates away from non-working days
- generated proposal must remain distinguishable from confirmed schedule

adjustment_runtime_rules:
- user may change proposed dates before confirmation
- adjusted proposal remains traceable as adjusted state
- confirmation converts proposal into project/task/milestone operational schedule

# ============================================================
# PROJECT FLOW CUSTOMER FACING SCHEDULE RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

runtime_rules:
- customer-facing schedule is generated from WBS or confirmed schedule context
- internal-only detailed tasks may be omitted from customer-facing output
- customer-facing schedule should emphasize phase, milestone, and target dates
- wording should remain explanation-friendly
- generated customer-facing schedule must remain editable before external use

state_rules:
- proposal-derived customer-facing schedule remains draft until reviewed
- confirmed operational schedule may generate customer-facing schedule snapshots

# ============================================================
# PROJECT FLOW MULTILINGUAL RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

runtime_rules:
- locale should be resolved at application/session level
- output generation should use the selected locale
- fallback language should be used when a localized key is missing
- export headers should reflect the chosen locale
- customer-facing materials should preserve locale consistency within one output

fallback_rules:
- primary locale first
- fallback locale second
- unresolved key should remain detectable for review

consistency_rules:
- smartphone and pc must resolve the same locale behavior
- report and customer material generation must not mix multiple locales unintentionally

# ============================================================
# PROJECT FLOW LANGUAGE SELECTION RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for language selection.

language_selection_order:
1. explicit user language setting
2. organization or workspace default if later supported
3. application default language

runtime_rules:
- selected language should apply consistently across screens
- selected language should apply to customer-facing material generation
- selected language should apply to export header generation
- language change should refresh visible UI wording without changing business data

safety_rules:
- changing language must not alter source business records
- changing language must not change project truth,
  task truth,
  or schedule truth


# ============================================================
# PROJECT FLOW FLOW INDEX
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0500000_PROJECT_FLOW_FLOW_INDEX.md
- 0500001_PROJECT_FLOW_FLOW_OVERVIEW.md
- 0500002_PROJECT_CREATION_FLOW.md
- 0500003_PROJECT_IMPORT_FROM_ERP_FLOW.md
- 0500004_PROGRESS_UPDATE_FLOW.md
- 0500005_TIME_ENTRY_FLOW.md
- 0500006_ISSUE_AND_RISK_FLOW.md
- 0500007_PROJECT_EXPORT_TO_ERP_FLOW.md
- 0500008_SYNC_RETRY_FLOW.md
- 0500009_SPREADSHEET_EXPORT_FLOW.md
- 0500010_PROGRESS_REPORT_GENERATION_FLOW.md
- 0500011_PROJECT_FLOW_SCREEN_NAVIGATION_FLOW.md
- 0500012_PROJECT_FLOW_PRIMARY_USER_JOURNEYS.md
- 0500013_PROJECT_FLOW_SUBSCRIPTION_STATE_FLOW.md
- 0500014_PROJECT_FLOW_TRIAL_AND_READ_ONLY_USER_JOURNEY.md
- 0500015_PROJECT_FLOW_FORM_INTAKE_FLOW.md
- 0500016_PROJECT_FLOW_LIGHT_AUTOMATION_FLOW.md
- 0500017_PROJECT_FLOW_TEMPLATE_BASED_PROJECT_CREATION_FLOW.md
- 0500018_PROJECT_FLOW_WBS_SCHEDULING_PROPOSAL_FLOW.md
- 0500019_PROJECT_FLOW_AUTOMATION_NOTIFICATION_FLOW.md
- 0500020_PROJECT_FLOW_AUTOMATION_REVIEW_FLOW.md
- 0500021_PROJECT_FLOW_TEMPLATE_MANAGEMENT_FLOW.md
- 0500022_PROJECT_FLOW_WBS_PROPOSAL_GENERATION_FLOW.md
- 0500023_PROJECT_FLOW_PROPOSAL_ADJUSTMENT_AND_CONFIRMATION_FLOW.md
- 0500024_PROJECT_FLOW_CUSTOMER_FACING_SCHEDULE_GENERATION_FLOW.md
- 0500025_PROJECT_FLOW_CUSTOMER_EXPLANATION_MATERIAL_FLOW.md
- 0500026_PROJECT_FLOW_CUSTOMER_MATERIAL_GENERATION_SUBFLOW.md
- 0500027_PROJECT_FLOW_REVIEW_AND_CONFIRMATION_FLOW.md
- 0500028_PROJECT_FLOW_AUDIT_TRACE_FLOW.md

# ============================================================
# PROJECT FLOW FLOW OVERVIEW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

major_flows:
- local project creation
- ERP project import
- task and progress update
- issue/risk handling
- work log entry
- outbound publication
- retry and audit review

# ============================================================
# PROJECT CREATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user opens project creation
2. user enters local execution attributes
3. system validates required fields
4. project is stored as local draft or active
5. optional ERP linkage is attached later

# ============================================================
# PROJECT IMPORT FROM ERP FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. sync operator starts ERP import request
2. shared BusinessOS executes intake
3. mapping rules are applied
4. ERP-owned fields are stored
5. local project is created or updated
6. sync logs are recorded
7. result is shown in UI

# ============================================================
# PROGRESS UPDATE FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. member or manager updates progress
2. system recalculates state
3. project progress is recalculated or confirmed
4. outbound publication eligibility is evaluated

# ============================================================
# TIME ENTRY FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. member selects project or task
2. member enters work date and hours
3. system validates entry
4. entry is saved
5. outbound pending state is set if mapping exists

# ============================================================
# ISSUE AND RISK FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. issue or risk is registered
2. owner and severity are assigned
3. mitigation or action is recorded
4. status changes are tracked
5. dashboard reflects counts and severity

# ============================================================
# PROJECT EXPORT TO ERP FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. system finds publishable mapped data
2. publication request is created
3. shared BusinessOS executes ERP publication
4. success or failure is returned
5. logs remain reviewable

# ============================================================
# SYNC RETRY FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. operator reviews failed sync
2. system displays error category
3. operator fixes mapping or data if needed
4. retry executes new sync request
5. previous failure remains preserved in history

# ============================================================
# SPREADSHEET EXPORT FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user opens export action from a list or detail screen
2. user selects export format and scope
3. user optionally adjusts columns and masking options
4. system validates permission and exportability
5. export snapshot is created
6. file is generated as xlsx or csv
7. export history is recorded
8. user downloads the generated file

# ============================================================
# PROGRESS REPORT GENERATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user opens report generation screen
2. user selects report type and period
3. system aggregates quantitative metrics
4. system generates qualitative draft text
5. draft report is stored
6. user edits the draft
7. reviewer confirms content if external use is intended
8. final edited report is exported or copied for use

# ============================================================
# PROJECT FLOW SCREEN NAVIGATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines major screen transitions and operational navigation.

navigation_principles:
- daily actions must be reachable within short navigation paths
- project and task views must be mutually reachable
- sync and error visibility must not be buried
- export and report actions must be reachable from both list and detail contexts
- smartphone and PC must keep the same action capability

# ============================================================
# 1. MAIN ENTRY FLOW
# ============================================================

main_entry_flow:
- dashboard -> project_list
- dashboard -> task_list
- dashboard -> issue_risk
- dashboard -> sync_status
- dashboard -> report_editor
- dashboard -> settings

# ============================================================
# 2. PROJECT CENTERED FLOW
# ============================================================

project_centered_flow:
- project_list -> project_detail
- project_list -> task_list
- project_list -> export
- project_list -> report_editor

project_detail_flow:
- project_detail -> task_list
- project_detail -> milestone
- project_detail -> issue_risk
- project_detail -> time_entry
- project_detail -> sync_status
- project_detail -> export
- project_detail -> report_editor

# ============================================================
# 3. TASK CENTERED FLOW
# ============================================================

task_centered_flow:
- task_list -> task_detail
- task_list -> export
- task_detail -> project_detail
- task_detail -> time_entry
- task_detail -> issue_risk

# ============================================================
# 4. MILESTONE / ISSUE / RISK FLOW
# ============================================================

milestone_issue_risk_flow:
- milestone -> project_detail
- milestone -> export
- issue_risk -> project_detail
- issue_risk -> task_detail
- issue_risk -> export

# ============================================================
# 5. TIME / WORKLOAD FLOW
# ============================================================

time_workload_flow:
- time_entry -> project_detail
- time_entry -> task_detail
- time_entry -> export
- workload -> task_list
- workload -> export

# ============================================================
# 6. SYNC / EXPORT / REPORT FLOW
# ============================================================

sync_export_report_flow:
- sync_status -> project_detail
- sync_status -> export
- export -> project_detail
- export -> project_list
- export -> task_list
- report_editor -> project_detail
- report_editor -> export

# ============================================================
# 7. SETTINGS FLOW
# ============================================================

settings_flow:
- settings -> dashboard
- settings -> export
- settings -> report_editor


# ============================================================
# PROJECT FLOW PRIMARY USER JOURNEYS
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines main user journeys for daily operation.

journey_1_daily_manager_check:
1. open dashboard
2. review overdue and high risk summary
3. open project detail or task list
4. update status or assign follow-up
5. open report editor if reporting is needed

journey_2_member_daily_update:
1. open task list
2. open assigned task
3. update progress or status
4. register time entry
5. return to task list

journey_3_customer_explanation_preparation:
1. open project detail or project list
2. open export
3. generate spreadsheet output
4. open report editor
5. generate and edit progress report draft
6. finalize explanation material after review

journey_4_sync_failure_review:
1. open sync status
2. inspect failed or partially failed request
3. review error detail
4. retry when allowed
5. return to related project detail

journey_5_unpaid_read_only_user:
1. open dashboard or list
2. browse project and task details
3. see disabled actions for blocked operations
4. remain in view-only mode until entitlement changes

# ============================================================
# PROJECT FLOW SUBSCRIPTION STATE FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines subscription and entitlement state transitions.

main_flow:
1. user opens app
2. system resolves entitlement state
3. allowed actions are enabled
4. blocked actions remain visible but guarded
5. user continues in trial, subscribed, or read-only state

trial_expiry_flow:
1. trial period reaches end
2. system re-evaluates payment validity
3. if no valid payment exists, entitlement changes to unpaid_read_only
4. write and generation actions become blocked
5. viewing remains available

subscription_reactivation_flow:
1. payment becomes valid
2. system re-evaluates entitlement
3. entitlement changes to subscribed_active
4. previously blocked actions become available again

blocked_action_flow:
1. user taps blocked action in unpaid_read_only
2. system prevents execution
3. system shows read-only reason and subscription guidance
4. user returns without data mutation

# ============================================================
# PROJECT FLOW TRIAL AND READ ONLY USER JOURNEY
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines user-facing journey for trial and unpaid read-only states.

journey_trial_user:
1. install and open app
2. trial_active is resolved
3. full capability is available
4. user creates, edits, exports, and generates reports
5. user decides whether to subscribe before trial ends

journey_unpaid_read_only_user:
1. open app after trial expiry or inactive subscription
2. unpaid_read_only is resolved
3. user can view dashboard and details
4. blocked actions stay visible
5. user sees subscription explanation when attempting blocked action

journey_reactivated_user:
1. user completes payment
2. app refreshes entitlement
3. full capability becomes available again
4. previous data remains viewable and editable according to role

# ============================================================
# PROJECT FLOW FORM INTAKE FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user opens structured input form
2. user selects form type
3. user enters required fields
4. system validates payload
5. form request is recorded
6. target entity is created or routed for follow-up
7. result is shown to user

# ============================================================
# PROJECT FLOW LIGHT AUTOMATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. system detects trigger event
2. matching automation rules are evaluated
3. notification or simple action candidate is selected
4. execution result is recorded
5. user sees outcome in dashboard or notification area

example_triggers:
- overdue task
- high risk detected
- sync failed
- delayed milestone

# ============================================================
# PROJECT FLOW TEMPLATE BASED PROJECT CREATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user selects project type
2. user selects project template
3. user enters project start date
4. system expands template structure
5. system generates task and milestone proposal structure
6. user reviews and edits generated result
7. project is confirmed and created

# ============================================================
# PROJECT FLOW WBS SCHEDULING PROPOSAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user selects project type
2. user selects WBS template
3. user enters project start date
4. system reads template task structure and dependencies
5. system applies relative offsets and duration rules
6. system applies business-day rules
7. proposed schedule is generated
8. user reviews and adjusts proposed dates
9. user confirms schedule

important_rule:
Generated schedules are proposals only.
Human review and adjustment remain possible before confirmation.

# ============================================================
# PROJECT FLOW AUTOMATION NOTIFICATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. system detects a trigger condition
2. matching enabled rules are selected
3. system evaluates rule conditions
4. notification or visibility action is prepared
5. action result is recorded
6. user sees notification or highlighted state
7. user may open source detail screen from the notification

# ============================================================
# PROJECT FLOW AUTOMATION REVIEW FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. operator opens automation-related notification history or source view
2. operator checks trigger source and affected entity
3. operator decides whether to act on the notification
4. operator resolves or leaves the underlying business item
5. subsequent trigger behavior follows current rule state and current data state

# ============================================================
# PROJECT FLOW TEMPLATE MANAGEMENT FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user opens template management
2. user creates or selects a project template
3. user defines template header information
4. user adds template tasks and milestone markers
5. user sets relative offsets and durations
6. user defines dependency relations
7. user saves template
8. template becomes reusable when activated

# ============================================================
# PROJECT FLOW WBS PROPOSAL GENERATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user selects project type
2. user selects project template
3. user enters project start date
4. user optionally selects business-day rule
5. system expands template structure
6. system applies offsets, durations, and dependencies
7. system generates proposed schedule
8. user reviews gantt or timeline preview
9. user adjusts proposal if needed
10. user confirms proposal to create the operational schedule

# ============================================================
# PROJECT FLOW PROPOSAL ADJUSTMENT AND CONFIRMATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user opens generated proposal preview
2. user checks task order and milestone placement
3. user edits dates or duration where needed
4. system recalculates downstream dependent items when applicable
5. user reviews adjusted result
6. user confirms final proposal
7. confirmed proposal becomes project schedule baseline

important_rules:
- unconfirmed proposal must not overwrite confirmed operational schedule
- confirmed proposal must remain traceable to source template

# ============================================================
# PROJECT FLOW CUSTOMER FACING SCHEDULE GENERATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user selects project or WBS proposal
2. user selects customer-facing schedule output
3. system groups tasks into explanation-friendly phases or milestones
4. system generates simplified schedule draft
5. user edits wording and visible items if needed
6. user exports or presents the schedule after review

important_rules:
- internal task detail is not required to be fully shown
- milestone and phase visibility must remain clear
- external-use review remains mandatory

# ============================================================
# PROJECT FLOW CUSTOMER EXPLANATION MATERIAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user selects a project
2. user opens customer explanation material area
3. system offers standard material outputs
4. user generates or edits the needed materials
5. user reviews wording and visible items
6. user exports or presents the materials after review

standard_output_set:
- customer-facing schedule
- progress report
- issue list
- risk list
- decision note
- follow-up action list

# ============================================================
# PROJECT FLOW CUSTOMER MATERIAL GENERATION SUBFLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user selects one of the six standard materials
2. system loads material-specific source data
3. system generates preview or table output
4. user edits wording or visible rows where supported
5. user exports or presents reviewed material

supported_materials:
- customer_facing_schedule
- progress_report
- issue_list
- risk_list
- decision_note
- follow_up_action_list

# ============================================================
# PROJECT FLOW REVIEW AND CONFIRMATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines confirmation and review flows across proposals and outputs.

schedule_proposal_flow:
1. proposal is generated
2. proposal may be adjusted
3. proposal is reviewed by user
4. proposal is confirmed or discarded
5. confirmed proposal becomes operational schedule baseline

report_review_flow:
1. report draft is generated
2. user edits report draft
3. report is reviewed
4. report is approved when applicable
5. export or external use occurs after review-aware confirmation

customer_material_flow:
1. material is generated
2. wording is adjusted where needed
3. material is reviewed for external use
4. material is exported or presented

important_rules:
- export completion does not auto-approve content
- confirmation is not the same as export
- review state must remain visible before external use

# ============================================================
# PROJECT FLOW AUDIT TRACE FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines high-level audit trace flow.

flow:
1. user or system-triggered action occurs
2. action authority and state transition are evaluated
3. target change or boundary request is executed
4. audit-relevant before/after context is captured where applicable
5. resulting state and review context remain inspectable later

important_rules:
- export action should not erase prior review context
- schedule proposal adjustment should remain traceable before confirmation
- sync retry should remain traceable as a new retry action,
  not hidden overwrite


# ============================================================
# PROJECT FLOW INTEGRATION INDEX
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0600000_PROJECT_FLOW_INTEGRATION_INDEX.md
- 0600001_PROJECT_FLOW_INTEGRATION_OVERVIEW.md
- 0600002_PROJECT_FLOW_API_CONTRACT.md
- 0600003_PROJECT_FLOW_ERP_MAPPING.md
- 0600004_PROJECT_FLOW_REFERENCE_MASTER_SYNC.md
- 0600005_PROJECT_FLOW_SPREADSHEET_EXPORT_CONTRACT.md
- 0600006_PROJECT_FLOW_PROGRESS_REPORT_TEMPLATE_CONTRACT.md
- 0600007_PROJECT_FLOW_SHARED_BUSINESSOS_API_EXACT_CONTRACT.md
- 0600008_PROJECT_FLOW_EXTERNAL_REFERENCE_BOUNDARY_NOTE.md
- 0600009_PROJECT_FLOW_BUSINESSOS_DEPENDENCY_LIST.md
- 0600010_PROJECT_FLOW_ERP_DEPENDENCY_LIST.md
- 0600011_PROJECT_FLOW_COMMON_COMPONENT_USAGE_LIST.md
- 0600012_PROJECT_FLOW_UPLOADED_REFERENCE_MAPPING_NOTE.md
- 0600013_PROJECT_FLOW_REFERENCE_PRIORITY_BY_CONCERN_NOTE.md
- 0600014_PROJECT_FLOW_BUSINESSOS_EXACT_PAYLOAD_AND_FIELD_MAPPING.md
- 0600015_PROJECT_FLOW_OFFICIAL_COMMON_COMPONENT_REFERENCE_NOTE.md

# ============================================================
# PROJECT FLOW INTEGRATION OVERVIEW
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

integration_style:
Shared BusinessOS mediated integration.

inbound_sources:
- ERP project master
- ERP customer master
- ERP budget reference
- ERP actual cost reference
- ERP organization reference

outbound_targets:
- project progress
- milestone result
- selected time actual
- completion status

# ============================================================
# PROJECT FLOW API CONTRACT
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

projectflow_to_shared_businessos:
- request_project_import
- request_project_export
- request_sync_retry
- get_sync_status
- get_sync_error_detail

shared_businessos_to_erp_examples:
- GET /erp/projects
- GET /erp/projects/{erp_project_code}
- GET /erp/customers
- GET /erp/project-costs
- POST /erp/project-progress
- POST /erp/project-milestones
- POST /erp/project-time-actuals
- POST /erp/project-completion

rules:
- contract must be versioned
- reject reason must be machine-readable
- partial failure must identify row-level failure

# ============================================================
# PROJECT FLOW ERP MAPPING
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

inbound_mapping_examples:
erp_project_code -> project.erp_project_code
erp_project_name -> project.project_name
erp_customer_id -> project.customer_id
erp_budget_amount -> project.budget_amount_view
erp_actual_cost_amount -> project.actual_cost_amount_view

outbound_mapping_examples:
project.progress_percent -> outbound.progress_percent
project.project_status -> outbound.project_status
time_entry.hours -> outbound.actual_hours

protected_rules:
- ERP code is read-only locally
- ERP budget is read-only locally by default
- issue and risk are local-owned by default

# ============================================================
# PROJECT FLOW REFERENCE MASTER SYNC
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

reference_masters:
- customer master
- department master
- assignee reference
- project type master
- shared status master if needed

rules:
- reference sync should run before project intake when needed
- invalid reference must produce reviewable error

# ============================================================
# PROJECT FLOW SPREADSHEET EXPORT CONTRACT
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines export request and output contract at application boundary.

request_examples:
- export_project_list
- export_task_list
- export_milestone_list
- export_issue_list
- export_risk_list
- export_time_entry_list
- export_workload_list
- export_progress_summary
- export_sync_result_list

request_elements:
- export_format
- target_scope
- filter_snapshot
- selected_columns
- masking_option
- requester_id

response_elements:
- export_job_id
- status
- file_uri
- generated_at
- error_code
- error_message

rules:
- export must be permission-aware
- export output is snapshot-based
- file generation failure must be reviewable

# ============================================================
# PROJECT FLOW PROGRESS REPORT TEMPLATE CONTRACT
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

template_sections:
- report_header
- quantitative_summary
- qualitative_summary
- issue_summary
- risk_summary
- next_action_summary
- support_request_summary
- customer_confirmation_summary

report_inputs:
- project basic info
- reporting period
- progress percent
- completed task count
- incomplete task count
- overdue task count
- milestone status
- issue count
- high risk count
- time actual summary
- recent operational notes

rules:
- template output is draft only
- human editing remains mandatory
- template selection may differ by customer/internal audience

# ============================================================
# PROJECT FLOW SHARED BUSINESSOS API EXACT CONTRACT
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
This document points to the fixed exact payload set
for ProjectFlow and shared BusinessOS boundary.

fixed_payload_source:
- 1200006_PROJECT_FLOW_API_EXACT_PAYLOAD_FIXED.md

boundary_rules:
- ERP direct call from ProjectFlow is forbidden
- shared BusinessOS is the formal ERP integration executor
- request and response payload must match the fixed set

# ============================================================
# PROJECT FLOW EXTERNAL REFERENCE BOUNDARY NOTE
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Clarifies the reference boundary between ProjectFlow
and external canonical documents.

reference_targets:
- foundation canonical
- civilization system rules integrated
- ERP design bible
- ERP enterprise scope
- BusinessOS integrated canonical
- application common component integrated set

boundary_rules:
- these references inform alignment,
  not local truth override
- ProjectFlow local docs should remain consistent with them
- when overlap exists,
  ProjectFlow should defer to higher canonical ownership
- local additive detail should stay within ProjectFlow application scope

# ============================================================
# PROJECT FLOW BUSINESSOS DEPENDENCY LIST
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an explicit dependency list against BusinessOS.

dependency_items:

erp_import_request_mediation:
- required: yes
- direction: outbound request via BusinessOS
- local_owner: ProjectFlow request initiation
- boundary_owner: BusinessOS mediation

erp_export_request_mediation:
- required: yes
- direction: outbound request via BusinessOS
- local_owner: ProjectFlow request initiation
- boundary_owner: BusinessOS mediation

sync_retry_request_mediation:
- required: yes
- direction: outbound request via BusinessOS
- local_owner: ProjectFlow retry initiation
- boundary_owner: BusinessOS mediation

sync_status_retrieval:
- required: yes
- direction: inbound mediated status read
- local_owner: ProjectFlow status screen
- boundary_owner: BusinessOS mediation

sync_error_detail_retrieval:
- required: yes
- direction: inbound mediated error detail read
- local_owner: ProjectFlow error visibility
- boundary_owner: BusinessOS mediation

reference_master_access_when_needed:
- required: conditional
- direction: inbound reference read
- local_owner: ProjectFlow view/use
- boundary_owner: BusinessOS or approved shared source

non_dependency_examples:
- local export file generation
- local report draft generation
- local customer-facing material generation
- local template management
- local schedule proposal generation

# ============================================================
# PROJECT FLOW ERP DEPENDENCY LIST
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an explicit ERP dependency list.

dependency_items:

formal_project_reference:
- required: conditional
- local_usage: display and alignment
- truth_owner: ERP
- access_path: mediated through BusinessOS

formal_customer_reference:
- required: conditional
- local_usage: display and explanation alignment
- truth_owner: ERP
- access_path: mediated through BusinessOS

formal_budget_reference:
- required: conditional
- local_usage: view-only reference where applicable
- truth_owner: ERP
- access_path: mediated through BusinessOS

formal_org_reference:
- required: conditional
- local_usage: assignment and reference context
- truth_owner: ERP or approved enterprise source
- access_path: mediated through BusinessOS

erp_project_import:
- required: conditional
- local_usage: alignment and seeded local operation
- truth_owner: ERP
- access_path: mediated through BusinessOS

erp_project_export:
- required: conditional
- local_usage: approved outbound projectflow-to-ERP path
- truth_owner: ERP after accepted update
- access_path: mediated through BusinessOS

non_dependency_examples:
- customer-facing schedule generation
- progress report draft generation
- issue list generation
- risk list generation
- decision note material generation
- follow-up action list generation
- multilingual label resolution
- local read-only entitlement behavior

# ============================================================
# PROJECT FLOW COMMON COMPONENT USAGE LIST
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an explicit list of common-component-style usage expectations.

expected_common_component_usage:

dashboard_summary_card_set:
- expected_usage: yes
- local_addition_needed: metric definitions stay local

overdue_and_delay_visibility:
- expected_usage: yes
- local_addition_needed: delay derivation semantics stay local

severity_and_risk_emphasis:
- expected_usage: yes
- local_addition_needed: issue/risk business meaning stays local

sync_status_and_retry_visibility:
- expected_usage: yes
- local_addition_needed: ProjectFlow sync target wording stays local

spreadsheet_export_request_shell:
- expected_usage: yes
- local_addition_needed: dataset and column catalog stay local

customer_material_layout_shell:
- expected_usage: yes
- local_addition_needed: six-material composition stays local

read_only_entitlement_guard:
- expected_usage: yes
- local_addition_needed: ProjectFlow pricing and plan wording stay local

multilingual_label_pack:
- expected_usage: yes
- local_addition_needed: ProjectFlow-specific label keys stay local

device_parity_layout_shell:
- expected_usage: yes
- local_addition_needed: ProjectFlow screen composition stays local

non_common_component_examples:
- ProjectFlow WBS proposal calculator
- ProjectFlow customer-facing schedule grouping rules
- ProjectFlow progress report narrative composition rules

# ============================================================
# PROJECT FLOW UPLOADED REFERENCE MAPPING NOTE
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps uploaded files to ProjectFlow alignment concerns.

uploaded_reference_mapping:

000000_FOUNDATION_CANONICAL.md:
- concern: upper foundation rules
- usage: boundary and priority interpretation

9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md:
- concern: civilization-wide system rules
- usage: system-level consistency check

003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md:
- concern: civilization-os-side canonical context
- usage: wider OS alignment reference where needed

PERSONA_OS_INTEGRATED_CANONICAL.md:
- concern: persona-side canonical context
- usage: only if ProjectFlow touches persona-adjacent meaning later

BUSINESS_OS_INTEGRATED_CANONICAL.md:
- concern: mediated business boundary
- usage: primary reference for BusinessOS mediation interpretation

GAME_OS_INTEGRATED_CANONICAL.md:
- concern: unrelated unless later cross-domain overlap is introduced
- usage: generally non-primary for current ProjectFlow scope

STREAMING_OS_INTEGRATED_CANONICAL.md:
- concern: unrelated unless later cross-domain overlap is introduced
- usage: generally non-primary for current ProjectFlow scope

ERP_DESIGN_BIBLE_FULL.md:
- concern: ERP-side truth and architecture
- usage: primary ERP-side design reference

ERP_ENTERPRISE_SCOPE_v1.md:
- concern: ERP enterprise truth scope
- usage: primary ERP-side scope reference

900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md:
- concern: portal-site reflection context
- usage: low-priority reference for broader system navigation consistency

ERP_SYSTEM_FULL_DUMP.txt:
- concern: ERP system dump
- usage: reference aid for detailed ERP-side inspection

ERP_AUDIT_DUMP.txt:
- concern: ERP audit detail
- usage: reference aid for audit alignment inspection

ERP_GOVERNANCE_DUMP.txt:
- concern: ERP governance detail
- usage: reference aid for governance alignment inspection

ERP_FOUNDATION_DUMP.txt:
- concern: ERP foundation detail
- usage: reference aid for ERP foundation inspection

erp_schema_table_column_summary.txt:
- concern: ERP schema summary
- usage: implementation-prep reference aid

erp_schema_table_column_full.txt:
- concern: ERP schema full detail
- usage: implementation-prep reference aid

persona_schema_table_column_summary.txt:
- concern: Persona schema summary
- usage: low-priority reference unless persona-linked scope grows

persona_schema_table_column_full.txt:
- concern: Persona schema full detail
- usage: low-priority reference unless persona-linked scope grows

# ============================================================
# PROJECT FLOW REFERENCE PRIORITY BY CONCERN NOTE
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines which external reference should be checked first
for each major concern area.

reference_priority_by_concern:

foundation_rule_interpretation:
1. 000000_FOUNDATION_CANONICAL.md
2. 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
3. ProjectFlow local canonical notes

businessos_mediation_interpretation:
1. BUSINESS_OS_INTEGRATED_CANONICAL.md
2. ProjectFlow BusinessOS dependency notes
3. ProjectFlow integration boundary notes

erp_truth_interpretation:
1. ERP_DESIGN_BIBLE_FULL.md
2. ERP_ENTERPRISE_SCOPE_v1.md
3. erp_schema_table_column_summary.txt
4. erp_schema_table_column_full.txt
5. ERP_SYSTEM_FULL_DUMP.txt when deeper inspection is needed

erp_audit_or_governance_interpretation:
1. ERP_DESIGN_BIBLE_FULL.md
2. ERP_AUDIT_DUMP.txt
3. ERP_GOVERNANCE_DUMP.txt
4. ERP_FOUNDATION_DUMP.txt

field_level_schema_confirmation:
1. erp_schema_table_column_summary.txt
2. erp_schema_table_column_full.txt
3. ProjectFlow data ownership / editability notes

projectflow_local_ownership_interpretation:
1. ProjectFlow local ownership notes
2. ProjectFlow common component dependency notes
3. ProjectFlow canonical priority notes

common_component_boundary_interpretation:
1. application common component canonical set when available
2. ProjectFlow common component dependency notes
3. ProjectFlow reference alignment notes

multilingual_interpretation:
1. ProjectFlow multilingual definition and policy notes
2. ProjectFlow bilingual label catalog notes
3. higher foundation rules only if conflict appears

portal_or_system_navigation_context:
1. 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
2. civilization-system-level canonical references
3. ProjectFlow restart / handoff notes

persona_related_interpretation_if_scope_expands:
1. PERSONA_OS_INTEGRATED_CANONICAL.md
2. persona_schema_table_column_summary.txt
3. persona_schema_table_column_full.txt

note:
Not every concern requires every reference.
This table is a first-check priority guide.

# ============================================================
# PROJECT FLOW BUSINESSOS EXACT PAYLOAD AND FIELD MAPPING
# ============================================================

status: canonical-exact
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes exact request and response payload direction
for ProjectFlow mediated interaction through BusinessOS.

principles:
- ERP direct call from ProjectFlow is forbidden
- ProjectFlow talks to BusinessOS-facing mediated contracts
- payloads should separate local identifiers from ERP identifiers
- reference-only ERP truth must not be silently overwritten by local fields

# ============================================================
# 1. REQUEST: ERP PROJECT IMPORT
# ============================================================

request_name:
request_project_import

request_payload:
- request_id
- company_id
- project_scope_type
- target_project_id optional
- erp_project_code optional
- import_mode
- requested_by_user_id
- requested_at
- mapping_version
- locale optional

field_rules:
- target_project_id identifies a local target when updating an existing local record
- erp_project_code identifies ERP-side formal reference when known
- import_mode candidates:
  - initial_full_import
  - differential_import
  - reference_refresh

response_payload:
- request_id
- accepted
- mediated_status
- queued_at optional
- sync_request_id optional
- message optional

# ============================================================
# 2. REQUEST: ERP PROJECT EXPORT
# ============================================================

request_name:
request_project_export

request_payload:
- request_id
- company_id
- target_project_id
- export_scope
- export_reason optional
- requested_by_user_id
- requested_at
- mapping_version
- locale optional

field_rules:
- target_project_id is always local ProjectFlow project_id
- export_scope candidates:
  - project_header_only
  - approved_operational_update
  - allowed_reference_sync

response_payload:
- request_id
- accepted
- mediated_status
- queued_at optional
- sync_request_id optional
- message optional

# ============================================================
# 3. REQUEST: SYNC RETRY
# ============================================================

request_name:
request_sync_retry

request_payload:
- request_id
- company_id
- sync_request_id
- retry_reason optional
- requested_by_user_id
- requested_at

response_payload:
- request_id
- accepted
- mediated_status
- retry_request_registered
- message optional

# ============================================================
# 4. QUERY: SYNC STATUS
# ============================================================

request_name:
get_sync_status

request_payload:
- company_id
- sync_request_id optional
- target_project_id optional
- status_scope

status_scope_candidates:
- latest_for_project
- latest_for_request
- recent_for_company

response_payload:
- company_id
- status_scope
- sync_items

sync_items_fields:
- sync_request_id
- target_project_id optional
- sync_direction
- sync_type
- status
- retryable
- retry_count
- requested_at
- started_at optional
- finished_at optional
- error_code optional
- error_message optional

# ============================================================
# 5. QUERY: SYNC ERROR DETAIL
# ============================================================

request_name:
get_sync_error_detail

request_payload:
- company_id
- sync_request_id

response_payload:
- company_id
- sync_request_id
- status
- error_items

error_items_fields:
- target_entity_type
- target_entity_id optional
- field_name optional
- result_status
- error_code optional
- error_message optional
- retryable

# ============================================================
# 6. FIELD MAPPING INTERPRETATION
# ============================================================

mapping_rules:

projectflow_local_primary:
- project_id
- project_status
- planned_start_date
- planned_end_date
- actual_start_date
- actual_end_date
- progress_percent
- delay_days
- task_title
- task_description
- task_status
- milestone_name
- milestone_status
- issue_title
- risk_title
- work_date
- hours
- report_draft fields
- template fields
- proposal fields

erp_reference_primary:
- erp_project_code
- customer_id when ERP-linked
- budget_amount_view
- actual_cost_amount_view
- formal organization reference values

mixed_display_snapshot:
- customer_name_snapshot
- manager_name_snapshot
- owner_name_snapshot

important_rule:
Snapshots are display convenience only.
They do not replace formal truth ownership.

# ============================================================
# PROJECT FLOW OFFICIAL COMMON COMPONENT REFERENCE NOTE
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how ProjectFlow should use the official common component ledger.

reference_priority:
1. 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
2. ProjectFlow common component dependency notes
3. ProjectFlow local ownership notes

usage_rules:
- check the official ledger first
  before treating any UI shell,
  export shell,
  entitlement guard,
  sync visibility shell,
  or multilingual shell as app-local
- if a component is already official,
  consume it as shared ownership
- if a candidate is not yet official,
  keep it app-local and additive
- candidate registration still belongs to separate canonical flow outside ProjectFlow


# ============================================================
# PROJECT FLOW OPERATIONS INDEX
# ============================================================

status: canonical
layer: operations
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0700000_PROJECT_FLOW_OPERATIONS_INDEX.md
- 0700001_PROJECT_FLOW_OPERATIONS_OVERVIEW.md
- 0700002_PROJECT_FLOW_OPERATION_POLICY.md
- 0700003_PROJECT_FLOW_ERROR_HANDLING.md
- 0700004_PROJECT_FLOW_MONITORING.md

# ============================================================
# PROJECT FLOW OPERATIONS OVERVIEW
# ============================================================

status: canonical
layer: operations
application: ProjectFlow
owner: Boss
prepared_by: Zero

operation_targets:
- daily project operation
- sync monitoring
- mapping maintenance
- error review
- user support

# ============================================================
# PROJECT FLOW OPERATION POLICY
# ============================================================

status: canonical
layer: operations
application: ProjectFlow
owner: Boss
prepared_by: Zero

policies:
- initial import should be operator-controlled
- destructive bulk update requires explicit confirmation
- sync scheduling must be documented
- failed sync backlog must be visible

# ============================================================
# PROJECT FLOW ERROR HANDLING
# ============================================================

status: canonical
layer: operations
application: ProjectFlow
owner: Boss
prepared_by: Zero

error_categories:
- mapping_error
- validation_error
- transport_error
- authentication_error
- authorization_error
- conflict_error
- stale_data_error

rules:
- retryability must be explicit
- operator message and system detail should be separable

# ============================================================
# PROJECT FLOW MONITORING
# ============================================================

status: canonical
layer: operations
application: ProjectFlow
owner: Boss
prepared_by: Zero

monitoring_targets:
- import success rate
- export success rate
- failed sync backlog
- overdue projects
- overdue tasks
- open issue count
- high risk count


# ============================================================
# PROJECT FLOW POLICY INDEX
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0800000_PROJECT_FLOW_POLICY_INDEX.md
- 0800001_PROJECT_FLOW_POLICY_OVERVIEW.md
- 0800002_PROJECT_FLOW_SOURCE_OF_TRUTH_POLICY.md
- 0800003_PROJECT_FLOW_EDIT_POLICY.md
- 0800004_PROJECT_FLOW_DATA_RETENTION_POLICY.md
- 0800005_PROJECT_FLOW_EXTERNAL_EXPORT_POLICY.md
- 0800006_PROJECT_FLOW_REPORT_APPROVAL_POLICY.md
- 0800007_PROJECT_FLOW_SUBSCRIPTION_AND_READ_ONLY_POLICY.md
- 0800008_PROJECT_FLOW_DEVICE_PARITY_POLICY.md
- 0800009_PROJECT_FLOW_TRIAL_POLICY_DETAIL.md
- 0800010_PROJECT_FLOW_BLOCKED_ACTION_POLICY.md
- 0800011_PROJECT_FLOW_ADDITIVE_FEATURE_POLICY.md
- 0800012_PROJECT_FLOW_TEMPLATE_AND_SCHEDULING_POLICY.md
- 0800013_PROJECT_FLOW_LIGHT_AUTOMATION_POLICY.md
- 0800014_PROJECT_FLOW_CUSTOMER_FACING_SCHEDULE_POLICY.md
- 0800015_PROJECT_FLOW_CUSTOMER_EXPLANATION_MATERIAL_POLICY.md
- 0800016_PROJECT_FLOW_CUSTOMER_PROVISION_POLICY.md
- 0800017_PROJECT_FLOW_MINIMUM_SUPPORT_SCOPE_POLICY.md
- 0800018_PROJECT_FLOW_MULTILINGUAL_POLICY.md
- 0800019_PROJECT_FLOW_MULTILINGUAL_FALLBACK_POLICY.md
- 0800020_PROJECT_FLOW_INITIAL_LANGUAGE_POLICY.md
- 0800021_PROJECT_FLOW_LANGUAGE_OUTPUT_CONSISTENCY_POLICY.md
- 0800022_PROJECT_FLOW_MULTILINGUAL_CUSTOMER_MATERIAL_POLICY.md
- 0800023_PROJECT_FLOW_MULTILINGUAL_EXPORT_HEADER_POLICY.md
- 0800024_PROJECT_FLOW_MULTILINGUAL_TERMINOLOGY_POLICY.md
- 0800025_PROJECT_FLOW_DEVICE_SUPPORT_POLICY.md
- 0800026_PROJECT_FLOW_CANONICAL_PRIORITY_POLICY.md
- 0800027_PROJECT_FLOW_REFERENCE_CONFLICT_STOP_POLICY.md
- 0800028_PROJECT_FLOW_EXACT_OPEN_ITEM_RESOLUTION_POLICY.md
- 0800029_PROJECT_FLOW_POST_EXACT_OPEN_ITEM_POLICY.md
- 0800030_PROJECT_FLOW_REMAINING_ITEM_STOPLINE_POLICY.md
- 0800031_PROJECT_FLOW_DB_OWNER_REVIEW_UNLOCK_POLICY.md

# ============================================================
# PROJECT FLOW POLICY OVERVIEW
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_domains:
- source of truth
- editability
- retention
- conflict resolution

# ============================================================
# PROJECT FLOW SOURCE OF TRUTH POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

erp_truth:
- official project code
- customer
- contract amount
- formal budget
- accounting actual cost
- formal organization references
- billing and sales

local_truth:
- task execution
- issue and risk
- field note
- operational milestone progress
- workload understanding

# ============================================================
# PROJECT FLOW EDIT POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

edit_rules:
- ERP-owned fields are read-only by default
- local-owned fields are editable by role
- protected manual override requires audit trail

# ============================================================
# PROJECT FLOW DATA RETENTION POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

retention_targets:
- project snapshots
- sync requests
- sync logs
- issue history
- risk history
- time entry history

rules:
- archival is preferred over destructive delete

# ============================================================
# PROJECT FLOW EXTERNAL EXPORT POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_targets:
- spreadsheet export
- offline sharing
- customer explanation material

policy_rules:
- exported files are convenience outputs, not source of truth
- permission-sensitive columns must be masked or excluded
- protected ERP-origin data must follow visibility rules
- export history must remain reviewable
- external use must follow company sharing rules

# ============================================================
# PROJECT FLOW REPORT APPROVAL POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
Auto-generated reports are draft outputs only.
Human review and editing are mandatory before external use.

approval_rules:
- draft report may be system-generated
- final wording must be human-confirmed
- external customer-facing use requires project_manager or higher review
- unreviewed draft must not be treated as final report

# ============================================================
# PROJECT FLOW SUBSCRIPTION AND READ ONLY POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

subscription_policy:
- ProjectFlow is a monthly-use application
- base monthly price is 900 JPY
- initial trial period is 7 days

entitlement_states:
- trial_active
- subscribed_active
- unpaid_read_only
- suspended

state_rules:
trial_active:
- full feature access

subscribed_active:
- full feature access

unpaid_read_only:
- view only
- no create
- no edit
- no export generation
- no report generation
- no integration request

suspended:
- access follows business suspension rule

audit_rule:
Entitlement state changes should remain reviewable.

# ============================================================
# PROJECT FLOW DEVICE PARITY POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow must provide the same functional capability
on smartphone and PC.

policy_rules:
- device-based feature restriction is forbidden
- responsive and adaptive layout difference is allowed
- permission rules must apply equally across devices
- unpaid read-only mode must apply equally across devices
- export/report/integration capabilities must follow the same entitlement rules across devices

# ============================================================
# PROJECT FLOW TRIAL POLICY DETAIL
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

trial_policy_detail:
- initial trial period is 7 days
- trial grants full feature access
- trial must follow the same feature set on smartphone and pc
- trial expiry must not delete user data
- trial expiry transitions to unpaid_read_only when no valid subscription exists

policy_rules:
- trial state must be auditable
- trial expiration timing must be deterministic
- trial user data remains visible after entitlement downgrade

# ============================================================
# PROJECT FLOW BLOCKED ACTION POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines blocked action behavior in unpaid_read_only mode.

blocked_action_rules:
- blocked actions remain visible
- blocked actions must not execute mutation
- blocked actions should explain why they are blocked
- blocked actions should guide the user to subscription recovery path
- silent hide is forbidden for major actions

major_blocked_actions:
- create project
- edit project
- create or edit task
- create or edit milestone
- create or edit issue/risk
- create or edit time entry
- request ERP import
- request ERP export
- retry sync
- generate xlsx
- generate csv
- generate report draft
- update report draft

# ============================================================
# PROJECT FLOW ADDITIVE FEATURE POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow must preserve room for feature additions derived from competitor analysis.

high_priority_additions:
- form-based intake
- lightweight automation and notifications
- stronger timeline visualization
- richer live dashboards
- project-linked memo and meeting note support
- project template support
- WBS-template-based scheduling proposals

medium_priority_additions:
- short comment and communication history

policy_rules:
- additions must not break small-and-easy operation
- additions must remain customer-usable
- additions must remain editable after generation where proposals are involved

# ============================================================
# PROJECT FLOW TEMPLATE AND SCHEDULING POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow should support project templates
for repeated project patterns.

template_may_include:
- project default structure
- task templates
- milestone templates
- issue or checklist templates
- relative schedule offsets

scheduling_policy:
A user may select:
- project type
- WBS template
- project start date

The system should generate a proposed schedule based on:
- template task structure
- dependency relations
- milestone templates
- relative date offsets
- business-day rules

final_rules:
- project creation from template must remain editable after generation
- generated schedules are proposals only
- human review and adjustment must remain possible before confirmation

# ============================================================
# PROJECT FLOW LIGHT AUTOMATION POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow supports lightweight automation for visibility and notification,
not heavy unattended business workflow replacement.

allowed_primary_uses:
- overdue notification
- delayed milestone notification
- high risk escalation visibility
- sync failure notification
- pending review reminder

forbidden_or_discouraged_uses:
- hidden business-state mutation
- silent reassignment
- silent closure of business items
- approval bypass
- complex chained workflow logic

policy_rules:
- automation must stay understandable
- automation must stay customer-usable
- automation result should remain reviewable

# ============================================================
# PROJECT FLOW CUSTOMER FACING SCHEDULE POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow must support customer-facing schedule output derived from WBS data.

policy_rules:
- customer-facing schedule must use explanation-friendly structure
- internal operational detail and customer-facing detail must remain separable
- customer-facing schedule may simplify task granularity
- milestone visibility must remain strong
- external-use schedule output must remain human-reviewable

# ============================================================
# PROJECT FLOW CUSTOMER EXPLANATION MATERIAL POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow customer-facing explanation outputs should include
the following standard materials from the beginning:

- customer-facing schedule
- progress report
- issue list
- risk list
- decision note
- follow-up action list

policy_rules:
- these are standard explanation materials
- they are not optional afterthoughts
- human review remains mandatory before external use
- explanation-friendly wording should be preserved

# ============================================================
# PROJECT FLOW CUSTOMER PROVISION POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow is provided as a low-support monthly-use application.

included_baseline_scope:
- standard application usage
- customer-facing material generation
- spreadsheet export
- project/task/milestone/issue/risk/time-entry operation
- template and WBS proposal support within product scope

support_positioning:
- support is intentionally minimal
- product should remain understandable without heavy handholding
- design should reduce support burden through clarity and consistency

service_boundaries:
- application usage support may be minimal
- custom consulting is not assumed as standard monthly scope
- customer-specific workflow redesign is not assumed as standard monthly scope
- bespoke development is not assumed as standard monthly scope

# ============================================================
# PROJECT FLOW MINIMUM SUPPORT SCOPE POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines minimum support scope.

minimum_support_scope_examples:
- basic usage clarification
- basic entitlement and read-only clarification
- basic export and report usage clarification
- basic sync-status reading clarification
- basic troubleshooting direction for obvious user-facing problems

outside_or_not_assumed_in_base_scope:
- customer-specific operational redesign
- customer-specific template construction service
- customer-specific report-writing service
- manual data cleanup service
- business consulting level support
- guaranteed real-time support

product_design_implication:
Because support is minimal,
the product should prioritize:
- understandable screens
- clear wording
- predictable action placement
- visible blocked-action reasons
- explanation-friendly outputs

# ============================================================
# PROJECT FLOW MULTILINGUAL POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow must support multilingual operation
for UI and customer-facing outputs.

policy_targets:
- internal operation UI
- customer explanation materials
- exportable spreadsheet headers
- summary outputs

policy_rules:
- multilingual support applies to smartphone and pc equally
- customer-facing outputs should be language-selectable where supported
- fallback behavior must be explicit
- localized wording should remain concise and explanation-friendly

# ============================================================
# PROJECT FLOW MULTILINGUAL FALLBACK POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines fallback behavior for multilingual operation.

fallback_policy:
- selected language is primary
- default fallback language must exist
- missing localized wording must not silently break output generation

review_rules:
- missing keys should remain detectable in review/testing
- customer-facing output should be checked for fallback leakage before external use

# ============================================================
# PROJECT FLOW INITIAL LANGUAGE POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow initial language support is fixed to Japanese and English.

policy_targets:
- internal UI
- customer-facing outputs
- export headers
- one-page summary

policy_rules:
- japanese and english are required in initial scope
- later languages may be added without breaking the initial key model
- mixed-language output should be avoided unless explicitly reviewed

# ============================================================
# PROJECT FLOW LANGUAGE OUTPUT CONSISTENCY POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines consistency policy for multilingual outputs.

consistency_rules:
- one output should use one selected locale consistently
- section headers and export headers should align to the same selected locale
- fallback wording should be minimized in customer-facing outputs
- customer-facing review should check language consistency before external use

# ============================================================
# PROJECT FLOW MULTILINGUAL CUSTOMER MATERIAL POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines multilingual policy for the six standard customer-facing materials.

multilingual_customer_material_targets:
- customer_facing_schedule
- progress_report
- issue_list
- risk_list
- decision_note
- follow_up_action_list

policy_rules:
- all six standard materials are in multilingual scope
- section headings should be localized
- material type names should be localized
- review state wording should be localized
- output should stay in one selected locale consistently
- wording overrides remain possible after localized generation
- external-use review remains mandatory

# ============================================================
# PROJECT FLOW MULTILINGUAL EXPORT HEADER POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines multilingual policy for spreadsheet export headers.

export_targets:
- xlsx
- csv

policy_rules:
- export headers should follow selected output language
- source column identifiers remain language-neutral
- visible header labels are localized
- fallback labels must remain detectable
- one export output should keep one locale consistently

header_scope_examples:
- project columns
- task columns
- milestone columns
- issue columns
- risk columns
- time entry columns
- customer material section headers where applicable

# ============================================================
# PROJECT FLOW MULTILINGUAL TERMINOLOGY POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines terminology consistency policy across supported languages.

terminology_targets:
- project
- task
- milestone
- issue
- risk
- schedule
- progress report
- decision note
- follow-up action
- read-only
- trial
- subscribed
- proposal
- confirmed
- reviewed
- approved

policy_rules:
- one concept should map to one preferred label per language
- customer-facing wording should avoid unnecessary technical jargon
- internal wording and customer-facing wording may differ when needed
- proposal and confirmed states must not collapse into the same wording
- read-only and blocked-action wording must remain easy to understand

# ============================================================
# PROJECT FLOW DEVICE SUPPORT POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow supports iPhone,
Android,
tablet,
and PC from the beginning.

policy_rules:
- all supported device types must keep the same functional capability
- device-specific optimization is allowed only for presentation and interaction
- customer-facing outputs must be accessible from all supported device types
- unpaid read-only behavior must be consistent across all supported device types

# ============================================================
# PROJECT FLOW CANONICAL PRIORITY POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow must defer to higher canonical ownership
when overlap or conflict exists.

policy_rules:
- system-wide foundation rules override ProjectFlow-local wording
- ERP-owned truth overrides ProjectFlow-local copies or interpretations
- BusinessOS mediation rules override ProjectFlow-local ERP access assumptions
- common component ownership stays outside ProjectFlow unless promoted separately
- ProjectFlow retains ownership only for application-local additive behavior

# ============================================================
# PROJECT FLOW REFERENCE CONFLICT STOP POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines stop conditions when reference conflicts remain unresolved.

stop_condition_targets:
- ownership interpretation
- ERP-facing field interpretation
- BusinessOS mediation interpretation
- schema-level field mapping interpretation
- action authority interpretation
- editability interpretation

policy_rules:
- when ownership conflict is unresolved,
  local reinterpretation work should stop
- when ERP-facing field meaning is unresolved,
  field-level implementation planning should stop
- when BusinessOS mediation interpretation is unresolved,
  integration-boundary planning should stop
- when editability meaning is unresolved,
  UI affordance planning should stop
- when action authority meaning is unresolved,
  guard and permission planning should stop

non_stop_examples:
- purely local wording cleanup
- local meta summary cleanup
- explicit conflict logging

# ============================================================
# PROJECT FLOW EXACT OPEN ITEM RESOLUTION POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
States that the major design bottlenecks
have been resolved to exact-design level where appropriate.

resolved_to_exact_design_level:
- BusinessOS exact payload direction
- ERP / ProjectFlow field mapping interpretation
- DB hardening review buckets and stop conditions
- WBS proposal exact calculation rules for initial scope

still_explicitly_open_but_non_blocking:
- final Android module naming
- DI framework choice
- offline/cache strategy
- RLS final execution design
- holiday-calendar sophistication beyond weekday_only

# ============================================================
# PROJECT FLOW POST EXACT OPEN ITEM POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how remaining open items should be treated after exact-design resolution.

policy_rules:
- remaining open items must not be misrepresented as unresolved broad design
- implementation-choice items may stay open until the next appropriate phase
- DB execution-phase items must not be guessed without DB-owner review
- later sophistication items must not block ordinary implementation planning
- open-item handling should remain explicit and phase-aware

# ============================================================
# PROJECT FLOW REMAINING ITEM STOPLINE POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines where ordinary implementation planning should stop
when remaining items are encountered.

policy_rules:
- DB-owner-review required items must not be guessed locally
- later sophistication items must not be pulled forward unless phase-critical
- non-blocking cleanup items must not delay ordinary planning
- ordinary implementation planning may proceed using current fixed design
  as long as DB-owner-review items are treated as explicit boundary items

# ============================================================
# PROJECT FLOW DB OWNER REVIEW UNLOCK POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Defines what may be unlocked
after DB-owner review results are recorded.

result_categories:
- pass
- partial
- hold

policy_rules:

pass:
- DB-phase planning may proceed for confirmed areas
- schema-name usage may be treated as fixed for ProjectFlow DB planning
- migration hardening order may be treated as fixed for ProjectFlow DB planning
- confirmed constraint hardening may be treated as fixed for ProjectFlow DB planning
- confirmed trigger rollout direction may be treated as fixed for ProjectFlow DB planning
- confirmed RLS direction may be used in later DB-phase planning

partial:
- only explicitly confirmed areas may proceed
- all non-confirmed areas remain blocked
- local notes must distinguish confirmed from still-blocked areas

hold:
- DB-phase planning remains blocked for unresolved areas
- no silent assumption of confirmation is allowed
- only summary cleanup,
  clarification prep,
  and re-review preparation may continue


# ============================================================
# PROJECT FLOW INTERFACE INDEX
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0900000_PROJECT_FLOW_INTERFACE_INDEX.md
- 0900001_PROJECT_FLOW_INTERFACE_OVERVIEW.md
- 0900002_PROJECT_FLOW_SCREEN_LIST.md
- 0900003_PROJECT_FLOW_DASHBOARD_SCREEN_DETAIL.md
- 0900004_PROJECT_FLOW_PROJECT_LIST_SCREEN_DETAIL.md
- 0900005_PROJECT_FLOW_PROJECT_DETAIL_SCREEN_DETAIL.md
- 0900006_PROJECT_FLOW_TASK_LIST_SCREEN_DETAIL.md
- 0900007_PROJECT_FLOW_TASK_DETAIL_SCREEN_DETAIL.md
- 0900008_PROJECT_FLOW_MILESTONE_SCREEN_DETAIL.md
- 0900009_PROJECT_FLOW_ISSUE_RISK_SCREEN_DETAIL.md
- 0900010_PROJECT_FLOW_TIME_ENTRY_SCREEN_DETAIL.md
- 0900011_PROJECT_FLOW_WORKLOAD_SCREEN_DETAIL.md
- 0900012_PROJECT_FLOW_SYNC_STATUS_SCREEN_DETAIL.md
- 0900013_PROJECT_FLOW_EXPORT_SCREEN_DETAIL.md
- 0900014_PROJECT_FLOW_REPORT_EDITOR_SCREEN_DETAIL.md
- 0900015_PROJECT_FLOW_SETTINGS_SCREEN_DETAIL.md
- 0900016_PROJECT_FLOW_MULTI_DEVICE_INTERFACE_POLICY.md
- 0900017_PROJECT_FLOW_COMMON_UI_COMPONENT_CANDIDATES.md
- 0900018_PROJECT_FLOW_NAVIGATION_DESIGN_NOTE.md
- 0900019_PROJECT_FLOW_SCREEN_ACTION_MATRIX.md
- 0900020_PROJECT_FLOW_TEMPLATE_AND_AUTOMATION_SCREEN_NOTE.md
- 0900021_PROJECT_FLOW_TIMELINE_SCREEN_DETAIL.md
- 0900022_PROJECT_FLOW_GANTT_SCREEN_DETAIL.md
- 0900023_PROJECT_FLOW_LIVE_DASHBOARD_DETAIL.md
- 0900024_PROJECT_FLOW_SCHEDULE_PROPOSAL_PREVIEW_SCREEN_DETAIL.md
- 0900025_PROJECT_FLOW_FORM_INTAKE_SCREEN_DETAIL.md
- 0900026_PROJECT_FLOW_MEMO_SCREEN_DETAIL.md
- 0900027_PROJECT_FLOW_COMMENT_HISTORY_SCREEN_DETAIL.md
- 0900028_PROJECT_FLOW_AUTOMATION_RULE_SETTINGS_SCREEN_DETAIL.md
- 0900029_PROJECT_FLOW_NOTIFICATION_CENTER_SCREEN_DETAIL.md
- 0900030_PROJECT_FLOW_TEMPLATE_MANAGEMENT_SCREEN_DETAIL.md
- 0900031_PROJECT_FLOW_WBS_PROPOSAL_WIZARD_SCREEN_DETAIL.md
- 0900032_PROJECT_FLOW_TEMPLATE_TASK_EDITOR_SCREEN_DETAIL.md
- 0900033_PROJECT_FLOW_CUSTOMER_FACING_SCHEDULE_SCREEN_DETAIL.md
- 0900034_PROJECT_FLOW_CUSTOMER_EXPLANATION_MATERIAL_SCREEN_DETAIL.md
- 0900035_PROJECT_FLOW_CUSTOMER_SCHEDULE_MATERIAL_DETAIL.md
- 0900036_PROJECT_FLOW_PROGRESS_REPORT_MATERIAL_DETAIL.md
- 0900037_PROJECT_FLOW_ISSUE_LIST_MATERIAL_DETAIL.md
- 0900038_PROJECT_FLOW_RISK_LIST_MATERIAL_DETAIL.md
- 0900039_PROJECT_FLOW_DECISION_NOTE_MATERIAL_DETAIL.md
- 0900040_PROJECT_FLOW_FOLLOW_UP_ACTION_LIST_MATERIAL_DETAIL.md
- 0900041_PROJECT_FLOW_WIREFRAME_OVERVIEW.md
- 0900042_PROJECT_FLOW_DASHBOARD_WIREFRAME.md
- 0900043_PROJECT_FLOW_PROJECT_LIST_WIREFRAME.md
- 0900044_PROJECT_FLOW_PROJECT_DETAIL_WIREFRAME.md
- 0900045_PROJECT_FLOW_TASK_WIREFRAME.md
- 0900046_PROJECT_FLOW_TIMELINE_GANTT_WIREFRAME.md
- 0900047_PROJECT_FLOW_EXPORT_REPORT_WIREFRAME.md
- 0900048_PROJECT_FLOW_FORM_MEMO_COMMENT_WIREFRAME.md
- 0900049_PROJECT_FLOW_CUSTOMER_MATERIAL_LAYOUT_OVERVIEW.md
- 0900050_PROJECT_FLOW_CUSTOMER_SCHEDULE_LAYOUT_DETAIL.md
- 0900051_PROJECT_FLOW_PROGRESS_REPORT_LAYOUT_DETAIL.md
- 0900052_PROJECT_FLOW_ISSUE_LIST_LAYOUT_DETAIL.md
- 0900053_PROJECT_FLOW_RISK_LIST_LAYOUT_DETAIL.md
- 0900054_PROJECT_FLOW_DECISION_NOTE_LAYOUT_DETAIL.md
- 0900055_PROJECT_FLOW_FOLLOW_UP_ACTION_LAYOUT_DETAIL.md
- 0900056_PROJECT_FLOW_CUSTOMER_PROVISION_SCREEN_NOTE.md
- 0900058_PROJECT_FLOW_MULTILINGUAL_INTERFACE_POLICY.md
- 0900059_PROJECT_FLOW_MULTILINGUAL_CUSTOMER_OUTPUT_POLICY.md
- 0900060_PROJECT_FLOW_LANGUAGE_SETTINGS_SCREEN_NOTE.md
- 0900061_PROJECT_FLOW_MULTILINGUAL_EXPORT_NOTE.md
- 0900062_PROJECT_FLOW_MULTILINGUAL_CUSTOMER_MATERIAL_LAYOUT_NOTE.md
- 0900063_PROJECT_FLOW_MULTILINGUAL_EXPORT_HEADER_NOTE.md
- 0900064_PROJECT_FLOW_DEVICE_FORM_FACTOR_NOTE.md

# ============================================================
# PROJECT FLOW INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines screen-level interface design for ProjectFlow.

ui_principles:
- fast daily operation
- clear delay visibility
- issue and risk visibility at a glance
- easy switch between project and task views
- sync/error visibility without deep navigation
- export and report actions must be easy to find
- customer-facing outputs must be review-aware

global_ui_rules:
- list screens should support search, filter, sort
- primary actions must remain visible
- destructive actions must require explicit confirmation
- ERP-owned read-only fields must be visually distinguishable
- draft report state must be visually distinguishable

# ============================================================
# PROJECT FLOW SCREEN LIST
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_list:
- dashboard
- project_list
- project_detail
- task_list
- task_detail
- milestone
- issue_risk
- time_entry
- workload
- sync_status
- export
- report_editor
- settings

# ============================================================
# PROJECT FLOW DASHBOARD SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
dashboard

purpose:
Provides daily overview for managers and operators.

main_sections:
- summary cards
- overdue alerts
- project progress summary
- issue/risk summary
- sync summary
- quick actions

summary_cards:
- active project count
- overdue project count
- overdue task count
- open issue count
- high risk count
- failed sync count

quick_actions:
- create local project
- open import status
- open export
- generate report draft
- open overdue tasks

primary_filters:
- company
- project manager
- status
- period

navigation_targets:
- project_detail
- task_list
- issue_risk
- sync_status
- report_editor

# ============================================================
# PROJECT FLOW PROJECT LIST SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
project_list

purpose:
Shows searchable and sortable project header list.

main_components:
- search bar
- filter panel
- sortable table/list
- bulk actions
- export action

key_columns:
- project_name
- erp_project_code
- project_status
- project_manager_name_snapshot
- progress_percent
- planned_end_date
- delay_days
- health_status
- sync_state

filters:
- status
- manager
- health_status
- sync_state
- planned_end_date range
- ERP linked only

bulk_actions:
- archive selected
- export selected view
- open report generation for selected project

row_actions:
- open detail
- open tasks
- open sync status

# ============================================================
# PROJECT FLOW PROJECT DETAIL SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
project_detail

purpose:
Shows single project operational detail.

main_tabs:
- overview
- tasks
- milestones
- issues_risks
- time
- sync
- reports

overview_fields:
- project_name
- erp_project_code
- project_status
- project_type
- customer_name_snapshot
- project_manager_name_snapshot
- planned_start_date
- planned_end_date
- actual_start_date
- actual_end_date
- progress_percent
- delay_days
- budget_amount_view
- actual_cost_amount_view
- priority
- health_status

ui_rules:
- ERP-owned fields must appear read-only
- local editable fields must be clearly editable
- sync state must be visible in header
- export/report actions must be accessible in header area

header_actions:
- edit project
- export project summary
- generate report draft
- request export to ERP path
- open sync detail

# ============================================================
# PROJECT FLOW TASK LIST SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
task_list

purpose:
Supports daily task tracking and delay recovery.

main_components:
- project scope selector
- task search
- filter chips
- task list/grid
- bulk update area
- export action

key_columns:
- task_title
- project_name
- assignee_name_snapshot
- status
- priority
- planned_end_date
- progress_percent
- delay_days
- dependency_task_id

filters:
- project
- assignee
- status
- priority
- overdue only
- blocked only

bulk_actions:
- change status
- assign owner
- export current view

row_actions:
- open task detail
- quick progress update
- quick status update

# ============================================================
# PROJECT FLOW TASK DETAIL SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
task_detail

purpose:
Shows a task with execution detail and update actions.

main_sections:
- task header
- schedule/progress
- dependency info
- work log summary
- related issue list
- update form

header_fields:
- task_title
- project_name
- assignee_name_snapshot
- status
- priority

detail_fields:
- task_description
- planned_start_date
- planned_end_date
- actual_start_date
- actual_end_date
- progress_percent
- delay_days
- workload_estimate_hours
- workload_actual_hours
- dependency_task_id

actions:
- save task
- change status
- register time entry
- register issue
- open related project

# ============================================================
# PROJECT FLOW MILESTONE SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
milestone

purpose:
Manages milestone visibility and completion.

main_components:
- milestone list
- due date timeline style view
- delay indicator
- completion action
- export action

key_columns:
- milestone_name
- milestone_status
- due_date
- completed_at
- delay_days
- owner_name_snapshot

actions:
- create milestone
- update milestone
- complete milestone
- export milestone view

# ============================================================
# PROJECT FLOW ISSUE RISK SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
issue_risk

purpose:
Provides unified issue and risk handling.

main_tabs:
- issues
- risks

issue_columns:
- title
- severity
- status
- owner_name_snapshot
- due_date
- related_task_id

risk_columns:
- title
- probability_level
- impact_level
- risk_score
- status
- owner_name_snapshot

actions:
- register issue
- register risk
- update severity/status
- update mitigation
- export current view

visual_rules:
- high severity and high risk must be visually prominent

# ============================================================
# PROJECT FLOW TIME ENTRY SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
time_entry

purpose:
Supports quick work log entry.

main_components:
- project selector
- task selector
- date input
- hour input
- work type input
- note input
- recent entries list

list_columns:
- work_date
- project_name
- task_title
- member_name_snapshot
- hours
- export_state

actions:
- save entry
- edit entry
- export time entry list

# ============================================================
# PROJECT FLOW WORKLOAD SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
workload

purpose:
Shows member workload balance.

main_components:
- member summary table
- workload distribution view
- overload warning area
- date range filter

key_columns:
- member_name
- assigned_task_count
- overdue_task_count
- workload_estimate_hours
- workload_actual_hours

actions:
- open member task view
- export workload view

# ============================================================
# PROJECT FLOW SYNC STATUS SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
sync_status

purpose:
Shows import/export/retry status and errors.

main_components:
- sync request list
- status summary cards
- error detail panel
- retry action
- filter area

key_columns:
- sync_request_id
- sync_direction
- sync_type
- target_project_id
- status
- retryable
- requested_at
- finished_at
- error_code

actions:
- open sync detail
- retry selected request
- export sync result list

visual_rules:
- failed and partially_failed must be visually prominent
- retryable state must be obvious

# ============================================================
# PROJECT FLOW EXPORT SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
export

purpose:
Handles spreadsheet export requests.

main_components:
- export target selector
- format selector
- selected columns panel
- masking option selector
- preview summary
- export history list

main_fields:
- export_format
- target_scope
- selected_columns
- masking_option

actions:
- generate xlsx
- generate csv
- open generated file
- re-run same export setting

rules:
- unavailable columns must be disabled
- masked export must be clearly indicated

# ============================================================
# PROJECT FLOW REPORT EDITOR SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
report_editor

purpose:
Supports progress report draft generation and human editing.

main_components:
- project selector
- report type selector
- period selector
- template selector
- quantitative summary area
- qualitative editor area
- next actions editor
- support requests editor
- customer confirmation items editor
- approval status area
- export/copy actions

actions:
- generate draft
- save draft
- mark reviewed
- mark approved
- export report
- copy report text

rules:
- generated text must remain editable
- approval status must be visible
- external-use warning must appear before unapproved export

# ============================================================
# PROJECT FLOW SETTINGS SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
settings

purpose:
Holds user and operational settings.

main_sections:
- display preferences
- default filters
- export defaults
- report defaults
- sync refresh preferences
- permission/help references

settings_examples:
- default project filter
- default export format
- default masking option
- default report template
- sync list refresh interval

# ============================================================
# PROJECT FLOW MULTI DEVICE INTERFACE POLICY
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines interface policy for smartphone and PC parity.

interface_rules:
- same feature set on smartphone and PC
- smartphone may use compact layout
- PC may use dense table and multi-pane layout
- action placement may vary by form factor
- action availability must remain the same
- read-only mode visuals must remain clear on both device types

screen_behavior_examples:
smartphone:
- stacked layout
- bottom or compact menu
- reduced simultaneous columns
- detail navigation by screen transition

pc:
- denser list presentation
- wider table columns
- side-by-side detail area where useful
- same actions visible with wider layout

# ============================================================
# PROJECT FLOW COMMON UI COMPONENT CANDIDATES
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines reusable UI-level component candidates.

ui_component_candidates:
- summary_card_grid
- overdue_badge
- delay_day_chip
- severity_badge
- risk_score_badge
- sync_status_badge
- retryable_state_badge
- export_action_panel
- report_draft_editor_panel
- read_only_mode_banner
- device_parity_action_bar

component_notes:

summary_card_grid:
Reusable for dashboard-style applications.

overdue_badge:
Reusable for task,
schedule,
approval,
and workload applications.

delay_day_chip:
Reusable for project,
task,
milestone,
shipment,
and collection-style apps.

severity_badge:
Reusable for issue,
risk,
incident,
approval escalation,
and support queue applications.

risk_score_badge:
Reusable where probability/impact or score is shown.

sync_status_badge:
Reusable for any app using shared BusinessOS integration path.

retryable_state_badge:
Reusable where retryable failure visibility is needed.

export_action_panel:
Reusable for xlsx/csv output applications.

report_draft_editor_panel:
Reusable for human-edited draft output flows.

read_only_mode_banner:
Reusable for monthly-use application subscription control.

device_parity_action_bar:
Reusable for smartphone/PC same capability layout adaptation.

# ============================================================
# PROJECT FLOW NAVIGATION DESIGN NOTE
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines UI navigation structure and action placement policy.

navigation_structure:
- top entry dashboard
- project and task as two primary operational hubs
- sync/export/report as cross-cutting operational utilities
- settings for defaults and preference control

smartphone_navigation_policy:
- dashboard entry
- bottom or compact main navigation allowed
- detail screens may be stacked
- actions may be grouped into compact action menus
- same action set must remain available

pc_navigation_policy:
- dashboard entry
- side navigation or top navigation allowed
- denser list/table layout allowed
- detail and related list may appear together
- same action set must remain available

global_action_policy:
- export action should be reachable from list and detail screens
- report generation should be reachable from dashboard and project detail
- sync status should be reachable globally
- read-only mode should not hide blocked actions silently

# ============================================================
# PROJECT FLOW SCREEN ACTION MATRIX
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_action_matrix:

dashboard:
- view summary
- open project list
- open task list
- open sync status
- open report editor
- open settings

project_list:
- search
- filter
- sort
- open project detail
- open task list
- export current view
- open report editor

project_detail:
- view overview
- edit local fields
- open tasks
- open milestones
- open issues_risks
- open time
- open sync
- export summary
- generate report draft
- request ERP export path

task_list:
- search
- filter
- sort
- open task detail
- quick update
- export current view

task_detail:
- update task
- change status
- register time entry
- register issue
- open project detail

milestone:
- create
- update
- complete
- export current view

issue_risk:
- register issue
- register risk
- update status
- update severity_or_risk
- export current view

time_entry:
- create
- update
- export current view

workload:
- view member workload
- open member-related tasks
- export current view

sync_status:
- view sync requests
- filter
- open error detail
- retry if allowed
- export sync result list

export:
- choose format
- choose columns
- choose masking option
- generate output
- view export history

report_editor:
- choose project
- choose period
- choose type
- generate draft
- edit draft
- mark reviewed
- mark approved
- export report text or material

settings:
- update defaults
- update export defaults
- update report defaults
- update refresh preferences

# ============================================================
# PROJECT FLOW TEMPLATE AND AUTOMATION SCREEN NOTE
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

new_or_extended_screens:
- form_intake
- automation_rule_settings
- template_selector
- schedule_proposal_preview
- project_memo
- comment_history

screen_notes:

form_intake:
Simple structured entry for task,
issue,
and progress-report-related requests.

automation_rule_settings:
Small rule editor for notification-focused automation.

template_selector:
Lets user choose project type and project template.

schedule_proposal_preview:
Shows generated WBS dates,
dependencies,
and editable adjustments before confirmation.

project_memo:
Shows notes,
meeting records,
and decision records.

comment_history:
Shows short communication thread on project-linked items.

# ============================================================
# PROJECT FLOW TIMELINE SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
timeline

purpose:
Shows project schedule sequence in a compact time-oriented view.

main_components:
- project selector
- date range selector
- milestone timeline
- key task timeline
- dependency markers
- delay emphasis
- filter area

filters:
- project
- milestone only
- key tasks only
- delayed only
- completed include/exclude

actions:
- open related project detail
- open related task detail
- open gantt view
- export timeline view

visual_rules:
- delayed items must be visually prominent
- completed items must remain visible but less dominant
- dependency relation should be understandable at a glance

# ============================================================
# PROJECT FLOW GANTT SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
gantt

purpose:
Shows task schedule structure in a gantt-like operational view.

main_components:
- project selector
- date scale selector
- task hierarchy area
- task bars
- milestone markers
- dependency lines or indicators
- side detail panel
- filter area

filters:
- project
- assignee
- status
- overdue only
- blocked only

task_bar_data:
- planned_start_date
- planned_end_date
- actual_start_date
- actual_end_date
- progress_percent
- delay_days

actions:
- open task detail
- open milestone detail context
- switch to timeline
- export gantt snapshot
- open schedule proposal preview when relevant

ui_rules:
- smartphone may use compressed gantt layout
- pc may use denser side-by-side hierarchy and bar view
- same actions must remain available across devices

# ============================================================
# PROJECT FLOW LIVE DASHBOARD DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
live_dashboard

purpose:
Provides richer live operational summary.

main_sections:
- progress summary
- delay summary
- workload summary
- issue and risk summary
- sync summary
- quick navigation and action area

progress_summary_metrics:
- active_project_count
- progress_percent_average
- completed_task_count
- incomplete_task_count

delay_summary_metrics:
- overdue_project_count
- overdue_task_count
- delayed_milestone_count

workload_summary_metrics:
- member_overload_count
- total_estimate_hours
- total_actual_hours

issue_risk_summary_metrics:
- open_issue_count
- critical_issue_count
- open_risk_count
- high_risk_count

sync_summary_metrics:
- failed_sync_count
- partially_failed_sync_count
- retryable_sync_count

actions:
- open project list
- open task list
- open issue_risk
- open sync status
- open report editor
- open export

# ============================================================
# PROJECT FLOW SCHEDULE PROPOSAL PREVIEW SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
schedule_proposal_preview

purpose:
Shows template-derived proposed schedule before confirmation.

main_components:
- template summary
- project start date summary
- proposed task timeline or gantt
- dependency overview
- business-day rule summary
- editable date adjustment area
- confirmation action area

actions:
- adjust proposed dates
- discard proposal
- confirm proposal
- export proposal snapshot

rules:
- proposal state must be visually distinct from confirmed state
- edited proposal must remain traceable as adjusted proposal

# ============================================================
# PROJECT FLOW FORM INTAKE SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
form_intake

purpose:
Provides simplified structured input for frequent entry scenarios.

main_components:
- form type selector
- project selector
- dynamic field area
- submit action
- submission result area

supported_form_types:
- task_create
- issue_register
- progress_report_request

task_create_form_fields:
- project
- title
- description
- assignee
- priority
- planned_end_date

issue_register_form_fields:
- project
- related_task optional
- title
- description
- severity
- due_date

progress_report_request_form_fields:
- project
- report_type
- reporting_period
- request_note

ui_rules:
- only required fields should appear first
- form should remain compact and easy for field use
- success result should show created target when applicable

# ============================================================
# PROJECT FLOW MEMO SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
project_memo

purpose:
Provides project-linked note and meeting note management.

main_components:
- memo type filter
- memo list
- memo detail editor
- create memo action
- search area

memo_types:
- general_note
- meeting_note
- decision_note

list_columns:
- memo_type
- title
- created_by_user_id
- created_at
- updated_at

actions:
- create memo
- edit memo
- search memos
- filter by memo type
- open from project detail

ui_rules:
- decision_note should be visually distinguishable
- recent updates should be easy to find
- memo access should stay close to project detail context

# ============================================================
# PROJECT FLOW COMMENT HISTORY SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
comment_history

purpose:
Shows lightweight communication history on project-linked entities.

main_components:
- target entity header
- comment thread list
- new comment input
- reply input
- filter area when needed

supported_targets:
- project
- task
- issue
- risk
- milestone

comment_item_fields:
- author
- created_at
- comment_text
- parent_comment_relation optional

actions:
- add comment
- reply to comment
- open target entity

ui_rules:
- comments must remain lightweight
- thread depth should remain simple
- this screen is not a full chat replacement

# ============================================================
# PROJECT FLOW AUTOMATION RULE SETTINGS SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
automation_rule_settings

purpose:
Configures lightweight automation rules.

main_components:
- rule list
- enable/disable toggle
- trigger selector
- target scope selector
- simple condition editor
- action selector
- save action

supported_triggers:
- overdue_task_detected
- delayed_milestone_detected
- high_risk_detected
- critical_issue_detected
- sync_failed
- report_review_pending

supported_actions:
- create_in_app_notification
- highlight_on_dashboard
- flag_for_manager_attention
- request_external_notification

ui_rules:
- editor must remain simple
- only lightweight actions should be selectable
- enabled/disabled state must be obvious

# ============================================================
# PROJECT FLOW NOTIFICATION CENTER SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
notification_center

purpose:
Shows automation-driven and system-driven operational notifications.

main_components:
- notification list
- filter chips
- priority or severity indicator
- source entity link
- acknowledgment marker

filters:
- unread only
- overdue related
- risk related
- sync related
- report review related

notification_item_fields:
- notification_type
- title
- summary
- created_at
- source_entity_type
- source_entity_id
- acknowledged_state

actions:
- open source detail
- mark acknowledged
- filter notifications

ui_rules:
- high urgency items must be visually stronger
- source detail opening must be one step away

# ============================================================
# PROJECT FLOW TEMPLATE MANAGEMENT SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
template_management

purpose:
Manages reusable project templates.

main_components:
- template list
- template detail editor
- task template list
- milestone marker area
- dependency editor
- activation toggle

template_header_fields:
- template_name
- project_type
- description
- is_active

task_template_fields:
- task_template_name
- description
- sequence_no
- relative_start_offset_days
- planned_duration_days
- dependency_template_task_id
- default_priority
- milestone_flag

actions:
- create template
- edit template
- activate template
- deactivate template
- duplicate template

# ============================================================
# PROJECT FLOW WBS PROPOSAL WIZARD SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
wbs_proposal_wizard

purpose:
Guides the user through template-based schedule proposal generation.

wizard_steps:
- choose project type
- choose template
- enter project start date
- choose business-day rule
- review proposal summary
- open preview

main_fields:
- project_type
- project_template
- project_start_date
- business_day_rule_key

actions:
- generate proposal
- cancel
- open preview

ui_rules:
- wizard should remain short and understandable
- only proposal-driving inputs should be required

# ============================================================
# PROJECT FLOW TEMPLATE TASK EDITOR SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
template_task_editor

purpose:
Edits template task rows inside template management.

main_components:
- task template row editor
- dependency selector
- duration editor
- relative offset editor
- milestone flag toggle

actions:
- add task template
- edit task template
- remove task template
- reorder task template

ui_rules:
- dependency relation should be easy to understand
- relative offset and duration should be clearly distinguished

# ============================================================
# PROJECT FLOW CUSTOMER FACING SCHEDULE SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
customer_facing_schedule

purpose:
Shows customer-facing schedule derived from WBS or proposal data.

main_components:
- project selector
- source selector
- phase and milestone grouping area
- simplified schedule preview
- wording adjustment area
- export action area

source_selector_candidates:
- confirmed_schedule
- wbs_proposal

actions:
- generate customer-facing schedule
- edit visible phases and wording
- export xlsx
- export csv
- export explanation material

ui_rules:
- internal-only detail should be suppressible
- milestone and phase headings should be visually prominent
- customer explanation use should be obvious from the screen context

# ============================================================
# PROJECT FLOW CUSTOMER EXPLANATION MATERIAL SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
customer_explanation_material

purpose:
Provides a unified place to generate and review standard customer-facing materials.

main_components:
- project selector
- material type selector
- generated material list
- preview area
- wording adjustment area
- export action area

material_type_selector:
- customer_facing_schedule
- progress_report
- issue_list
- risk_list
- decision_note
- follow_up_action_list

actions:
- generate material
- edit material wording
- export xlsx
- export csv
- export explanation material set

ui_rules:
- all standard materials should be reachable from one place
- external-use context should be visually clear
- material type switching should be easy

# ============================================================
# PROJECT FLOW CUSTOMER SCHEDULE MATERIAL DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

material_id:
customer_facing_schedule

purpose:
Explains overall project schedule to the customer.

main_sections:
- project summary
- phase summary
- milestone schedule
- current position
- next major dates

source_data:
- confirmed schedule
- WBS proposal when allowed
- milestone data
- project progress context

editing_points:
- visible phases
- visible milestones
- wording
- date-note annotations

export_targets:
- xlsx
- csv
- explanation material output

# ============================================================
# PROJECT FLOW PROGRESS REPORT MATERIAL DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

material_id:
progress_report

purpose:
Explains current progress and near-term next steps.

main_sections:
- reporting period
- completed work summary
- current progress summary
- current issues and risks summary
- next planned work
- customer confirmation items

source_data:
- project progress
- task status summary
- issue/risk summary
- memo and note context
- report draft content

editing_points:
- narrative wording
- highlighted achievements
- next actions
- customer-facing phrasing

# ============================================================
# PROJECT FLOW ISSUE LIST MATERIAL DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

material_id:
issue_list

purpose:
Explains open issues and current handling state.

main_sections:
- issue summary count
- open issue table
- severity emphasis
- owner/status view
- current handling note

key_columns:
- title
- severity
- status
- owner_name_snapshot
- due_date
- handling_note optional

editing_points:
- visible issues
- explanatory notes
- customer-facing wording for issue title or note

# ============================================================
# PROJECT FLOW RISK LIST MATERIAL DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

material_id:
risk_list

purpose:
Explains identified risks and mitigation direction.

main_sections:
- risk summary count
- open risk table
- probability/impact summary
- mitigation summary
- owner/status view

key_columns:
- title
- probability_level
- impact_level
- risk_score
- status
- owner_name_snapshot
- mitigation_plan summary

editing_points:
- visible risks
- mitigation wording
- customer-facing explanation level

# ============================================================
# PROJECT FLOW DECISION NOTE MATERIAL DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

material_id:
decision_note

purpose:
Explains what has been decided and when.

main_sections:
- decision summary list
- decision date
- decision owner or participants
- related context note

source_data:
- decision_note memos
- project memo context

key_fields:
- title
- body_text
- created_at
- created_by_user_id

editing_points:
- visible decisions
- wording cleanup
- ordering

# ============================================================
# PROJECT FLOW FOLLOW UP ACTION LIST MATERIAL DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

material_id:
follow_up_action_list

purpose:
Explains pending actions, owners, and expected due direction.

main_sections:
- action summary count
- follow-up table
- owner visibility
- due direction

candidate_source_data:
- open action-tagged tasks
- follow-up memo entries
- explicit follow-up records when later added

key_columns:
- action_title
- owner_name_snapshot
- due_date
- status
- related_entity_type
- related_entity_id

editing_points:
- visible actions
- customer wording
- grouping by owner or date

# ============================================================
# PROJECT FLOW WIREFRAME OVERVIEW
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines wireframe-level layout principles for key screens.

wireframe_principles:
- keep daily actions near the top
- place summary before detail
- keep filters before large lists
- keep export and report actions easy to reach
- keep read-only state visible
- keep smartphone and pc capability the same

layout_rules:
- smartphone uses stacked layout
- pc may use split panes and wider tables
- action groups stay consistent across devices
- ERP-owned fields stay visually read-only

# ============================================================
# PROJECT FLOW DASHBOARD WIREFRAME
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen:
dashboard

smartphone_layout:
1. header
   - app title
   - read-only banner if needed
   - quick refresh
2. summary cards
   - active projects
   - overdue projects
   - overdue tasks
   - open issues
   - high risks
   - failed syncs
3. quick actions
   - project list
   - task list
   - sync status
   - report editor
   - export
4. progress summary block
5. delay and risk block
6. sync summary block

pc_layout:
1. top header row
   - title
   - entitlement state
   - refresh
   - quick actions
2. summary cards row
3. left column
   - progress summary
   - delay summary
4. right column
   - issue/risk summary
   - sync summary


# ============================================================
# PROJECT FLOW PROJECT LIST WIREFRAME
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen:
project_list

smartphone_layout:
1. header
   - title
   - create button
   - export button
2. search bar
3. filter chips row
4. sort selector
5. project cards list
   - project name
   - status
   - progress
   - planned end
   - delay
   - sync state
6. bottom bulk action area when selection exists

pc_layout:
1. header row
   - title
   - create
   - export
   - report
2. search and filter row
3. project table
   - project name
   - ERP code
   - status
   - manager
   - progress
   - planned end
   - delay
   - health
   - sync state
4. bulk action row

# ============================================================
# PROJECT FLOW PROJECT DETAIL WIREFRAME
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen:
project_detail

smartphone_layout:
1. header
   - project name
   - status
   - sync state
2. header actions
   - edit
   - export
   - report
3. summary section
   - customer
   - manager
   - planned dates
   - actual dates
   - progress
   - delay
4. tab row
   - overview
   - tasks
   - milestones
   - issues_risks
   - time
   - sync
   - reports
5. selected tab content

pc_layout:
1. top header
   - project name
   - status
   - sync state
   - actions
2. summary grid
   - project fields
3. horizontal tab row
4. main content area
   - selected tab content
   - optional right side quick summary panel

# ============================================================
# PROJECT FLOW TASK WIREFRAME
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screens:
- task_list
- task_detail

task_list_smartphone_layout:
1. header
2. project scope selector
3. search
4. filter chips
5. task cards
6. quick update sheet trigger

task_list_pc_layout:
1. header row
2. filter/search row
3. task table
4. quick bulk update row

task_detail_smartphone_layout:
1. header
2. status/progress row
3. schedule block
4. workload block
5. dependency block
6. actions
   - save
   - time entry
   - register issue

task_detail_pc_layout:
1. left main detail column
2. right side summary column
3. action row at top

# ============================================================
# PROJECT FLOW TIMELINE GANTT WIREFRAME
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screens:
- timeline
- gantt
- schedule_proposal_preview

timeline_smartphone_layout:
1. header
2. project and range selectors
3. filter row
4. vertical timeline list
5. item tap -> detail drilldown

timeline_pc_layout:
1. top control row
2. left item list
3. right timeline panel

gantt_smartphone_layout:
1. header
2. project selector
3. compact gantt strip area
4. selected item detail area

gantt_pc_layout:
1. top control row
2. left hierarchy table
3. right gantt bar panel
4. bottom detail strip optional

proposal_preview_layout:
- source summary
- gantt or timeline preview
- editable adjustment area
- confirm/discard actions

# ============================================================
# PROJECT FLOW EXPORT REPORT WIREFRAME
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screens:
- export
- report_editor
- customer_explanation_material

export_layout:
1. target selector
2. format selector
3. selected columns area
4. masking option area
5. generate button
6. export history list

report_editor_layout:
1. project selector
2. report type selector
3. period selector
4. quantitative summary block
5. qualitative editor
6. next actions editor
7. support request editor
8. confirmation items editor
9. approval status row
10. save/export actions

customer_material_layout:
1. material type selector
2. preview area
3. wording adjustment area
4. export actions

# ============================================================
# PROJECT FLOW FORM MEMO COMMENT WIREFRAME
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screens:
- form_intake
- project_memo
- comment_history
- automation_rule_settings
- notification_center

form_intake_layout:
1. form type selector
2. project selector
3. dynamic fields
4. submit action
5. result panel

project_memo_layout:
1. memo type filter
2. memo list
3. memo editor
4. save action

comment_history_layout:
1. target header
2. thread list
3. new comment box
4. reply area

automation_rule_settings_layout:
1. rule list
2. selected rule editor
3. trigger selector
4. condition editor
5. action selector
6. enable toggle
7. save action

notification_center_layout:
1. filter chips
2. notification list
3. acknowledgment action
4. source detail link

# ============================================================
# PROJECT FLOW CUSTOMER MATERIAL LAYOUT OVERVIEW
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines layout principles for customer-facing explanation materials.

layout_principles:
- explanation must be easy to follow
- milestone and status should be visually clear
- tables should remain readable when exported
- wording-edit areas should stay near preview areas
- internal-only detail should be suppressible
- external-use review context should remain visible

common_layout_blocks:
- material header
- project summary strip
- material-specific main body
- wording adjustment area
- visible item control area
- export action area

common_header_fields:
- project_name
- material_type
- reporting_or_schedule_period
- review_state
- last_updated_at

# ============================================================
# PROJECT FLOW CUSTOMER SCHEDULE LAYOUT DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

material:
customer_facing_schedule

layout:
1. header area
   - project name
   - material type
   - source type
   - review state
2. summary strip
   - current phase
   - current milestone
   - next milestone
   - target completion
3. main preview area
   - phase list or grouped schedule table
   - milestone emphasis row
   - optional simplified timeline
4. wording and visibility adjustment area
   - visible phases
   - visible milestones
   - annotation note
5. export action area
   - xlsx
   - csv
   - explanation material output

pc_note:
May show schedule preview and wording editor side by side.

smartphone_note:
Uses stacked blocks with milestone summary above preview.

# ============================================================
# PROJECT FLOW PROGRESS REPORT LAYOUT DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

material:
progress_report

layout:
1. header area
   - project name
   - reporting period
   - report type
   - review state
2. quantitative summary block
   - progress percent
   - completed work count
   - incomplete work count
   - overdue count
   - issue/risk counts
3. narrative block
   - completed work summary
   - current situation summary
4. next action block
5. customer confirmation block
6. wording editor area
7. export action area

pc_note:
Quantitative summary may sit beside narrative block.

smartphone_note:
Quantitative summary appears before narrative block.

# ============================================================
# PROJECT FLOW ISSUE LIST LAYOUT DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

material:
issue_list

layout:
1. header area
   - project name
   - open issue count
   - critical issue count
2. filter and visibility row
   - severity filter
   - status filter
   - visible row selection
3. issue table or list
   - title
   - severity
   - status
   - owner
   - due date
   - handling note optional
4. explanation note area
5. export action area

pc_note:
Uses wider issue table.

smartphone_note:
Uses stacked issue cards with severity emphasis.

# ============================================================
# PROJECT FLOW RISK LIST LAYOUT DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

material:
risk_list

layout:
1. header area
   - project name
   - open risk count
   - high risk count
2. filter and visibility row
   - probability filter
   - impact filter
   - status filter
3. risk table or list
   - title
   - probability
   - impact
   - risk score
   - status
   - owner
   - mitigation summary
4. explanation note area
5. export action area

pc_note:
Uses dense risk table with mitigation column.

smartphone_note:
Uses stacked risk cards with score emphasis.

# ============================================================
# PROJECT FLOW DECISION NOTE LAYOUT DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

material:
decision_note

layout:
1. header area
   - project name
   - decision count
2. decision summary strip
   - latest decision
   - last updated
3. decision list
   - title
   - decision date
   - author
   - body summary
4. wording cleanup area
5. export action area

pc_note:
May show selected decision detail beside decision list.

smartphone_note:
Uses stacked decision cards with expandable body.

# ============================================================
# PROJECT FLOW FOLLOW UP ACTION LAYOUT DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

material:
follow_up_action_list

layout:
1. header area
   - project name
   - follow-up count
2. grouping row
   - by owner
   - by due date
   - by status
3. follow-up table or list
   - action title
   - owner
   - due date
   - status
   - related entity
4. wording or note area
5. export action area

pc_note:
Supports grouping controls and wider table.

smartphone_note:
Uses grouped stacked cards.

# ============================================================
# PROJECT FLOW CUSTOMER PROVISION SCREEN NOTE
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines customer-facing support and provision communication points inside the product.

ui_targets:
- trial state communication
- read-only state communication
- blocked-action explanation
- export and report value visibility
- same-capability-on-smartphone-and-pc communication where needed

recommended_ui_points:
- read-only banner
- blocked-action explanation dialog or sheet
- simple subscription explanation area
- trial remaining days display when appropriate
- help/reference entry kept concise

ui_rules:
- communication should stay concise
- support expectation should remain realistic
- no misleading heavy-support impression should be created

# ============================================================
# PROJECT FLOW MULTILINGUAL INTERFACE POLICY
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines multilingual interface behavior.

interface_targets:
- navigation labels
- screen titles
- action labels
- filter labels
- material selectors
- export selectors
- status chips and badges

interface_rules:
- language choice should affect visible labels consistently
- same screen should not mix languages unintentionally
- read-only state wording should also be localized
- blocked-action explanation should be localized

device_rules:
- smartphone and pc must expose the same language capability
- only layout differs by device, not language support

# ============================================================
# PROJECT FLOW MULTILINGUAL CUSTOMER OUTPUT POLICY
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines multilingual behavior for customer-facing outputs.

output_targets:
- customer-facing schedule
- progress report
- issue list
- risk list
- decision note
- follow-up action list
- one-page summary

output_rules:
- output locale should be selectable where supported
- section headings should be localized
- export headers should be localized
- wording overrides should remain possible after localized generation
- review before external use remains mandatory

# ============================================================
# PROJECT FLOW LANGUAGE SETTINGS SCREEN NOTE
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
language_settings

purpose:
Defines the language-selection UI concept.

main_components:
- current language display
- selectable language list
- preview note
- save action

initial_language_options:
- japanese
- english

ui_rules:
- language labels should be understandable in their own language where practical
- language selection should be easy to find
- changing language should not imply business data conversion

# ============================================================
# PROJECT FLOW MULTILINGUAL EXPORT NOTE
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines multilingual behavior in export and customer-facing output screens.

export_rules:
- export screen should show selected output language where relevant
- xlsx/csv header language should follow selected output locale
- customer material preview should reflect selected locale before export
- wording override remains possible after localized generation

screen_targets:
- export
- report_editor
- customer_explanation_material
- one_page_summary

# ============================================================
# PROJECT FLOW MULTILINGUAL CUSTOMER MATERIAL LAYOUT NOTE
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines multilingual layout behavior for customer-facing materials.

layout_targets:
- customer-facing schedule
- progress report
- issue list
- risk list
- decision note
- follow-up action list

layout_rules:
- localized title appears in header
- localized section headings appear consistently
- review state wording appears in selected locale
- wording editor remains available after localized generation
- locale selection should be visible where output locale differs from UI locale

pc_note:
May show preview and wording editor side by side.

smartphone_note:
Uses stacked preview and wording editor blocks.

# ============================================================
# PROJECT FLOW MULTILINGUAL EXPORT HEADER NOTE
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines multilingual behavior for export headers and label presentation.

screen_targets:
- export
- report_editor
- customer_explanation_material
- one_page_summary

ui_rules:
- selected output language should be visible before generation
- header preview should reflect selected language where supported
- export header wording should stay concise and readable
- source data field names are not shown to end users unless explicitly needed

# ============================================================
# PROJECT FLOW DEVICE FORM FACTOR NOTE
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines form-factor-specific UI expectations.

form_factors:
- iphone
- android_phone
- tablet
- pc

layout_expectations:

iphone_and_android_phone:
- stacked layout
- compact navigation
- touch-first interaction
- reduced simultaneous columns

tablet:
- wider layout than phone
- optional split-pane presentation
- touch-first interaction with denser information
- same action set as phone and pc

pc:
- dense tables
- multi-pane presentation where useful
- keyboard and pointer optimization
- same action set as phone and tablet

global_rule:
Same action set,
same business capability,
different presentation only.


# ============================================================
# PROJECT FLOW META INDEX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0900000_PROJECT_FLOW_META_INDEX.md
- 0900001_PROJECT_FLOW_META_OVERVIEW.md
- 0900002_PROJECT_FLOW_IMPLEMENTATION_READINESS_CHECKLIST.md
- 0900003_PROJECT_FLOW_HANDOFF_NOTE.md
- 0900004_PROJECT_FLOW_DESIGN_ALIGNMENT_REVIEW_NOTE.md
- 0900005_PROJECT_FLOW_OPEN_DECISION_LOG.md
- 0900006_PROJECT_FLOW_FINAL_REVIEW_SHEET.md
- 0900007_PROJECT_FLOW_FIXED_AND_OPEN_SUMMARY.md
- 0900008_PROJECT_FLOW_PHASE_BOUNDARY_NOTE.md
- 0900009_PROJECT_FLOW_CUSTOMER_PROVISION_SUMMARY_NOTE.md
- 0900011_PROJECT_FLOW_MULTILINGUAL_SCOPE_SUMMARY.md
- 0900012_PROJECT_FLOW_MULTILINGUAL_OUTPUT_SCOPE_SUMMARY.md
- 0900013_PROJECT_FLOW_MULTILINGUAL_TERM_DICTIONARY_NOTE.md
- 0900014_PROJECT_FLOW_BILINGUAL_LABEL_CATALOG_NOTE.md
- 0900015_PROJECT_FLOW_MULTILINGUAL_FINAL_SUMMARY_NOTE.md
- 0900016_PROJECT_FLOW_FINAL_HANDOFF_INTEGRATED_SUMMARY.md
- 0900017_PROJECT_FLOW_PRE_CLOSURE_REVIEW_NOTE.md
- 0900018_PROJECT_FLOW_CANONICAL_CLOSURE_CHECKLIST.md
- 0900019_PROJECT_FLOW_CLOSURE_SUMMARY_TEMPLATE.md
- 0900020_PROJECT_FLOW_NEXT_PHASE_DECISION_NOTE.md
- 0900021_PROJECT_FLOW_DEVICE_SUPPORT_SUMMARY_NOTE.md
- 0900022_PROJECT_FLOW_DEVICE_PARITY_FINAL_SUMMARY_NOTE.md
- 0900023_PROJECT_FLOW_CROSS_REFERENCE_MATRIX_NOTE.md
- 0900024_PROJECT_FLOW_DESIGN_STABILIZATION_REPORT.md
- 0900025_PROJECT_FLOW_PHASE_GATE_NOTE.md
- 0900026_PROJECT_FLOW_READY_FOR_NEXT_CHAT_NOTE.md
- 0900027_PROJECT_FLOW_FINAL_CANONICAL_STATUS_NOTE.md
- 0900028_PROJECT_FLOW_PRE_CLOSURE_SUMMARY.md
- 0900029_PROJECT_FLOW_CLOSURE_DECISION_TEMPLATE.md
- 0900030_PROJECT_FLOW_MINIMAL_NEXT_PHASE_OPTIONS.md
- 0900031_PROJECT_FLOW_CLOSURE_REVIEW_EXECUTION_SHEET.md
- 0900032_PROJECT_FLOW_CLOSURE_READY_SNAPSHOT.md
- 0900033_PROJECT_FLOW_CLOSURE_RESULT_RECORD_TEMPLATE.md
- 0900034_PROJECT_FLOW_CLOSURE_RESULT_SUMMARY_TEMPLATE.md
- 0900035_PROJECT_FLOW_HOLD_REASON_TEMPLATE.md
- 0900036_PROJECT_FLOW_CLOSURE_PASS_GUIDE_NOTE.md
- 0900037_PROJECT_FLOW_CLOSURE_HOLD_GUIDE_NOTE.md
- 0900038_PROJECT_FLOW_CLOSURE_DECISION_QUICK_NOTE.md
- 0900039_PROJECT_FLOW_CURRENT_CLOSURE_CANDIDATE_NOTE.md
- 0900040_PROJECT_FLOW_PASS_CANDIDATE_SUMMARY_TEMPLATE.md
- 0900041_PROJECT_FLOW_CLOSURE_DECISION.md
- 0900042_PROJECT_FLOW_NEXT_PHASE_START_NOTE.md
- 0900043_PROJECT_FLOW_RESTART_HANDOFF_NOTE.md
- 0900044_PROJECT_FLOW_RESTART_SHORT_REFERENCE.md
- 0900045_PROJECT_FLOW_CANONICAL_REFERENCE_SUMMARY.md
- 0900046_PROJECT_FLOW_CANONICAL_PRIORITY_SUMMARY.md
- 0900047_PROJECT_FLOW_BUSINESSOS_DEPENDENCY_SUMMARY.md
- 0900048_PROJECT_FLOW_ERP_DEPENDENCY_SUMMARY.md
- 0900049_PROJECT_FLOW_COMMON_COMPONENT_DEPENDENCY_SUMMARY.md
- 0900050_PROJECT_FLOW_LOCAL_OWNERSHIP_SUMMARY.md
- 0900051_PROJECT_FLOW_DATA_OWNERSHIP_SUMMARY.md
- 0900052_PROJECT_FLOW_EDITABILITY_SUMMARY.md
- 0900053_PROJECT_FLOW_ACTION_AUTHORITY_SUMMARY.md
- 0900054_PROJECT_FLOW_STATE_TRANSITION_SUMMARY.md
- 0900055_PROJECT_FLOW_AUDITABILITY_SUMMARY.md
- 0900056_PROJECT_FLOW_UPLOADED_REFERENCE_SUMMARY.md
- 0900057_PROJECT_FLOW_REFERENCE_PRIORITY_SUMMARY.md
- 0900058_PROJECT_FLOW_QUESTION_TO_REFERENCE_INDEX.md
- 0900059_PROJECT_FLOW_UPLOADED_FILE_REGISTER_NOTE.md
- 0900060_PROJECT_FLOW_FILE_TO_CONCERN_INDEX.md
- 0900061_PROJECT_FLOW_REFERENCE_UPDATE_RULES.md
- 0900062_PROJECT_FLOW_REFERENCE_CHANGE_LOG_TEMPLATE.md
- 0900063_PROJECT_FLOW_REFERENCE_CONFLICT_RULES.md
- 0900064_PROJECT_FLOW_REFERENCE_CONFLICT_LOG_TEMPLATE.md
- 0900065_PROJECT_FLOW_REFERENCE_CONFLICT_STOP_SUMMARY.md
- 0900066_PROJECT_FLOW_IMPLEMENTATION_PREP_SCOPE_SPLIT_SUMMARY.md
- 0900067_PROJECT_FLOW_NEXT_PHASE_PRIORITY_SUMMARY.md
- 0900068_PROJECT_FLOW_NEXT_PHASE_EXECUTION_TEMPLATE.md
- 0900069_PROJECT_FLOW_NEXT_PHASE_WORK_PACKAGE_TEMPLATE.md
- 0900070_PROJECT_FLOW_SAFE_WORK_PACKAGE_STARTER_SET.md
- 0900071_PROJECT_FLOW_BOUNDARY_SENSITIVE_WORK_PACKAGE_TEMPLATE.md
- 0900072_PROJECT_FLOW_BLOCKED_WORK_PACKAGE_TEMPLATE.md
- 0900073_PROJECT_FLOW_BOUNDARY_AND_BLOCKED_STARTER_SET.md
- 0900074_PROJECT_FLOW_WORK_PACKAGE_GATE_REVIEW_TEMPLATE.md
- 0900075_PROJECT_FLOW_GATE_REVIEW_STARTER_RULES.md
- 0900076_PROJECT_FLOW_WORK_PACKAGE_EXECUTION_RECORD_TEMPLATE.md
- 0900077_PROJECT_FLOW_WORK_PACKAGE_STATUS_SUMMARY_TEMPLATE.md
- 0900078_PROJECT_FLOW_WORK_PACKAGE_REOPEN_TEMPLATE.md
- 0900079_PROJECT_FLOW_BLOCKED_TO_REOPEN_FLOW_NOTE.md
- 0900080_PROJECT_FLOW_EXACT_RESOLUTION_SUMMARY.md
- 0900081_PROJECT_FLOW_POST_EXACT_OPEN_ITEMS_SUMMARY.md
- 0900082_PROJECT_FLOW_POST_EXACT_DECISION_SPLIT.md
- 0900085_PROJECT_FLOW_OPEN_ITEMS_CLOSED_SUMMARY.md
- 0900086_PROJECT_FLOW_REMAINING_ITEM_FINAL_CLASSIFICATION.md
- 0900087_PROJECT_FLOW_DB_OWNER_REVIEW_START_NOTE.md
- 0900088_PROJECT_FLOW_DB_OWNER_REVIEW_CHECK_TEMPLATE.md
- 0900089_PROJECT_FLOW_DB_OWNER_REVIEW_EXECUTION_SHEET.md
- 0900090_PROJECT_FLOW_DB_OWNER_REVIEW_RESULT_TEMPLATE.md
- 0900091_PROJECT_FLOW_DB_OWNER_REVIEW_HOLD_REASON_TEMPLATE.md
- 0900092_PROJECT_FLOW_DB_OWNER_REVIEW_UNLOCK_MATRIX.md
- 0900093_PROJECT_FLOW_DB_OWNER_REVIEW_POST_RESULT_TEMPLATE.md
- 0900094_PROJECT_FLOW_DB_OWNER_REVIEW_POST_RESULT_STARTER_SET.md
- 0900095_PROJECT_FLOW_DB_OWNER_REVIEW_REFLECTION_TEMPLATE.md
- 0900096_PROJECT_FLOW_DB_OWNER_REVIEW_REFLECTION_STARTER_SET.md
- 0900097_PROJECT_FLOW_IMPLEMENTATION_START_ENTRY_NOTE.md
- 0900098_PROJECT_FLOW_IMPLEMENTATION_START_CHECK_TEMPLATE.md
- 0900099_PROJECT_FLOW_IMPLEMENTATION_START_WORK_PACKAGE_STARTER_SET.md
- 0900100_PROJECT_FLOW_IMPLEMENTATION_START_SEQUENCE_TEMPLATE.md
- 0900101_PROJECT_FLOW_IMPLEMENTATION_START_DELIVERABLE_TEMPLATE.md
- 0900102_PROJECT_FLOW_IMPLEMENTATION_START_COMPLETION_MATRIX.md
- 0900103_PROJECT_FLOW_IMPLEMENTATION_START_DELIVERABLE_REVIEW_TEMPLATE.md
- 0900104_PROJECT_FLOW_IMPLEMENTATION_START_APPROVAL_TEMPLATE.md
- 0900105_PROJECT_FLOW_IMPLEMENTATION_START_REVIEW_AND_APPROVAL_FLOW.md
- 0900106_PROJECT_FLOW_IMPLEMENTATION_START_EXECUTION_LEDGER.md
- 0900107_PROJECT_FLOW_IMPLEMENTATION_START_EXECUTION_SEQUENCE_NOTE.md
- 0900108_PROJECT_FLOW_IMPLEMENTATION_START_DEPENDENCY_MATRIX.md
- 0900109_PROJECT_FLOW_IMPLEMENTATION_START_ENTRY_CONDITION_NOTE.md
- 0900110_PROJECT_FLOW_OFFICIAL_COMMON_COMPONENT_LEDGER_SUMMARY.md
- 0900111_PROJECT_FLOW_COMMON_COMPONENT_REFERENCE_PRIORITY_UPDATE.md
- 0900112_PROJECT_FLOW_COMMON_COMPONENT_DECISION_TEMPLATE.md
- 0900113_PROJECT_FLOW_COMMON_COMPONENT_DECISION_STARTER_SET.md
- 0900114_PROJECT_FLOW_SHARED_COMPONENT_ADAPTER_TEMPLATE.md
- 0900115_PROJECT_FLOW_LOCAL_ORCHESTRATION_TEMPLATE.md
- 0900116_PROJECT_FLOW_LOCAL_ORCHESTRATION_STARTER_SET.md
- 0900117_PROJECT_FLOW_SCREEN_ORCHESTRATION_DECISION_TEMPLATE.md
- 0900118_PROJECT_FLOW_SCREEN_TO_PACKAGE_MAPPING_LEDGER.md
- 0900119_PROJECT_FLOW_SCREEN_TO_ORCHESTRATION_PROGRESS_TEMPLATE.md
- 0900120_PROJECT_FLOW_DELIVERABLE_DEPENDENCY_LEDGER.md
- 0900121_PROJECT_FLOW_DELIVERABLE_PROGRESS_TEMPLATE.md
- 0900122_PROJECT_FLOW_DELIVERABLE_TO_FEATURE_SLICE_LEDGER.md
- 0900123_PROJECT_FLOW_FEATURE_SLICE_PLANNING_TEMPLATE.md
- 0900124_PROJECT_FLOW_FEATURE_SLICE_EXECUTION_LEDGER.md
- 0900125_PROJECT_FLOW_FEATURE_SLICE_SEQUENCE_NOTE.md
- 0900126_PROJECT_FLOW_FEATURE_SLICE_DELIVERABLE_TEMPLATE.md
- 0900127_PROJECT_FLOW_FEATURE_SLICE_COMPLETION_MATRIX.md
- 0900128_PROJECT_FLOW_FEATURE_SLICE_REVIEW_TEMPLATE.md
- 0900129_PROJECT_FLOW_FEATURE_SLICE_APPROVAL_TEMPLATE.md
- 0900130_PROJECT_FLOW_FEATURE_SLICE_REVIEW_AND_APPROVAL_FLOW.md
- 0900131_PROJECT_FLOW_FEATURE_SLICE_EXECUTION_RECORD_TEMPLATE.md
- 0900132_PROJECT_FLOW_FEATURE_SLICE_PROGRESS_SUMMARY_TEMPLATE.md
- 0900133_PROJECT_FLOW_FEATURE_SLICE_REOPEN_TEMPLATE.md
- 0900134_PROJECT_FLOW_FEATURE_SLICE_BLOCKED_TO_REOPEN_FLOW.md
- 0900135_PROJECT_FLOW_CODING_START_ENTRY_NOTE.md
- 0900136_PROJECT_FLOW_CODING_START_CHECK_TEMPLATE.md
- 0900137_PROJECT_FLOW_CODING_START_WORK_PACKAGE_STARTER_SET.md
- 0900138_PROJECT_FLOW_CODING_START_SEQUENCE_TEMPLATE.md
- 0900139_PROJECT_FLOW_CODING_START_DELIVERABLE_TEMPLATE.md
- 0900140_PROJECT_FLOW_CODING_START_COMPLETION_MATRIX.md
- 0900141_PROJECT_FLOW_CODING_START_REVIEW_TEMPLATE.md
- 0900142_PROJECT_FLOW_CODING_START_APPROVAL_TEMPLATE.md
- 0900143_PROJECT_FLOW_CODING_START_REVIEW_AND_APPROVAL_FLOW.md
- 0900144_PROJECT_FLOW_CODING_START_EXECUTION_RECORD_TEMPLATE.md
- 0900145_PROJECT_FLOW_CODING_START_PROGRESS_SUMMARY_TEMPLATE.md
- 0900146_PROJECT_FLOW_CODING_START_REOPEN_TEMPLATE.md
- 0900147_PROJECT_FLOW_CODING_START_BLOCKED_TO_REOPEN_FLOW.md
- 0900148_PROJECT_FLOW_CODING_START_DEPENDENCY_MATRIX.md
- 0900149_PROJECT_FLOW_CODING_START_EXECUTION_LEDGER.md
- 0900150_PROJECT_FLOW_CODING_START_POST_REVIEW_BRANCH_TEMPLATE.md
- 0900151_PROJECT_FLOW_ACTUAL_IMPLEMENTATION_TASK_ENTRY_NOTE.md
- 0900152_PROJECT_FLOW_ACTUAL_IMPLEMENTATION_TASK_CHECK_TEMPLATE.md
- 0900153_PROJECT_FLOW_ACTUAL_IMPLEMENTATION_TASK_STARTER_SET.md
- 0900154_PROJECT_FLOW_ACTUAL_IMPLEMENTATION_TASK_EXECUTION_LEDGER.md
- 0900155_PROJECT_FLOW_ACTUAL_IMPLEMENTATION_TASK_DELIVERABLE_TEMPLATE.md
- 0900156_PROJECT_FLOW_ACTUAL_IMPLEMENTATION_TASK_REVIEW_TEMPLATE.md
- 0900157_PROJECT_FLOW_ACTUAL_IMPLEMENTATION_TASK_COMPLETION_MATRIX.md
- 0900158_PROJECT_FLOW_ACTUAL_IMPLEMENTATION_TASK_APPROVAL_TEMPLATE.md
- 0900159_PROJECT_FLOW_ACTUAL_IMPLEMENTATION_TASK_EXECUTION_RECORD_TEMPLATE.md
- 0900160_PROJECT_FLOW_ACTUAL_IMPLEMENTATION_TASK_REOPEN_TEMPLATE.md
- 0900161_PROJECT_FLOW_ACTUAL_IMPLEMENTATION_TASK_TO_NEXT_UNIT_LEDGER.md
- 0900162_PROJECT_FLOW_NEXT_IMPLEMENTATION_UNIT_STARTER_SET.md
- 0900163_PROJECT_FLOW_NEXT_IMPLEMENTATION_UNIT_EXECUTION_LEDGER.md
- 0900164_PROJECT_FLOW_NEXT_IMPLEMENTATION_UNIT_DELIVERABLE_TEMPLATE.md
- 0900165_PROJECT_FLOW_NEXT_IMPLEMENTATION_UNIT_REVIEW_TEMPLATE.md
- 0900166_PROJECT_FLOW_NEXT_IMPLEMENTATION_UNIT_COMPLETION_MATRIX.md
- 0900167_PROJECT_FLOW_NEXT_IMPLEMENTATION_UNIT_APPROVAL_TEMPLATE.md
- 0900168_PROJECT_FLOW_NEXT_IMPLEMENTATION_UNIT_EXECUTION_RECORD_TEMPLATE.md
- 0900169_PROJECT_FLOW_NEXT_IMPLEMENTATION_UNIT_REOPEN_TEMPLATE.md
- 0900170_PROJECT_FLOW_NEXT_IMPLEMENTATION_UNIT_TO_CONCRETE_CODING_LEDGER.md
- 0900171_PROJECT_FLOW_CONCRETE_CODING_WORK_GROUP_STARTER_SET.md
- 0900172_PROJECT_FLOW_CONCRETE_CODING_WORK_GROUP_EXECUTION_LEDGER.md
- 0900173_PROJECT_FLOW_CONCRETE_CODING_WORK_GROUP_DELIVERABLE_TEMPLATE.md
- 0900174_PROJECT_FLOW_CONCRETE_CODING_WORK_GROUP_REVIEW_TEMPLATE.md
- 0900175_PROJECT_FLOW_CONCRETE_CODING_WORK_GROUP_COMPLETION_MATRIX.md
- 0900176_PROJECT_FLOW_CONCRETE_CODING_WORK_GROUP_APPROVAL_TEMPLATE.md
- 0900177_PROJECT_FLOW_CONCRETE_CODING_WORK_GROUP_EXECUTION_RECORD_TEMPLATE.md
- 0900178_PROJECT_FLOW_CONCRETE_CODING_WORK_GROUP_REOPEN_TEMPLATE.md
- 0900179_PROJECT_FLOW_CONCRETE_CODING_WORK_GROUP_TO_FILE_TASK_LEDGER.md
- 0900180_PROJECT_FLOW_CONCRETE_FILE_UNIT_STARTER_SET.md
- 0900181_PROJECT_FLOW_CONCRETE_FILE_UNIT_EXECUTION_LEDGER.md
- 0900182_PROJECT_FLOW_CONCRETE_FILE_UNIT_DELIVERABLE_TEMPLATE.md
- 0900183_PROJECT_FLOW_CONCRETE_FILE_UNIT_REVIEW_TEMPLATE.md
- 0900184_PROJECT_FLOW_CONCRETE_FILE_UNIT_COMPLETION_MATRIX.md
- 0900185_PROJECT_FLOW_CONCRETE_FILE_UNIT_APPROVAL_TEMPLATE.md
- 0900186_PROJECT_FLOW_CONCRETE_FILE_UNIT_EXECUTION_RECORD_TEMPLATE.md
- 0900187_PROJECT_FLOW_CONCRETE_FILE_UNIT_REOPEN_TEMPLATE.md
- 0900188_PROJECT_FLOW_CONCRETE_FILE_UNIT_TO_PATCH_TASK_LEDGER.md
- 0900189_PROJECT_FLOW_PATCH_TASK_STARTER_SET.md
- 0900190_PROJECT_FLOW_PATCH_TASK_EXECUTION_LEDGER.md
- 0900191_PROJECT_FLOW_PATCH_TASK_DELIVERABLE_TEMPLATE.md
- 0900192_PROJECT_FLOW_PATCH_TASK_REVIEW_AND_APPROVAL_TEMPLATE.md
- 0900193_PROJECT_FLOW_PATCH_TASK_COMPLETION_MATRIX.md
- 0900194_PROJECT_FLOW_PATCH_TASK_EXECUTION_RECORD_TEMPLATE.md
- 0900195_PROJECT_FLOW_PATCH_TASK_REOPEN_TEMPLATE.md
- 0900196_PROJECT_FLOW_PATCH_TASK_TO_COMMIT_PR_LEDGER.md
- 0900197_PROJECT_FLOW_COMMIT_PR_UNIT_STARTER_SET.md
- 0900198_PROJECT_FLOW_COMMIT_PR_UNIT_EXECUTION_LEDGER.md
- 0900199_PROJECT_FLOW_COMMIT_PR_UNIT_DELIVERABLE_TEMPLATE.md
- 0900200_PROJECT_FLOW_COMMIT_PR_UNIT_REVIEW_AND_APPROVAL_TEMPLATE.md
- 0900201_PROJECT_FLOW_COMMIT_PR_UNIT_COMPLETION_MATRIX.md
- 0900202_PROJECT_FLOW_COMMIT_PR_UNIT_EXECUTION_RECORD_TEMPLATE.md
- 0900203_PROJECT_FLOW_COMMIT_PR_UNIT_REOPEN_TEMPLATE.md
- 0900204_PROJECT_FLOW_COMMIT_PR_UNIT_TO_MERGE_RELEASE_LEDGER.md
- 0900205_PROJECT_FLOW_MERGE_RELEASE_UNIT_STARTER_SET.md
- 0900206_PROJECT_FLOW_MERGE_RELEASE_UNIT_EXECUTION_LEDGER.md
- 0900207_PROJECT_FLOW_MERGE_RELEASE_UNIT_DELIVERABLE_TEMPLATE.md
- 0900208_PROJECT_FLOW_MERGE_RELEASE_UNIT_REVIEW_AND_APPROVAL_TEMPLATE.md
- 0900209_PROJECT_FLOW_MERGE_RELEASE_UNIT_COMPLETION_MATRIX.md
- 0900210_PROJECT_FLOW_MERGE_RELEASE_UNIT_EXECUTION_RECORD_TEMPLATE.md
- 0900211_PROJECT_FLOW_MERGE_RELEASE_UNIT_REOPEN_TEMPLATE.md
- 0900212_PROJECT_FLOW_MERGE_RELEASE_UNIT_TO_RC_HANDOFF_LEDGER.md
- 0900213_PROJECT_FLOW_RC_HANDOFF_UNIT_STARTER_SET.md
- 0900214_PROJECT_FLOW_RC_HANDOFF_UNIT_EXECUTION_LEDGER.md
- 0900215_PROJECT_FLOW_RC_HANDOFF_UNIT_DELIVERABLE_TEMPLATE.md
- 0900216_PROJECT_FLOW_RC_HANDOFF_UNIT_REVIEW_AND_APPROVAL_TEMPLATE.md
- 0900217_PROJECT_FLOW_RC_HANDOFF_COMPLETION_MATRIX.md
- 0900218_PROJECT_FLOW_RC_HANDOFF_EXECUTION_RECORD_TEMPLATE.md
- 0900219_PROJECT_FLOW_RC_HANDOFF_REOPEN_TEMPLATE.md
- 0900220_PROJECT_FLOW_RC_HANDOFF_TO_FINAL_CLOSURE_LEDGER.md
- 0900221_PROJECT_FLOW_FINAL_CLOSURE_TEMPLATE.md
- 0900222_PROJECT_FLOW_MASTER_RESTART_ENTRY_TEMPLATE.md
- 0900223_PROJECT_FLOW_CLOSURE_DECISION_TEMPLATE.md
- 0900224_PROJECT_FLOW_FINAL_HANDOFF_SUMMARY_TEMPLATE.md
- 0900225_PROJECT_FLOW_MASTER_RESTART_NOTE_TEMPLATE.md
- 0900226_PROJECT_FLOW_FINAL_NAVIGATION_TEMPLATE.md
- 0900227_PROJECT_FLOW_CLOSURE_AND_RESTART_STARTER_SET.md
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
- 0900229_PROJECT_FLOW_FINAL_HANDOFF_SUMMARY.md
- 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
- 0900231_PROJECT_FLOW_FINAL_NAVIGATION.md
- 0900232_PROJECT_FLOW_CLOSURE_DECISION.md
- 0900233_PROJECT_FLOW_DESIGN_FREEZE_NOTE.md
- 0900234_PROJECT_FLOW_NEXT_CHAT_START_NOTE.md
- 0900235_PROJECT_FLOW_FINAL_INDEX_PATCH_NOTE.md
- 0900236_PROJECT_FLOW_TOP_PRIORITY_NAVIGATION.md
- 0900237_PROJECT_FLOW_CURRENT_CLOSURE_CANDIDATE_SUMMARY.md
- 0900238_PROJECT_FLOW_RESTART_SHORTCUT_NOTE.md
- 0900239_PROJECT_FLOW_MASTER_CLOSURE_SUMMARY.md
- 0900240_PROJECT_FLOW_ENTRY_DOCUMENT_MAP.md
- 0900241_PROJECT_FLOW_CLOSURE_STATE_MAP.md
- 0900242_PROJECT_FLOW_FINAL_END_NOTE.md
- 0900243_PROJECT_FLOW_ONE_PAGE_RESTART.md
- 0900244_PROJECT_FLOW_CLOSURE_NAVIGATION_SHORTCUT.md
- 0900245_PROJECT_FLOW_CURRENT_RECOMMENDED_NEXT_ACTIONS.md
- 0900246_PROJECT_FLOW_CLOSURE_DECLARATION.md
- 0900247_PROJECT_FLOW_RESTART_PACK.md
- 0900248_PROJECT_FLOW_FINAL_QUICK_MAP.md
- 0900249_PROJECT_FLOW_LAST_RECOMMENDED_PATH_NOTE.md
- 0900250_PROJECT_FLOW_TERMINAL_MASTER_NOTE.md
- 0900251_PROJECT_FLOW_SINGLE_PAGE_HUB.md
- 0900252_PROJECT_FLOW_COMPLETION_DECLARATION.md
- 0900253_PROJECT_FLOW_FINAL_CONTINUATION_CHOOSER.md
- 0900254_PROJECT_FLOW_TERMINAL_SHORTCUT.md
- 0900255_PROJECT_FLOW_COMPLETION_MAP.md
- 0900256_PROJECT_FLOW_END_STATE_NAVIGATION.md
- 0900257_PROJECT_FLOW_LAST_MILE_NOTE.md
- 0900258_PROJECT_FLOW_STOP_HERE_NOTE.md
- 0900259_PROJECT_FLOW_RESUME_PATH_MATRIX.md
- 0900260_PROJECT_FLOW_FINAL_TINY_HUB.md
- 0900261_PROJECT_FLOW_MASTER_TERMINAL_INDEX.md
- 0900262_PROJECT_FLOW_MASTER_TERMINAL_INDEX_SHORTCUT.md
- 0900263_PROJECT_FLOW_FINAL_COMPLETION_NOTE.md
- 0900264_PROJECT_FLOW_FINAL_STOP_DECLARATION.md
- 0900265_PROJECT_FLOW_FINAL_ONE_PAGE_HANDOFF.md
- 0900266_PROJECT_FLOW_NEXT_CHAT_MESSAGE_TEMPLATE.md
- 0900267_PROJECT_FLOW_FINAL_DONE_MAP.md
- 0900268_PROJECT_FLOW_FINAL_PROGRESS_SNAPSHOT.md
- 0900269_PROJECT_FLOW_TERMINAL_DOC_LIST.md
- 0900270_PROJECT_FLOW_NEXT_CHAT_ULTRA_SHORT_NOTE.md
- 0900271_PROJECT_FLOW_SCOPE_BOUNDARY_AFTER_COMPLETION_NOTE.md

# ============================================================
# PROJECT FLOW META OVERVIEW
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Implementation readiness and review notes.

# ============================================================
# PROJECT FLOW IMPLEMENTATION READINESS CHECKLIST
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- application definition fixed
- scope fixed
- source of truth split fixed
- integration boundary fixed
- screen architecture fixed
- model draft fixed
- flow draft fixed
- DB physical schema pending
- API exact payload pending
- implementation module split pending
- test design pending

# ============================================================
# PROJECT FLOW HANDOFF NOTE
# ============================================================

status: canonical-handoff
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a handoff summary for continuing ProjectFlow work
in another chat or another implementation phase.

# ============================================================
# 1. APPLICATION IDENTITY
# ============================================================

application_name:
ProjectFlow

application_role:
ProjectFlow is a project execution front application
for daily operational use.

core_value:
- small and easy to use
- customer-usable
- smartphone and PC capable
- same functional capability on both device types
- ERP cooperation through shared BusinessOS
- spreadsheet exportable
- human-editable progress report generation

# ============================================================
# 2. FIXED POSITIONING
# ============================================================

positioning:
ProjectFlow is not the ERP source of truth.
It is the field operation front for project execution.

shared_businessos_rule:
ERP integration is not direct application-local integration.
It is a shared BusinessOS-controlled integration path.

source_of_truth_split:

erp_truth:
- official project code
- customer
- contract amount
- formal budget
- accounting actual cost
- billing and sales
- formal organization references

projectflow_truth:
- task execution
- issue and risk
- milestone operation
- work log
- operational comments
- daily progress visibility
- report drafts
- export history

# ============================================================
# 3. COMMERCIAL MODEL
# ============================================================

commercial_model:
- provision_style: pre-installed application
- subscription_style: monthly-use application
- monthly_price_jpy: 900
- initial_trial_period_days: 7

entitlement_states:
- trial_active
- subscribed_active
- unpaid_read_only
- suspended

unpaid_read_only_summary:
view is allowed,
mutation and generation are blocked.

blocked_in_unpaid_read_only:
- create
- edit
- archive
- spreadsheet generation
- report draft generation
- report draft update
- ERP import request
- ERP export request
- sync retry

ui_rule:
Blocked actions remain visible but guarded.
Silent hide is forbidden for major actions.

# ============================================================
# 4. DEVICE RULE
# ============================================================

device_rule:
ProjectFlow must provide the same functional capability
on smartphone and PC.

allowed_difference:
- layout
- density
- navigation placement
- panel arrangement
- touch vs pointer optimization

forbidden_difference:
- feature availability gap by device

# ============================================================
# 5. MAJOR FUNCTIONAL DOMAINS
# ============================================================

major_domains:
- project management
- task management
- milestone management
- issue and risk management
- time entry
- sync status and retry
- spreadsheet export
- progress report draft generation
- entitlement/read-only control

# ============================================================
# 6. MAIN SCREENS
# ============================================================

screens:
- dashboard
- project_list
- project_detail
- task_list
- task_detail
- milestone
- issue_risk
- time_entry
- workload
- sync_status
- export
- report_editor
- settings

# ============================================================
# 7. MAIN USER JOURNEYS
# ============================================================

main_user_journeys:
- daily manager check
- member daily task update
- customer explanation preparation
- sync failure review
- unpaid read-only browsing

# ============================================================
# 8. DATA / MODEL SUMMARY
# ============================================================

logical_models:
- project
- project_task
- project_milestone
- project_issue
- project_risk
- project_time_entry
- project_sync_request
- project_sync_log
- project_export_job
- project_progress_report_draft

physical_tables:
- pf_project
- pf_project_task
- pf_project_milestone
- pf_project_issue
- pf_project_risk
- pf_project_time_entry
- pf_sync_request
- pf_sync_log
- pf_export_job
- pf_progress_report_draft

# ============================================================
# 9. API / BOUNDARY SUMMARY
# ============================================================

shared_businessos_boundary_requests:
- request_project_import
- request_project_export
- request_sync_retry
- get_sync_status
- get_sync_error_detail

local_application_requests:
- request_spreadsheet_export
- request_progress_report_draft_generation
- update_progress_report_draft
- get_report_draft

important_rule:
ERP direct call from ProjectFlow is forbidden.

# ============================================================
# 10. OUTPUT RULE
# ============================================================

spreadsheet_output:
- xlsx
- csv

output_principles:
- snapshot based
- permission aware
- masking aware
- customer explanation friendly

report_output_principles:
- quantitative + qualitative
- auto-generated output is draft only
- human editing is mandatory before external use
- approval-aware flow is required

# ============================================================
# 11. IMPLEMENTATION SPLIT SUMMARY
# ============================================================

implementation_groups:
- app-shell
- shared-kernel
- project-domain
- task-domain
- milestone-domain
- issue-risk-domain
- time-entry-domain
- sync-domain
- export-report-domain
- integration-boundary
- ui-feature-screens
- test-support

# ============================================================
# 12. COMMON COMPONENT EXTRACTION RULE
# ============================================================

common_component_rule:
Common component ledger registration is handled in a separate chat.

this_chat_rule:
This chat may identify additive common component candidates only.
Ledger files themselves must not be updated here.

# ============================================================
# 13. MAIN OPEN ITEMS
# ============================================================

open_items:
- exact Android module naming
- DI framework choice
- local cache/offline strategy
- background job scheduling style
- final schema name confirmation
- final enum constraint implementation style
- RLS policy detail
- trigger design for updated_at
- materialized summary necessity review

# ============================================================
# 14. NEXT RECOMMENDED STEP
# ============================================================

recommended_next_step:
Move to implementation-prep detail,
such as:
- exact screen field layout
- exact DB DDL
- exact Android module naming
- sync/error UI wire detail
- export/report template detail

# ============================================================
# PROJECT FLOW DESIGN ALIGNMENT REVIEW NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Summarizes current design alignment and remaining review points.

current_alignment_summary:
- ProjectFlow is fixed as a field operation front
- ERP integration is fixed as shared BusinessOS mediated
- subscription and read-only rules are fixed
- smartphone and pc parity is fixed
- spreadsheet export and report draft generation are fixed
- form intake, memo, comment, light automation are added
- template and WBS proposal are added
- timeline, gantt, and live dashboard are added

remaining_review_points:
- wording consistency between "proposal", "draft", and "confirmed"
- whether memo and comment should share common search behavior
- whether template milestone definition needs its own physical model later
- whether automation notification history needs a dedicated logical model later
- whether gantt and timeline require separate export semantics later

# ============================================================
# PROJECT FLOW OPEN DECISION LOG
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Captures design decisions that remain intentionally open.

open_decisions:
- final Android module naming
- DI framework choice
- offline/cache strategy
- business-day rule sophistication level
- whether comment edit window is needed
- whether automation execution log becomes its own model
- whether customer-limited sharing is future phase or not
- whether memo full-text search is included in initial scope

note:
These are open design decisions only.
They are not implementation start signals.

# ============================================================
# PROJECT FLOW FINAL REVIEW SHEET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Final review sheet for detecting omissions,
conflicts,
and unresolved design areas.

# ============================================================
# 1. POSITIONING REVIEW
# ============================================================

positioning_check:
- [ ] ProjectFlow is consistently described as a field operation front
- [ ] ERP direct call from ProjectFlow is consistently forbidden
- [ ] shared BusinessOS mediated integration is consistently stated
- [ ] source-of-truth split is consistent across documents

# ============================================================
# 2. COMMERCIAL / ENTITLEMENT REVIEW
# ============================================================

commercial_check:
- [ ] provision style is fixed as pre-installed application
- [ ] subscription style is fixed as monthly-use application
- [ ] monthly price is fixed at 900 JPY
- [ ] initial trial is fixed at 7 days
- [ ] unpaid state is fixed as read-only
- [ ] blocked actions remain visible but guarded
- [ ] smartphone and pc apply the same entitlement rules

# ============================================================
# 3. DEVICE PARITY REVIEW
# ============================================================

device_parity_check:
- [ ] smartphone and pc same functional capability rule is fixed
- [ ] only layout and density differences are allowed
- [ ] no device-exclusive major feature remains in design
- [ ] wireframes preserve action parity

# ============================================================
# 4. CORE FUNCTION REVIEW
# ============================================================

core_function_check:
- [ ] project management is covered
- [ ] task management is covered
- [ ] milestone management is covered
- [ ] issue and risk management are covered
- [ ] time entry is covered
- [ ] sync status and retry are covered
- [ ] export and report are covered

# ============================================================
# 5. ADDITIVE FEATURE REVIEW
# ============================================================

additive_feature_check:
- [ ] form intake is covered
- [ ] light automation is covered
- [ ] timeline is covered
- [ ] gantt is covered
- [ ] live dashboard is covered
- [ ] memo and meeting note are covered
- [ ] comment history is covered
- [ ] project template is covered
- [ ] WBS scheduling proposal is covered

# ============================================================
# 6. CUSTOMER MATERIAL REVIEW
# ============================================================

customer_material_check:
- [ ] customer-facing schedule is covered
- [ ] progress report is covered
- [ ] issue list is covered
- [ ] risk list is covered
- [ ] decision note is covered
- [ ] follow-up action list is covered
- [ ] all six are standard materials from the beginning
- [ ] external-use human review remains mandatory

# ============================================================
# 7. STATE / PROPOSAL / DRAFT REVIEW
# ============================================================

state_check:
- [ ] proposal and confirmed schedule are clearly separated
- [ ] draft and final external-use report are clearly separated
- [ ] read-only and active entitlement states are clearly separated
- [ ] sync status values are consistently handled

# ============================================================
# 8. DATA / MODEL REVIEW
# ============================================================

data_model_check:
- [ ] logical models cover major domains
- [ ] physical table candidates cover major domains
- [ ] export/report/template/proposal models are included
- [ ] memo/comment/form models are included
- [ ] automation-related models are included where intended
- [ ] table ownership does not conflict with ERP truth

# ============================================================
# 9. IMPLEMENTATION PREP REVIEW
# ============================================================

implementation_prep_check:
- [ ] module split is documented
- [ ] screen state and event design is documented
- [ ] use case grouping is documented
- [ ] repository and gateway boundaries are documented
- [ ] migration split plan is documented
- [ ] validation and error handling split is documented

# ============================================================
# 10. UI / WIREFRAME REVIEW
# ============================================================

ui_wireframe_check:
- [ ] dashboard wireframe exists
- [ ] project list/detail wireframes exist
- [ ] task wireframes exist
- [ ] timeline/gantt wireframes exist
- [ ] export/report/customer material wireframes exist
- [ ] form/memo/comment/automation wireframes exist
- [ ] read-only visibility is represented

# ============================================================
# 11. OPEN DECISION REVIEW
# ============================================================

open_decision_check:
- [ ] open decisions remain explicitly listed
- [ ] no open decision is incorrectly treated as already fixed
- [ ] no implementation-start action is implied by design-only docs

# ============================================================
# 12. REVIEW RESULT
# ============================================================

review_result_fields:
- final_gap_summary
- contradiction_summary
- optional_next_design_focus

# ============================================================
# PROJECT FLOW FIXED AND OPEN SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact summary of what is fixed
and what remains intentionally open.

# ============================================================
# 1. FIXED ITEMS
# ============================================================

fixed_items:

identity_and_positioning:
- ProjectFlow is a field operation front
- ProjectFlow is not the ERP source of truth
- ERP integration is mediated by shared BusinessOS
- ERP direct call from ProjectFlow is forbidden

commercial_model:
- provision style is pre-installed application
- subscription style is monthly-use application
- monthly price is 900 JPY
- initial trial period is 7 days
- unpaid state is read-only

device_rule:
- smartphone and pc provide the same functional capability
- device differences are limited to layout and density

core_domains:
- project management
- task management
- milestone management
- issue and risk management
- time entry
- sync status and retry
- export and report

additive_domains:
- form intake
- light automation
- timeline
- gantt
- live dashboard
- memo and meeting note
- comment history
- project template
- WBS scheduling proposal

customer_materials:
- customer-facing schedule
- progress report
- issue list
- risk list
- decision note
- follow-up action list

governance_and_output_rules:
- blocked actions remain visible but guarded
- external-use review is mandatory
- generated report is draft until reviewed
- generated schedule is proposal until confirmed

# ============================================================
# 2. OPEN ITEMS
# ============================================================

open_items:

implementation_detail:
- final Android module names
- DI framework choice
- local cache and offline strategy
- background job scheduling style

data_and_db:
- final schema name confirmation
- final enum hardening style
- RLS detail
- trigger execution order review with DB owner

feature_detail:
- business-day rule sophistication level
- whether automation execution log becomes its own model
- whether memo full-text search is initial scope
- whether customer-limited sharing is future phase

ux_detail:
- comment edit window policy
- final export packaging UX
- final wording preset strategy for customer materials

# ============================================================
# 3. IMPORTANT DISTINCTIONS
# ============================================================

important_distinctions:
- proposal != confirmed schedule
- draft report != externally reviewed report
- dashboard/timeline/gantt != source of truth
- form input != separate truth domain
- automation != hidden workflow engine

# ============================================================
# PROJECT FLOW PHASE BOUNDARY NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Clarifies current phase boundary.

current_phase:
design_only

phase_rules:
- current work is design fixation and refinement
- current work is not implementation start
- current work is not migration execution
- current work is not Android coding start
- current work is not ERP integration execution

allowed_work_now:
- design expansion
- consistency review
- output policy refinement
- customer-facing material refinement
- implementation-prep documentation

not_yet_started:
- executable migration rollout
- application coding
- production integration
- operational rollout

# ============================================================
# PROJECT FLOW CUSTOMER PROVISION SUMMARY NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact summary of customer provision assumptions.

summary:
- ProjectFlow is a customer-usable monthly-use application
- price is 900 JPY per month
- initial trial is 7 days
- unpaid state is read-only
- smartphone and pc have the same functional capability
- support is minimal by design
- customer explanation materials are part of core value

# ============================================================
# PROJECT FLOW MULTILINGUAL SCOPE SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- multilingual support is first-class
- initial languages are Japanese and English
- smartphone and pc support the same language capability
- UI,
  customer-facing materials,
  export headers,
  and one-page summary are in multilingual scope
- fallback behavior is defined

# ============================================================
# PROJECT FLOW MULTILINGUAL OUTPUT SCOPE SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- multilingual scope includes UI,
  customer-facing materials,
  spreadsheet export headers,
  and one-page summary
- initial languages are Japanese and English
- all six standard customer-facing materials are in multilingual scope
- export headers are localized from language-neutral field ids
- one output should remain one locale consistently

# ============================================================
# PROJECT FLOW MULTILINGUAL TERM DICTIONARY NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a starter term dictionary note for initial language scope.

initial_language_scope:
- japanese
- english

starter_terms:

project:
- ja: プロジェクト
- en: Project

task:
- ja: タスク
- en: Task

milestone:
- ja: マイルストーン
- en: Milestone

issue:
- ja: 課題
- en: Issue

risk:
- ja: リスク
- en: Risk

customer_facing_schedule:
- ja: 客先説明用スケジュール
- en: Customer-Facing Schedule

progress_report:
- ja: 進捗報告
- en: Progress Report

decision_note:
- ja: 決定事項メモ
- en: Decision Note

follow_up_action_list:
- ja: 宿題一覧
- en: Follow-Up Action List

read_only:
- ja: 閲覧専用
- en: Read-Only

trial:
- ja: お試し
- en: Trial

proposal:
- ja: 提案
- en: Proposal

confirmed:
- ja: 確定
- en: Confirmed

# ============================================================
# PROJECT FLOW BILINGUAL LABEL CATALOG NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a starter bilingual label catalog
for Japanese and English output and UI wording.

# ============================================================
# 1. COMMON UI LABELS
# ============================================================

common_ui_labels:

save:
- ja: 保存
- en: Save

cancel:
- ja: キャンセル
- en: Cancel

export:
- ja: 出力
- en: Export

generate:
- ja: 生成
- en: Generate

review:
- ja: レビュー
- en: Review

confirm:
- ja: 確定
- en: Confirm

back:
- ja: 戻る
- en: Back

edit:
- ja: 編集
- en: Edit

read_only:
- ja: 閲覧専用
- en: Read-Only

trial:
- ja: お試し
- en: Trial

subscribed:
- ja: 契約中
- en: Subscribed

proposal:
- ja: 提案
- en: Proposal

confirmed:
- ja: 確定
- en: Confirmed

reviewed:
- ja: レビュー済み
- en: Reviewed

approved:
- ja: 承認済み
- en: Approved

# ============================================================
# 2. DOMAIN LABELS
# ============================================================

domain_labels:

project_name:
- ja: プロジェクト名
- en: Project Name

project_status:
- ja: プロジェクト状態
- en: Project Status

project_manager:
- ja: プロジェクト責任者
- en: Project Manager

task_title:
- ja: タスク名
- en: Task Title

milestone:
- ja: マイルストーン
- en: Milestone

issue:
- ja: 課題
- en: Issue

risk:
- ja: リスク
- en: Risk

progress_percent:
- ja: 進捗率
- en: Progress %

planned_start_date:
- ja: 予定開始日
- en: Planned Start Date

planned_end_date:
- ja: 予定終了日
- en: Planned End Date

actual_start_date:
- ja: 実績開始日
- en: Actual Start Date

actual_end_date:
- ja: 実績終了日
- en: Actual End Date

delay_days:
- ja: 遅延日数
- en: Delay Days

owner:
- ja: 担当者
- en: Owner

due_date:
- ja: 期限
- en: Due Date

status:
- ja: 状態
- en: Status

priority:
- ja: 優先度
- en: Priority

# ============================================================
# 3. CUSTOMER MATERIAL TITLES
# ============================================================

customer_material_titles:

customer_facing_schedule:
- ja: 客先説明用スケジュール
- en: Customer-Facing Schedule

progress_report:
- ja: 進捗報告
- en: Progress Report

issue_list:
- ja: 課題一覧
- en: Issue List

risk_list:
- ja: リスク一覧
- en: Risk List

decision_note:
- ja: 決定事項メモ
- en: Decision Note

follow_up_action_list:
- ja: 宿題一覧
- en: Follow-Up Action List

one_page_summary:
- ja: 1ページ要約
- en: One-Page Summary

# ============================================================
# 4. CUSTOMER MATERIAL SECTION HEADINGS
# ============================================================

customer_material_sections:

project_summary:
- ja: プロジェクト概要
- en: Project Summary

phase_summary:
- ja: 工程概要
- en: Phase Summary

milestone_schedule:
- ja: マイルストーン予定
- en: Milestone Schedule

current_position:
- ja: 現在位置
- en: Current Position

next_major_dates:
- ja: 今後の主要日程
- en: Next Major Dates

reporting_period:
- ja: 報告期間
- en: Reporting Period

completed_work_summary:
- ja: 実施内容
- en: Completed Work Summary

current_progress_summary:
- ja: 現在の進捗
- en: Current Progress Summary

current_issues_and_risks:
- ja: 課題・リスク
- en: Current Issues and Risks

next_planned_work:
- ja: 次回までの予定
- en: Next Planned Work

customer_confirmation_items:
- ja: ご確認事項
- en: Customer Confirmation Items

issue_summary_count:
- ja: 課題件数
- en: Issue Count

risk_summary_count:
- ja: リスク件数
- en: Risk Count

decision_summary:
- ja: 決定事項
- en: Decision Summary

follow_up_summary:
- ja: 宿題
- en: Follow-Up Summary

# ============================================================
# 5. EXPORT HEADER LABELS
# ============================================================

export_header_labels:

project_name:
- ja: プロジェクト名
- en: Project Name

erp_project_code:
- ja: ERP案件番号
- en: ERP Project Code

project_status:
- ja: プロジェクト状態
- en: Project Status

project_manager_name_snapshot:
- ja: プロジェクト責任者
- en: Project Manager

progress_percent:
- ja: 進捗率
- en: Progress %

planned_end_date:
- ja: 予定終了日
- en: Planned End Date

delay_days:
- ja: 遅延日数
- en: Delay Days

health_status:
- ja: 健全性
- en: Health Status

sync_state:
- ja: 同期状態
- en: Sync State

task_title:
- ja: タスク名
- en: Task Title

assignee_name_snapshot:
- ja: 担当者
- en: Assignee

severity:
- ja: 重要度
- en: Severity

risk_score:
- ja: リスクスコア
- en: Risk Score

work_date:
- ja: 作業日
- en: Work Date

hours:
- ja: 時間
- en: Hours

# ============================================================
# 6. ONE PAGE SUMMARY LABELS
# ============================================================

one_page_summary_labels:

service_identity:
- ja: サービス概要
- en: Service Identity

positioning:
- ja: 位置づけ
- en: Positioning

core_functions:
- ja: 主要機能
- en: Core Functions

device_support:
- ja: 対応端末
- en: Device Support

subscription_summary:
- ja: 料金体系
- en: Subscription Summary

read_only_summary:
- ja: 未課金時
- en: Unpaid State

differentiation_summary:
- ja: 特徴
- en: Differentiation

# ============================================================
# PROJECT FLOW MULTILINGUAL FINAL SUMMARY NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact final summary of multilingual design.

fixed_summary:
- multilingual support is first-class
- initial languages are Japanese and English
- smartphone and pc support the same language capability
- UI labels are in multilingual scope
- customer-facing materials are in multilingual scope
- export headers are in multilingual scope
- one-page summary is in multilingual scope
- fallback behavior is defined
- terminology consistency policy is defined
- bilingual label catalog starter set is defined

important_distinctions:
- proposal and confirmed stay distinct in both languages
- reviewed and approved stay distinct in both languages
- read-only wording stays understandable in both languages

# ============================================================
# PROJECT FLOW FINAL HANDOFF INTEGRATED SUMMARY
# ============================================================

status: canonical-handoff
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a final integrated summary of ProjectFlow
for future continuation,
review,
and cross-chat handoff.

# ============================================================
# 1. WHAT PROJECTFLOW IS
# ============================================================

definition:
ProjectFlow is a small-and-easy project execution front application.

positioning:
- not the ERP source of truth
- designed for daily field operation
- designed for customer-usable explanation output
- works with ERP through shared BusinessOS
- supports smartphone and PC with the same functional capability

# ============================================================
# 2. CORE VALUE
# ============================================================

core_value:
- easy daily project operation
- task and milestone visibility
- issue and risk visibility
- time entry and progress visibility
- customer explanation support
- spreadsheet export support
- human-editable report generation
- template and WBS proposal support

# ============================================================
# 3. ERP RELATION
# ============================================================

erp_relation:
- ERP direct call from ProjectFlow is forbidden
- shared BusinessOS is the formal integration boundary
- ProjectFlow owns operational execution visibility
- ERP owns formal project authority fields

source_of_truth_split:

projectflow_owns:
- task execution
- issue and risk handling
- milestone operation
- work log
- memo and comment context
- report drafts
- customer-facing explanation materials

erp_owns:
- formal project code
- customer
- contract amount
- formal budget
- accounting actual cost
- billing and sales
- formal organization references

# ============================================================
# 4. COMMERCIAL MODEL
# ============================================================

commercial_model:
- provision_style: pre-installed application
- subscription_style: monthly-use application
- monthly_price_jpy: 900
- initial_trial_period_days: 7
- unpaid_state: read_only

read_only_summary:
- viewing remains available
- mutation and generation are blocked
- blocked actions remain visible but guarded

# ============================================================
# 5. DEVICE RULE
# ============================================================

device_rule:
- smartphone and pc provide the same functional capability
- only layout and density differences are allowed
- no major feature gap by device is allowed

# ============================================================
# 6. MAJOR FUNCTION DOMAINS
# ============================================================

major_function_domains:
- project management
- task management
- milestone management
- issue and risk management
- time entry
- sync status and retry
- spreadsheet export
- progress report draft generation
- template and WBS proposal
- form intake
- memo and meeting note
- comment history
- light automation
- timeline and gantt
- live dashboard

# ============================================================
# 7. CUSTOMER-FACING STANDARD MATERIALS
# ============================================================

standard_customer_facing_materials:
- customer-facing schedule
- progress report
- issue list
- risk list
- decision note
- follow-up action list

material_rules:
- these are standard from the beginning
- they are not optional afterthought outputs
- human review remains mandatory before external use
- wording remains editable before external use

# ============================================================
# 8. TEMPLATE / WBS PROPOSAL RULE
# ============================================================

template_and_wbs_rule:
- repeated project patterns may be stored as templates
- WBS-based schedule proposals may be generated from template structure
- generated schedules are proposals only until confirmed
- confirmed schedules become operational schedule truth
- customer-facing schedules may be generated from WBS or confirmed schedule context

# ============================================================
# 9. AUTOMATION RULE
# ============================================================

automation_rule:
- ProjectFlow supports lightweight automation
- automation is notification and visibility oriented
- automation is not a heavy workflow engine
- silent business mutation is forbidden

# ============================================================
# 10. MULTILINGUAL RULE
# ============================================================

multilingual_rule:
- multilingual support is first-class
- initial languages are Japanese and English
- UI, customer-facing materials, export headers, and one-page summary are in scope
- smartphone and pc support the same language capability
- one output should keep one locale consistently
- fallback behavior is defined

# ============================================================
# 11. IMPLEMENTATION PREP STATUS
# ============================================================

implementation_prep_status:
- architecture is broadly fixed
- screen detail is broadly fixed
- wireframe direction is broadly fixed
- API boundary design is broadly fixed
- physical DB and pre-DDL notes exist
- module split and use case grouping notes exist
- migration split plan note exists
- implementation has not started

# ============================================================
# 12. OPEN ITEMS
# ============================================================

open_items:
- final Android module naming
- DI framework choice
- offline/cache strategy
- business-day rule sophistication
- memo search scope
- automation log model depth
- final DB hardening review with DB owner

# ============================================================
# 13. PHASE BOUNDARY
# ============================================================

current_phase:
design_only

not_started_yet:
- migration execution
- Android coding
- production integration
- operational rollout

# ============================================================
# 14. RECOMMENDED NEXT STEP
# ============================================================

recommended_next_step:
Use this design set as the handoff base,
then continue with either:
- final design review and wording cleanup
or
- implementation-start planning in a separate phase

# ============================================================
# PROJECT FLOW PRE CLOSURE REVIEW NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines pre-closure review focus before treating ProjectFlow design as handoff-stable.

pre_closure_review_targets:
- positioning consistency
- source-of-truth consistency
- shared BusinessOS boundary consistency
- customer-facing output consistency
- multilingual consistency
- smartphone and pc parity consistency
- subscription and read-only consistency
- proposal/draft/confirmed state consistency

review_questions:
- Is ProjectFlow consistently described as a field operation front?
- Is ERP direct call consistently forbidden?
- Are customer-facing materials consistently treated as standard outputs?
- Are multilingual rules consistently applied to UI and outputs?
- Are proposal and confirmed states clearly separated?
- Are draft and externally reviewed outputs clearly separated?
- Are read-only rules visible and consistent across screens?

expected_result:
ProjectFlow design should become easier to hand off,
review,
and continue in a later phase.

# ============================================================
# PROJECT FLOW CANONICAL CLOSURE CHECKLIST
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the final checklist before considering ProjectFlow design canonically stabilized.

closure_checklist:

root_and_structure:
- [ ] root files exist
- [ ] layer index files exist
- [ ] layer overview or equivalent summary files exist where intended
- [ ] integrated file rebuild works

positioning_and_boundary:
- [ ] ProjectFlow identity is stable
- [ ] ERP boundary is stable
- [ ] shared BusinessOS mediation is stable
- [ ] source-of-truth split is stable

commercial_and_device:
- [ ] monthly-use model is stable
- [ ] 900 JPY pricing is stable
- [ ] 7 day trial is stable
- [ ] unpaid read-only is stable
- [ ] smartphone and pc parity is stable

functional_scope:
- [ ] core domains are covered
- [ ] additive domains are covered
- [ ] customer-facing materials are covered
- [ ] multilingual scope is covered

implementation_prep:
- [ ] module split exists
- [ ] API exact payload notes exist
- [ ] DB physical/pre-DDL notes exist
- [ ] migration split note exists
- [ ] wireframe notes exist

meta_and_handoff:
- [ ] handoff summary exists
- [ ] fixed/open summary exists
- [ ] phase boundary note exists
- [ ] final review sheet exists

# ============================================================
# PROJECT FLOW CLOSURE SUMMARY TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for future closure summary once the user decides ProjectFlow design is sufficiently stabilized.

template_fields:
- closure_result
- closure_date
- closure_scope
- stable_positioning_summary
- stable_boundary_summary
- stable_output_summary
- stable_multilingual_summary
- remaining_open_items
- next_phase_recommendation

note:
This is a template only.
It does not declare closure by itself.

# ============================================================
# PROJECT FLOW NEXT PHASE DECISION NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Clarifies likely next-phase choices after current design-only work.

next_phase_options:
- further design refinement only
- closure review and stabilization
- implementation-start planning in a separate phase
- common component extraction in a separate chat
- customer-facing wording polish
- multilingual label expansion

current_recommendation:
Do not treat this as implementation start yet.
Use current design set as stable input for either:
- final closure review
or
- separately governed implementation-start planning.

# ============================================================
# PROJECT FLOW DEVICE SUPPORT SUMMARY NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- ProjectFlow supports iPhone
- ProjectFlow supports Android
- ProjectFlow supports tablet
- ProjectFlow supports PC
- all supported device types keep the same functional capability
- only layout and interaction optimization differ by device type

# ============================================================
# PROJECT FLOW DEVICE PARITY FINAL SUMMARY NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact final summary of explicit device support.

fixed_summary:
- ProjectFlow supports iPhone
- ProjectFlow supports Android
- ProjectFlow supports tablet
- ProjectFlow supports PC
- same functional capability applies across all supported device types
- only layout,
  density,
  and interaction optimization differ
- multilingual support applies across all supported device types
- read-only behavior applies across all supported device types
- customer-facing materials are accessible across all supported device types

# ============================================================
# PROJECT FLOW CROSS REFERENCE MATRIX NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact cross-reference matrix
between features,
screens,
outputs,
and supported device types.

# ============================================================
# 1. FEATURE TO SCREEN MATRIX
# ============================================================

feature_to_screen_matrix:

project_management:
- dashboard
- project_list
- project_detail

task_management:
- task_list
- task_detail

milestone_management:
- milestone
- timeline
- gantt

issue_risk_management:
- issue_risk
- customer_explanation_material

time_entry:
- time_entry
- workload

sync_and_retry:
- sync_status
- notification_center

spreadsheet_export:
- export
- customer_explanation_material

progress_report:
- report_editor
- customer_explanation_material

form_intake:
- form_intake

memo_and_decision_note:
- project_memo
- customer_explanation_material

comment_history:
- comment_history

light_automation:
- automation_rule_settings
- notification_center
- dashboard

template_and_wbs_proposal:
- template_management
- template_task_editor
- wbs_proposal_wizard
- schedule_proposal_preview

timeline_and_gantt:
- timeline
- gantt
- schedule_proposal_preview

one_page_summary:
- one_page_summary

# ============================================================
# 2. FEATURE TO OUTPUT MATRIX
# ============================================================

feature_to_output_matrix:

project_schedule_data:
- customer_facing_schedule
- one_page_summary

progress_data:
- progress_report
- one_page_summary

issue_data:
- issue_list

risk_data:
- risk_list

decision_note_data:
- decision_note

follow_up_data:
- follow_up_action_list

template_and_wbs_data:
- customer_facing_schedule
- progress_report when needed
- one_page_summary when needed

# ============================================================
# 3. OUTPUT TO DEVICE MATRIX
# ============================================================

output_to_device_matrix:

customer_facing_schedule:
- iphone
- android
- tablet
- pc

progress_report:
- iphone
- android
- tablet
- pc

issue_list:
- iphone
- android
- tablet
- pc

risk_list:
- iphone
- android
- tablet
- pc

decision_note:
- iphone
- android
- tablet
- pc

follow_up_action_list:
- iphone
- android
- tablet
- pc

one_page_summary:
- iphone
- android
- tablet
- pc

# ============================================================
# 4. CROSS-CUTTING RULE MATRIX
# ============================================================

cross_cutting_rules:

multilingual_scope_applies_to:
- UI
- customer-facing materials
- export headers
- one-page summary

read_only_scope_applies_to:
- all supported device types
- all major screens
- all generation actions
- all export actions

review_required_scope_applies_to:
- customer-facing schedule
- progress report
- issue list
- risk list
- decision note
- follow_up_action_list
- one-page summary when externally used

# ============================================================
# PROJECT FLOW DESIGN STABILIZATION REPORT
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Summarizes whether ProjectFlow design is broadly stabilized
for handoff and later continuation.

stabilization_scope:
- identity and positioning
- ERP boundary and source of truth
- commercial model
- device support
- multilingual support
- core features
- additive features
- customer-facing materials
- implementation-prep coverage

stabilization_summary:
- ProjectFlow identity is broadly stabilized
- ERP boundary is broadly stabilized
- customer-facing material scope is broadly stabilized
- device support scope is broadly stabilized
- multilingual initial scope is broadly stabilized
- implementation has not started
- some implementation-detail choices remain open by design

broadly_stable_areas:
- field-operation-front positioning
- shared BusinessOS mediated ERP relation
- monthly-use pricing and read-only policy
- iPhone / Android / tablet / PC same-capability rule
- standard six customer-facing materials
- template and WBS proposal direction
- multilingual initial scope of Japanese and English

intentionally_open_areas:
- exact Android module naming
- DI framework choice
- offline/cache strategy
- advanced business-day rule sophistication
- deeper DB hardening decisions
- later language expansion beyond Japanese and English

recommended_use:
This design set is suitable as:
- cross-chat handoff base
- implementation-start planning input in a separate phase
- customer/internal explanation reference

# ============================================================
# PROJECT FLOW PHASE GATE NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the current phase-gate interpretation.

current_gate:
design_stabilized_but_not_implementation_started

meaning:
- design is broad and handoff-capable
- implementation preparation notes exist
- implementation execution has not started
- DB execution has not started
- application coding has not started

next_gate_options:
- closure_review_gate
- wording_cleanup_gate
- implementation_start_planning_gate
- common_component_registration_gate in separate chat

# ============================================================
# PROJECT FLOW READY FOR NEXT CHAT NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides short carry-forward guidance for the next chat.

ready_points:
- identity is fixed
- ERP boundary is fixed
- commercial model is fixed
- device scope is fixed
- multilingual initial scope is fixed
- customer-facing material set is fixed
- implementation-prep documentation exists

next_chat_should_not_reopen_without_reason:
- field-operation-front positioning
- shared BusinessOS ERP mediation
- 900 JPY pricing
- 7 day trial
- unpaid read-only behavior
- iPhone / Android / tablet / PC support
- Japanese and English initial scope
- six standard customer-facing materials

next_chat_may_focus_on:
- wording polish
- implementation-start planning
- DB-owner review alignment
- common component registration in separate chat

# ============================================================
# PROJECT FLOW FINAL CANONICAL STATUS NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact canonical-status note.

canonical_status_summary:
- ProjectFlow is not declared implementation-complete
- ProjectFlow is broadly design-stable
- ProjectFlow is handoff-capable
- ProjectFlow is suitable for later implementation planning
- ProjectFlow still contains explicit open items by design

important_boundary:
Design stability does not mean implementation start.

# ============================================================
# PROJECT FLOW PRE CLOSURE SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a concise pre-closure summary
before any explicit closure decision.

pre_closure_summary:
- ProjectFlow identity is broadly fixed
- ERP boundary is broadly fixed
- customer-facing output set is broadly fixed
- multilingual initial scope is broadly fixed
- iPhone / Android / tablet / PC scope is broadly fixed
- implementation-prep documentation exists
- implementation has not started

stable_highlights:
- field-operation-front positioning
- shared BusinessOS mediated ERP relation
- 900 JPY monthly-use model
- 7 day trial
- unpaid read-only mode
- standard six customer-facing materials
- template and WBS proposal support
- light automation support
- Japanese and English initial language scope

still_open_but_intentional:
- final Android module naming
- DI framework choice
- offline/cache strategy
- advanced business-day rule sophistication
- DB hardening detail review

# ============================================================
# PROJECT FLOW CLOSURE DECISION TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for a future closure decision.

decision_template:
- decision_result: pass_or_hold
- decision_date:
- closure_scope:
- stable_items_confirmed:
- intentionally_open_items_confirmed:
- implementation_not_started_confirmed:
- next_phase_selected:

pass_condition_examples:
- major contradictions are not found
- major scope gaps are not found
- handoff summary is sufficient
- next chat can continue without reopening core identity

hold_condition_examples:
- unresolved contradictions remain
- major missing areas remain
- key boundary wording is still unstable

# ============================================================
# PROJECT FLOW MINIMAL NEXT PHASE OPTIONS
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines minimal next-phase options after current design work.

minimal_next_phase_options:
- stop at design-stable handoff
- run closure review only
- move to wording cleanup only
- move to implementation-start planning in separate phase
- move to DB-owner review in separate phase
- move to common component registration in separate chat

guidance:
Do not mix implementation execution
into the current design-only phase without an explicit phase change.

# ============================================================
# PROJECT FLOW CLOSURE REVIEW EXECUTION SHEET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a fillable execution sheet
for running the final closure review.

# ============================================================
# 1. REVIEW SESSION
# ============================================================

review_session_fields:
- review_date
- reviewer
- scope
- overall_result: pass_or_hold

# ============================================================
# 2. POSITIONING RESULT
# ============================================================

positioning_result:
- field_operation_front_confirmed: yes_no
- ERP_direct_call_forbidden_confirmed: yes_no
- shared_BusinessOS_boundary_confirmed: yes_no
- source_of_truth_split_confirmed: yes_no
- notes

# ============================================================
# 3. COMMERCIAL / DEVICE RESULT
# ============================================================

commercial_device_result:
- monthly_900_confirmed: yes_no
- trial_7_days_confirmed: yes_no
- unpaid_read_only_confirmed: yes_no
- iphone_confirmed: yes_no
- android_confirmed: yes_no
- tablet_confirmed: yes_no
- pc_confirmed: yes_no
- same_functional_capability_confirmed: yes_no
- notes

# ============================================================
# 4. FUNCTION SCOPE RESULT
# ============================================================

function_scope_result:
- core_domains_confirmed: yes_no
- additive_domains_confirmed: yes_no
- customer_materials_confirmed: yes_no
- multilingual_scope_confirmed: yes_no
- notes

# ============================================================
# 5. OUTPUT / STATE RESULT
# ============================================================

output_state_result:
- six_standard_materials_confirmed: yes_no
- proposal_vs_confirmed_confirmed: yes_no
- draft_vs_reviewed_output_confirmed: yes_no
- external_review_required_confirmed: yes_no
- notes

# ============================================================
# 6. IMPLEMENTATION PREP RESULT
# ============================================================

implementation_prep_result:
- module_split_exists: yes_no
- api_boundary_exists: yes_no
- db_notes_exist: yes_no
- migration_split_note_exists: yes_no
- wireframe_notes_exist: yes_no
- implementation_not_started_confirmed: yes_no
- notes

# ============================================================
# 7. OPEN ITEMS RESULT
# ============================================================

open_items_result:
- open_items_are_explicit: yes_no
- open_items_do_not_break_handoff: yes_no
- notes

# ============================================================
# 8. FINAL DECISION
# ============================================================

final_decision_fields:
- closure_recommendation: pass_or_hold
- reason_summary
- remaining_gaps
- next_phase_option

# ============================================================
# PROJECT FLOW CLOSURE READY SNAPSHOT
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a short snapshot for quick closure-readiness checking.

closure_ready_snapshot:
- identity_and_positioning: broadly_ready
- ERP_boundary: broadly_ready
- commercial_model: broadly_ready
- device_scope: broadly_ready
- multilingual_initial_scope: broadly_ready
- customer_material_scope: broadly_ready
- implementation_prep_scope: broadly_ready
- implementation_execution: not_started

interpretation:
ProjectFlow is broadly ready for closure review,
but closure is not declared automatically by this note.

# ============================================================
# PROJECT FLOW CLOSURE RESULT RECORD TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording the final closure result
after closure review is executed.

record_fields:
- closure_result: pass_or_hold
- closure_date:
- closure_scope:
- reviewer:
- identity_result:
- boundary_result:
- commercial_result:
- device_result:
- multilingual_result:
- customer_material_result:
- implementation_prep_result:
- remaining_open_items:
- next_phase_decision:
- summary_comment:

pass_example_meaning:
ProjectFlow is broad-design-stable,
handoff-capable,
and suitable for later phase continuation.

hold_example_meaning:
ProjectFlow still needs additional design stabilization
before closure is declared.

# ============================================================
# PROJECT FLOW CLOSURE RESULT SUMMARY TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Short-form closure result template for quick reference.

summary_fields:
- result
- date
- scope
- key_stable_points
- key_open_points
- recommended_next_phase

# ============================================================
# PROJECT FLOW HOLD REASON TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for documenting why closure is held.

hold_reason_fields:
- unresolved_contradictions
- missing_scope_areas
- unclear_boundary_areas
- wording_instability
- recommended_fix_focus
- re_review_condition

# ============================================================
# PROJECT FLOW CLOSURE PASS GUIDE NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a quick guide for deciding PASS at closure review.

pass_should_mean:
- ProjectFlow is broad-design-stable
- ProjectFlow is handoff-capable
- core identity does not need reopening
- ERP boundary does not need reopening
- customer-facing material scope does not need reopening
- commercial/device/multilingual core rules do not need reopening
- implementation has not started,
  but implementation-prep inputs are sufficient

pass_is_valid_even_if_open_items_exist_when:
- open items are explicit
- open items do not break handoff
- open items do not create major contradictions
- open items are suitable for later phase handling

recommended_pass_summary_shape:
- broad-design-stable
- handoff-capable
- suitable for later implementation-planning phase

# ============================================================
# PROJECT FLOW CLOSURE HOLD GUIDE NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a quick guide for deciding HOLD at closure review.

hold_should_mean:
- a major contradiction remains
- a major boundary is still unclear
- a major scope area is missing
- customer-facing output rules are still unstable
- device parity wording is still unstable
- multilingual scope is still unstable
- handoff would reopen too many core questions

recommended_hold_focus:
- resolve contradiction first
- fill missing scope second
- restabilize wording third
- rerun closure review after fixes

# ============================================================
# PROJECT FLOW CLOSURE DECISION QUICK NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a quick closure decision shortcut.

quick_decision_rule:
If ProjectFlow is:
- broad-design-stable
- handoff-capable
- not contradictory in core identity and boundaries
- explicit about open items
then PASS is reasonable.

If ProjectFlow still:
- reopens core identity,
- reopens ERP boundary,
- reopens customer-facing output scope,
- or has major missing areas,
then HOLD is reasonable.

# ============================================================
# PROJECT FLOW CURRENT CLOSURE CANDIDATE NOTE
# ============================================================

status: canonical-candidate
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Records the current closure candidate interpretation
without declaring formal closure automatically.

current_candidate_view:
ProjectFlow is currently a strong PASS candidate
for design closure review.

candidate_reason_summary:
- core identity is broadly stable
- ERP boundary is broadly stable
- customer-facing output scope is broadly stable
- commercial model is broadly stable
- device scope is broadly stable
- multilingual initial scope is broadly stable
- implementation-prep notes are broadly present
- implementation has not started

important_caution:
This note is not the formal closure result.
Formal closure still depends on explicit human review and decision.

remaining_open_items_that_do_not_block_candidate_status:
- exact Android module naming
- DI framework choice
- offline/cache strategy
- advanced business-day rule sophistication
- DB hardening detail review

# ============================================================
# PROJECT FLOW PASS CANDIDATE SUMMARY TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for writing a short pass-candidate summary.

template_fields:
- candidate_status
- candidate_reason_short
- major_stable_points
- non_blocking_open_items
- final_review_needed

# ============================================================
# PROJECT FLOW CLOSURE DECISION
# ============================================================

status: canonical-closed
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Records the formal closure decision
for the current ProjectFlow design phase.

# ============================================================
# 1. DECISION RESULT
# ============================================================

decision_result:
PASS

decision_scope:
ProjectFlow design phase closure

decision_summary:
ProjectFlow is judged broad-design-stable,
handoff-capable,
and suitable for later implementation-planning work
in a separate phase.

# ============================================================
# 2. PASS REASONS
# ============================================================

pass_reasons:
- core identity is stable
- field-operation-front positioning is stable
- ERP direct call prohibition is stable
- shared BusinessOS mediated boundary is stable
- commercial model is stable
- 900 JPY monthly-use rule is stable
- 7 day trial rule is stable
- unpaid read-only rule is stable
- customer-facing standard materials are stable
- template and WBS proposal direction is stable
- multilingual initial scope is stable
- iPhone / Android / tablet / PC scope is stable
- implementation-prep inputs are broadly present

# ============================================================
# 3. NON-BLOCKING OPEN ITEMS
# ============================================================

non_blocking_open_items:
- exact Android module naming
- DI framework choice
- offline/cache strategy
- advanced business-day rule sophistication
- DB hardening detail review
- later language expansion beyond Japanese and English

interpretation:
These remain open,
but they do not block design-phase closure.

# ============================================================
# 4. IMPORTANT BOUNDARY
# ============================================================

important_boundary:
This closure decision applies to the current design phase only.

not_included_in_this_closure:
- migration execution
- Android coding start
- production integration execution
- operational rollout

# ============================================================
# 5. NEXT PHASE GUIDANCE
# ============================================================

recommended_next_phase:
Use the current ProjectFlow design set as a stable base for one of the following:
- implementation-start planning in a separate phase
- wording cleanup in a separate phase
- DB owner review in a separate phase
- common component registration in a separate chat

# ============================================================
# 6. FINAL NOTE
# ============================================================

final_note:
ProjectFlow is closed as a design-phase canonical set,
not as an implementation-complete product.

# ============================================================
# PROJECT FLOW NEXT PHASE START NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the clean starting point for the next phase
after design-phase closure.

current_state:
- design phase is closed
- integrated canonical is rebuilt
- implementation has not started
- open items remain explicitly listed

safe_next_phase_entry_options:
- implementation-start planning
- wording cleanup
- DB owner review alignment
- multilingual wording expansion
- common component registration in separate chat

recommended_reopen_order:
1. confirm next phase scope
2. confirm whether work is still design-only or implementation-planning
3. use closure decision and final handoff summary as entry documents
4. do not reopen stable identity and boundary items without reason

should_not_reopen_without_reason:
- field-operation-front positioning
- shared BusinessOS ERP mediation
- 900 JPY monthly-use model
- 7 day trial
- unpaid read-only rule
- iPhone / Android / tablet / PC support
- Japanese and English initial multilingual scope
- six standard customer-facing materials

entry_documents:
- 0900041_PROJECT_FLOW_CLOSURE_DECISION.md
- 0900016_PROJECT_FLOW_FINAL_HANDOFF_INTEGRATED_SUMMARY.md
- 0900007_PROJECT_FLOW_FIXED_AND_OPEN_SUMMARY.md
- 1200031_PROJECT_FLOW_IMPLEMENTATION_READINESS_MATRIX.md

# ============================================================
# PROJECT FLOW RESTART HANDOFF NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a minimal restart handoff note
for continuing ProjectFlow in another chat.

restart_summary:
- ProjectFlow design phase is closed
- integrated canonical has been rebuilt
- implementation has not started
- stable items should not be reopened without reason
- explicit open items remain available for later phase handling

stable_items_not_to_reopen_without_reason:
- field-operation-front positioning
- shared BusinessOS mediated ERP boundary
- source-of-truth split
- 900 JPY monthly-use model
- 7 day trial
- unpaid read-only rule
- iPhone / Android / tablet / PC support
- Japanese and English initial multilingual scope
- six standard customer-facing materials
- template and WBS proposal direction

explicit_open_items_for_later_phase:
- exact Android module naming
- DI framework choice
- offline/cache strategy
- advanced business-day rule sophistication
- DB hardening detail review
- later language expansion beyond Japanese and English

restart_priority_candidates:
- implementation-start planning
- wording cleanup
- DB owner review
- multilingual wording expansion
- common component registration in separate chat

recommended_restart_documents:
- 0900041_PROJECT_FLOW_CLOSURE_DECISION.md
- 0900042_PROJECT_FLOW_NEXT_PHASE_START_NOTE.md
- 0900016_PROJECT_FLOW_FINAL_HANDOFF_INTEGRATED_SUMMARY.md
- 0900007_PROJECT_FLOW_FIXED_AND_OPEN_SUMMARY.md
- 1200031_PROJECT_FLOW_IMPLEMENTATION_READINESS_MATRIX.md

restart_rule:
Continue from stable design assumptions first.
Do not reopen core identity or boundary items
unless a clear reason is found.

# ============================================================
# PROJECT FLOW RESTART SHORT REFERENCE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a short reference for quick restart.

short_reference:
- status: design-phase closed
- current_use: handoff-capable
- implementation_started: no
- pricing: 900 JPY monthly
- trial: 7 days
- unpaid_state: read-only
- devices: iPhone / Android / tablet / PC
- initial_languages: Japanese / English
- customer_materials: 6 standard outputs

# ============================================================
# PROJECT FLOW CANONICAL REFERENCE SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact summary of external canonical references
that ProjectFlow should stay aligned with.

reference_summary:
- foundation canonical exists above ProjectFlow
- civilization system rules exist above ProjectFlow
- ERP design bible exists as ERP-side source reference
- ERP enterprise scope exists as ERP-side scope reference
- application common component canonical set exists outside ProjectFlow
- BusinessOS integrated canonical remains critical for mediation boundary

important_local_rule:
ProjectFlow may reference these sources for alignment,
but should not silently duplicate or replace their ownership.

# ============================================================
# PROJECT FLOW CANONICAL PRIORITY SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- ProjectFlow does not sit above foundation rules
- ProjectFlow does not sit above ERP formal truth
- ProjectFlow does not bypass BusinessOS mediation
- ProjectFlow does not own application common component canon by itself
- ProjectFlow owns only its application-local additive scope

# ============================================================
# PROJECT FLOW BUSINESSOS DEPENDENCY SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- ProjectFlow depends on BusinessOS for ERP-facing mediation
- ProjectFlow does not depend on BusinessOS for most local UI and local operational logic
- sync boundary and ERP mediation are the main BusinessOS dependency points
- local operational features remain application-owned

# ============================================================
# PROJECT FLOW ERP DEPENDENCY SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- ProjectFlow depends on ERP for formal ERP-owned truth only
- ProjectFlow does not depend on ERP for most local operational UX
- ERP access is always mediated through BusinessOS
- local customer-facing outputs remain ProjectFlow-owned composition

# ============================================================
# PROJECT FLOW COMMON COMPONENT DEPENDENCY SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- ProjectFlow should consume shared common components where promoted elsewhere
- ProjectFlow should keep project-specific behavior local
- ProjectFlow should not locally claim ownership of shared component canon
- local additive behavior remains application-scoped until separately promoted

# ============================================================
# PROJECT FLOW LOCAL OWNERSHIP SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- ProjectFlow owns project-execution-front behavior
- ProjectFlow owns customer-facing material composition
- ProjectFlow owns template and WBS proposal behavior
- ProjectFlow owns local memo/comment usage
- ProjectFlow does not own ERP formal truth
- ProjectFlow does not own shared common component canon
- ProjectFlow does not own BusinessOS mediation behavior

# ============================================================
# PROJECT FLOW DATA OWNERSHIP SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- execution data is primarily ProjectFlow-owned
- formal ERP reference values remain ERP-owned
- sync state is mediated boundary context,
  not ERP or ProjectFlow truth replacement
- common components do not own business fields
- localization artifacts do not own business fields

# ============================================================
# PROJECT FLOW EDITABILITY SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- ProjectFlow local execution fields are generally editable
- ERP formal reference fields are generally reference-only
- derived schedule and summary values are generally read-only
- mediated sync fields are status-only
- generated drafts and proposals become editable through controlled adjustment flows

# ============================================================
# PROJECT FLOW ACTION AUTHORITY SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- major views remain viewable
- mutation and generation actions are blocked in read-only mode
- ERP-facing requests are mediated boundary actions
- customer-facing exports remain review-aware
- device type does not change action authority

# ============================================================
# PROJECT FLOW STATE TRANSITION SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- execution state is distinct from review state
- proposal state is distinct from confirmed state
- sync state is distinct from business execution state
- entitlement state is distinct from business item state
- external-use export does not replace review or approval semantics

# ============================================================
# PROJECT FLOW AUDITABILITY SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- key operational changes should remain traceable
- proposal adjustment and confirmation should remain distinguishable
- review progression and export execution should remain distinguishable
- sync retry and sync failure context should remain inspectable

# ============================================================
# PROJECT FLOW UPLOADED REFERENCE SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact summary of uploaded references most relevant to ProjectFlow.

highest_relevance_uploaded_references:
- 000000_FOUNDATION_CANONICAL.md
- 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
- BUSINESS_OS_INTEGRATED_CANONICAL.md
- ERP_DESIGN_BIBLE_FULL.md
- ERP_ENTERPRISE_SCOPE_v1.md
- erp_schema_table_column_summary.txt
- erp_schema_table_column_full.txt

secondary_or_contextual_uploaded_references:
- 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md
- PERSONA_OS_INTEGRATED_CANONICAL.md
- 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
- ERP_SYSTEM_FULL_DUMP.txt
- ERP_AUDIT_DUMP.txt
- ERP_GOVERNANCE_DUMP.txt
- ERP_FOUNDATION_DUMP.txt

low_priority_for_current_scope:
- GAME_OS_INTEGRATED_CANONICAL.md
- STREAMING_OS_INTEGRATED_CANONICAL.md
- persona_schema_table_column_summary.txt
- persona_schema_table_column_full.txt

# ============================================================
# PROJECT FLOW REFERENCE PRIORITY SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- foundation questions should start from FOUNDATION_CANONICAL
- BusinessOS questions should start from BUSINESS_OS_INTEGRATED_CANONICAL
- ERP truth questions should start from ERP_DESIGN_BIBLE_FULL and ERP_ENTERPRISE_SCOPE_v1
- schema confirmation should start from schema summaries before full dumps
- ProjectFlow-local behavior questions should start from ProjectFlow local ownership notes

# ============================================================
# PROJECT FLOW QUESTION TO REFERENCE INDEX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a quick index from common questions
to the most relevant reference documents.

question_to_reference_index:

what_is_projectflow:
- 0900016_PROJECT_FLOW_FINAL_HANDOFF_INTEGRATED_SUMMARY.md
- 0900041_PROJECT_FLOW_CLOSURE_DECISION.md

is_projectflow_the_erp_source_of_truth:
- 0900016_PROJECT_FLOW_FINAL_HANDOFF_INTEGRATED_SUMMARY.md
- 0200026_PROJECT_FLOW_CANONICAL_PRIORITY_ARCHITECTURE.md
- ERP_DESIGN_BIBLE_FULL.md

how_does_projectflow_connect_to_erp:
- 0200027_PROJECT_FLOW_BUSINESSOS_DEPENDENCY_ARCHITECTURE.md
- 0200028_PROJECT_FLOW_ERP_DEPENDENCY_ARCHITECTURE.md
- BUSINESS_OS_INTEGRATED_CANONICAL.md
- ERP_DESIGN_BIBLE_FULL.md

what_does_projectflow_locally_own:
- 0200030_PROJECT_FLOW_LOCAL_OWNERSHIP_ARCHITECTURE.md
- 0900050_PROJECT_FLOW_LOCAL_OWNERSHIP_SUMMARY.md

which_fields_are_editable:
- 0300022_PROJECT_FLOW_EDITABILITY_MATRIX_NOTE.md
- 1200053_PROJECT_FLOW_EDITABILITY_IMPLEMENTATION_NOTE.md

which_fields_are_erp_owned:
- 0300021_PROJECT_FLOW_DATA_OWNERSHIP_MATRIX_NOTE.md
- 0200028_PROJECT_FLOW_ERP_DEPENDENCY_ARCHITECTURE.md
- ERP_ENTERPRISE_SCOPE_v1.md

which_actions_are_blocked_in_read_only:
- 0300023_PROJECT_FLOW_ACTION_AUTHORITY_MATRIX_NOTE.md
- 0400008_PROJECT_FLOW_SUBSCRIPTION_RUNTIME.md
- 0800010_PROJECT_FLOW_BLOCKED_ACTION_POLICY.md

how_do_report_and_schedule_states_work:
- 0300024_PROJECT_FLOW_STATE_TRANSITION_MATRIX_NOTE.md
- 0500027_PROJECT_FLOW_REVIEW_AND_CONFIRMATION_FLOW.md

what_customer_facing_outputs_exist:
- 0200019_PROJECT_FLOW_CUSTOMER_EXPLANATION_MATERIAL_ARCHITECTURE.md
- 0900034_PROJECT_FLOW_CUSTOMER_EXPLANATION_MATERIAL_SCREEN_DETAIL.md
- 0900016_PROJECT_FLOW_FINAL_HANDOFF_INTEGRATED_SUMMARY.md

how_does_multilingual_support_work:
- 0100007_PROJECT_FLOW_MULTILINGUAL_DEFINITION.md
- 0100008_PROJECT_FLOW_INITIAL_LANGUAGE_SCOPE_DEFINITION.md
- 0900014_PROJECT_FLOW_BILINGUAL_LABEL_CATALOG_NOTE.md

which_devices_are_supported:
- 0100009_PROJECT_FLOW_DEVICE_SUPPORT_DEFINITION.md
- 0200024_PROJECT_FLOW_DEVICE_PARITY_ALIGNMENT_ARCHITECTURE.md
- 0900022_PROJECT_FLOW_DEVICE_PARITY_FINAL_SUMMARY_NOTE.md

what_common_components_should_be_shared:
- 0200029_PROJECT_FLOW_COMMON_COMPONENT_DEPENDENCY_ARCHITECTURE.md
- 0600011_PROJECT_FLOW_COMMON_COMPONENT_USAGE_LIST.md

what_uploaded_canonicals_should_i_check_first:
- 0600013_PROJECT_FLOW_REFERENCE_PRIORITY_BY_CONCERN_NOTE.md
- 0900057_PROJECT_FLOW_REFERENCE_PRIORITY_SUMMARY.md

is_projectflow_closed_as_design:
- 0900041_PROJECT_FLOW_CLOSURE_DECISION.md
- 0900024_PROJECT_FLOW_DESIGN_STABILIZATION_REPORT.md
- 0900027_PROJECT_FLOW_FINAL_CANONICAL_STATUS_NOTE.md

# ============================================================
# PROJECT FLOW UPLOADED FILE REGISTER NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Registers uploaded reference files by actual filename
for ProjectFlow alignment and lookup.

uploaded_file_register:

high_relevance:
- 000000_FOUNDATION_CANONICAL.md
- 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
- BUSINESS_OS_INTEGRATED_CANONICAL.md
- ERP_DESIGN_BIBLE_FULL.md
- ERP_ENTERPRISE_SCOPE_v1.md
- erp_schema_table_column_summary.txt
- erp_schema_table_column_full.txt

contextual_relevance:
- 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md
- PERSONA_OS_INTEGRATED_CANONICAL.md
- 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
- ERP_SYSTEM_FULL_DUMP.txt
- ERP_AUDIT_DUMP.txt
- ERP_GOVERNANCE_DUMP.txt
- ERP_FOUNDATION_DUMP.txt

low_priority_for_current_projectflow_scope:
- STREAMING_OS_INTEGRATED_CANONICAL.md
- persona_schema_table_column_summary.txt
- persona_schema_table_column_full.txt

note:
This register records filenames only.
Ownership and priority interpretation remain defined
in the reference priority and canonical priority notes.

# ============================================================
# PROJECT FLOW FILE TO CONCERN INDEX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps concrete uploaded filenames to concern areas.

file_to_concern_index:

000000_FOUNDATION_CANONICAL.md:
- foundation rules
- upper canonical priority
- system-wide boundary interpretation

9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md:
- civilization-wide rule interpretation
- system consistency check

BUSINESS_OS_INTEGRATED_CANONICAL.md:
- BusinessOS mediation
- integration boundary interpretation
- mediated dependency interpretation

ERP_DESIGN_BIBLE_FULL.md:
- ERP truth ownership
- ERP-side architecture interpretation
- ERP relation checks

ERP_ENTERPRISE_SCOPE_v1.md:
- ERP enterprise truth scope
- ERP-owned field scope checks

erp_schema_table_column_summary.txt:
- quick field existence check
- implementation-prep schema confirmation

erp_schema_table_column_full.txt:
- deep field inspection
- implementation-prep schema detail

ERP_SYSTEM_FULL_DUMP.txt:
- deep ERP-side reference inspection when summaries are insufficient

ERP_AUDIT_DUMP.txt:
- ERP-side audit reference context

ERP_GOVERNANCE_DUMP.txt:
- ERP-side governance reference context

ERP_FOUNDATION_DUMP.txt:
- ERP foundation-side reference context

003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md:
- wider OS alignment context

PERSONA_OS_INTEGRATED_CANONICAL.md:
- persona-side context only if scope expands

900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md:
- portal-side reflection and navigation context

STREAMING_OS_INTEGRATED_CANONICAL.md:
- generally low-priority for current ProjectFlow scope

persona_schema_table_column_summary.txt:
- persona schema quick check only if scope expands

persona_schema_table_column_full.txt:
- persona schema deep check only if scope expands

# ============================================================
# PROJECT FLOW REFERENCE UPDATE RULES
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines practical update rules for external reference usage.

update_rules:
- when a new external canonical file is uploaded,
  ProjectFlow should decide whether it replaces,
  supplements,
  or is irrelevant to the current scope
- when a filename changes,
  the uploaded file register should be updated explicitly
- when a higher-priority canonical changes,
  ProjectFlow local alignment notes should be reviewed
- when only dumps or schema summaries change,
  ProjectFlow local ownership rules should not be rewritten automatically

review_triggers:
- BusinessOS integrated canonical replaced
- ERP design bible replaced
- ERP enterprise scope replaced
- foundation canonical replaced
- schema summary replaced

# ============================================================
# PROJECT FLOW REFERENCE CHANGE LOG TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording reference-file changes that affect ProjectFlow interpretation.

template_fields:
- changed_reference_filename
- change_type: replaced_or_added_or_removed
- concern_area
- local_notes_reviewed: yes_no
- priority_impact: none_low_medium_high
- followup_needed

# ============================================================
# PROJECT FLOW REFERENCE CONFLICT RULES
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides practical conflict-resolution rules.

conflict_rules:
- if ProjectFlow local wording conflicts with foundation,
  foundation wins
- if ProjectFlow local wording conflicts with ERP-owned truth,
  ERP-side canonical wins
- if ProjectFlow local wording conflicts with BusinessOS mediation,
  BusinessOS mediation wins
- if schema summary and schema full detail differ,
  inspect schema full detail first,
  then re-check higher ownership interpretation
- if a dump suggests something that canonical docs do not support,
  do not treat the dump as ownership replacement automatically

local_followup_when_conflict_found:
- update local summary note if needed
- keep local app-owned behavior only where ownership allows
- avoid silent reinterpretation

# ============================================================
# PROJECT FLOW REFERENCE CONFLICT LOG TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording reference conflicts.

template_fields:
- concern_area
- conflicting_sources
- observed_difference
- chosen_priority_source
- reason_for_priority
- local_note_update_needed: yes_no
- followup_action

# ============================================================
# PROJECT FLOW REFERENCE CONFLICT STOP SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- unresolved ownership conflict should block deeper interpretation
- unresolved ERP field conflict should block field mapping decisions
- unresolved BusinessOS mediation conflict should block integration planning
- conflict logging and summary cleanup may continue

# ============================================================
# PROJECT FLOW IMPLEMENTATION PREP SCOPE SPLIT SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact summary of which areas may move forward safely.

safe_to_continue_now:
- local UI and wireframe refinement
- local wording cleanup
- local multilingual label expansion within Japanese/English scope
- local action/state/audit refinement
- local customer-facing material refinement
- local implementation-prep note refinement

not_safe_to_continue_without_resolution:
- ERP truth reinterpretation
- BusinessOS mediation reinterpretation
- unresolved ownership conflict areas
- unresolved field-level mapping conflicts
- any direct ERP integration assumption

# ============================================================
# PROJECT FLOW NEXT PHASE PRIORITY SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact recommended priority order
for the next phase.

recommended_priority_order:
1. local UI and wireframe refinement
2. local wording and multilingual label refinement within Japanese/English scope
3. local state/event/use-case refinement
4. local customer-facing material refinement
5. local auditability refinement
6. BusinessOS/ERP boundary-sensitive implementation planning
7. DB hardening and field-level finalization only after boundary clarity
8. any blocked conflict area only after explicit conflict resolution

not_recommended_early:
- direct ERP access assumptions
- local reinterpretation of ERP-owned truth
- local takeover of shared common component ownership

# ============================================================
# PROJECT FLOW NEXT PHASE EXECUTION TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for running the next phase in a stable order.

execution_template:

step_1:
- confirm next-phase scope
- confirm whether work remains design-only or implementation-planning
- confirm blocked conflict areas are still blocked

step_2:
- run safe local refinement first
- local wireframe refinement
- local wording cleanup
- multilingual label refinement within Japanese and English scope

step_3:
- refine local state, event, and use-case detail
- refine local customer-facing material composition
- refine local auditability notes if needed

step_4:
- check whether BusinessOS mediation interpretation is conflict-free
- only then continue boundary-sensitive planning

step_5:
- check whether ERP field ownership interpretation is conflict-free
- only then continue field-level finalization planning

step_6:
- check whether DB hardening assumptions are safe
- only then continue DB-side finalization planning

blocked_items_must_not_be_pulled_forward:
- direct ERP access assumption
- unresolved ownership conflict work
- unresolved mediation conflict work
- shared common component reownership

# ============================================================
# PROJECT FLOW NEXT PHASE WORK PACKAGE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for breaking the next phase into explicit work packages.

work_package_template_fields:
- package_id
- package_name
- scope_type: local_safe_or_boundary_sensitive_or_blocked
- objective
- in_scope
- out_of_scope
- prerequisite_documents
- blocked_by_conflict: yes_no
- expected_outputs
- completion_checkpoints
- notes

recommended_package_order:
1. local_ui_and_wireframe_refinement
2. multilingual_label_refinement_ja_en
3. local_state_event_usecase_refinement
4. customer_material_refinement
5. auditability_refinement
6. businessos_boundary_sensitive_planning
7. erp_field_mapping_finalization
8. db_hardening_finalization

# ============================================================
# PROJECT FLOW SAFE WORK PACKAGE STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a safe starter set of work packages
that can begin without reopening external ownership questions.

starter_packages:

PF-WP-001:
- package_name: Local UI and Wireframe Refinement
- scope_type: local_safe
- objective: refine screen composition and usability
- prerequisite_documents:
  - 0900041_PROJECT_FLOW_WIREFRAME_OVERVIEW.md
  - 1200029_PROJECT_FLOW_WIREFRAME_IMPLEMENTATION_NOTE.md

PF-WP-002:
- package_name: Japanese and English Label Refinement
- scope_type: local_safe
- objective: refine bilingual UI/output labels within fixed initial scope
- prerequisite_documents:
  - 0900014_PROJECT_FLOW_BILINGUAL_LABEL_CATALOG_NOTE.md
  - 1200041_PROJECT_FLOW_BILINGUAL_LABEL_RESOLUTION_NOTE.md

PF-WP-003:
- package_name: Local State Event Use Case Refinement
- scope_type: local_safe
- objective: sharpen app-local state/event/use-case detail
- prerequisite_documents:
  - 1200024_PROJECT_FLOW_SCREEN_STATE_EVENT_DESIGN.md
  - 1200025_PROJECT_FLOW_USE_CASE_GROUPING_DETAIL.md

PF-WP-004:
- package_name: Customer Material Refinement
- scope_type: local_safe
- objective: refine six standard customer-facing materials
- prerequisite_documents:
  - 0900035_PROJECT_FLOW_CUSTOMER_SCHEDULE_MATERIAL_DETAIL.md
  - 0900049_PROJECT_FLOW_CUSTOMER_MATERIAL_LAYOUT_OVERVIEW.md

PF-WP-005:
- package_name: Auditability Refinement
- scope_type: local_safe
- objective: refine traceability and audit-capture direction
- prerequisite_documents:
  - 0200035_PROJECT_FLOW_AUDITABILITY_ARCHITECTURE.md
  - 1200056_PROJECT_FLOW_AUDITABILITY_IMPLEMENTATION_NOTE.md

# ============================================================
# PROJECT FLOW BOUNDARY-SENSITIVE WORK PACKAGE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for work packages that touch BusinessOS,
ERP,
or external canonical ownership.

work_package_template_fields:
- package_id
- package_name
- scope_type: boundary_sensitive
- concern_area
- objective
- prerequisite_documents
- conflict_check_required: yes
- blocked_if_conflict_exists: yes
- expected_outputs
- escalation_target
- notes

required_rules:
- do not start boundary-sensitive work without conflict check
- do not guess ownership when external canon is unclear
- record which higher reference was used

# ============================================================
# PROJECT FLOW BLOCKED WORK PACKAGE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for areas that must stay blocked
until explicit conflict resolution happens.

work_package_template_fields:
- package_id
- package_name
- scope_type: blocked
- blocked_reason
- conflicting_sources
- prerequisite_resolution
- allowed_interim_work
- forbidden_work
- reopen_condition
- notes

required_rules:
- blocked work must not silently move into active execution
- only conflict logging and summary cleanup may continue
- reopen condition must be explicit

# ============================================================
# PROJECT FLOW BOUNDARY AND BLOCKED STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides starter examples for boundary-sensitive
and blocked work packages.

boundary_sensitive_examples:

PF-WP-B001:
- package_name: BusinessOS Gateway Planning
- scope_type: boundary_sensitive
- concern_area: BusinessOS mediation
- prerequisite_documents:
  - 0200027_PROJECT_FLOW_BUSINESSOS_DEPENDENCY_ARCHITECTURE.md
  - BUSINESS_OS_INTEGRATED_CANONICAL.md
  - 0600013_PROJECT_FLOW_REFERENCE_PRIORITY_BY_CONCERN_NOTE.md
- blocked_if_conflict_exists: yes

PF-WP-B002:
- package_name: ERP Field Mapping Finalization
- scope_type: boundary_sensitive
- concern_area: ERP-owned field interpretation
- prerequisite_documents:
  - 0200028_PROJECT_FLOW_ERP_DEPENDENCY_ARCHITECTURE.md
  - ERP_DESIGN_BIBLE_FULL.md
  - ERP_ENTERPRISE_SCOPE_v1.md
  - erp_schema_table_column_summary.txt
- blocked_if_conflict_exists: yes

PF-WP-B003:
- package_name: DB Hardening Finalization
- scope_type: boundary_sensitive
- concern_area: ownership-dependent DB hardening
- prerequisite_documents:
  - 1200013_PROJECT_FLOW_DB_DDL_PREPARED.md
  - 0300021_PROJECT_FLOW_DATA_OWNERSHIP_MATRIX_NOTE.md
  - 0300022_PROJECT_FLOW_EDITABILITY_MATRIX_NOTE.md
- blocked_if_conflict_exists: yes

blocked_examples:

PF-WP-X001:
- package_name: Direct ERP Client Assumption
- scope_type: blocked
- blocked_reason: violates mediated boundary rule
- allowed_interim_work:
  - none beyond explicit conflict logging
- forbidden_work:
  - direct ERP call planning
  - direct ERP client implementation assumptions
- reopen_condition:
  - not expected under current canonical rules

PF-WP-X002:
- package_name: Shared Common Component Reownership
- scope_type: blocked
- blocked_reason: violates external common component ownership
- allowed_interim_work:
  - candidate listing in separate chat
- forbidden_work:
  - local re-canonicalization inside ProjectFlow
- reopen_condition:
  - separate common component promotion path completed

# ============================================================
# PROJECT FLOW WORK PACKAGE GATE REVIEW TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for running a gate review
before starting a work package.

gate_review_fields:
- package_id
- package_name
- scope_type
- prerequisite_documents_confirmed: yes_no
- ownership_conflict_present: yes_no
- mediation_conflict_present: yes_no
- blocked_reason_present: yes_no
- safe_to_start: yes_no
- notes

gate_rules:
- local_safe package may start only when prerequisite documents are confirmed
- boundary_sensitive package may start only when no relevant conflict remains
- blocked package may not start as active work

# ============================================================
# PROJECT FLOW GATE REVIEW STARTER RULES
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides starter rules for gate review decisions.

starter_rules:

for_local_safe_packages:
- confirm package scope is truly local
- confirm no hidden ERP or BusinessOS reinterpretation is included
- confirm prerequisite docs are enough for local refinement

for_boundary_sensitive_packages:
- confirm concern area is identified
- confirm higher canonical references are listed
- confirm ownership and mediation conflicts are checked
- confirm blocked-if-conflict rule is respected

for_blocked_packages:
- confirm package remains blocked
- allow only logging,
  summary cleanup,
  or reopen-condition maintenance

# ============================================================
# PROJECT FLOW WORK PACKAGE EXECUTION RECORD TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording execution status
after a work package passes gate review.

execution_record_fields:
- package_id
- package_name
- scope_type
- gate_review_result: pass_or_block
- execution_started: yes_no
- execution_status: not_started_or_in_progress_or_paused_or_done
- start_date
- pause_reason
- completion_summary
- produced_documents
- next_followup
- notes

recording_rules:
- blocked packages should record non-start explicitly
- paused packages should record pause reason explicitly
- completed packages should record produced documents explicitly

# ============================================================
# PROJECT FLOW WORK PACKAGE STATUS SUMMARY TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for summarizing multiple work-package statuses.

summary_fields:
- review_date
- safe_packages_not_started
- safe_packages_in_progress
- safe_packages_done
- boundary_packages_blocked
- boundary_packages_in_progress
- blocked_packages_still_blocked
- major_pause_reasons
- next_recommended_package

# ============================================================
# PROJECT FLOW WORK PACKAGE REOPEN TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reopening a paused or blocked work package safely.

reopen_template_fields:
- package_id
- package_name
- previous_status: paused_or_blocked
- reopen_request_date
- reopen_reason
- blocking_issue_resolved: yes_no
- conflict_review_rerun_needed: yes_no
- prerequisite_documents_rechecked: yes_no
- safe_to_reopen: yes_no
- reopen_notes

reopen_rules:
- blocked packages may reopen only after explicit blocking condition review
- paused packages may reopen only after pause reason is re-evaluated
- reopened work must not skip gate review when conflict-sensitive

# ============================================================
# PROJECT FLOW BLOCKED TO REOPEN FLOW NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the basic flow from blocked state to possible reopen.

flow:
1. identify blocked or paused package
2. identify blocking reason or pause reason
3. check whether higher-priority conflict or uncertainty is resolved
4. rerun gate review if boundary-sensitive
5. reopen only if safe-to-reopen is confirmed
6. record new execution status explicitly

important_rules:
- reopening is not automatic
- conflict-sensitive areas require explicit re-check
- unresolved ownership or mediation conflict keeps package blocked

# ============================================================
# PROJECT FLOW EXACT RESOLUTION SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- major exact-design bottlenecks were concentrated in three areas
- BusinessOS / ERP exact boundary interpretation is now fixed at design level
- DB hardening review scope is now fixed at design level
- WBS proposal logic is now fixed at initial exact-rule level
- some implementation-choice items remain open by design,
  but they no longer block broad design understanding

# ============================================================
# PROJECT FLOW POST EXACT OPEN ITEMS SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Summarizes the remaining open items
after exact-design bottlenecks were resolved.

post_exact_open_items:

implementation_choice_items:
- final Android module naming
- DI framework choice
- offline/cache strategy
- background job scheduling style

db_execution_phase_items:
- final schema-name confirmation with DB owner
- enum/check hardening execution order
- RLS final execution design
- trigger and migration rollout order

future_sophistication_items:
- national holiday aware business calendar
- custom business calendar support
- urgency and scale tuning policy refinement
- multilingual expansion beyond Japanese and English

common_component_promotion_items:
- which ProjectFlow-origin candidates should be promoted outside app scope
- timing of separate common-component registration

important_note:
These items remain open intentionally.
They are no longer broad design blockers.

# ============================================================
# PROJECT FLOW POST EXACT DECISION SPLIT
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Splits remaining decisions by when they should be made.

decision_timing_split:

can_be_decided_in_implementation_planning_phase:
- final Android module naming
- DI framework choice
- offline/cache strategy
- background job scheduling style

must_be_decided_with_db_owner_or_db_phase:
- schema final confirmation
- migration hardening order
- RLS design execution
- final check constraint hardening order

should_be_deferred_to_later_sophistication_phase:
- holiday-calendar sophistication
- later language expansion
- advanced urgency/scale tuning
- broader common-component promotion

# ============================================================
# PROJECT FLOW OPEN ITEMS CLOSED SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Summarizes which previously open items are now closed.

closed_now:
- final Android module naming
- DI framework choice
- offline/cache strategy
- background job scheduling style

still_open_but_db_review_bound:
- schema final confirmation with DB owner
- migration hardening execution order
- RLS final execution design
- final DB hardening rollout detail

deferred_later_sophistication:
- holiday-calendar sophistication beyond weekday_only
- multilingual expansion beyond Japanese and English
- broader common-component promotion timing

summary_interpretation:
Ordinary implementation-planning blockers are now substantially reduced.

# ============================================================
# PROJECT FLOW REMAINING ITEM FINAL CLASSIFICATION
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides final classification
for the remaining items after broad design and exact-design closure.

# ============================================================
# 1. DB-OWNER-REVIEW REQUIRED
# ============================================================

db_owner_review_required:
- final schema confirmation
- migration hardening execution order
- RLS execution design
- final constraint hardening rollout
- trigger rollout sequencing

interpretation:
These are not ordinary app-local open items.
They belong to DB-owner review flow.

# ============================================================
# 2. LATER SOPHISTICATION ITEMS
# ============================================================

later_sophistication_items:
- national-holiday-aware business calendar
- custom business calendar support
- urgency and scale tuning refinement
- multilingual expansion beyond Japanese and English
- broader common-component promotion timing

interpretation:
These are future improvement items,
not blockers for ordinary implementation planning.

# ============================================================
# 3. NON-BLOCKING META ITEMS
# ============================================================

non_blocking_meta_items:
- wording cleanup opportunities
- additional summary-note cleanup opportunities
- optional extra handoff refinements

interpretation:
These may improve clarity,
but they do not block progress.

# ============================================================
# 4. IMPORTANT CONCLUSION
# ============================================================

important_conclusion:
ProjectFlow no longer has major unresolved ordinary design blockers.
Remaining items are either:
- DB-owner-review bound
or
- future sophistication items
or
- non-blocking cleanup items

# ============================================================
# PROJECT FLOW DB OWNER REVIEW START NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Provides a clean starting point
for DB-owner review.

db_owner_review_should_start_from:
- exact field ownership interpretation is fixed
- editability interpretation is fixed
- BusinessOS / ERP mediated boundary is fixed
- DB hardening buckets are identified
- stop conditions are already defined

db_owner_review_should_not_reopen_without_reason:
- ProjectFlow identity
- ERP direct call prohibition
- BusinessOS mediation requirement
- local versus ERP ownership split
- local versus common-component ownership split

recommended_entry_documents:
- 1200072_PROJECT_FLOW_DB_HARDENING_FINAL_REVIEW_NOTE.md
- 1200077_PROJECT_FLOW_DB_OWNER_REVIEW_BOUNDARY_NOTE.md
- 0300021_PROJECT_FLOW_DATA_OWNERSHIP_MATRIX_NOTE.md
- 0300022_PROJECT_FLOW_EDITABILITY_MATRIX_NOTE.md
- 0600014_PROJECT_FLOW_BUSINESSOS_EXACT_PAYLOAD_AND_FIELD_MAPPING.md

# ============================================================
# PROJECT FLOW DB OWNER REVIEW CHECK TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Template for running DB-owner review.

review_fields:
- review_date
- reviewer
- schema_confirmation_result
- migration_order_result
- constraint_hardening_result
- trigger_rollout_result
- rls_design_result
- blocked_items
- followup_actions
- summary_comment

important_rule:
This template is for DB execution-readiness review,
not for reopening broad application design.

# ============================================================
# PROJECT FLOW DB OWNER REVIEW EXECUTION SHEET
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Provides a fillable execution sheet
for DB-owner review.

review_session_fields:
- review_date
- reviewer
- review_scope
- overall_result: pass_or_hold

schema_confirmation_result:
- schema_name_candidate
- confirmed: yes_no
- notes

migration_order_result:
- order_confirmed: yes_no
- blocked_points
- notes

constraint_hardening_result:
- status_constraint_confirmed: yes_no
- numeric_check_constraint_confirmed: yes_no
- mixed_ownership_field_handling_confirmed: yes_no
- notes

trigger_rollout_result:
- updated_at_trigger_strategy_confirmed: yes_no
- trigger_rollout_order_confirmed: yes_no
- notes

rls_design_result:
- rls_ready_for_next_phase: yes_no
- blocked_points
- notes

final_fields:
- unresolved_db_items
- followup_actions
- next_review_needed: yes_no
- summary_comment

# ============================================================
# PROJECT FLOW DB OWNER REVIEW RESULT TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Template for recording the result of DB-owner review.

result_fields:
- result: pass_or_hold_or_partial
- review_date
- reviewer
- confirmed_schema_name
- confirmed_migration_order_summary
- confirmed_constraint_hardening_summary
- confirmed_trigger_rollout_summary
- confirmed_rls_direction_summary
- remaining_blockers
- next_actions

# ============================================================
# PROJECT FLOW DB OWNER REVIEW HOLD REASON TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Template for recording why DB-owner review is held or partial.

hold_reason_fields:
- unresolved_schema_question
- unresolved_ownership_sensitive_constraint_question
- unresolved_trigger_rollout_question
- unresolved_rls_question
- required_followup
- re_review_condition

# ============================================================
# PROJECT FLOW DB OWNER REVIEW UNLOCK MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Provides a practical matrix for what is unlocked by DB-owner review result.

unlock_matrix:

schema_confirmation:
- unlocked_on: pass_or_partial_if_explicitly_confirmed
- remains_blocked_on: hold_or_unconfirmed_partial

migration_hardening_order:
- unlocked_on: pass_or_partial_if_explicitly_confirmed
- remains_blocked_on: hold_or_unconfirmed_partial

constraint_hardening:
- unlocked_on: pass_or_partial_if_explicitly_confirmed
- remains_blocked_on: hold_or_unconfirmed_partial

trigger_rollout:
- unlocked_on: pass_or_partial_if_explicitly_confirmed
- remains_blocked_on: hold_or_unconfirmed_partial

rls_direction:
- unlocked_on: pass_or_partial_if_explicitly_confirmed
- remains_blocked_on: hold_or_unconfirmed_partial

important_rule:
Partial result never unlocks unspecified DB areas automatically.

# ============================================================
# PROJECT FLOW DB OWNER REVIEW POST RESULT TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Template for deciding what to do next
after DB-owner review result is known.

post_result_template_fields:
- review_result: pass_or_partial_or_hold
- confirmed_areas
- still_blocked_areas
- immediate_next_actions
- deferred_actions
- notes

result_handling_rules:
- pass should open confirmed DB-phase planning
- partial should open only explicitly confirmed areas
- hold should keep unresolved DB areas blocked

# ============================================================
# PROJECT FLOW DB OWNER REVIEW POST RESULT STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Provides starter actions for each DB-owner review result type.

pass_case_actions:
- update local notes with confirmed schema decision
- update local notes with confirmed hardening order
- allow DB-phase planning on confirmed areas
- keep later sophistication items deferred

partial_case_actions:
- list confirmed areas explicitly
- list still-blocked areas explicitly
- continue planning only for confirmed areas
- prepare re-review items for blocked areas

hold_case_actions:
- keep DB-phase planning blocked
- record hold reasons explicitly
- prepare clarification or follow-up package
- rerun DB-owner review only after blockers are addressed

# ============================================================
# PROJECT FLOW DB OWNER REVIEW REFLECTION TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Template for reflecting DB-owner review results
back into ProjectFlow local canonical notes.

reflection_template_fields:
- review_date
- reviewer
- source_review_record
- confirmed_items_to_reflect
- blocked_items_to_keep
- files_to_update
- files_not_to_update
- reflection_completed: yes_no
- notes

reflection_rules:
- only explicitly confirmed DB items may be reflected as fixed
- blocked DB items must remain visible as blocked
- reflection should update local notes,
  not silently replace external ownership

# ============================================================
# PROJECT FLOW DB OWNER REVIEW REFLECTION STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Provides starter guidance for which local notes
typically need reflection after DB-owner review.

typical_reflection_targets_when_confirmed:
- 1200072_PROJECT_FLOW_DB_HARDENING_FINAL_REVIEW_NOTE.md
- 1200077_PROJECT_FLOW_DB_OWNER_REVIEW_BOUNDARY_NOTE.md
- 0900086_PROJECT_FLOW_REMAINING_ITEM_FINAL_CLASSIFICATION.md
- 0900085_PROJECT_FLOW_OPEN_ITEMS_CLOSED_SUMMARY.md
- 1200078_PROJECT_FLOW_REMAINING_ITEM_EXECUTION_BOUNDARY_NOTE.md

typical_non_reflection_targets:
- broad identity notes
- ERP boundary notes
- BusinessOS mediation notes
- device support notes
- multilingual scope notes

rule_of_thumb:
Only DB-phase interpretation notes should normally change.
Broad application design should not be reopened.

# ============================================================
# PROJECT FLOW IMPLEMENTATION START ENTRY NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a practical starting note
for implementation-start planning.

implementation_start_should_begin_from:
- 0900041_PROJECT_FLOW_CLOSURE_DECISION.md
- 0900016_PROJECT_FLOW_FINAL_HANDOFF_INTEGRATED_SUMMARY.md
- 1200076_PROJECT_FLOW_FINAL_IMPLEMENTATION_CHOICE_NOTE.md
- 1200073_PROJECT_FLOW_WBS_PROPOSAL_EXACT_RULES_NOTE.md
- 0600014_PROJECT_FLOW_BUSINESSOS_EXACT_PAYLOAD_AND_FIELD_MAPPING.md
- latest DB-owner review result and reflection notes when available

implementation_start_should_separate:
- immediately-plannable local work
- DB-confirmed work
- still-blocked work

important_rule:
Implementation-start planning should not reopen
stable identity,
ERP boundary,
BusinessOS mediation,
device scope,
or multilingual initial scope without explicit reason.

# ============================================================
# PROJECT FLOW IMPLEMENTATION START CHECK TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for checking whether implementation-start planning may begin.

check_fields:
- design_closure_confirmed: yes_no
- exact_boundary_notes_confirmed: yes_no
- final_implementation_direction_confirmed: yes_no
- DB_owner_review_result_available: yes_no
- DB_reflection_completed_if_needed: yes_no
- blocked_items_still_explicit: yes_no
- safe_to_begin_implementation_planning: yes_no
- notes

# ============================================================
# PROJECT FLOW IMPLEMENTATION START WORK PACKAGE STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended work packages
for implementation-start planning.

starter_work_packages:

PF-IMP-001:
- package_name: Module Skeleton Planning
- scope_type: implementation_start_local
- objective: confirm module boundaries and initial package ownership
- prerequisite_documents:
  - 0200041_PROJECT_FLOW_FINAL_MODULE_AND_RUNTIME_ARCHITECTURE.md
  - 1200076_PROJECT_FLOW_FINAL_IMPLEMENTATION_CHOICE_NOTE.md

PF-IMP-002:
- package_name: Screen State Event Planning
- scope_type: implementation_start_local
- objective: convert state/event design into implementation-start planning units
- prerequisite_documents:
  - 1200024_PROJECT_FLOW_SCREEN_STATE_EVENT_DESIGN.md
  - 1200025_PROJECT_FLOW_USE_CASE_GROUPING_DETAIL.md

PF-IMP-003:
- package_name: Repository and Gateway Planning
- scope_type: implementation_start_boundary_aware
- objective: shape local repositories and BusinessOS-facing gateways
- prerequisite_documents:
  - 1200026_PROJECT_FLOW_REPOSITORY_AND_GATEWAY_INTERFACE_NOTE.md
  - 0600014_PROJECT_FLOW_BUSINESSOS_EXACT_PAYLOAD_AND_FIELD_MAPPING.md
  - latest DB-owner review result if relevant

PF-IMP-004:
- package_name: Customer Material Implementation Planning
- scope_type: implementation_start_local
- objective: turn six standard customer materials into implementation-ready slices
- prerequisite_documents:
  - 0900035_PROJECT_FLOW_CUSTOMER_SCHEDULE_MATERIAL_DETAIL.md
  - 0900049_PROJECT_FLOW_CUSTOMER_MATERIAL_LAYOUT_OVERVIEW.md
  - 1200022_PROJECT_FLOW_CUSTOMER_MATERIAL_ADAPTER_NOTE.md

PF-IMP-005:
- package_name: Local Cache and Sync Planning
- scope_type: implementation_start_boundary_aware
- objective: map local-first cache behavior and mediated sync visibility
- prerequisite_documents:
  - 0200041_PROJECT_FLOW_FINAL_MODULE_AND_RUNTIME_ARCHITECTURE.md
  - 0200027_PROJECT_FLOW_BUSINESSOS_DEPENDENCY_ARCHITECTURE.md
  - 1200048_PROJECT_FLOW_BUSINESSOS_DEPENDENCY_IMPLEMENTATION_NOTE.md

# ============================================================
# PROJECT FLOW IMPLEMENTATION START SEQUENCE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for deciding the early implementation-start sequence.

sequence_template:
1. confirm implementation-start entry check
2. confirm DB-confirmed versus still-blocked areas
3. start with local module skeleton planning
4. refine state/event/use-case planning
5. refine repository/gateway planning
6. refine local cache and sync planning
7. split follow-on packages from confirmed planning outputs

important_rules:
- do not start from blocked DB areas
- do not reopen stable design assumptions
- keep local and boundary-aware packages distinct

# ============================================================
# PROJECT FLOW IMPLEMENTATION START DELIVERABLE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining deliverables
for implementation-start planning packages.

deliverable_template_fields:
- package_id
- package_name
- deliverable_name
- deliverable_type
- objective
- source_documents
- output_format
- completion_condition
- blocked_by
- notes

deliverable_type_candidates:
- module_map
- package_map
- state_event_matrix
- repository_gateway_map
- slice_plan
- cache_sync_plan
- review_note

# ============================================================
# PROJECT FLOW IMPLEMENTATION START COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the first implementation-start work packages.

completion_matrix:

PF-IMP-001:
- package_name: Module Skeleton Planning
- expected_deliverables:
  - module_map
  - package_ownership_note
- completion_condition:
  - final module set is mapped to package responsibilities
  - local versus integration-businessos split is explicit

PF-IMP-002:
- package_name: Screen State Event Planning
- expected_deliverables:
  - state_event_matrix
  - screen_to_usecase_map
- completion_condition:
  - major screens have state/event definitions mapped
  - main user events align with use-case groups

PF-IMP-003:
- package_name: Repository and Gateway Planning
- expected_deliverables:
  - repository_gateway_map
  - boundary_split_note
- completion_condition:
  - local repositories are separated from BusinessOS-facing gateways
  - mediated payload entry points are explicit

PF-IMP-004:
- package_name: Customer Material Implementation Planning
- expected_deliverables:
  - customer_material_slice_plan
  - material_adapter_map
- completion_condition:
  - six standard materials are split into implementation-ready slices
  - shared shell versus local composition is explicit

PF-IMP-005:
- package_name: Local Cache and Sync Planning
- expected_deliverables:
  - cache_sync_plan
  - sync_visibility_note
- completion_condition:
  - local-first cache scope is explicit
  - mediated sync visibility behavior is explicit

# ============================================================
# PROJECT FLOW IMPLEMENTATION START DELIVERABLE REVIEW TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reviewing deliverables
produced by implementation-start planning packages.

review_template_fields:
- package_id
- package_name
- deliverable_name
- reviewer
- review_date
- review_result: pass_or_hold_or_partial
- key_findings
- contradictions_found: yes_no
- blocked_by_external_boundary: yes_no
- followup_actions
- notes

review_rules:
- pass means the planning deliverable is usable as next-step input
- partial means only part of the deliverable is usable
- hold means the deliverable must not be used as next-step input yet

# ============================================================
# PROJECT FLOW IMPLEMENTATION START APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for approving implementation-start planning deliverables.

approval_template_fields:
- package_id
- package_name
- deliverable_name
- approval_result: approved_or_partially_approved_or_not_approved
- approval_date
- approved_scope
- blocked_scope
- next_allowed_actions
- notes

approval_rules:
- approval applies to planning output only
- approval does not automatically mean coding start
- blocked scope must remain explicit after approval review

# ============================================================
# PROJECT FLOW IMPLEMENTATION START REVIEW AND APPROVAL FLOW
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the review and approval flow
for implementation-start deliverables.

flow:
1. work package produces planning deliverables
2. deliverable review is executed
3. review result is recorded
4. approval decision is recorded if deliverable is usable
5. next allowed action is chosen from approved scope
6. blocked or partial areas remain visible for follow-up

important_rules:
- review result and approval result must remain distinct
- partial approval must not be mistaken for full package completion
- blocked scope must remain explicit

# ============================================================
# PROJECT FLOW IMPLEMENTATION START EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an execution ledger
for the first implementation-start planning packages.

execution_ledger:

  - order_no: 1
    package_id: PF-IMP-001
    package_name: Module Skeleton Planning
    scope_type: implementation_start_local
    readiness: ready_first
    expected_output:
      - module_map
      - package_ownership_note

  - order_no: 2
    package_id: PF-IMP-002
    package_name: Screen State Event Planning
    scope_type: implementation_start_local
    readiness: ready_after_module_skeleton
    expected_output:
      - state_event_matrix
      - screen_to_usecase_map

  - order_no: 3
    package_id: PF-IMP-004
    package_name: Customer Material Implementation Planning
    scope_type: implementation_start_local
    readiness: ready_after_state_event_direction
    expected_output:
      - customer_material_slice_plan
      - material_adapter_map

  - order_no: 4
    package_id: PF-IMP-005
    package_name: Local Cache and Sync Planning
    scope_type: implementation_start_boundary_aware
    readiness: ready_after_module_direction_and_boundary_check
    expected_output:
      - cache_sync_plan
      - sync_visibility_note

  - order_no: 5
    package_id: PF-IMP-003
    package_name: Repository and Gateway Planning
    scope_type: implementation_start_boundary_aware
    readiness: ready_after_state_event_direction_and_boundary_check
    expected_output:
      - repository_gateway_map
      - boundary_split_note

important_rule:
Boundary-aware packages may appear early in the ledger,
but they still require conflict-free boundary assumptions
and any necessary DB-owner review result.

# ============================================================
# PROJECT FLOW IMPLEMENTATION START EXECUTION SEQUENCE NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Explains why the implementation-start sequence is ordered this way.

sequence_reasoning:
- module skeleton planning comes first to stabilize package ownership
- screen state/event planning comes next to stabilize per-screen implementation slices
- customer material planning follows because it is mostly local and depends on state/use-case shape
- local cache and sync planning follows after module and boundary direction are clearer
- repository and gateway planning follows once state/event and boundary-aware inputs are clearer

important_note:
This is an execution-sequence preference,
not an absolute ban on iterative overlap.
However,
overlap should not hide blocked boundary questions.

# ============================================================
# PROJECT FLOW IMPLEMENTATION START DEPENDENCY MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines dependency relations
between the first implementation-start planning packages.

dependency_matrix:

PF-IMP-001:
- package_name: Module Skeleton Planning
- depends_on:
  - implementation_start_entry_confirmed
- blocks:
  - PF-IMP-002
  - PF-IMP-003
  - PF-IMP-005

PF-IMP-002:
- package_name: Screen State Event Planning
- depends_on:
  - PF-IMP-001
- blocks:
  - PF-IMP-003
  - PF-IMP-004

PF-IMP-003:
- package_name: Repository and Gateway Planning
- depends_on:
  - PF-IMP-001
  - PF-IMP-002
  - boundary_check_if_needed
- blocks:
  - later repository-slice planning
  - later gateway-slice planning

PF-IMP-004:
- package_name: Customer Material Implementation Planning
- depends_on:
  - PF-IMP-002
- blocks:
  - later customer-material slice planning

PF-IMP-005:
- package_name: Local Cache and Sync Planning
- depends_on:
  - PF-IMP-001
  - boundary_direction_confirmed_enough
- blocks:
  - later sync-visibility slice planning
  - later cache-behavior slice planning

important_rule:
A package may start only when its dependency conditions are satisfied.

# ============================================================
# PROJECT FLOW IMPLEMENTATION START ENTRY CONDITION NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines entry conditions for each first-wave implementation-start package.

entry_conditions:

PF-IMP-001:
- implementation-start entry confirmed
- final module and runtime direction confirmed

PF-IMP-002:
- PF-IMP-001 outputs available
- screen scope list confirmed

PF-IMP-003:
- PF-IMP-001 outputs available
- PF-IMP-002 outputs available
- BusinessOS mediation interpretation remains conflict-free enough
- DB-dependent blocked areas are still explicit

PF-IMP-004:
- PF-IMP-002 outputs available
- six standard customer materials remain fixed

PF-IMP-005:
- PF-IMP-001 outputs available
- local-first cache strategy remains fixed
- mediated sync interpretation remains conflict-free enough

important_note:
Conflict-free enough does not mean all DB items are closed.
It means the package can proceed without violating blocked-area rules.

# ============================================================
# PROJECT FLOW OFFICIAL COMMON COMPONENT LEDGER SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md is now a primary reference
  for shared common component ownership
- ProjectFlow should consult it before assuming a component is still only local
- ProjectFlow local additive behavior remains local until separately promoted

# ============================================================
# PROJECT FLOW COMMON COMPONENT REFERENCE PRIORITY UPDATE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Updates common-component reference priority after the official ledger upload.

updated_priority:
1. 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
2. ProjectFlow common component dependency notes
3. ProjectFlow local ownership and execution notes

implication:
ProjectFlow should no longer treat unofficial candidate notes
as primary when the official ledger answers the ownership question.

# ============================================================
# PROJECT FLOW COMMON COMPONENT DECISION TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for deciding whether a ProjectFlow implementation-start item
should use an official shared component
or remain app-local.

decision_template_fields:
- decision_target
- concern_area
- official_ledger_checked: yes_no
- official_component_found: yes_no
- official_component_name optional
- use_shared_component: yes_no
- keep_app_local: yes_no
- app_local_reason optional
- adapter_needed: yes_no
- notes

decision_rules:
- official ledger must be checked first
- if an official component exists and matches the concern,
  shared use is preferred
- if no official component exists,
  app-local handling may continue
- app-local handling does not imply future shared ownership automatically

# ============================================================
# PROJECT FLOW COMMON COMPONENT DECISION STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides starter decision areas
for implementation-start planning.

starter_decision_areas:
- dashboard summary shell
- sync status visibility shell
- export request shell
- read-only entitlement guard shell
- multilingual label pack usage
- customer material layout shell
- device parity layout shell

important_rule:
These decision areas should check
014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
before being treated as purely ProjectFlow-local.

# ============================================================
# PROJECT FLOW SHARED COMPONENT ADAPTER TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining a ProjectFlow-side adapter
around an official shared component.

template_fields:
- concern_area
- official_component_name
- projectflow_adapter_name
- input_mapping
- output_mapping
- local_rules_applied
- unsupported_shared_fields optional
- projectflow_only_fields optional
- notes

rules:
- adapter exists on ProjectFlow side
- adapter does not rewrite official shared ownership
- adapter may hide or reshape ProjectFlow-local semantics for shared consumption

# ============================================================
# PROJECT FLOW LOCAL ORCHESTRATION TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining a ProjectFlow local orchestration layer
for a screen or feature surface.

template_fields:
- screen_or_surface_name
- shared_components_used
- local_sections_used
- orchestration_order
- local_visibility_rules
- local_action_routing
- local_state_binding
- notes

rules:
- orchestration stays ProjectFlow-local
- shared components are listed explicitly
- local sections are listed explicitly
- local action routing remains explicit

# ============================================================
# PROJECT FLOW LOCAL ORCHESTRATION STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a starter set of local orchestration targets
for major ProjectFlow screens.

starter_set:

dashboard:
- shared_components_used:
  - dashboard summary shell candidate
  - sync visibility shell candidate
  - read-only entitlement guard shell candidate
- local_sections_used:
  - ProjectFlow progress summary
  - ProjectFlow delay/risk grouping
  - ProjectFlow quick action arrangement
- orchestration_focus:
  - summary order
  - local action routing
  - local metric grouping

project_detail:
- shared_components_used:
  - device parity layout shell candidate
  - read-only entitlement guard shell candidate
- local_sections_used:
  - project summary grid
  - tab routing
  - local action area
- orchestration_focus:
  - tab order
  - local state binding
  - ERP-reference versus local-edit separation

customer_material_screen:
- shared_components_used:
  - customer material layout shell candidate
  - export shell candidate
  - multilingual label shell candidate
- local_sections_used:
  - material-specific preview body
  - wording adjustment area
  - ProjectFlow review-aware export flow
- orchestration_focus:
  - material type switching
  - wording adjustment order
  - review-state visibility

sync_status_screen:
- shared_components_used:
  - sync visibility shell candidate
  - notification shell candidate if official
- local_sections_used:
  - ProjectFlow sync scope filters
  - ProjectFlow retry action placement
- orchestration_focus:
  - sync grouping
  - retry route placement
  - local error interpretation surface

export_report_screen:
- shared_components_used:
  - export shell candidate
  - multilingual label shell candidate
  - read-only entitlement guard shell candidate
- local_sections_used:
  - dataset selector
  - report draft editor
  - ProjectFlow-specific output controls
- orchestration_focus:
  - output selection order
  - local edit area placement
  - review-aware export routing

# ============================================================
# PROJECT FLOW SCREEN ORCHESTRATION DECISION TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for deciding screen-level orchestration
during implementation-start planning.

template_fields:
- screen_name
- official_shared_components_checked: yes_no
- shared_components_selected
- local_sections_selected
- orchestration_order
- local_action_routes
- local_state_binding_points
- review_or_read_only_visibility_points
- notes

decision_rules:
- screen decision must list both shared and local parts
- missing shared components should not block local orchestration planning
- local action routes should remain explicit

# ============================================================
# PROJECT FLOW SCREEN TO PACKAGE MAPPING LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps major ProjectFlow screens
to implementation-start planning packages.

screen_to_package_mapping:

dashboard:
- primary_packages:
  - PF-IMP-001
  - PF-IMP-002
- secondary_packages:
  - PF-IMP-005
- orchestration_reference:
  - 0900116_PROJECT_FLOW_LOCAL_ORCHESTRATION_STARTER_SET.md

project_detail:
- primary_packages:
  - PF-IMP-001
  - PF-IMP-002
- secondary_packages:
  - PF-IMP-003
- orchestration_reference:
  - 0900116_PROJECT_FLOW_LOCAL_ORCHESTRATION_STARTER_SET.md

customer_material_screen:
- primary_packages:
  - PF-IMP-004
- secondary_packages:
  - PF-IMP-002
  - PF-IMP-003
- orchestration_reference:
  - 0900116_PROJECT_FLOW_LOCAL_ORCHESTRATION_STARTER_SET.md

sync_status_screen:
- primary_packages:
  - PF-IMP-005
- secondary_packages:
  - PF-IMP-003
- orchestration_reference:
  - 0900116_PROJECT_FLOW_LOCAL_ORCHESTRATION_STARTER_SET.md

export_report_screen:
- primary_packages:
  - PF-IMP-004
- secondary_packages:
  - PF-IMP-003
  - PF-IMP-005
- orchestration_reference:
  - 0900116_PROJECT_FLOW_LOCAL_ORCHESTRATION_STARTER_SET.md

important_rule:
One screen may depend on multiple planning packages.
Primary packages define the earliest planning owner.

# ============================================================
# PROJECT FLOW SCREEN TO ORCHESTRATION PROGRESS TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for tracking progress
from screen orchestration planning into package execution.

template_fields:
- screen_name
- primary_package
- secondary_packages
- orchestration_defined: yes_no
- shared_components_checked: yes_no
- local_sections_defined: yes_no
- action_routes_defined: yes_no
- state_binding_defined: yes_no
- ready_for_next_package_step: yes_no
- notes

rules:
- orchestration progress should be tracked per screen
- ready_for_next_package_step requires local structure clarity
- blocked boundary questions should be recorded explicitly

# ============================================================
# PROJECT FLOW DELIVERABLE DEPENDENCY LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps dependency relations between implementation-start deliverables.

deliverable_dependency_ledger:

module_map:
- produced_by:
  - PF-IMP-001
- unlocks:
  - state_event_matrix
  - repository_gateway_map
  - cache_sync_plan

package_ownership_note:
- produced_by:
  - PF-IMP-001
- unlocks:
  - screen_to_usecase_map
  - boundary_split_note

state_event_matrix:
- produced_by:
  - PF-IMP-002
- unlocks:
  - screen_to_usecase_map
  - customer_material_slice_plan
  - repository_gateway_map

screen_to_usecase_map:
- produced_by:
  - PF-IMP-002
- unlocks:
  - repository_gateway_map
  - later feature-slice planning

customer_material_slice_plan:
- produced_by:
  - PF-IMP-004
- unlocks:
  - material_adapter_map
  - later customer-material implementation slices

material_adapter_map:
- produced_by:
  - PF-IMP-004
- unlocks:
  - later customer-material integration slices

cache_sync_plan:
- produced_by:
  - PF-IMP-005
- unlocks:
  - sync_visibility_note
  - later cache-behavior implementation slices

sync_visibility_note:
- produced_by:
  - PF-IMP-005
- unlocks:
  - later sync UI planning
  - later sync-status implementation slices

repository_gateway_map:
- produced_by:
  - PF-IMP-003
- unlocks:
  - boundary_split_note
  - later repository/gateway feature slices

boundary_split_note:
- produced_by:
  - PF-IMP-003
- unlocks:
  - later boundary-aware feature planning

important_rule:
A deliverable should not be treated as unlocked
before its upstream deliverables exist in usable reviewed form.

# ============================================================
# PROJECT FLOW DELIVERABLE PROGRESS TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for tracking deliverable progress and dependency readiness.

template_fields:
- deliverable_name
- produced_by_package
- prerequisite_deliverables
- review_status: not_started_or_in_review_or_pass_or_partial_or_hold
- approval_status: not_started_or_approved_or_partial_or_not_approved
- unlocks_next_deliverables
- ready_to_unlock_next: yes_no
- notes

rules:
- ready_to_unlock_next requires reviewed usable form
- partial review may unlock only explicitly usable next deliverables
- hold does not unlock downstream deliverables

# ============================================================
# PROJECT FLOW DELIVERABLE TO FEATURE SLICE LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps implementation-start deliverables
to next-step feature-slice planning areas.

deliverable_to_feature_slice_ledger:

module_map:
- next_feature_slices:
  - dashboard module slice
  - project feature slice
  - task feature slice
  - milestone feature slice
  - issue_risk feature slice
  - time_entry feature slice
  - sync feature slice
  - export_report feature slice
  - template_proposal feature slice
  - customer_material feature slice

package_ownership_note:
- next_feature_slices:
  - feature package boundary slices
  - integration-businessos boundary slice
  - core-data ownership slice

state_event_matrix:
- next_feature_slices:
  - dashboard ui state slice
  - project detail state slice
  - task state slice
  - customer material state slice
  - sync state slice

screen_to_usecase_map:
- next_feature_slices:
  - use-case grouping slice
  - viewmodel boundary slice
  - action routing slice

customer_material_slice_plan:
- next_feature_slices:
  - customer schedule slice
  - progress report slice
  - issue list slice
  - risk list slice
  - decision note slice
  - follow-up action slice

material_adapter_map:
- next_feature_slices:
  - material adapter implementation-planning slice
  - export-ready material composition slice

cache_sync_plan:
- next_feature_slices:
  - local cache behavior slice
  - sync queue visibility slice
  - refresh trigger slice

sync_visibility_note:
- next_feature_slices:
  - sync status UI slice
  - retry action slice
  - sync error detail slice

repository_gateway_map:
- next_feature_slices:
  - local repository slice
  - BusinessOS gateway slice
  - repository/gateway split slice

boundary_split_note:
- next_feature_slices:
  - boundary-aware feature planning slice
  - integration dependency slice

important_rule:
Feature-slice planning should start from unlocked deliverables,
not from raw assumptions.

# ============================================================
# PROJECT FLOW FEATURE SLICE PLANNING TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for planning a feature slice
after prerequisite deliverables are ready.

template_fields:
- feature_slice_name
- upstream_deliverables
- related_packages
- scope
- in_scope
- out_of_scope
- local_or_boundary_aware
- blocked_by
- expected_planning_outputs
- ready_to_start: yes_no
- notes

rules:
- a feature slice should list its upstream deliverables explicitly
- blocked_by must remain explicit
- boundary-aware slice should preserve boundary conditions

# ============================================================
# PROJECT FLOW FEATURE SLICE EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an execution ledger
for early feature-slice planning after starter deliverables are ready.

feature_slice_execution_ledger:

  - order_no: 1
    feature_slice_name: dashboard_ui_state_slice
    local_or_boundary_aware: local
    upstream_deliverables:
      - module_map
      - state_event_matrix
    readiness: ready_when_pf_imp_001_and_002_reviewed

  - order_no: 2
    feature_slice_name: project_detail_state_slice
    local_or_boundary_aware: local
    upstream_deliverables:
      - module_map
      - state_event_matrix
      - screen_to_usecase_map
    readiness: ready_when_pf_imp_001_and_002_reviewed

  - order_no: 3
    feature_slice_name: task_feature_slice
    local_or_boundary_aware: local
    upstream_deliverables:
      - module_map
      - state_event_matrix
      - screen_to_usecase_map
    readiness: ready_when_pf_imp_001_and_002_reviewed

  - order_no: 4
    feature_slice_name: customer_material_slice_group
    local_or_boundary_aware: mostly_local
    upstream_deliverables:
      - customer_material_slice_plan
      - material_adapter_map
      - state_event_matrix
    readiness: ready_when_pf_imp_004_reviewed

  - order_no: 5
    feature_slice_name: sync_status_ui_slice
    local_or_boundary_aware: boundary_aware
    upstream_deliverables:
      - cache_sync_plan
      - sync_visibility_note
    readiness: ready_when_pf_imp_005_reviewed_and_boundary_clear_enough

  - order_no: 6
    feature_slice_name: local_repository_slice
    local_or_boundary_aware: boundary_aware
    upstream_deliverables:
      - repository_gateway_map
      - boundary_split_note
    readiness: ready_when_pf_imp_003_reviewed

  - order_no: 7
    feature_slice_name: businessos_gateway_slice
    local_or_boundary_aware: boundary_aware
    upstream_deliverables:
      - repository_gateway_map
      - boundary_split_note
      - exact_mediated_payload_direction
    readiness: ready_when_pf_imp_003_reviewed_and_boundary_clear

important_rule:
Boundary-aware slices remain later than core local slices
unless their prerequisites are explicitly confirmed.

# ============================================================
# PROJECT FLOW FEATURE SLICE SEQUENCE NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Explains the preferred execution order
for early feature-slice planning.

sequence_reasoning:
- start from local UI/state slices that depend only on reviewed local deliverables
- continue into customer-material slices once material planning outputs are reviewed
- move to sync and repository/gateway slices only after boundary-aware deliverables are reviewed
- keep BusinessOS-facing gateway slices last among early slices
  because they are most sensitive to external boundary interpretation

important_rule:
This sequence optimizes for stable local progress first
and boundary-sensitive work second.

# ============================================================
# PROJECT FLOW FEATURE SLICE DELIVERABLE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining deliverables
for feature-slice planning.

template_fields:
- feature_slice_name
- local_or_boundary_aware
- upstream_deliverables
- deliverable_name
- deliverable_type
- objective
- expected_outputs
- completion_condition
- blocked_by
- notes

deliverable_type_candidates:
- ui_state_slice_note
- action_routing_note
- viewmodel_boundary_note
- repository_split_note
- gateway_split_note
- material_slice_note
- cache_sync_slice_note

# ============================================================
# PROJECT FLOW FEATURE SLICE COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the early feature slices.

completion_matrix:

dashboard_ui_state_slice:
- expected_deliverables:
  - ui_state_slice_note
  - action_routing_note
- completion_condition:
  - dashboard state areas are explicit
  - dashboard actions map to local use cases explicitly

project_detail_state_slice:
- expected_deliverables:
  - ui_state_slice_note
  - viewmodel_boundary_note
- completion_condition:
  - project detail tabs and state areas are explicit
  - ERP reference versus local editable sections stay separated

task_feature_slice:
- expected_deliverables:
  - ui_state_slice_note
  - action_routing_note
- completion_condition:
  - task state changes and task actions are explicit
  - task list/detail planning split is explicit

customer_material_slice_group:
- expected_deliverables:
  - material_slice_note
  - action_routing_note
- completion_condition:
  - six standard material slices are explicit
  - review-aware export flow is explicit

sync_status_ui_slice:
- expected_deliverables:
  - cache_sync_slice_note
  - action_routing_note
- completion_condition:
  - sync status grouping and retry surface are explicit
  - mediated status visibility remains distinct from business truth

local_repository_slice:
- expected_deliverables:
  - repository_split_note
- completion_condition:
  - local repositories are grouped by feature or domain clearly
  - repository ownership stays local and explicit

businessos_gateway_slice:
- expected_deliverables:
  - gateway_split_note
  - viewmodel_boundary_note
- completion_condition:
  - BusinessOS-facing gateways are explicit
  - mediated payload entry points remain explicit
  - blocked boundary assumptions are not silently bypassed

# ============================================================
# PROJECT FLOW FEATURE SLICE REVIEW TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reviewing feature-slice planning deliverables.

review_template_fields:
- feature_slice_name
- reviewer
- review_date
- review_result: pass_or_partial_or_hold
- deliverables_reviewed
- ownership_clarity_ok: yes_no
- boundary_clarity_ok: yes_no
- blocked_conditions_still_visible: yes_no
- followup_actions
- notes

review_rules:
- pass means the slice is usable as next-step planning input
- partial means only explicitly usable parts may continue
- hold means the slice must not unlock downstream planning yet

# ============================================================
# PROJECT FLOW FEATURE SLICE APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for approving feature-slice planning outputs.

approval_template_fields:
- feature_slice_name
- approval_date
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_slices
- notes

approval_rules:
- approval applies to planning outputs only
- partial approval must keep blocked scope explicit
- no downstream slice should start from unapproved blocked scope

# ============================================================
# PROJECT FLOW FEATURE SLICE REVIEW AND APPROVAL FLOW
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the review and approval flow for feature slices.

flow:
1. feature-slice planning deliverables are produced
2. slice review is executed
3. review result is recorded
4. approval decision is recorded if usable
5. next allowed slices are chosen from approved scope
6. blocked or partial areas remain explicit

important_rules:
- review result and approval result remain distinct
- partial approval does not unlock full downstream scope
- blocked boundary-sensitive scope remains visible

# ============================================================
# PROJECT FLOW FEATURE SLICE EXECUTION RECORD TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording execution status
for feature-slice planning.

execution_record_fields:
- feature_slice_name
- local_or_boundary_aware
- execution_started: yes_no
- execution_status: not_started_or_in_progress_or_paused_or_done
- start_date
- pause_reason
- upstream_deliverables_confirmed: yes_no
- current_outputs
- review_status
- approval_status
- next_followup
- notes

recording_rules:
- paused slices must record pause reason explicitly
- boundary-aware slices must keep blocked conditions visible
- done status should list produced planning outputs explicitly

# ============================================================
# PROJECT FLOW FEATURE SLICE PROGRESS SUMMARY TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for summarizing multiple feature-slice states.

summary_fields:
- summary_date
- local_slices_not_started
- local_slices_in_progress
- local_slices_done
- boundary_aware_slices_not_started
- boundary_aware_slices_in_progress
- boundary_aware_slices_blocked
- paused_slices
- major_pause_or_block_reasons
- next_recommended_slice

# ============================================================
# PROJECT FLOW FEATURE SLICE REOPEN TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reopening a paused or blocked feature slice safely.

reopen_template_fields:
- feature_slice_name
- previous_status: paused_or_blocked
- reopen_request_date
- reopen_reason
- upstream_deliverables_rechecked: yes_no
- blocked_condition_resolved: yes_no
- boundary_check_rerun_needed: yes_no
- safe_to_reopen: yes_no
- reopen_notes

reopen_rules:
- blocked slices may reopen only after explicit blocked-condition review
- paused slices may reopen only after pause reason is re-evaluated
- boundary-aware slices require boundary recheck when needed

# ============================================================
# PROJECT FLOW FEATURE SLICE BLOCKED TO REOPEN FLOW
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the basic flow from blocked or paused feature slice
to possible reopen.

flow:
1. identify paused or blocked slice
2. identify pause reason or blocked condition
3. confirm upstream deliverables are still usable
4. rerun boundary check if slice is boundary-aware
5. reopen only if safe-to-reopen is confirmed
6. update execution record explicitly

important_rules:
- reopening is not automatic
- blocked boundary-aware slices require explicit recheck
- unresolved blocked conditions keep the slice blocked

# ============================================================
# PROJECT FLOW CODING START ENTRY NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a practical starting note
for moving from feature-slice planning into coding-start planning.

coding_start_should_begin_from:
- approved feature-slice outputs
- reviewed package deliverables
- final module structure notes
- final action authority,
  ownership,
  editability,
  and state-transition notes
- explicit shared/local component decisions where relevant

coding_start_should_separate:
- immediately-codable local scope
- boundary-aware but confirmed scope
- still-blocked scope

important_rule:
Coding-start planning should not reopen
stable design assumptions or blocked boundary areas without explicit reason.

# ============================================================
# PROJECT FLOW CODING START CHECK TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for checking whether a slice or scope
is ready for coding-start planning.

check_fields:
- target_scope
- upstream_slice_review_passed: yes_no
- upstream_slice_approval_recorded: yes_no
- blocked_scope_excluded: yes_no
- shared_local_decision_recorded_if_needed: yes_no
- safe_to_begin_coding_start_planning: yes_no
- notes

# ============================================================
# PROJECT FLOW CODING START WORK PACKAGE STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended work packages
for coding-start planning.

starter_work_packages:

PF-CODE-001:
- package_name: Module Package Skeleton Breakdown
- scope_type: coding_start_local
- objective: break approved module and package ownership into coding-start scopes
- prerequisite_documents:
  - 0200041_PROJECT_FLOW_FINAL_MODULE_AND_RUNTIME_ARCHITECTURE.md
  - 0900135_PROJECT_FLOW_CODING_START_ENTRY_NOTE.md
  - approved module and slice outputs

PF-CODE-002:
- package_name: Screen ViewModel Boundary Breakdown
- scope_type: coding_start_local
- objective: break screen/state slices into viewmodel and state-holder scopes
- prerequisite_documents:
  - approved state_event_matrix related outputs
  - approved screen_to_usecase_map related outputs

PF-CODE-003:
- package_name: Repository Contract Breakdown
- scope_type: coding_start_boundary_aware
- objective: break approved repository/gateway slices into code-start contracts
- prerequisite_documents:
  - approved repository_gateway_map
  - approved boundary_split_note
  - shared/local component decisions where relevant

PF-CODE-004:
- package_name: Customer Material Flow Breakdown
- scope_type: coding_start_local
- objective: break customer material slices into coding-start surfaces and flows
- prerequisite_documents:
  - approved customer_material_slice_plan
  - approved material_adapter_map

PF-CODE-005:
- package_name: Cache and Sync Surface Breakdown
- scope_type: coding_start_boundary_aware
- objective: break approved cache/sync planning into coding-start surfaces
- prerequisite_documents:
  - approved cache_sync_plan
  - approved sync_visibility_note

# ============================================================
# PROJECT FLOW CODING START SEQUENCE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for deciding early coding-start order.

sequence_template:
1. confirm coding-start check
2. confirm approved slice outputs and blocked-scope exclusion
3. start with module package skeleton breakdown
4. continue with screen viewmodel boundary breakdown
5. continue with customer material flow breakdown
6. continue with repository contract breakdown
7. continue with cache and sync surface breakdown
8. split follow-on coding-start units from approved outputs

important_rules:
- do not start from unapproved slice outputs
- do not include blocked scope
- keep local and boundary-aware coding-start packages distinct

# ============================================================
# PROJECT FLOW CODING START DELIVERABLE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining deliverables
for coding-start planning packages.

deliverable_template_fields:
- package_id
- package_name
- deliverable_name
- deliverable_type
- objective
- source_documents
- output_format
- completion_condition
- blocked_by
- notes

deliverable_type_candidates:
- package_breakdown_map
- state_holder_breakdown
- viewmodel_boundary_map
- repository_contract_map
- gateway_contract_map
- material_flow_breakdown
- cache_sync_surface_breakdown

# ============================================================
# PROJECT FLOW CODING START COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the first coding-start work packages.

completion_matrix:

PF-CODE-001:
- package_name: Module Package Skeleton Breakdown
- expected_deliverables:
  - package_breakdown_map
- completion_condition:
  - each target module has coding-start package ownership defined
  - local feature package boundaries are explicit
  - integration-businessos package boundary remains explicit

PF-CODE-002:
- package_name: Screen ViewModel Boundary Breakdown
- expected_deliverables:
  - state_holder_breakdown
  - viewmodel_boundary_map
- completion_condition:
  - each starter screen has state-holder scope defined
  - viewmodel responsibility boundary is explicit
  - blocked boundary-aware concerns are excluded from local screen boundary

PF-CODE-003:
- package_name: Repository Contract Breakdown
- expected_deliverables:
  - repository_contract_map
  - gateway_contract_map
- completion_condition:
  - local repository contracts are explicit
  - BusinessOS-facing gateway contracts are explicit
  - shared/local ownership assumptions remain explicit

PF-CODE-004:
- package_name: Customer Material Flow Breakdown
- expected_deliverables:
  - material_flow_breakdown
- completion_condition:
  - six customer material flows are split into code-start surfaces
  - review-aware export path remains explicit
  - local composition versus shared shell usage remains explicit

PF-CODE-005:
- package_name: Cache and Sync Surface Breakdown
- expected_deliverables:
  - cache_sync_surface_breakdown
- completion_condition:
  - cache surfaces and sync visibility surfaces are explicit
  - retry and sync-state visibility remain separate from business truth
  - blocked boundary-sensitive concerns remain excluded

# ============================================================
# PROJECT FLOW CODING START REVIEW TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reviewing coding-start planning deliverables.

review_template_fields:
- package_id
- package_name
- reviewer
- review_date
- review_result: pass_or_partial_or_hold
- deliverables_reviewed
- ownership_clarity_ok: yes_no
- boundary_clarity_ok: yes_no
- blocked_conditions_still_visible: yes_no
- followup_actions
- notes

review_rules:
- pass means the coding-start planning deliverable
  is usable as next-step coding-scope input
- partial means only explicitly usable parts may continue
- hold means the deliverable must not unlock downstream coding-scope planning yet

# ============================================================
# PROJECT FLOW CODING START APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for approving coding-start planning outputs.

approval_template_fields:
- package_id
- package_name
- approval_date
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_coding_units
- notes

approval_rules:
- approval applies to coding-start planning output only
- partial approval must keep blocked scope explicit
- no downstream coding unit should start from unapproved blocked scope

# ============================================================
# PROJECT FLOW CODING START REVIEW AND APPROVAL FLOW
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the review and approval flow for coding-start planning packages.

flow:
1. coding-start planning deliverables are produced
2. deliverable review is executed
3. review result is recorded
4. approval decision is recorded if usable
5. next allowed coding units are chosen from approved scope
6. blocked or partial areas remain explicit

important_rules:
- review result and approval result remain distinct
- partial approval does not unlock full downstream scope
- blocked boundary-sensitive scope remains visible

# ============================================================
# PROJECT FLOW CODING START EXECUTION RECORD TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording execution status
for coding-start planning packages.

execution_record_fields:
- package_id
- package_name
- local_or_boundary_aware
- execution_started: yes_no
- execution_status: not_started_or_in_progress_or_paused_or_done
- start_date
- pause_reason
- upstream_outputs_confirmed: yes_no
- current_outputs
- review_status
- approval_status
- next_followup
- notes

recording_rules:
- paused packages must record pause reason explicitly
- boundary-aware packages must keep blocked conditions visible
- done status should list produced planning outputs explicitly

# ============================================================
# PROJECT FLOW CODING START PROGRESS SUMMARY TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for summarizing multiple coding-start package states.

summary_fields:
- summary_date
- local_packages_not_started
- local_packages_in_progress
- local_packages_done
- boundary_aware_packages_not_started
- boundary_aware_packages_in_progress
- boundary_aware_packages_blocked
- paused_packages
- major_pause_or_block_reasons
- next_recommended_package

# ============================================================
# PROJECT FLOW CODING START REOPEN TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reopening a paused or blocked coding-start package safely.

reopen_template_fields:
- package_id
- package_name
- previous_status: paused_or_blocked
- reopen_request_date
- reopen_reason
- upstream_outputs_rechecked: yes_no
- blocked_condition_resolved: yes_no
- boundary_check_rerun_needed: yes_no
- safe_to_reopen: yes_no
- reopen_notes

reopen_rules:
- blocked packages may reopen only after explicit blocked-condition review
- paused packages may reopen only after pause reason is re-evaluated
- boundary-aware packages require boundary recheck when needed

# ============================================================
# PROJECT FLOW CODING START BLOCKED TO REOPEN FLOW
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the basic flow from blocked or paused coding-start package
to possible reopen.

flow:
1. identify paused or blocked coding-start package
2. identify pause reason or blocked condition
3. confirm upstream outputs are still usable
4. rerun boundary check if package is boundary-aware
5. reopen only if safe-to-reopen is confirmed
6. update execution record explicitly

important_rules:
- reopening is not automatic
- blocked boundary-aware packages require explicit recheck
- unresolved blocked conditions keep the package blocked

# ============================================================
# PROJECT FLOW CODING START DEPENDENCY MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines dependency relations between the first coding-start packages.

dependency_matrix:

PF-CODE-001:
- package_name: Module Package Skeleton Breakdown
- depends_on:
  - coding_start_entry_confirmed
- blocks:
  - PF-CODE-002
  - PF-CODE-003
  - PF-CODE-005

PF-CODE-002:
- package_name: Screen ViewModel Boundary Breakdown
- depends_on:
  - PF-CODE-001
- blocks:
  - PF-CODE-004
  - later screen-unit breakdown

PF-CODE-003:
- package_name: Repository Contract Breakdown
- depends_on:
  - PF-CODE-001
  - approved repository_gateway_map
  - approved boundary_split_note
- blocks:
  - later repository unit breakdown
  - later gateway unit breakdown

PF-CODE-004:
- package_name: Customer Material Flow Breakdown
- depends_on:
  - PF-CODE-002
  - approved customer_material_slice_plan
  - approved material_adapter_map
- blocks:
  - later material unit breakdown

PF-CODE-005:
- package_name: Cache and Sync Surface Breakdown
- depends_on:
  - PF-CODE-001
  - approved cache_sync_plan
  - approved sync_visibility_note
- blocks:
  - later cache and sync unit breakdown

important_rule:
A coding-start package may start only when its upstream approved outputs are available.

# ============================================================
# PROJECT FLOW CODING START EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an execution ledger for early coding-start planning packages.

execution_ledger:

  - order_no: 1
    package_id: PF-CODE-001
    package_name: Module Package Skeleton Breakdown
    local_or_boundary_aware: local
    readiness: ready_first
    expected_output:
      - package_breakdown_map

  - order_no: 2
    package_id: PF-CODE-002
    package_name: Screen ViewModel Boundary Breakdown
    local_or_boundary_aware: local
    readiness: ready_after_pf_code_001
    expected_output:
      - state_holder_breakdown
      - viewmodel_boundary_map

  - order_no: 3
    package_id: PF-CODE-004
    package_name: Customer Material Flow Breakdown
    local_or_boundary_aware: local
    readiness: ready_after_pf_code_002
    expected_output:
      - material_flow_breakdown

  - order_no: 4
    package_id: PF-CODE-005
    package_name: Cache and Sync Surface Breakdown
    local_or_boundary_aware: boundary_aware
    readiness: ready_after_pf_code_001_and_boundary_clear_enough
    expected_output:
      - cache_sync_surface_breakdown

  - order_no: 5
    package_id: PF-CODE-003
    package_name: Repository Contract Breakdown
    local_or_boundary_aware: boundary_aware
    readiness: ready_after_pf_code_001_and_confirmed_boundary_outputs
    expected_output:
      - repository_contract_map
      - gateway_contract_map

important_rule:
Boundary-aware coding-start packages remain later than core local packages
unless prerequisites are explicitly confirmed.

# ============================================================
# PROJECT FLOW CODING START POST REVIEW BRANCH TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for deciding what happens after coding-start package review and approval.

template_fields:
- package_id
- package_name
- review_result: pass_or_partial_or_hold
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_coding_units
- still_blocked_units
- followup_actions
- notes

rules:
- pass plus approved unlocks next coding-unit planning
- partial approval unlocks only explicitly approved scope
- hold or not-approved unlocks nothing downstream

# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK ENTRY NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a practical starting note
for moving from coding-start planning into actual implementation task breakdown.

actual_implementation_should_begin_from:
- approved coding-start outputs
- approved package_breakdown_map
- approved state_holder_breakdown
- approved viewmodel_boundary_map
- approved repository_contract_map and gateway_contract_map where relevant
- approved material_flow_breakdown
- approved cache_sync_surface_breakdown where relevant

actual_implementation_should_separate:
- immediately-codable local tasks
- confirmed boundary-aware tasks
- still-blocked tasks

important_rule:
Actual implementation task breakdown should not reopen
stable design assumptions,
blocked scope,
or unresolved boundary concerns without explicit reason.

# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK CHECK TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for checking whether a scope is ready
for actual implementation task breakdown.

check_fields:
- target_scope
- coding_start_review_passed: yes_no
- coding_start_approval_recorded: yes_no
- blocked_scope_excluded: yes_no
- shared_local_decision_recorded_if_needed: yes_no
- safe_to_begin_actual_implementation_task_breakdown: yes_no
- notes

# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended actual implementation task set.

starter_tasks:

PF-TASK-001:
- task_name: app-projectflow module skeleton task
- task_group: module skeleton
- scope_type: actual_impl_local
- prerequisites:
  - approved package_breakdown_map

PF-TASK-002:
- task_name: feature-dashboard package skeleton task
- task_group: module skeleton
- scope_type: actual_impl_local
- prerequisites:
  - approved package_breakdown_map

PF-TASK-003:
- task_name: dashboard state-holder task
- task_group: screen state-holder
- scope_type: actual_impl_local
- prerequisites:
  - approved state_holder_breakdown
  - approved viewmodel_boundary_map

PF-TASK-004:
- task_name: project detail state-holder task
- task_group: screen state-holder
- scope_type: actual_impl_local
- prerequisites:
  - approved state_holder_breakdown
  - approved viewmodel_boundary_map

PF-TASK-005:
- task_name: customer material flow skeleton task
- task_group: customer material flow
- scope_type: actual_impl_local
- prerequisites:
  - approved material_flow_breakdown

PF-TASK-006:
- task_name: local repository contract skeleton task
- task_group: repository contract
- scope_type: actual_impl_boundary_aware
- prerequisites:
  - approved repository_contract_map
  - blocked scope excluded

PF-TASK-007:
- task_name: BusinessOS gateway contract skeleton task
- task_group: gateway contract
- scope_type: actual_impl_boundary_aware
- prerequisites:
  - approved gateway_contract_map
  - confirmed boundary-safe scope only

PF-TASK-008:
- task_name: cache and sync surface skeleton task
- task_group: cache and sync surface
- scope_type: actual_impl_boundary_aware
- prerequisites:
  - approved cache_sync_surface_breakdown
  - blocked scope excluded

# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a first-wave execution ledger
for actual implementation tasks.

execution_ledger:

  - order_no: 1
    task_id: PF-TASK-001
    task_name: app-projectflow module skeleton task
    scope_type: actual_impl_local
    readiness: ready_first

  - order_no: 2
    task_id: PF-TASK-002
    task_name: feature-dashboard package skeleton task
    scope_type: actual_impl_local
    readiness: ready_after_app_module_skeleton

  - order_no: 3
    task_id: PF-TASK-003
    task_name: dashboard state-holder task
    scope_type: actual_impl_local
    readiness: ready_after_dashboard_package_skeleton

  - order_no: 4
    task_id: PF-TASK-004
    task_name: project detail state-holder task
    scope_type: actual_impl_local
    readiness: ready_after_core_screen_boundary_outputs

  - order_no: 5
    task_id: PF-TASK-005
    task_name: customer material flow skeleton task
    scope_type: actual_impl_local
    readiness: ready_after_material_flow_breakdown

  - order_no: 6
    task_id: PF-TASK-008
    task_name: cache and sync surface skeleton task
    scope_type: actual_impl_boundary_aware
    readiness: ready_after_boundary-safe cache_sync approval

  - order_no: 7
    task_id: PF-TASK-006
    task_name: local repository contract skeleton task
    scope_type: actual_impl_boundary_aware
    readiness: ready_after_repository_contract approval

  - order_no: 8
    task_id: PF-TASK-007
    task_name: BusinessOS gateway contract skeleton task
    scope_type: actual_impl_boundary_aware
    readiness: ready_after_gateway_contract approval and boundary-safe scope confirmation

important_rule:
Boundary-aware tasks remain later than core local tasks
unless explicitly confirmed safe.

# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK DELIVERABLE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining deliverables
for actual implementation tasks.

template_fields:
- task_id
- task_name
- deliverable_name
- deliverable_type
- objective
- source_outputs
- completion_condition
- blocked_by
- notes

deliverable_type_candidates:
- module_skeleton
- package_skeleton
- state_holder_stub
- viewmodel_stub
- repository_contract_stub
- gateway_contract_stub
- material_flow_stub
- cache_sync_stub

# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK REVIEW TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reviewing actual implementation task outputs.

review_template_fields:
- task_id
- task_name
- reviewer
- review_date
- review_result: pass_or_partial_or_hold
- outputs_reviewed
- ownership_boundary_preserved: yes_no
- blocked_scope_excluded: yes_no
- followup_actions
- notes

review_rules:
- pass means the task output is usable for downstream task breakdown
- partial means only explicitly usable outputs may continue
- hold means downstream dependent tasks should not unlock yet

# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the first actual implementation tasks.

completion_matrix:

PF-TASK-001:
- task_name: app-projectflow module skeleton task
- expected_deliverables:
  - module_skeleton
- completion_condition:
  - app entry module skeleton exists
  - top-level package ownership remains explicit

PF-TASK-002:
- task_name: feature-dashboard package skeleton task
- expected_deliverables:
  - package_skeleton
- completion_condition:
  - dashboard package skeleton exists
  - package boundary aligns with approved package_breakdown_map

PF-TASK-003:
- task_name: dashboard state-holder task
- expected_deliverables:
  - state_holder_stub
  - viewmodel_stub
- completion_condition:
  - dashboard state-holder scope is materialized
  - dashboard state routing aligns with approved local scope

PF-TASK-004:
- task_name: project detail state-holder task
- expected_deliverables:
  - state_holder_stub
  - viewmodel_stub
- completion_condition:
  - project detail state-holder scope is materialized
  - ERP reference versus local editable sections remain separated

PF-TASK-005:
- task_name: customer material flow skeleton task
- expected_deliverables:
  - material_flow_stub
- completion_condition:
  - six standard material flow entry points are represented
  - review-aware export path remains explicit

PF-TASK-006:
- task_name: local repository contract skeleton task
- expected_deliverables:
  - repository_contract_stub
- completion_condition:
  - local repository contract skeleton exists
  - local repository ownership remains explicit

PF-TASK-007:
- task_name: BusinessOS gateway contract skeleton task
- expected_deliverables:
  - gateway_contract_stub
- completion_condition:
  - BusinessOS-facing gateway contract skeleton exists
  - blocked boundary scope is still excluded

PF-TASK-008:
- task_name: cache and sync surface skeleton task
- expected_deliverables:
  - cache_sync_stub
- completion_condition:
  - cache and sync entry surfaces exist
  - sync visibility remains separate from business truth

# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for approving actual implementation task outputs.

approval_template_fields:
- task_id
- task_name
- approval_date
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_tasks
- notes

approval_rules:
- approval applies only to explicit task outputs
- partial approval must keep blocked scope explicit
- blocked scope must not unlock dependent tasks

# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK EXECUTION RECORD TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording execution status
for actual implementation tasks.

execution_record_fields:
- task_id
- task_name
- scope_type
- execution_started: yes_no
- execution_status: not_started_or_in_progress_or_paused_or_done
- start_date
- pause_reason
- prerequisite_outputs_confirmed: yes_no
- current_outputs
- review_status
- approval_status
- next_followup
- notes

recording_rules:
- paused tasks must record pause reason explicitly
- boundary-aware tasks must keep blocked conditions visible
- done status should list produced outputs explicitly

# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK REOPEN TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reopening a paused or blocked actual implementation task safely.

reopen_template_fields:
- task_id
- task_name
- previous_status: paused_or_blocked
- reopen_request_date
- reopen_reason
- prerequisite_outputs_rechecked: yes_no
- blocked_condition_resolved: yes_no
- boundary_check_rerun_needed: yes_no
- safe_to_reopen: yes_no
- reopen_notes

reopen_rules:
- blocked tasks may reopen only after explicit blocked-condition review
- paused tasks may reopen only after pause reason is re-evaluated
- boundary-aware tasks require boundary recheck when needed

# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK TO NEXT UNIT LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps first-wave actual implementation tasks
to likely next implementation units.

task_to_next_unit_ledger:

PF-TASK-001:
- unlocks:
  - app entry wiring unit
  - root navigation unit

PF-TASK-002:
- unlocks:
  - dashboard UI container unit
  - dashboard action routing unit

PF-TASK-003:
- unlocks:
  - dashboard state reducer unit
  - dashboard viewmodel unit

PF-TASK-004:
- unlocks:
  - project detail state reducer unit
  - project detail tab routing unit

PF-TASK-005:
- unlocks:
  - customer material preview unit
  - customer material export routing unit

PF-TASK-006:
- unlocks:
  - local repository implementation unit
  - local data-source binding unit

PF-TASK-007:
- unlocks:
  - BusinessOS gateway implementation unit
  - mediated request adapter unit

PF-TASK-008:
- unlocks:
  - sync visibility unit
  - cache refresh unit

important_rule:
No next unit is unlocked until task outputs are reviewed
and approved in usable scope.

# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended next implementation units.

starter_units:

PF-UNIT-001:
- unit_name: app entry wiring unit
- source_task:
  - PF-TASK-001
- scope_type: implementation_unit_local
- prerequisites:
  - approved module_skeleton

PF-UNIT-002:
- unit_name: root navigation unit
- source_task:
  - PF-TASK-001
- scope_type: implementation_unit_local
- prerequisites:
  - approved module_skeleton

PF-UNIT-003:
- unit_name: dashboard UI container unit
- source_task:
  - PF-TASK-002
- scope_type: implementation_unit_local
- prerequisites:
  - approved package_skeleton

PF-UNIT-004:
- unit_name: dashboard state reducer unit
- source_task:
  - PF-TASK-003
- scope_type: implementation_unit_local
- prerequisites:
  - approved state_holder_stub

PF-UNIT-005:
- unit_name: dashboard viewmodel unit
- source_task:
  - PF-TASK-003
- scope_type: implementation_unit_local
- prerequisites:
  - approved viewmodel_stub

PF-UNIT-006:
- unit_name: project detail state reducer unit
- source_task:
  - PF-TASK-004
- scope_type: implementation_unit_local
- prerequisites:
  - approved state_holder_stub

PF-UNIT-007:
- unit_name: customer material preview unit
- source_task:
  - PF-TASK-005
- scope_type: implementation_unit_local
- prerequisites:
  - approved material_flow_stub

PF-UNIT-008:
- unit_name: customer material export routing unit
- source_task:
  - PF-TASK-005
- scope_type: implementation_unit_local
- prerequisites:
  - approved material_flow_stub

PF-UNIT-009:
- unit_name: local repository implementation unit
- source_task:
  - PF-TASK-006
- scope_type: implementation_unit_boundary_aware
- prerequisites:
  - approved repository_contract_stub
  - blocked scope excluded

PF-UNIT-010:
- unit_name: BusinessOS gateway implementation unit
- source_task:
  - PF-TASK-007
- scope_type: implementation_unit_boundary_aware
- prerequisites:
  - approved gateway_contract_stub
  - confirmed boundary-safe scope only

PF-UNIT-011:
- unit_name: sync visibility unit
- source_task:
  - PF-TASK-008
- scope_type: implementation_unit_boundary_aware
- prerequisites:
  - approved cache_sync_stub
  - blocked scope excluded

PF-UNIT-012:
- unit_name: cache refresh unit
- source_task:
  - PF-TASK-008
- scope_type: implementation_unit_boundary_aware
- prerequisites:
  - approved cache_sync_stub
  - blocked scope excluded

# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an execution ledger
for early next implementation units.

execution_ledger:

  - order_no: 1
    unit_id: PF-UNIT-001
    unit_name: app entry wiring unit
    scope_type: implementation_unit_local
    readiness: ready_first

  - order_no: 2
    unit_id: PF-UNIT-002
    unit_name: root navigation unit
    scope_type: implementation_unit_local
    readiness: ready_after_app_entry_wiring

  - order_no: 3
    unit_id: PF-UNIT-003
    unit_name: dashboard UI container unit
    scope_type: implementation_unit_local
    readiness: ready_after_dashboard_package_skeleton

  - order_no: 4
    unit_id: PF-UNIT-004
    unit_name: dashboard state reducer unit
    scope_type: implementation_unit_local
    readiness: ready_after_dashboard_state_holder

  - order_no: 5
    unit_id: PF-UNIT-005
    unit_name: dashboard viewmodel unit
    scope_type: implementation_unit_local
    readiness: ready_after_dashboard_state_holder

  - order_no: 6
    unit_id: PF-UNIT-006
    unit_name: project detail state reducer unit
    scope_type: implementation_unit_local
    readiness: ready_after_project_detail_state_holder

  - order_no: 7
    unit_id: PF-UNIT-007
    unit_name: customer material preview unit
    scope_type: implementation_unit_local
    readiness: ready_after_material_flow_stub

  - order_no: 8
    unit_id: PF-UNIT-008
    unit_name: customer material export routing unit
    scope_type: implementation_unit_local
    readiness: ready_after_material_flow_stub

  - order_no: 9
    unit_id: PF-UNIT-011
    unit_name: sync visibility unit
    scope_type: implementation_unit_boundary_aware
    readiness: ready_after_cache_sync_stub_and_boundary_safe_scope

  - order_no: 10
    unit_id: PF-UNIT-012
    unit_name: cache refresh unit
    scope_type: implementation_unit_boundary_aware
    readiness: ready_after_cache_sync_stub_and_boundary_safe_scope

  - order_no: 11
    unit_id: PF-UNIT-009
    unit_name: local repository implementation unit
    scope_type: implementation_unit_boundary_aware
    readiness: ready_after_repository_contract_stub

  - order_no: 12
    unit_id: PF-UNIT-010
    unit_name: BusinessOS gateway implementation unit
    scope_type: implementation_unit_boundary_aware
    readiness: ready_after_gateway_contract_stub_and_boundary_safe_scope

important_rule:
Boundary-aware implementation units remain later than core local units
unless explicitly confirmed safe.

# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT DELIVERABLE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining deliverables
for next implementation units.

template_fields:
- unit_id
- unit_name
- deliverable_name
- deliverable_type
- objective
- source_outputs
- completion_condition
- blocked_by
- notes

deliverable_type_candidates:
- entry_wiring_unit
- navigation_unit
- ui_container_unit
- state_reducer_unit
- viewmodel_unit
- preview_unit
- export_routing_unit
- repository_impl_unit
- gateway_impl_unit
- sync_visibility_unit
- cache_refresh_unit

# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT REVIEW TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reviewing next implementation unit outputs.

review_template_fields:
- unit_id
- unit_name
- reviewer
- review_date
- review_result: pass_or_partial_or_hold
- outputs_reviewed
- ownership_boundary_preserved: yes_no
- blocked_scope_excluded: yes_no
- followup_actions
- notes

review_rules:
- pass means the unit output is usable for downstream unit unlock
- partial means only explicitly usable outputs may continue
- hold means downstream dependent units should not unlock yet

# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the first next implementation units.

completion_matrix:

PF-UNIT-001:
- unit_name: app entry wiring unit
- expected_deliverables:
  - entry_wiring_unit
- completion_condition:
  - app entry wiring is explicit
  - root entry ownership remains explicit

PF-UNIT-002:
- unit_name: root navigation unit
- expected_deliverables:
  - navigation_unit
- completion_condition:
  - root navigation flow is explicit
  - major entry routes remain explicit

PF-UNIT-003:
- unit_name: dashboard UI container unit
- expected_deliverables:
  - ui_container_unit
- completion_condition:
  - dashboard container structure is explicit
  - local orchestration remains preserved

PF-UNIT-004:
- unit_name: dashboard state reducer unit
- expected_deliverables:
  - state_reducer_unit
- completion_condition:
  - dashboard state reducer scope is explicit
  - state transitions remain aligned with approved planning

PF-UNIT-005:
- unit_name: dashboard viewmodel unit
- expected_deliverables:
  - viewmodel_unit
- completion_condition:
  - dashboard viewmodel responsibility is explicit
  - action routing remains aligned with approved planning

PF-UNIT-006:
- unit_name: project detail state reducer unit
- expected_deliverables:
  - state_reducer_unit
- completion_condition:
  - project detail state reducer scope is explicit
  - ERP reference versus local editable scope remains separated

PF-UNIT-007:
- unit_name: customer material preview unit
- expected_deliverables:
  - preview_unit
- completion_condition:
  - customer material preview flow is explicit
  - local wording adjustment area remains explicit

PF-UNIT-008:
- unit_name: customer material export routing unit
- expected_deliverables:
  - export_routing_unit
- completion_condition:
  - export routing is explicit
  - review-aware export boundary remains explicit

PF-UNIT-009:
- unit_name: local repository implementation unit
- expected_deliverables:
  - repository_impl_unit
- completion_condition:
  - local repository implementation scope is explicit
  - local ownership remains explicit

PF-UNIT-010:
- unit_name: BusinessOS gateway implementation unit
- expected_deliverables:
  - gateway_impl_unit
- completion_condition:
  - BusinessOS gateway implementation scope is explicit
  - blocked boundary scope remains excluded

PF-UNIT-011:
- unit_name: sync visibility unit
- expected_deliverables:
  - sync_visibility_unit
- completion_condition:
  - sync visibility behavior is explicit
  - sync state remains distinct from business truth

PF-UNIT-012:
- unit_name: cache refresh unit
- expected_deliverables:
  - cache_refresh_unit
- completion_condition:
  - cache refresh behavior is explicit
  - mediated refresh assumptions remain explicit

# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for approving next implementation unit outputs.

approval_template_fields:
- unit_id
- unit_name
- approval_date
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_units
- notes

approval_rules:
- approval applies only to explicit unit outputs
- partial approval must keep blocked scope explicit
- blocked scope must not unlock dependent units

# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT EXECUTION RECORD TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording execution status
for next implementation units.

execution_record_fields:
- unit_id
- unit_name
- scope_type
- execution_started: yes_no
- execution_status: not_started_or_in_progress_or_paused_or_done
- start_date
- pause_reason
- prerequisite_outputs_confirmed: yes_no
- current_outputs
- review_status
- approval_status
- next_followup
- notes

recording_rules:
- paused units must record pause reason explicitly
- boundary-aware units must keep blocked conditions visible
- done status should list produced outputs explicitly

# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT REOPEN TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reopening a paused or blocked next implementation unit safely.

reopen_template_fields:
- unit_id
- unit_name
- previous_status: paused_or_blocked
- reopen_request_date
- reopen_reason
- prerequisite_outputs_rechecked: yes_no
- blocked_condition_resolved: yes_no
- boundary_check_rerun_needed: yes_no
- safe_to_reopen: yes_no
- reopen_notes

reopen_rules:
- blocked units may reopen only after explicit blocked-condition review
- paused units may reopen only after pause reason is re-evaluated
- boundary-aware units require boundary recheck when needed

# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT TO CONCRETE CODING LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps next implementation units
to likely concrete coding work groups.

unit_to_concrete_coding_ledger:

PF-UNIT-001:
- unlocks:
  - app entry file task group
  - root bootstrap wiring task group

PF-UNIT-002:
- unlocks:
  - root navigation graph task group
  - entry route dispatch task group

PF-UNIT-003:
- unlocks:
  - dashboard container composable task group
  - dashboard screen assembly task group

PF-UNIT-004:
- unlocks:
  - dashboard reducer implementation task group
  - dashboard state mutation task group

PF-UNIT-005:
- unlocks:
  - dashboard viewmodel implementation task group
  - dashboard action dispatch task group

PF-UNIT-006:
- unlocks:
  - project detail reducer implementation task group
  - project detail tab state task group

PF-UNIT-007:
- unlocks:
  - material preview composable task group
  - material preview state task group

PF-UNIT-008:
- unlocks:
  - material export route task group
  - review-aware export action task group

PF-UNIT-009:
- unlocks:
  - repository implementation task group
  - local datasource binding task group

PF-UNIT-010:
- unlocks:
  - gateway implementation task group
  - mediated request adapter task group

PF-UNIT-011:
- unlocks:
  - sync status UI task group
  - sync retry UI task group

PF-UNIT-012:
- unlocks:
  - cache refresh trigger task group
  - refresh coordination task group

important_rule:
No concrete coding work group is unlocked
until unit outputs are reviewed and approved in usable scope.

# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended concrete coding work groups.

starter_work_groups:

PF-CWG-001:
- work_group_name: app entry file task group
- source_unit:
  - PF-UNIT-001
- scope_type: concrete_coding_local
- prerequisites:
  - approved entry_wiring_unit

PF-CWG-002:
- work_group_name: root navigation graph task group
- source_unit:
  - PF-UNIT-002
- scope_type: concrete_coding_local
- prerequisites:
  - approved navigation_unit

PF-CWG-003:
- work_group_name: dashboard container composable task group
- source_unit:
  - PF-UNIT-003
- scope_type: concrete_coding_local
- prerequisites:
  - approved ui_container_unit

PF-CWG-004:
- work_group_name: dashboard reducer implementation task group
- source_unit:
  - PF-UNIT-004
- scope_type: concrete_coding_local
- prerequisites:
  - approved state_reducer_unit

PF-CWG-005:
- work_group_name: dashboard viewmodel implementation task group
- source_unit:
  - PF-UNIT-005
- scope_type: concrete_coding_local
- prerequisites:
  - approved viewmodel_unit

PF-CWG-006:
- work_group_name: project detail reducer implementation task group
- source_unit:
  - PF-UNIT-006
- scope_type: concrete_coding_local
- prerequisites:
  - approved state_reducer_unit

PF-CWG-007:
- work_group_name: material preview composable task group
- source_unit:
  - PF-UNIT-007
- scope_type: concrete_coding_local
- prerequisites:
  - approved preview_unit

PF-CWG-008:
- work_group_name: material export route task group
- source_unit:
  - PF-UNIT-008
- scope_type: concrete_coding_local
- prerequisites:
  - approved export_routing_unit

PF-CWG-009:
- work_group_name: repository implementation task group
- source_unit:
  - PF-UNIT-009
- scope_type: concrete_coding_boundary_aware
- prerequisites:
  - approved repository_impl_unit
  - blocked scope excluded

PF-CWG-010:
- work_group_name: gateway implementation task group
- source_unit:
  - PF-UNIT-010
- scope_type: concrete_coding_boundary_aware
- prerequisites:
  - approved gateway_impl_unit
  - confirmed boundary-safe scope only

PF-CWG-011:
- work_group_name: sync status UI task group
- source_unit:
  - PF-UNIT-011
- scope_type: concrete_coding_boundary_aware
- prerequisites:
  - approved sync_visibility_unit
  - blocked scope excluded

PF-CWG-012:
- work_group_name: cache refresh trigger task group
- source_unit:
  - PF-UNIT-012
- scope_type: concrete_coding_boundary_aware
- prerequisites:
  - approved cache_refresh_unit
  - blocked scope excluded

# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an execution ledger
for early concrete coding work groups.

execution_ledger:

  - order_no: 1
    work_group_id: PF-CWG-001
    work_group_name: app entry file task group
    scope_type: concrete_coding_local
    readiness: ready_first

  - order_no: 2
    work_group_id: PF-CWG-002
    work_group_name: root navigation graph task group
    scope_type: concrete_coding_local
    readiness: ready_after_app_entry_file_group

  - order_no: 3
    work_group_id: PF-CWG-003
    work_group_name: dashboard container composable task group
    scope_type: concrete_coding_local
    readiness: ready_after_dashboard_container_unit

  - order_no: 4
    work_group_id: PF-CWG-004
    work_group_name: dashboard reducer implementation task group
    scope_type: concrete_coding_local
    readiness: ready_after_dashboard_reducer_unit

  - order_no: 5
    work_group_id: PF-CWG-005
    work_group_name: dashboard viewmodel implementation task group
    scope_type: concrete_coding_local
    readiness: ready_after_dashboard_viewmodel_unit

  - order_no: 6
    work_group_id: PF-CWG-006
    work_group_name: project detail reducer implementation task group
    scope_type: concrete_coding_local
    readiness: ready_after_project_detail_reducer_unit

  - order_no: 7
    work_group_id: PF-CWG-007
    work_group_name: material preview composable task group
    scope_type: concrete_coding_local
    readiness: ready_after_material_preview_unit

  - order_no: 8
    work_group_id: PF-CWG-008
    work_group_name: material export route task group
    scope_type: concrete_coding_local
    readiness: ready_after_material_export_unit

  - order_no: 9
    work_group_id: PF-CWG-011
    work_group_name: sync status UI task group
    scope_type: concrete_coding_boundary_aware
    readiness: ready_after_sync_visibility_unit_and_boundary_safe_scope

  - order_no: 10
    work_group_id: PF-CWG-012
    work_group_name: cache refresh trigger task group
    scope_type: concrete_coding_boundary_aware
    readiness: ready_after_cache_refresh_unit_and_boundary_safe_scope

  - order_no: 11
    work_group_id: PF-CWG-009
    work_group_name: repository implementation task group
    scope_type: concrete_coding_boundary_aware
    readiness: ready_after_repository_impl_unit

  - order_no: 12
    work_group_id: PF-CWG-010
    work_group_name: gateway implementation task group
    scope_type: concrete_coding_boundary_aware
    readiness: ready_after_gateway_impl_unit_and_boundary_safe_scope

important_rule:
Boundary-aware concrete coding groups remain later than core local groups
unless explicitly confirmed safe.

# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP DELIVERABLE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining deliverables
for concrete coding work groups.

template_fields:
- work_group_id
- work_group_name
- deliverable_name
- deliverable_type
- objective
- source_outputs
- completion_condition
- blocked_by
- notes

deliverable_type_candidates:
- entry_file_group
- navigation_graph_group
- composable_group
- reducer_group
- viewmodel_group
- preview_group
- export_route_group
- repository_group
- gateway_group
- sync_ui_group
- cache_trigger_group

# ============================================================
# PROJECT FLOW CONCRETE_CODING_WORK_GROUP_REVIEW_TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reviewing concrete coding work-group outputs.

review_template_fields:
- work_group_id
- work_group_name
- reviewer
- review_date
- review_result: pass_or_partial_or_hold
- outputs_reviewed
- ownership_boundary_preserved: yes_no
- blocked_scope_excluded: yes_no
- followup_actions
- notes

review_rules:
- pass means the work-group output is usable for downstream concrete coding
- partial means only explicitly usable outputs may continue
- hold means downstream dependent work groups should not unlock yet

# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the first concrete coding work groups.

completion_matrix:

PF-CWG-001:
- work_group_name: app entry file task group
- expected_deliverables:
  - entry_file_group
- completion_condition:
  - app entry file scope is explicit
  - root bootstrap ownership remains explicit

PF-CWG-002:
- work_group_name: root navigation graph task group
- expected_deliverables:
  - navigation_graph_group
- completion_condition:
  - root navigation graph scope is explicit
  - main route ownership remains explicit

PF-CWG-003:
- work_group_name: dashboard container composable task group
- expected_deliverables:
  - composable_group
- completion_condition:
  - dashboard container composable scope is explicit
  - local orchestration is preserved

PF-CWG-004:
- work_group_name: dashboard reducer implementation task group
- expected_deliverables:
  - reducer_group
- completion_condition:
  - dashboard reducer implementation scope is explicit
  - state transitions remain aligned with approved unit outputs

PF-CWG-005:
- work_group_name: dashboard viewmodel implementation task group
- expected_deliverables:
  - viewmodel_group
- completion_condition:
  - dashboard viewmodel implementation scope is explicit
  - action routing remains aligned with approved unit outputs

PF-CWG-006:
- work_group_name: project detail reducer implementation task group
- expected_deliverables:
  - reducer_group
- completion_condition:
  - project detail reducer scope is explicit
  - ERP reference versus local editable scope remains separated

PF-CWG-007:
- work_group_name: material preview composable task group
- expected_deliverables:
  - preview_group
- completion_condition:
  - material preview composable scope is explicit
  - local wording adjustment area remains explicit

PF-CWG-008:
- work_group_name: material export route task group
- expected_deliverables:
  - export_route_group
- completion_condition:
  - export route scope is explicit
  - review-aware export path remains explicit

PF-CWG-009:
- work_group_name: repository implementation task group
- expected_deliverables:
  - repository_group
- completion_condition:
  - local repository implementation scope is explicit
  - local ownership remains explicit

PF-CWG-010:
- work_group_name: gateway implementation task group
- expected_deliverables:
  - gateway_group
- completion_condition:
  - BusinessOS gateway implementation scope is explicit
  - blocked boundary scope remains excluded

PF-CWG-011:
- work_group_name: sync status UI task group
- expected_deliverables:
  - sync_ui_group
- completion_condition:
  - sync status UI scope is explicit
  - sync state remains distinct from business truth

PF-CWG-012:
- work_group_name: cache refresh trigger task group
- expected_deliverables:
  - cache_trigger_group
- completion_condition:
  - cache refresh trigger scope is explicit
  - mediated refresh assumptions remain explicit

# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for approving concrete coding work-group outputs.

approval_template_fields:
- work_group_id
- work_group_name
- approval_date
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_work_groups
- notes

approval_rules:
- approval applies only to explicit work-group outputs
- partial approval must keep blocked scope explicit
- blocked scope must not unlock dependent work groups

# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP EXECUTION RECORD TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording execution status
for concrete coding work groups.

execution_record_fields:
- work_group_id
- work_group_name
- scope_type
- execution_started: yes_no
- execution_status: not_started_or_in_progress_or_paused_or_done
- start_date
- pause_reason
- prerequisite_outputs_confirmed: yes_no
- current_outputs
- review_status
- approval_status
- next_followup
- notes

recording_rules:
- paused work groups must record pause reason explicitly
- boundary-aware work groups must keep blocked conditions visible
- done status should list produced outputs explicitly

# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP REOPEN TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reopening a paused or blocked concrete coding work group safely.

reopen_template_fields:
- work_group_id
- work_group_name
- previous_status: paused_or_blocked
- reopen_request_date
- reopen_reason
- prerequisite_outputs_rechecked: yes_no
- blocked_condition_resolved: yes_no
- boundary_check_rerun_needed: yes_no
- safe_to_reopen: yes_no
- reopen_notes

reopen_rules:
- blocked work groups may reopen only after explicit blocked-condition review
- paused work groups may reopen only after pause reason is re-evaluated
- boundary-aware work groups require boundary recheck when needed

# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP TO FILE TASK LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps concrete coding work groups
to likely concrete file/task units.

work_group_to_file_task_ledger:

PF-CWG-001:
- unlocks:
  - app entry file unit
  - bootstrap initializer file unit

PF-CWG-002:
- unlocks:
  - root navigation graph file unit
  - route dispatch file unit

PF-CWG-003:
- unlocks:
  - dashboard container file unit
  - dashboard section composition file unit

PF-CWG-004:
- unlocks:
  - dashboard reducer file unit
  - dashboard state mutation file unit

PF-CWG-005:
- unlocks:
  - dashboard viewmodel file unit
  - dashboard action dispatch file unit

PF-CWG-006:
- unlocks:
  - project detail reducer file unit
  - project detail tab state file unit

PF-CWG-007:
- unlocks:
  - material preview file unit
  - material preview state file unit

PF-CWG-008:
- unlocks:
  - material export route file unit
  - review-aware export action file unit

PF-CWG-009:
- unlocks:
  - repository implementation file unit
  - local datasource binding file unit

PF-CWG-010:
- unlocks:
  - gateway implementation file unit
  - mediated request adapter file unit

PF-CWG-011:
- unlocks:
  - sync status UI file unit
  - sync retry UI file unit

PF-CWG-012:
- unlocks:
  - cache refresh trigger file unit
  - refresh coordination file unit

important_rule:
No concrete file/task unit is unlocked
until work-group outputs are reviewed and approved in usable scope.

# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended concrete file/task units.

starter_units:

PF-FILE-001:
- unit_name: app entry file unit
- source_work_group:
  - PF-CWG-001
- scope_type: file_unit_local
- prerequisites:
  - approved entry_file_group

PF-FILE-002:
- unit_name: bootstrap initializer file unit
- source_work_group:
  - PF-CWG-001
- scope_type: file_unit_local
- prerequisites:
  - approved entry_file_group

PF-FILE-003:
- unit_name: root navigation graph file unit
- source_work_group:
  - PF-CWG-002
- scope_type: file_unit_local
- prerequisites:
  - approved navigation_graph_group

PF-FILE-004:
- unit_name: dashboard container file unit
- source_work_group:
  - PF-CWG-003
- scope_type: file_unit_local
- prerequisites:
  - approved composable_group

PF-FILE-005:
- unit_name: dashboard reducer file unit
- source_work_group:
  - PF-CWG-004
- scope_type: file_unit_local
- prerequisites:
  - approved reducer_group

PF-FILE-006:
- unit_name: dashboard viewmodel file unit
- source_work_group:
  - PF-CWG-005
- scope_type: file_unit_local
- prerequisites:
  - approved viewmodel_group

PF-FILE-007:
- unit_name: project detail reducer file unit
- source_work_group:
  - PF-CWG-006
- scope_type: file_unit_local
- prerequisites:
  - approved reducer_group

PF-FILE-008:
- unit_name: material preview file unit
- source_work_group:
  - PF-CWG-007
- scope_type: file_unit_local
- prerequisites:
  - approved preview_group

PF-FILE-009:
- unit_name: material export route file unit
- source_work_group:
  - PF-CWG-008
- scope_type: file_unit_local
- prerequisites:
  - approved export_route_group

PF-FILE-010:
- unit_name: repository implementation file unit
- source_work_group:
  - PF-CWG-009
- scope_type: file_unit_boundary_aware
- prerequisites:
  - approved repository_group
  - blocked scope excluded

PF-FILE-011:
- unit_name: gateway implementation file unit
- source_work_group:
  - PF-CWG-010
- scope_type: file_unit_boundary_aware
- prerequisites:
  - approved gateway_group
  - confirmed boundary-safe scope only

PF-FILE-012:
- unit_name: sync status UI file unit
- source_work_group:
  - PF-CWG-011
- scope_type: file_unit_boundary_aware
- prerequisites:
  - approved sync_ui_group
  - blocked scope excluded

PF-FILE-013:
- unit_name: cache refresh trigger file unit
- source_work_group:
  - PF-CWG-012
- scope_type: file_unit_boundary_aware
- prerequisites:
  - approved cache_trigger_group
  - blocked scope excluded

# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an execution ledger
for early concrete file/task units.

execution_ledger:

  - order_no: 1
    unit_id: PF-FILE-001
    unit_name: app entry file unit
    scope_type: file_unit_local
    readiness: ready_first

  - order_no: 2
    unit_id: PF-FILE-002
    unit_name: bootstrap initializer file unit
    scope_type: file_unit_local
    readiness: ready_after_app_entry_file

  - order_no: 3
    unit_id: PF-FILE-003
    unit_name: root navigation graph file unit
    scope_type: file_unit_local
    readiness: ready_after_navigation_graph_group

  - order_no: 4
    unit_id: PF-FILE-004
    unit_name: dashboard container file unit
    scope_type: file_unit_local
    readiness: ready_after_dashboard_container_group

  - order_no: 5
    unit_id: PF-FILE-005
    unit_name: dashboard reducer file unit
    scope_type: file_unit_local
    readiness: ready_after_dashboard_reducer_group

  - order_no: 6
    unit_id: PF-FILE-006
    unit_name: dashboard viewmodel file unit
    scope_type: file_unit_local
    readiness: ready_after_dashboard_viewmodel_group

  - order_no: 7
    unit_id: PF-FILE-007
    unit_name: project detail reducer file unit
    scope_type: file_unit_local
    readiness: ready_after_project_detail_reducer_group

  - order_no: 8
    unit_id: PF-FILE-008
    unit_name: material preview file unit
    scope_type: file_unit_local
    readiness: ready_after_material_preview_group

  - order_no: 9
    unit_id: PF-FILE-009
    unit_name: material export route file unit
    scope_type: file_unit_local
    readiness: ready_after_material_export_group

  - order_no: 10
    unit_id: PF-FILE-012
    unit_name: sync status UI file unit
    scope_type: file_unit_boundary_aware
    readiness: ready_after_sync_ui_group_and_boundary_safe_scope

  - order_no: 11
    unit_id: PF-FILE-013
    unit_name: cache refresh trigger file unit
    scope_type: file_unit_boundary_aware
    readiness: ready_after_cache_trigger_group_and_boundary_safe_scope

  - order_no: 12
    unit_id: PF-FILE-010
    unit_name: repository implementation file unit
    scope_type: file_unit_boundary_aware
    readiness: ready_after_repository_group

  - order_no: 13
    unit_id: PF-FILE-011
    unit_name: gateway implementation file unit
    scope_type: file_unit_boundary_aware
    readiness: ready_after_gateway_group_and_boundary_safe_scope

important_rule:
Boundary-aware file units remain later than core local file units
unless explicitly confirmed safe.

# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT DELIVERABLE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining deliverables
for concrete file/task units.

template_fields:
- unit_id
- unit_name
- deliverable_name
- deliverable_type
- objective
- source_outputs
- completion_condition
- blocked_by
- notes

deliverable_type_candidates:
- entry_file
- initializer_file
- navigation_graph_file
- screen_container_file
- reducer_file
- viewmodel_file
- preview_file
- export_route_file
- repository_file
- gateway_file
- sync_ui_file
- cache_trigger_file

# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT REVIEW TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reviewing concrete file/task unit outputs.

review_template_fields:
- unit_id
- unit_name
- reviewer
- review_date
- review_result: pass_or_partial_or_hold
- outputs_reviewed
- ownership_boundary_preserved: yes_no
- blocked_scope_excluded: yes_no
- followup_actions
- notes

review_rules:
- pass means the file/unit output is usable for downstream file or task unlock
- partial means only explicitly usable outputs may continue
- hold means downstream dependent units should not unlock yet

# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the first concrete file/task units.

completion_matrix:

PF-FILE-001:
- unit_name: app entry file unit
- expected_deliverables:
  - entry_file
- completion_condition:
  - app entry file responsibility is explicit
  - entry ownership remains explicit

PF-FILE-002:
- unit_name: bootstrap initializer file unit
- expected_deliverables:
  - initializer_file
- completion_condition:
  - bootstrap initializer responsibility is explicit
  - startup sequencing remains explicit

PF-FILE-003:
- unit_name: root navigation graph file unit
- expected_deliverables:
  - navigation_graph_file
- completion_condition:
  - root navigation graph responsibility is explicit
  - main route graph remains explicit

PF-FILE-004:
- unit_name: dashboard container file unit
- expected_deliverables:
  - screen_container_file
- completion_condition:
  - dashboard container file responsibility is explicit
  - local orchestration remains preserved

PF-FILE-005:
- unit_name: dashboard reducer file unit
- expected_deliverables:
  - reducer_file
- completion_condition:
  - dashboard reducer file responsibility is explicit
  - state transition handling remains explicit

PF-FILE-006:
- unit_name: dashboard viewmodel file unit
- expected_deliverables:
  - viewmodel_file
- completion_condition:
  - dashboard viewmodel responsibility is explicit
  - action dispatch boundary remains explicit

PF-FILE-007:
- unit_name: project detail reducer file unit
- expected_deliverables:
  - reducer_file
- completion_condition:
  - project detail reducer responsibility is explicit
  - ERP reference versus local editable scope remains separated

PF-FILE-008:
- unit_name: material preview file unit
- expected_deliverables:
  - preview_file
- completion_condition:
  - material preview file responsibility is explicit
  - local wording adjustment surface remains explicit

PF-FILE-009:
- unit_name: material export route file unit
- expected_deliverables:
  - export_route_file
- completion_condition:
  - material export route responsibility is explicit
  - review-aware export path remains explicit

PF-FILE-010:
- unit_name: repository implementation file unit
- expected_deliverables:
  - repository_file
- completion_condition:
  - repository file responsibility is explicit
  - local ownership remains explicit

PF-FILE-011:
- unit_name: gateway implementation file unit
- expected_deliverables:
  - gateway_file
- completion_condition:
  - gateway file responsibility is explicit
  - blocked boundary scope remains excluded

PF-FILE-012:
- unit_name: sync status UI file unit
- expected_deliverables:
  - sync_ui_file
- completion_condition:
  - sync status UI responsibility is explicit
  - sync state remains distinct from business truth

PF-FILE-013:
- unit_name: cache refresh trigger file unit
- expected_deliverables:
  - cache_trigger_file
- completion_condition:
  - cache refresh trigger responsibility is explicit
  - mediated refresh assumption remains explicit

# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for approving concrete file/task unit outputs.

approval_template_fields:
- unit_id
- unit_name
- approval_date
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_file_units
- notes

approval_rules:
- approval applies only to explicit file-unit outputs
- partial approval must keep blocked scope explicit
- blocked scope must not unlock dependent file units

# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT EXECUTION RECORD TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording execution status
for concrete file/task units.

execution_record_fields:
- unit_id
- unit_name
- scope_type
- execution_started: yes_no
- execution_status: not_started_or_in_progress_or_paused_or_done
- start_date
- pause_reason
- prerequisite_outputs_confirmed: yes_no
- current_outputs
- review_status
- approval_status
- next_followup
- notes

recording_rules:
- paused file units must record pause reason explicitly
- boundary-aware file units must keep blocked conditions visible
- done status should list produced outputs explicitly

# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT REOPEN TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reopening a paused or blocked concrete file/task unit safely.

reopen_template_fields:
- unit_id
- unit_name
- previous_status: paused_or_blocked
- reopen_request_date
- reopen_reason
- prerequisite_outputs_rechecked: yes_no
- blocked_condition_resolved: yes_no
- boundary_check_rerun_needed: yes_no
- safe_to_reopen: yes_no
- reopen_notes

reopen_rules:
- blocked file units may reopen only after explicit blocked-condition review
- paused file units may reopen only after pause reason is re-evaluated
- boundary-aware file units require boundary recheck when needed

# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT TO PATCH TASK LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps concrete file/task units
to likely patch-level coding tasks.

file_unit_to_patch_task_ledger:

PF-FILE-001:
- unlocks:
  - app entry import patch task
  - app entry bootstrap call patch task

PF-FILE-002:
- unlocks:
  - initializer setup patch task
  - startup registration patch task

PF-FILE-003:
- unlocks:
  - navigation graph declaration patch task
  - route mapping patch task

PF-FILE-004:
- unlocks:
  - dashboard container composition patch task
  - dashboard section binding patch task

PF-FILE-005:
- unlocks:
  - reducer state transition patch task
  - reducer action branch patch task

PF-FILE-006:
- unlocks:
  - viewmodel state exposure patch task
  - action dispatch wiring patch task

PF-FILE-007:
- unlocks:
  - project detail reducer branch patch task
  - tab state mutation patch task

PF-FILE-008:
- unlocks:
  - preview rendering patch task
  - preview state binding patch task

PF-FILE-009:
- unlocks:
  - export route wiring patch task
  - review-aware export action patch task

PF-FILE-010:
- unlocks:
  - repository method implementation patch task
  - datasource binding patch task

PF-FILE-011:
- unlocks:
  - gateway request mapping patch task
  - mediated response handling patch task

PF-FILE-012:
- unlocks:
  - sync status rendering patch task
  - retry action visibility patch task

PF-FILE-013:
- unlocks:
  - refresh trigger patch task
  - refresh coordination patch task

important_rule:
No patch-level task is unlocked
until file-unit outputs are reviewed and approved in usable scope.

# ============================================================
# PROJECT FLOW PATCH TASK STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended patch-level coding tasks.

starter_patch_tasks:

PF-PATCH-001:
- patch_task_name: app entry import patch task
- source_file_unit:
  - PF-FILE-001
- scope_type: patch_local
- prerequisites:
  - approved entry_file

PF-PATCH-002:
- patch_task_name: app entry bootstrap call patch task
- source_file_unit:
  - PF-FILE-001
- scope_type: patch_local
- prerequisites:
  - approved entry_file

PF-PATCH-003:
- patch_task_name: navigation graph declaration patch task
- source_file_unit:
  - PF-FILE-003
- scope_type: patch_local
- prerequisites:
  - approved navigation_graph_file

PF-PATCH-004:
- patch_task_name: dashboard container composition patch task
- source_file_unit:
  - PF-FILE-004
- scope_type: patch_local
- prerequisites:
  - approved screen_container_file

PF-PATCH-005:
- patch_task_name: reducer state transition patch task
- source_file_unit:
  - PF-FILE-005
- scope_type: patch_local
- prerequisites:
  - approved reducer_file

PF-PATCH-006:
- patch_task_name: viewmodel state exposure patch task
- source_file_unit:
  - PF-FILE-006
- scope_type: patch_local
- prerequisites:
  - approved viewmodel_file

PF-PATCH-007:
- patch_task_name: project detail reducer branch patch task
- source_file_unit:
  - PF-FILE-007
- scope_type: patch_local
- prerequisites:
  - approved reducer_file

PF-PATCH-008:
- patch_task_name: preview rendering patch task
- source_file_unit:
  - PF-FILE-008
- scope_type: patch_local
- prerequisites:
  - approved preview_file

PF-PATCH-009:
- patch_task_name: export route wiring patch task
- source_file_unit:
  - PF-FILE-009
- scope_type: patch_local
- prerequisites:
  - approved export_route_file

PF-PATCH-010:
- patch_task_name: repository method implementation patch task
- source_file_unit:
  - PF-FILE-010
- scope_type: patch_boundary_aware
- prerequisites:
  - approved repository_file
  - blocked scope excluded

PF-PATCH-011:
- patch_task_name: gateway request mapping patch task
- source_file_unit:
  - PF-FILE-011
- scope_type: patch_boundary_aware
- prerequisites:
  - approved gateway_file
  - confirmed boundary-safe scope only

PF-PATCH-012:
- patch_task_name: sync status rendering patch task
- source_file_unit:
  - PF-FILE-012
- scope_type: patch_boundary_aware
- prerequisites:
  - approved sync_ui_file
  - blocked scope excluded

PF-PATCH-013:
- patch_task_name: refresh trigger patch task
- source_file_unit:
  - PF-FILE-013
- scope_type: patch_boundary_aware
- prerequisites:
  - approved cache_trigger_file
  - blocked scope excluded

# ============================================================
# PROJECT FLOW PATCH TASK EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an execution ledger
for early patch-level coding tasks.

execution_ledger:

  - order_no: 1
    patch_task_id: PF-PATCH-001
    patch_task_name: app entry import patch task
    scope_type: patch_local
    readiness: ready_first

  - order_no: 2
    patch_task_id: PF-PATCH-002
    patch_task_name: app entry bootstrap call patch task
    scope_type: patch_local
    readiness: ready_after_app_entry_import_patch

  - order_no: 3
    patch_task_id: PF-PATCH-003
    patch_task_name: navigation graph declaration patch task
    scope_type: patch_local
    readiness: ready_after_navigation_graph_file

  - order_no: 4
    patch_task_id: PF-PATCH-004
    patch_task_name: dashboard container composition patch task
    scope_type: patch_local
    readiness: ready_after_dashboard_container_file

  - order_no: 5
    patch_task_id: PF-PATCH-005
    patch_task_name: reducer state transition patch task
    scope_type: patch_local
    readiness: ready_after_dashboard_reducer_file

  - order_no: 6
    patch_task_id: PF-PATCH-006
    patch_task_name: viewmodel state exposure patch task
    scope_type: patch_local
    readiness: ready_after_dashboard_viewmodel_file

  - order_no: 7
    patch_task_id: PF-PATCH-007
    patch_task_name: project detail reducer branch patch task
    scope_type: patch_local
    readiness: ready_after_project_detail_reducer_file

  - order_no: 8
    patch_task_id: PF-PATCH-008
    patch_task_name: preview rendering patch task
    scope_type: patch_local
    readiness: ready_after_preview_file

  - order_no: 9
    patch_task_id: PF-PATCH-009
    patch_task_name: export route wiring patch task
    scope_type: patch_local
    readiness: ready_after_export_route_file

  - order_no: 10
    patch_task_id: PF-PATCH-012
    patch_task_name: sync status rendering patch task
    scope_type: patch_boundary_aware
    readiness: ready_after_sync_ui_file_and_boundary_safe_scope

  - order_no: 11
    patch_task_id: PF-PATCH-013
    patch_task_name: refresh trigger patch task
    scope_type: patch_boundary_aware
    readiness: ready_after_cache_trigger_file_and_boundary_safe_scope

  - order_no: 12
    patch_task_id: PF-PATCH-010
    patch_task_name: repository method implementation patch task
    scope_type: patch_boundary_aware
    readiness: ready_after_repository_file

  - order_no: 13
    patch_task_id: PF-PATCH-011
    patch_task_name: gateway request mapping patch task
    scope_type: patch_boundary_aware
    readiness: ready_after_gateway_file_and_boundary_safe_scope

important_rule:
Boundary-aware patch tasks remain later than core local patch tasks
unless explicitly confirmed safe.

# ============================================================
# PROJECT FLOW PATCH TASK DELIVERABLE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining deliverables
for patch-level coding tasks.

template_fields:
- patch_task_id
- patch_task_name
- deliverable_name
- deliverable_type
- objective
- source_outputs
- completion_condition
- blocked_by
- notes

deliverable_type_candidates:
- import_patch
- bootstrap_patch
- nav_graph_patch
- container_patch
- reducer_patch
- viewmodel_patch
- preview_patch
- export_patch
- repository_patch
- gateway_patch
- sync_ui_patch
- refresh_patch

# ============================================================
# PROJECT FLOW PATCH TASK REVIEW AND APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reviewing and approving patch-level coding task outputs.

review_fields:
- patch_task_id
- patch_task_name
- reviewer
- review_date
- review_result: pass_or_partial_or_hold
- outputs_reviewed
- ownership_boundary_preserved: yes_no
- blocked_scope_excluded: yes_no
- followup_actions
- notes

approval_fields:
- approval_date
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_patch_tasks
- approval_notes

rules:
- pass plus approved unlocks next dependent patch tasks
- partial approval unlocks only explicitly approved scope
- hold or not-approved unlocks nothing downstream

# ============================================================
# PROJECT FLOW PATCH TASK COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the first patch-level coding tasks.

completion_matrix:

PF-PATCH-001:
- patch_task_name: app entry import patch task
- expected_deliverables:
  - import_patch
- completion_condition:
  - app entry import patch scope is explicit
  - import responsibility remains explicit

PF-PATCH-002:
- patch_task_name: app entry bootstrap call patch task
- expected_deliverables:
  - bootstrap_patch
- completion_condition:
  - bootstrap call patch scope is explicit
  - startup call path remains explicit

PF-PATCH-003:
- patch_task_name: navigation graph declaration patch task
- expected_deliverables:
  - nav_graph_patch
- completion_condition:
  - navigation graph declaration patch scope is explicit
  - route declaration remains explicit

PF-PATCH-004:
- patch_task_name: dashboard container composition patch task
- expected_deliverables:
  - container_patch
- completion_condition:
  - dashboard container composition patch scope is explicit
  - local orchestration remains preserved

PF-PATCH-005:
- patch_task_name: reducer state transition patch task
- expected_deliverables:
  - reducer_patch
- completion_condition:
  - reducer state transition patch scope is explicit
  - state transitions remain aligned with approved file outputs

PF-PATCH-006:
- patch_task_name: viewmodel state exposure patch task
- expected_deliverables:
  - viewmodel_patch
- completion_condition:
  - viewmodel state exposure patch scope is explicit
  - action exposure boundary remains explicit

PF-PATCH-007:
- patch_task_name: project detail reducer branch patch task
- expected_deliverables:
  - reducer_patch
- completion_condition:
  - project detail reducer branch patch scope is explicit
  - ERP reference versus local editable scope remains separated

PF-PATCH-008:
- patch_task_name: preview rendering patch task
- expected_deliverables:
  - preview_patch
- completion_condition:
  - preview rendering patch scope is explicit
  - local wording surface remains explicit

PF-PATCH-009:
- patch_task_name: export route wiring patch task
- expected_deliverables:
  - export_patch
- completion_condition:
  - export route wiring patch scope is explicit
  - review-aware export path remains explicit

PF-PATCH-010:
- patch_task_name: repository method implementation patch task
- expected_deliverables:
  - repository_patch
- completion_condition:
  - repository method patch scope is explicit
  - local ownership remains explicit

PF-PATCH-011:
- patch_task_name: gateway request mapping patch task
- expected_deliverables:
  - gateway_patch
- completion_condition:
  - gateway request mapping patch scope is explicit
  - blocked boundary scope remains excluded

PF-PATCH-012:
- patch_task_name: sync status rendering patch task
- expected_deliverables:
  - sync_ui_patch
- completion_condition:
  - sync status rendering patch scope is explicit
  - sync state remains distinct from business truth

PF-PATCH-013:
- patch_task_name: refresh trigger patch task
- expected_deliverables:
  - refresh_patch
- completion_condition:
  - refresh trigger patch scope is explicit
  - mediated refresh assumption remains explicit

# ============================================================
# PROJECT FLOW PATCH TASK EXECUTION RECORD TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording execution status
for patch-level coding tasks.

execution_record_fields:
- patch_task_id
- patch_task_name
- scope_type
- execution_started: yes_no
- execution_status: not_started_or_in_progress_or_paused_or_done
- start_date
- pause_reason
- prerequisite_outputs_confirmed: yes_no
- current_outputs
- review_status
- approval_status
- next_followup
- notes

recording_rules:
- paused patch tasks must record pause reason explicitly
- boundary-aware patch tasks must keep blocked conditions visible
- done status should list produced outputs explicitly

# ============================================================
# PROJECT FLOW PATCH TASK REOPEN TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reopening a paused or blocked patch-level coding task safely.

reopen_template_fields:
- patch_task_id
- patch_task_name
- previous_status: paused_or_blocked
- reopen_request_date
- reopen_reason
- prerequisite_outputs_rechecked: yes_no
- blocked_condition_resolved: yes_no
- boundary_check_rerun_needed: yes_no
- safe_to_reopen: yes_no
- reopen_notes

reopen_rules:
- blocked patch tasks may reopen only after explicit blocked-condition review
- paused patch tasks may reopen only after pause reason is re-evaluated
- boundary-aware patch tasks require boundary recheck when needed

# ============================================================
# PROJECT FLOW PATCH TASK TO COMMIT PR LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps patch-level coding tasks
to likely commit or PR-sized units.

patch_task_to_commit_pr_ledger:

PF-PATCH-001:
- unlocks:
  - app entry import commit unit

PF-PATCH-002:
- unlocks:
  - bootstrap call wiring commit unit

PF-PATCH-003:
- unlocks:
  - navigation graph declaration commit unit

PF-PATCH-004:
- unlocks:
  - dashboard container composition commit unit

PF-PATCH-005:
- unlocks:
  - reducer state transition commit unit

PF-PATCH-006:
- unlocks:
  - viewmodel state exposure commit unit

PF-PATCH-007:
- unlocks:
  - project detail reducer branch commit unit

PF-PATCH-008:
- unlocks:
  - preview rendering commit unit

PF-PATCH-009:
- unlocks:
  - export route wiring commit unit

PF-PATCH-010:
- unlocks:
  - repository method implementation commit unit

PF-PATCH-011:
- unlocks:
  - gateway request mapping commit unit

PF-PATCH-012:
- unlocks:
  - sync status rendering commit unit

PF-PATCH-013:
- unlocks:
  - refresh trigger commit unit

important_rule:
No commit or PR-sized unit is unlocked
until patch-task outputs are reviewed and approved in usable scope.

# ============================================================
# PROJECT FLOW COMMIT PR UNIT STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended commit / PR-sized units.

starter_units:

PF-CPR-001:
- unit_name: app entry import commit unit
- source_patch_task:
  - PF-PATCH-001
- scope_type: commit_pr_local
- prerequisites:
  - approved import_patch

PF-CPR-002:
- unit_name: bootstrap call wiring commit unit
- source_patch_task:
  - PF-PATCH-002
- scope_type: commit_pr_local
- prerequisites:
  - approved bootstrap_patch

PF-CPR-003:
- unit_name: navigation graph declaration commit unit
- source_patch_task:
  - PF-PATCH-003
- scope_type: commit_pr_local
- prerequisites:
  - approved nav_graph_patch

PF-CPR-004:
- unit_name: dashboard container composition commit unit
- source_patch_task:
  - PF-PATCH-004
- scope_type: commit_pr_local
- prerequisites:
  - approved container_patch

PF-CPR-005:
- unit_name: reducer state transition commit unit
- source_patch_task:
  - PF-PATCH-005
- scope_type: commit_pr_local
- prerequisites:
  - approved reducer_patch

PF-CPR-006:
- unit_name: viewmodel state exposure commit unit
- source_patch_task:
  - PF-PATCH-006
- scope_type: commit_pr_local
- prerequisites:
  - approved viewmodel_patch

PF-CPR-007:
- unit_name: project detail reducer branch commit unit
- source_patch_task:
  - PF-PATCH-007
- scope_type: commit_pr_local
- prerequisites:
  - approved reducer_patch

PF-CPR-008:
- unit_name: preview rendering commit unit
- source_patch_task:
  - PF-PATCH-008
- scope_type: commit_pr_local
- prerequisites:
  - approved preview_patch

PF-CPR-009:
- unit_name: export route wiring commit unit
- source_patch_task:
  - PF-PATCH-009
- scope_type: commit_pr_local
- prerequisites:
  - approved export_patch

PF-CPR-010:
- unit_name: repository method implementation commit unit
- source_patch_task:
  - PF-PATCH-010
- scope_type: commit_pr_boundary_aware
- prerequisites:
  - approved repository_patch
  - blocked scope excluded

PF-CPR-011:
- unit_name: gateway request mapping commit unit
- source_patch_task:
  - PF-PATCH-011
- scope_type: commit_pr_boundary_aware
- prerequisites:
  - approved gateway_patch
  - confirmed boundary-safe scope only

PF-CPR-012:
- unit_name: sync status rendering commit unit
- source_patch_task:
  - PF-PATCH-012
- scope_type: commit_pr_boundary_aware
- prerequisites:
  - approved sync_ui_patch
  - blocked scope excluded

PF-CPR-013:
- unit_name: refresh trigger commit unit
- source_patch_task:
  - PF-PATCH-013
- scope_type: commit_pr_boundary_aware
- prerequisites:
  - approved refresh_patch
  - blocked scope excluded

# ============================================================
# PROJECT FLOW COMMIT PR UNIT EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an execution ledger
for early commit / PR-sized units.

execution_ledger:

  - order_no: 1
    unit_id: PF-CPR-001
    unit_name: app entry import commit unit
    scope_type: commit_pr_local
    readiness: ready_first

  - order_no: 2
    unit_id: PF-CPR-002
    unit_name: bootstrap call wiring commit unit
    scope_type: commit_pr_local
    readiness: ready_after_app_entry_import_commit

  - order_no: 3
    unit_id: PF-CPR-003
    unit_name: navigation graph declaration commit unit
    scope_type: commit_pr_local
    readiness: ready_after_navigation_graph_patch

  - order_no: 4
    unit_id: PF-CPR-004
    unit_name: dashboard container composition commit unit
    scope_type: commit_pr_local
    readiness: ready_after_dashboard_container_patch

  - order_no: 5
    unit_id: PF-CPR-005
    unit_name: reducer state transition commit unit
    scope_type: commit_pr_local
    readiness: ready_after_dashboard_reducer_patch

  - order_no: 6
    unit_id: PF-CPR-006
    unit_name: viewmodel state exposure commit unit
    scope_type: commit_pr_local
    readiness: ready_after_dashboard_viewmodel_patch

  - order_no: 7
    unit_id: PF-CPR-007
    unit_name: project detail reducer branch commit unit
    scope_type: commit_pr_local
    readiness: ready_after_project_detail_reducer_patch

  - order_no: 8
    unit_id: PF-CPR-008
    unit_name: preview rendering commit unit
    scope_type: commit_pr_local
    readiness: ready_after_preview_patch

  - order_no: 9
    unit_id: PF-CPR-009
    unit_name: export route wiring commit unit
    scope_type: commit_pr_local
    readiness: ready_after_export_patch

  - order_no: 10
    unit_id: PF-CPR-012
    unit_name: sync status rendering commit unit
    scope_type: commit_pr_boundary_aware
    readiness: ready_after_sync_ui_patch_and_boundary_safe_scope

  - order_no: 11
    unit_id: PF-CPR-013
    unit_name: refresh trigger commit unit
    scope_type: commit_pr_boundary_aware
    readiness: ready_after_refresh_patch_and_boundary_safe_scope

  - order_no: 12
    unit_id: PF-CPR-010
    unit_name: repository method implementation commit unit
    scope_type: commit_pr_boundary_aware
    readiness: ready_after_repository_patch

  - order_no: 13
    unit_id: PF-CPR-011
    unit_name: gateway request mapping commit unit
    scope_type: commit_pr_boundary_aware
    readiness: ready_after_gateway_patch_and_boundary_safe_scope

important_rule:
Boundary-aware commit / PR units remain later than core local units
unless explicitly confirmed safe.

# ============================================================
# PROJECT FLOW COMMIT PR UNIT DELIVERABLE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining deliverables
for commit / PR-sized units.

template_fields:
- unit_id
- unit_name
- deliverable_name
- deliverable_type
- objective
- source_outputs
- completion_condition
- blocked_by
- notes

deliverable_type_candidates:
- commit_unit
- pr_unit
- reviewed_change_set
- scoped_diff_set

# ============================================================
# PROJECT FLOW COMMIT PR UNIT REVIEW AND APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reviewing and approving commit / PR-sized unit outputs.

review_fields:
- unit_id
- unit_name
- reviewer
- review_date
- review_result: pass_or_partial_or_hold
- outputs_reviewed
- ownership_boundary_preserved: yes_no
- blocked_scope_excluded: yes_no
- followup_actions
- notes

approval_fields:
- approval_date
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_units
- approval_notes

rules:
- pass plus approved unlocks next dependent units
- partial approval unlocks only explicitly approved scope
- hold or not-approved unlocks nothing downstream

# ============================================================
# PROJECT FLOW COMMIT PR UNIT COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the first commit / PR-sized units.

completion_matrix:

PF-CPR-001:
- unit_name: app entry import commit unit
- expected_deliverables:
  - commit_unit
- completion_condition:
  - app entry import change set is explicit
  - import responsibility remains explicit

PF-CPR-002:
- unit_name: bootstrap call wiring commit unit
- expected_deliverables:
  - commit_unit
- completion_condition:
  - bootstrap call change set is explicit
  - startup call path remains explicit

PF-CPR-003:
- unit_name: navigation graph declaration commit unit
- expected_deliverables:
  - commit_unit
- completion_condition:
  - navigation graph declaration change set is explicit
  - route declaration remains explicit

PF-CPR-004:
- unit_name: dashboard container composition commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - dashboard container composition change set is explicit
  - local orchestration remains preserved

PF-CPR-005:
- unit_name: reducer state transition commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - reducer state transition change set is explicit
  - state transitions remain aligned with approved patch outputs

PF-CPR-006:
- unit_name: viewmodel state exposure commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - viewmodel state exposure change set is explicit
  - action exposure boundary remains explicit

PF-CPR-007:
- unit_name: project detail reducer branch commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - project detail reducer branch change set is explicit
  - ERP reference versus local editable scope remains separated

PF-CPR-008:
- unit_name: preview rendering commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - preview rendering change set is explicit
  - local wording surface remains explicit

PF-CPR-009:
- unit_name: export route wiring commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - export route wiring change set is explicit
  - review-aware export path remains explicit

PF-CPR-010:
- unit_name: repository method implementation commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - repository method implementation change set is explicit
  - local ownership remains explicit

PF-CPR-011:
- unit_name: gateway request mapping commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - gateway request mapping change set is explicit
  - blocked boundary scope remains excluded

PF-CPR-012:
- unit_name: sync status rendering commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - sync status rendering change set is explicit
  - sync state remains distinct from business truth

PF-CPR-013:
- unit_name: refresh trigger commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - refresh trigger change set is explicit
  - mediated refresh assumption remains explicit

# ============================================================
# PROJECT FLOW COMMIT PR UNIT EXECUTION RECORD TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording execution status
for commit / PR-sized units.

execution_record_fields:
- unit_id
- unit_name
- scope_type
- execution_started: yes_no
- execution_status: not_started_or_in_progress_or_paused_or_done
- start_date
- pause_reason
- prerequisite_outputs_confirmed: yes_no
- current_outputs
- review_status
- approval_status
- next_followup
- notes

recording_rules:
- paused units must record pause reason explicitly
- boundary-aware units must keep blocked conditions visible
- done status should list produced outputs explicitly

# ============================================================
# PROJECT FLOW COMMIT PR UNIT REOPEN TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reopening a paused or blocked commit / PR-sized unit safely.

reopen_template_fields:
- unit_id
- unit_name
- previous_status: paused_or_blocked
- reopen_request_date
- reopen_reason
- prerequisite_outputs_rechecked: yes_no
- blocked_condition_resolved: yes_no
- boundary_check_rerun_needed: yes_no
- safe_to_reopen: yes_no
- reopen_notes

reopen_rules:
- blocked units may reopen only after explicit blocked-condition review
- paused units may reopen only after pause reason is re-evaluated
- boundary-aware units require boundary recheck when needed

# ============================================================
# PROJECT FLOW COMMIT PR UNIT TO MERGE RELEASE LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps commit / PR-sized units
to likely merge or release-prep units.

commit_pr_to_merge_release_ledger:

PF-CPR-001:
- unlocks:
  - app entry merge candidate unit

PF-CPR-002:
- unlocks:
  - bootstrap startup merge candidate unit

PF-CPR-003:
- unlocks:
  - navigation foundation merge candidate unit

PF-CPR-004:
- unlocks:
  - dashboard container merge candidate unit

PF-CPR-005:
- unlocks:
  - dashboard reducer merge candidate unit

PF-CPR-006:
- unlocks:
  - dashboard viewmodel merge candidate unit

PF-CPR-007:
- unlocks:
  - project detail reducer merge candidate unit

PF-CPR-008:
- unlocks:
  - preview rendering merge candidate unit

PF-CPR-009:
- unlocks:
  - export route merge candidate unit

PF-CPR-010:
- unlocks:
  - repository implementation merge candidate unit

PF-CPR-011:
- unlocks:
  - gateway mapping merge candidate unit

PF-CPR-012:
- unlocks:
  - sync status ui merge candidate unit

PF-CPR-013:
- unlocks:
  - refresh trigger merge candidate unit

important_rule:
No merge or release-prep unit is unlocked
until commit / PR-sized outputs are reviewed and approved in usable scope.

# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended merge / release-prep units.

starter_units:

PF-MRG-001:
- unit_name: app entry merge candidate unit
- source_commit_pr_units:
  - PF-CPR-001
- scope_type: merge_release_local
- prerequisites:
  - approved commit_unit or reviewed_change_set

PF-MRG-002:
- unit_name: bootstrap startup merge candidate unit
- source_commit_pr_units:
  - PF-CPR-002
- scope_type: merge_release_local
- prerequisites:
  - approved commit_unit or reviewed_change_set

PF-MRG-003:
- unit_name: navigation foundation merge candidate unit
- source_commit_pr_units:
  - PF-CPR-003
- scope_type: merge_release_local
- prerequisites:
  - approved commit_unit or reviewed_change_set

PF-MRG-004:
- unit_name: dashboard container merge candidate unit
- source_commit_pr_units:
  - PF-CPR-004
  - PF-CPR-005
  - PF-CPR-006
- scope_type: merge_release_local
- prerequisites:
  - approved reviewed_change_set
  - compatible approved scope

PF-MRG-005:
- unit_name: project detail reducer merge candidate unit
- source_commit_pr_units:
  - PF-CPR-007
- scope_type: merge_release_local
- prerequisites:
  - approved reviewed_change_set

PF-MRG-006:
- unit_name: preview rendering merge candidate unit
- source_commit_pr_units:
  - PF-CPR-008
- scope_type: merge_release_local
- prerequisites:
  - approved reviewed_change_set

PF-MRG-007:
- unit_name: export route merge candidate unit
- source_commit_pr_units:
  - PF-CPR-009
- scope_type: merge_release_local
- prerequisites:
  - approved reviewed_change_set

PF-MRG-008:
- unit_name: repository implementation merge candidate unit
- source_commit_pr_units:
  - PF-CPR-010
- scope_type: merge_release_boundary_aware
- prerequisites:
  - approved reviewed_change_set
  - blocked scope excluded

PF-MRG-009:
- unit_name: gateway mapping merge candidate unit
- source_commit_pr_units:
  - PF-CPR-011
- scope_type: merge_release_boundary_aware
- prerequisites:
  - approved reviewed_change_set
  - confirmed boundary-safe scope only

PF-MRG-010:
- unit_name: sync status ui merge candidate unit
- source_commit_pr_units:
  - PF-CPR-012
- scope_type: merge_release_boundary_aware
- prerequisites:
  - approved reviewed_change_set
  - blocked scope excluded

PF-MRG-011:
- unit_name: refresh trigger merge candidate unit
- source_commit_pr_units:
  - PF-CPR-013
- scope_type: merge_release_boundary_aware
- prerequisites:
  - approved reviewed_change_set
  - blocked scope excluded

PF-MRG-012:
- unit_name: first release-prep packaging unit
- source_merge_units:
  - PF-MRG-001
  - PF-MRG-002
  - PF-MRG-003
  - PF-MRG-004
- scope_type: release_prep_local
- prerequisites:
  - approved merge candidate units
  - blocked scope excluded

# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an execution ledger
for early merge / release-prep units.

execution_ledger:

  - order_no: 1
    unit_id: PF-MRG-001
    unit_name: app entry merge candidate unit
    scope_type: merge_release_local
    readiness: ready_first

  - order_no: 2
    unit_id: PF-MRG-002
    unit_name: bootstrap startup merge candidate unit
    scope_type: merge_release_local
    readiness: ready_after_app_entry_merge_candidate

  - order_no: 3
    unit_id: PF-MRG-003
    unit_name: navigation foundation merge candidate unit
    scope_type: merge_release_local
    readiness: ready_after_navigation_commit_unit

  - order_no: 4
    unit_id: PF-MRG-004
    unit_name: dashboard container merge candidate unit
    scope_type: merge_release_local
    readiness: ready_after_dashboard_related_commit_units

  - order_no: 5
    unit_id: PF-MRG-005
    unit_name: project detail reducer merge candidate unit
    scope_type: merge_release_local
    readiness: ready_after_project_detail_commit_unit

  - order_no: 6
    unit_id: PF-MRG-006
    unit_name: preview rendering merge candidate unit
    scope_type: merge_release_local
    readiness: ready_after_preview_commit_unit

  - order_no: 7
    unit_id: PF-MRG-007
    unit_name: export route merge candidate unit
    scope_type: merge_release_local
    readiness: ready_after_export_commit_unit

  - order_no: 8
    unit_id: PF-MRG-010
    unit_name: sync status ui merge candidate unit
    scope_type: merge_release_boundary_aware
    readiness: ready_after_sync_commit_unit_and_boundary_safe_scope

  - order_no: 9
    unit_id: PF-MRG-011
    unit_name: refresh trigger merge candidate unit
    scope_type: merge_release_boundary_aware
    readiness: ready_after_refresh_commit_unit_and_boundary_safe_scope

  - order_no: 10
    unit_id: PF-MRG-008
    unit_name: repository implementation merge candidate unit
    scope_type: merge_release_boundary_aware
    readiness: ready_after_repository_commit_unit

  - order_no: 11
    unit_id: PF-MRG-009
    unit_name: gateway mapping merge candidate unit
    scope_type: merge_release_boundary_aware
    readiness: ready_after_gateway_commit_unit_and_boundary_safe_scope

  - order_no: 12
    unit_id: PF-MRG-012
    unit_name: first release-prep packaging unit
    scope_type: release_prep_local
    readiness: ready_after_core_local_merge_candidates

important_rule:
Boundary-aware merge units remain later than core local merge units
unless explicitly confirmed safe.

# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT DELIVERABLE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining deliverables
for merge / release-prep units.

template_fields:
- unit_id
- unit_name
- deliverable_name
- deliverable_type
- objective
- source_outputs
- completion_condition
- blocked_by
- notes

deliverable_type_candidates:
- merge_candidate_set
- reviewed_merge_bundle
- release_prep_bundle
- scoped_merge_summary

# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT REVIEW AND APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reviewing and approving merge / release-prep unit outputs.

review_fields:
- unit_id
- unit_name
- reviewer
- review_date
- review_result: pass_or_partial_or_hold
- outputs_reviewed
- ownership_boundary_preserved: yes_no
- blocked_scope_excluded: yes_no
- followup_actions
- notes

approval_fields:
- approval_date
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_units
- approval_notes

rules:
- pass plus approved unlocks next dependent merge or release-prep units
- partial approval unlocks only explicitly approved scope
- hold or not-approved unlocks nothing downstream

# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the first merge / release-prep units.

completion_matrix:

PF-MRG-001:
- unit_name: app entry merge candidate unit
- expected_deliverables:
  - merge_candidate_set
- completion_condition:
  - app entry merge candidate scope is explicit
  - approved-scope boundary remains explicit

PF-MRG-002:
- unit_name: bootstrap startup merge candidate unit
- expected_deliverables:
  - merge_candidate_set
- completion_condition:
  - bootstrap startup merge candidate scope is explicit
  - startup boundary remains explicit

PF-MRG-003:
- unit_name: navigation foundation merge candidate unit
- expected_deliverables:
  - reviewed_merge_bundle
- completion_condition:
  - navigation foundation merge scope is explicit
  - route graph ownership remains explicit

PF-MRG-004:
- unit_name: dashboard container merge candidate unit
- expected_deliverables:
  - reviewed_merge_bundle
- completion_condition:
  - dashboard-related merge scope is explicit
  - combined approved scope remains reviewable

PF-MRG-005:
- unit_name: project detail reducer merge candidate unit
- expected_deliverables:
  - reviewed_merge_bundle
- completion_condition:
  - project detail reducer merge scope is explicit
  - ERP reference versus local editable boundary remains separated

PF-MRG-006:
- unit_name: preview rendering merge candidate unit
- expected_deliverables:
  - reviewed_merge_bundle
- completion_condition:
  - preview rendering merge scope is explicit
  - preview-local surface remains explicit

PF-MRG-007:
- unit_name: export route merge candidate unit
- expected_deliverables:
  - reviewed_merge_bundle
- completion_condition:
  - export route merge scope is explicit
  - review-aware export path remains explicit

PF-MRG-008:
- unit_name: repository implementation merge candidate unit
- expected_deliverables:
  - reviewed_merge_bundle
- completion_condition:
  - repository merge scope is explicit
  - local ownership remains explicit

PF-MRG-009:
- unit_name: gateway mapping merge candidate unit
- expected_deliverables:
  - reviewed_merge_bundle
- completion_condition:
  - gateway merge scope is explicit
  - blocked boundary scope remains excluded

PF-MRG-010:
- unit_name: sync status ui merge candidate unit
- expected_deliverables:
  - reviewed_merge_bundle
- completion_condition:
  - sync status ui merge scope is explicit
  - sync state remains distinct from business truth

PF-MRG-011:
- unit_name: refresh trigger merge candidate unit
- expected_deliverables:
  - reviewed_merge_bundle
- completion_condition:
  - refresh trigger merge scope is explicit
  - mediated refresh assumption remains explicit

PF-MRG-012:
- unit_name: first release-prep packaging unit
- expected_deliverables:
  - release_prep_bundle
- completion_condition:
  - release-prep package scope is explicit
  - only approved local merge scope is included
  - blocked scope remains excluded

# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT EXECUTION RECORD TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording execution status
for merge / release-prep units.

execution_record_fields:
- unit_id
- unit_name
- scope_type
- execution_started: yes_no
- execution_status: not_started_or_in_progress_or_paused_or_done
- start_date
- pause_reason
- prerequisite_outputs_confirmed: yes_no
- current_outputs
- review_status
- approval_status
- next_followup
- notes

recording_rules:
- paused units must record pause reason explicitly
- boundary-aware units must keep blocked conditions visible
- done status should list produced outputs explicitly

# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT REOPEN TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reopening a paused or blocked merge / release-prep unit safely.

reopen_template_fields:
- unit_id
- unit_name
- previous_status: paused_or_blocked
- reopen_request_date
- reopen_reason
- prerequisite_outputs_rechecked: yes_no
- blocked_condition_resolved: yes_no
- boundary_check_rerun_needed: yes_no
- safe_to_reopen: yes_no
- reopen_notes

reopen_rules:
- blocked units may reopen only after explicit blocked-condition review
- paused units may reopen only after pause reason is re-evaluated
- boundary-aware units require boundary recheck when needed

# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT TO RC HANDOFF LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps merge / release-prep units
to likely release-candidate or handoff units.

merge_release_to_rc_handoff_ledger:

PF-MRG-001:
- unlocks:
  - app entry release-candidate check unit

PF-MRG-002:
- unlocks:
  - bootstrap startup release-candidate check unit

PF-MRG-003:
- unlocks:
  - navigation release-candidate check unit

PF-MRG-004:
- unlocks:
  - dashboard release-candidate check unit

PF-MRG-005:
- unlocks:
  - project detail release-candidate check unit

PF-MRG-006:
- unlocks:
  - preview release-candidate check unit

PF-MRG-007:
- unlocks:
  - export route release-candidate check unit

PF-MRG-008:
- unlocks:
  - repository release-candidate check unit

PF-MRG-009:
- unlocks:
  - gateway release-candidate check unit

PF-MRG-010:
- unlocks:
  - sync ui release-candidate check unit

PF-MRG-011:
- unlocks:
  - refresh release-candidate check unit

PF-MRG-012:
- unlocks:
  - release-candidate packaging unit
  - implementation handoff summary unit

important_rule:
No release-candidate or handoff unit is unlocked
until merge / release-prep outputs are reviewed and approved in usable scope.

# ============================================================
# PROJECT FLOW RC HANDOFF UNIT STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended release-candidate and handoff units.

starter_units:

PF-RC-001:
- unit_name: app entry release-candidate check unit
- source_merge_release_units:
  - PF-MRG-001
- scope_type: rc_local
- prerequisites:
  - approved merge_candidate_set or reviewed_merge_bundle

PF-RC-002:
- unit_name: bootstrap startup release-candidate check unit
- source_merge_release_units:
  - PF-MRG-002
- scope_type: rc_local
- prerequisites:
  - approved merge_candidate_set or reviewed_merge_bundle

PF-RC-003:
- unit_name: navigation release-candidate check unit
- source_merge_release_units:
  - PF-MRG-003
- scope_type: rc_local
- prerequisites:
  - approved reviewed_merge_bundle

PF-RC-004:
- unit_name: dashboard release-candidate check unit
- source_merge_release_units:
  - PF-MRG-004
- scope_type: rc_local
- prerequisites:
  - approved reviewed_merge_bundle

PF-RC-005:
- unit_name: project detail release-candidate check unit
- source_merge_release_units:
  - PF-MRG-005
- scope_type: rc_local
- prerequisites:
  - approved reviewed_merge_bundle

PF-RC-006:
- unit_name: preview release-candidate check unit
- source_merge_release_units:
  - PF-MRG-006
- scope_type: rc_local
- prerequisites:
  - approved reviewed_merge_bundle

PF-RC-007:
- unit_name: export route release-candidate check unit
- source_merge_release_units:
  - PF-MRG-007
- scope_type: rc_local
- prerequisites:
  - approved reviewed_merge_bundle

PF-RC-008:
- unit_name: repository release-candidate check unit
- source_merge_release_units:
  - PF-MRG-008
- scope_type: rc_boundary_aware
- prerequisites:
  - approved reviewed_merge_bundle
  - blocked scope excluded

PF-RC-009:
- unit_name: gateway release-candidate check unit
- source_merge_release_units:
  - PF-MRG-009
- scope_type: rc_boundary_aware
- prerequisites:
  - approved reviewed_merge_bundle
  - confirmed boundary-safe scope only

PF-RC-010:
- unit_name: sync ui release-candidate check unit
- source_merge_release_units:
  - PF-MRG-010
- scope_type: rc_boundary_aware
- prerequisites:
  - approved reviewed_merge_bundle
  - blocked scope excluded

PF-RC-011:
- unit_name: refresh release-candidate check unit
- source_merge_release_units:
  - PF-MRG-011
- scope_type: rc_boundary_aware
- prerequisites:
  - approved reviewed_merge_bundle
  - blocked scope excluded

PF-RC-012:
- unit_name: release-candidate packaging unit
- source_merge_release_units:
  - PF-MRG-012
- scope_type: rc_packaging
- prerequisites:
  - approved release_prep_bundle
  - blocked scope excluded

PF-RC-013:
- unit_name: implementation handoff summary unit
- source_merge_release_units:
  - PF-MRG-012
- scope_type: handoff_summary
- prerequisites:
  - approved release_prep_bundle
  - approved-scope summary available

# ============================================================
# PROJECT FLOW RC HANDOFF UNIT EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an execution ledger
for early release-candidate and handoff units.

execution_ledger:

  - order_no: 1
    unit_id: PF-RC-001
    unit_name: app entry release-candidate check unit
    scope_type: rc_local
    readiness: ready_first

  - order_no: 2
    unit_id: PF-RC-002
    unit_name: bootstrap startup release-candidate check unit
    scope_type: rc_local
    readiness: ready_after_app_entry_rc_check

  - order_no: 3
    unit_id: PF-RC-003
    unit_name: navigation release-candidate check unit
    scope_type: rc_local
    readiness: ready_after_navigation_merge_bundle

  - order_no: 4
    unit_id: PF-RC-004
    unit_name: dashboard release-candidate check unit
    scope_type: rc_local
    readiness: ready_after_dashboard_merge_bundle

  - order_no: 5
    unit_id: PF-RC-005
    unit_name: project detail release-candidate check unit
    scope_type: rc_local
    readiness: ready_after_project_detail_merge_bundle

  - order_no: 6
    unit_id: PF-RC-006
    unit_name: preview release-candidate check unit
    scope_type: rc_local
    readiness: ready_after_preview_merge_bundle

  - order_no: 7
    unit_id: PF-RC-007
    unit_name: export route release-candidate check unit
    scope_type: rc_local
    readiness: ready_after_export_merge_bundle

  - order_no: 8
    unit_id: PF-RC-010
    unit_name: sync ui release-candidate check unit
    scope_type: rc_boundary_aware
    readiness: ready_after_sync_merge_bundle_and_boundary_safe_scope

  - order_no: 9
    unit_id: PF-RC-011
    unit_name: refresh release-candidate check unit
    scope_type: rc_boundary_aware
    readiness: ready_after_refresh_merge_bundle_and_boundary_safe_scope

  - order_no: 10
    unit_id: PF-RC-008
    unit_name: repository release-candidate check unit
    scope_type: rc_boundary_aware
    readiness: ready_after_repository_merge_bundle

  - order_no: 11
    unit_id: PF-RC-009
    unit_name: gateway release-candidate check unit
    scope_type: rc_boundary_aware
    readiness: ready_after_gateway_merge_bundle_and_boundary_safe_scope

  - order_no: 12
    unit_id: PF-RC-012
    unit_name: release-candidate packaging unit
    scope_type: rc_packaging
    readiness: ready_after_core_rc_checks

  - order_no: 13
    unit_id: PF-RC-013
    unit_name: implementation handoff summary unit
    scope_type: handoff_summary
    readiness: ready_after_release_prep_bundle_and_rc_scope_summary

important_rule:
Boundary-aware RC units remain later than core local RC units
unless explicitly confirmed safe.

# ============================================================
# PROJECT FLOW RC HANDOFF UNIT DELIVERABLE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining deliverables
for release-candidate and handoff units.

template_fields:
- unit_id
- unit_name
- deliverable_name
- deliverable_type
- objective
- source_outputs
- completion_condition
- blocked_by
- notes

deliverable_type_candidates:
- rc_check_bundle
- rc_packaging_bundle
- handoff_summary_bundle
- readiness_summary

# ============================================================
# PROJECT FLOW RC HANDOFF UNIT REVIEW AND APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reviewing and approving release-candidate and handoff outputs.

review_fields:
- unit_id
- unit_name
- reviewer
- review_date
- review_result: pass_or_partial_or_hold
- outputs_reviewed
- ownership_boundary_preserved: yes_no
- blocked_scope_excluded: yes_no
- followup_actions
- notes

approval_fields:
- approval_date
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_units
- approval_notes

rules:
- pass plus approved unlocks next dependent RC or handoff units
- partial approval unlocks only explicitly approved scope
- hold or not-approved unlocks nothing downstream

# ============================================================
# PROJECT FLOW RC HANDOFF COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the first RC and handoff units.

completion_matrix:

PF-RC-001:
- unit_name: app entry release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - app entry RC check scope is explicit
  - approved-scope boundary remains explicit

PF-RC-002:
- unit_name: bootstrap startup release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - bootstrap startup RC check scope is explicit
  - startup boundary remains explicit

PF-RC-003:
- unit_name: navigation release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - navigation RC check scope is explicit
  - route graph ownership remains explicit

PF-RC-004:
- unit_name: dashboard release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - dashboard RC check scope is explicit
  - approved dashboard scope remains reviewable

PF-RC-005:
- unit_name: project detail release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - project detail RC check scope is explicit
  - ERP reference versus local editable scope remains separated

PF-RC-006:
- unit_name: preview release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - preview RC check scope is explicit
  - preview-local surface remains explicit

PF-RC-007:
- unit_name: export route release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - export RC check scope is explicit
  - review-aware export path remains explicit

PF-RC-008:
- unit_name: repository release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - repository RC check scope is explicit
  - local ownership remains explicit

PF-RC-009:
- unit_name: gateway release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - gateway RC check scope is explicit
  - blocked boundary scope remains excluded

PF-RC-010:
- unit_name: sync ui release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - sync UI RC check scope is explicit
  - sync state remains distinct from business truth

PF-RC-011:
- unit_name: refresh release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - refresh RC check scope is explicit
  - mediated refresh assumption remains explicit

PF-RC-012:
- unit_name: release-candidate packaging unit
- expected_deliverables:
  - rc_packaging_bundle
- completion_condition:
  - RC packaging scope is explicit
  - only approved scope is included
  - blocked scope remains excluded

PF-RC-013:
- unit_name: implementation handoff summary unit
- expected_deliverables:
  - handoff_summary_bundle
  - readiness_summary
- completion_condition:
  - handoff summary reflects approved reality only
  - done / deferred / blocked / future sophistication are separated explicitly

# ============================================================
# PROJECT FLOW RC HANDOFF EXECUTION RECORD TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording execution status
for RC and handoff units.

execution_record_fields:
- unit_id
- unit_name
- scope_type
- execution_started: yes_no
- execution_status: not_started_or_in_progress_or_paused_or_done
- start_date
- pause_reason
- prerequisite_outputs_confirmed: yes_no
- current_outputs
- review_status
- approval_status
- next_followup
- notes

recording_rules:
- paused units must record pause reason explicitly
- boundary-aware units must keep blocked conditions visible
- done status should list produced outputs explicitly

# ============================================================
# PROJECT FLOW RC HANDOFF REOPEN TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reopening a paused or blocked RC / handoff unit safely.

reopen_template_fields:
- unit_id
- unit_name
- previous_status: paused_or_blocked
- reopen_request_date
- reopen_reason
- prerequisite_outputs_rechecked: yes_no
- blocked_condition_resolved: yes_no
- boundary_check_rerun_needed: yes_no
- safe_to_reopen: yes_no
- reopen_notes

reopen_rules:
- blocked units may reopen only after explicit blocked-condition review
- paused units may reopen only after pause reason is re-evaluated
- boundary-aware units require boundary recheck when needed

# ============================================================
# PROJECT FLOW RC HANDOFF TO FINAL CLOSURE LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps RC and handoff units
to final closure units.

rc_handoff_to_final_closure_ledger:

PF-RC-001:
- unlocks:
  - final app entry closure note unit

PF-RC-002:
- unlocks:
  - final bootstrap closure note unit

PF-RC-003:
- unlocks:
  - final navigation closure note unit

PF-RC-004:
- unlocks:
  - final dashboard closure note unit

PF-RC-005:
- unlocks:
  - final project detail closure note unit

PF-RC-006:
- unlocks:
  - final preview closure note unit

PF-RC-007:
- unlocks:
  - final export route closure note unit

PF-RC-008:
- unlocks:
  - final repository closure note unit

PF-RC-009:
- unlocks:
  - final gateway closure note unit

PF-RC-010:
- unlocks:
  - final sync ui closure note unit

PF-RC-011:
- unlocks:
  - final refresh closure note unit

PF-RC-012:
- unlocks:
  - release candidate final closure unit

PF-RC-013:
- unlocks:
  - master final handoff unit
  - restart entry unit
  - closure decision unit

important_rule:
No final closure unit is unlocked
until RC / handoff outputs are reviewed and approved in usable scope.

# ============================================================
# PROJECT FLOW FINAL CLOSURE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for final closure after RC and handoff completion.

template_fields:
- closure_date
- approved_done_scope
- approved_but_deferred_scope
- blocked_scope
- future_sophistication_scope
- handoff_documents
- restart_entry_documents
- final_notes

rules:
- closure must reflect approved reality only
- blocked scope must remain blocked explicitly
- deferred scope must not be mislabeled as done
- future sophistication must remain distinct from blocked scope

# ============================================================
# PROJECT FLOW MASTER RESTART ENTRY TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for restart entry after final closure.

template_fields:
- restart_point_name
- current_confirmed_scope
- blocked_scope
- deferred_scope
- next_recommended_start
- key_reference_documents
- notes

rules:
- restart entry should be short and operational
- restart should begin from confirmed scope
- blocked scope should remain explicit

# ============================================================
# PROJECT FLOW CLOSURE DECISION TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording the formal closure decision
for the current ProjectFlow design and planning cycle.

template_fields:
- closure_decision_date
- closure_result: pass_or_partial_or_hold
- approved_done_scope
- approved_but_deferred_scope
- blocked_scope
- future_sophistication_scope
- basis_documents
- followup_required
- notes

decision_rules:
- closure decision must reflect approved reality only
- blocked scope must remain blocked explicitly
- deferred scope must not be mislabeled as done
- future sophistication must remain distinct from blocked scope

# ============================================================
# PROJECT FLOW FINAL_HANDOFF_SUMMARY_TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for producing a final handoff summary
after closure decision is recorded.

template_fields:
- handoff_date
- current_confirmed_scope
- approved_but_deferred_scope
- blocked_scope
- future_sophistication_scope
- key_entry_documents
- key_restart_documents
- recommended_next_start
- notes

handoff_rules:
- handoff must be concise and restart-friendly
- handoff must point to concrete entry documents
- handoff must separate done,
  deferred,
  blocked,
  and future scope explicitly

# ============================================================
# PROJECT FLOW MASTER_RESTART_NOTE_TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for a master restart note
to be used in the next chat or next phase.

template_fields:
- restart_note_date
- current_phase_position
- confirmed_scope
- blocked_scope
- deferred_scope
- next_recommended_bundle
- key_reference_documents
- restart_warning_points
- notes

restart_rules:
- restart note should begin from confirmed scope
- blocked scope should remain explicit
- warning points should highlight where silent reopening is forbidden

# ============================================================
# PROJECT FLOW FINAL_NAVIGATION_TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for final navigation
across the most important ProjectFlow closure documents.

navigation_sections:
- current_closure_status
- restart_entry
- implementation_start_entry
- db_owner_review_entry
- common_component_entry
- final_handoff
- blocked_scope_reference

navigation_rules:
- navigation should prefer concise entry docs first
- deeper docs should be referenced only as needed
- restart entry and closure decision should remain easy to find

# ============================================================
# PROJECT FLOW CLOSURE AND RESTART STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a starter set of documents
that should anchor closure and restart.

starter_documents:
- 0900223_PROJECT_FLOW_CLOSURE_DECISION_TEMPLATE.md
- 0900224_PROJECT_FLOW_FINAL_HANDOFF_SUMMARY_TEMPLATE.md
- 0900225_PROJECT_FLOW_MASTER_RESTART_NOTE_TEMPLATE.md
- 0900226_PROJECT_FLOW_FINAL_NAVIGATION_TEMPLATE.md
- 0900041_PROJECT_FLOW_CLOSURE_DECISION.md
- 0900097_PROJECT_FLOW_IMPLEMENTATION_START_ENTRY_NOTE.md
- 0900087_PROJECT_FLOW_DB_OWNER_REVIEW_START_NOTE.md
- 0900110_PROJECT_FLOW_OFFICIAL_COMMON_COMPONENT_LEDGER_SUMMARY.md

important_note:
This starter set is intended to reduce restart friction
and keep closure documents easy to locate.

# ============================================================
# PROJECT FLOW CURRENT CLOSURE STATUS
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the current practical closure status
for ProjectFlow at this point in the design and decomposition cycle.

current_status_summary:
- broad application design is fixed
- ownership, editability, action authority, state transition, and auditability are fixed
- BusinessOS / ERP exact boundary interpretation is fixed at design level
- DB-owner-review-required items remain explicitly separated
- implementation-start through RC / handoff / closure layers are structurally defined
- official common component ledger is integrated as a primary shared-component reference

approved_done_scope:
- architecture and boundary design
- exact-design bottleneck resolution
- implementation-start planning structure
- coding-start planning structure
- actual implementation task decomposition structure
- next implementation unit structure
- concrete coding work group structure
- concrete file unit structure
- patch task structure
- commit / PR unit structure
- merge / release-prep unit structure
- RC / handoff / closure structure

approved_but_deferred_scope:
- DB-owner-review-dependent final DB execution specifics
- later sophistication beyond current initial scope

blocked_scope:
- unresolved DB-owner-review-required execution details
- any direct ERP assumption
- any silent override of official shared-component ownership

future_sophistication_scope:
- national holiday aware business calendar
- advanced multilingual expansion beyond Japanese and English
- broader common-component promotion beyond current official scope

important_note:
ProjectFlow is now in a state
where restart and further continuation should begin from the closure and restart entry docs,
not from reopening broad design.

# ============================================================
# PROJECT FLOW FINAL HANDOFF SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a practical final handoff summary
for the next continuation chat.

current_confirmed_scope:
- broad application design is fixed
- exact boundary and WBS rules are fixed
- implementation decomposition has been expanded from work packages
  down to RC / handoff / closure layers
- official common component ledger is a primary reference for shared ownership decisions

approved_but_deferred_scope:
- DB-owner-review-required final DB execution specifics
- later sophistication areas beyond current initial scope

blocked_scope:
- direct ERP assumptions
- unresolved DB execution details without DB-owner review
- silent shared-ownership override at ProjectFlow local level

future_sophistication_scope:
- holiday-aware calendar sophistication
- multilingual expansion beyond Japanese and English
- broader future common-component promotion

key_entry_documents:
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
- 0900225_PROJECT_FLOW_MASTER_RESTART_NOTE_TEMPLATE.md
- 0900097_PROJECT_FLOW_IMPLEMENTATION_START_ENTRY_NOTE.md
- 0900087_PROJECT_FLOW_DB_OWNER_REVIEW_START_NOTE.md
- 0900110_PROJECT_FLOW_OFFICIAL_COMMON_COMPONENT_LEDGER_SUMMARY.md

recommended_next_start:
- start from actual closure status
- confirm whether next work is DB-owner review,
  implementation continuation,
  or final closure cleanup
- continue from confirmed scope only

notes:
This handoff summary is intended
to minimize restart friction in the next chat.

# ============================================================
# PROJECT FLOW MASTER RESTART NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a short operational restart note
for the next continuation point.

current_phase_position:
- broad design fixed
- implementation decomposition deeply expanded
- closure and restart layer established
- DB-owner-review-required details remain explicitly separated

confirmed_scope:
- ProjectFlow design identity and boundary set
- implementation decomposition structure
- official shared-component reference integration
- closure and restart entry layer

blocked_scope:
- DB-owner-review-required execution specifics
- direct ERP assumptions
- silent override of official shared-component ownership

deferred_scope:
- later sophistication items outside current initial scope

next_recommended_bundle:
- choose one:
  - DB-owner review execution
  - implementation continuation from approved scope
  - closure cleanup and navigation tightening

key_reference_documents:
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
- 0900229_PROJECT_FLOW_FINAL_HANDOFF_SUMMARY.md
- 0900097_PROJECT_FLOW_IMPLEMENTATION_START_ENTRY_NOTE.md
- 0900087_PROJECT_FLOW_DB_OWNER_REVIEW_START_NOTE.md
- 0900110_PROJECT_FLOW_OFFICIAL_COMMON_COMPONENT_LEDGER_SUMMARY.md

restart_warning_points:
- do not reopen broad design without explicit reason
- do not treat blocked DB scope as approved
- do not treat future sophistication as required immediate scope

# ============================================================
# PROJECT FLOW FINAL NAVIGATION
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides concise navigation
across the most important ProjectFlow closure and restart documents.

current_closure_status:
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md

restart_entry:
- 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md

final_handoff:
- 0900229_PROJECT_FLOW_FINAL_HANDOFF_SUMMARY.md

implementation_start_entry:
- 0900097_PROJECT_FLOW_IMPLEMENTATION_START_ENTRY_NOTE.md
- 0900098_PROJECT_FLOW_IMPLEMENTATION_START_CHECK_TEMPLATE.md

db_owner_review_entry:
- 0900087_PROJECT_FLOW_DB_OWNER_REVIEW_START_NOTE.md
- 0900089_PROJECT_FLOW_DB_OWNER_REVIEW_EXECUTION_SHEET.md
- 0900090_PROJECT_FLOW_DB_OWNER_REVIEW_RESULT_TEMPLATE.md

common_component_entry:
- 0900110_PROJECT_FLOW_OFFICIAL_COMMON_COMPONENT_LEDGER_SUMMARY.md
- 0900112_PROJECT_FLOW_COMMON_COMPONENT_DECISION_TEMPLATE.md
- 0900114_PROJECT_FLOW_SHARED_COMPONENT_ADAPTER_TEMPLATE.md
- 0900115_PROJECT_FLOW_LOCAL_ORCHESTRATION_TEMPLATE.md

blocked_scope_reference:
- 0900086_PROJECT_FLOW_REMAINING_ITEM_FINAL_CLASSIFICATION.md
- 0800030_PROJECT_FLOW_REMAINING_ITEM_STOPLINE_POLICY.md

important_rule:
Use concise entry docs first.
Go deeper only when the entry docs indicate it is necessary.

# ============================================================
# PROJECT FLOW CLOSURE DECISION
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Records the current closure decision
for ProjectFlow in this design cycle.

closure_result:
pass_with_explicit_deferred_and_blocked_scope

approved_done_scope:
- broad application design
- boundary and ownership design
- exact payload and WBS rule design
- implementation decomposition from work package
  through RC / handoff / closure layers
- official common component ledger integration
- final entry and restart document layer

approved_but_deferred_scope:
- DB-owner-review-dependent final DB execution specifics
- later sophistication items outside the current initial scope

blocked_scope:
- direct ERP assumptions
- unresolved DB execution details without DB-owner review
- silent override of official shared-component ownership

future_sophistication_scope:
- holiday-aware business calendar refinement
- multilingual expansion beyond Japanese and English
- broader future common-component promotion

decision_note:
ProjectFlow is considered closed
for the current broad design and decomposition cycle,
with explicit deferred and blocked scope preserved.

# ============================================================
# PROJECT FLOW DESIGN FREEZE NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
States the current design freeze boundary
for ProjectFlow.

freeze_scope:
- app identity
- ownership boundary
- editability
- action authority
- state transition
- auditability
- exact BusinessOS / ERP mediated direction
- implementation decomposition structure
- final entry and restart structure

not_frozen_but_explicitly_separated:
- DB-owner-review execution specifics
- later sophistication items

important_rule:
Future work should begin from the frozen confirmed scope
unless an explicit reason exists to reopen it.

# ============================================================
# PROJECT FLOW NEXT CHAT START NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the simplest practical starting note
for the next chat.

recommended_start_message:
Start from ProjectFlow final entry docs.
Confirm whether the next objective is:
1. DB-owner review,
2. implementation continuation from approved scope,
or
3. closure cleanup only.

read_first:
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
- 0900229_PROJECT_FLOW_FINAL_HANDOFF_SUMMARY.md
- 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
- 0900231_PROJECT_FLOW_FINAL_NAVIGATION.md

warning_points:
- do not reopen broad design without explicit reason
- do not treat blocked DB scope as approved
- do not mix future sophistication with current required scope

# ============================================================
# PROJECT FLOW FINAL INDEX PATCH NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact note
that the final closure and restart entry docs
should be considered top-priority navigation targets.

top_priority_navigation_targets:
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
- 0900229_PROJECT_FLOW_FINAL_HANDOFF_SUMMARY.md
- 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
- 0900231_PROJECT_FLOW_FINAL_NAVIGATION.md
- 0900232_PROJECT_FLOW_CLOSURE_DECISION.md
- 0900233_PROJECT_FLOW_DESIGN_FREEZE_NOTE.md
- 0900234_PROJECT_FLOW_NEXT_CHAT_START_NOTE.md

usage_rule:
These files should be used first
before reopening deeper decomposition layers.

# ============================================================
# PROJECT FLOW TOP PRIORITY NAVIGATION
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the shortest top-priority navigation set
for everyday restart and continuation.

top_priority_docs:
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
- 0900229_PROJECT_FLOW_FINAL_HANDOFF_SUMMARY.md
- 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
- 0900231_PROJECT_FLOW_FINAL_NAVIGATION.md
- 0900232_PROJECT_FLOW_CLOSURE_DECISION.md
- 0900233_PROJECT_FLOW_DESIGN_FREEZE_NOTE.md
- 0900234_PROJECT_FLOW_NEXT_CHAT_START_NOTE.md

quick_usage:
- overall status -> 0900228
- next chat restart -> 0900230
- deep doc routing -> 0900231
- closure basis -> 0900232

# ============================================================
# PROJECT FLOW CURRENT CLOSURE CANDIDATE SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Summarizes why ProjectFlow is a practical closure candidate
for the current design cycle.

closure_candidate_reasons:
- broad design is fixed
- boundary and ownership model is fixed
- exact design bottlenecks are resolved
- DB-owner-review-required items are explicitly separated
- implementation decomposition is expanded deeply enough for restart
- final entry, handoff, restart, and navigation docs exist

remaining_non_blocking_items:
- DB execution specifics requiring DB-owner review
- future sophistication items outside current initial scope
- optional cleanup and summarization improvements

conclusion:
ProjectFlow is a strong closure candidate
for the current broad design and decomposition cycle.

# ============================================================
# PROJECT FLOW RESTART SHORTCUT NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the shortest possible restart shortcut.

restart_shortcut:
1. read 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
2. read 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
3. choose one path:
   - DB-owner review
   - implementation continuation
   - closure cleanup
4. use 0900231_PROJECT_FLOW_FINAL_NAVIGATION.md only if deeper navigation is needed

warning:
Do not restart from deep decomposition docs first
unless the shortcut docs point you there.

# ============================================================
# PROJECT FLOW MASTER CLOSURE SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides one master closure summary
for the current ProjectFlow state.

summary:
- ProjectFlow broad design is fixed
- boundary and ownership interpretation is fixed
- exact-design bottlenecks are resolved at design level
- DB-owner-review-required items are explicitly separated
- official common component ledger is integrated as a primary reference
- implementation decomposition has been expanded from work package
  to RC / handoff / closure layers
- final closure,
  handoff,
  restart,
  and navigation materials now exist

current_operational_conclusion:
Use the final entry docs first.
Do not restart from deep decomposition docs by default.

# ============================================================
# PROJECT FLOW ENTRY DOCUMENT MAP
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact map
from common user intent
to the correct entry document.

entry_document_map:

want_overall_status:
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md

want_next_chat_restart:
- 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md

want_shortest_restart:
- 0900238_PROJECT_FLOW_RESTART_SHORTCUT_NOTE.md

want_final_handoff:
- 0900229_PROJECT_FLOW_FINAL_HANDOFF_SUMMARY.md

want_navigation_to_deeper_docs:
- 0900231_PROJECT_FLOW_FINAL_NAVIGATION.md

want_closure_basis:
- 0900232_PROJECT_FLOW_CLOSURE_DECISION.md
- 0900233_PROJECT_FLOW_DESIGN_FREEZE_NOTE.md

want_common_component_entry:
- 0900110_PROJECT_FLOW_OFFICIAL_COMMON_COMPONENT_LEDGER_SUMMARY.md

want_db_owner_review_entry:
- 0900087_PROJECT_FLOW_DB_OWNER_REVIEW_START_NOTE.md

want_implementation_restart:
- 0900097_PROJECT_FLOW_IMPLEMENTATION_START_ENTRY_NOTE.md

# ============================================================
# PROJECT FLOW CLOSURE STATE MAP
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact state map
for done / deferred / blocked / future scope.

done_scope:
- broad design
- boundary interpretation
- exact-design layer
- implementation decomposition layer
- final entry and restart layer

deferred_scope:
- DB-owner-review-dependent DB execution specifics

blocked_scope:
- direct ERP assumption
- unresolved DB execution specifics without DB-owner review
- silent override of official shared-component ownership

future_scope:
- holiday-aware calendar sophistication
- multilingual expansion beyond Japanese and English
- broader future common-component promotion

important_rule:
Deferred,
blocked,
and future scopes must remain distinct.

# ============================================================
# PROJECT FLOW FINAL END NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Marks the practical end point
of the current ProjectFlow design and decomposition cycle.

end_state:
- broad design is fixed
- boundary interpretation is fixed
- exact-design bottlenecks are resolved
- decomposition is expanded deeply enough for restart
- final closure and restart documents exist
- remaining unresolved areas are explicitly separated

remaining_separated_areas:
- DB-owner-review-required DB execution specifics
- future sophistication outside current initial scope
- optional cleanup improvements

end_rule:
Further continuation should start from the final entry docs,
not by reopening broad design from scratch.

# ============================================================
# PROJECT FLOW ONE PAGE RESTART
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a one-page restart reference
for the next continuation.

current_state:
- ProjectFlow broad design is closed for the current cycle
- blocked and deferred scopes are explicitly separated
- implementation continuation can resume from approved scope
- DB-owner review can resume from its dedicated entry docs

read_in_order:
1. 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
2. 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
3. 0900231_PROJECT_FLOW_FINAL_NAVIGATION.md

choose_one_path:
- DB-owner review
- implementation continuation
- closure cleanup only

do_not_do:
- reopen broad design without explicit reason
- treat blocked DB scope as approved
- mix future sophistication with immediate required scope

# ============================================================
# PROJECT FLOW CLOSURE NAVIGATION SHORTCUT
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the shortest closure-oriented navigation shortcut.

shortcut_targets:
- current closure status:
  - 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
- final handoff:
  - 0900229_PROJECT_FLOW_FINAL_HANDOFF_SUMMARY.md
- master restart:
  - 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
- final navigation:
  - 0900231_PROJECT_FLOW_FINAL_NAVIGATION.md
- closure decision:
  - 0900232_PROJECT_FLOW_CLOSURE_DECISION.md
- master closure summary:
  - 0900239_PROJECT_FLOW_MASTER_CLOSURE_SUMMARY.md

shortcut_rule:
Use this shortcut first
before scanning deeper meta or implementation layers.

# ============================================================
# PROJECT FLOW CURRENT RECOMMENDED NEXT ACTIONS
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the currently recommended next actions
after the present closure state.

recommended_actions:
1. if DB execution specifics are needed,
   start from DB-owner review entry docs
2. if implementation continuation is needed,
   start from implementation-start entry docs and approved scope
3. if only restartability improvement is desired,
   use closure and restart docs without reopening deep structure
4. if future sophistication is desired,
   treat it as separate later-scope work,
   not as required immediate continuation

best_default_next_action:
Read:
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
- 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
Then choose one continuation path explicitly.

# ============================================================
# PROJECT FLOW CLOSURE DECLARATION
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Declares the current ProjectFlow design cycle
practically closed for broad design and deep decomposition purposes.

declaration:
ProjectFlow is declared practically closed
for the current broad design,
boundary interpretation,
exact-design,
implementation decomposition,
and restart/navigation preparation cycle.

closure_basis:
- broad design fixed
- ownership and boundary model fixed
- exact bottlenecks resolved at design level
- implementation decomposition expanded deeply enough for restart
- closure / handoff / restart / navigation docs exist
- blocked and deferred scope remain explicitly separated

not_included_in_this_closure:
- DB-owner-review-required DB execution specifics
- future sophistication outside current initial scope
- optional polish or summary improvements

important_rule:
Future continuation should start from closure-entry materials,
not from reopening the broad design baseline.

# ============================================================
# PROJECT FLOW RESTART PACK
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact restart pack
for the next continuation chat.

restart_pack_documents:
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
- 0900229_PROJECT_FLOW_FINAL_HANDOFF_SUMMARY.md
- 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
- 0900231_PROJECT_FLOW_FINAL_NAVIGATION.md
- 0900232_PROJECT_FLOW_CLOSURE_DECISION.md
- 0900239_PROJECT_FLOW_MASTER_CLOSURE_SUMMARY.md
- 0900243_PROJECT_FLOW_ONE_PAGE_RESTART.md
- 0900245_PROJECT_FLOW_CURRENT_RECOMMENDED_NEXT_ACTIONS.md

pack_usage:
1. read current closure status
2. read master restart note
3. choose one continuation path
4. open deeper navigation only if needed

# ============================================================
# PROJECT FLOW FINAL QUICK MAP
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the shortest quick map
from intent to document.

quick_map:

want_status:
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md

want_restart:
- 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
- 0900243_PROJECT_FLOW_ONE_PAGE_RESTART.md

want_handoff:
- 0900229_PROJECT_FLOW_FINAL_HANDOFF_SUMMARY.md

want_navigation:
- 0900231_PROJECT_FLOW_FINAL_NAVIGATION.md
- 0900236_PROJECT_FLOW_TOP_PRIORITY_NAVIGATION.md

want_closure_basis:
- 0900232_PROJECT_FLOW_CLOSURE_DECISION.md
- 0900246_PROJECT_FLOW_CLOSURE_DECLARATION.md

want_next_action:
- 0900245_PROJECT_FLOW_CURRENT_RECOMMENDED_NEXT_ACTIONS.md

want_db_review:
- 0900087_PROJECT_FLOW_DB_OWNER_REVIEW_START_NOTE.md

want_common_component_reference:
- 0900110_PROJECT_FLOW_OFFICIAL_COMMON_COMPONENT_LEDGER_SUMMARY.md

# ============================================================
# PROJECT FLOW LAST RECOMMENDED PATH NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the last recommended continuation path
after the present practical closure.

last_recommended_path:
- first read 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
- then read 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
- then choose exactly one path:
  - DB-owner review
  - implementation continuation from approved scope
  - closure cleanup only
  - future sophistication as separate later-scope work

important_warning:
Do not combine all paths at once.
Choose one path explicitly.

# ============================================================
# PROJECT FLOW TERMINAL MASTER NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the terminal master note
for the current ProjectFlow cycle.

terminal_state:
- broad design is practically closed
- exact boundary and ownership interpretation are fixed
- implementation decomposition is deeply expanded
- restart and handoff materials are ready
- remaining unresolved scope is explicitly separated

terminal_rule:
Future continuation should begin from terminal entry docs
and should not reopen the broad design baseline by default.

terminal_entry_docs:
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
- 0900229_PROJECT_FLOW_FINAL_HANDOFF_SUMMARY.md
- 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
- 0900231_PROJECT_FLOW_FINAL_NAVIGATION.md
- 0900243_PROJECT_FLOW_ONE_PAGE_RESTART.md

# ============================================================
# PROJECT FLOW SINGLE PAGE HUB
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a single-page hub
for the most common restart intents.

hub_sections:

overall_status:
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md

handoff:
- 0900229_PROJECT_FLOW_FINAL_HANDOFF_SUMMARY.md

restart:
- 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
- 0900243_PROJECT_FLOW_ONE_PAGE_RESTART.md

navigation:
- 0900231_PROJECT_FLOW_FINAL_NAVIGATION.md
- 0900236_PROJECT_FLOW_TOP_PRIORITY_NAVIGATION.md
- 0900248_PROJECT_FLOW_FINAL_QUICK_MAP.md

closure_basis:
- 0900232_PROJECT_FLOW_CLOSURE_DECISION.md
- 0900246_PROJECT_FLOW_CLOSURE_DECLARATION.md
- 0900239_PROJECT_FLOW_MASTER_CLOSURE_SUMMARY.md

next_action:
- 0900245_PROJECT_FLOW_CURRENT_RECOMMENDED_NEXT_ACTIONS.md
- 0900249_PROJECT_FLOW_LAST_RECOMMENDED_PATH_NOTE.md

separated_paths:
- DB-owner review:
  - 0900087_PROJECT_FLOW_DB_OWNER_REVIEW_START_NOTE.md
- implementation continuation:
  - 0900097_PROJECT_FLOW_IMPLEMENTATION_START_ENTRY_NOTE.md
- common component entry:
  - 0900110_PROJECT_FLOW_OFFICIAL_COMMON_COMPONENT_LEDGER_SUMMARY.md

# ============================================================
# PROJECT FLOW COMPLETION DECLARATION
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Declares the current ProjectFlow documentation cycle
completed to a practical restartable level.

completion_declaration:
The current ProjectFlow documentation cycle
is completed to a practical restartable level
for broad design,
boundary definition,
exact-design stabilization,
implementation decomposition,
handoff preparation,
restart preparation,
and closure navigation.

completed_to_practical_level:
- broad design
- boundary and ownership interpretation
- implementation decomposition chain
- closure and handoff documentation
- restart and navigation documentation

explicitly_not_declared_complete_here:
- DB-owner-review-dependent DB execution specifics
- future sophistication outside current initial scope
- optional later cleanup and summarization improvements

completion_rule:
This declaration means practical completion for restartability,
not universal finality for all future work.

# ============================================================
# PROJECT FLOW FINAL CONTINUATION CHOOSER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the simplest chooser
for what the next continuation should be.

choose_one_only:
- DB-owner review continuation
- implementation continuation from approved scope
- closure cleanup only
- future sophistication as separate later-scope work

decision_help:
- if DB execution specifics are needed -> DB-owner review
- if approved implementation scope should move forward -> implementation continuation
- if only navigation or summary refinement is needed -> closure cleanup
- if new optional capability is desired -> future sophistication

warning:
Do not start from multiple paths at once.

# ============================================================
# PROJECT FLOW TERMINAL SHORTCUT
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the shortest operational shortcut
for restarting or continuing ProjectFlow.

shortcut_steps:
1. read 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
2. read 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
3. choose one path only:
   - DB-owner review
   - implementation continuation
   - closure cleanup
   - future sophistication
4. use 0900231_PROJECT_FLOW_FINAL_NAVIGATION.md
   only when deeper navigation is needed

warning:
Do not restart from deep decomposition layers first
unless the shortcut docs direct you there.

# ============================================================
# PROJECT FLOW COMPLETION MAP
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact map
of what is complete enough now
and what remains outside current practical completion.

complete_enough_now:
- broad design
- boundary and ownership interpretation
- exact-design stabilization
- implementation decomposition chain
- closure and handoff docs
- restart and navigation docs

explicitly_outside_current_practical_completion:
- DB-owner-review-dependent DB execution specifics
- future sophistication outside current initial scope
- optional later cleanup improvements

important_rule:
Outside-current-completion does not mean forgotten.
It means intentionally separated.

# ============================================================
# PROJECT FLOW END STATE NAVIGATION
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides end-state navigation
for the most important terminal documents.

terminal_state_docs:
- 0900250_PROJECT_FLOW_TERMINAL_MASTER_NOTE.md
- 0900251_PROJECT_FLOW_SINGLE_PAGE_HUB.md
- 0900252_PROJECT_FLOW_COMPLETION_DECLARATION.md
- 0900253_PROJECT_FLOW_FINAL_CONTINUATION_CHOOSER.md

restart_state_docs:
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
- 0900229_PROJECT_FLOW_FINAL_HANDOFF_SUMMARY.md
- 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
- 0900243_PROJECT_FLOW_ONE_PAGE_RESTART.md

closure_basis_docs:
- 0900232_PROJECT_FLOW_CLOSURE_DECISION.md
- 0900246_PROJECT_FLOW_CLOSURE_DECLARATION.md
- 0900239_PROJECT_FLOW_MASTER_CLOSURE_SUMMARY.md

important_rule:
Use end-state docs for terminal understanding,
and restart-state docs for practical continuation.

# ============================================================
# PROJECT FLOW LAST MILE NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a last-mile note
for what should happen after the current practical closure.

last_mile_options:
- stop here and preserve restartability
- continue with DB-owner review only
- continue with approved implementation scope only
- move future sophistication to separate later work

recommended_default:
Stop broad design work here.
Restart only from explicit entry docs when needed.

# ============================================================
# PROJECT FLOW STOP HERE NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
States explicitly that it is acceptable
to stop the current ProjectFlow cycle here.

stop_here_meaning:
- broad design does not need further expansion now
- restartability is already prepared
- continuation may be postponed safely
- remaining work is explicitly separated

remaining_paths_if_resumed:
- DB-owner review path
- implementation continuation path
- closure cleanup path
- future sophistication path

important_rule:
Stopping here does not lose structure,
because restart entry docs and closure docs already exist.

# ============================================================
# PROJECT FLOW RESUME PATH MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact matrix
for choosing the correct resume path.

resume_path_matrix:

need_db_execution_specifics:
- path: db_owner_review
- start_doc:
  - 0900087_PROJECT_FLOW_DB_OWNER_REVIEW_START_NOTE.md

need_to_continue_implementation_from_confirmed_scope:
- path: implementation_continuation
- start_doc:
  - 0900097_PROJECT_FLOW_IMPLEMENTATION_START_ENTRY_NOTE.md

need_only_restart_or_navigation_cleanup:
- path: closure_cleanup
- start_doc:
  - 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
  - 0900231_PROJECT_FLOW_FINAL_NAVIGATION.md

need_optional_new_capabilities_beyond_current_scope:
- path: future_sophistication
- start_doc:
  - 0900245_PROJECT_FLOW_CURRENT_RECOMMENDED_NEXT_ACTIONS.md

important_rule:
Choose one path first.
Do not mix resume paths at the start.

# ============================================================
# PROJECT FLOW FINAL TINY HUB
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the smallest possible hub
for everyday restart use.

read_now:
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
- 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md

then_choose_one:
- DB-owner review:
  - 0900087_PROJECT_FLOW_DB_OWNER_REVIEW_START_NOTE.md
- implementation continuation:
  - 0900097_PROJECT_FLOW_IMPLEMENTATION_START_ENTRY_NOTE.md
- closure cleanup:
  - 0900231_PROJECT_FLOW_FINAL_NAVIGATION.md
- future sophistication:
  - 0900245_PROJECT_FLOW_CURRENT_RECOMMENDED_NEXT_ACTIONS.md

# ============================================================
# PROJECT FLOW MASTER TERMINAL INDEX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides one master terminal index
for the current ProjectFlow end-state.

# ============================================================
# 1. CORE END-STATE DOCUMENTS
# ============================================================

core_end_state_documents:
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
- 0900229_PROJECT_FLOW_FINAL_HANDOFF_SUMMARY.md
- 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
- 0900231_PROJECT_FLOW_FINAL_NAVIGATION.md
- 0900232_PROJECT_FLOW_CLOSURE_DECISION.md
- 0900233_PROJECT_FLOW_DESIGN_FREEZE_NOTE.md

# ============================================================
# 2. PRACTICAL END DOCUMENTS
# ============================================================

practical_end_documents:
- 0900242_PROJECT_FLOW_FINAL_END_NOTE.md
- 0900243_PROJECT_FLOW_ONE_PAGE_RESTART.md
- 0900244_PROJECT_FLOW_CLOSURE_NAVIGATION_SHORTCUT.md
- 0900245_PROJECT_FLOW_CURRENT_RECOMMENDED_NEXT_ACTIONS.md
- 0900246_PROJECT_FLOW_CLOSURE_DECLARATION.md
- 0900247_PROJECT_FLOW_RESTART_PACK.md
- 0900248_PROJECT_FLOW_FINAL_QUICK_MAP.md
- 0900249_PROJECT_FLOW_LAST_RECOMMENDED_PATH_NOTE.md

# ============================================================
# 3. TERMINAL MASTER DOCUMENTS
# ============================================================

terminal_master_documents:
- 0900250_PROJECT_FLOW_TERMINAL_MASTER_NOTE.md
- 0900251_PROJECT_FLOW_SINGLE_PAGE_HUB.md
- 0900252_PROJECT_FLOW_COMPLETION_DECLARATION.md
- 0900253_PROJECT_FLOW_FINAL_CONTINUATION_CHOOSER.md
- 0900254_PROJECT_FLOW_TERMINAL_SHORTCUT.md
- 0900255_PROJECT_FLOW_COMPLETION_MAP.md
- 0900256_PROJECT_FLOW_END_STATE_NAVIGATION.md
- 0900257_PROJECT_FLOW_LAST_MILE_NOTE.md

# ============================================================
# 4. STOP / RESUME DOCUMENTS
# ============================================================

stop_resume_documents:
- 0900258_PROJECT_FLOW_STOP_HERE_NOTE.md
- 0900259_PROJECT_FLOW_RESUME_PATH_MATRIX.md
- 0900260_PROJECT_FLOW_FINAL_TINY_HUB.md

# ============================================================
# 5. FASTEST START PATH
# ============================================================

fastest_start_path:
1. 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
2. 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
3. 0900260_PROJECT_FLOW_FINAL_TINY_HUB.md

# ============================================================
# 6. IMPORTANT RULE
# ============================================================

important_rule:
Use this master terminal index
before opening deep decomposition docs.

# ============================================================
# PROJECT FLOW MASTER TERMINAL INDEX SHORTCUT
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the shortest shortcut
to the master terminal index.

shortcut:
- start with 0900261_PROJECT_FLOW_MASTER_TERMINAL_INDEX.md
- then choose one:
  - status
  - restart
  - handoff
  - closure basis
  - stop/resume

important_note:
This shortcut exists
to avoid scanning many terminal docs manually.

# ============================================================
# PROJECT FLOW FINAL COMPLETION NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Marks ProjectFlow documentation and decomposition work
completed to a practical terminal level in this chat.

final_completion_statement:
ProjectFlow is completed in this chat
to a practical terminal level for:
- broad design
- boundary and ownership interpretation
- exact-design stabilization
- implementation decomposition
- closure and handoff preparation
- restart and navigation preparation

completed_now:
- broad design fixed
- boundary model fixed
- exact bottlenecks resolved at design level
- decomposition expanded from work package to terminal closure layer
- final closure docs exist
- final restart docs exist
- master terminal index exists

explicitly_separated_not_completed_here:
- DB-owner-review-dependent DB execution specifics
- future sophistication outside current initial scope
- optional later polish or summary improvements

terminal_rule:
No further broad design expansion is required in this chat.

# ============================================================
# PROJECT FLOW FINAL STOP DECLARATION
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Declares that it is acceptable to stop here.

stop_declaration:
It is acceptable to stop ProjectFlow work here
for the current design and decomposition cycle.

why_stopping_here_is_safe:
- restart docs exist
- closure docs exist
- handoff docs exist
- blocked and deferred scope are separated explicitly
- next continuation paths are already documented

resume_only_if_needed:
- DB-owner review is needed
- approved implementation continuation is needed
- closure cleanup is needed
- future sophistication is intentionally started later

# ============================================================
# PROJECT FLOW FINAL ONE PAGE HANDOFF
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the final one-page handoff
for the next chat or next phase.

what_is_done:
- broad design
- boundary and ownership interpretation
- exact design stabilization
- implementation decomposition chain
- closure / restart / terminal navigation

what_is_not_done_here:
- DB-owner-review-dependent DB execution specifics
- future sophistication outside current initial scope

read_first_next_time:
1. 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
2. 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
3. 0900261_PROJECT_FLOW_MASTER_TERMINAL_INDEX.md

then_choose_one:
- DB-owner review
- implementation continuation
- closure cleanup only
- future sophistication later

important_warning:
Do not restart from deep decomposition docs first.

# ============================================================
# PROJECT FLOW NEXT CHAT MESSAGE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a ready-to-use next chat start message template.

template:
ProjectFlow is already broadly closed and restartable.
Read these first:
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
- 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
- 0900261_PROJECT_FLOW_MASTER_TERMINAL_INDEX.md

Then continue with exactly one path:
- DB-owner review
- implementation continuation from approved scope
- closure cleanup only
- future sophistication as separate later work

# ============================================================
# PROJECT FLOW FINAL DONE MAP
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the final compact map
of done versus not-done-yet.

done_now:
- broad design
- boundary interpretation
- exact design stabilization
- decomposition and continuation layers
- closure / handoff / restart / terminal navigation

not_done_here_but_explicitly_separated:
- DB-owner-review execution specifics
- future sophistication items
- optional later cleanup

rule:
Not-done-here must not be mistaken for missing structure.

# ============================================================
# PROJECT FLOW FINAL PROGRESS SNAPSHOT
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact final progress snapshot
for the current ProjectFlow cycle.

snapshot:
- broad design: done
- boundary and ownership interpretation: done
- exact-design stabilization: done
- implementation decomposition: done to practical restartable level
- closure and handoff materials: done
- restart and terminal navigation: done

separated_remaining_areas:
- DB-owner-review-dependent DB execution specifics
- future sophistication outside current initial scope
- optional later polish

# ============================================================
# PROJECT FLOW TERMINAL DOC LIST
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Lists the main terminal and restart documents
created for ProjectFlow.

terminal_docs:
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
- 0900229_PROJECT_FLOW_FINAL_HANDOFF_SUMMARY.md
- 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
- 0900231_PROJECT_FLOW_FINAL_NAVIGATION.md
- 0900232_PROJECT_FLOW_CLOSURE_DECISION.md
- 0900233_PROJECT_FLOW_DESIGN_FREEZE_NOTE.md
- 0900239_PROJECT_FLOW_MASTER_CLOSURE_SUMMARY.md
- 0900243_PROJECT_FLOW_ONE_PAGE_RESTART.md
- 0900246_PROJECT_FLOW_CLOSURE_DECLARATION.md
- 0900250_PROJECT_FLOW_TERMINAL_MASTER_NOTE.md
- 0900261_PROJECT_FLOW_MASTER_TERMINAL_INDEX.md
- 0900263_PROJECT_FLOW_FINAL_COMPLETION_NOTE.md
- 0900265_PROJECT_FLOW_FINAL_ONE_PAGE_HANDOFF.md

# ============================================================
# PROJECT FLOW NEXT CHAT ULTRA SHORT NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the shortest possible next-chat restart note.

ultra_short_restart:
Read:
- 0900228_PROJECT_FLOW_CURRENT_CLOSURE_STATUS.md
- 0900230_PROJECT_FLOW_MASTER_RESTART_NOTE.md
- 0900261_PROJECT_FLOW_MASTER_TERMINAL_INDEX.md

Then choose one:
- DB-owner review
- implementation continuation
- closure cleanup
- future sophistication

# ============================================================
# PROJECT FLOW SCOPE BOUNDARY AFTER COMPLETION NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Clarifies what belongs outside the current completed scope.

outside_current_completed_scope:
- DB-owner-review execution work
- future optional sophistication
- separate implementation execution conversation
- broader cross-app common-component promotion beyond official ledger

rule:
These should be treated as next-stage work,
not as unfinished broad design inside the current closure.


# ============================================================
# PROJECT FLOW SECURITY INDEX
# ============================================================

status: canonical
layer: security
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 1000000_PROJECT_FLOW_SECURITY_INDEX.md
- 1000001_PROJECT_FLOW_SECURITY_OVERVIEW.md
- 1000002_PROJECT_FLOW_ACCESS_CONTROL_SECURITY.md

# ============================================================
# PROJECT FLOW SECURITY OVERVIEW
# ============================================================

status: canonical
layer: security
application: ProjectFlow
owner: Boss
prepared_by: Zero

security_targets:
- role-based access
- protected ERP fields
- auditability
- safe retry

# ============================================================
# PROJECT FLOW ACCESS CONTROL SECURITY
# ============================================================

status: canonical
layer: security
application: ProjectFlow
owner: Boss
prepared_by: Zero

rules:
- unauthorized export request is forbidden
- protected fields cannot be updated by standard members
- sync operator rights must be scoped


# ============================================================
# PROJECT FLOW INFRASTRUCTURE INDEX
# ============================================================

status: canonical
layer: infrastructure
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 1100000_PROJECT_FLOW_INFRASTRUCTURE_INDEX.md
- 1100001_PROJECT_FLOW_INFRASTRUCTURE_OVERVIEW.md
- 1100002_PROJECT_FLOW_DEPENDENCY_OVERVIEW.md
- 1100003_PROJECT_FLOW_RUNTIME_DEPLOYMENT_DEPENDENCY_NOTE.md

# ============================================================
# PROJECT FLOW INFRASTRUCTURE OVERVIEW
# ============================================================

status: canonical
layer: infrastructure
application: ProjectFlow
owner: Boss
prepared_by: Zero

infrastructure_notes:
- app UI layer
- operational data store
- shared BusinessOS integration dependency
- notification dependency

# ============================================================
# PROJECT FLOW DEPENDENCY OVERVIEW
# ============================================================

status: canonical
layer: infrastructure
application: ProjectFlow
owner: Boss
prepared_by: Zero

dependencies:
- shared BusinessOS integration path
- ERP reference master availability
- member reference availability

# ============================================================
# PROJECT FLOW RUNTIME DEPLOYMENT DEPENDENCY NOTE
# ============================================================

status: canonical
layer: infrastructure
application: ProjectFlow
owner: Boss
prepared_by: Zero

runtime_dependencies:
- local operational datastore
- background work execution facility
- file generation/output facility
- shared BusinessOS network boundary
- permission/session provider

dependency_rules:
- shared BusinessOS availability impacts sync and import/export
- local domain operations should remain operable even when sync path is unavailable
- export/report generation may use local data snapshot when allowed


# ============================================================
# PROJECT FLOW IMPLEMENTATION INDEX
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 1200000_PROJECT_FLOW_IMPLEMENTATION_INDEX.md
- 1200001_PROJECT_FLOW_IMPLEMENTATION_OVERVIEW.md
- 1200002_PROJECT_FLOW_DB_PHYSICAL_DESIGN_DRAFT.md
- 1200003_PROJECT_FLOW_API_EXACT_CONTRACT_DRAFT.md
- 1200004_PROJECT_FLOW_XLSX_EXPORT_DRAFT.md
- 1200005_PROJECT_FLOW_PROGRESS_REPORT_TEMPLATE_DRAFT.md
- 1200006_PROJECT_FLOW_API_EXACT_PAYLOAD_FIXED.md
- 1200007_PROJECT_FLOW_DB_PHYSICAL_SCHEMA_FIXED.md
- 1200008_PROJECT_FLOW_IMPLEMENTATION_MODULE_SPLIT_FIXED.md
- 1200009_PROJECT_FLOW_SUBSCRIPTION_ENTITLEMENT_IMPLEMENTATION_NOTE.md
- 1200010_PROJECT_FLOW_COMMON_COMPONENT_EXTRACTION_NOTE.md
- 1200011_PROJECT_FLOW_ENTITLEMENT_STATE_MODEL_NOTE.md
- 1200012_PROJECT_FLOW_READ_ONLY_MODE_UI_IMPLEMENTATION_NOTE.md
- 1200013_PROJECT_FLOW_DB_DDL_PREPARED.md
- 1200014_PROJECT_FLOW_ADDITIVE_FEATURE_IMPLEMENTATION_NOTE.md
- 1200015_PROJECT_FLOW_TIMELINE_GANTT_DASHBOARD_IMPLEMENTATION_NOTE.md
- 1200016_PROJECT_FLOW_FORM_MEMO_COMMENT_IMPLEMENTATION_NOTE.md
- 1200017_PROJECT_FLOW_LIGHT_AUTOMATION_IMPLEMENTATION_NOTE.md
- 1200018_PROJECT_FLOW_TEMPLATE_AND_WBS_PROPOSAL_IMPLEMENTATION_NOTE.md
- 1200020_PROJECT_FLOW_CUSTOMER_FACING_SCHEDULE_IMPLEMENTATION_NOTE.md
- 1200021_PROJECT_FLOW_CUSTOMER_EXPLANATION_MATERIAL_IMPLEMENTATION_NOTE.md
- 1200019_PROJECT_FLOW_FEATURE_BOUNDARY_MATRIX_NOTE.md
- 1200022_PROJECT_FLOW_CUSTOMER_MATERIAL_ADAPTER_NOTE.md
- 1200023_PROJECT_FLOW_IMPLEMENTATION_DETAIL_OVERVIEW.md
- 1200024_PROJECT_FLOW_SCREEN_STATE_EVENT_DESIGN.md
- 1200025_PROJECT_FLOW_USE_CASE_GROUPING_DETAIL.md
- 1200026_PROJECT_FLOW_REPOSITORY_AND_GATEWAY_INTERFACE_NOTE.md
- 1200027_PROJECT_FLOW_VALIDATION_AND_ERROR_HANDLING_DETAIL.md
- 1200028_PROJECT_FLOW_MIGRATION_SPLIT_PLAN_NOTE.md
- 1200029_PROJECT_FLOW_WIREFRAME_IMPLEMENTATION_NOTE.md
- 1200030_PROJECT_FLOW_CUSTOMER_MATERIAL_LAYOUT_IMPLEMENTATION_NOTE.md
- 1200031_PROJECT_FLOW_IMPLEMENTATION_READINESS_MATRIX.md
- 1200032_PROJECT_FLOW_SUPPORT_REDUCTION_IMPLEMENTATION_NOTE.md
- 1200034_PROJECT_FLOW_MULTILINGUAL_IMPLEMENTATION_NOTE.md
- 1200035_PROJECT_FLOW_LOCALIZATION_KEY_SCOPE_NOTE.md
- 1200036_PROJECT_FLOW_LANGUAGE_RESOLUTION_IMPLEMENTATION_NOTE.md
- 1200037_PROJECT_FLOW_LOCALIZED_CUSTOMER_MATERIAL_TEMPLATE_NOTE.md
- 1200038_PROJECT_FLOW_LOCALIZED_EXPORT_HEADER_MAP_NOTE.md
- 1200039_PROJECT_FLOW_LANGUAGE_PACK_SCOPE_NOTE.md
- 1200040_PROJECT_FLOW_BILINGUAL_OUTPUT_PRESET_NOTE.md
- 1200041_PROJECT_FLOW_BILINGUAL_LABEL_RESOLUTION_NOTE.md
- 1200042_PROJECT_FLOW_CUSTOMER_OUTPUT_BILINGUAL_PRESET_NOTE.md
- 1200043_PROJECT_FLOW_MULTILINGUAL_OPERATION_NOTE.md
- 1200044_PROJECT_FLOW_DEVICE_SUPPORT_IMPLEMENTATION_NOTE.md
- 1200045_PROJECT_FLOW_DEVICE_PARITY_OPERATION_NOTE.md
- 1200046_PROJECT_FLOW_FEATURE_SCREEN_OUTPUT_MAPPING_NOTE.md
- 1200047_PROJECT_FLOW_REFERENCE_AWARE_IMPLEMENTATION_NOTE.md
- 1200048_PROJECT_FLOW_BUSINESSOS_DEPENDENCY_IMPLEMENTATION_NOTE.md
- 1200049_PROJECT_FLOW_ERP_DEPENDENCY_IMPLEMENTATION_NOTE.md
- 1200050_PROJECT_FLOW_COMMON_COMPONENT_AWARE_IMPLEMENTATION_NOTE.md
- 1200051_PROJECT_FLOW_LOCAL_OWNERSHIP_IMPLEMENTATION_NOTE.md
- 1200052_PROJECT_FLOW_FIELD_OWNERSHIP_IMPLEMENTATION_NOTE.md
- 1200053_PROJECT_FLOW_EDITABILITY_IMPLEMENTATION_NOTE.md
- 1200054_PROJECT_FLOW_ACTION_AUTHORITY_IMPLEMENTATION_NOTE.md
- 1200055_PROJECT_FLOW_STATE_TRANSITION_IMPLEMENTATION_NOTE.md
- 1200056_PROJECT_FLOW_AUDITABILITY_IMPLEMENTATION_NOTE.md
- 1200057_PROJECT_FLOW_UPLOADED_REFERENCE_AWARE_IMPLEMENTATION_NOTE.md
- 1200058_PROJECT_FLOW_REFERENCE_FIRST_CHECK_IMPLEMENTATION_NOTE.md
- 1200059_PROJECT_FLOW_REFERENCE_LOOKUP_IMPLEMENTATION_NOTE.md
- 1200060_PROJECT_FLOW_UPLOADED_FILE_LOOKUP_NOTE.md
- 1200061_PROJECT_FLOW_REFERENCE_UPDATE_IMPLEMENTATION_NOTE.md
- 1200062_PROJECT_FLOW_REFERENCE_CONFLICT_IMPLEMENTATION_NOTE.md
- 1200063_PROJECT_FLOW_CONFLICT_STOP_IMPLEMENTATION_NOTE.md
- 1200064_PROJECT_FLOW_SAFE_PREP_AND_BLOCKED_AREA_MATRIX.md
- 1200065_PROJECT_FLOW_NEXT_PHASE_PRIORITY_MATRIX.md
- 1200066_PROJECT_FLOW_NEXT_PHASE_EXECUTION_NOTE.md
- 1200067_PROJECT_FLOW_WORK_PACKAGE_IMPLEMENTATION_NOTE.md
- 1200068_PROJECT_FLOW_BOUNDARY_WORK_PACKAGE_IMPLEMENTATION_NOTE.md
- 1200069_PROJECT_FLOW_GATE_REVIEW_IMPLEMENTATION_NOTE.md
- 1200070_PROJECT_FLOW_WORK_PACKAGE_EXECUTION_NOTE.md
- 1200071_PROJECT_FLOW_REOPEN_IMPLEMENTATION_NOTE.md
- 1200072_PROJECT_FLOW_DB_HARDENING_FINAL_REVIEW_NOTE.md
- 1200073_PROJECT_FLOW_WBS_PROPOSAL_EXACT_RULES_NOTE.md
- 1200074_PROJECT_FLOW_POST_EXACT_IMPLEMENTATION_NOTE.md
- 1200076_PROJECT_FLOW_FINAL_IMPLEMENTATION_CHOICE_NOTE.md
- 1200077_PROJECT_FLOW_DB_OWNER_REVIEW_BOUNDARY_NOTE.md
- 1200078_PROJECT_FLOW_REMAINING_ITEM_EXECUTION_BOUNDARY_NOTE.md
- 1200079_PROJECT_FLOW_DB_OWNER_REVIEW_EXECUTION_NOTE.md
- 1200080_PROJECT_FLOW_DB_OWNER_REVIEW_RESULT_HANDLING_NOTE.md
- 1200081_PROJECT_FLOW_DB_OWNER_REVIEW_UNLOCK_NOTE.md
- 1200082_PROJECT_FLOW_DB_OWNER_REVIEW_POST_RESULT_NOTE.md
- 1200083_PROJECT_FLOW_DB_OWNER_REVIEW_REFLECTION_NOTE.md
- 1200084_PROJECT_FLOW_IMPLEMENTATION_START_NOTE.md
- 1200085_PROJECT_FLOW_IMPLEMENTATION_START_WORK_PACKAGE_NOTE.md
- 1200086_PROJECT_FLOW_IMPLEMENTATION_START_DELIVERABLE_NOTE.md
- 1200087_PROJECT_FLOW_IMPLEMENTATION_START_REVIEW_NOTE.md
- 1200088_PROJECT_FLOW_IMPLEMENTATION_START_EXECUTION_NOTE.md
- 1200089_PROJECT_FLOW_IMPLEMENTATION_START_DEPENDENCY_NOTE.md
- 1200090_PROJECT_FLOW_OFFICIAL_COMMON_COMPONENT_LEDGER_NOTE.md
- 1200091_PROJECT_FLOW_COMMON_COMPONENT_DECISION_NOTE.md
- 1200092_PROJECT_FLOW_SHARED_COMPONENT_ADAPTER_NOTE.md
- 1200093_PROJECT_FLOW_LOCAL_ORCHESTRATION_NOTE.md
- 1200094_PROJECT_FLOW_SCREEN_ORCHESTRATION_NOTE.md
- 1200095_PROJECT_FLOW_SCREEN_PACKAGE_CONNECTION_NOTE.md
- 1200096_PROJECT_FLOW_DELIVERABLE_DEPENDENCY_NOTE.md
- 1200097_PROJECT_FLOW_FEATURE_SLICE_ENTRY_NOTE.md
- 1200098_PROJECT_FLOW_FEATURE_SLICE_EXECUTION_NOTE.md
- 1200099_PROJECT_FLOW_FEATURE_SLICE_DELIVERABLE_NOTE.md
- 1200100_PROJECT_FLOW_FEATURE_SLICE_REVIEW_NOTE.md
- 1200101_PROJECT_FLOW_FEATURE_SLICE_EXECUTION_NOTE.md
- 1200102_PROJECT_FLOW_FEATURE_SLICE_REOPEN_NOTE.md
- 1200103_PROJECT_FLOW_CODING_START_NOTE.md
- 1200104_PROJECT_FLOW_CODING_START_WORK_PACKAGE_NOTE.md
- 1200105_PROJECT_FLOW_CODING_START_DELIVERABLE_NOTE.md
- 1200106_PROJECT_FLOW_CODING_START_REVIEW_NOTE.md
- 1200107_PROJECT_FLOW_CODING_START_EXECUTION_NOTE.md
- 1200108_PROJECT_FLOW_CODING_START_REOPEN_NOTE.md
- 1200109_PROJECT_FLOW_CODING_START_DEPENDENCY_AND_TASK_ENTRY_NOTE.md
- 1200110_PROJECT_FLOW_ACTUAL_IMPLEMENTATION_TASK_NOTE.md
- 1200111_PROJECT_FLOW_ACTUAL_IMPLEMENTATION_TASK_OPERATION_NOTE.md
- 1200112_PROJECT_FLOW_NEXT_IMPLEMENTATION_UNIT_NOTE.md
- 1200113_PROJECT_FLOW_NEXT_IMPLEMENTATION_UNIT_OPERATION_NOTE.md
- 1200114_PROJECT_FLOW_CONCRETE_CODING_WORK_GROUP_NOTE.md
- 1200115_PROJECT_FLOW_CONCRETE_CODING_WORK_GROUP_OPERATION_NOTE.md
- 1200116_PROJECT_FLOW_CONCRETE_FILE_UNIT_NOTE.md
- 1200117_PROJECT_FLOW_CONCRETE_FILE_UNIT_OPERATION_NOTE.md
- 1200118_PROJECT_FLOW_PATCH_TASK_OPERATION_NOTE.md
- 1200119_PROJECT_FLOW_PATCH_TASK_COMPLETION_AND_COMMIT_NOTE.md
- 1200120_PROJECT_FLOW_COMMIT_PR_UNIT_NOTE.md
- 1200121_PROJECT_FLOW_COMMIT_PR_UNIT_OPERATION_NOTE.md
- 1200122_PROJECT_FLOW_MERGE_RELEASE_UNIT_NOTE.md
- 1200123_PROJECT_FLOW_MERGE_RELEASE_UNIT_OPERATION_NOTE.md
- 1200124_PROJECT_FLOW_RC_HANDOFF_UNIT_NOTE.md
- 1200125_PROJECT_FLOW_RC_HANDOFF_AND_CLOSURE_OPERATION_NOTE.md
- 1200126_PROJECT_FLOW_FINAL_CLOSURE_AND_RESTART_NOTE.md
- 1200127_PROJECT_FLOW_FINAL_ENTRY_USAGE_NOTE.md
- 1200128_PROJECT_FLOW_FINAL_LOCK_NOTE.md
- 1200129_PROJECT_FLOW_FINAL_NAVIGATION_USAGE_NOTE.md
- 1200130_PROJECT_FLOW_MASTER_CLOSURE_USAGE_NOTE.md
- 1200131_PROJECT_FLOW_TERMINAL_CLOSURE_USAGE_NOTE.md
- 1200132_PROJECT_FLOW_PRACTICAL_END_USAGE_NOTE.md
- 1200133_PROJECT_FLOW_TERMINAL_MASTER_USAGE_NOTE.md
- 1200134_PROJECT_FLOW_TERMINAL_SHORTCUT_USAGE_NOTE.md
- 1200135_PROJECT_FLOW_STOP_AND_RESUME_USAGE_NOTE.md
- 1200136_PROJECT_FLOW_MASTER_TERMINAL_INDEX_USAGE_NOTE.md
- 1200137_PROJECT_FLOW_FINAL_COMPLETION_USAGE_NOTE.md
- 1200138_PROJECT_FLOW_OPTIONAL_FINAL_VISIBILITY_NOTE.md

# ============================================================
# PROJECT FLOW IMPLEMENTATION OVERVIEW
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

implementation_targets:
- screen implementation
- role control
- sync request UI
- log view
- mapping-aware import/export

# ============================================================
# PROJECT FLOW DB PHYSICAL DESIGN DRAFT
# ============================================================

status: draft
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

candidate_tables:
- project
- project_task
- project_milestone
- project_issue
- project_risk
- project_time_entry
- project_sync_request
- project_sync_log

note:
Physical schema must be finalized in review with DB owner.

# ============================================================
# PROJECT FLOW API EXACT CONTRACT DRAFT
# ============================================================

status: draft
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

pending_exact_contract:
- request_project_import payload
- request_project_export payload
- get_sync_status response
- get_sync_error_detail response

# ============================================================
# PROJECT FLOW XLSX EXPORT DRAFT
# ============================================================

status: draft
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

implementation_targets:
- xlsx file generation
- csv file generation
- column selection UI
- masking option handling
- export history persistence

notes:
Primary use case is customer explanation and offline sharing.

# ============================================================
# PROJECT FLOW PROGRESS REPORT TEMPLATE DRAFT
# ============================================================

status: draft
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

template_types:
- weekly project report
- monthly project report
- customer progress report
- internal progress report

draft_sections:
- summary
- achievements
- current status
- issues
- risks
- next actions
- support requests
- customer confirmation items

# ============================================================
# PROJECT FLOW API EXACT PAYLOAD FIXED
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes exact request and response payloads
between ProjectFlow and shared BusinessOS integration capability.

principles:
- ProjectFlow does not call ERP directly
- ProjectFlow calls shared BusinessOS-controlled integration path
- all payloads are explicit
- error responses are machine-readable
- retryability must be explicit

# ============================================================
# 1. REQUEST PROJECT IMPORT
# ============================================================

endpoint:
POST /shared/business/projectflow/import-requests

request_body_json:
{
  "request_id": "uuid",
  "company_id": "uuid",
  "requested_by_user_id": "uuid",
  "import_scope": "all|project_codes|single_project",
  "project_codes": [
    "PRJ-0001",
    "PRJ-0002"
  ],
  "include_reference_masters": true,
  "force_refresh": false,
  "mapping_version": "v1",
  "requested_at": "2026-04-10T12:00:00+09:00"
}

success_response_json:
{
  "request_id": "uuid",
  "sync_request_id": "uuid",
  "status": "accepted",
  "accepted_at": "2026-04-10T12:00:01+09:00",
  "message": "import request accepted"
}

error_response_json:
{
  "request_id": "uuid",
  "status": "rejected",
  "error_code": "INVALID_IMPORT_SCOPE",
  "error_message": "import_scope is invalid",
  "retryable": false
}

# ============================================================
# 2. REQUEST PROJECT EXPORT
# ============================================================

endpoint:
POST /shared/business/projectflow/export-requests

request_body_json:
{
  "request_id": "uuid",
  "company_id": "uuid",
  "requested_by_user_id": "uuid",
  "target_project_id": "uuid",
  "export_targets": [
    "project_progress",
    "milestone_status",
    "time_actuals",
    "project_completion"
  ],
  "include_note": false,
  "note_text": "",
  "mapping_version": "v1",
  "requested_at": "2026-04-10T12:10:00+09:00"
}

success_response_json:
{
  "request_id": "uuid",
  "sync_request_id": "uuid",
  "status": "accepted",
  "accepted_at": "2026-04-10T12:10:01+09:00",
  "message": "export request accepted"
}

error_response_json:
{
  "request_id": "uuid",
  "status": "rejected",
  "error_code": "EXPORT_TARGET_NOT_ALLOWED",
  "error_message": "one or more export targets are not allowed",
  "retryable": false
}

# ============================================================
# 3. REQUEST SYNC RETRY
# ============================================================

endpoint:
POST /shared/business/projectflow/sync-retries

request_body_json:
{
  "retry_request_id": "uuid",
  "company_id": "uuid",
  "requested_by_user_id": "uuid",
  "target_sync_request_id": "uuid",
  "retry_reason": "mapping fixed and ready to retry",
  "requested_at": "2026-04-10T12:20:00+09:00"
}

success_response_json:
{
  "retry_request_id": "uuid",
  "new_sync_request_id": "uuid",
  "status": "accepted",
  "accepted_at": "2026-04-10T12:20:01+09:00"
}

error_response_json:
{
  "retry_request_id": "uuid",
  "status": "rejected",
  "error_code": "RETRY_NOT_ALLOWED",
  "error_message": "target sync request is not retryable",
  "retryable": false
}

# ============================================================
# 4. GET SYNC STATUS
# ============================================================

endpoint:
GET /shared/business/projectflow/sync-requests/{sync_request_id}

success_response_json:
{
  "sync_request_id": "uuid",
  "company_id": "uuid",
  "sync_direction": "import|export",
  "sync_type": "manual|scheduled|retry|initial_full_import|differential_import",
  "status": "queued|running|partially_failed|completed|failed|cancelled",
  "target_project_id": "uuid",
  "started_at": "2026-04-10T12:20:05+09:00",
  "finished_at": "2026-04-10T12:21:10+09:00",
  "retryable": true,
  "summary": {
    "total_entities": 12,
    "succeeded_entities": 10,
    "failed_entities": 2
  },
  "error_code": "PARTIAL_FAILURE",
  "error_message": "2 entities failed",
  "last_updated_at": "2026-04-10T12:21:10+09:00"
}

not_found_response_json:
{
  "sync_request_id": "uuid",
  "status": "not_found",
  "error_code": "SYNC_REQUEST_NOT_FOUND",
  "error_message": "sync request does not exist",
  "retryable": false
}

# ============================================================
# 5. GET SYNC ERROR DETAIL
# ============================================================

endpoint:
GET /shared/business/projectflow/sync-requests/{sync_request_id}/errors

success_response_json:
{
  "sync_request_id": "uuid",
  "status": "ok",
  "errors": [
    {
      "sync_log_id": "uuid",
      "target_entity_type": "project_task",
      "target_entity_id": "uuid",
      "field_name": "assignee_id",
      "error_code": "REFERENCE_NOT_FOUND",
      "error_message": "assignee reference does not exist",
      "retryable": true,
      "detected_at": "2026-04-10T12:21:00+09:00"
    }
  ]
}

# ============================================================
# 6. REQUEST SPREADSHEET EXPORT
# ============================================================

endpoint:
POST /projectflow/exports

request_body_json:
{
  "export_job_id": "uuid",
  "requested_by_user_id": "uuid",
  "export_format": "xlsx|csv",
  "target_scope": "project_list|task_list|milestone_list|issue_list|risk_list|time_entry_list|workload_list|progress_summary|sync_result_list",
  "filter_snapshot": {
    "project_id": "uuid",
    "status": [
      "active",
      "on_hold"
    ],
    "date_from": "2026-04-01",
    "date_to": "2026-04-30"
  },
  "selected_columns": [
    "project_name",
    "project_status",
    "progress_percent",
    "planned_end_date"
  ],
  "masking_option": "none|mask_sensitive|exclude_sensitive",
  "requested_at": "2026-04-10T12:30:00+09:00"
}

success_response_json:
{
  "export_job_id": "uuid",
  "status": "completed",
  "file_uri": "app://projectflow/exports/export_job_id.xlsx",
  "generated_at": "2026-04-10T12:30:03+09:00",
  "error_code": null,
  "error_message": null
}

error_response_json:
{
  "export_job_id": "uuid",
  "status": "failed",
  "file_uri": null,
  "generated_at": "2026-04-10T12:30:03+09:00",
  "error_code": "COLUMN_NOT_ALLOWED",
  "error_message": "one or more selected columns are not allowed"
}

# ============================================================
# 7. REQUEST PROGRESS REPORT DRAFT GENERATION
# ============================================================

endpoint:
POST /projectflow/report-drafts

request_body_json:
{
  "report_draft_id": "uuid",
  "project_id": "uuid",
  "requested_by_user_id": "uuid",
  "report_type": "weekly|monthly|customer|internal",
  "report_period_start": "2026-04-01",
  "report_period_end": "2026-04-07",
  "template_key": "customer_weekly_v1",
  "include_quantitative_summary": true,
  "include_qualitative_draft": true,
  "requested_at": "2026-04-10T12:40:00+09:00"
}

success_response_json:
{
  "report_draft_id": "uuid",
  "status": "completed",
  "generated_at": "2026-04-10T12:40:02+09:00",
  "quantitative_summary": {
    "progress_percent": 68,
    "completed_task_count": 25,
    "incomplete_task_count": 11,
    "overdue_task_count": 3,
    "open_issue_count": 4,
    "high_risk_count": 1,
    "time_actual_hours": 142.5
  },
  "qualitative_draft_text": "This period focused on milestone stabilization and delayed task recovery.",
  "next_actions_text": "Complete remaining overdue tasks and confirm customer-side dependencies.",
  "support_requests_text": "Need cross-team support for reference master alignment.",
  "customer_confirmation_items_text": "Please confirm revised milestone acceptance date."
}

error_response_json:
{
  "report_draft_id": "uuid",
  "status": "failed",
  "generated_at": "2026-04-10T12:40:02+09:00",
  "error_code": "TEMPLATE_NOT_FOUND",
  "error_message": "template_key does not exist"
}

# ============================================================
# 8. UPDATE PROGRESS REPORT DRAFT
# ============================================================

endpoint:
PUT /projectflow/report-drafts/{report_draft_id}

request_body_json:
{
  "edited_by_user_id": "uuid",
  "qualitative_draft_text": "Human-edited summary text.",
  "next_actions_text": "Human-edited next actions.",
  "support_requests_text": "Human-edited support request.",
  "customer_confirmation_items_text": "Human-edited confirmation items.",
  "approval_status": "draft|reviewed|approved",
  "updated_at": "2026-04-10T12:50:00+09:00"
}

success_response_json:
{
  "report_draft_id": "uuid",
  "status": "updated",
  "saved_at": "2026-04-10T12:50:01+09:00"
}

# ============================================================
# 9. GET REPORT DRAFT
# ============================================================

endpoint:
GET /projectflow/report-drafts/{report_draft_id}

success_response_json:
{
  "report_draft_id": "uuid",
  "project_id": "uuid",
  "report_type": "customer",
  "report_period_start": "2026-04-01",
  "report_period_end": "2026-04-07",
  "quantitative_summary": {
    "progress_percent": 68,
    "completed_task_count": 25,
    "incomplete_task_count": 11,
    "overdue_task_count": 3,
    "open_issue_count": 4,
    "high_risk_count": 1,
    "time_actual_hours": 142.5
  },
  "qualitative_draft_text": "Human-edited summary text.",
  "next_actions_text": "Human-edited next actions.",
  "support_requests_text": "Human-edited support request.",
  "customer_confirmation_items_text": "Human-edited confirmation items.",
  "approval_status": "reviewed",
  "created_at": "2026-04-10T12:40:02+09:00",
  "updated_at": "2026-04-10T12:50:01+09:00"
}

# ============================================================
# 10. ENUM FIX
# ============================================================

sync_status_enum:
- queued
- running
- partially_failed
- completed
- failed
- cancelled

sync_direction_enum:
- import
- export

sync_type_enum:
- manual
- scheduled
- retry
- initial_full_import
- differential_import

export_format_enum:
- xlsx
- csv

report_type_enum:
- weekly
- monthly
- customer
- internal

approval_status_enum:
- draft
- reviewed
- approved

masking_option_enum:
- none
- mask_sensitive
- exclude_sensitive

# ============================================================
# 11. FINAL RULE
# ============================================================

final_rules:
- ERP integration payloads are always routed through shared BusinessOS
- ProjectFlow local export/report payloads are application-local
- auto-generated report is draft only
- human review is mandatory before external use

# ============================================================
# PROJECT FLOW DB PHYSICAL SCHEMA FIXED
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Fixes the physical database schema draft for ProjectFlow.

principles:
- ProjectFlow stores operational execution data
- ERP-owned formal data is referenced/imported, not re-authored here
- sync and export/report history must remain auditable
- destructive delete should be avoided
- archival/read-mostly transition is preferred over physical deletion

schema_candidate:
projectflow

# ============================================================
# 1. TABLE LIST
# ============================================================

tables:
- pf_project
- pf_project_task
- pf_project_milestone
- pf_project_issue
- pf_project_risk
- pf_project_time_entry
- pf_sync_request
- pf_sync_log
- pf_export_job
- pf_progress_report_draft

# ============================================================
# 2. PF_PROJECT
# ============================================================

table_name:
pf_project

purpose:
Stores project execution header information.

primary_key:
- project_id uuid

columns:
- project_id uuid pk
- company_id uuid not null
- erp_project_code text null
- project_name text not null
- project_status text not null
- project_type text null
- customer_id uuid null
- customer_name_snapshot text null
- project_manager_id uuid null
- project_manager_name_snapshot text null
- planned_start_date date null
- planned_end_date date null
- actual_start_date date null
- actual_end_date date null
- progress_percent numeric(5,2) not null default 0
- delay_days integer not null default 0
- budget_amount_view numeric(18,2) null
- actual_cost_amount_view numeric(18,2) null
- priority text null
- health_status text null
- external_share_allowed boolean not null default false
- sync_state text not null default 'idle'
- last_imported_at timestamptz null
- last_exported_at timestamptz null
- archived_at timestamptz null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

unique_constraints:
- uq_pf_project_company_erp_project_code (company_id, erp_project_code)

indexes:
- ix_pf_project_company_id (company_id)
- ix_pf_project_project_status (project_status)
- ix_pf_project_project_manager_id (project_manager_id)
- ix_pf_project_planned_end_date (planned_end_date)
- ix_pf_project_sync_state (sync_state)

notes:
- erp_project_code is ERP-owned when present
- budget_amount_view is reference/view data by default
- archived_at null means active record

# ============================================================
# 3. PF_PROJECT_TASK
# ============================================================

table_name:
pf_project_task

purpose:
Stores project task execution rows.

primary_key:
- task_id uuid

columns:
- task_id uuid pk
- company_id uuid not null
- project_id uuid not null fk -> pf_project.project_id
- parent_task_id uuid null fk -> pf_project_task.task_id
- task_title text not null
- task_description text null
- assignee_id uuid null
- assignee_name_snapshot text null
- status text not null
- priority text null
- planned_start_date date null
- planned_end_date date null
- actual_start_date date null
- actual_end_date date null
- progress_percent numeric(5,2) not null default 0
- delay_days integer not null default 0
- dependency_task_id uuid null fk -> pf_project_task.task_id
- workload_estimate_hours numeric(10,2) null
- workload_actual_hours numeric(10,2) not null default 0
- archived_at timestamptz null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

indexes:
- ix_pf_project_task_company_id (company_id)
- ix_pf_project_task_project_id (project_id)
- ix_pf_project_task_assignee_id (assignee_id)
- ix_pf_project_task_status (status)
- ix_pf_project_task_planned_end_date (planned_end_date)

notes:
- parent_task_id supports hierarchy
- dependency_task_id supports simple predecessor dependency

# ============================================================
# 4. PF_PROJECT_MILESTONE
# ============================================================

table_name:
pf_project_milestone

purpose:
Stores milestone rows.

primary_key:
- milestone_id uuid

columns:
- milestone_id uuid pk
- company_id uuid not null
- project_id uuid not null fk -> pf_project.project_id
- milestone_name text not null
- milestone_status text not null
- due_date date null
- completed_at timestamptz null
- delay_days integer not null default 0
- owner_id uuid null
- owner_name_snapshot text null
- archived_at timestamptz null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

indexes:
- ix_pf_project_milestone_company_id (company_id)
- ix_pf_project_milestone_project_id (project_id)
- ix_pf_project_milestone_milestone_status (milestone_status)
- ix_pf_project_milestone_due_date (due_date)

# ============================================================
# 5. PF_PROJECT_ISSUE
# ============================================================

table_name:
pf_project_issue

purpose:
Stores issue management rows.

primary_key:
- issue_id uuid

columns:
- issue_id uuid pk
- company_id uuid not null
- project_id uuid not null fk -> pf_project.project_id
- related_task_id uuid null fk -> pf_project_task.task_id
- title text not null
- description text null
- severity text not null
- status text not null
- owner_id uuid null
- owner_name_snapshot text null
- due_date date null
- resolved_at timestamptz null
- archived_at timestamptz null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

indexes:
- ix_pf_project_issue_company_id (company_id)
- ix_pf_project_issue_project_id (project_id)
- ix_pf_project_issue_related_task_id (related_task_id)
- ix_pf_project_issue_severity (severity)
- ix_pf_project_issue_status (status)
- ix_pf_project_issue_due_date (due_date)

# ============================================================
# 6. PF_PROJECT_RISK
# ============================================================

table_name:
pf_project_risk

purpose:
Stores risk management rows.

primary_key:
- risk_id uuid

columns:
- risk_id uuid pk
- company_id uuid not null
- project_id uuid not null fk -> pf_project.project_id
- title text not null
- description text null
- probability_level text not null
- impact_level text not null
- risk_score numeric(10,2) not null default 0
- mitigation_plan text null
- owner_id uuid null
- owner_name_snapshot text null
- status text not null
- archived_at timestamptz null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

indexes:
- ix_pf_project_risk_company_id (company_id)
- ix_pf_project_risk_project_id (project_id)
- ix_pf_project_risk_probability_level (probability_level)
- ix_pf_project_risk_impact_level (impact_level)
- ix_pf_project_risk_status (status)
- ix_pf_project_risk_risk_score (risk_score)

# ============================================================
# 7. PF_PROJECT_TIME_ENTRY
# ============================================================

table_name:
pf_project_time_entry

purpose:
Stores work log / time actual rows.

primary_key:
- time_entry_id uuid

columns:
- time_entry_id uuid pk
- company_id uuid not null
- project_id uuid not null fk -> pf_project.project_id
- task_id uuid null fk -> pf_project_task.task_id
- member_id uuid not null
- member_name_snapshot text null
- work_date date not null
- hours numeric(10,2) not null
- work_type text null
- note text null
- export_state text not null default 'pending'
- exported_at timestamptz null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

indexes:
- ix_pf_project_time_entry_company_id (company_id)
- ix_pf_project_time_entry_project_id (project_id)
- ix_pf_project_time_entry_task_id (task_id)
- ix_pf_project_time_entry_member_id (member_id)
- ix_pf_project_time_entry_work_date (work_date)
- ix_pf_project_time_entry_export_state (export_state)

# ============================================================
# 8. PF_SYNC_REQUEST
# ============================================================

table_name:
pf_sync_request

purpose:
Stores import/export/retry sync requests.

primary_key:
- sync_request_id uuid

columns:
- sync_request_id uuid pk
- company_id uuid not null
- sync_direction text not null
- sync_type text not null
- target_project_id uuid null fk -> pf_project.project_id
- requested_by_user_id uuid not null
- requested_at timestamptz not null
- started_at timestamptz null
- finished_at timestamptz null
- status text not null
- retry_count integer not null default 0
- retryable boolean not null default false
- mapping_version text null
- request_payload_json jsonb not null
- response_summary_json jsonb null
- error_code text null
- error_message text null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

indexes:
- ix_pf_sync_request_company_id (company_id)
- ix_pf_sync_request_target_project_id (target_project_id)
- ix_pf_sync_request_requested_by_user_id (requested_by_user_id)
- ix_pf_sync_request_status (status)
- ix_pf_sync_request_sync_direction (sync_direction)
- ix_pf_sync_request_requested_at (requested_at)

# ============================================================
# 9. PF_SYNC_LOG
# ============================================================

table_name:
pf_sync_log

purpose:
Stores field/entity-level sync mutation and error logs.

primary_key:
- sync_log_id uuid

columns:
- sync_log_id uuid pk
- company_id uuid not null
- sync_request_id uuid not null fk -> pf_sync_request.sync_request_id
- target_entity_type text not null
- target_entity_id uuid null
- field_name text null
- previous_value_snapshot text null
- next_value_snapshot text null
- result_status text not null
- error_code text null
- error_message text null
- retryable boolean not null default false
- created_at timestamptz not null default now()

indexes:
- ix_pf_sync_log_company_id (company_id)
- ix_pf_sync_log_sync_request_id (sync_request_id)
- ix_pf_sync_log_target_entity_type (target_entity_type)
- ix_pf_sync_log_target_entity_id (target_entity_id)
- ix_pf_sync_log_result_status (result_status)
- ix_pf_sync_log_created_at (created_at)

# ============================================================
# 10. PF_EXPORT_JOB
# ============================================================

table_name:
pf_export_job

purpose:
Stores spreadsheet export jobs.

primary_key:
- export_job_id uuid

columns:
- export_job_id uuid pk
- company_id uuid not null
- requested_by_user_id uuid not null
- export_type text not null
- export_format text not null
- target_scope text not null
- filter_snapshot_json jsonb not null
- column_selection_json jsonb not null
- masking_policy_snapshot_json jsonb null
- status text not null
- file_uri text null
- generated_at timestamptz null
- error_code text null
- error_message text null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

indexes:
- ix_pf_export_job_company_id (company_id)
- ix_pf_export_job_requested_by_user_id (requested_by_user_id)
- ix_pf_export_job_target_scope (target_scope)
- ix_pf_export_job_export_format (export_format)
- ix_pf_export_job_status (status)
- ix_pf_export_job_created_at (created_at)

# ============================================================
# 11. PF_PROGRESS_REPORT_DRAFT
# ============================================================

table_name:
pf_progress_report_draft

purpose:
Stores human-editable progress report drafts.

primary_key:
- report_draft_id uuid

columns:
- report_draft_id uuid pk
- company_id uuid not null
- project_id uuid not null fk -> pf_project.project_id
- report_type text not null
- report_period_start date not null
- report_period_end date not null
- template_key text null
- quantitative_summary_json jsonb not null
- qualitative_draft_text text null
- next_actions_text text null
- support_requests_text text null
- customer_confirmation_items_text text null
- approval_status text not null default 'draft'
- created_by_user_id uuid not null
- updated_by_user_id uuid not null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

indexes:
- ix_pf_progress_report_draft_company_id (company_id)
- ix_pf_progress_report_draft_project_id (project_id)
- ix_pf_progress_report_draft_report_type (report_type)
- ix_pf_progress_report_draft_approval_status (approval_status)
- ix_pf_progress_report_draft_report_period_start (report_period_start)
- ix_pf_progress_report_draft_report_period_end (report_period_end)

# ============================================================
# 12. FK POLICY
# ============================================================

fk_policy:
- child rows must reference same-company parent rows at application/service layer
- cross-company reference is forbidden
- archived parent rows remain referencable for history view

# ============================================================
# 13. ENUM / VALUE POLICY
# ============================================================

project_status_candidates:
- draft
- imported
- active
- on_hold
- completed
- archived

task_status_candidates:
- not_started
- in_progress
- blocked
- done
- cancelled

milestone_status_candidates:
- not_started
- in_progress
- completed
- delayed
- cancelled

issue_severity_candidates:
- low
- medium
- high
- critical

issue_status_candidates:
- open
- in_progress
- resolved
- closed
- cancelled

risk_status_candidates:
- open
- monitoring
- mitigated
- closed
- cancelled

sync_direction_candidates:
- import
- export

sync_type_candidates:
- manual
- scheduled
- retry
- initial_full_import
- differential_import

sync_status_candidates:
- queued
- running
- partially_failed
- completed
- failed
- cancelled

export_format_candidates:
- xlsx
- csv

export_job_status_candidates:
- queued
- generating
- completed
- failed

approval_status_candidates:
- draft
- reviewed
- approved

# ============================================================
# 14. AUDIT / UPDATE POLICY
# ============================================================

audit_rules:
- sync request payload must be preserved
- sync result summary must be preserved
- report drafts must remain human-editable
- export job history must remain reviewable

update_rules:
- every mutable table should update updated_at on change
- operational deletion should prefer archive semantics
- ERP-owned fields should be refreshed only through controlled import path

# ============================================================
# 15. OPEN ITEMS
# ============================================================

open_items:
- final schema name confirmation
- final enum constraint implementation style
- RLS policy detail
- trigger design for updated_at
- materialized summary need 여부 review

# ============================================================
# PROJECT FLOW IMPLEMENTATION MODULE SPLIT FIXED
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes implementation module split for ProjectFlow.

principles:
- UI and domain concerns should be separable
- ERP integration boundary must be isolated
- export/report generation should not leak into all modules
- sync state and retry behavior must remain testable
- permission-aware behavior must remain enforceable

implementation_style:
Feature-oriented application split with explicit boundary modules.

# ============================================================
# 1. TOP IMPLEMENTATION GROUPS
# ============================================================

top_groups:
- app-shell
- shared-kernel
- project-domain
- task-domain
- milestone-domain
- issue-risk-domain
- time-entry-domain
- sync-domain
- export-report-domain
- integration-boundary
- ui-feature-screens
- test-support

# ============================================================
# 2. APP SHELL
# ============================================================

module_name:
projectflow-app-shell

responsibility:
- application bootstrap
- navigation root
- session and company context handoff
- top-level dependency wiring
- startup routing

must_not_own:
- ERP direct call logic
- business rule-heavy calculation
- export format generation internals

# ============================================================
# 3. SHARED KERNEL
# ============================================================

module_name:
projectflow-shared-kernel

responsibility:
- common value objects
- result/error wrapper
- clock abstraction
- id abstraction
- permission helper interfaces
- audit helper contracts
- shared enums/constants

candidate_contents:
- ProjectId
- TaskId
- SyncRequestId
- ExportJobId
- ReportDraftId
- PermissionDeniedError
- RetryabilityState
- PagedResult
- DateRange

# ============================================================
# 4. PROJECT DOMAIN
# ============================================================

module_name:
projectflow-project-domain

responsibility:
- project aggregate behavior
- project lifecycle rules
- project progress policy entry point
- project header validation
- archive/read-mostly behavior

candidate_use_cases:
- CreateLocalProject
- UpdateProjectHeader
- ArchiveProject
- RecalculateProjectDelay
- RefreshImportedProjectHeader

# ============================================================
# 5. TASK DOMAIN
# ============================================================

module_name:
projectflow-task-domain

responsibility:
- task CRUD rules
- task hierarchy
- dependency validation
- task progress update
- overdue derivation
- workload accumulation hooks

candidate_use_cases:
- CreateTask
- UpdateTask
- ChangeTaskStatus
- RecalculateTaskDelay
- AssignTaskOwner

# ============================================================
# 6. MILESTONE DOMAIN
# ============================================================

module_name:
projectflow-milestone-domain

responsibility:
- milestone lifecycle
- milestone completion rule
- milestone delay calculation
- milestone dashboard summary input

candidate_use_cases:
- CreateMilestone
- UpdateMilestone
- CompleteMilestone
- RecalculateMilestoneDelay

# ============================================================
# 7. ISSUE RISK DOMAIN
# ============================================================

module_name:
projectflow-issue-risk-domain

responsibility:
- issue management
- risk management
- severity and risk score handling
- dashboard count input generation

candidate_use_cases:
- RegisterIssue
- UpdateIssue
- ResolveIssue
- RegisterRisk
- UpdateRisk
- MitigateRisk

# ============================================================
# 8. TIME ENTRY DOMAIN
# ============================================================

module_name:
projectflow-time-entry-domain

responsibility:
- work log registration
- time actual validation
- export-state transition for time actuals
- member/project/task association validation

candidate_use_cases:
- RegisterTimeEntry
- UpdateTimeEntry
- MarkTimeEntryExportPending
- MarkTimeEntryExportCompleted

# ============================================================
# 9. SYNC DOMAIN
# ============================================================

module_name:
projectflow-sync-domain

responsibility:
- sync request creation
- sync status tracking
- retry eligibility handling
- sync log registration
- sync error detail view model source

candidate_use_cases:
- RequestImport
- RequestExport
- RequestRetry
- RefreshSyncStatus
- RecordSyncLog

must_not_own:
- ERP transport execution

# ============================================================
# 10. EXPORT REPORT DOMAIN
# ============================================================

module_name:
projectflow-export-report-domain

responsibility:
- spreadsheet export request
- export history
- report draft generation orchestration
- quantitative summary builder
- qualitative draft assembly
- report approval state handling

candidate_use_cases:
- RequestSpreadsheetExport
- GetExportHistory
- GenerateProgressReportDraft
- UpdateProgressReportDraft
- ApproveProgressReportDraft

# ============================================================
# 11. INTEGRATION BOUNDARY
# ============================================================

module_name:
projectflow-integration-boundary

responsibility:
- shared BusinessOS API client contract
- request/response mapping
- transport abstraction
- retry-safe boundary adapter
- import/export payload serializer

rules:
- ERP direct call is forbidden
- only shared BusinessOS endpoints are allowed
- boundary payload must match exact fixed contract

candidate_ports:
- SharedBusinessOsProjectFlowGateway
- SyncStatusGateway
- ReferenceMasterGateway

# ============================================================
# 12. UI FEATURE SCREENS
# ============================================================

module_name_group:
projectflow-ui-feature-screens

submodules:
- ui-dashboard
- ui-project-list
- ui-project-detail
- ui-task-list
- ui-task-detail
- ui-milestone
- ui-issue-risk
- ui-time-entry
- ui-sync-status
- ui-export
- ui-report-editor
- ui-settings

responsibility:
- screen state
- user input handling
- presenter/viewmodel state mapping
- navigation event emission

must_not_own:
- persistence rules
- integration transport details

# ============================================================
# 13. TEST SUPPORT
# ============================================================

module_name:
projectflow-test-support

responsibility:
- fake gateways
- test fixtures
- clock stub
- id generator stub
- report generation test data
- sync failure simulation helpers

# ============================================================
# 14. REPOSITORY / GATEWAY SPLIT
# ============================================================

repositories:
- ProjectRepository
- TaskRepository
- MilestoneRepository
- IssueRepository
- RiskRepository
- TimeEntryRepository
- SyncRequestRepository
- SyncLogRepository
- ExportJobRepository
- ProgressReportDraftRepository

gateways:
- SharedBusinessOsProjectFlowGateway
- SharedBusinessOsSyncGateway
- SharedBusinessOsReferenceMasterGateway
- FileExportGateway

# ============================================================
# 15. RECOMMENDED CALL FLOW
# ============================================================

recommended_call_flow:
UI
-> use case
-> domain service / aggregate
-> repository
-> integration boundary when needed
-> shared BusinessOS
-> response mapper
-> UI state

# ============================================================
# 16. EXPORT / REPORT SPECIAL RULE
# ============================================================

export_report_rules:
- xlsx/csv generation should be isolated from project/task core logic
- report draft generation should be editable after generation
- external report finalization must stay approval-aware
- file URI exposure must be permission-aware

# ============================================================
# 17. SYNC SPECIAL RULE
# ============================================================

sync_rules:
- sync request persistence happens before external execution tracking
- retry path must create new sync request record
- sync detail UI must read from sync request + sync log
- partial failure must remain visible at row/entity level

# ============================================================
# 18. IMPLEMENTATION OPEN ITEMS
# ============================================================

open_items:
- exact Android module naming
- DI framework choice
- local cache/offline strategy
- background job scheduling style
- report text generation engine detail

# ============================================================
# PROJECT FLOW SUBSCRIPTION ENTITLEMENT IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation note for subscription and entitlement handling.

implementation_targets:
- entitlement state evaluation
- trial period calculation
- read-only mode switch
- action disablement
- read-only visual indicators
- same entitlement enforcement on smartphone and PC

required_controls:
- create action guard
- edit action guard
- export generation guard
- report generation guard
- ERP integration request guard

ui_rule:
Blocked actions in unpaid_read_only mode should be visible but disabled or redirected to subscription explanation,
instead of disappearing silently.

# ============================================================
# PROJECT FLOW COMMON COMPONENT EXTRACTION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Explains what should be extracted later as shared common components.

recommended_extraction_order:
1. read_only_entitlement_guard
2. sync_status_and_retry_visibility
3. spreadsheet_export_request
4. report_draft_editor
5. overdue_and_delay_visibility
6. dashboard_summary_card_set

why_this_order:
- entitlement guard has wide reuse
- sync visibility already aligns with shared integration needs
- export/report are cross-application business features
- overdue/delay and summary cards are broad operational primitives

implementation_rule:
Extracted common components should be shared components,
not copied per application.

non_extraction_examples:
- project-specific field names
- project-specific lifecycle wording
- project-specific report template semantics

# ============================================================
# PROJECT FLOW ENTITLEMENT STATE MODEL NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation note for entitlement state handling.

candidate_state_fields:
- entitlement_state
- trial_started_at
- trial_ends_at
- subscription_started_at
- subscription_expires_at
- last_entitlement_checked_at

required_checks:
- startup entitlement check
- protected action guard check
- refresh after payment recovery
- consistent behavior across smartphone and pc

implementation_rules:
- entitlement evaluation should be centralized
- screen-level guards must rely on the same resolved state
- action-level guards must not duplicate inconsistent rules

# ============================================================
# PROJECT FLOW READ ONLY MODE UI IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation note for read-only mode UI behavior.

ui_implementation_targets:
- read-only banner
- disabled action style
- blocked action explanation dialog or sheet
- subscription recovery entry point
- same behavior across smartphone and pc

behavior_rules:
- disabled actions should remain discoverable
- read-only state should be visible on major screens
- blocked-action explanation should be concise and consistent

# ============================================================
# PROJECT FLOW DB DDL PREPARED
# ============================================================

status: canonical-pre-ddl
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Provides implementation-ready DDL draft for ProjectFlow.

assumptions:
- PostgreSQL compatible
- additive creation
- schema candidate is projectflow
- ERP integration path is external to this schema
- auditability is required
- archive semantics are preferred over destructive delete

# ============================================================
# 1. SCHEMA
# ============================================================

sql:
CREATE SCHEMA IF NOT EXISTS projectflow;

# ============================================================
# 2. TABLES
# ============================================================

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_project (
  project_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  erp_project_code text NULL,
  project_name text NOT NULL,
  project_status text NOT NULL,
  project_type text NULL,
  customer_id uuid NULL,
  customer_name_snapshot text NULL,
  project_manager_id uuid NULL,
  project_manager_name_snapshot text NULL,
  planned_start_date date NULL,
  planned_end_date date NULL,
  actual_start_date date NULL,
  actual_end_date date NULL,
  progress_percent numeric(5,2) NOT NULL DEFAULT 0,
  delay_days integer NOT NULL DEFAULT 0,
  budget_amount_view numeric(18,2) NULL,
  actual_cost_amount_view numeric(18,2) NULL,
  priority text NULL,
  health_status text NULL,
  external_share_allowed boolean NOT NULL DEFAULT false,
  sync_state text NOT NULL DEFAULT 'idle',
  last_imported_at timestamptz NULL,
  last_exported_at timestamptz NULL,
  archived_at timestamptz NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT uq_pf_project_company_erp_project_code UNIQUE (company_id, erp_project_code),
  CONSTRAINT ck_pf_project_progress_percent CHECK (progress_percent >= 0 AND progress_percent <= 100),
  CONSTRAINT ck_pf_project_delay_days CHECK (delay_days >= 0)
);

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_project_task (
  task_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  project_id uuid NOT NULL REFERENCES projectflow.pf_project(project_id),
  parent_task_id uuid NULL REFERENCES projectflow.pf_project_task(task_id),
  task_title text NOT NULL,
  task_description text NULL,
  assignee_id uuid NULL,
  assignee_name_snapshot text NULL,
  status text NOT NULL,
  priority text NULL,
  planned_start_date date NULL,
  planned_end_date date NULL,
  actual_start_date date NULL,
  actual_end_date date NULL,
  progress_percent numeric(5,2) NOT NULL DEFAULT 0,
  delay_days integer NOT NULL DEFAULT 0,
  dependency_task_id uuid NULL REFERENCES projectflow.pf_project_task(task_id),
  workload_estimate_hours numeric(10,2) NULL,
  workload_actual_hours numeric(10,2) NOT NULL DEFAULT 0,
  archived_at timestamptz NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT ck_pf_project_task_progress_percent CHECK (progress_percent >= 0 AND progress_percent <= 100),
  CONSTRAINT ck_pf_project_task_delay_days CHECK (delay_days >= 0),
  CONSTRAINT ck_pf_project_task_workload_estimate_hours CHECK (workload_estimate_hours IS NULL OR workload_estimate_hours >= 0),
  CONSTRAINT ck_pf_project_task_workload_actual_hours CHECK (workload_actual_hours >= 0)
);

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_project_milestone (
  milestone_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  project_id uuid NOT NULL REFERENCES projectflow.pf_project(project_id),
  milestone_name text NOT NULL,
  milestone_status text NOT NULL,
  due_date date NULL,
  completed_at timestamptz NULL,
  delay_days integer NOT NULL DEFAULT 0,
  owner_id uuid NULL,
  owner_name_snapshot text NULL,
  archived_at timestamptz NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT ck_pf_project_milestone_delay_days CHECK (delay_days >= 0)
);

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_project_issue (
  issue_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  project_id uuid NOT NULL REFERENCES projectflow.pf_project(project_id),
  related_task_id uuid NULL REFERENCES projectflow.pf_project_task(task_id),
  title text NOT NULL,
  description text NULL,
  severity text NOT NULL,
  status text NOT NULL,
  owner_id uuid NULL,
  owner_name_snapshot text NULL,
  due_date date NULL,
  resolved_at timestamptz NULL,
  archived_at timestamptz NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_project_risk (
  risk_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  project_id uuid NOT NULL REFERENCES projectflow.pf_project(project_id),
  title text NOT NULL,
  description text NULL,
  probability_level text NOT NULL,
  impact_level text NOT NULL,
  risk_score numeric(10,2) NOT NULL DEFAULT 0,
  mitigation_plan text NULL,
  owner_id uuid NULL,
  owner_name_snapshot text NULL,
  status text NOT NULL,
  archived_at timestamptz NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT ck_pf_project_risk_risk_score CHECK (risk_score >= 0)
);

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_project_time_entry (
  time_entry_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  project_id uuid NOT NULL REFERENCES projectflow.pf_project(project_id),
  task_id uuid NULL REFERENCES projectflow.pf_project_task(task_id),
  member_id uuid NOT NULL,
  member_name_snapshot text NULL,
  work_date date NOT NULL,
  hours numeric(10,2) NOT NULL,
  work_type text NULL,
  note text NULL,
  export_state text NOT NULL DEFAULT 'pending',
  exported_at timestamptz NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT ck_pf_project_time_entry_hours CHECK (hours > 0)
);

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_sync_request (
  sync_request_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  sync_direction text NOT NULL,
  sync_type text NOT NULL,
  target_project_id uuid NULL REFERENCES projectflow.pf_project(project_id),
  requested_by_user_id uuid NOT NULL,
  requested_at timestamptz NOT NULL,
  started_at timestamptz NULL,
  finished_at timestamptz NULL,
  status text NOT NULL,
  retry_count integer NOT NULL DEFAULT 0,
  retryable boolean NOT NULL DEFAULT false,
  mapping_version text NULL,
  request_payload_json jsonb NOT NULL,
  response_summary_json jsonb NULL,
  error_code text NULL,
  error_message text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT ck_pf_sync_request_retry_count CHECK (retry_count >= 0)
);

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_sync_log (
  sync_log_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  sync_request_id uuid NOT NULL REFERENCES projectflow.pf_sync_request(sync_request_id),
  target_entity_type text NOT NULL,
  target_entity_id uuid NULL,
  field_name text NULL,
  previous_value_snapshot text NULL,
  next_value_snapshot text NULL,
  result_status text NOT NULL,
  error_code text NULL,
  error_message text NULL,
  retryable boolean NOT NULL DEFAULT false,
  created_at timestamptz NOT NULL DEFAULT now()
);

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_export_job (
  export_job_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  requested_by_user_id uuid NOT NULL,
  export_type text NOT NULL,
  export_format text NOT NULL,
  target_scope text NOT NULL,
  filter_snapshot_json jsonb NOT NULL,
  column_selection_json jsonb NOT NULL,
  masking_policy_snapshot_json jsonb NULL,
  status text NOT NULL,
  file_uri text NULL,
  generated_at timestamptz NULL,
  error_code text NULL,
  error_message text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_progress_report_draft (
  report_draft_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  project_id uuid NOT NULL REFERENCES projectflow.pf_project(project_id),
  report_type text NOT NULL,
  report_period_start date NOT NULL,
  report_period_end date NOT NULL,
  template_key text NULL,
  quantitative_summary_json jsonb NOT NULL,
  qualitative_draft_text text NULL,
  next_actions_text text NULL,
  support_requests_text text NULL,
  customer_confirmation_items_text text NULL,
  approval_status text NOT NULL DEFAULT 'draft',
  created_by_user_id uuid NOT NULL,
  updated_by_user_id uuid NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT ck_pf_progress_report_draft_period CHECK (report_period_end >= report_period_start)
);

# ============================================================
# 3. INDEXES
# ============================================================

sql:
CREATE INDEX IF NOT EXISTS ix_pf_project_company_id ON projectflow.pf_project(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_project_status ON projectflow.pf_project(project_status);
CREATE INDEX IF NOT EXISTS ix_pf_project_project_manager_id ON projectflow.pf_project(project_manager_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_planned_end_date ON projectflow.pf_project(planned_end_date);
CREATE INDEX IF NOT EXISTS ix_pf_project_sync_state ON projectflow.pf_project(sync_state);

CREATE INDEX IF NOT EXISTS ix_pf_project_task_company_id ON projectflow.pf_project_task(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_task_project_id ON projectflow.pf_project_task(project_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_task_assignee_id ON projectflow.pf_project_task(assignee_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_task_status ON projectflow.pf_project_task(status);
CREATE INDEX IF NOT EXISTS ix_pf_project_task_planned_end_date ON projectflow.pf_project_task(planned_end_date);

CREATE INDEX IF NOT EXISTS ix_pf_project_milestone_company_id ON projectflow.pf_project_milestone(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_milestone_project_id ON projectflow.pf_project_milestone(project_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_milestone_milestone_status ON projectflow.pf_project_milestone(milestone_status);
CREATE INDEX IF NOT EXISTS ix_pf_project_milestone_due_date ON projectflow.pf_project_milestone(due_date);

CREATE INDEX IF NOT EXISTS ix_pf_project_issue_company_id ON projectflow.pf_project_issue(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_issue_project_id ON projectflow.pf_project_issue(project_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_issue_related_task_id ON projectflow.pf_project_issue(related_task_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_issue_severity ON projectflow.pf_project_issue(severity);
CREATE INDEX IF NOT EXISTS ix_pf_project_issue_status ON projectflow.pf_project_issue(status);
CREATE INDEX IF NOT EXISTS ix_pf_project_issue_due_date ON projectflow.pf_project_issue(due_date);

CREATE INDEX IF NOT EXISTS ix_pf_project_risk_company_id ON projectflow.pf_project_risk(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_risk_project_id ON projectflow.pf_project_risk(project_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_risk_probability_level ON projectflow.pf_project_risk(probability_level);
CREATE INDEX IF NOT EXISTS ix_pf_project_risk_impact_level ON projectflow.pf_project_risk(impact_level);
CREATE INDEX IF NOT EXISTS ix_pf_project_risk_status ON projectflow.pf_project_risk(status);
CREATE INDEX IF NOT EXISTS ix_pf_project_risk_risk_score ON projectflow.pf_project_risk(risk_score);

CREATE INDEX IF NOT EXISTS ix_pf_project_time_entry_company_id ON projectflow.pf_project_time_entry(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_time_entry_project_id ON projectflow.pf_project_time_entry(project_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_time_entry_task_id ON projectflow.pf_project_time_entry(task_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_time_entry_member_id ON projectflow.pf_project_time_entry(member_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_time_entry_work_date ON projectflow.pf_project_time_entry(work_date);
CREATE INDEX IF NOT EXISTS ix_pf_project_time_entry_export_state ON projectflow.pf_project_time_entry(export_state);

CREATE INDEX IF NOT EXISTS ix_pf_sync_request_company_id ON projectflow.pf_sync_request(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_sync_request_target_project_id ON projectflow.pf_sync_request(target_project_id);
CREATE INDEX IF NOT EXISTS ix_pf_sync_request_requested_by_user_id ON projectflow.pf_sync_request(requested_by_user_id);
CREATE INDEX IF NOT EXISTS ix_pf_sync_request_status ON projectflow.pf_sync_request(status);
CREATE INDEX IF NOT EXISTS ix_pf_sync_request_sync_direction ON projectflow.pf_sync_request(sync_direction);
CREATE INDEX IF NOT EXISTS ix_pf_sync_request_requested_at ON projectflow.pf_sync_request(requested_at);

CREATE INDEX IF NOT EXISTS ix_pf_sync_log_company_id ON projectflow.pf_sync_log(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_sync_log_sync_request_id ON projectflow.pf_sync_log(sync_request_id);
CREATE INDEX IF NOT EXISTS ix_pf_sync_log_target_entity_type ON projectflow.pf_sync_log(target_entity_type);
CREATE INDEX IF NOT EXISTS ix_pf_sync_log_target_entity_id ON projectflow.pf_sync_log(target_entity_id);
CREATE INDEX IF NOT EXISTS ix_pf_sync_log_result_status ON projectflow.pf_sync_log(result_status);
CREATE INDEX IF NOT EXISTS ix_pf_sync_log_created_at ON projectflow.pf_sync_log(created_at);

CREATE INDEX IF NOT EXISTS ix_pf_export_job_company_id ON projectflow.pf_export_job(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_export_job_requested_by_user_id ON projectflow.pf_export_job(requested_by_user_id);
CREATE INDEX IF NOT EXISTS ix_pf_export_job_target_scope ON projectflow.pf_export_job(target_scope);
CREATE INDEX IF NOT EXISTS ix_pf_export_job_export_format ON projectflow.pf_export_job(export_format);
CREATE INDEX IF NOT EXISTS ix_pf_export_job_status ON projectflow.pf_export_job(status);
CREATE INDEX IF NOT EXISTS ix_pf_export_job_created_at ON projectflow.pf_export_job(created_at);

CREATE INDEX IF NOT EXISTS ix_pf_progress_report_draft_company_id ON projectflow.pf_progress_report_draft(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_progress_report_draft_project_id ON projectflow.pf_progress_report_draft(project_id);
CREATE INDEX IF NOT EXISTS ix_pf_progress_report_draft_report_type ON projectflow.pf_progress_report_draft(report_type);
CREATE INDEX IF NOT EXISTS ix_pf_progress_report_draft_approval_status ON projectflow.pf_progress_report_draft(approval_status);
CREATE INDEX IF NOT EXISTS ix_pf_progress_report_draft_report_period_start ON projectflow.pf_progress_report_draft(report_period_start);
CREATE INDEX IF NOT EXISTS ix_pf_progress_report_draft_report_period_end ON projectflow.pf_progress_report_draft(report_period_end);

# ============================================================
# 4. UPDATED_AT TRIGGER DRAFT
# ============================================================

sql:
CREATE OR REPLACE FUNCTION projectflow.set_updated_at()
RETURNS trigger
LANGUAGE plpgsql
AS $$
BEGIN
  NEW.updated_at := now();
  RETURN NEW;
END;
$$;

sql:
DROP TRIGGER IF EXISTS trg_pf_project_set_updated_at ON projectflow.pf_project;
CREATE TRIGGER trg_pf_project_set_updated_at
BEFORE UPDATE ON projectflow.pf_project
FOR EACH ROW
EXECUTE FUNCTION projectflow.set_updated_at();

DROP TRIGGER IF EXISTS trg_pf_project_task_set_updated_at ON projectflow.pf_project_task;
CREATE TRIGGER trg_pf_project_task_set_updated_at
BEFORE UPDATE ON projectflow.pf_project_task
FOR EACH ROW
EXECUTE FUNCTION projectflow.set_updated_at();

DROP TRIGGER IF EXISTS trg_pf_project_milestone_set_updated_at ON projectflow.pf_project_milestone;
CREATE TRIGGER trg_pf_project_milestone_set_updated_at
BEFORE UPDATE ON projectflow.pf_project_milestone
FOR EACH ROW
EXECUTE FUNCTION projectflow.set_updated_at();

DROP TRIGGER IF EXISTS trg_pf_project_issue_set_updated_at ON projectflow.pf_project_issue;
CREATE TRIGGER trg_pf_project_issue_set_updated_at
BEFORE UPDATE ON projectflow.pf_project_issue
FOR EACH ROW
EXECUTE FUNCTION projectflow.set_updated_at();

DROP TRIGGER IF EXISTS trg_pf_project_risk_set_updated_at ON projectflow.pf_project_risk;
CREATE TRIGGER trg_pf_project_risk_set_updated_at
BEFORE UPDATE ON projectflow.pf_project_risk
FOR EACH ROW
EXECUTE FUNCTION projectflow.set_updated_at();

DROP TRIGGER IF EXISTS trg_pf_project_time_entry_set_updated_at ON projectflow.pf_project_time_entry;
CREATE TRIGGER trg_pf_project_time_entry_set_updated_at
BEFORE UPDATE ON projectflow.pf_project_time_entry
FOR EACH ROW
EXECUTE FUNCTION projectflow.set_updated_at();

DROP TRIGGER IF EXISTS trg_pf_sync_request_set_updated_at ON projectflow.pf_sync_request;
CREATE TRIGGER trg_pf_sync_request_set_updated_at
BEFORE UPDATE ON projectflow.pf_sync_request
FOR EACH ROW
EXECUTE FUNCTION projectflow.set_updated_at();

DROP TRIGGER IF EXISTS trg_pf_export_job_set_updated_at ON projectflow.pf_export_job;
CREATE TRIGGER trg_pf_export_job_set_updated_at
BEFORE UPDATE ON projectflow.pf_export_job
FOR EACH ROW
EXECUTE FUNCTION projectflow.set_updated_at();

DROP TRIGGER IF EXISTS trg_pf_progress_report_draft_set_updated_at ON projectflow.pf_progress_report_draft;
CREATE TRIGGER trg_pf_progress_report_draft_set_updated_at
BEFORE UPDATE ON projectflow.pf_progress_report_draft
FOR EACH ROW
EXECUTE FUNCTION projectflow.set_updated_at();

# ============================================================
# 5. ENUM CONSTRAINT DRAFT
# ============================================================

sql:
ALTER TABLE projectflow.pf_project
  ADD CONSTRAINT ck_pf_project_project_status
  CHECK (project_status IN ('draft','imported','active','on_hold','completed','archived'));

ALTER TABLE projectflow.pf_project_task
  ADD CONSTRAINT ck_pf_project_task_status
  CHECK (status IN ('not_started','in_progress','blocked','done','cancelled'));

ALTER TABLE projectflow.pf_project_milestone
  ADD CONSTRAINT ck_pf_project_milestone_status
  CHECK (milestone_status IN ('not_started','in_progress','completed','delayed','cancelled'));

ALTER TABLE projectflow.pf_project_issue
  ADD CONSTRAINT ck_pf_project_issue_severity
  CHECK (severity IN ('low','medium','high','critical'));

ALTER TABLE projectflow.pf_project_issue
  ADD CONSTRAINT ck_pf_project_issue_status
  CHECK (status IN ('open','in_progress','resolved','closed','cancelled'));

ALTER TABLE projectflow.pf_project_risk
  ADD CONSTRAINT ck_pf_project_risk_probability_level
  CHECK (probability_level IN ('low','medium','high'));

ALTER TABLE projectflow.pf_project_risk
  ADD CONSTRAINT ck_pf_project_risk_impact_level
  CHECK (impact_level IN ('low','medium','high'));

ALTER TABLE projectflow.pf_project_risk
  ADD CONSTRAINT ck_pf_project_risk_status
  CHECK (status IN ('open','monitoring','mitigated','closed','cancelled'));

ALTER TABLE projectflow.pf_project_time_entry
  ADD CONSTRAINT ck_pf_project_time_entry_export_state
  CHECK (export_state IN ('pending','exported','failed'));

ALTER TABLE projectflow.pf_sync_request
  ADD CONSTRAINT ck_pf_sync_request_sync_direction
  CHECK (sync_direction IN ('import','export'));

ALTER TABLE projectflow.pf_sync_request
  ADD CONSTRAINT ck_pf_sync_request_sync_type
  CHECK (sync_type IN ('manual','scheduled','retry','initial_full_import','differential_import'));

ALTER TABLE projectflow.pf_sync_request
  ADD CONSTRAINT ck_pf_sync_request_status
  CHECK (status IN ('queued','running','partially_failed','completed','failed','cancelled'));

ALTER TABLE projectflow.pf_export_job
  ADD CONSTRAINT ck_pf_export_job_export_format
  CHECK (export_format IN ('xlsx','csv'));

ALTER TABLE projectflow.pf_export_job
  ADD CONSTRAINT ck_pf_export_job_status
  CHECK (status IN ('queued','generating','completed','failed'));

ALTER TABLE projectflow.pf_progress_report_draft
  ADD CONSTRAINT ck_pf_progress_report_draft_report_type
  CHECK (report_type IN ('weekly','monthly','customer','internal'));

ALTER TABLE projectflow.pf_progress_report_draft
  ADD CONSTRAINT ck_pf_progress_report_draft_approval_status
  CHECK (approval_status IN ('draft','reviewed','approved'));

# ============================================================
# 6. IMPLEMENTATION NOTES
# ============================================================

implementation_notes:
- convert ALTER TABLE constraints to guarded migration form during execution planning
- company-consistency validation may require service-layer guard or trigger later
- RLS is intentionally not fixed in this document
- final execution order should be reviewed by Sato(DB)


# ============================================================
# PROJECT FLOW ADDITIVE FEATURE IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

implementation_targets:
- structured form intake
- notification-focused automation
- timeline and gantt enhancement
- richer live dashboard aggregation
- memo and meeting note persistence
- lightweight comment persistence
- project template persistence
- WBS scheduling proposal engine

implementation_rules:
- keep automation lightweight
- keep template and proposal behavior editable
- keep project-specific semantics outside shared generic layers
- keep customer-facing usability primary

# ============================================================
# PROJECT FLOW TIMELINE GANTT DASHBOARD IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

implementation_targets:
- timeline aggregation query or view model
- gantt hierarchy and bar projection logic
- dependency visualization adapter
- dashboard aggregation service
- proposal preview rendering

implementation_rules:
- keep timeline and gantt read-model oriented
- avoid making visual layers the source of truth
- allow device-specific presentation optimization only
- preserve drilldown from aggregated views to source detail

# ============================================================
# PROJECT FLOW FORM MEMO COMMENT IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

implementation_targets:
- dynamic form renderer for limited form types
- memo persistence and search
- lightweight threaded comment persistence
- project detail linkage to memo and comment screens

implementation_rules:
- keep form types limited and explicit
- keep memo simple and searchable
- keep comments lightweight and entity-scoped
- avoid turning comments into full realtime chat requirements

# ============================================================
# PROJECT FLOW LIGHT AUTOMATION IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

implementation_targets:
- trigger evaluation service
- simple rule evaluator
- notification persistence
- dashboard highlight linkage
- optional external notification request adapter

implementation_rules:
- keep rule language constrained
- keep action set small and explicit
- persist enough execution result for review
- preserve easy disablement of rules

# ============================================================
# PROJECT FLOW TEMPLATE AND WBS PROPOSAL IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

implementation_targets:
- template persistence
- template task expansion service
- dependency-aware proposal calculator
- business-day adjustment helper
- proposal preview read model
- proposal confirmation service

implementation_rules:
- keep proposal calculator deterministic
- keep proposal and confirmed schedule states separate
- preserve traceability from confirmed schedule to source template
- allow later extension for additional business-day rule sophistication

# ============================================================
# PROJECT FLOW FEATURE BOUNDARY MATRIX NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Clarifies where each major feature belongs
to avoid overlap during later preparation.

feature_boundary_matrix:

project_task_milestone_core:
- owns operational schedule data after confirmation
- owns task and milestone update behavior

template_and_wbs_proposal:
- owns reusable template structure
- owns proposal generation before confirmation
- does not own confirmed operational schedule after confirmation

timeline_gantt_dashboard:
- owns aggregated and visual read models
- does not own source schedule truth

export_and_report:
- owns output generation
- owns draft report editing
- does not own underlying project/task truth

light_automation:
- owns trigger evaluation and visibility actions
- does not own hidden business mutation

form_intake:
- owns simplified input experience
- does not own independent business truth beyond created downstream entities

memo_and_comment:
- owns contextual record and lightweight communication
- does not replace full document suite or full chat platform

subscription_and_read_only:
- owns entitlement gating and action guards across all features

integration_boundary:
- owns shared BusinessOS request/response boundary
- does not own ERP business truth

# ============================================================
# PROJECT FLOW CUSTOMER FACING SCHEDULE IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

implementation_targets:
- WBS to customer-facing grouping transformation
- milestone-first schedule rendering
- wording override support
- export support for customer-facing schedule
- review-aware external-use handling

implementation_rules:
- customer-facing schedule must not become a second source of truth
- generation should reuse existing WBS and milestone data where possible
- editable wording and visible item selection should be supported

# ============================================================
# PROJECT FLOW CUSTOMER EXPLANATION MATERIAL IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

implementation_targets:
- unified customer explanation material selector
- material-specific generation adapters
- wording override support
- export packaging support

implementation_rules:
- materials may reuse shared source data
- each output type must remain independently exportable
- standard material set should be easily accessible from project context

# ============================================================
# PROJECT FLOW CUSTOMER MATERIAL ADAPTER NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines per-material adapter responsibilities.

material_adapters:
- customer_schedule_adapter
- progress_report_adapter
- issue_list_adapter
- risk_list_adapter
- decision_note_adapter
- follow_up_action_list_adapter

rules:
- each material adapter may reuse shared project source data
- each adapter must remain independently exportable
- customer-facing wording adjustments must remain supported where applicable

# ============================================================
# PROJECT FLOW IMPLEMENTATION DETAIL OVERVIEW
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-detail design entry points
without starting development.

detail_targets:
- screen state design
- screen event design
- repository interface shaping
- gateway interface shaping
- use case grouping
- migration split planning
- validation responsibility split
- error handling responsibility split

principles:
- keep implementation detail aligned with canonical architecture
- do not collapse BusinessOS integration boundary
- preserve smartphone and PC functional parity
- keep read-model views separate from source-of-truth ownership

# ============================================================
# PROJECT FLOW SCREEN STATE EVENT DESIGN
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines screen-level state and event design direction.

screen_state_pattern:
Each screen should define:
- ui_state
- user_event
- effect or navigation_event
- view_data mapping source

common_ui_state_fields:
- is_loading
- error_message
- read_only_mode
- entitlement_state
- filter_state
- refresh_state

screen_groups:

dashboard:
state_candidates:
- summary_cards
- overdue_summary
- issue_risk_summary
- sync_summary
- quick_action_state

events:
- refresh_requested
- project_list_open_requested
- task_list_open_requested
- sync_status_open_requested
- report_editor_open_requested

project_list:
state_candidates:
- search_query
- selected_filters
- sort_state
- project_rows
- bulk_selection
- export_action_state

events:
- search_changed
- filter_changed
- sort_changed
- project_selected
- export_requested
- report_editor_requested

project_detail:
state_candidates:
- project_header
- tab_state
- overview_state
- sync_header_state
- action_guard_state

events:
- edit_requested
- tab_changed
- export_requested
- report_generate_requested
- sync_detail_requested

task_list_and_task_detail:
state_candidates:
- task_rows
- task_detail
- dependency_view
- quick_update_state

events:
- status_change_requested
- progress_update_requested
- time_entry_requested
- issue_register_requested

timeline_gantt_dashboard:
state_candidates:
- date_range
- visual_items
- dependency_view_state
- drilldown_target_state

events:
- range_changed
- item_selected
- drilldown_requested
- export_requested

form_memo_comment:
state_candidates:
- form_definition
- form_input_state
- memo_rows
- comment_rows
- reply_state

events:
- submit_requested
- memo_saved
- comment_added
- reply_added

automation:
state_candidates:
- rule_rows
- notification_rows
- notification_filter_state

events:
- rule_enabled_changed
- notification_acknowledged
- source_detail_requested

template_and_wbs_proposal:
state_candidates:
- template_rows
- selected_template
- wizard_input_state
- proposal_preview_state
- adjustment_state

events:
- template_selected
- proposal_generate_requested
- proposal_adjust_requested
- proposal_confirm_requested

customer_material:
state_candidates:
- material_type
- preview_state
- wording_edit_state
- export_state

events:
- material_type_changed
- generate_requested
- wording_updated
- export_requested

# ============================================================
# PROJECT FLOW USE CASE GROUPING DETAIL
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines use case grouping at implementation-detail level.

use_case_groups:
- project_use_cases
- task_use_cases
- milestone_use_cases
- issue_risk_use_cases
- time_entry_use_cases
- sync_use_cases
- export_report_use_cases
- form_memo_comment_use_cases
- automation_use_cases
- template_proposal_use_cases
- customer_material_use_cases
- entitlement_use_cases

project_use_cases:
- create_local_project
- update_project_header
- archive_project
- load_project_detail

task_use_cases:
- create_task
- update_task
- change_task_status
- update_task_progress
- load_task_detail

milestone_use_cases:
- create_milestone
- update_milestone
- complete_milestone

issue_risk_use_cases:
- register_issue
- update_issue
- resolve_issue
- register_risk
- update_risk
- mitigate_risk

time_entry_use_cases:
- register_time_entry
- update_time_entry
- load_time_entries

sync_use_cases:
- request_import
- request_export
- request_retry
- load_sync_status
- load_sync_errors

export_report_use_cases:
- request_spreadsheet_export
- generate_progress_report_draft
- update_progress_report_draft
- load_report_draft

form_memo_comment_use_cases:
- submit_form_request
- create_memo
- update_memo
- add_comment
- reply_comment
- load_project_context_notes

automation_use_cases:
- load_automation_rules
- update_automation_rule
- load_notifications
- acknowledge_notification

template_proposal_use_cases:
- create_template
- update_template
- duplicate_template
- generate_schedule_proposal
- adjust_schedule_proposal
- confirm_schedule_proposal

customer_material_use_cases:
- generate_customer_schedule_material
- generate_issue_list_material
- generate_risk_list_material
- generate_decision_note_material
- generate_follow_up_material

entitlement_use_cases:
- resolve_entitlement_state
- guard_mutating_action
- guard_generation_action

# ============================================================
# PROJECT FLOW REPOSITORY AND GATEWAY INTERFACE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines repository and gateway interface direction.

repository_interfaces:
- ProjectRepository
- TaskRepository
- MilestoneRepository
- IssueRepository
- RiskRepository
- TimeEntryRepository
- SyncRequestRepository
- SyncLogRepository
- ExportJobRepository
- ProgressReportDraftRepository
- FormRequestRepository
- MemoRepository
- CommentRepository
- AutomationRuleRepository
- NotificationRepository
- ProjectTemplateRepository
- ProjectTemplateTaskRepository
- ScheduleProposalRepository

repository_rules:
- repositories own application data persistence concerns
- repositories do not call shared BusinessOS directly
- repositories return domain-oriented data structures

gateway_interfaces:
- SharedBusinessOsProjectFlowGateway
- SharedBusinessOsSyncGateway
- SharedBusinessOsReferenceMasterGateway
- FileExportGateway
- OptionalNotificationGateway
- EntitlementGateway or EntitlementResolverBoundary

gateway_rules:
- gateways isolate external or boundary-facing concerns
- ERP direct gateway is forbidden
- exact boundary payloads must match fixed contract design

interface_shape_guidance:
methods should clearly distinguish:
- command style actions
- query style reads
- mutation with side effects
- output generation requests

# ============================================================
# PROJECT FLOW VALIDATION AND ERROR HANDLING DETAIL
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines validation and error-handling responsibility split.

validation_layers:
- ui validation
- use case validation
- domain rule validation
- persistence constraint validation
- boundary response validation

ui_validation_examples:
- required field missing
- invalid date range input
- missing export format selection

use_case_validation_examples:
- blocked action in unpaid_read_only
- invalid material generation request
- template not active for proposal generation

domain_rule_validation_examples:
- progress outside 0 to 100
- invalid schedule proposal confirmation state
- invalid dependency relation

error_handling_rules:
- user-facing error should be concise
- technical detail should remain inspectable
- retryability should be explicit for boundary and sync failures
- same error policy should apply on smartphone and pc

# ============================================================
# PROJECT FLOW MIGRATION SPLIT PLAN NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Defines future migration split plan without executing development.

recommended_migration_order:
1. schema_and_core_project_tables
2. task_milestone_issue_risk_tables
3. time_entry_and_sync_tables
4. export_and_report_tables
5. template_and_schedule_proposal_tables
6. memo_comment_form_tables
7. automation_rule_and_notification_tables
8. indexes_and_constraints_hardening
9. triggers_and_updated_at
10. optional_rls_phase

split_rules:
- start with additive-only migrations
- keep table creation separate from hardening where useful
- keep trigger introduction separate from base table creation where useful
- review enum/check constraint hardening with DB owner

# ============================================================
# PROJECT FLOW WIREFRAME IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation note for moving from screen detail to wireframe-ready UI structure.

implementation_points:
- each major screen should map to one stable wireframe skeleton
- smartphone and pc should share the same action set
- dense pc layout may add panes but must not add exclusive actions
- read-only banner placement should be stable across screen families
- export and report actions should stay in predictable top-level positions

# ============================================================
# PROJECT FLOW CUSTOMER MATERIAL LAYOUT IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation note for customer-facing material layout.

implementation_points:
- keep shared header and export action pattern across all materials
- allow per-material preview body differences
- keep wording editor close to preview output
- allow pc split view where useful
- keep smartphone stacked layout readable
- keep export-ready table structure stable

# ============================================================
# PROJECT FLOW IMPLEMENTATION READINESS MATRIX
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Shows which areas are ready as design inputs
and which areas still need further detailing.

readiness_matrix:

positioning_and_scope:
- state: ready_as_design_input

commercial_and_entitlement:
- state: ready_as_design_input

device_parity:
- state: ready_as_design_input

core_domain_model:
- state: ready_as_design_input

api_boundary:
- state: ready_as_design_input

db_physical_and_pre_ddl:
- state: mostly_ready_needs_db_review

screen_detail_and_wireframe:
- state: ready_as_design_input

template_and_wbs_proposal:
- state: ready_as_design_input

customer_material_output:
- state: ready_as_design_input

implementation_exact_class_shape:
- state: not_final

migration_execution_plan:
- state: not_final

android_exact_module_naming:
- state: not_final

notes:
ready_as_design_input means sufficient for future implementation planning,
not that development has started.

# ============================================================
# PROJECT FLOW SUPPORT REDUCTION IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation implications of minimum-support positioning.

implementation_targets:
- clearer empty states
- clearer error wording
- concise blocked-action explanation
- concise entitlement explanation
- export/report entry visibility
- simple self-understandable navigation

implementation_rules:
- major actions should be self-explanatory
- error messages should be short and useful
- read-only mode should be obvious
- customer-facing materials should be easy to locate

# ============================================================
# PROJECT FLOW MULTILINGUAL IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation note for multilingual support.

implementation_targets:
- locale resolution service
- translation key catalog
- fallback key resolver
- customer material wording catalog
- export header localization map
- one-page summary wording map

implementation_rules:
- prefer key-based localization over hardcoded wording
- separate UI wording from business data
- separate export header localization from source column names
- keep customer-facing wording templates overridable after generation

# ============================================================
# PROJECT FLOW LOCALIZATION KEY SCOPE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the intended scope of localization keys.

key_scope_groups:
- common_ui
- project_domain
- task_domain
- milestone_domain
- issue_risk_domain
- sync_domain
- export_report_domain
- customer_material_domain
- entitlement_domain
- summary_domain

examples:
common_ui:
- common.save
- common.cancel
- common.export
- common.review_state

customer_material_domain:
- customer_material.schedule.title
- customer_material.progress_report.title
- customer_material.issue_list.title
- customer_material.risk_list.title
- customer_material.decision_note.title
- customer_material.follow_up.title

# ============================================================
# PROJECT FLOW LANGUAGE RESOLUTION IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation detail note for language resolution.

implementation_targets:
- user language preference storage
- runtime locale resolver
- output locale resolver
- export header locale resolver
- customer material locale-aware renderer

implementation_rules:
- keep UI locale resolution and output locale resolution compatible
- allow customer-facing output locale to be explicitly chosen when needed
- keep localization keys stable when later languages are added

# ============================================================
# PROJECT FLOW LOCALIZED CUSTOMER MATERIAL TEMPLATE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation note for localized customer material templates.

template_targets:
- localized material title
- localized section heading set
- localized review-state label
- localized standard phrase set
- localized export section label set

implementation_rules:
- keep template keys stable across languages
- keep business content separate from localized headings
- allow post-generation wording override
- avoid mixing multiple locales in one generated material

# ============================================================
# PROJECT FLOW LOCALIZED EXPORT HEADER MAP NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation note for localized export header mapping.

mapping_rule:
language-neutral field ids map to localized visible header labels.

example_scope:
- project_name -> localized label
- project_status -> localized label
- progress_percent -> localized label
- planned_end_date -> localized label
- risk_score -> localized label
- owner_name_snapshot -> localized label

implementation_rules:
- export header maps should be locale-aware
- export generation should use the selected output locale
- missing localized header should fall back through defined fallback chain

# ============================================================
# PROJECT FLOW LANGUAGE PACK SCOPE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the intended scope of language-pack style assets.

language_pack_groups:
- ui_common_pack
- domain_label_pack
- customer_material_pack
- export_header_pack
- entitlement_pack
- summary_pack
- error_message_pack

ui_common_pack_examples:
- save
- cancel
- export
- review
- confirm
- back

domain_label_pack_examples:
- project_name
- project_status
- task_title
- planned_end_date
- delay_days

customer_material_pack_examples:
- material header labels
- section headings
- explanation helper phrases

export_header_pack_examples:
- spreadsheet column labels
- grouped section labels
- exported material labels

implementation_rules:
- packs should be versionable
- packs should be extensible for future languages
- packs should not store business truth

# ============================================================
# PROJECT FLOW BILINGUAL_OUTPUT_PRESET_NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines preset behavior concept for generating outputs in initial languages.

preset_targets:
- japanese_output_preset
- english_output_preset

preset_scope:
- customer-facing schedule headings
- progress report headings
- issue list headings
- risk list headings
- decision note headings
- follow-up headings
- export headers
- one-page summary headings

rules:
- presets should reuse shared localization keys
- presets may include wording-style differences by language
- presets do not replace review and wording override

# ============================================================
# PROJECT FLOW BILINGUAL LABEL RESOLUTION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation note for resolving bilingual labels.

resolution_steps:
1. resolve selected locale
2. resolve label key
3. resolve localized wording from label catalog
4. apply fallback if key is missing
5. surface unresolved key for review when necessary

application_targets:
- screen titles
- buttons
- filter labels
- status wording
- customer-facing material titles
- customer-facing material section headings
- export headers
- one-page summary labels

rules:
- labels should be resolved from stable keys
- visible labels should not depend on raw field ids
- fallback should remain reviewable in testing

# ============================================================
# PROJECT FLOW CUSTOMER OUTPUT BILINGUAL PRESET NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines preset usage for Japanese and English customer-facing outputs.

preset_types:
- ja_customer_material_preset
- en_customer_material_preset
- ja_export_header_preset
- en_export_header_preset
- ja_one_page_summary_preset
- en_one_page_summary_preset

preset_rules:
- presets should apply localized titles and section headings
- presets should not overwrite business content itself
- wording override remains possible after preset application
- one generated output should use one preset consistently

# ============================================================
# PROJECT FLOW MULTILINGUAL OPERATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines practical operation notes for multilingual handling.

operation_points:
- add new wording through stable keys
- avoid hardcoded wording in screens and outputs
- review fallback leakage before customer-facing use
- review export header readability in each supported language
- keep customer-facing material headings concise
- keep one-page summary wording short and stable

maintenance_points:
- Japanese and English should remain in sync
- later language addition should not break initial packs
- terminology changes should update label catalog and presets together

# ============================================================
# PROJECT FLOW DEVICE SUPPORT IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation note for explicit device support.

implementation_targets:
- iPhone-compatible layout behavior
- Android-compatible layout behavior
- tablet layout behavior
- PC layout behavior
- shared action parity across all supported device types

implementation_rules:
- do not create business-feature forks by device type
- keep state and event behavior device-neutral
- keep only presentation logic device-aware

# ============================================================
# PROJECT FLOW DEVICE_PARITY_OPERATION_NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-detail operation note for keeping parity across device types.

operation_points:
- keep actions device-neutral in state and event layers
- keep entitlement guards device-neutral
- keep localization behavior device-neutral
- keep export and customer-material generation device-neutral
- allow separate layout shells for phone,
  tablet,
  and PC only at presentation layer

warning_points:
- do not create hidden feature differences by device type
- do not place customer-facing generation only on PC
- do not place ERP-related request actions only on non-phone layouts

# ============================================================
# PROJECT FLOW FEATURE SCREEN OUTPUT MAPPING NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep mapping between features,
screens,
and outputs.

mapping_rules:
- each major feature should have at least one clear home screen
- each customer-facing output should map to explicit source data
- output generation should not rely on ambiguous screen-only state
- device support should be inherited from canonical device parity rules

important_mappings:
- template and WBS proposal map to schedule proposal preview and customer-facing schedule
- memo and decision-note data map to decision note output
- task and open action data may map to follow-up action list
- issue/risk data map to issue/risk material outputs

# ============================================================
# PROJECT FLOW REFERENCE AWARE IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of external canonical references.

implementation_prep_rules:
- implementation planning should check BusinessOS mediation before ERP-facing assumptions
- implementation planning should prefer reusable common components where already canonicalized
- ProjectFlow-specific implementation should not fork shared ownership concepts without reason
- promoted common-component candidates should be treated via separate canonical registration flow

# ============================================================
# PROJECT FLOW BUSINESSOS DEPENDENCY IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of BusinessOS dependency boundaries.

implementation_rules:
- keep BusinessOS boundary behind gateway interfaces
- do not leak BusinessOS transport concerns into local screen state
- local use cases should distinguish mediated calls from purely local actions
- failure in BusinessOS-mediated paths should surface as sync/integration state,
  not as ownership confusion

# ============================================================
# PROJECT FLOW ERP DEPENDENCY IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of ERP dependency boundaries.

implementation_rules:
- do not create direct ERP client code inside ProjectFlow
- treat ERP-owned values as reference or synchronized values
- keep ERP-facing concerns behind BusinessOS-facing gateway interfaces
- distinguish ERP truth fields from locally editable fields in state mapping
- preserve local UX even when ERP-mediated paths are unavailable where allowed

# ============================================================
# PROJECT FLOW COMMON COMPONENT AWARE IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of common-component-aware design.

implementation_rules:
- prefer shared shells for export, entitlement, sync visibility, and multilingual labeling when available
- keep ProjectFlow-specific calculation and composition logic local
- do not move local business semantics into shared layers without separate promotion
- keep adapter boundaries clear between shared shell and local data mapping

# ============================================================
# PROJECT FLOW LOCAL OWNERSHIP IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of ProjectFlow local ownership.

implementation_rules:
- keep ProjectFlow-specific composition logic inside ProjectFlow modules
- keep ERP reference fields visually distinguishable from local editable fields
- keep BusinessOS-mediated behavior behind gateway boundaries
- keep shared component use behind adapters where needed
- keep WBS proposal, material composition, and local narrative logic app-local

# ============================================================
# PROJECT FLOW FIELD OWNERSHIP IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of field ownership.

implementation_rules:
- ERP-owned fields should be visually distinguishable when shown
- locally editable fields should be clearly separated from reference-only fields
- sync and boundary status fields should not be mistaken for business truth ownership
- localized display keys and localized labels should stay outside core business models where possible

# ============================================================
# PROJECT FLOW EDITABILITY IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of editability boundaries.

implementation_rules:
- editable versus reference-only fields should be visually distinct
- derived read-only values should not expose misleading direct-edit affordances
- generated draft/proposal content should enter controlled editable state where allowed
- mediated status fields should be presented as status context,
  not editable form input
- localized display artifacts should stay outside business-edit forms where possible

# ============================================================
# PROJECT FLOW ACTION AUTHORITY IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of action authority boundaries.

implementation_rules:
- action guards should be centralized where practical
- UI affordance should distinguish visible-but-blocked from executable
- mediated boundary actions should route through boundary-specific use cases
- review-required exports should present review state before execution
- device-specific layouts must not fork action authority

# ============================================================
# PROJECT FLOW STATE TRANSITION IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of state transitions.

implementation_rules:
- state transition guards should be explicit
- invalid transitions should be rejected clearly
- review and confirmation actions should not be conflated
- UI should surface current state and next valid actions
- draft/proposal status should be visually distinct from confirmed/approved status

# ============================================================
# PROJECT FLOW AUDITABILITY IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of auditability.

implementation_rules:
- audit capture should focus on business-relevant changes
- review-state transitions should be captured explicitly
- proposal confirmation should capture source proposal linkage
- export execution should capture output-type context
- sync-related audit visibility may reuse sync request and sync log where appropriate

# ============================================================
# PROJECT FLOW UPLOADED REFERENCE AWARE IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of the uploaded reference set.

implementation_prep_rules:
- consult BusinessOS integrated canonical before changing mediated assumptions
- consult ERP design bible and ERP enterprise scope before changing ERP-owned truth assumptions
- consult ERP schema summaries before field-level integration planning
- do not use dumps as ownership replacement for higher canonical docs
- keep ProjectFlow-local implementation planning scoped to app-local behavior

# ============================================================
# PROJECT FLOW REFERENCE FIRST CHECK IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance for choosing the right reference first.

implementation_prep_rules:
- do not start with raw dumps when a higher canonical source answers the question
- use schema summaries before full schema listings when checking field existence
- use ProjectFlow local notes first for app-local ownership and editability questions
- escalate to higher canonical references when local notes overlap external ownership

# ============================================================
# PROJECT FLOW REFERENCE LOOKUP IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance for fast document lookup.

lookup_rules:
- start from the question-to-reference index for common questions
- prefer concise summary/meta docs before opening deep detail docs
- escalate to architecture/model/integration docs when summary docs are insufficient
- escalate to uploaded external canonicals only when local ProjectFlow docs defer ownership upward

# ============================================================
# PROJECT FLOW UPLOADED FILE LOOKUP NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep lookup guidance
using the uploaded file set.

lookup_guidance:
- start with filename register for existence confirmation
- use file-to-concern index for choosing the right uploaded file
- use ProjectFlow local reference-priority notes before jumping into deep dumps
- use schema summary before schema full text where possible
- use dumps only when higher-level canonical or summary references are insufficient

# ============================================================
# PROJECT FLOW REFERENCE UPDATE IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of reference updates.

implementation_rules:
- keep reference filename registers easy to update
- keep concern-to-reference mapping separate from ownership interpretation
- do not hardcode assumptions that a file version never changes
- prefer explicit review of local alignment notes after major external reference replacement

# ============================================================
# PROJECT FLOW REFERENCE CONFLICT IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of reference conflicts.

implementation_rules:
- do not implement against a lower-priority interpretation
  when a higher-priority source disagrees
- field-level implementation planning should pause
  when ownership conflict is unresolved
- update ProjectFlow local notes after conflict resolution,
  not before

# ============================================================
# PROJECT FLOW CONFLICT STOP IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of unresolved conflicts.

implementation_rules:
- do not finalize field mappings while ownership conflicts remain open
- do not finalize gateway contracts while mediation conflicts remain open
- do not finalize editable versus reference-only UI behavior while editability conflicts remain open
- record blocked planning areas explicitly when stop conditions are hit

# ============================================================
# PROJECT FLOW SAFE PREP AND BLOCKED AREA MATRIX
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a matrix of safe-prep versus blocked-prep areas.

scope_matrix:

screen_and_wireframe_refinement:
- status: safe_for_prep
- reason: local composition area

state_event_usecase_refinement:
- status: safe_for_prep
- reason: local implementation-prep area

customer_material_layout_refinement:
- status: safe_for_prep
- reason: local composition area

multilingual_label_pack_refinement_within_ja_en:
- status: safe_for_prep
- reason: fixed initial language scope exists

read_only_ui_affordance_refinement:
- status: safe_for_prep
- reason: entitlement rules are already fixed

audit_event_capture_planning:
- status: safe_for_prep
- reason: app-local traceability area

erp_field_mapping_finalization:
- status: blocked_if_conflict_exists
- reason: ERP truth ownership must stay clear

businessos_gateway_finalization:
- status: blocked_if_mediation_conflict_exists
- reason: mediation interpretation must stay clear

db_hardening_finalization:
- status: blocked_if_ownership_conflict_exists
- reason: field ownership and constraints must stay clear

direct_erp_client_assumption:
- status: blocked
- reason: violates mediated boundary rule

shared_common_component_reownership:
- status: blocked
- reason: violates external canonical ownership

# ============================================================
# PROJECT FLOW NEXT PHASE PRIORITY MATRIX
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a concrete next-phase priority matrix.

priority_matrix:

local_wireframe_refinement:
- priority: 1
- readiness: safe_now

local_wording_cleanup:
- priority: 1
- readiness: safe_now

multilingual_label_pack_refinement_ja_en:
- priority: 1
- readiness: safe_now

state_event_usecase_refinement:
- priority: 2
- readiness: safe_now

customer_material_refinement:
- priority: 2
- readiness: safe_now

auditability_refinement:
- priority: 2
- readiness: safe_now

businessos_gateway_planning:
- priority: 3
- readiness: conditional_on_no_mediation_conflict

erp_field_mapping_finalization:
- priority: 3
- readiness: conditional_on_no_ownership_conflict

db_hardening_finalization:
- priority: 4
- readiness: conditional_on_no_field_ownership_conflict

direct_erp_client_assumption:
- priority: blocked
- readiness: not_allowed

shared_common_component_reownership:
- priority: blocked
- readiness: not_allowed

# ============================================================
# PROJECT FLOW NEXT PHASE EXECUTION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance for executing the next phase safely.

execution_rules:
- use the priority matrix before choosing work items
- do not mix safe-now tasks with blocked tasks in the same execution pass
- escalate to conflict review when ownership or mediation is unclear
- record blocked items explicitly instead of silently skipping them
- keep local refinement separate from external-boundary reinterpretation

# ============================================================
# PROJECT FLOW WORK PACKAGE IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance for work-package-based progression.

implementation_rules:
- each work package should stay within one scope type
- local_safe packages should not silently absorb boundary-sensitive questions
- blocked packages should remain deferred until conflicts are resolved
- each package should name its prerequisite documents explicitly
- completion checkpoints should be document-oriented in current phase

# ============================================================
# PROJECT FLOW BOUNDARY WORK PACKAGE IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance for boundary-sensitive
and blocked work packages.

implementation_rules:
- boundary-sensitive packages must list the higher canonical references consulted
- blocked packages must not generate implementation assumptions
- completion of a boundary-sensitive package requires explicit conflict-clear status
- blocked packages may only produce logs,
  summaries,
  or reopen-condition notes

# ============================================================
# PROJECT FLOW GATE REVIEW IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance for gate review execution.

implementation_rules:
- each package should have one gate review result before active progression
- gate review should happen before deeper planning,
  not after
- blocked packages should record non-start result explicitly
- boundary-sensitive packages should record conflict-clear status explicitly

# ============================================================
# PROJECT FLOW WORK PACKAGE EXECUTION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance for recording work-package execution.

implementation_rules:
- execution record should exist after each gate-reviewed package starts or is blocked
- status summaries should distinguish safe,
  boundary-sensitive,
  and blocked packages
- package completion should be document-oriented in current phase
- pause reasons should remain explicit rather than implicit

# ============================================================
# PROJECT FLOW REOPEN IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance for reopening paused or blocked work.

implementation_rules:
- reopen decisions should reference prior execution record
- reopen decisions should reference prior gate review when available
- blocked-to-reopen transitions should record what changed
- safe reopen should still respect scope type:
  local_safe,
  boundary_sensitive,
  or blocked

# ============================================================
# PROJECT FLOW DB HARDENING FINAL REVIEW NOTE
# ============================================================

status: canonical-exact
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Summarizes final DB hardening points
that need explicit confirmation before execution-phase planning.

hardening_buckets:
- schema confirmation
- enum and check hardening
- FK consistency review
- updated_at trigger hardening
- archive semantics confirmation
- RLS split planning
- index confirmation
- mixed ownership field confirmation

# ============================================================
# 1. SCHEMA CONFIRMATION
# ============================================================

schema_confirmation:
- current candidate schema is projectflow
- final schema name remains open until DB-owner confirmation
- no execution should assume alternate schema silently

# ============================================================
# 2. ENUM AND CHECK HARDENING
# ============================================================

hardening_rules:
- status fields should use explicit constrained values
- hardening should be applied after ownership review is stable
- progress_percent remains bounded 0..100
- delay_days remains non-negative
- hours remains positive
- report_period_end must be >= report_period_start

fields_requiring_final_confirmation:
- project_status
- task_status
- milestone_status
- issue_status
- issue_severity
- risk_status
- risk_probability_level
- risk_impact_level
- export_job_status
- sync_request_status
- report_approval_status
- entitlement_state if persisted later

# ============================================================
# 3. FK AND OWNERSHIP REVIEW
# ============================================================

fk_review_points:
- project_task.project_id -> pf_project.project_id
- project_milestone.project_id -> pf_project.project_id
- project_issue.related_task_id -> pf_project_task.task_id optional
- project_time_entry.task_id -> pf_project_task.task_id optional
- schedule_proposal.project_template_id -> project_template.project_template_id
- mixed boundary fields must not imply wrong ownership by FK alone

# ============================================================
# 4. UPDATED_AT AND AUDIT HARDENING
# ============================================================

updated_at_rules:
- updated_at trigger remains appropriate for mutable local tables
- audit capture should remain separate from updated_at mutation
- mediated boundary status update visibility must not be confused with local content edits

# ============================================================
# 5. ARCHIVE SEMANTICS
# ============================================================

archive_rules:
- archive semantics are preferred over destructive delete
- archive fields should be nullable timestamps
- active queries may exclude archived rows by default
- archive should not destroy traceability

# ============================================================
# 6. RLS SPLIT PLANNING
# ============================================================

rls_rules:
- RLS remains a later hardening phase
- ownership clarity must precede RLS hardening
- ERP reference visibility and local editability must remain distinguishable in policy design

# ============================================================
# 7. INDEX CONFIRMATION
# ============================================================

index_review_focus:
- company_id filtering
- project_id joins
- status-based operational lists
- planned_end_date / due_date operational sort and filter
- sync_request tracing
- export/report lookup
- template/proposal lookup

# ============================================================
# 8. STOP CONDITIONS
# ============================================================

stop_conditions:
- unresolved ownership conflict blocks hardening finalization
- unresolved ERP reference interpretation blocks mixed-field hardening
- unresolved mediation conflict blocks sync-related hardening assumptions

# ============================================================
# PROJECT FLOW WBS PROPOSAL EXACT RULES NOTE
# ============================================================

status: canonical-exact
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes exact proposal-generation rules
for template-based WBS scheduling.

principles:
- generated schedule is proposal-only until confirmed
- proposal is deterministic for the same inputs
- business-day treatment is explicit
- dependency order must be respected
- manual adjustment remains possible before confirmation

# ============================================================
# 1. INPUTS
# ============================================================

required_inputs:
- project_type
- project_template_id
- project_start_date

optional_inputs:
- business_day_rule_key
- urgency_factor
- scale_factor

initial_policy:
- urgency_factor is optional and may default to 1.0
- scale_factor is optional and may default to 1.0
- if omitted, template default assumptions apply

# ============================================================
# 2. BASE CALCULATION
# ============================================================

base_rules:
- each template task has relative_start_offset_days
- each template task has planned_duration_days
- start_date_candidate = project_start_date + relative_start_offset_days
- end_date_candidate = start_date_candidate + planned_duration_days - 1

duration_rules:
- planned_duration_days must be >= 1
- zero-duration task is not allowed in initial rule set
- milestone_flag tasks may still use duration 1 for visibility

# ============================================================
# 3. DEPENDENCY ADJUSTMENT
# ============================================================

dependency_rules:
- if dependency_template_task_id exists,
  dependent task start_date_candidate must be >= dependency end date + 1 day
- if both relative offset and dependency imply different starts,
  later valid start wins
- dependency adjustment cascades downstream in evaluation order

evaluation_order:
1. sequence_no ascending
2. dependency correction pass
3. business-day correction pass
4. downstream recalculation if corrected start moves

# ============================================================
# 4. BUSINESS-DAY RULES
# ============================================================

business_day_rule_candidates:
- calendar_day
- weekday_only
- custom_business_calendar later

initial_exact_rule:
- initial supported rules are:
  - calendar_day
  - weekday_only

calendar_day:
- no day exclusion

weekday_only:
- Saturday and Sunday are skipped for start/end placement
- simple initial rule does not include national holiday table yet

important_rule:
National holiday sophistication is deferred.
Initial exact scope stops at weekday_only.

# ============================================================
# 5. SCALE AND URGENCY
# ============================================================

scale_factor_rule:
- when provided,
  planned_duration_days_adjusted = ceil(planned_duration_days * scale_factor)

urgency_factor_rule:
- when provided,
  planned_duration_days_adjusted = max(1, ceil(planned_duration_days_adjusted / urgency_factor))

default_rule:
- if both omitted, base template duration is used unchanged

# ============================================================
# 6. MANUAL ADJUSTMENT
# ============================================================

manual_adjustment_rules:
- user may change proposed dates before confirmation
- manual change may trigger downstream recalculation if dependency preservation mode is on
- initial exact policy:
  - dependency preservation mode is on by default
  - user may later disable chained recalculation only if a future policy adds it

# ============================================================
# 7. CONFIRMATION
# ============================================================

confirmation_rules:
- proposal state must be proposed or adjusted before confirmation
- confirmed proposal writes operational schedule baseline
- discarded proposal never overwrites operational schedule

# ============================================================
# 8. OUTPUTS
# ============================================================

proposal_outputs:
- proposed task dates
- proposed milestone dates
- projected completion date
- dependency-aware order
- proposal_payload_json

# ============================================================
# PROJECT FLOW POST EXACT IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance after exact-design resolution.

implementation_guidance:
- proceed using exact boundary and WBS rules as fixed design input
- treat remaining implementation-choice items as normal planning decisions
- escalate DB execution-phase items to DB-owner review path
- do not reopen resolved broad design unless a real conflict is found

# ============================================================
# PROJECT FLOW FINAL IMPLEMENTATION CHOICE NOTE
# ============================================================

status: canonical-finalized
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Records final implementation-direction choices.

final_choices:

android_module_naming:
- app-projectflow
- core-common
- core-ui
- core-domain
- core-data
- feature-dashboard
- feature-project
- feature-task
- feature-milestone
- feature-issue-risk
- feature-time-entry
- feature-sync
- feature-export-report
- feature-form-memo-comment
- feature-automation
- feature-template-proposal
- feature-customer-material
- integration-businessos
- test-support

di_choice:
- manual dependency injection
- explicit constructor wiring
- no framework required initially

offline_cache_choice:
- local-first operational cache
- mediated sync-aware refresh
- clear sync divergence visibility

background_job_choice:
- platform scheduler plus local refresh triggers
- refresh/status-oriented only
- no hidden business mutation

implementation_effect:
These items are no longer open for ordinary planning.

# ============================================================
# PROJECT FLOW DB OWNER REVIEW BOUNDARY NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Clarifies which remaining items require DB-owner review
rather than ordinary implementation-direction decision.

db_owner_review_required_items:
- final schema confirmation
- migration hardening order
- RLS execution design
- final constraint hardening rollout
- trigger rollout sequencing

rule:
These items remain intentionally outside ordinary app-local finalization.
They should be resolved in DB-owner review flow,
not by silent local closure.

# ============================================================
# PROJECT FLOW REMAINING ITEM EXECUTION BOUNDARY NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines execution-boundary interpretation
for the remaining classified items.

execution_boundary_rules:
- DB-owner-review required items require explicit DB-owner involvement
- future sophistication items are backlog-style improvement items
- non-blocking cleanup items are optional polish tasks
- no remaining item should be mistaken for broad design incompleteness

# ============================================================
# PROJECT FLOW DB OWNER REVIEW EXECUTION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Defines implementation-prep guidance
for DB-owner review execution.

execution_rules:
- review schema confirmation first
- review ownership-sensitive constraint hardening second
- review trigger sequencing third
- review RLS execution design after ownership and hardening direction are stable
- record explicit non-start or hold reasons for any unresolved DB item

# ============================================================
# PROJECT FLOW DB OWNER REVIEW RESULT HANDLING NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Defines how DB-owner review results should be handled.

handling_rules:
- pass result may unlock DB-phase planning
- partial result may unlock only explicitly confirmed areas
- hold result must keep unresolved DB items blocked
- confirmed DB review outputs should be reflected into local notes explicitly
- unresolved items must remain visible and not be silently assumed resolved

# ============================================================
# PROJECT FLOW DB OWNER REVIEW UNLOCK NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Defines implementation-prep guidance
for using DB-owner review results safely.

implementation_rules:
- use explicit DB-owner review result as the source for unlock decisions
- partial confirmation should be mapped area by area
- unlocked DB areas may proceed into deeper planning only after result recording
- blocked DB areas must remain visible in implementation-prep notes

# ============================================================
# PROJECT FLOW DB OWNER REVIEW POST RESULT NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Defines implementation-prep guidance
for acting on DB-owner review outcomes.

implementation_rules:
- do not proceed from memory of the review;
  proceed from the recorded result
- update blocked-area tracking after each review result
- partial confirmation requires area-by-area planning split
- hold result should preserve explicit stop conditions

# ============================================================
# PROJECT FLOW DB OWNER REVIEW REFLECTION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Defines implementation-prep guidance
for reflecting DB-owner review results safely.

implementation_rules:
- reflect only recorded review outcomes
- do not widen confirmed scope beyond what the review actually confirmed
- keep blocked DB areas explicitly blocked after reflection
- update execution-boundary notes when DB items move from blocked to confirmed
- keep reflection history explicit rather than silent

# ============================================================
# PROJECT FLOW IMPLEMENTATION START NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance
for beginning implementation-start planning.

implementation_rules:
- begin from confirmed module structure and manual DI direction
- begin from local-first operational cache strategy
- begin from fixed action authority,
  editability,
  ownership,
  and state-transition notes
- treat DB-confirmed areas as confirmed inputs only where review recorded them
- keep still-blocked areas out of active implementation-start planning

# ============================================================
# PROJECT FLOW IMPLEMENTATION START WORK PACKAGE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance
for the initial implementation-start work packages.

implementation_rules:
- begin with planning packages that consume already-fixed design inputs
- keep boundary-aware packages conditional on DB and mediation clarity
- produce explicit package outputs:
  - module map
  - state/event package map
  - repository/gateway map
  - customer-material slice map
  - local cache and sync slice map
- do not treat planning package completion as coding start automatically

# ============================================================
# PROJECT FLOW IMPLEMENTATION START DELIVERABLE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance
for deliverables of the first implementation-start packages.

implementation_rules:
- each package should produce explicit planning artifacts
- deliverables should remain planning-oriented,
  not coding-oriented,
  in this stage
- completion should be judged by clarity of split and mapping,
  not by executable code existence
- boundary-aware deliverables should stay conditional on confirmed boundary assumptions

# ============================================================
# PROJECT FLOW IMPLEMENTATION START REVIEW NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance
for reviewing implementation-start deliverables.

implementation_rules:
- review should verify mapping clarity,
  ownership clarity,
  and boundary clarity
- approval should only follow recorded review
- partial review outcomes should narrow next-step scope explicitly
- no planning deliverable should silently move forward without review result

# ============================================================
# PROJECT FLOW IMPLEMENTATION START EXECUTION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance
for consuming the implementation-start execution ledger.

implementation_rules:
- execute ledger items in order unless a documented reason exists
- do not pull boundary-aware packages ahead of unresolved local foundations
- keep execution outputs document-oriented in this phase
- update package execution record after each ledger step starts or completes

# ============================================================
# PROJECT FLOW IMPLEMENTATION START DEPENDENCY NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance
for respecting starter-package dependencies.

implementation_rules:
- do not start downstream packages without upstream planning outputs
- do not bypass dependency conditions by informal assumption
- boundary-aware packages must additionally respect conflict and DB-review conditions
- package dependency state should be visible in execution records where practical

# ============================================================
# PROJECT FLOW OFFICIAL COMMON COMPONENT LEDGER NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance after the official common component ledger is available.

implementation_rules:
- consult the official ledger before finalizing shared-shell assumptions
- keep app-local adapters around official shared components explicit
- do not re-canonicalize already-official components inside ProjectFlow docs
- only unresolved or not-yet-promoted candidates remain in app-local scope

# ============================================================
# PROJECT FLOW COMMON COMPONENT DECISION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start guidance
for deciding shared versus app-local component use.

implementation_rules:
- each implementation-start package touching shared-shell-like areas
  should run a common-component decision first
- use official shared ownership where available
- keep app-local adapters explicit around shared components
- record decisions so the same concern is not re-decided inconsistently later

# ============================================================
# PROJECT FLOW SHARED COMPONENT ADAPTER NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start guidance
for ProjectFlow-side adapters around official shared components.

implementation_rules:
- create one adapter per concern area where needed
- keep adapter naming explicit and ProjectFlow-scoped
- keep shared input contract and ProjectFlow local model distinct
- avoid leaking ProjectFlow-only business meaning into shared contracts
- record wrapper usage when UI composition needs extra local orchestration

# ============================================================
# PROJECT FLOW LOCAL ORCHESTRATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start guidance
for ProjectFlow local orchestration around shared components.

implementation_rules:
- define orchestration at screen or surface level
- keep adapter responsibility separate from orchestration responsibility
- adapters map data and contracts
- orchestration arranges sections,
  actions,
  and local visibility behavior
- final screen behavior remains ProjectFlow-owned

# ============================================================
# PROJECT FLOW SCREEN ORCHESTRATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start guidance
for screen-level local orchestration.

implementation_rules:
- screen orchestration should be documented before coding-oriented breakdown
- start with dashboard,
  project detail,
  customer material,
  sync status,
  and export/report surfaces
- reuse official shared components when available
- keep ProjectFlow-specific composition and action routing local

# ============================================================
# PROJECT FLOW SCREEN PACKAGE CONNECTION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start guidance
for connecting screen orchestration work
to planning package execution.

implementation_rules:
- screen orchestration should feed package deliverables explicitly
- package deliverables should identify which screens they unblock
- screen-level local structure should be clarified
  before deeper package breakdown
- boundary-aware screens should keep blocked dependency notes visible

# ============================================================
# PROJECT FLOW DELIVERABLE DEPENDENCY NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start guidance
for using deliverable dependencies in planning.

implementation_rules:
- downstream planning should consume reviewed upstream deliverables
- dependency chains should remain explicit in package planning
- partial approval of an upstream deliverable should narrow downstream scope explicitly
- hold status should block dependent deliverables until resolved

# ============================================================
# PROJECT FLOW FEATURE SLICE ENTRY NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start guidance
for moving from deliverables into feature-slice planning.

implementation_rules:
- use deliverable-ledger outputs as entry inputs
- define slices feature by feature,
  not as one undifferentiated implementation mass
- keep local slices separate from boundary-aware slices
- use reviewed deliverables only
- keep blocked downstream slices explicitly blocked

# ============================================================
# PROJECT FLOW FEATURE SLICE EXECUTION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start guidance
for executing early feature-slice planning.

implementation_rules:
- execute feature-slice planning from reviewed deliverables only
- prefer local slices before boundary-aware slices
- keep slice outputs explicit and scoped
- do not merge multiple slices into one vague planning block
- record blocked boundary-aware slices explicitly when prerequisites are incomplete

# ============================================================
# PROJECT FLOW FEATURE SLICE DELIVERABLE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start guidance
for feature-slice deliverables.

implementation_rules:
- each feature slice should produce explicit planning outputs
- slice completion is based on clarity of split,
  routing,
  and ownership
- boundary-aware slices must preserve boundary assumptions explicitly
- completion does not imply coding start automatically

# ============================================================
# PROJECT FLOW FEATURE SLICE REVIEW NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start guidance for reviewing feature-slice outputs.

implementation_rules:
- review should verify slice clarity,
  ownership clarity,
  and boundary clarity
- approval should follow recorded review only
- partial outcomes should narrow next-step slices explicitly
- blocked scope should remain visible after review

# ============================================================
# PROJECT FLOW FEATURE SLICE EXECUTION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start guidance
for recording feature-slice execution progress.

implementation_rules:
- each feature slice should have an execution record once active work begins
- execution status should remain separate from review and approval status
- paused and blocked reasons should remain explicit
- progress summaries should distinguish local slices from boundary-aware slices

# ============================================================
# PROJECT FLOW FEATURE SLICE REOPEN NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start guidance
for reopening paused or blocked feature slices.

implementation_rules:
- reopen decisions should reference prior execution record
- reopen decisions should reference prior review and approval result when relevant
- blocked-to-reopen transitions should record what changed
- boundary-aware reopen should preserve boundary and blocked-condition checks

# ============================================================
# PROJECT FLOW CODING START NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for the transition into coding-start planning.

implementation_rules:
- begin coding-start planning from approved slice outputs only
- keep initial coding scope narrow and explicit
- exclude blocked or unresolved boundary-aware areas
- keep module/package ownership explicit before task breakdown
- treat coding-start planning as a new narrowing step,
  not automatic full implementation start

# ============================================================
# PROJECT FLOW CODING START WORK PACKAGE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for the initial coding-start work packages.

implementation_rules:
- start from approved planning outputs only
- keep coding-start packages narrow and explicit
- local packages should come before most boundary-aware packages
- boundary-aware packages should keep blocked conditions visible
- package outputs should be code-start-oriented,
  but still planning-scoped at this stage

# ============================================================
# PROJECT FLOW CODING START DELIVERABLE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for coding-start deliverables.

implementation_rules:
- each coding-start package should produce explicit code-start planning outputs
- completion should be judged by scope clarity,
  boundary clarity,
  and ownership clarity
- boundary-aware deliverables must preserve blocked conditions explicitly
- completion does not imply full coding execution automatically

# ============================================================
# PROJECT FLOW CODING START REVIEW NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for reviewing coding-start outputs.

implementation_rules:
- review should verify package breakdown clarity,
  ownership clarity,
  and boundary clarity
- approval should follow recorded review only
- partial outcomes should narrow next-step coding scope explicitly
- blocked scope should remain visible after review

# ============================================================
# PROJECT FLOW CODING START EXECUTION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for recording coding-start execution progress.

implementation_rules:
- each coding-start package should have an execution record once active work begins
- execution status should remain separate from review and approval status
- paused and blocked reasons should remain explicit
- progress summaries should distinguish local packages from boundary-aware packages

# ============================================================
# PROJECT FLOW CODING START REOPEN NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for reopening paused or blocked coding-start packages.

implementation_rules:
- reopen decisions should reference prior execution record
- reopen decisions should reference prior review and approval result when relevant
- blocked-to-reopen transitions should record what changed
- boundary-aware reopen should preserve boundary and blocked-condition checks

# ============================================================
# PROJECT FLOW CODING START DEPENDENCY AND TASK ENTRY NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance for using coding-start dependencies
and entering actual implementation task breakdown safely.

implementation_rules:
- coding-start packages must respect upstream approved outputs
- downstream coding-start planning should consume approved outputs only
- actual implementation task breakdown must start from approved coding-start scope
- blocked boundary-aware scope must remain excluded
- actual task breakdown should be unit-oriented and explicit,
  not one large undifferentiated implementation block

# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for first-wave actual implementation tasks.

implementation_rules:
- actual implementation tasks should start from approved coding-start outputs only
- task outputs should remain narrow and explicit
- local tasks should progress before most boundary-aware tasks
- boundary-aware tasks must preserve blocked-scope exclusion explicitly
- task review should happen before dependent tasks are unlocked

# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK OPERATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for operating actual implementation tasks.

implementation_rules:
- each task should have explicit completion conditions
- each task should have review and approval before dependent unlock
- execution record should exist once active work begins
- reopen decisions should reference prior execution and review records
- boundary-aware tasks must preserve blocked-scope exclusion explicitly
- next implementation units should start only from approved task outputs

# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for early next implementation units.

implementation_rules:
- units should start from approved task outputs only
- units should remain small and explicit
- local units should progress before most boundary-aware units
- boundary-aware units must preserve blocked-scope exclusion explicitly
- unit review should happen before dependent units are unlocked

# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT OPERATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for operating next implementation units.

implementation_rules:
- each unit should have explicit completion conditions
- each unit should have review and approval before dependent unlock
- execution record should exist once active work begins
- reopen decisions should reference prior execution and review records
- boundary-aware units must preserve blocked-scope exclusion explicitly
- concrete coding work groups should start only from approved unit outputs

# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for early concrete coding work groups.

implementation_rules:
- work groups should start from approved unit outputs only
- work groups should remain small and explicit
- local work groups should progress before most boundary-aware work groups
- boundary-aware work groups must preserve blocked-scope exclusion explicitly
- work-group review should happen before dependent work groups are unlocked

# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP OPERATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for operating concrete coding work groups.

implementation_rules:
- each work group should have explicit completion conditions
- each work group should have review and approval before dependent unlock
- execution record should exist once active work begins
- reopen decisions should reference prior execution and review records
- boundary-aware work groups must preserve blocked-scope exclusion explicitly
- concrete file/task units should start only from approved work-group outputs

# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for early concrete file/task units.

implementation_rules:
- file units should start from approved work-group outputs only
- file units should remain small and explicit
- local file units should progress before most boundary-aware file units
- boundary-aware file units must preserve blocked-scope exclusion explicitly
- file-unit review should happen before dependent units are unlocked

# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT OPERATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for operating concrete file/task units.

implementation_rules:
- each file unit should have explicit completion conditions
- each file unit should have review and approval before dependent unlock
- execution record should exist once active work begins
- reopen decisions should reference prior execution and review records
- boundary-aware file units must preserve blocked-scope exclusion explicitly
- patch-level tasks should start only from approved file-unit outputs

# ============================================================
# PROJECT FLOW PATCH TASK OPERATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for early patch-level coding tasks.

implementation_rules:
- patch tasks should start from approved file-unit outputs only
- patch tasks should remain small and explicit
- local patch tasks should progress before most boundary-aware patch tasks
- boundary-aware patch tasks must preserve blocked-scope exclusion explicitly
- patch review and approval should happen before dependent patch tasks are unlocked

# ============================================================
# PROJECT FLOW PATCH TASK COMPLETION AND COMMIT NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for completing patch tasks and handing off to commit/PR-sized units.

implementation_rules:
- each patch task should have explicit completion conditions
- execution record should exist once active work begins
- reopen decisions should reference prior execution and review records
- boundary-aware patch tasks must preserve blocked-scope exclusion explicitly
- commit or PR-sized units should start only from approved patch-task outputs

# ============================================================
# PROJECT FLOW COMMIT PR UNIT NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for early commit / PR-sized units.

implementation_rules:
- commit / PR units should start from approved patch outputs only
- units should remain small,
  additive,
  and review-friendly
- local units should progress before most boundary-aware units
- boundary-aware units must preserve blocked-scope exclusion explicitly
- review and approval should happen before dependent commit / PR units are unlocked

# ============================================================
# PROJECT FLOW COMMIT PR UNIT OPERATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for operating commit / PR-sized units.

implementation_rules:
- each commit / PR unit should have explicit completion conditions
- execution record should exist once active work begins
- reopen decisions should reference prior execution and review records
- boundary-aware units must preserve blocked-scope exclusion explicitly
- merge or release-prep units should start only from approved commit / PR outputs
- change sets should remain review-friendly and explicit

# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for early merge / release-prep units.

implementation_rules:
- merge / release-prep units should start from approved commit / PR outputs only
- units should remain additive,
  review-friendly,
  and explicit
- local units should progress before most boundary-aware units
- boundary-aware units must preserve blocked-scope exclusion explicitly
- review and approval should happen before dependent merge or release-prep units are unlocked

# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT OPERATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for operating merge / release-prep units.

implementation_rules:
- each merge / release-prep unit should have explicit completion conditions
- execution record should exist once active work begins
- reopen decisions should reference prior execution and review records
- boundary-aware units must preserve blocked-scope exclusion explicitly
- release-candidate or handoff units should start only from approved merge / release-prep outputs
- merged scope should remain explicit,
  additive,
  and review-friendly

# ============================================================
# PROJECT FLOW RC HANDOFF UNIT NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for early release-candidate and handoff units.

implementation_rules:
- RC and handoff units should start from approved merge / release-prep outputs only
- units should remain explicit,
  additive,
  and review-friendly
- local RC units should progress before most boundary-aware RC units
- boundary-aware units must preserve blocked-scope exclusion explicitly
- review and approval should happen before dependent RC or handoff units are unlocked
- handoff summaries should reflect approved reality only

# ============================================================
# PROJECT FLOW RC HANDOFF AND CLOSURE OPERATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for operating RC, handoff, and final closure.

implementation_rules:
- each RC/handoff unit should have explicit completion conditions
- execution record should exist once active work begins
- reopen decisions should reference prior execution and review records
- boundary-aware units must preserve blocked-scope exclusion explicitly
- final closure should start only from approved RC/handoff outputs
- closure and restart materials should remain concise,
  factual,
  and restart-friendly

# ============================================================
# PROJECT FLOW FINAL CLOSURE AND RESTART NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for final closure and restart materials.

implementation_rules:
- closure decision should be recorded before final handoff is considered complete
- final handoff summary should be derived from closure decision
- master restart note should point to concrete next-entry documents
- final navigation should stay concise and operational
- restart materials should not reopen blocked scope silently

# ============================================================
# PROJECT FLOW FINAL ENTRY USAGE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how the final entry documents should be used.

usage_rules:
- use current closure status first for overall state
- use final handoff summary for next-chat context transfer
- use master restart note for operational restart
- use final navigation for locating deeper reference materials
- do not bypass these entry docs by reopening deep structure directly unless necessary

# ============================================================
# PROJECT FLOW FINAL LOCK NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how the final closure lock should be used.

usage_rules:
- treat the current broad design as frozen confirmed scope
- begin future work from final entry docs first
- separate DB-owner-review work from ordinary implementation continuation
- preserve blocked and deferred scope explicitly
- reopen broad design only with explicit reason

# ============================================================
# PROJECT FLOW FINAL NAVIGATION USAGE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how the final navigation set should be used in practice.

usage_rules:
- start from top-priority docs before deep decomposition docs
- use restart shortcut for ordinary continuation
- use closure candidate summary when deciding whether to keep closing or move on
- keep DB-owner review, implementation continuation, and closure cleanup as separate paths

# ============================================================
# PROJECT FLOW MASTER CLOSURE USAGE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how the final closure set
should be used in practice.

usage_rules:
- read master closure summary first for broad state
- use entry document map to choose the correct start point
- use closure state map to avoid confusing done,
  deferred,
  blocked,
  and future scope
- prefer entry docs before deep structure docs

# ============================================================
# PROJECT FLOW TERMINAL CLOSURE USAGE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how the terminal closure helper docs should be used.

usage_rules:
- use one-page restart for quickest continuation
- use closure navigation shortcut for fastest document routing
- use current recommended next actions to avoid mixing paths
- keep DB-owner review,
  implementation continuation,
  and future sophistication as separate decisions

# ============================================================
# PROJECT FLOW PRACTICAL END USAGE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how the practical-end document set should be used.

usage_rules:
- use closure declaration when deciding whether broad design is closed enough
- use restart pack for the next continuation chat
- use final quick map for fastest intent-based entry
- use last recommended path note to avoid mixing continuation modes
- keep DB review,
  implementation continuation,
  closure cleanup,
  and future sophistication separate

# ============================================================
# PROJECT FLOW TERMINAL MASTER USAGE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how the terminal master docs should be used.

usage_rules:
- use terminal master note for broad end-state understanding
- use single-page hub for fastest entry routing
- use completion declaration when deciding whether closure is sufficient
- use final continuation chooser before starting any new branch of work
- keep continuation modes separated explicitly

# ============================================================
# PROJECT FLOW TERMINAL SHORTCUT USAGE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how the terminal shortcut set should be used.

usage_rules:
- use terminal shortcut for the fastest practical restart
- use completion map to avoid confusing separated scope with missing scope
- use end-state navigation for terminal understanding
- use last-mile note before deciding whether to continue or stop

# ============================================================
# PROJECT FLOW STOP AND RESUME USAGE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how stop-here and resume helper docs should be used.

usage_rules:
- use stop-here note when deciding whether more expansion is necessary
- use resume path matrix to select one continuation mode
- use final tiny hub for the smallest restart flow
- avoid reopening deep structure before selecting a resume path

# ============================================================
# PROJECT FLOW MASTER TERMINAL INDEX USAGE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how the master terminal index should be used.

usage_rules:
- use the master terminal index as the first terminal navigation point
- use the shortcut doc when the goal is rapid restart
- prefer terminal docs before deep structure docs
- keep DB-owner review,
  implementation continuation,
  closure cleanup,
  and future sophistication separate

# ============================================================
# PROJECT FLOW FINAL COMPLETION USAGE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how the final completion docs should be used.

usage_rules:
- use final completion note when deciding that broad design work is done
- use final stop declaration when deciding to stop safely
- use final one-page handoff for next-chat transfer
- use next chat message template for the fastest restart
- keep DB-owner review,
  implementation continuation,
  closure cleanup,
  and future sophistication separate

# ============================================================
# PROJECT FLOW OPTIONAL FINAL VISIBILITY NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how the optional final visibility docs should be used.

usage_rules:
- use final progress snapshot for quick state confirmation
- use terminal doc list when locating end-state docs
- use ultra short note for next-chat restart
- use scope-boundary-after-completion note to avoid mixing next-stage work into current closure


# ============================================================
# PROJECT FLOW DEVELOPMENT INDEX
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 1300000_PROJECT_FLOW_DEVELOPMENT_INDEX.md
- 1300001_PROJECT_FLOW_DEVELOPMENT_OVERVIEW.md
- 1300002_PROJECT_FLOW_TEST_POINT_DRAFT.md
- 1300003_PROJECT_FLOW_MODULE_TEST_STRATEGY.md
- 1300005_PROJECT_FLOW_COMMON_COMPONENT_REUSE_TEST_NOTE.md
- 1300006_PROJECT_FLOW_NAVIGATION_TEST_NOTE.md
- 1300007_PROJECT_FLOW_SUBSCRIPTION_TEST_NOTE.md
- 1300008_PROJECT_FLOW_DDL_REVIEW_CHECKLIST.md
- 1300009_PROJECT_FLOW_ADDITIVE_FEATURE_TEST_NOTE.md
- 1300010_PROJECT_FLOW_TIMELINE_GANTT_DASHBOARD_TEST_NOTE.md
- 1300011_PROJECT_FLOW_FORM_MEMO_COMMENT_TEST_NOTE.md
- 1300012_PROJECT_FLOW_LIGHT_AUTOMATION_TEST_NOTE.md
- 1300013_PROJECT_FLOW_TEMPLATE_AND_WBS_PROPOSAL_TEST_NOTE.md
- 1300015_PROJECT_FLOW_CUSTOMER_FACING_SCHEDULE_TEST_NOTE.md
- 1300016_PROJECT_FLOW_CUSTOMER_EXPLANATION_MATERIAL_TEST_NOTE.md
- 1300014_PROJECT_FLOW_DESIGN_CONSISTENCY_TEST_NOTE.md
- 1300017_PROJECT_FLOW_CUSTOMER_MATERIAL_DETAIL_TEST_NOTE.md
- 1300018_PROJECT_FLOW_IMPLEMENTATION_PREP_CHECKLIST.md
- 1300019_PROJECT_FLOW_WIREFRAME_REVIEW_CHECKLIST.md
- 1300020_PROJECT_FLOW_CUSTOMER_MATERIAL_LAYOUT_REVIEW_CHECKLIST.md
- 1300021_PROJECT_FLOW_FINAL_REVIEW_CHECKLIST.md
- 1300022_PROJECT_FLOW_CUSTOMER_PROVISION_REVIEW_CHECKLIST.md
- 1300024_PROJECT_FLOW_MULTILINGUAL_REVIEW_CHECKLIST.md
- 1300025_PROJECT_FLOW_INITIAL_LANGUAGE_REVIEW_CHECKLIST.md
- 1300026_PROJECT_FLOW_MULTILINGUAL_OUTPUT_REVIEW_CHECKLIST.md
- 1300027_PROJECT_FLOW_MULTILINGUAL_TERMINOLOGY_REVIEW_CHECKLIST.md
- 1300028_PROJECT_FLOW_LANGUAGE_PACK_REVIEW_CHECKLIST.md
- 1300029_PROJECT_FLOW_BILINGUAL_LABEL_REVIEW_CHECKLIST.md
- 1300030_PROJECT_FLOW_MULTILINGUAL_FINAL_REVIEW_SHEET.md
- 1300031_PROJECT_FLOW_DEVICE_SUPPORT_REVIEW_CHECKLIST.md
- 1300032_PROJECT_FLOW_DEVICE_PARITY_FINAL_REVIEW_SHEET.md
- 1300033_PROJECT_FLOW_CROSS_REFERENCE_REVIEW_CHECKLIST.md
- 1300034_PROJECT_FLOW_REFERENCE_ALIGNMENT_REVIEW_CHECKLIST.md
- 1300035_PROJECT_FLOW_CANONICAL_PRIORITY_REVIEW_CHECKLIST.md
- 1300036_PROJECT_FLOW_BUSINESSOS_DEPENDENCY_REVIEW_CHECKLIST.md
- 1300037_PROJECT_FLOW_ERP_DEPENDENCY_REVIEW_CHECKLIST.md
- 1300038_PROJECT_FLOW_COMMON_COMPONENT_DEPENDENCY_REVIEW_CHECKLIST.md
- 1300039_PROJECT_FLOW_LOCAL_OWNERSHIP_REVIEW_CHECKLIST.md
- 1300040_PROJECT_FLOW_DATA_OWNERSHIP_REVIEW_CHECKLIST.md
- 1300041_PROJECT_FLOW_EDITABILITY_REVIEW_CHECKLIST.md
- 1300042_PROJECT_FLOW_ACTION_AUTHORITY_REVIEW_CHECKLIST.md
- 1300043_PROJECT_FLOW_STATE_TRANSITION_REVIEW_CHECKLIST.md
- 1300044_PROJECT_FLOW_AUDITABILITY_REVIEW_CHECKLIST.md
- 1300045_PROJECT_FLOW_UPLOADED_REFERENCE_REVIEW_CHECKLIST.md
- 1300046_PROJECT_FLOW_REFERENCE_PRIORITY_REVIEW_CHECKLIST.md
- 1300047_PROJECT_FLOW_REFERENCE_LOOKUP_REVIEW_CHECKLIST.md
- 1300048_PROJECT_FLOW_UPLOADED_FILE_REGISTER_REVIEW_CHECKLIST.md
- 1300049_PROJECT_FLOW_REFERENCE_UPDATE_REVIEW_CHECKLIST.md
- 1300050_PROJECT_FLOW_REFERENCE_CONFLICT_REVIEW_CHECKLIST.md
- 1300051_PROJECT_FLOW_REFERENCE_CONFLICT_STOP_REVIEW_CHECKLIST.md
- 1300052_PROJECT_FLOW_SAFE_PREP_SCOPE_REVIEW_CHECKLIST.md
- 1300053_PROJECT_FLOW_NEXT_PHASE_PRIORITY_REVIEW_CHECKLIST.md
- 1300054_PROJECT_FLOW_NEXT_PHASE_EXECUTION_REVIEW_CHECKLIST.md
- 1300055_PROJECT_FLOW_WORK_PACKAGE_REVIEW_CHECKLIST.md
- 1300056_PROJECT_FLOW_BOUNDARY_WORK_PACKAGE_REVIEW_CHECKLIST.md
- 1300057_PROJECT_FLOW_GATE_REVIEW_CHECKLIST.md
- 1300058_PROJECT_FLOW_WORK_PACKAGE_EXECUTION_REVIEW_CHECKLIST.md
- 1300059_PROJECT_FLOW_REOPEN_REVIEW_CHECKLIST.md
- 1300060_PROJECT_FLOW_EXACT_RESOLUTION_REVIEW_CHECKLIST.md
- 1300061_PROJECT_FLOW_POST_EXACT_OPEN_ITEM_REVIEW_CHECKLIST.md
- 1300063_PROJECT_FLOW_FINAL_OPEN_ITEM_CLOSURE_REVIEW_CHECKLIST.md
- 1300064_PROJECT_FLOW_REMAINING_ITEM_FINAL_CLASSIFICATION_CHECKLIST.md
- 1300065_PROJECT_FLOW_DB_OWNER_REVIEW_ENTRY_CHECKLIST.md
- 1300066_PROJECT_FLOW_DB_OWNER_REVIEW_RESULT_CHECKLIST.md
- 1300067_PROJECT_FLOW_DB_OWNER_REVIEW_UNLOCK_CHECKLIST.md
- 1300068_PROJECT_FLOW_DB_OWNER_REVIEW_POST_RESULT_CHECKLIST.md
- 1300069_PROJECT_FLOW_DB_OWNER_REVIEW_REFLECTION_CHECKLIST.md
- 1300070_PROJECT_FLOW_IMPLEMENTATION_START_ENTRY_CHECKLIST.md
- 1300071_PROJECT_FLOW_IMPLEMENTATION_START_WORK_PACKAGE_CHECKLIST.md
- 1300072_PROJECT_FLOW_IMPLEMENTATION_START_DELIVERABLE_CHECKLIST.md
- 1300073_PROJECT_FLOW_IMPLEMENTATION_START_REVIEW_CHECKLIST.md
- 1300074_PROJECT_FLOW_IMPLEMENTATION_START_EXECUTION_LEDGER_CHECKLIST.md
- 1300075_PROJECT_FLOW_IMPLEMENTATION_START_DEPENDENCY_CHECKLIST.md
- 1300076_PROJECT_FLOW_OFFICIAL_COMMON_COMPONENT_LEDGER_CHECKLIST.md
- 1300077_PROJECT_FLOW_COMMON_COMPONENT_DECISION_CHECKLIST.md
- 1300078_PROJECT_FLOW_SHARED_COMPONENT_ADAPTER_CHECKLIST.md
- 1300079_PROJECT_FLOW_LOCAL_ORCHESTRATION_CHECKLIST.md
- 1300080_PROJECT_FLOW_SCREEN_ORCHESTRATION_CHECKLIST.md
- 1300081_PROJECT_FLOW_SCREEN_TO_PACKAGE_MAPPING_CHECKLIST.md
- 1300082_PROJECT_FLOW_DELIVERABLE_DEPENDENCY_CHECKLIST.md
- 1300083_PROJECT_FLOW_FEATURE_SLICE_ENTRY_CHECKLIST.md
- 1300084_PROJECT_FLOW_FEATURE_SLICE_EXECUTION_CHECKLIST.md
- 1300085_PROJECT_FLOW_FEATURE_SLICE_DELIVERABLE_CHECKLIST.md
- 1300086_PROJECT_FLOW_FEATURE_SLICE_REVIEW_CHECKLIST.md
- 1300087_PROJECT_FLOW_FEATURE_SLICE_EXECUTION_CHECKLIST.md
- 1300088_PROJECT_FLOW_FEATURE_SLICE_REOPEN_CHECKLIST.md
- 1300089_PROJECT_FLOW_CODING_START_ENTRY_CHECKLIST.md
- 1300090_PROJECT_FLOW_CODING_START_WORK_PACKAGE_CHECKLIST.md
- 1300091_PROJECT_FLOW_CODING_START_DELIVERABLE_CHECKLIST.md
- 1300092_PROJECT_FLOW_CODING_START_REVIEW_CHECKLIST.md
- 1300093_PROJECT_FLOW_CODING_START_EXECUTION_CHECKLIST.md
- 1300094_PROJECT_FLOW_CODING_START_REOPEN_CHECKLIST.md
- 1300095_PROJECT_FLOW_CODING_START_BULK_CHECKLIST.md
- 1300096_PROJECT_FLOW_ACTUAL_IMPLEMENTATION_TASK_CHECKLIST.md
- 1300097_PROJECT_FLOW_ACTUAL_IMPLEMENTATION_TASK_OPERATION_CHECKLIST.md
- 1300098_PROJECT_FLOW_NEXT_IMPLEMENTATION_UNIT_CHECKLIST.md
- 1300099_PROJECT_FLOW_NEXT_IMPLEMENTATION_UNIT_OPERATION_CHECKLIST.md
- 1300100_PROJECT_FLOW_CONCRETE_CODING_WORK_GROUP_CHECKLIST.md
- 1300101_PROJECT_FLOW_CONCRETE_CODING_WORK_GROUP_OPERATION_CHECKLIST.md
- 1300102_PROJECT_FLOW_CONCRETE_FILE_UNIT_CHECKLIST.md
- 1300103_PROJECT_FLOW_CONCRETE_FILE_UNIT_OPERATION_CHECKLIST.md
- 1300104_PROJECT_FLOW_PATCH_TASK_CHECKLIST.md
- 1300105_PROJECT_FLOW_PATCH_TASK_OPERATION_CHECKLIST.md
- 1300106_PROJECT_FLOW_COMMIT_PR_UNIT_CHECKLIST.md
- 1300107_PROJECT_FLOW_COMMIT_PR_UNIT_OPERATION_CHECKLIST.md
- 1300108_PROJECT_FLOW_MERGE_RELEASE_UNIT_CHECKLIST.md
- 1300109_PROJECT_FLOW_MERGE_RELEASE_UNIT_OPERATION_CHECKLIST.md
- 1300110_PROJECT_FLOW_RC_HANDOFF_UNIT_CHECKLIST.md
- 1300111_PROJECT_FLOW_RC_HANDOFF_AND_CLOSURE_CHECKLIST.md
- 1300112_PROJECT_FLOW_FINAL_CLOSURE_AND_RESTART_CHECKLIST.md
- 1300113_PROJECT_FLOW_FINAL_ENTRY_CHECKLIST.md
- 1300114_PROJECT_FLOW_FINAL_LOCK_CHECKLIST.md
- 1300115_PROJECT_FLOW_FINAL_FINISH_CHECKLIST.md
- 1300116_PROJECT_FLOW_MASTER_CLOSURE_CHECKLIST.md
- 1300117_PROJECT_FLOW_TERMINAL_CLOSURE_CHECKLIST.md
- 1300118_PROJECT_FLOW_PRACTICAL_END_CHECKLIST.md
- 1300119_PROJECT_FLOW_TERMINAL_MASTER_CHECKLIST.md
- 1300120_PROJECT_FLOW_TERMINAL_SHORTCUT_CHECKLIST.md
- 1300121_PROJECT_FLOW_STOP_AND_RESUME_CHECKLIST.md
- 1300122_PROJECT_FLOW_MASTER_TERMINAL_INDEX_CHECKLIST.md
- 1300123_PROJECT_FLOW_FINAL_COMPLETION_CHECKLIST.md
- 1300124_PROJECT_FLOW_OPTIONAL_FINAL_VISIBILITY_CHECKLIST.md

# ============================================================
# PROJECT FLOW DEVELOPMENT OVERVIEW
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

development_focus:
- screen-first operational usability
- safe sync handling
- role-aware behavior
- visibility of delays and risks

# ============================================================
# PROJECT FLOW TEST POINT DRAFT
# ============================================================

status: draft
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

test_points:
- ERP import result display
- protected field lock
- task progress update
- issue/risk registration
- export request and retry
- sync error visibility

# ============================================================
# PROJECT FLOW MODULE TEST STRATEGY
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

test_layers:
- domain unit tests
- repository tests
- integration-boundary contract tests
- screen state tests
- export/report generation tests
- sync failure and retry tests

focus_points:
- ERP direct call absence
- retry creates new sync request
- protected fields remain protected
- export column permission control
- report draft remains editable
- partial failure remains visible

# ============================================================
# PROJECT FLOW UI TEST POINT DETAIL
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

ui_test_points:
- dashboard summary reflects current data
- project list filter/sort works correctly
- ERP-owned fields appear read-only
- overdue visual emphasis appears correctly
- export screen disables forbidden columns
- report editor keeps generated text editable
- sync status clearly distinguishes retryable failures

# ============================================================
# PROJECT FLOW COMMON COMPONENT REUSE TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines reuse-oriented test viewpoints.

reuse_test_points:
- summary card component can accept different metrics
- overdue/delay component can bind to different entities
- sync status component can show generic shared integration states
- export panel can support different target scopes
- read-only banner and guards work across multiple feature screens
- report draft editor can accept different template types without project-specific coupling

# ============================================================
# PROJECT FLOW NAVIGATION TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines navigation-focused test points.

navigation_test_points:
- dashboard reaches all primary hubs
- project detail reaches task, milestone, issue/risk, time, sync, export, and report
- task detail can return to project detail
- sync failure flow reaches retry path cleanly
- export is reachable from both list and detail context
- report generation is reachable from both dashboard and project detail
- smartphone and PC keep same action availability
- unpaid_read_only keeps actions visible but blocked

# ============================================================
# PROJECT FLOW SUBSCRIPTION TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines test points for subscription, trial, and read-only behavior.

test_points:
- trial_active grants full feature access
- trial expiry transitions to unpaid_read_only when payment is invalid
- subscribed_active restores blocked actions
- unpaid_read_only still allows viewing
- unpaid_read_only blocks all mutation and generation actions
- blocked actions remain visible
- smartphone and pc show the same action availability
- read-only banner appears consistently
- no data is deleted on trial expiry

# ============================================================
# PROJECT FLOW DDL REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Defines DDL review checklist before execution.

checklist:
- schema name confirmed
- table names confirmed
- PK and FK coverage confirmed
- index coverage confirmed
- check constraint coverage confirmed
- updated_at trigger policy confirmed
- enum/check implementation style confirmed
- company consistency strategy confirmed
- archive semantics confirmed
- RLS design reviewed separately
- migration split order confirmed

review_notes:
- additive only
- no destructive migration in initial pass
- review with DB owner before execution

# ============================================================
# PROJECT FLOW ADDITIVE FEATURE TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

test_points:
- form intake creates correct downstream entities
- automation triggers fire only when conditions match
- gantt and timeline reflect dependency order
- dashboard aggregates latest operational values
- memo and meeting notes remain project-linked
- comments remain attached to the correct target entity
- template expansion produces expected structure
- schedule proposal remains editable after generation
- business-day rules affect proposed dates correctly

# ============================================================
# PROJECT FLOW TIMELINE GANTT DASHBOARD TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

test_points:
- timeline reflects milestone and key task order correctly
- gantt reflects hierarchy and dependency correctly
- delayed items are emphasized consistently
- dashboard metrics match underlying source data
- proposal preview remains distinct from confirmed schedule
- smartphone and pc keep same action availability
- drilldown from dashboard, timeline, and gantt reaches source screens correctly

# ============================================================
# PROJECT FLOW FORM MEMO COMMENT TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

test_points:
- task create form creates correct task
- issue register form creates correct issue
- progress report request form stores correct request
- memo remains project-linked and searchable
- decision note is distinguishable
- comments remain attached to the correct target entity
- reply relation remains correct
- smartphone and pc expose the same form, memo, and comment capabilities

# ============================================================
# PROJECT FLOW LIGHT AUTOMATION TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

test_points:
- overdue task trigger creates expected notification
- delayed milestone trigger creates expected visibility signal
- sync failed trigger remains visible until acknowledged or resolved
- disabled rules do not fire
- rule conditions limit firing correctly
- automation does not silently mutate core business data
- notification opens correct source detail
- smartphone and pc expose the same rule and notification capability

# ============================================================
# PROJECT FLOW TEMPLATE AND WBS PROPOSAL TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

test_points:
- active template can be selected for proposal generation
- template task expansion respects sequence and dependencies
- relative offset and duration produce expected dates
- business-day rule shifts proposed dates correctly
- adjusted proposal remains editable before confirmation
- unconfirmed proposal does not overwrite confirmed schedule
- confirmed proposal remains traceable to source template
- smartphone and pc keep the same proposal capability

# ============================================================
# PROJECT FLOW DESIGN CONSISTENCY TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines review-style test points for design consistency.

consistency_test_points:
- no feature contradicts shared BusinessOS integration boundary
- no feature contradicts smartphone and pc parity
- no feature contradicts read-only entitlement rules
- proposal and confirmed schedule states remain distinct
- draft and final external-use report states remain distinct
- timeline/gantt/dashboard remain read-model oriented
- automation stays lightweight and does not silently mutate business truth
- form intake remains simplified entry and not duplicate source ownership

# ============================================================
# PROJECT FLOW CUSTOMER FACING SCHEDULE TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

test_points:
- customer-facing schedule can be generated from WBS proposal
- customer-facing schedule can be generated from confirmed schedule
- internal-only detail can be excluded
- milestones remain visible
- wording remains editable before external use
- export output reflects simplified customer-facing structure

# ============================================================
# PROJECT FLOW CUSTOMER EXPLANATION MATERIAL TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

test_points:
- all six standard customer-facing materials are reachable
- each material can be generated independently
- wording remains editable before external use
- materials can be exported separately
- customer explanation material screen is reachable from project context

# ============================================================
# PROJECT FLOW CUSTOMER MATERIAL DETAIL TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

test_points:
- customer-facing schedule shows phase and milestone oriented structure
- progress report shows narrative and quantitative sections
- issue list shows issue-specific fields only
- risk list shows risk-specific fields only
- decision note reflects decision memo source correctly
- follow-up action list reflects pending action source correctly
- each material can be exported independently
- each material remains reviewable before external use

# ============================================================
# PROJECT FLOW IMPLEMENTATION PREP CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines checklist for implementation-prep completeness.

checklist:
- screen state and event design drafted
- use case grouping drafted
- repository and gateway interface direction drafted
- validation and error responsibility drafted
- migration split plan drafted
- DB owner review items isolated
- no implementation-start-only content mixed into architecture
- shared BusinessOS boundary remains preserved

# ============================================================
# PROJECT FLOW WIREFRAME REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- all major actions appear in wireframe
- smartphone and pc keep the same functional capability
- read-only visibility is present
- export/report entry points are easy to reach
- project/task drilldown is short
- sync/error visibility is not buried
- proposal/draft states are visually distinct from confirmed/final states

# ============================================================
# PROJECT FLOW CUSTOMER MATERIAL LAYOUT REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- all six materials share a clear common header
- milestone and schedule visibility are strong in customer schedule
- progress report balances quantitative and narrative sections
- issue and risk layouts remain distinct
- decision note is readable as meeting/executive material
- follow-up list is easy to act on
- smartphone and pc remain functionally equivalent
- export actions are easy to reach on all materials

# ============================================================
# PROJECT FLOW FINAL REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Practical checklist for reviewing design completeness before moving further.

review_focus:
- missing areas
- contradictory wording
- hidden implementation assumptions
- customer-facing material completeness
- proposal/draft/read-only consistency

checklist:
- [ ] no contradiction with shared BusinessOS boundary
- [ ] no contradiction with device parity rule
- [ ] no contradiction with read-only policy
- [ ] no contradiction with customer-facing output policy
- [ ] no contradiction with template/proposal editability rule
- [ ] no contradiction with light automation limitation
- [ ] no contradiction with source-of-truth split
- [ ] no contradiction with export/report review requirement
- [ ] no contradiction with non-development-current-state policy

exit_condition:
Design may be considered well-prepared
when major gaps and contradictions are resolved or explicitly logged.

# ============================================================
# PROJECT FLOW CUSTOMER PROVISION REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- customer-facing positioning is stated consistently
- 900 JPY monthly price is stated consistently
- 7 day trial is stated consistently
- unpaid read-only state is stated consistently
- same smartphone/pc capability is stated consistently
- minimum-support positioning is stated consistently
- no document implies heavy bespoke support by default
- customer explanation outputs are treated as core product value

# ============================================================
# PROJECT FLOW MULTILINGUAL REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- UI labels are covered by multilingual policy
- customer-facing materials are covered by multilingual policy
- export headers are covered by multilingual policy
- smartphone and pc parity includes language capability
- fallback behavior is defined
- unresolved localization keys remain detectable
- localized customer-facing outputs remain reviewable before external use

# ============================================================
# PROJECT FLOW INITIAL LANGUAGE REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- Japanese and English are clearly fixed as initial scope
- UI wording supports the initial language scope
- customer-facing material headings support the initial language scope
- export headers support the initial language scope
- language switching does not alter business truth
- one output keeps one locale consistently

# ============================================================
# PROJECT FLOW MULTILINGUAL OUTPUT REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- all six customer-facing materials support the initial language scope
- localized titles and section headings are defined
- export headers follow the selected language
- one output keeps one locale consistently
- wording overrides remain possible after localized generation
- fallback leakage is detectable before external use

# ============================================================
# PROJECT FLOW MULTILINGUAL TERMINOLOGY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- key business concepts have preferred terms in Japanese
- key business concepts have preferred terms in English
- proposal and confirmed wording stay distinct
- read-only wording is understandable
- customer-facing labels avoid unnecessary jargon
- export headers align with preferred terminology
- one-page summary aligns with preferred terminology

# ============================================================
# PROJECT FLOW LANGUAGE PACK REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- UI common pack scope is defined
- customer material pack scope is defined
- export header pack scope is defined
- entitlement wording pack scope is defined
- future language extension does not break current key model
- language packs do not contain business truth

# ============================================================
# PROJECT FLOW BILINGUAL LABEL REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- common UI labels exist in Japanese and English
- domain labels exist in Japanese and English
- six customer material titles exist in Japanese and English
- key section headings exist in Japanese and English
- export headers exist in Japanese and English
- one-page summary labels exist in Japanese and English
- proposal and confirmed remain distinct in both languages
- read-only wording is understandable in both languages

# ============================================================
# PROJECT FLOW MULTILINGUAL FINAL REVIEW SHEET
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Final review sheet for multilingual completeness and consistency.

review_sections:

scope_review:
- [ ] Japanese is included
- [ ] English is included
- [ ] UI wording is included
- [ ] customer-facing materials are included
- [ ] export headers are included
- [ ] one-page summary is included

consistency_review:
- [ ] one concept has one preferred label per language
- [ ] proposal and confirmed remain distinct
- [ ] reviewed and approved remain distinct
- [ ] read-only wording is clear
- [ ] customer-facing labels avoid unnecessary jargon

output_review:
- [ ] one customer-facing material uses one locale consistently
- [ ] one export output uses one locale consistently
- [ ] headings and section labels align with selected locale
- [ ] fallback leakage is detectable

device_review:
- [ ] smartphone and pc have the same multilingual capability
- [ ] device differences are layout-only

operation_review:
- [ ] label packs are scoped
- [ ] bilingual label catalog exists
- [ ] presets are scoped
- [ ] future language addition does not break current key model

# ============================================================
# PROJECT FLOW DEVICE SUPPORT REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- iPhone support is explicitly stated
- Android support is explicitly stated
- tablet support is explicitly stated
- PC support is explicitly stated
- same functional capability rule is preserved across all four device types
- no device-exclusive major feature remains in wording
- layout-only difference rule is preserved

# ============================================================
# PROJECT FLOW DEVICE PARITY FINAL REVIEW SHEET
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Final review sheet for explicit iPhone,
Android,
tablet,
and PC parity.

review_sections:

device_scope_review:
- [ ] iPhone support is explicit
- [ ] Android support is explicit
- [ ] tablet support is explicit
- [ ] PC support is explicit

feature_parity_review:
- [ ] core project features are available on all supported device types
- [ ] export is available on all supported device types
- [ ] progress report generation is available on all supported device types
- [ ] customer-facing materials are available on all supported device types
- [ ] template and WBS proposal features are available on all supported device types

consistency_review:
- [ ] read-only behavior is consistent on all supported device types
- [ ] multilingual behavior is consistent on all supported device types
- [ ] blocked-action visibility is consistent on all supported device types
- [ ] layout-only difference rule is preserved

# ============================================================
# PROJECT FLOW CROSS REFERENCE REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- every major feature has a clear screen home
- every standard customer-facing material has a clear source
- every standard customer-facing material is available on all supported device types
- read-only rules are not contradicted by output mapping
- multilingual scope is not contradicted by output mapping
- no major feature is left without screen or output context where needed

# ============================================================
# PROJECT FLOW REFERENCE ALIGNMENT REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- ProjectFlow does not contradict higher-level foundation rules
- ProjectFlow does not contradict shared BusinessOS mediation
- ProjectFlow does not claim ERP-owned truth locally
- ProjectFlow does not locally canonicalize common components that belong to separate canonical sets
- ProjectFlow additive details remain application-scoped

# ============================================================
# PROJECT FLOW CANONICAL PRIORITY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- no ProjectFlow file overrides higher foundation ownership
- no ProjectFlow file overrides ERP-owned truth
- no ProjectFlow file bypasses BusinessOS mediation
- no ProjectFlow file locally canonicalizes shared common components without separate promotion
- ProjectFlow-local additive rules stay application-scoped

# ============================================================
# PROJECT FLOW BUSINESSOS DEPENDENCY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- ERP-facing import depends on BusinessOS mediation
- ERP-facing export depends on BusinessOS mediation
- sync retry depends on BusinessOS mediation
- local customer-facing material generation does not depend on BusinessOS
- local template/WBS proposal does not depend on BusinessOS
- local multilingual UI handling does not depend on BusinessOS
- boundary leakage into local screen logic is avoided

# ============================================================
# PROJECT FLOW ERP DEPENDENCY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- ProjectFlow does not directly call ERP
- ERP-owned truth is not locally re-owned by ProjectFlow
- ERP-facing import/export remains BusinessOS-mediated
- local customer-facing outputs do not require ERP direct dependency
- local template/WBS proposal does not require ERP direct dependency
- local UX remains separable from ERP-mediated boundary failures

# ============================================================
# PROJECT FLOW COMMON COMPONENT DEPENDENCY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- shared component candidates are not treated as locally owned canon
- ProjectFlow-specific semantics remain local
- export, entitlement, sync, multilingual, and layout shells are recognized as commonizable areas
- WBS proposal and material composition remain app-local unless separately promoted
- local/shared boundary is explicit enough for later phase planning

# ============================================================
# PROJECT FLOW LOCAL OWNERSHIP REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- ProjectFlow-local behavior is explicitly listed
- ERP-owned truth is not misclassified as local ownership
- BusinessOS mediation is not misclassified as local ownership
- shared common component canon is not misclassified as local ownership
- customer-facing material composition is clearly local
- template and WBS proposal behavior is clearly local

# ============================================================
# PROJECT FLOW DATA OWNERSHIP REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- each major field has a primary ownership interpretation
- ERP-owned reference fields are not treated as local editable truth
- local execution fields are not misclassified as ERP-owned
- sync status is not confused with business truth ownership
- localization keys are not confused with business truth
- common component display usage is not confused with field ownership

# ============================================================
# PROJECT FLOW EDITABILITY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- local operational fields are marked editable where intended
- ERP formal reference fields are not exposed as local editable truth
- derived values are not mistaken for editable source values
- mediated sync fields are not mistaken for business edit targets
- draft and proposal adjustment flows remain explicit
- UI can distinguish editable and reference-only states clearly

# ============================================================
# PROJECT FLOW ACTION AUTHORITY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- visibility and executability are not conflated
- read-only blocked actions remain identifiable
- ERP-facing actions are clearly marked as mediated boundary actions
- review-required exports are clearly distinguished
- device type does not change action authority
- permission-aware local actions remain local where intended

# ============================================================
# PROJECT FLOW STATE TRANSITION REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- project/task/milestone states have explicit allowed transitions
- proposal and confirmed states are not conflated
- draft/reviewed/approved states are not conflated
- export completion is not confused with approval
- entitlement state is not confused with business item state
- invalid transitions are clearly identifiable for later implementation

# ============================================================
# PROJECT FLOW AUDITABILITY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- major operational changes are traceable
- proposal adjustment and confirmation are distinguishable
- review state changes are distinguishable from export completion
- sync retry is distinguishable from ordinary sync flow
- audit visibility does not confuse boundary status with business truth

# ============================================================
# PROJECT FLOW UPLOADED REFERENCE REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- highest-relevance uploaded references are explicitly identified
- BusinessOS integrated canonical is treated as primary mediation reference
- ERP design bible and ERP enterprise scope are treated as primary ERP references
- schema summaries are treated as implementation-prep aids only
- unrelated uploaded canonicals are not overused in current ProjectFlow scope

# ============================================================
# PROJECT FLOW REFERENCE PRIORITY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- each major concern has a first-check reference
- BusinessOS mediation questions do not start from ERP dumps
- ERP truth questions do not start from ProjectFlow local UX notes
- schema questions use schema summaries before full dumps where possible
- app-local behavior questions use ProjectFlow-local notes first

# ============================================================
# PROJECT FLOW REFERENCE LOOKUP REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- common questions have at least one clear starting reference
- summary docs are preferred before deep detail docs
- external canonicals are only used when ownership is external
- lookup order reduces unnecessary document scanning

# ============================================================
# PROJECT FLOW UPLOADED FILE REGISTER REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- uploaded filenames are recorded accurately
- high-relevance files are identified
- low-priority files are not overused for current ProjectFlow scope
- file-to-concern mapping is explicit
- schema summaries are preferred before full schema dumps

# ============================================================
# PROJECT FLOW REFERENCE UPDATE REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- external reference changes are recorded explicitly
- filename register is updated when needed
- higher-canonical replacements trigger local alignment review
- schema summary refresh does not automatically rewrite local ownership assumptions
- dumps are still treated as reference aids only

# ============================================================
# PROJECT FLOW REFERENCE CONFLICT REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- conflict sources are explicitly identified
- higher-priority source is selected explicitly
- local notes are not silently left contradictory
- dumps are not used as ownership replacement
- unresolved conflicts block deeper interpretation where necessary

# ============================================================
# PROJECT FLOW REFERENCE CONFLICT STOP REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- unresolved ownership conflicts block deeper local interpretation
- unresolved ERP field conflicts block field-mapping decisions
- unresolved mediation conflicts block boundary-planning decisions
- stop conditions are distinguished from harmless wording cleanup
- blocked planning areas are recorded explicitly

# ============================================================
# PROJECT FLOW SAFE PREP SCOPE REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- safe-prep areas are explicitly listed
- blocked areas are explicitly listed
- local refinement is not confused with external ownership reinterpretation
- ERP and BusinessOS conflict areas remain blocked when unresolved
- no direct ERP assumption slips into safe-prep scope

# ============================================================
# PROJECT FLOW NEXT PHASE PRIORITY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- safe-now areas are placed before conditional areas
- conditional areas are not treated as unconditional
- blocked areas remain blocked
- no direct ERP assumption appears in early priority stages
- priority order favors local stable refinement first

# ============================================================
# PROJECT FLOW NEXT PHASE EXECUTION REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- next-phase scope is explicitly confirmed
- safe-now items are executed before conditional items
- blocked items are not pulled forward
- conflict areas are escalated instead of guessed
- execution order remains consistent with the priority matrix

# ============================================================
# PROJECT FLOW WORK PACKAGE REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- each package has a clear scope type
- local_safe packages do not hide blocked concerns
- prerequisite documents are explicit
- completion checkpoints are explicit
- package order remains aligned with next-phase priority rules

# ============================================================
# PROJECT FLOW BOUNDARY WORK PACKAGE REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- boundary-sensitive packages are separated from local-safe packages
- blocked packages are explicitly marked blocked
- conflict checks are required before boundary-sensitive execution
- blocked packages do not leak into active planning
- higher canonical references are named explicitly

# ============================================================
# PROJECT FLOW GATE REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- every package has a gate review template available
- local-safe packages confirm prerequisite docs first
- boundary-sensitive packages confirm no unresolved conflict first
- blocked packages are explicitly denied active start
- gate review happens before active progression

# ============================================================
# PROJECT FLOW WORK PACKAGE EXECUTION REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- execution record template exists
- blocked non-start can be recorded explicitly
- paused status can be recorded explicitly
- completion can reference produced documents
- summary template can roll up multiple package states

# ============================================================
# PROJECT FLOW REOPEN REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- blocked or paused reason is explicitly identified
- reopen condition is explicitly checked
- boundary-sensitive items rerun gate review when needed
- unresolved conflict does not silently reopen blocked work
- reopened work records new status explicitly

# ============================================================
# PROJECT FLOW EXACT RESOLUTION REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- BusinessOS exact payload direction is documented
- ERP / ProjectFlow field mapping interpretation is documented
- DB hardening stop conditions are documented
- WBS proposal exact rules are documented
- remaining open items are implementation-choice items,
  not broad design blockers

# ============================================================
# PROJECT FLOW POST EXACT OPEN ITEM REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- remaining open items are listed explicitly
- remaining open items are grouped by decision timing
- remaining open items are not treated as broad design blockers
- DB-phase items are separated from ordinary implementation-choice items
- later sophistication items are separated from immediate planning items

# ============================================================
# PROJECT FLOW FINAL OPEN ITEM CLOSURE REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- Android module naming is finalized
- DI direction is finalized
- offline/cache strategy is finalized
- background job style is finalized
- finalized items are no longer treated as open
- DB-owner review items remain explicitly separated
- later sophistication items remain explicitly deferred

# ============================================================
# PROJECT FLOW REMAINING ITEM FINAL CLASSIFICATION CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- remaining items are explicitly classified
- DB-owner-review items are separated from ordinary planning items
- future sophistication items are separated from blockers
- non-blocking cleanup items are separated from blockers
- no major ordinary design blocker remains mislabeled as open

# ============================================================
# PROJECT FLOW DB OWNER REVIEW ENTRY CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

checklist:
- DB-owner review scope is explicitly limited to DB concerns
- entry documents are explicitly listed
- broad application design is not reopened without reason
- schema confirmation and hardening order are first-class review targets
- unresolved DB items can be recorded explicitly

# ============================================================
# PROJECT FLOW DB OWNER REVIEW RESULT CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

checklist:
- DB-owner review execution sheet exists
- DB-owner review result template exists
- hold reasons can be recorded explicitly
- partial confirmation can be recorded explicitly
- unresolved DB items remain visible after review

# ============================================================
# PROJECT FLOW DB OWNER REVIEW UNLOCK CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

checklist:
- pass / partial / hold categories are explicit
- partial does not unlock unspecified DB areas
- unlocked DB areas are based on recorded review result
- blocked DB areas remain visible after review
- no silent transition from hold to active planning occurs

# ============================================================
# PROJECT FLOW DB OWNER REVIEW POST RESULT CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

checklist:
- post-result template exists
- pass / partial / hold starter actions exist
- confirmed and blocked areas are separated explicitly
- planning proceeds only from recorded result
- hold keeps DB-phase work blocked where required

# ============================================================
# PROJECT FLOW DB OWNER REVIEW REFLECTION CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

checklist:
- reflection template exists
- confirmed DB items are reflected explicitly
- blocked DB items remain blocked explicitly
- broad application design notes are not reopened unnecessarily
- reflection scope follows recorded DB-owner review result only

# ============================================================
# PROJECT FLOW IMPLEMENTATION START ENTRY CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- implementation-start entry architecture exists
- implementation-start entry note exists
- implementation-start check template exists
- stable design assumptions are not reopened unnecessarily
- DB-confirmed and still-blocked areas are separated

# ============================================================
# PROJECT FLOW IMPLEMENTATION START WORK PACKAGE CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- initial implementation-start packages are explicitly listed
- local packages are distinguished from boundary-aware packages
- sequence template exists
- blocked DB areas are not silently included
- package outputs are explicit and planning-oriented

# ============================================================
# PROJECT FLOW IMPLEMENTATION START DELIVERABLE CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- deliverable template exists
- each starter package has expected deliverables
- each starter package has explicit completion conditions
- completion is planning-oriented rather than coding-oriented
- boundary-aware completion remains conditional where needed

# ============================================================
# PROJECT FLOW IMPLEMENTATION START REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- deliverable review template exists
- approval template exists
- review and approval flow is explicit
- review result is separated from approval result
- partial approval keeps blocked scope explicit
- next allowed action is recorded after approval

# ============================================================
# PROJECT FLOW IMPLEMENTATION START EXECUTION LEDGER CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- implementation-start packages are listed in an execution ledger
- order and readiness are explicit
- local packages appear before most boundary-aware packages
- expected outputs are explicit per ledger item
- boundary-aware items still preserve conflict checks

# ============================================================
# PROJECT FLOW IMPLEMENTATION START DEPENDENCY CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- starter packages have explicit dependencies
- starter packages have explicit entry conditions
- downstream packages do not bypass upstream outputs
- boundary-aware packages retain extra conflict checks
- dependency interpretation stays aligned with the execution ledger

# ============================================================
# PROJECT FLOW OFFICIAL COMMON COMPONENT LEDGER CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- official common component ledger is explicitly referenced
- ProjectFlow does not override official shared ownership locally
- ProjectFlow keeps local additive behavior separate from official shared ownership
- common component questions check the official ledger before local candidate notes

# ============================================================
# PROJECT FLOW COMMON COMPONENT DECISION CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- decision template exists
- starter decision areas are listed
- official ledger is checked before local assumption
- shared use and app-local use are recorded explicitly
- adapter need is recorded explicitly when shared component is used

# ============================================================
# PROJECT FLOW SHARED COMPONENT ADAPTER CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- shared component usage keeps official ownership intact
- ProjectFlow-side adapter is explicit where needed
- app-specific semantics remain in local adapter/wrapper layer
- shared contracts are not silently extended by ProjectFlow-local assumptions
- wrapper usage is explicit when local orchestration is needed

# ============================================================
# PROJECT FLOW LOCAL ORCHESTRATION CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- final screen responsibility remains ProjectFlow-local
- shared components used by a screen are listed explicitly
- local sections are listed explicitly
- adapter and orchestration responsibilities are not conflated
- local action routing remains explicit

# ============================================================
# PROJECT FLOW SCREEN ORCHESTRATION CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- starter screens are explicitly listed
- each screen can list shared and local parts separately
- orchestration order is explicit
- local action routes remain explicit
- shared-component absence does not block local orchestration planning

# ============================================================
# PROJECT FLOW SCREEN TO PACKAGE MAPPING CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- major screens are mapped to primary packages
- secondary package dependencies are visible
- orchestration progress can be tracked per screen
- ready-for-next-step condition is explicit
- blocked boundary questions remain visible

# ============================================================
# PROJECT FLOW DELIVERABLE DEPENDENCY CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- major implementation-start deliverables have explicit dependency mapping
- upstream and downstream relations are visible
- progress template exists per deliverable
- reviewed usable form is required before unlocking downstream work
- partial and hold outcomes do not silently over-unlock downstream deliverables

# ============================================================
# PROJECT FLOW FEATURE SLICE ENTRY CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- deliverables map to next feature slices explicitly
- feature slice planning template exists
- upstream deliverables are listed per slice
- local and boundary-aware slices remain separated
- blocked downstream slices remain explicit

# ============================================================
# PROJECT FLOW FEATURE SLICE EXECUTION CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- feature-slice execution ledger exists
- sequence reasoning exists
- local slices are prioritized before most boundary-aware slices
- boundary-aware slice prerequisites remain explicit
- blocked slices are not silently advanced

# ============================================================
# PROJECT FLOW FEATURE SLICE DELIVERABLE CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- feature-slice deliverable template exists
- early feature slices have completion conditions
- boundary-aware slices have explicit blocked-by conditions
- completion remains planning-oriented
- slice completion does not silently imply coding start

# ============================================================
# PROJECT FLOW FEATURE SLICE REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- feature-slice review template exists
- feature-slice approval template exists
- review and approval flow is explicit
- review result is separated from approval result
- partial approval keeps blocked scope explicit
- next allowed slices are recorded after approval

# ============================================================
# PROJECT FLOW FEATURE SLICE EXECUTION CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- feature-slice execution record template exists
- feature-slice progress summary template exists
- execution status is separated from review and approval status
- paused reasons are recorded explicitly
- boundary-aware blocked conditions remain visible

# ============================================================
# PROJECT FLOW FEATURE SLICE REOPEN CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- paused or blocked reason is explicitly identified
- upstream deliverables are rechecked before reopen
- boundary-aware slices rerun boundary check when needed
- unresolved blocked conditions do not silently reopen slices
- reopened slice updates execution record explicitly

# ============================================================
# PROJECT FLOW CODING START ENTRY CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- coding-start entry architecture exists
- coding-start entry note exists
- coding-start check template exists
- approved slice outputs are required before coding-start planning
- blocked scope remains excluded explicitly

# ============================================================
# PROJECT FLOW CODING START WORK PACKAGE CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- coding-start starter packages are explicitly listed
- prerequisites require approved slice outputs
- local packages are distinguished from boundary-aware packages
- blocked scope is not silently included
- sequence template exists

# ============================================================
# PROJECT FLOW CODING START DELIVERABLE CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- coding-start deliverable template exists
- each starter package has expected deliverables
- each starter package has explicit completion conditions
- completion remains code-start-planning oriented
- boundary-aware completion keeps blocked conditions explicit

# ============================================================
# PROJECT FLOW CODING START REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- coding-start review template exists
- coding-start approval template exists
- review and approval flow is explicit
- review result is separated from approval result
- partial approval keeps blocked scope explicit
- next allowed coding units are recorded after approval

# ============================================================
# PROJECT FLOW CODING START EXECUTION CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- coding-start execution record template exists
- coding-start progress summary template exists
- execution status is separated from review and approval status
- paused reasons are recorded explicitly
- boundary-aware blocked conditions remain visible

# ============================================================
# PROJECT FLOW CODING START REOPEN CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- paused or blocked reason is explicitly identified
- upstream outputs are rechecked before reopen
- boundary-aware packages rerun boundary check when needed
- unresolved blocked conditions do not silently reopen packages
- reopened package updates execution record explicitly

# ============================================================
# PROJECT FLOW CODING START BULK CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- coding-start dependency matrix exists
- coding-start execution ledger exists
- post-review branch template exists
- actual implementation task entry architecture exists
- actual implementation task entry note exists
- actual implementation task check template exists
- blocked scope remains explicit through the transition

# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- actual implementation task architecture exists
- starter task set exists
- execution ledger exists
- task deliverable template exists
- task review template exists
- boundary-aware tasks preserve blocked-scope exclusion

# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK OPERATION CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- task completion matrix exists
- task approval template exists
- task execution record template exists
- task reopen template exists
- task-to-next-unit ledger exists
- blocked boundary-aware scope remains explicit through the flow

# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- next implementation unit architecture exists
- starter unit set exists
- execution ledger exists
- unit deliverable template exists
- unit review template exists
- boundary-aware units preserve blocked-scope exclusion

# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT OPERATION CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- unit completion matrix exists
- unit approval template exists
- unit execution record template exists
- unit reopen template exists
- unit-to-concrete-coding ledger exists
- blocked boundary-aware scope remains explicit through the flow

# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- concrete coding work-group architecture exists
- starter work-group set exists
- execution ledger exists
- work-group deliverable template exists
- work-group review template exists
- boundary-aware work groups preserve blocked-scope exclusion

# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP OPERATION CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- work-group completion matrix exists
- work-group approval template exists
- work-group execution record template exists
- work-group reopen template exists
- work-group-to-file-task ledger exists
- blocked boundary-aware scope remains explicit through the flow

# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- concrete file-unit architecture exists
- starter file-unit set exists
- execution ledger exists
- file-unit deliverable template exists
- file-unit review template exists
- boundary-aware file units preserve blocked-scope exclusion

# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT OPERATION CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- file-unit completion matrix exists
- file-unit approval template exists
- file-unit execution record template exists
- file-unit reopen template exists
- file-unit-to-patch-task ledger exists
- blocked boundary-aware scope remains explicit through the flow

# ============================================================
# PROJECT FLOW PATCH TASK CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- patch task architecture exists
- starter patch task set exists
- execution ledger exists
- patch task deliverable template exists
- patch task review and approval template exists
- boundary-aware patch tasks preserve blocked-scope exclusion

# ============================================================
# PROJECT FLOW PATCH TASK OPERATION CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- patch-task completion matrix exists
- patch-task execution record template exists
- patch-task reopen template exists
- patch-task-to-commit-pr ledger exists
- blocked boundary-aware scope remains explicit through the flow
- commit or PR-sized units start only from approved patch outputs

# ============================================================
# PROJECT FLOW COMMIT PR UNIT CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- commit / PR unit architecture exists
- starter unit set exists
- execution ledger exists
- unit deliverable template exists
- unit review and approval template exists
- boundary-aware units preserve blocked-scope exclusion

# ============================================================
# PROJECT FLOW COMMIT PR UNIT OPERATION CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- commit / PR completion matrix exists
- commit / PR execution record template exists
- commit / PR reopen template exists
- commit / PR to merge-release ledger exists
- blocked boundary-aware scope remains explicit through the flow
- merge or release-prep units start only from approved commit / PR outputs

# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- merge / release-prep unit architecture exists
- starter unit set exists
- execution ledger exists
- unit deliverable template exists
- unit review and approval template exists
- boundary-aware units preserve blocked-scope exclusion

# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT OPERATION CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- merge / release-prep completion matrix exists
- merge / release-prep execution record template exists
- merge / release-prep reopen template exists
- merge / release-prep to rc-handoff ledger exists
- blocked boundary-aware scope remains explicit through the flow
- release-candidate or handoff units start only from approved merge / release-prep outputs

# ============================================================
# PROJECT FLOW RC HANDOFF UNIT CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- RC/handoff unit architecture exists
- starter unit set exists
- execution ledger exists
- unit deliverable template exists
- unit review and approval template exists
- boundary-aware units preserve blocked-scope exclusion

# ============================================================
# PROJECT FLOW RC HANDOFF AND CLOSURE CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- final closure entry architecture exists
- RC/handoff completion matrix exists
- RC/handoff execution record template exists
- RC/handoff reopen template exists
- RC/handoff to final closure ledger exists
- final closure template exists
- master restart entry template exists
- blocked boundary-aware scope remains explicit through closure

# ============================================================
# PROJECT FLOW FINAL CLOSURE AND RESTART CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- closure decision template exists
- final handoff summary template exists
- master restart note template exists
- final navigation template exists
- closure and restart starter set exists
- closure materials stay restart-friendly
- blocked scope remains explicit through closure and restart

# ============================================================
# PROJECT FLOW FINAL ENTRY CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- current closure status actual doc exists
- final handoff summary actual doc exists
- master restart note actual doc exists
- final navigation actual doc exists
- entry docs are concise and operational
- blocked scope remains explicit in entry docs

# ============================================================
# PROJECT FLOW FINAL LOCK CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- closure decision actual doc exists
- design freeze note exists
- next chat start note exists
- final index patch note exists
- final lock usage note exists
- confirmed scope remains distinct from deferred and blocked scope

# ============================================================
# PROJECT FLOW FINAL FINISH CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- top priority navigation actual doc exists
- closure candidate summary actual doc exists
- restart shortcut actual doc exists
- final navigation usage note exists
- top-priority restart path is shorter than deep-doc restart
- closure candidate rationale is explicit

# ============================================================
# PROJECT FLOW MASTER CLOSURE CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- master closure summary actual doc exists
- entry document map exists
- closure state map exists
- master closure usage note exists
- restart can begin from entry docs without deep-doc scanning
- done / deferred / blocked / future scopes are clearly separated

# ============================================================
# PROJECT FLOW TERMINAL CLOSURE CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- final end note actual doc exists
- one-page restart actual doc exists
- closure navigation shortcut actual doc exists
- current recommended next actions actual doc exists
- terminal closure usage note exists
- continuation paths are separated explicitly

# ============================================================
# PROJECT FLOW PRACTICAL END CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- closure declaration actual doc exists
- restart pack actual doc exists
- final quick map actual doc exists
- last recommended path note actual doc exists
- practical end usage note exists
- continuation modes remain separated explicitly

# ============================================================
# PROJECT FLOW TERMINAL MASTER CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- terminal master note actual doc exists
- single-page hub actual doc exists
- completion declaration actual doc exists
- final continuation chooser actual doc exists
- terminal master usage note exists
- continuation modes remain separated explicitly

# ============================================================
# PROJECT FLOW TERMINAL SHORTCUT CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- terminal shortcut actual doc exists
- completion map actual doc exists
- end-state navigation actual doc exists
- last-mile note actual doc exists
- terminal shortcut usage note exists
- separated scopes remain explicitly separated

# ============================================================
# PROJECT FLOW STOP AND RESUME CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- stop-here note actual doc exists
- resume path matrix actual doc exists
- final tiny hub actual doc exists
- stop and resume usage note exists
- restart can begin from tiny hub without scanning deep docs

# ============================================================
# PROJECT FLOW MASTER TERMINAL INDEX CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- master terminal index actual doc exists
- master terminal index shortcut actual doc exists
- master terminal index usage note exists
- terminal navigation can start from one master index
- continuation modes remain explicitly separated

# ============================================================
# PROJECT FLOW FINAL COMPLETION CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- final completion note actual doc exists
- final stop declaration actual doc exists
- final one-page handoff actual doc exists
- next chat message template exists
- final done map exists
- final completion usage note exists
- practical completion and separated not-done scope remain distinct

# ============================================================
# PROJECT FLOW OPTIONAL FINAL VISIBILITY CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- final progress snapshot exists
- terminal doc list exists
- next chat ultra short note exists
- scope boundary after completion note exists
- optional final visibility usage note exists
