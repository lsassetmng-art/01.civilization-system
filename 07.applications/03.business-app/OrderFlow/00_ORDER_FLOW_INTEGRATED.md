
<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/000_COMMON_DESIGN_INDEX.md -->
# ============================================================
# ORDER FLOW COMMON DESIGN INDEX
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

# root
- 000_COMMON_DESIGN_INDEX.md
- 000_COMMON_DESIGN_OVERVIEW.md
- 000_ORDER_FLOW_FOLDER_STRUCTURE_NOTE.md
- 00_ORDER_FLOW_INTEGRATED.md

# 020.architecture
- 0200001_ORDER_FLOW_POSITIONING_ARCHITECTURE.md
- 0200002_ORDER_FLOW_DIFFERENTIATION_ARCHITECTURE.md
- 0200003_ORDER_FLOW_BOUNDARY_ARCHITECTURE.md

# 030.model
- 0300001_ORDER_FLOW_ORDER_STATE_EXACT_MODEL.md
- 0300002_ORDER_FLOW_INVENTORY_AND_DELIVERY_STATE_EXACT_MODEL.md
- 0300003_ORDER_FLOW_ORDER_CORE_MODEL_EXACT.md
- 0300004_ORDER_FLOW_INVENTORY_AND_SCHEDULE_MODEL_EXACT.md
- 0300005_ORDER_FLOW_SHIPMENT_AND_DELIVERY_MODEL_EXACT.md
- 0300006_ORDER_FLOW_HISTORY_AND_SYNC_MODEL_EXACT.md

# 050.flow
- 0500001_ORDER_FLOW_ORDER_LIFECYCLE_FLOW.md
- 0500002_ORDER_FLOW_PARTIAL_SHIPMENT_AND_PARTIAL_DELIVERY_FLOW.md

# 060.integration
- 0600001_ORDER_FLOW_ESTIMATE_HANDOFF_EXACT.md
- 0600002_ORDER_FLOW_DEEPLINK_AND_SESSION_ENTRY_EXACT.md
- 0600003_ORDER_FLOW_ERP_PRESENT_MODE_EXACT.md
- 0600004_ORDER_FLOW_ERP_ABSENT_MODE_EXACT.md

# 070.operations
- 0700001_ORDER_FLOW_NOTIFICATION_EVENT_MODEL_EXACT.md
- 0700002_ORDER_FLOW_REMINDER_AND_FOLLOWUP_RULES_EXACT.md
- 0700003_ORDER_FLOW_OVERDUE_AND_RISK_VISIBILITY_EXACT.md

# 090.interface
- 0900001_ORDER_FLOW_SCREEN_STRUCTURE_EXACT.md
- 0900002_ORDER_FLOW_ORDER_ENTRY_AND_DETAIL_SCREEN_EXACT.md
- 0900003_ORDER_FLOW_PROPOSAL_AND_SHIPMENT_SCREEN_EXACT.md
- 0900004_ORDER_FLOW_DELIVERY_AND_CLOSURE_SCREEN_EXACT.md
- 0900005_ORDER_FLOW_HOME_DASHBOARD_EXACT.md

# 100.security
- 1000001_ORDER_FLOW_ROLE_MODEL_EXACT.md
- 1000002_ORDER_FLOW_PERMISSION_MATRIX_ORDER_AND_EXECUTION.md
- 1000003_ORDER_FLOW_PERMISSION_MATRIX_SHIPMENT_AND_CLOSURE.md
- 1000004_ORDER_FLOW_AUTHORIZATION_AND_SCOPE_RULES.md

# 110.infrastructure
- 1100001_ORDER_FLOW_TABLE_CANDIDATE_ORDER_CORE.md
- 1100002_ORDER_FLOW_TABLE_CANDIDATE_EXECUTION_AND_SCHEDULE.md
- 1100003_ORDER_FLOW_TABLE_CANDIDATE_SHIPMENT_DELIVERY.md
- 1100004_ORDER_FLOW_TABLE_CANDIDATE_HISTORY_NOTIFICATION_SYNC.md
- 1100005_ORDER_FLOW_TABLE_RELATIONSHIP_OVERVIEW.md
- 1100006_ORDER_FLOW_FK_CANDIDATE_ORDER_AND_SCHEDULE.md
- 1100007_ORDER_FLOW_FK_CANDIDATE_SHIPMENT_AND_DELIVERY.md
- 1100008_ORDER_FLOW_FK_CANDIDATE_HISTORY_NOTIFICATION_SYNC.md
- 1100009_ORDER_FLOW_DDL_DRAFT_ORDER_CORE.md
- 1100010_ORDER_FLOW_DDL_DRAFT_EXECUTION_AND_SCHEDULE.md
- 1100011_ORDER_FLOW_DDL_DRAFT_SHIPMENT_AND_DELIVERY.md
- 1100012_ORDER_FLOW_DDL_DRAFT_HISTORY_NOTIFICATION_SYNC.md

# 120.implementation
- 1200001_ORDER_FLOW_API_ORDER_CREATE_EXACT.md
- 1200002_ORDER_FLOW_API_INVENTORY_PROPOSAL_EXACT.md
- 1200003_ORDER_FLOW_API_SHIPMENT_AND_DELIVERY_EXACT.md
- 1200004_ORDER_FLOW_API_ERROR_AND_SYNC_RESPONSE_EXACT.md
- 1200005_ORDER_FLOW_OPERATOR_ACTION_MATRIX_ORDER_ENTRY.md
- 1200006_ORDER_FLOW_OPERATOR_ACTION_MATRIX_EXECUTION.md
- 1200007_ORDER_FLOW_OPERATOR_ACTION_MATRIX_SHIPMENT_DELIVERY.md
- 1200008_ORDER_FLOW_OPERATOR_ACTION_MATRIX_CLOSURE_AND_ERRORS.md
- 1200009_ORDER_FLOW_VALIDATION_RULES_ORDER_ENTRY.md
- 1200010_ORDER_FLOW_VALIDATION_RULES_EXECUTION.md
- 1200011_ORDER_FLOW_VALIDATION_RULES_SHIPMENT_DELIVERY.md
- 1200012_ORDER_FLOW_VALIDATION_RULES_CLOSURE_AND_STATE.md
- 1200013_ORDER_FLOW_SCREEN_PAYLOAD_MAPPING_ORDER_ENTRY.md
- 1200014_ORDER_FLOW_SCREEN_PAYLOAD_MAPPING_EXECUTION.md
- 1200015_ORDER_FLOW_SCREEN_PAYLOAD_MAPPING_SHIPMENT_DELIVERY.md
- 1200016_ORDER_FLOW_SCREEN_PAYLOAD_MAPPING_HISTORY_CLOSURE.md
- 1200017_ORDER_FLOW_LIST_QUERY_ORDER_LIST_EXACT.md
- 1200018_ORDER_FLOW_LIST_QUERY_SHIPMENT_BOARD_EXACT.md
- 1200019_ORDER_FLOW_LIST_QUERY_HISTORY_EXACT.md
- 1200020_ORDER_FLOW_FILTER_SORT_RULES_EXACT.md
- 1200021_ORDER_FLOW_NOTIFICATION_LIST_QUERY_EXACT.md
- 1200022_ORDER_FLOW_HOME_SUMMARY_QUERY_EXACT.md
- 1200023_ORDER_FLOW_HOME_WIDGET_MAPPING_EXACT.md
- 1200024_ORDER_FLOW_HOME_ACTION_SHORTCUTS_EXACT.md
- 1200025_ORDER_FLOW_SQL_REVIEW_PACKET_OVERVIEW.md
- 1200026_ORDER_FLOW_SQL_CANDIDATE_PHASE_1_ORDER_CORE.sql
- 1200027_ORDER_FLOW_SQL_CANDIDATE_PHASE_2_EXECUTION.sql
- 1200028_ORDER_FLOW_SQL_CANDIDATE_PHASE_3_SHIPMENT_HISTORY.sql
- 1200029_ORDER_FLOW_SATO_REVIEW_REQUEST.md
- 1200030_ORDER_FLOW_PRE_EXECUTION_CHECKLIST.md
- 1200031_ORDER_FLOW_SQL_REVIEW_FINDINGS_TEMPLATE.md
- 1200032_ORDER_FLOW_EXECUTION_HOLD_NOTE.md

# 130.development
- 1300001_ORDER_FLOW_COMPETITOR_ANALYSIS.md
- 1300002_ORDER_FLOW_DIFFERENTIATION_STRATEGY.md

# 900.bible
- 9000001_ORDER_FLOW_DESIGN_BIBLE.md

- 010.constitution/011110_ORDERFLOW_COMPETITIVE_POSITIONING_NOTE.md

- 020.architecture/021120_ORDERFLOW_ORDER_LIFECYCLE_FULFILLMENT_CONTROL_ARCHITECTURE.md

- 020.architecture/021130_ORDERFLOW_APPROVAL_FULFILLMENT_EXCEPTION_ARCHITECTURE.md

- 030.model/030510_ORDERFLOW_ORDER_EXECUTION_TIMELINE_MODEL.md

- 060.integration/060290_ORDERFLOW_ORDER_COCKPIT_PAYLOAD.md

- 060.integration/060300_ORDERFLOW_FULFILLMENT_EXCEPTION_REVIEW_PAYLOAD.md

- 090.interface/090330_ORDERFLOW_ORDER_COCKPIT_INTERFACE.md

- 120.implementation/120300_ORDERFLOW_FULFILLMENT_CONTROL_IMPLEMENTATION_GUIDE.md

- 900.meta/900410_ORDERFLOW_20260416_DIFF_AUDIT_NOTE.md

- 020.architecture/021140_ORDERFLOW_PHASE_A_EXECUTION_TIMELINE_DDL_ADDITIVE_PLAN.md

- 060.integration/060320_ORDERFLOW_PHASE_A_API_STARTER.md

- 060.integration/060330_ORDERFLOW_PHASE_A_API_DTO_FIELD_FREEZE.md

- 120.implementation/120310_ORDERFLOW_PHASE_A_EXECUTION_TIMELINE_IMPLEMENTATION_SKELETON.md

- 900.meta/900420_ORDERFLOW_20260416_BUNDLE02_PHASE_A_AUDIT_NOTE.md

- 120.implementation/120320_ORDERFLOW_PHASE_A_STUB_FILE_PLAN.md

- 120.implementation/120330_ORDERFLOW_PHASE_A_MODULE_TASK_BREAKDOWN.md

- 120.implementation/120340_ORDERFLOW_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md

- 900.meta/900430_ORDERFLOW_20260416_BUNDLE03_STUB_AUDIT_NOTE.md

- 120.implementation/120350_ORDERFLOW_PHASE_A_SLICE_COMMAND_PACKS.md

- 120.implementation/120360_ORDERFLOW_PHASE_A_SLICE_FIELD_FILL_PLAN.md

- 120.implementation/120370_ORDERFLOW_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md

- 120.implementation/120380_ORDERFLOW_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md

- 900.meta/900440_ORDERFLOW_20260416_BUNDLE04_CLOSEOUT_AUDIT_NOTE.md

- 900.meta/900450_ORDERFLOW_NEXT_APP_TRANSITION_HANDOFF.md

- 900.meta/900460_ORDERFLOW_REUSABLE_PHASEA_REINFORCEMENT_RECIPE.md

- 900.meta/900470_ORDERFLOW_PLANNING_STOP_RULE_NOTE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/000_COMMON_DESIGN_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/000_COMMON_DESIGN_OVERVIEW.md -->
# ============================================================
# ORDER FLOW COMMON DESIGN OVERVIEW
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

summary:
OrderFlow is the order execution and delivery coordination front
positioned between estimate handoff and shipment / delivery completion.

fixed_assumptions:
- multilingual ready from day 0
- multicurrency ready from day 0
- iPhone supported
- Android supported
- PC supported
- tablet supported

core_scope:
- create order from estimate
- create standalone order
- manage order and order lines
- perform fulfillment-context inventory check
- calculate lead time
- calculate delivery candidates
- record customer proposal and response
- create shipment request
- track shipment state
- record delivery confirmation
- perform explicit order closure

design_depth_now_fixed:
- positioning and boundary
- state model and lifecycle
- core domain models
- screen responsibilities
- handoff and ERP mode behavior
- API request / response exact
- operator action matrix
- validation rules
- role and permission rules
- screen-to-payload mapping
- list query / filter / sort rules
- notification / overdue visibility
- home dashboard summary
- table candidates
- FK candidates
- DDL drafts
- SQL review packet
- pre-execution review gate
- RLS / DB access candidates
- migration packaging
- seed strategy
- role-based screen transition
- downstream invoice handoff boundary

boundary_summary:
- EstimateCreator stays estimate-side
- OrderFlow stays post-estimate execution-side
- ERP may be present or absent
- responsibility stays fixed and connection target changes

document_navigation:
- architecture defines positioning and boundaries
- model defines state and exact record structure
- flow defines lifecycle and role-based transitions
- integration defines handoff, ERP mode, and downstream invoice boundary
- operations defines reminder and overdue visibility
- interface defines primary screens and dashboard
- security defines role, authorization, and RLS candidates
- infrastructure defines table/fk/ddl/migration candidates
- implementation defines api/payload/query/validation/review packet
- development stores competitor comparison and differentiation context
- bible provides integrated reading order

note:
Common components are not designed in detail here.
They are referenced only as dependency/use context where needed.

execution_note:
SQL candidates are review-only and execution is intentionally held.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/000_COMMON_DESIGN_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/000_ORDER_FLOW_FOLDER_STRUCTURE_NOTE.md -->
# ============================================================
# ORDER FLOW FOLDER STRUCTURE NOTE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
OrderFlow uses the same top-level design subfolder structure pattern
as civilization-os for long-term readability and navigation consistency.

folders:
- 010.constitution
- 020.architecture
- 030.model
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 090.interface
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development
- 900.bible
- 900.meta
- 920.meta

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/000_ORDER_FLOW_FOLDER_STRUCTURE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/010.constitution/0100000_ORDER_FLOW_CONSTITUTION_INDEX.md -->
# ============================================================
# ORDER FLOW CONSTITUTION INDEX
# ============================================================

files:

- 011110_ORDERFLOW_COMPETITIVE_POSITIONING_NOTE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/010.constitution/0100000_ORDER_FLOW_CONSTITUTION_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/010.constitution/011110_ORDERFLOW_COMPETITIVE_POSITIONING_NOTE.md -->
# ============================================================
# ORDERFLOW COMPETITIVE POSITIONING NOTE
# ============================================================

status: canonical
layer: constitution
system: applications
application: OrderFlow
directory: 010.constitution
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: competitive-positioning-note

purpose:
Clarifies the differentiator that should be made explicit in the
current OrderFlow design without rewriting its existing core.

positioning_summary:
- OrderFlow is not only an order registry.
- Its durable value is operational control across order acceptance,
  approval, allocation, fulfillment, exception handling, and downstream handoff.
- The differentiator is not simple order entry, but lifecycle control
  that keeps execution readiness and fulfillment risk visible.

preserved_core:
- order and sales operation identity
- existing business operation role
- existing ERP and adjacent commercial flow relation
- existing approval and operational separation direction
- existing platform direction

differentiator_to_make_explicit:
- order lifecycle control
- fulfillment readiness visibility
- approval and exception traceability
- downstream handoff visibility toward invoice and related flows

competitive_contrast:
- not merely a sales order form
- not merely an ERP input screen
- not merely a status list
- positioned as an order execution control layer that connects
  approval, fulfillment readiness, exception review, and downstream movement

non_goals_of_this_note:
- no full constitutional rewrite
- no implementation start
- no destructive scope replacement
- no framework decision

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/010.constitution/011110_ORDERFLOW_COMPETITIVE_POSITIONING_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/020.architecture/0200000_ORDER_FLOW_ARCHITECTURE_INDEX.md -->
# ============================================================
# ORDER FLOW ARCHITECTURE INDEX
# ============================================================

files:

- 021120_ORDERFLOW_ORDER_LIFECYCLE_FULFILLMENT_CONTROL_ARCHITECTURE.md

- 021130_ORDERFLOW_APPROVAL_FULFILLMENT_EXCEPTION_ARCHITECTURE.md

- 021140_ORDERFLOW_PHASE_A_EXECUTION_TIMELINE_DDL_ADDITIVE_PLAN.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/020.architecture/0200000_ORDER_FLOW_ARCHITECTURE_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/020.architecture/0200001_ORDER_FLOW_POSITIONING_ARCHITECTURE.md -->
# ============================================================
# ORDER FLOW POSITIONING ARCHITECTURE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the official positioning of OrderFlow
as an application-level business execution front.

# ============================================================
# 1. official positioning
# ============================================================

OrderFlow is the order execution and delivery coordination front
that handles the business span between:
- estimate handoff
and
- shipment / delivery completion

It is not:
- a quote authoring app
- a generic ERP clone
- a shipment-only tool
- an inventory-only tool

# ============================================================
# 2. primary business responsibility
# ============================================================

OrderFlow is responsible for:
- order creation from estimate
- standalone order creation
- order line management
- fulfillment-context inventory confirmation
- lead time calculation
- delivery candidate calculation
- customer proposal
- customer agreement recording
- shipment request
- shipment state tracking
- delivery confirmation

# ============================================================
# 3. ecosystem position
# ============================================================

upstream:
- EstimateCreator
- sales activity / quote preparation context

midstream:
- OrderFlow

downstream:
- shipment execution
- delivery completion
- future invoice / receivable handoff if needed

# ============================================================
# 4. operating modes
# ============================================================

OrderFlow must support both:
- ERP-present mode
- ERP-absent mode

principle:
business responsibility remains the same.
only the connected source of truth or execution target changes.

# ============================================================
# 5. device and deployment stance
# ============================================================

OrderFlow is designed from day 0 for:
- iPhone
- Android
- PC
- tablet

It is also designed from day 0 for:
- multilingual UI
- multicurrency business handling

# ============================================================
# 6. one-line definition
# ============================================================

OrderFlow is the business front that turns order intent
into coordinated delivery execution.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/020.architecture/0200001_ORDER_FLOW_POSITIONING_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/020.architecture/0200002_ORDER_FLOW_DIFFERENTIATION_ARCHITECTURE.md -->
# ============================================================
# ORDER FLOW DIFFERENTIATION ARCHITECTURE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Fixes the structural reasons why OrderFlow is different
from adjacent order, inventory, and shipment tools.

# ============================================================
# 1. structural differentiators
# ============================================================

OrderFlow differentiates through:

1. estimate-origin order execution
2. delivery coordination as a first-class domain
3. customer proposal and agreement history
4. ERP-present / ERP-absent dual-mode operation
5. manual-first realistic adoption path
6. multilingual / multicurrency / multi-device readiness from day 0

# ============================================================
# 2. estimate-origin execution
# ============================================================

OrderFlow starts from:
- estimate handoff
- source_estimate_link
- estimate_snapshot retention

rules:
- estimate_id and order_id stay separate
- same-record promotion is forbidden
- order-side traceability is mandatory

# ============================================================
# 3. delivery coordination as a first-class domain
# ============================================================

OrderFlow treats the following as primary business objects:
- inventory check result
- lead time result
- delivery schedule candidate
- customer proposal record
- customer response record
- shipment request state
- delivery confirmation state

This makes OrderFlow stronger in coordination,
not only in transaction recording.

# ============================================================
# 4. customer agreement visibility
# ============================================================

OrderFlow must preserve:
- what date was proposed
- when it was proposed
- who proposed it
- what the customer answered
- whether revision was required
- what was finally accepted internally

# ============================================================
# 5. adoption differentiation
# ============================================================

OrderFlow can begin with:
- manual customer OK recording
- manual shipment state updates
- manual delivery confirmation input

This reduces deployment friction
while keeping architectural seriousness.

# ============================================================
# 6. strategic non-goals
# ============================================================

OrderFlow should not try to become:
- full accounting replacement
- full CRM replacement
- full warehouse replacement
- full procurement suite
- auto-negotiation AI platform in phase 1

# ============================================================
# 7. final conclusion
# ============================================================

OrderFlow wins by being:
- more execution-aware than generic order systems
- more delivery-coordination-aware than shipment-first tools
- more estimate-handoff-aware than fulfillment systems
- more realistic than ERP-heavy-only solutions


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/020.architecture/0200002_ORDER_FLOW_DIFFERENTIATION_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/020.architecture/0200003_ORDER_FLOW_BOUNDARY_ARCHITECTURE.md -->
# ============================================================
# ORDER FLOW BOUNDARY ARCHITECTURE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the architectural boundaries between OrderFlow
and adjacent systems or domains.

# ============================================================
# 1. boundary with EstimateCreator
# ============================================================

EstimateCreator owns:
- estimate creation
- rough estimate
- sales memo
- quote sharing
- quote-context inventory reference

OrderFlow owns:
- order creation from estimate
- standalone order creation
- fulfillment-context inventory confirmation
- delivery coordination
- customer proposal and agreement
- shipment request and tracking
- delivery confirmation

handoff rules:
- copy / handoff only
- same-record promotion forbidden
- source_estimate_link required
- estimate_snapshot required on order side

# ============================================================
# 2. boundary with ERP
# ============================================================

with ERP:
- order may sync to ERP
- inventory may reference ERP truth
- shipment request may connect to ERP-linked execution
- delivery confirmation may sync downstream

without ERP:
- order may be app-canonical
- inventory may be lightweight or reference-based
- shipment request may be lightweight-managed
- delivery confirmation may remain app-canonical

fixed principle:
responsibility is stable.
connection target is variable.

# ============================================================
# 3. boundary with shipment execution
# ============================================================

OrderFlow owns:
- shipment request creation
- shipment request line structure
- shipment state tracking
- shipment execution visibility

OrderFlow does not need to own:
- full warehouse control
- full carrier platform replacement
- full logistics backbone replacement

# ============================================================
# 4. boundary with invoicing
# ============================================================

OrderFlow may later hand off to:
- InvoiceFlow
- ERP billing flow
- downstream receivable management

initial principle:
OrderFlow ends at delivery confirmation and closure readiness.

# ============================================================
# 5. boundary with common components
# ============================================================

OrderFlow should consume shared components for:
- deeplink entry
- shared session reuse
- pending operation
- publication request / result
- business status badge
- multilingual resource resolution

OrderFlow-specific meaning remains local where needed.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/020.architecture/0200003_ORDER_FLOW_BOUNDARY_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/020.architecture/021120_ORDERFLOW_ORDER_LIFECYCLE_FULFILLMENT_CONTROL_ARCHITECTURE.md -->
# ============================================================
# ORDERFLOW ORDER LIFECYCLE FULFILLMENT CONTROL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: OrderFlow
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: order-lifecycle-fulfillment-control-architecture

purpose:
Makes order lifecycle and fulfillment control explicit in the
current OrderFlow architecture.

architecture_intent:
- order work must be visible not only as records, but as execution movement
- approval, allocation, fulfillment, and downstream handoff must remain explicit
- order readiness and blocker visibility must be queryable without
  reconstructing everything from raw order detail only

flow_layers:
- order intake:
  - order draft creation
  - line registration
  - commercial confirmation
  - order acceptance
- fulfillment control:
  - stock or allocation check
  - approval requirement detection
  - shipment preparation
  - exception routing
- operational review:
  - order cockpit review
  - fulfillment exception visibility
  - blocked shipment visibility
  - downstream handoff readiness
- control action:
  - approve
  - hold
  - escalate
  - release for fulfillment
- closure:
  - fulfilled
  - partially fulfilled
  - cancelled
  - handed off downstream

key_separations:
- raw order entry is not the same as fulfillment readiness
- approval history is not the same as active hold state
- shipment preparation is not the same as downstream handoff completion
- cockpit review is not the same as detailed line editing screen

recommended_runtime_objects:
- order_execution_signal
- fulfillment_exception_review_item
- downstream_handoff_readiness_item
- order_cockpit_summary

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/020.architecture/021120_ORDERFLOW_ORDER_LIFECYCLE_FULFILLMENT_CONTROL_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/020.architecture/021130_ORDERFLOW_APPROVAL_FULFILLMENT_EXCEPTION_ARCHITECTURE.md -->
# ============================================================
# ORDERFLOW APPROVAL FULFILLMENT EXCEPTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: OrderFlow
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: approval-fulfillment-exception-architecture

purpose:
Defines the relationship between approval state, fulfillment readiness,
and exception handling in OrderFlow.

core_principle:
- operational slippage often appears first through unresolved approval,
  allocation failure, shipment blocker, or handoff blocker before it
  appears as final fulfillment failure.

architecture_rules:
- approval requirement must be represented explicitly
- fulfillment blockers must be reviewable as first-class operational objects
- downstream handoff blockers must survive beyond one screen or one session
- unresolved exceptions must be visible in the same review flow as order health

exception_categories:
- approval pending
- stock or allocation blocker
- shipment preparation blocker
- downstream handoff blocker
- cancellation risk

visibility_outputs:
- order cockpit
- fulfillment exception review screen
- blocked order panel
- handoff readiness overview

cross-module relation:
- order entry feeds document and line detail
- lifecycle layer summarizes order checkpoints
- approval layer captures governance state
- fulfillment layer surfaces execution readiness
- downstream layer surfaces invoice or later-hand-off readiness

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/020.architecture/021130_ORDERFLOW_APPROVAL_FULFILLMENT_EXCEPTION_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/020.architecture/021140_ORDERFLOW_PHASE_A_EXECUTION_TIMELINE_DDL_ADDITIVE_PLAN.md -->
# ============================================================
# ORDERFLOW PHASE A EXECUTION TIMELINE DDL ADDITIVE PLAN
# ============================================================

status: canonical
layer: architecture
system: applications
application: OrderFlow
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-execution-timeline-ddl-additive-plan

purpose:
Defines the additive-only Phase A DDL planning boundary for
order execution visibility, fulfillment exception review,
and order cockpit assembly.

principles:
- additive only
- preserve existing OrderFlow core
- keep raw order editing separate from execution readiness rows
- keep approval and fulfillment exception review separate from raw order history
- no SQL execution in this document

phase_a_target_capabilities:
- persist execution timeline rows for cockpit and review
- persist fulfillment and handoff blocker review rows for operational visibility
- support order cockpit query without reconstructing everything from raw order state
- support approval pending and downstream handoff review slices

proposed_additive_tables:
- business.orderflow_execution_timeline_item
- business.orderflow_fulfillment_exception_review_item
- business.orderflow_order_cockpit_snapshot

table_business_orderflow_execution_timeline_item:
  role:
    - stores normalized order execution timeline rows
  recommended_columns:
    - order_execution_timeline_item_id uuid pk
    - order_id uuid not null
    - related_approval_id uuid null
    - related_fulfillment_blocker_id uuid null
    - related_handoff_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - execution_state_code text not null
    - priority_code text null
    - required_by_at timestamptz null
    - approved_at timestamptz null
    - released_at timestamptz null
    - fulfilled_at timestamptz null
    - handed_off_at timestamptz null
    - exception_present boolean not null
    - owner_user_id uuid null
    - approval_required boolean not null
    - source_module_code text not null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_orderflow_fulfillment_exception_review_item:
  role:
    - stores reviewable fulfillment and downstream handoff blocker rows
  recommended_columns:
    - fulfillment_exception_review_item_id uuid pk
    - order_id uuid not null
    - related_approval_id uuid null
    - related_fulfillment_blocker_id uuid null
    - related_handoff_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - execution_state_code text not null
    - exception_present boolean not null
    - approval_required boolean not null
    - owner_user_id uuid null
    - resolved boolean not null
    - required_by_at timestamptz null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_orderflow_order_cockpit_snapshot:
  role:
    - stores generated order cockpit snapshots when caching or auditability is needed
  recommended_columns:
    - order_cockpit_snapshot_id uuid pk
    - order_id uuid not null
    - health_summary_message text not null
    - generated_at timestamptz not null
    - created_at timestamptz not null

recommended_indexes_phase_a:
- execution_timeline_item:
  - idx on order_id, execution_state_code, required_by_at
  - idx on order_id, related_approval_id
  - idx on order_id, related_fulfillment_blocker_id
- fulfillment_exception_review_item:
  - idx on order_id, approval_required
  - idx on order_id, exception_present
  - idx on order_id, resolved
- order_cockpit_snapshot:
  - idx on order_id, generated_at desc

explicit_non_scope:
- no destructive schema rewrite
- no SQL execution here
- no shipment engine implementation here
- no invoice generation execution here
- no client sync policy here

handoff_to_next_step:
- freeze API starter and DTOs against these row families
- create implementation skeleton and slice order on top of this plan

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/020.architecture/021140_ORDERFLOW_PHASE_A_EXECUTION_TIMELINE_DDL_ADDITIVE_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/030.model/0300000_ORDER_FLOW_MODEL_INDEX.md -->
# ============================================================
# ORDER FLOW MODEL INDEX
# ============================================================

files:

- 030510_ORDERFLOW_ORDER_EXECUTION_TIMELINE_MODEL.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/030.model/0300000_ORDER_FLOW_MODEL_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/030.model/0300001_ORDER_FLOW_ORDER_STATE_EXACT_MODEL.md -->
# ============================================================
# ORDER FLOW ORDER STATE EXACT MODEL
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the exact business meaning of order-level states in OrderFlow.

# ============================================================
# 1. order state list
# ============================================================

order_state_list:
  - draft
  - confirmed
  - inventory_checked
  - delivery_date_calculated
  - customer_proposed
  - customer_confirmed
  - shipment_requested
  - shipped
  - delivered
  - closed
  - canceled

# ============================================================
# 2. state meanings
# ============================================================

state_meanings:

  draft:
    meaning:
      - order record exists
      - editing is still expected
      - business execution has not started formally
    allowed_actions:
      - edit order header
      - edit order lines
      - save draft
      - cancel draft
      - confirm order
    disallowed_actions:
      - final close
    notes:
      - standalone order creation and estimate-origin order creation both start here

  confirmed:
    meaning:
      - order intent is fixed enough for fulfillment-side handling
      - basic business confirmation completed
    allowed_actions:
      - inventory check
      - recalculate order-related fields
      - move back to draft only by explicit internal operation if policy allows
    disallowed_actions:
      - direct close without further handling except cancellation path
    notes:
      - this is the first execution-ready state

  inventory_checked:
    meaning:
      - inventory confirmation has been performed in fulfillment context
      - result may be available, partial, unavailable, or stale
    allowed_actions:
      - lead time calculation
      - re-check inventory
      - update supply expectation
    disallowed_actions:
      - skip directly to customer confirmation without delivery proposal path
    notes:
      - inventory_checked does not imply enough stock

  delivery_date_calculated:
    meaning:
      - one or more delivery schedule candidates have been calculated
      - calculation basis is available for internal review
    allowed_actions:
      - customer proposal
      - recalculate delivery candidates
      - repeat inventory and lead time review
    disallowed_actions:
      - direct shipment request unless internal policy explicitly allows internal no-proposal shortcut
    notes:
      - candidate generation must exist before proposal in normal flow

  customer_proposed:
    meaning:
      - at least one delivery proposal has been formally recorded
      - awaiting customer answer or internal follow-up
    allowed_actions:
      - record customer response
      - revise proposal
      - re-propose
      - withdraw proposal internally if still unresolved
    disallowed_actions:
      - final shipment request as accepted schedule unless agreement exists
    notes:
      - proposal history must remain visible

  customer_confirmed:
    meaning:
      - customer acceptance or internally recognized agreement has been recorded
      - execution can proceed against agreed delivery expectation
    allowed_actions:
      - create shipment request
      - re-open proposal path if agreement breaks
    disallowed_actions:
      - silent date changes without new internal record
    notes:
      - initial phase may use internal manual recording of customer acceptance

  shipment_requested:
    meaning:
      - shipment request has been issued for all or part of the order
      - downstream execution has been asked to act
    allowed_actions:
      - update shipment request state
      - record partial shipment
      - record shipment rejection / retry
    disallowed_actions:
      - close unless delivery responsibility is resolved
    notes:
      - shipment request may be partial

  shipped:
    meaning:
      - shipment execution has occurred for all or part of the order
      - goods have left shipment execution responsibility to some degree
    allowed_actions:
      - record delivery confirmation
      - record remaining unshipped quantity
      - issue additional shipment request for remaining quantity
    disallowed_actions:
      - assume full delivery automatically
    notes:
      - shipped does not always mean fully shipped

  delivered:
    meaning:
      - delivery result has been recorded at the order level
      - order is operationally delivered in whole or accepted business completion form
    allowed_actions:
      - close order
      - attach delivery completion evidence or notes
    disallowed_actions:
      - none, except policy-restricted reopen operations
    notes:
      - delivered may coexist with partial patterns if business closure rule allows

  closed:
    meaning:
      - order is considered complete from OrderFlow responsibility viewpoint
      - no further normal execution action remains
    allowed_actions:
      - read history
      - export / handoff downstream if needed
    disallowed_actions:
      - ordinary business editing
    notes:
      - close is an operational completion state, not merely a delivery event state

  canceled:
    meaning:
      - order execution was stopped and the order is no longer active
    allowed_actions:
      - read history
      - audit review
    disallowed_actions:
      - normal execution continuation
    notes:
      - cancellation reason should be retained

# ============================================================
# 3. preferred transition path
# ============================================================

preferred_transition_path:
  - draft
  - confirmed
  - inventory_checked
  - delivery_date_calculated
  - customer_proposed
  - customer_confirmed
  - shipment_requested
  - shipped
  - delivered
  - closed

# ============================================================
# 4. exceptional paths
# ============================================================

exceptional_paths:
  - draft -> canceled
  - confirmed -> canceled
  - inventory_checked -> canceled
  - delivery_date_calculated -> customer_proposed
  - customer_proposed -> delivery_date_calculated
  - customer_proposed -> canceled
  - customer_confirmed -> customer_proposed
  - shipment_requested -> customer_proposed
  - shipped -> shipment_requested
  - delivered -> closed

# ============================================================
# 5. state design rules
# ============================================================

rules:
  - order_state is not a replacement for inventory_status
  - order_state is not a replacement for shipment_status
  - order_state must express overall order execution responsibility
  - partial execution details must be handled by lower-level shipment and delivery records
  - closed is explicitly separated from delivered
  - canceled is terminal unless special administrative reopen policy exists


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/030.model/0300001_ORDER_FLOW_ORDER_STATE_EXACT_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/030.model/0300002_ORDER_FLOW_INVENTORY_AND_DELIVERY_STATE_EXACT_MODEL.md -->
# ============================================================
# ORDER FLOW INVENTORY AND DELIVERY STATE EXACT MODEL
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the exact meanings of inventory, proposal, shipment,
and delivery states used alongside order_state.

# ============================================================
# 1. inventory status
# ============================================================

inventory_status_list:
  - not_checked
  - available
  - partially_available
  - unavailable
  - replenishment_required
  - stale

inventory_status_meanings:

  not_checked:
    meaning:
      - no fulfillment-context inventory confirmation has been completed yet

  available:
    meaning:
      - requested quantity can be supported according to current reference

  partially_available:
    meaning:
      - some requested quantity can be supported but not all

  unavailable:
    meaning:
      - requested quantity cannot currently be supported

  replenishment_required:
    meaning:
      - additional supply action is required before full execution becomes possible

  stale:
    meaning:
      - inventory reference exists but cannot be trusted as fresh enough for confident execution

# ============================================================
# 2. customer proposal status
# ============================================================

customer_proposal_status_list:
  - not_proposed
  - proposed
  - revision_requested
  - accepted
  - rejected

customer_proposal_status_meanings:

  not_proposed:
    meaning:
      - no formal customer-facing delivery proposal record exists yet

  proposed:
    meaning:
      - proposal has been made and answer is not yet finalized

  revision_requested:
    meaning:
      - customer or internal side requires another proposal round

  accepted:
    meaning:
      - proposed schedule was accepted and recorded

  rejected:
    meaning:
      - proposed schedule was not accepted and cannot be treated as agreed

# ============================================================
# 3. shipment status
# ============================================================

shipment_status_list:
  - not_requested
  - requested
  - accepted
  - rejected
  - partially_shipped
  - shipped

shipment_status_meanings:

  not_requested:
    meaning:
      - no shipment request has been issued

  requested:
    meaning:
      - shipment request exists and is awaiting downstream handling

  accepted:
    meaning:
      - shipment-side execution target accepted the request

  rejected:
    meaning:
      - shipment-side execution target rejected the request or cannot proceed as requested

  partially_shipped:
    meaning:
      - some quantity has been shipped but remainder still exists

  shipped:
    meaning:
      - shipment execution for the relevant scope has been completed

# ============================================================
# 4. delivery status
# ============================================================

delivery_status_list:
  - not_confirmed
  - partially_delivered
  - delivered
  - delivery_confirmed

delivery_status_meanings:

  not_confirmed:
    meaning:
      - no delivery confirmation has been recorded yet

  partially_delivered:
    meaning:
      - only part of the expected scope has been confirmed delivered

  delivered:
    meaning:
      - operational delivery has happened for the relevant scope

  delivery_confirmed:
    meaning:
      - delivery confirmation input has been explicitly recorded by responsible operator

# ============================================================
# 5. relationship rules
# ============================================================

relationship_rules:
  - inventory_status may block proposal quality but does not directly set order_state by itself
  - customer_proposal_status accepted usually supports customer_confirmed
  - shipment_status shipped does not guarantee delivery_status delivered
  - delivery_status delivery_confirmed does not automatically imply order_state closed
  - order close requires business completion judgment beyond raw shipment or delivery status


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/030.model/0300002_ORDER_FLOW_INVENTORY_AND_DELIVERY_STATE_EXACT_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/030.model/0300003_ORDER_FLOW_ORDER_CORE_MODEL_EXACT.md -->
# ============================================================
# ORDER FLOW ORDER CORE MODEL EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the exact core business models for order creation,
order identity, customer snapshot retention, and estimate linkage.

# ============================================================
# 1. order_record
# ============================================================

order_record:
  purpose:
    - top-level order business record
    - execution anchor of OrderFlow
  required_fields:
    - order_id
    - company_id
    - order_number
    - order_source_type
    - order_state
    - customer_id_or_local_ref
    - order_date
    - currency_code
    - subtotal_amount
    - tax_amount
    - total_amount
    - source_estimate_exists
    - created_by
    - created_at
    - updated_at
  optional_fields:
    - source_estimate_id
    - requested_delivery_date
    - internally_promised_date
    - customer_confirmed_date
    - cancel_reason
    - closed_at
    - closed_by
  rules:
    - order_id is independent from estimate_id
    - order_state expresses overall business execution responsibility
    - currency_code is mandatory from initial design
    - totals must preserve multicurrency context

# ============================================================
# 2. order_source_type
# ============================================================

order_source_type:
  values:
    - from_estimate
    - standalone
  meaning:
    from_estimate:
      - created through estimate handoff or copy
    standalone:
      - created directly in OrderFlow

# ============================================================
# 3. order_line_item
# ============================================================

order_line_item:
  purpose:
    - line-level ordered goods or service scope
  required_fields:
    - order_line_id
    - order_id
    - line_no
    - item_ref_or_local_code
    - item_name_snapshot
    - ordered_quantity
    - unit_of_measure
    - unit_price_amount
    - currency_code
    - line_subtotal_amount
    - line_state
  optional_fields:
    - requested_ship_scope_note
    - customer_line_note
    - internal_line_note
    - source_estimate_line_id
  rules:
    - line item stores snapshot fields needed for business continuity
    - price and subtotal keep currency context at line level
    - line_state may differ from order_state

# ============================================================
# 4. line_state
# ============================================================

line_state:
  values:
    - open
    - partially_allocated
    - ready_for_shipment
    - partially_shipped
    - shipped
    - partially_delivered
    - delivered
    - closed
    - canceled

# ============================================================
# 5. order_customer_snapshot
# ============================================================

order_customer_snapshot:
  purpose:
    - preserves the customer-facing and operational customer identity
      as used at order creation time
  required_fields:
    - order_customer_snapshot_id
    - order_id
    - customer_name_snapshot
    - customer_display_name_snapshot
    - billing_name_snapshot
    - shipping_name_snapshot
    - contact_person_snapshot
    - contact_email_snapshot
    - contact_phone_snapshot
    - billing_address_snapshot
    - shipping_address_snapshot
    - snapshot_taken_at
  optional_fields:
    - department_snapshot
    - destination_note_snapshot
    - locale_snapshot
    - customer_code_snapshot
  rules:
    - snapshot is retained even if master data later changes
    - shipping and billing can differ
    - snapshot may originate from estimate or direct order entry

# ============================================================
# 6. order_source_estimate_link
# ============================================================

order_source_estimate_link:
  purpose:
    - keeps business traceability to the source estimate
  required_fields:
    - order_source_estimate_link_id
    - order_id
    - source_estimate_id
    - source_estimate_number_snapshot
    - handoff_type
    - snapshot_taken_at
    - linked_by
  optional_fields:
    - source_estimate_version
    - source_estimate_title_snapshot
    - handoff_note
  rules:
    - same-record promotion is forbidden
    - order must keep source traceability without sharing record identity
    - source_estimate_link is optional only for standalone orders

# ============================================================
# 7. handoff_type
# ============================================================

handoff_type:
  values:
    - copy
    - deeplink_copy
    - internal_create_from_estimate

# ============================================================
# 8. order_status_record
# ============================================================

order_status_record:
  purpose:
    - explicit status history support for order-level state movement
  required_fields:
    - order_status_record_id
    - order_id
    - previous_order_state
    - new_order_state
    - changed_by
    - changed_at
    - change_reason_type
  optional_fields:
    - change_reason_note
    - related_record_type
    - related_record_id
  rules:
    - state transitions should be auditable
    - order_status_record complements but does not replace broader history entry


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/030.model/0300003_ORDER_FLOW_ORDER_CORE_MODEL_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/030.model/0300004_ORDER_FLOW_INVENTORY_AND_SCHEDULE_MODEL_EXACT.md -->
# ============================================================
# ORDER FLOW INVENTORY AND SCHEDULE MODEL EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact models for inventory confirmation,
supply understanding, lead time, and delivery schedule calculation.

# ============================================================
# 1. order_inventory_check_record
# ============================================================

order_inventory_check_record:
  purpose:
    - captures fulfillment-context inventory confirmation
  required_fields:
    - order_inventory_check_record_id
    - order_id
    - inventory_status
    - checked_at
    - checked_by
    - freshness_type
    - inventory_source_type
  optional_fields:
    - source_system_name
    - source_reference_id
    - summary_note
  rules:
    - inventory check must preserve freshness semantics
    - one order may have multiple inventory checks over time

# ============================================================
# 2. freshness_type
# ============================================================

freshness_type:
  values:
    - fresh
    - cached
    - stale
    - unknown

# ============================================================
# 3. inventory_source_type
# ============================================================

inventory_source_type:
  values:
    - erp
    - app_local
    - external_reference
    - manual_confirmation

# ============================================================
# 4. order_supply_status_record
# ============================================================

order_supply_status_record:
  purpose:
    - preserves supply-side understanding derived from inventory and replenishment thinking
  required_fields:
    - order_supply_status_record_id
    - order_id
    - supply_status_type
    - recorded_at
    - recorded_by
  optional_fields:
    - expected_replenishment_date
    - supply_note
  rules:
    - supply interpretation is separate from raw inventory status

# ============================================================
# 5. supply_status_type
# ============================================================

supply_status_type:
  values:
    - immediately_fulfillable
    - partially_fulfillable
    - waiting_replenishment
    - uncertain
    - blocked

# ============================================================
# 6. order_lead_time_record
# ============================================================

order_lead_time_record:
  purpose:
    - stores lead time calculation result and basis
  required_fields:
    - order_lead_time_record_id
    - order_id
    - lead_time_days
    - lead_time_basis_type
    - calculated_at
    - calculated_by
  optional_fields:
    - lead_time_note
    - source_inventory_check_record_id
    - source_supply_status_record_id
  rules:
    - recalculation may create multiple records
    - result must be historically visible

# ============================================================
# 7. lead_time_basis_type
# ============================================================

lead_time_basis_type:
  values:
    - stock_available
    - partial_stock_waiting_supply
    - made_to_order
    - supplier_confirmation
    - manual_estimation

# ============================================================
# 8. delivery_schedule_candidate
# ============================================================

delivery_schedule_candidate:
  purpose:
    - candidate date or date-range produced for order fulfillment
  required_fields:
    - delivery_schedule_candidate_id
    - order_id
    - candidate_type
    - candidate_label
    - candidate_start_date
    - candidate_end_date
    - confidence_type
    - generated_at
    - generated_by
  optional_fields:
    - basis_note
    - rank_order
    - proposal_ready_flag
  rules:
    - one order may hold multiple candidates
    - candidate can be a single date or range

# ============================================================
# 9. candidate_type
# ============================================================

candidate_type:
  values:
    - single_date
    - date_range

# ============================================================
# 10. confidence_type
# ============================================================

confidence_type:
  values:
    - high
    - medium
    - low
    - manual

# ============================================================
# 11. delivery_schedule_calculation_record
# ============================================================

delivery_schedule_calculation_record:
  purpose:
    - calculation session record for delivery candidate generation
  required_fields:
    - delivery_schedule_calculation_record_id
    - order_id
    - calculation_basis_summary
    - calculated_at
    - calculated_by
  optional_fields:
    - source_lead_time_record_id
    - source_inventory_check_record_id
    - calculation_note
  rules:
    - candidate rows and calculation session should be traceable

# ============================================================
# 12. delivery_schedule_confirmed_record
# ============================================================

delivery_schedule_confirmed_record:
  purpose:
    - stores internally accepted schedule basis for execution
  required_fields:
    - delivery_schedule_confirmed_record_id
    - order_id
    - confirmed_date_or_start
    - confirmed_end_date
    - confirmed_at
    - confirmed_by
    - confirmation_basis_type
  optional_fields:
    - source_candidate_id
    - confirmation_note
  rules:
    - this is internal execution confirmation, not necessarily customer agreement itself


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/030.model/0300004_ORDER_FLOW_INVENTORY_AND_SCHEDULE_MODEL_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/030.model/0300005_ORDER_FLOW_SHIPMENT_AND_DELIVERY_MODEL_EXACT.md -->
# ============================================================
# ORDER FLOW SHIPMENT AND DELIVERY MODEL EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact models for shipment request, shipment result,
shipment execution visibility, and delivery confirmation.

# ============================================================
# 1. shipment_request_record
# ============================================================

shipment_request_record:
  purpose:
    - top-level request issued to shipment-side execution
  required_fields:
    - shipment_request_record_id
    - order_id
    - shipment_request_number
    - shipment_status
    - request_scope_type
    - requested_at
    - requested_by
  optional_fields:
    - requested_ship_date
    - warehouse_or_execution_target_ref
    - shipment_instruction_note
    - rejection_reason
  rules:
    - one order may have multiple shipment requests
    - partial shipment support requires scope awareness

# ============================================================
# 2. request_scope_type
# ============================================================

request_scope_type:
  values:
    - full_order
    - partial_order
    - selected_lines

# ============================================================
# 3. shipment_request_line
# ============================================================

shipment_request_line:
  purpose:
    - line-level shipment request scope
  required_fields:
    - shipment_request_line_id
    - shipment_request_record_id
    - order_line_id
    - requested_quantity
    - unit_of_measure
  optional_fields:
    - allocation_note
    - partial_reason
  rules:
    - shipment scope must remain visible at line level

# ============================================================
# 4. shipment_request_result
# ============================================================

shipment_request_result:
  purpose:
    - downstream result of shipment request acceptance or rejection
  required_fields:
    - shipment_request_result_id
    - shipment_request_record_id
    - result_type
    - result_recorded_at
    - result_recorded_by
  optional_fields:
    - result_note
    - external_reference_id
  rules:
    - acceptance and rejection should be historically retained

# ============================================================
# 5. result_type
# ============================================================

result_type:
  values:
    - accepted
    - rejected
    - partially_accepted
    - pending_response

# ============================================================
# 6. shipment_execution_record
# ============================================================

shipment_execution_record:
  purpose:
    - actual shipment execution evidence or record inside OrderFlow scope
  required_fields:
    - shipment_execution_record_id
    - shipment_request_record_id
    - shipment_execution_date
    - shipment_execution_scope_type
    - recorded_at
    - recorded_by
  optional_fields:
    - carrier_name_snapshot
    - tracking_number_snapshot
    - shipment_note
  rules:
    - this is not a full logistics backbone replacement
    - execution visibility is enough for OrderFlow scope

# ============================================================
# 7. shipment_execution_scope_type
# ============================================================

shipment_execution_scope_type:
  values:
    - full_request
    - partial_request
    - selected_lines

# ============================================================
# 8. shipment_request_status_history
# ============================================================

shipment_request_status_history:
  purpose:
    - shipment request state movement history
  required_fields:
    - shipment_request_status_history_id
    - shipment_request_record_id
    - previous_shipment_status
    - new_shipment_status
    - changed_at
    - changed_by
  optional_fields:
    - change_note
    - related_execution_record_id

# ============================================================
# 9. delivery_confirmation_record
# ============================================================

delivery_confirmation_record:
  purpose:
    - top-level delivery confirmation input
  required_fields:
    - delivery_confirmation_record_id
    - order_id
    - delivery_status
    - confirmation_date
    - confirmed_by
    - confirmed_at
  optional_fields:
    - customer_receipt_note
    - delivery_issue_note
    - delivery_evidence_ref
  rules:
    - one order may have multiple delivery confirmation records in partial cases

# ============================================================
# 10. delivery_confirmation_line
# ============================================================

delivery_confirmation_line:
  purpose:
    - line-level delivered scope tracking
  required_fields:
    - delivery_confirmation_line_id
    - delivery_confirmation_record_id
    - order_line_id
    - confirmed_delivered_quantity
    - unit_of_measure
  optional_fields:
    - line_delivery_note
    - short_delivery_reason
  rules:
    - partial delivery must remain visible at line level


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/030.model/0300005_ORDER_FLOW_SHIPMENT_AND_DELIVERY_MODEL_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/030.model/0300006_ORDER_FLOW_HISTORY_AND_SYNC_MODEL_EXACT.md -->
# ============================================================
# ORDER FLOW HISTORY AND SYNC MODEL EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines OrderFlow-local history, audit-facing entries,
and sync/pending-operation support models without entering common-component design.

# ============================================================
# 1. order_sync_state
# ============================================================

order_sync_state:
  purpose:
    - local expression of sync visibility for order-related records
  required_fields:
    - order_sync_state_id
    - record_type
    - record_id
    - sync_state_type
    - recorded_at
  optional_fields:
    - last_attempt_at
    - last_error_code
    - last_error_note
    - target_system_name
  rules:
    - this model expresses OrderFlow usage need only
    - commonization is handled elsewhere if needed

# ============================================================
# 2. sync_state_type
# ============================================================

sync_state_type:
  values:
    - local_only
    - pending
    - synced
    - failed
    - retry_required

# ============================================================
# 3. order_pending_operation
# ============================================================

order_pending_operation:
  purpose:
    - local pending business operation visibility
  required_fields:
    - order_pending_operation_id
    - order_id
    - operation_type
    - operation_scope_type
    - queued_at
    - current_pending_state
  optional_fields:
    - payload_reference
    - retry_count
    - last_attempt_at
    - last_error_note
  rules:
    - pending operation is business-visible holding state
    - exact common-component design is intentionally out of scope here

# ============================================================
# 4. operation_type
# ============================================================

operation_type:
  values:
    - create_order
    - update_order
    - send_shipment_request
    - record_shipment_execution
    - record_delivery_confirmation
    - sync_to_erp

# ============================================================
# 5. operation_scope_type
# ============================================================

operation_scope_type:
  values:
    - order_header
    - order_lines
    - shipment_request
    - shipment_execution
    - delivery_confirmation

# ============================================================
# 6. order_audit_log
# ============================================================

order_audit_log:
  purpose:
    - app-local audit-facing event log for business review
  required_fields:
    - order_audit_log_id
    - order_id
    - audit_event_type
    - actor_ref
    - occurred_at
    - summary_text
  optional_fields:
    - previous_value_summary
    - new_value_summary
    - related_record_type
    - related_record_id
  rules:
    - audit log remains readable to operators
    - detailed security canonical design belongs elsewhere

# ============================================================
# 7. order_history_entry
# ============================================================

order_history_entry:
  purpose:
    - timeline-friendly visible business history
  required_fields:
    - order_history_entry_id
    - order_id
    - history_entry_type
    - occurred_at
    - actor_display_name
    - history_label
  optional_fields:
    - history_detail_text
    - related_record_type
    - related_record_id
  rules:
    - this model is optimized for timeline display rather than strict audit semantics

# ============================================================
# 8. history_entry_type
# ============================================================

history_entry_type:
  values:
    - order_created
    - order_confirmed
    - inventory_checked
    - lead_time_calculated
    - delivery_candidate_generated
    - customer_proposed
    - customer_response_recorded
    - shipment_requested
    - shipment_result_recorded
    - shipment_executed
    - delivery_confirmed
    - order_closed
    - order_canceled


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/030.model/0300006_ORDER_FLOW_HISTORY_AND_SYNC_MODEL_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/030.model/030510_ORDERFLOW_ORDER_EXECUTION_TIMELINE_MODEL.md -->
# ============================================================
# ORDERFLOW ORDER EXECUTION TIMELINE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: OrderFlow
directory: 030.model
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: order-execution-timeline-model

purpose:
Defines the logical model for a unified order execution timeline.

core_entity:
- order_execution_timeline_item

recommended_fields:
- orderExecutionTimelineItemId
- orderId
- relatedApprovalId
- relatedFulfillmentBlockerId
- relatedHandoffBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- executionStateCode
- priorityCode
- requiredByAt
- approvedAt
- releasedAt
- fulfilledAt
- handedOffAt
- exceptionPresent
- ownerUserId
- approvalRequired
- sourceModuleCode
- createdAt
- updatedAt

state_meaning:
- draft
- pending_approval
- approved
- on_hold
- ready_for_fulfillment
- blocked_for_fulfillment
- fulfilled
- handed_off
- cancelled

model_use_cases:
- order cockpit assembly
- fulfillment exception review
- approval review
- downstream handoff readiness visibility
- operational trend visibility

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/030.model/030510_ORDERFLOW_ORDER_EXECUTION_TIMELINE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/050.flow/0500001_ORDER_FLOW_ORDER_LIFECYCLE_FLOW.md -->
# ============================================================
# ORDER FLOW ORDER LIFECYCLE FLOW
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the normal end-to-end lifecycle flow of an order in OrderFlow.

# ============================================================
# 1. lifecycle overview
# ============================================================

normal_flow:
  1. create order
  2. confirm order
  3. perform inventory check
  4. calculate lead time
  5. calculate delivery candidates
  6. record customer proposal
  7. record customer agreement
  8. issue shipment request
  9. record shipment execution
  10. record delivery confirmation
  11. close order

# ============================================================
# 2. flow detail
# ============================================================

step_1_create_order:
  entry_paths:
    - create from estimate handoff
    - create as standalone order
  resulting_order_state:
    - draft

step_2_confirm_order:
  condition:
    - order content is sufficiently fixed for execution handling
  resulting_order_state:
    - confirmed

step_3_perform_inventory_check:
  outputs:
    - inventory status
    - supply understanding
  resulting_order_state:
    - inventory_checked

step_4_calculate_lead_time:
  outputs:
    - lead time basis
    - internal explanation basis

step_5_calculate_delivery_candidates:
  outputs:
    - one or more candidate delivery schedules
  resulting_order_state:
    - delivery_date_calculated

step_6_record_customer_proposal:
  outputs:
    - proposal history
    - proposed date or date range
  resulting_order_state:
    - customer_proposed

step_7_record_customer_agreement:
  outputs:
    - accepted / revision / rejection trace
    - agreed schedule basis
  resulting_order_state:
    - customer_confirmed

step_8_issue_shipment_request:
  outputs:
    - shipment request record
    - request scope
  resulting_order_state:
    - shipment_requested

step_9_record_shipment_execution:
  outputs:
    - shipment result
    - shipped quantity or scope
  resulting_order_state:
    - shipped

step_10_record_delivery_confirmation:
  outputs:
    - delivery confirmation record
    - delivery evidence or note if available
  resulting_order_state:
    - delivered

step_11_close_order:
  condition:
    - no further normal execution action remains
  resulting_order_state:
    - closed

# ============================================================
# 3. operational notes
# ============================================================

notes:
  - lead time calculation and delivery candidate calculation are conceptually distinct
  - customer agreement may initially be recorded manually by internal staff
  - shipment and delivery are separated intentionally
  - close is separated from delivered intentionally


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/050.flow/0500001_ORDER_FLOW_ORDER_LIFECYCLE_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/050.flow/0500002_ORDER_FLOW_PARTIAL_SHIPMENT_AND_PARTIAL_DELIVERY_FLOW.md -->
# ============================================================
# ORDER FLOW PARTIAL SHIPMENT AND PARTIAL DELIVERY FLOW
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines how OrderFlow handles partial shipment and partial delivery.

# ============================================================
# 1. policy
# ============================================================

initial_policy:
  - partial shipment is allowed
  - partial delivery is allowed
  - remaining quantity must stay visible
  - order close must not happen silently while remaining scope exists
  - business-approved completion may still allow close under explicit rule

# ============================================================
# 2. partial shipment flow
# ============================================================

partial_shipment_flow:
  1. shipment request is issued for full or partial scope
  2. shipment execution records shipped subset
  3. remaining quantity is retained as open scope
  4. shipment status becomes partially_shipped where appropriate
  5. additional shipment request may be issued for remaining scope
  6. order state may stay shipment_requested or shipped depending on overall handling rule

# ============================================================
# 3. partial delivery flow
# ============================================================

partial_delivery_flow:
  1. some shipped scope reaches delivered condition
  2. delivery confirmation records partial scope
  3. delivery status becomes partially_delivered where appropriate
  4. remaining undelivered scope stays visible
  5. additional shipment or delivery completion handling continues
  6. order cannot close unless explicit completion rule is satisfied

# ============================================================
# 4. close control
# ============================================================

close_control_rules:
  - close requires explicit business completion judgment
  - close is not triggered only because one shipment was completed
  - close is not triggered only because one delivery confirmation exists
  - remaining quantity, rejected scope, or canceled remainder must be explainable
  - partial completion with accepted remainder cancellation may still become closeable

# ============================================================
# 5. design intention
# ============================================================

design_intention:
  - OrderFlow must support realistic business execution
  - partials are normal business events, not edge-only anomalies
  - visibility of remaining scope is mandatory
  - order-level state and lower-scope shipment/delivery states must not be conflated


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/050.flow/0500002_ORDER_FLOW_PARTIAL_SHIPMENT_AND_PARTIAL_DELIVERY_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/050.flow/0500003_ORDER_FLOW_SCREEN_STATE_TRANSITION_MATRIX_BY_ROLE.md -->
# ============================================================
# ORDER FLOW SCREEN STATE TRANSITION MATRIX BY ROLE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines major screen/state transition expectations by role.

matrix:

  sales_operator:
    typical_path:
      - create_order_from_estimate_screen
      - order_detail_screen
      - customer_proposal_screen
      - customer_response_record_screen
      - order_detail_screen
    main_states_touched:
      - draft
      - confirmed
      - customer_proposed
      - customer_confirmed

  order_coordinator:
    typical_path:
      - order_detail_screen
      - inventory_check_screen
      - lead_time_calculation_screen
      - delivery_candidate_screen
      - shipment_request_screen
      - order_detail_screen
    main_states_touched:
      - inventory_checked
      - delivery_date_calculated
      - shipment_requested

  warehouse_operator:
    typical_path:
      - shipment_status_board_screen
      - shipment_request_detail_screen
      - shipment_execution_entry_flow
    main_states_touched:
      - requested
      - accepted
      - partially_shipped
      - shipped

  delivery_confirmation_operator:
    typical_path:
      - order_detail_screen
      - delivery_confirmation_input_screen
      - partial_delivery_confirmation_screen
      - order_detail_screen
    main_states_touched:
      - partially_delivered
      - delivered

  order_manager:
    typical_path:
      - order_list_screen
      - order_detail_screen
      - order_history_screen
      - order_closure_screen
    main_states_touched:
      - any operational state
      - closed
      - canceled

rules:
  - role path is indicative, not exclusive
  - app permission and DB scope still apply
  - close and cancel remain narrower than ordinary progression


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/050.flow/0500003_ORDER_FLOW_SCREEN_STATE_TRANSITION_MATRIX_BY_ROLE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/0600000_ORDER_FLOW_INTEGRATION_INDEX.md -->
# ============================================================
# ORDER FLOW INTEGRATION INDEX
# ============================================================

files:

- 060290_ORDERFLOW_ORDER_COCKPIT_PAYLOAD.md

- 060300_ORDERFLOW_FULFILLMENT_EXCEPTION_REVIEW_PAYLOAD.md

- 060320_ORDERFLOW_PHASE_A_API_STARTER.md

- 060330_ORDERFLOW_PHASE_A_API_DTO_FIELD_FREEZE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/0600000_ORDER_FLOW_INTEGRATION_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/0600001_ORDER_FLOW_ESTIMATE_HANDOFF_EXACT.md -->
# ============================================================
# ORDER FLOW ESTIMATE HANDOFF EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the exact handoff boundary from EstimateCreator to OrderFlow.

# ============================================================
# 1. handoff principle
# ============================================================

principles:
  - estimate and order are separate records
  - same-record promotion is forbidden
  - handoff is copy-based
  - order side must retain estimate traceability
  - estimate-origin snapshot must remain visible after handoff

# ============================================================
# 2. supported handoff entry types
# ============================================================

supported_handoff_entry_types:
  - deeplink_handoff
  - internal_create_from_estimate
  - copied_context_resume

meanings:
  deeplink_handoff:
    - EstimateCreator launches OrderFlow through app-to-app entry
  internal_create_from_estimate:
    - same environment creates order from estimate context without separate raw record identity
  copied_context_resume:
    - previously copied estimate-origin draft is reopened inside OrderFlow

# ============================================================
# 3. minimum handoff payload meaning
# ============================================================

minimum_handoff_payload_meaning:
  required:
    - source_app_name
    - source_estimate_id
    - source_estimate_number
    - source_customer_ref
    - source_currency_code
    - source_estimate_snapshot
    - handoff_timestamp
    - handoff_actor_ref
  optional:
    - source_estimate_title
    - source_estimate_version
    - requested_delivery_date_hint
    - source_line_snapshots
    - source_note_summary
    - source_locale_hint

rules:
  - raw credentials must not be embedded
  - payload is business context, not identity replacement
  - payload may be partial as long as required traceability exists

# ============================================================
# 4. estimate snapshot expectations
# ============================================================

estimate_snapshot_expectations:
  should_include:
    - estimate header summary
    - customer summary
    - estimate line snapshot
    - money/currency summary
    - operator-visible note summary if allowed
  should_not_require:
    - live editing reference back to estimate
  rules:
    - snapshot is historical support
    - later estimate changes do not rewrite order-side snapshot silently

# ============================================================
# 5. order creation expectations after handoff
# ============================================================

after_handoff_order_creation:
  required_results:
    - new order_id generated
    - order_source_type set to from_estimate
    - order_source_estimate_link created
    - customer snapshot created
    - copied order lines created from allowed estimate-origin scope
    - order starts in draft unless explicit policy says otherwise

# ============================================================
# 6. forbidden patterns
# ============================================================

forbidden_patterns:
  - reusing estimate_id as order_id
  - mutating estimate record into order record
  - silently losing source estimate traceability
  - requiring raw login credentials in deeplink
  - overwriting order snapshot because estimate changed later

# ============================================================
# 7. design note
# ============================================================

design_note:
  OrderFlow accepts estimate-origin business intent,
  but ownership after handoff becomes order-side execution responsibility.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/0600001_ORDER_FLOW_ESTIMATE_HANDOFF_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/0600002_ORDER_FLOW_DEEPLINK_AND_SESSION_ENTRY_EXACT.md -->
# ============================================================
# ORDER FLOW DEEPLINK AND SESSION ENTRY EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines how OrderFlow is entered through standalone login
or deeplink/session-reuse flow, without designing common components here.

# ============================================================
# 1. supported entry modes
# ============================================================

entry_modes:
  - standalone_entry
  - deeplink_entry

standalone_entry:
  meaning:
    - user enters OrderFlow directly
    - OrderFlow handles its own login/session path

deeplink_entry:
  meaning:
    - user enters OrderFlow from another app such as EstimateCreator
    - existing authenticated context may be reused
    - OrderFlow still performs authorization validation

# ============================================================
# 2. deeplink expectations
# ============================================================

deeplink_expectations:
  required:
    - target route or screen intent
    - source app context
    - business handoff context where relevant
    - session reuse eligibility indicator
  forbidden:
    - raw credential transport
    - skipping authorization validation
    - bypassing tenant/company context validation

# ============================================================
# 3. authorization expectations
# ============================================================

authorization_expectations:
  required_checks:
    - company scope validity
    - actor validity
    - route access validity
    - estimate-origin access validity where relevant
  behavior_on_failure:
    - reject entry
    - show safe failure surface
    - do not auto-create order

# ============================================================
# 4. screen routing examples
# ============================================================

screen_routing_examples:
  - deeplink_to_create_order_from_estimate_screen
  - deeplink_to_existing_order_detail_screen
  - standalone_to_home_screen
  - standalone_to_order_list_screen

# ============================================================
# 5. business rule
# ============================================================

business_rule:
  deeplink convenience must not weaken OrderFlow boundary rules.
  entry convenience is secondary to authorization and traceability.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/0600002_ORDER_FLOW_DEEPLINK_AND_SESSION_ENTRY_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/0600003_ORDER_FLOW_ERP_PRESENT_MODE_EXACT.md -->
# ============================================================
# ORDER FLOW ERP PRESENT MODE EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines OrderFlow behavior when ERP is present and connected.

# ============================================================
# 1. core stance
# ============================================================

core_stance:
  - OrderFlow remains the execution and coordination front
  - ERP may act as source of truth for selected domains
  - responsibility does not move away from OrderFlow user experience

# ============================================================
# 2. likely ERP-connected domains
# ============================================================

erp_connected_domains:
  - order synchronization
  - inventory reference
  - shipment request downstream linkage
  - delivery confirmation downstream synchronization
  - customer/master validation where available

# ============================================================
# 3. order behavior
# ============================================================

order_behavior:
  - OrderFlow may create local execution record first
  - ERP-facing sync state may exist per relevant record
  - ERP identifier may be attached after successful sync
  - OrderFlow order_id remains local identity anchor for app responsibility

# ============================================================
# 4. inventory behavior
# ============================================================

inventory_behavior:
  - inventory source type may be erp
  - freshness and retrieval timing must still be visible
  - ERP reference does not remove need for stale/fresh distinction

# ============================================================
# 5. shipment behavior
# ============================================================

shipment_behavior:
  - shipment request may be sent to ERP-linked downstream execution target
  - response acceptance/rejection may come from ERP-connected flow
  - OrderFlow still keeps request-level visibility

# ============================================================
# 6. delivery behavior
# ============================================================

delivery_behavior:
  - delivery confirmation may be entered in OrderFlow
  - downstream ERP sync may happen after local confirmation
  - local operational completion and ERP sync completion are related but distinct

# ============================================================
# 7. failure handling stance
# ============================================================

failure_handling_stance:
  - ERP unavailability must not erase local operator visibility
  - pending / failed / retry-needed visibility may remain at OrderFlow side
  - operator should understand whether failure is business-side or sync-side

# ============================================================
# 8. principle summary
# ============================================================

principle_summary:
  With ERP present, OrderFlow coordinates execution while integrating with ERP truth and downstream linkage where appropriate.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/0600003_ORDER_FLOW_ERP_PRESENT_MODE_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/0600004_ORDER_FLOW_ERP_ABSENT_MODE_EXACT.md -->
# ============================================================
# ORDER FLOW ERP ABSENT MODE EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines OrderFlow behavior when ERP is not present.

# ============================================================
# 1. core stance
# ============================================================

core_stance:
  - OrderFlow must remain usable without ERP
  - business responsibility stays unchanged
  - OrderFlow may become the practical local execution system for this scope

# ============================================================
# 2. locally handled domains
# ============================================================

locally_handled_domains:
  - order canonical record
  - customer snapshot retention
  - inventory reference through lightweight or manual/reference path
  - shipment request tracking
  - delivery confirmation tracking
  - operational closure judgment

# ============================================================
# 3. inventory behavior
# ============================================================

inventory_behavior:
  - inventory source type may be app_local
  - inventory source type may be external_reference
  - inventory source type may be manual_confirmation
  - stale/fresh distinction still matters even without ERP

# ============================================================
# 4. shipment behavior
# ============================================================

shipment_behavior:
  - shipment request may remain lightweight-managed
  - downstream target may be manual, local warehouse, or external non-ERP operation
  - acceptance and rejection visibility still matter

# ============================================================
# 5. delivery behavior
# ============================================================

delivery_behavior:
  - delivery confirmation may be fully app-local
  - partial delivery and remaining scope handling remain mandatory
  - order closure remains explicit

# ============================================================
# 6. design advantage
# ============================================================

design_advantage:
  - teams can adopt OrderFlow before ERP rollout
  - teams can keep using OrderFlow even if ERP is intentionally absent
  - architecture remains compatible with later ERP adoption

# ============================================================
# 7. principle summary
# ============================================================

principle_summary:
  Without ERP, OrderFlow acts as the lightweight but structured execution and delivery coordination front for the supported business scope.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/0600004_ORDER_FLOW_ERP_ABSENT_MODE_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/0600005_ORDER_FLOW_DOWNSTREAM_INVOICE_HANDOFF_EXACT.md -->
# ============================================================
# ORDER FLOW DOWNSTREAM INVOICE HANDOFF EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines future downstream handoff from OrderFlow to invoice-side flow.

handoff_position:
  upstream:
    - OrderFlow
  downstream_candidates:
    - InvoiceFlow
    - ERP billing flow
    - receivable-side downstream management

handoff_trigger_candidates:
  - order closed after delivered_completed
  - order closed after business_completed
  - manager-approved billing-ready state

minimum_handoff_payload_meaning:
  required:
    - company_id
    - order_id
    - order_number
    - customer_snapshot_summary
    - currency_code
    - total_amount
    - delivered_scope_summary
    - closure_reason_type
    - source_order_trace
  optional:
    - source_estimate_link_summary
    - shipment_summary
    - delivery_confirmation_summary
    - billing_hint_note

handoff_rules:
  - invoice identity remains separate from order identity
  - same-record promotion is forbidden
  - downstream billing app decides billing-side canonical state
  - OrderFlow remains source of execution completion context, not invoice authority

future_note:
  - billing-ready exact status is intentionally deferred
  - this document fixes boundary only


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/0600005_ORDER_FLOW_DOWNSTREAM_INVOICE_HANDOFF_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/0600006_ORDER_FLOW_TO_INVOICEFLOW_RECEIVER_BOUNDARY.md -->
# ============================================================
# ORDER FLOW TO INVOICEFLOW RECEIVER BOUNDARY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the receiver-side boundary assumptions for InvoiceFlow
when accepting downstream handoff from OrderFlow.

receiver_boundary:

  sender_system:
    - OrderFlow

  receiver_system:
    - InvoiceFlow

  sender_responsibility:
    - provide execution-completion context
    - provide delivered scope summary
    - provide closure context
    - provide customer snapshot summary needed for billing start

  receiver_responsibility:
    - create billing-side canonical record
    - determine invoice-side lifecycle
    - validate billing readiness under invoice rules
    - keep invoice identity separate from order identity

  fixed_rules:
    - order_id and invoice_id are separate
    - same-record promotion is forbidden
    - OrderFlow does not become billing authority
    - InvoiceFlow does not mutate OrderFlow identity

  minimum_receiver_expectation:
    - company scope available
    - order identity available
    - currency context available
    - total amount available
    - delivered or business-completed context available
    - customer billing summary available

  intentionally_deferred:
    - final InvoiceFlow schema exact
    - final InvoiceFlow invoice state exact
    - ERP billing sync exact on InvoiceFlow side


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/0600006_ORDER_FLOW_TO_INVOICEFLOW_RECEIVER_BOUNDARY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/0600007_ORDER_FLOW_TO_INVOICEFLOW_RECEIVER_EXACT_FINAL.md -->
# ============================================================
# ORDER FLOW TO INVOICEFLOW RECEIVER EXACT FINAL
# ============================================================

status: final-receiver-candidate
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides the final receiver-side candidate contract for InvoiceFlow handoff.

final_receiver_contract:

  endpoint_name:
    - create_invoice_from_order_handoff

  sender_system:
    - order_flow

  receiver_system:
    - invoice_flow

  required_request_meaning:
    - company_id
    - order identity
    - closure context
    - customer billing summary
    - money summary
    - delivered scope summary

  fixed_rules:
    - order_id and invoice_id are separate
    - OrderFlow remains execution authority only
    - InvoiceFlow becomes billing-side authority
    - duplicate invoice prevention is receiver-side policy
    - receiver may reject non-billing-ready payloads

  accepted_billing_ready_basis:
    - closed order
    - delivered_completed or business_completed style closure
    - customer billing summary present
    - currency_code and total_amount present

  error_family:
    - not_billing_ready
    - receiver_validation_error
    - duplicate_handoff_attempt
    - authorization_error
    - receiver_unavailable

final_note:
  - OrderFlow side handoff design is now sufficient
  - remaining exact design belongs to InvoiceFlow-side canonical work


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/0600007_ORDER_FLOW_TO_INVOICEFLOW_RECEIVER_EXACT_FINAL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/060290_ORDERFLOW_ORDER_COCKPIT_PAYLOAD.md -->
# ============================================================
# ORDERFLOW ORDER COCKPIT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: OrderFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: order-cockpit-payload

purpose:
Fixes the exact payload family for the order cockpit surface.

endpoint:
- POST /api/v1/order-flow/order-cockpit/query

request_fields:
- orderId: uuid string, required
- timezone: string, required
- includePendingApproval: boolean, required
- includeFulfillmentBlockers: boolean, required
- includeDownstreamHandoff: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- orderId: uuid string, required
- orderTitle: string, required
- healthSummaryMessage: string, required
- pendingApprovalItems: array, required
- fulfillmentBlockerItems: array, required
- downstreamHandoffItems: array, required
- nextPageToken: string, nullable
- generatedAt: ISO-8601 string, required

cockpitItem_fields:
- orderExecutionTimelineItemId
- itemTypeCode
- itemTitle
- itemSummary
- executionStateCode
- requiredByAt
- exceptionPresent
- ownerUserId
- approvalRequired

rules:
- timestamps use ISO-8601 strings
- nullable values return null, not omission
- arrays return empty arrays when no data

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/060290_ORDERFLOW_ORDER_COCKPIT_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/060300_ORDERFLOW_FULFILLMENT_EXCEPTION_REVIEW_PAYLOAD.md -->
# ============================================================
# ORDERFLOW FULFILLMENT EXCEPTION REVIEW PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: OrderFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: fulfillment-exception-review-payload

purpose:
Fixes the exact payload family for fulfillment and exception review.

endpoint:
- POST /api/v1/order-flow/fulfillment-exception-review/query

request_fields:
- orderId: uuid string, required
- includeResolved: boolean, required
- includeApprovalPending: boolean, required
- includeDownstreamBlockers: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- orderId: uuid string, required
- reviewItems: array, required
- summaryMessage: string, required
- nextPageToken: string, nullable
- generatedAt: ISO-8601 string, required

reviewItem_fields:
- reviewItemId
- relatedApprovalId
- relatedFulfillmentBlockerId
- relatedHandoffBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- executionStateCode
- exceptionPresent
- approvalRequired
- ownerUserId
- resolved
- requiredByAt

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/060300_ORDERFLOW_FULFILLMENT_EXCEPTION_REVIEW_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/060320_ORDERFLOW_PHASE_A_API_STARTER.md -->
# ============================================================
# ORDERFLOW PHASE A API STARTER
# ============================================================

status: canonical
layer: integration
system: applications
application: OrderFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-starter

purpose:
Defines the initial Phase A endpoint set for operational control in OrderFlow.

phase_a_api_goals:
- query order cockpit
- query fulfillment exception review
- prepare later approval and downstream handoff actions without reopening the contract

phase_a_endpoint_set:
- POST /api/v1/order-flow/order-cockpit/query
- POST /api/v1/order-flow/fulfillment-exception-review/query

endpoint_order_cockpit_query:
  purpose:
    - return approval pending items, fulfillment blockers, and downstream handoff visibility in one surface
  minimum_request:
    - orderId
    - timezone
    - includePendingApproval
    - includeFulfillmentBlockers
    - includeDownstreamHandoff
    - pageSize
  minimum_response:
    - orderId
    - orderTitle
    - healthSummaryMessage
    - pendingApprovalItems
    - fulfillmentBlockerItems
    - downstreamHandoffItems
    - generatedAt

endpoint_fulfillment_exception_review_query:
  purpose:
    - return fulfillment and handoff blocker rows for operational review
  minimum_request:
    - orderId
    - includeResolved
    - includeApprovalPending
    - includeDownstreamBlockers
    - pageSize
  minimum_response:
    - orderId
    - reviewItems
    - summaryMessage
    - generatedAt

response_rules:
- ids use uuid string form
- timestamps use ISO-8601 strings
- arrays return empty arrays, not omission
- nullable values return null once frozen
- no binary payloads in these responses

error_family_phase_a:
- invalid_request
- unauthorized
- forbidden
- not_found
- conflict
- validation_failed
- internal_error

explicit_non_scope:
- no order write endpoint in this slice
- no approval action write endpoint in this slice
- no shipment release execution endpoint in this slice
- no bulk import endpoint in this slice

implementation_handoff:
- use these two query endpoints as the only Phase A vertical-slice entry points first
- defer write-side approval and fulfillment actions until query-side surfaces stabilize

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/060320_ORDERFLOW_PHASE_A_API_STARTER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/060330_ORDERFLOW_PHASE_A_API_DTO_FIELD_FREEZE.md -->
# ============================================================
# ORDERFLOW PHASE A API DTO FIELD FREEZE
# ============================================================

status: canonical
layer: integration
system: applications
application: OrderFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-dto-field-freeze

purpose:
Freezes the Phase A request and response DTO field set for
order cockpit and fulfillment exception review.

freezing_policy:
- additive only
- field names become implementation baseline once approved
- no casual local rename allowed
- timestamps are ISO-8601 strings
- ids are uuid strings
- arrays stay arrays even when empty

endpoint_01_order_cockpit_query:
  route: POST /api/v1/order-flow/order-cockpit/query
  request_fields:
    - orderId: uuid string, required
    - timezone: string, required
    - includePendingApproval: boolean, required
    - includeFulfillmentBlockers: boolean, required
    - includeDownstreamHandoff: boolean, required
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - orderId: uuid string, required
    - orderTitle: string, required
    - healthSummaryMessage: string, required
    - pendingApprovalItems: array, required
    - fulfillmentBlockerItems: array, required
    - downstreamHandoffItems: array, required
    - nextPageToken: string, nullable
    - generatedAt: ISO-8601 string, required

cockpitItem_fields:
- orderExecutionTimelineItemId: uuid string, required
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- executionStateCode: string, required
- requiredByAt: ISO-8601 string, nullable
- exceptionPresent: boolean, required
- ownerUserId: uuid string, nullable
- approvalRequired: boolean, required

endpoint_02_fulfillment_exception_review_query:
  route: POST /api/v1/order-flow/fulfillment-exception-review/query
  request_fields:
    - orderId: uuid string, required
    - includeResolved: boolean, required
    - includeApprovalPending: boolean, required
    - includeDownstreamBlockers: boolean, required
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - orderId: uuid string, required
    - reviewItems: array, required
    - summaryMessage: string, required
    - nextPageToken: string, nullable
    - generatedAt: ISO-8601 string, required

reviewItem_fields:
- reviewItemId: uuid string, required
- relatedApprovalId: uuid string, nullable
- relatedFulfillmentBlockerId: uuid string, nullable
- relatedHandoffBlockerId: uuid string, nullable
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- executionStateCode: string, required
- exceptionPresent: boolean, required
- approvalRequired: boolean, required
- ownerUserId: uuid string, nullable
- resolved: boolean, required
- requiredByAt: ISO-8601 string, nullable

shared_error_response_fields:
- errorCode: string, required
- errorMessage: string, required
- requestId: string, required
- details: object, nullable

field_value_rules:
- itemTypeCode is a text code, not localized label
- executionStateCode is a text code, not localized label
- nullable fields return null, not omission
- unknown response fields must not be silently added in Phase A

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/060.integration/060330_ORDERFLOW_PHASE_A_API_DTO_FIELD_FREEZE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/070.operations/0700001_ORDER_FLOW_NOTIFICATION_EVENT_MODEL_EXACT.md -->
# ============================================================
# ORDER FLOW NOTIFICATION EVENT MODEL EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines notification event types and the operator-visible event model
for reminders, action-needed alerts, and overdue visibility.

notification_event_model:

  notification_event_record:
    purpose:
      - stores operator-visible notification events inside OrderFlow scope
    required_fields:
      - notification_event_id
      - company_id
      - order_id
      - notification_event_type
      - notification_level
      - notification_title
      - notification_message
      - event_occurred_at
      - read_state
    optional_fields:
      - related_record_type
      - related_record_id
      - due_at
      - actor_ref
      - assigned_actor_ref
      - resolved_at
      - resolved_by
      - resolution_note
    rules:
      - notification event is visibility-focused
      - notification event is not a replacement for audit log
      - one order may have multiple active notifications

  notification_event_type:
    values:
      - customer_response_waiting
      - shipment_request_waiting
      - shipment_request_rejected
      - delivery_confirmation_waiting
      - order_overdue
      - proposal_overdue
      - shipment_overdue
      - delivery_overdue
      - sync_failed
      - sync_pending_too_long
      - manual_attention_required

  notification_level:
    values:
      - info
      - warning
      - critical

  read_state:
    values:
      - unread
      - read
      - resolved

notification_design_rules:
  - read and resolved are distinct
  - critical events should remain visible until resolved
  - sync-visible notifications must not be confused with business-completion notifications


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/070.operations/0700001_ORDER_FLOW_NOTIFICATION_EVENT_MODEL_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/070.operations/0700002_ORDER_FLOW_REMINDER_AND_FOLLOWUP_RULES_EXACT.md -->
# ============================================================
# ORDER FLOW REMINDER AND FOLLOWUP RULES EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines reminder and follow-up rules for customer proposal,
shipment, and delivery stages.

reminder_and_followup_rules:

  customer_proposal_followup:
    trigger_condition:
      - order_state is customer_proposed
      - no accepted or rejected response recorded yet
    reminder_examples:
      - remind operator to follow up customer response
      - show waiting days since last proposal
    due_basis:
      - proposal_recorded_at plus policy-defined followup days

  shipment_request_followup:
    trigger_condition:
      - order_state is shipment_requested
      - shipment_status stays requested or pending_response too long
    reminder_examples:
      - remind operator to confirm warehouse acceptance
      - highlight request with no downstream answer
    due_basis:
      - requested_at plus policy-defined response window

  delivery_confirmation_followup:
    trigger_condition:
      - shipment execution exists
      - delivery confirmation still missing after expected window
    reminder_examples:
      - remind operator to confirm receipt or delivery result
    due_basis:
      - shipment_execution_date plus policy-defined confirmation window

  sync_followup:
    trigger_condition:
      - sync_state is failed
      - or sync_state is pending for too long
    reminder_examples:
      - remind operator that local save succeeded but external sync still needs attention
    due_basis:
      - last_attempt_at plus retry policy window

followup_design_rules:
  - followup must be business-stage aware
  - reminder should point to the next operator action
  - reminder generation policy may be configured later, but event meaning is fixed here


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/070.operations/0700002_ORDER_FLOW_REMINDER_AND_FOLLOWUP_RULES_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/070.operations/0700003_ORDER_FLOW_OVERDUE_AND_RISK_VISIBILITY_EXACT.md -->
# ============================================================
# ORDER FLOW OVERDUE AND RISK VISIBILITY EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines overdue and risk visibility semantics in OrderFlow.

overdue_and_risk_visibility:

  proposal_overdue:
    meaning:
      - customer response has not been recorded within expected follow-up window
    typical_source_state:
      - customer_proposed

  shipment_overdue:
    meaning:
      - shipment request has not progressed as expected within execution window
    typical_source_state:
      - shipment_requested

  delivery_overdue:
    meaning:
      - delivery confirmation has not been recorded within expected post-shipment window
    typical_source_state:
      - shipped

  order_overdue:
    meaning:
      - order remains operationally incomplete beyond expected business timeline
    typical_source_state:
      - any open nonterminal state except closed and canceled

  risk_visibility_summary_fields:
    recommended_fields:
      - risk_type
      - risk_level
      - days_overdue
      - related_due_at
      - next_expected_action
      - assigned_actor_ref

risk_design_rules:
  - overdue is visibility, not automatic state mutation
  - overdue does not automatically close or cancel order
  - risk summary should help the operator decide next action quickly
  - multiple risk signals may coexist for one order


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/070.operations/0700003_ORDER_FLOW_OVERDUE_AND_RISK_VISIBILITY_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/090.interface/0900000_ORDER_FLOW_INTERFACE_INDEX.md -->
# ============================================================
# ORDER FLOW INTERFACE INDEX
# ============================================================

files:

- 090330_ORDERFLOW_ORDER_COCKPIT_INTERFACE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/090.interface/0900000_ORDER_FLOW_INTERFACE_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/090.interface/0900001_ORDER_FLOW_SCREEN_STRUCTURE_EXACT.md -->
# ============================================================
# ORDER FLOW SCREEN STRUCTURE EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the exact primary screen structure of OrderFlow.

# ============================================================
# 1. primary screen groups
# ============================================================

screen_groups:
  - entry_and_navigation
  - order_entry_and_edit
  - inventory_and_schedule
  - customer_proposal
  - shipment
  - delivery_confirmation
  - closure_and_history

# ============================================================
# 2. screen list
# ============================================================

screen_list:

  entry_and_navigation:
    - home_screen
    - order_list_screen
    - order_detail_screen

  order_entry_and_edit:
    - create_order_from_estimate_screen
    - create_standalone_order_screen
    - order_header_edit_screen
    - order_line_edit_screen
    - customer_snapshot_screen

  inventory_and_schedule:
    - inventory_check_screen
    - lead_time_calculation_screen
    - delivery_candidate_screen

  customer_proposal:
    - customer_proposal_screen
    - proposal_history_screen
    - customer_response_record_screen

  shipment:
    - shipment_request_screen
    - shipment_request_detail_screen
    - shipment_status_board_screen

  delivery_confirmation:
    - delivery_confirmation_input_screen
    - partial_delivery_confirmation_screen

  closure_and_history:
    - order_history_screen
    - order_closure_screen

# ============================================================
# 3. design rules
# ============================================================

rules:
  - one screen must have one primary business responsibility
  - order_detail_screen acts as the main execution hub
  - detailed editing screens remain separated from read-heavy detail screens
  - proposal, shipment, and delivery are separated intentionally
  - history must stay visible but not dominate primary execution screens


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/090.interface/0900001_ORDER_FLOW_SCREEN_STRUCTURE_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/090.interface/0900002_ORDER_FLOW_ORDER_ENTRY_AND_DETAIL_SCREEN_EXACT.md -->
# ============================================================
# ORDER FLOW ORDER ENTRY AND DETAIL SCREEN EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the exact role of order creation, editing, and detail screens.

# ============================================================
# 1. create_order_from_estimate_screen
# ============================================================

create_order_from_estimate_screen:
  purpose:
    - create an order from estimate-origin handoff
  must_show:
    - source estimate summary
    - source estimate number snapshot
    - customer summary
    - estimate line snapshot
    - initial order currency
  allowed_actions:
    - accept copied content
    - adjust order header
    - adjust order lines
    - save draft
    - confirm creation
  must_not_do:
    - edit source estimate directly
  notes:
    - traceability to estimate must remain visible

# ============================================================
# 2. create_standalone_order_screen
# ============================================================

create_standalone_order_screen:
  purpose:
    - create an order directly inside OrderFlow
  must_show:
    - customer entry area
    - order header fields
    - currency selection
    - line entry block
  allowed_actions:
    - save draft
    - confirm creation
  notes:
    - standalone creation remains first-class

# ============================================================
# 3. order_header_edit_screen
# ============================================================

order_header_edit_screen:
  purpose:
    - edit order-level fields before or during controlled execution stages
  must_show:
    - order number
    - customer summary
    - order date
    - requested delivery date
    - currency context
    - overall totals
  allowed_actions:
    - edit allowed fields
    - save
    - cancel edit
  notes:
    - editing restrictions may increase after later states

# ============================================================
# 4. order_line_edit_screen
# ============================================================

order_line_edit_screen:
  purpose:
    - maintain line-level ordered scope
  must_show:
    - line number
    - item snapshot
    - ordered quantity
    - unit
    - unit price
    - subtotal
    - line state
  allowed_actions:
    - add line
    - edit line
    - remove line if policy allows
    - reorder line sequence if needed
  notes:
    - line-level remaining scope becomes important later

# ============================================================
# 5. customer_snapshot_screen
# ============================================================

customer_snapshot_screen:
  purpose:
    - show the preserved customer snapshot tied to the order
  must_show:
    - customer name snapshot
    - contact snapshot
    - billing snapshot
    - shipping snapshot
    - locale snapshot if available
  allowed_actions:
    - view only in normal cases
  notes:
    - snapshot is retained for historical stability

# ============================================================
# 6. order_detail_screen
# ============================================================

order_detail_screen:
  purpose:
    - main execution hub for the order
  must_show:
    - order summary
    - order state
    - inventory summary
    - latest delivery candidate summary
    - customer proposal summary
    - shipment summary
    - delivery summary
    - remaining scope summary if partials exist
  allowed_actions:
    - move to inventory check
    - move to lead time calculation
    - move to proposal
    - move to shipment request
    - move to delivery confirmation
    - open history
    - open closure screen
  notes:
    - this screen should answer "what is the next business action?"


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/090.interface/0900002_ORDER_FLOW_ORDER_ENTRY_AND_DETAIL_SCREEN_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/090.interface/0900003_ORDER_FLOW_PROPOSAL_AND_SHIPMENT_SCREEN_EXACT.md -->
# ============================================================
# ORDER FLOW PROPOSAL AND SHIPMENT SCREEN EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact screens for proposal, response recording,
shipment request, and shipment status visibility.

# ============================================================
# 1. inventory_check_screen
# ============================================================

inventory_check_screen:
  purpose:
    - record fulfillment-context inventory confirmation
  must_show:
    - order summary
    - line quantities
    - latest inventory source summary
    - freshness indication
    - availability result
  allowed_actions:
    - record inventory check
    - re-check inventory
    - attach note
  notes:
    - must distinguish fresh / cached / stale understanding

# ============================================================
# 2. lead_time_calculation_screen
# ============================================================

lead_time_calculation_screen:
  purpose:
    - calculate and record lead time basis
  must_show:
    - source inventory summary
    - supply status summary
    - lead time result
    - calculation basis
  allowed_actions:
    - calculate
    - recalculate
    - store result
  notes:
    - lead time is internal basis, not customer proposal itself

# ============================================================
# 3. delivery_candidate_screen
# ============================================================

delivery_candidate_screen:
  purpose:
    - compare and review delivery schedule candidates
  must_show:
    - candidate list
    - candidate date or range
    - confidence type
    - basis note
    - internal preferred candidate
  allowed_actions:
    - generate candidates
    - compare candidates
    - choose internal confirmed basis
  notes:
    - tablet / PC should benefit strongly here

# ============================================================
# 4. customer_proposal_screen
# ============================================================

customer_proposal_screen:
  purpose:
    - create and record delivery proposal to customer
  must_show:
    - chosen candidate
    - proposal target date or range
    - proposal note
    - proposal history summary
  allowed_actions:
    - create proposal
    - revise proposal
    - record proposal as sent or presented
  notes:
    - initial phase may support internal manual proposal recording only

# ============================================================
# 5. proposal_history_screen
# ============================================================

proposal_history_screen:
  purpose:
    - show chronological proposal attempts
  must_show:
    - proposal timestamp
    - proposed content
    - responder context if any
    - outcome label
  allowed_actions:
    - view details
    - open related response record

# ============================================================
# 6. customer_response_record_screen
# ============================================================

customer_response_record_screen:
  purpose:
    - record accepted / rejected / revision requested response
  must_show:
    - latest proposal summary
    - response type
    - response date
    - operator note
  allowed_actions:
    - record acceptance
    - record rejection
    - record revision request
  notes:
    - manual internal recording is allowed in initial design

# ============================================================
# 7. shipment_request_screen
# ============================================================

shipment_request_screen:
  purpose:
    - create a shipment request for full or partial scope
  must_show:
    - order summary
    - shippable line scope
    - requested quantity per line
    - shipment instruction note
    - target execution destination if available
  allowed_actions:
    - create request
    - save draft request if policy allows
  notes:
    - partial shipment must be visible at line level

# ============================================================
# 8. shipment_request_detail_screen
# ============================================================

shipment_request_detail_screen:
  purpose:
    - inspect one shipment request in detail
  must_show:
    - shipment request number
    - request scope
    - request status
    - request lines
    - response result
    - linked shipment execution if any
  allowed_actions:
    - update request status
    - record acceptance or rejection
    - open shipment execution record

# ============================================================
# 9. shipment_status_board_screen
# ============================================================

shipment_status_board_screen:
  purpose:
    - show shipment progress across request scope
  must_show:
    - request list
    - shipment status by request
    - partially shipped indicator
    - remaining shipment scope
  allowed_actions:
    - open request detail
    - move to execution record
  notes:
    - PC and tablet should show dense visibility here


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/090.interface/0900003_ORDER_FLOW_PROPOSAL_AND_SHIPMENT_SCREEN_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/090.interface/0900004_ORDER_FLOW_DELIVERY_AND_CLOSURE_SCREEN_EXACT.md -->
# ============================================================
# ORDER FLOW DELIVERY AND CLOSURE SCREEN EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines delivery confirmation, partial delivery,
history, and closure screen responsibilities.

# ============================================================
# 1. delivery_confirmation_input_screen
# ============================================================

delivery_confirmation_input_screen:
  purpose:
    - record order-level delivery confirmation
  must_show:
    - order summary
    - latest shipment summary
    - confirmation date
    - delivery status
    - note / issue area
  allowed_actions:
    - record delivery confirmation
    - attach note
    - continue as partial if not fully delivered
  notes:
    - shipment execution and delivery confirmation are distinct

# ============================================================
# 2. partial_delivery_confirmation_screen
# ============================================================

partial_delivery_confirmation_screen:
  purpose:
    - record delivered scope at partial line level
  must_show:
    - order lines
    - delivered quantity input
    - remaining quantity view
    - short delivery or incomplete reason note
  allowed_actions:
    - record partial delivered quantities
    - save record
  notes:
    - remaining scope must stay visible after save

# ============================================================
# 3. order_history_screen
# ============================================================

order_history_screen:
  purpose:
    - display readable business timeline
  must_show:
    - chronological entries
    - actor display name
    - history label
    - related event summary
  allowed_actions:
    - open related detail
  notes:
    - history is for operator understanding, not only strict audit

# ============================================================
# 4. order_closure_screen
# ============================================================

order_closure_screen:
  purpose:
    - perform final operational completion judgment
  must_show:
    - order state summary
    - delivery summary
    - remaining quantity summary
    - unresolved issue summary
    - close readiness explanation
  allowed_actions:
    - close order
    - stop closure
    - add closure note
  notes:
    - close must be explicit
    - close must not be silent after one shipment or one delivery record

# ============================================================
# 5. screen relationship rules
# ============================================================

rules:
  - delivery confirmation input does not automatically close the order
  - partial delivery screen is separate to preserve quantity clarity
  - history screen is read-heavy
  - closure screen is judgment-heavy and should remain explicit


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/090.interface/0900004_ORDER_FLOW_DELIVERY_AND_CLOSURE_SCREEN_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/090.interface/0900005_ORDER_FLOW_HOME_DASHBOARD_EXACT.md -->
# ============================================================
# ORDER FLOW HOME DASHBOARD EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the exact role of the OrderFlow home dashboard.

home_dashboard_definition:

  primary_goal:
    - show current operational situation quickly
    - reveal what needs action next
    - provide direct access to high-frequency work

  main_sections:
    - summary_kpi_section
    - action_needed_section
    - overdue_risk_section
    - recent_orders_section
    - shipment_progress_section
    - quick_action_section

  summary_kpi_section:
    should_show:
      - open_order_count
      - waiting_customer_response_count
      - waiting_shipment_count
      - waiting_delivery_confirmation_count
      - overdue_order_count

  action_needed_section:
    should_show:
      - orders needing customer followup
      - orders needing shipment action
      - orders needing delivery confirmation
      - sync-failed items needing attention

  overdue_risk_section:
    should_show:
      - proposal_overdue_count
      - shipment_overdue_count
      - delivery_overdue_count
      - highest_risk_items

  recent_orders_section:
    should_show:
      - recently updated orders
      - recently created orders
      - recently closed orders if space allows

  shipment_progress_section:
    should_show:
      - requested count
      - accepted count
      - partially_shipped count
      - shipped count

  quick_action_section:
    should_show:
      - create_standalone_order
      - create_from_estimate_if_entry_context_exists
      - open_order_list
      - open_notifications
      - open_shipment_board

design_rules:
  - home is action-oriented, not decorative
  - operator should understand the next work within a few seconds
  - widgets should remain meaningful on mobile and dense on PC/tablet
  - order_detail_screen remains the execution hub, but home is the work triage hub


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/090.interface/0900005_ORDER_FLOW_HOME_DASHBOARD_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/090.interface/090330_ORDERFLOW_ORDER_COCKPIT_INTERFACE.md -->
# ============================================================
# ORDERFLOW ORDER COCKPIT INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: OrderFlow
directory: 090.interface
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: order-cockpit-interface

purpose:
Makes the order cockpit screen hierarchy explicit.

screen_goal:
- show what threatens fulfillment or downstream handoff right now
- unify pending approvals, fulfillment blockers, and downstream readiness
- provide one operational-control review pass before diving into detail screens

screen_sections:
- order summary header
- pending approval stack
- fulfillment blocker stack
- downstream handoff panel
- quick jump to exception review

item_card_fields:
- item title
- short summary
- state badge
- required-by time
- owner badge
- approval badge
- quick action buttons

primary_actions:
- open order detail
- open exception review
- open approval review
- approve
- hold
- open downstream handoff detail

interface_rules:
- pending approvals must be separated visually from fulfillment blockers
- downstream handoff items must stay visible above long detail lists
- cockpit must be scannable in one vertical pass
- line editing belongs elsewhere; cockpit is a control surface first

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/090.interface/090330_ORDERFLOW_ORDER_COCKPIT_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/100.security/1000001_ORDER_FLOW_ROLE_MODEL_EXACT.md -->
# ============================================================
# ORDER FLOW ROLE MODEL EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the primary business roles used in OrderFlow authorization design.

role_model:

  sales_operator:
    business_meaning:
      - creates and edits orders
      - handles estimate-origin order creation
      - records customer proposal and response
    typical_focus:
      - order entry
      - customer-facing delivery coordination

  order_coordinator:
    business_meaning:
      - coordinates fulfillment-side execution
      - reviews inventory, lead time, and delivery candidate basis
    typical_focus:
      - execution planning
      - schedule coordination

  warehouse_operator:
    business_meaning:
      - handles shipment request acceptance and shipment execution visibility
    typical_focus:
      - shipment-side operational handling

  delivery_confirmation_operator:
    business_meaning:
      - records delivery confirmation and partial delivery progress
    typical_focus:
      - delivery-side completion input

  order_manager:
    business_meaning:
      - broader supervisory role over order progress
      - can close orders under policy
    typical_focus:
      - issue resolution
      - closure judgment

  admin_operator:
    business_meaning:
      - administrative override role
      - handles exceptional cases and access management support
    typical_focus:
      - exceptional correction
      - administrative actions

role_notes:
  - one actor may hold multiple roles
  - app authorization should be role-plus-scope based
  - company scope remains mandatory even for broad roles


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/100.security/1000001_ORDER_FLOW_ROLE_MODEL_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/100.security/1000002_ORDER_FLOW_PERMISSION_MATRIX_ORDER_AND_EXECUTION.md -->
# ============================================================
# ORDER FLOW PERMISSION MATRIX ORDER AND EXECUTION
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines permissions for order entry, editing, inventory, lead time,
delivery candidate, and proposal handling.

permission_matrix:

  create_order_from_estimate:
    allowed_roles:
      - sales_operator
      - order_coordinator
      - order_manager
      - admin_operator

  create_standalone_order:
    allowed_roles:
      - sales_operator
      - order_coordinator
      - order_manager
      - admin_operator

  edit_order_header:
    allowed_roles:
      - sales_operator
      - order_coordinator
      - order_manager
      - admin_operator
    restrictions:
      - current state policy may narrow editability

  edit_order_lines:
    allowed_roles:
      - sales_operator
      - order_coordinator
      - order_manager
      - admin_operator
    restrictions:
      - shipped_or_delivered_scope must not be broken

  view_customer_snapshot:
    allowed_roles:
      - sales_operator
      - order_coordinator
      - warehouse_operator
      - delivery_confirmation_operator
      - order_manager
      - admin_operator

  record_inventory_check:
    allowed_roles:
      - order_coordinator
      - order_manager
      - admin_operator

  calculate_lead_time:
    allowed_roles:
      - order_coordinator
      - order_manager
      - admin_operator

  calculate_delivery_candidates:
    allowed_roles:
      - order_coordinator
      - order_manager
      - admin_operator

  create_customer_proposal:
    allowed_roles:
      - sales_operator
      - order_coordinator
      - order_manager
      - admin_operator

  record_customer_response:
    allowed_roles:
      - sales_operator
      - order_coordinator
      - order_manager
      - admin_operator

  view_order_history:
    allowed_roles:
      - sales_operator
      - order_coordinator
      - warehouse_operator
      - delivery_confirmation_operator
      - order_manager
      - admin_operator

permission_notes:
  - view permission does not automatically imply edit permission
  - order_manager may operate across multiple stages
  - admin_operator is not intended as the default everyday role


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/100.security/1000002_ORDER_FLOW_PERMISSION_MATRIX_ORDER_AND_EXECUTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/100.security/1000003_ORDER_FLOW_PERMISSION_MATRIX_SHIPMENT_AND_CLOSURE.md -->
# ============================================================
# ORDER FLOW PERMISSION MATRIX SHIPMENT AND CLOSURE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines permissions for shipment request, shipment execution,
delivery confirmation, cancellation, and closure.

permission_matrix:

  create_shipment_request:
    allowed_roles:
      - order_coordinator
      - order_manager
      - admin_operator
    optionally_allowed_roles:
      - sales_operator

  record_shipment_request_result:
    allowed_roles:
      - warehouse_operator
      - order_manager
      - admin_operator

  record_shipment_execution:
    allowed_roles:
      - warehouse_operator
      - order_manager
      - admin_operator

  view_shipment_status_board:
    allowed_roles:
      - order_coordinator
      - warehouse_operator
      - order_manager
      - admin_operator

  record_delivery_confirmation:
    allowed_roles:
      - delivery_confirmation_operator
      - order_manager
      - admin_operator

  record_partial_delivery:
    allowed_roles:
      - delivery_confirmation_operator
      - order_manager
      - admin_operator

  close_order:
    allowed_roles:
      - order_manager
      - admin_operator

  cancel_order:
    allowed_roles:
      - order_manager
      - admin_operator
    restrictions:
      - ordinary roles should not cancel freely after downstream handling exists

  administrative_reopen_or_override:
    allowed_roles:
      - admin_operator
    restrictions:
      - should require explicit audit-visible reason

permission_notes:
  - shipment execution permission should stay narrower than simple order viewing
  - close and cancel are judgment-heavy operations
  - partial handling permissions follow the same business-responsible role family


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/100.security/1000003_ORDER_FLOW_PERMISSION_MATRIX_SHIPMENT_AND_CLOSURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/100.security/1000004_ORDER_FLOW_AUTHORIZATION_AND_SCOPE_RULES.md -->
# ============================================================
# ORDER FLOW AUTHORIZATION AND SCOPE RULES
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines authorization and business-scope rules for OrderFlow.

authorization_rules:

  company_scope:
    rule:
      - actor must belong to or be allowed for target company scope
    forbidden:
      - cross-company access without explicit authorization

  route_scope:
    rule:
      - actor must be authorized for target route or screen
    forbidden:
      - deeplink bypass of route authorization

  order_scope:
    rule:
      - actor must have access to the target order record
    forbidden:
      - opening unrelated order by guessed identifier

  estimate_origin_scope:
    rule:
      - estimate-origin order creation requires access to source estimate context
    forbidden:
      - creating order from inaccessible estimate

  role_and_scope_combination:
    rule:
      - role alone is insufficient without correct company and record scope
      - scope alone is insufficient without required business role

  deeplink_entry:
    rule:
      - deeplink may reuse session context
      - deeplink must still validate authorization
    forbidden:
      - raw credential passing
      - silent trust of source app without checks

  closed_order_handling:
    rule:
      - closed order is view-heavy by default
      - edit or reopen needs elevated permission and explicit reason

  audit_visibility:
    rule:
      - privileged actions should remain audit-visible
      - state-changing administrative actions should carry explicit reason

summary_principle:
  Authorization in OrderFlow is role-based, scope-bound,
  and explicit about company, route, and record visibility.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/100.security/1000004_ORDER_FLOW_AUTHORIZATION_AND_SCOPE_RULES.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/100.security/1000005_ORDER_FLOW_DB_ACCESS_MODEL_EXACT.md -->
# ============================================================
# ORDER FLOW DB ACCESS MODEL EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
Defines the database-layer access model for OrderFlow.

db_access_model:

  primary_principles:
    - company scope isolation is mandatory
    - application roles do not bypass tenant scope
    - read and write concerns are separated
    - closed-order visibility is broader than closed-order editability
    - administrative override must stay explicit and auditable

  access_layers:
    app_layer:
      role:
        - screen and action permission control
      note:
        - defined in OrderFlow permission design

    db_layer:
      role:
        - row-level access isolation
        - write protection by company scope
        - privileged override separation

  actor_context_expectation:
    required_context:
      - actor_ref
      - company_id
      - role_set
    note:
      - DB-layer evaluation assumes trusted session claims or equivalent context

  core_scope_rule:
    read_scope:
      - actor may read only rows belonging to authorized company scope
    write_scope:
      - actor may write only rows belonging to authorized company scope
    forbidden:
      - cross-company read
      - cross-company write
      - blind service-style write from user path without explicit privileged route

  table_scope_strategy:
    company_direct_tables:
      - order_record
      - notification_event_record
    order_scoped_tables:
      - order_line_item
      - order_customer_snapshot
      - order_source_estimate_link
      - order_status_record
      - order_inventory_check_record
      - order_supply_status_record
      - order_lead_time_record
      - delivery_schedule_calculation_record
      - delivery_schedule_candidate
      - delivery_schedule_confirmed_record
      - customer_delivery_proposal_record
      - customer_delivery_response_record
      - shipment_request_record
      - shipment_request_line
      - shipment_request_result
      - shipment_execution_record
      - shipment_request_status_history
      - delivery_confirmation_record
      - delivery_confirmation_line
      - order_history_entry
      - order_audit_log
      - order_pending_operation
    polymorphic_sync_table:
      - order_sync_state

  recommended_pattern:
    - company_id held directly where natural
    - order-scoped tables inherit company scope through parent order_record
    - privileged maintenance paths should use explicit service path, not ordinary end-user path


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/100.security/1000005_ORDER_FLOW_DB_ACCESS_MODEL_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/100.security/1000006_ORDER_FLOW_RLS_POLICY_CANDIDATE_READ.md -->
# ============================================================
# ORDER FLOW RLS POLICY CANDIDATE READ
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
Defines read-side RLS policy candidates for OrderFlow.

read_policy_candidates:

  order_record:
    read_rule:
      - allow read when row company_id equals session company scope
    notes:
      - base anchor for most other scoped reads

  order_scoped_child_tables:
    tables:
      - order_line_item
      - order_customer_snapshot
      - order_source_estimate_link
      - order_status_record
      - order_inventory_check_record
      - order_supply_status_record
      - order_lead_time_record
      - delivery_schedule_calculation_record
      - delivery_schedule_candidate
      - delivery_schedule_confirmed_record
      - customer_delivery_proposal_record
      - customer_delivery_response_record
      - shipment_request_record
      - shipment_request_line
      - shipment_request_result
      - shipment_execution_record
      - shipment_request_status_history
      - delivery_confirmation_record
      - delivery_confirmation_line
      - order_history_entry
      - order_audit_log
      - order_pending_operation
    read_rule:
      - allow read when linked parent order belongs to session company scope

  notification_event_record:
    read_rule:
      - allow read when notification_event_record.company_id equals session company scope

  order_sync_state:
    read_rule_candidate:
      - restrict to privileged operational use initially
    notes:
      - because record_type and record_id are polymorphic
      - general end-user read may be delayed or narrowed

  closed_order_note:
    read_rule:
      - closed rows remain readable inside same company scope
    write_note:
      - read visibility does not imply write permission

read_design_rules:
  - prefer simple company-scope rules first
  - use parent-order existence checks for order-scoped tables
  - avoid complex role branching in first RLS pass where app layer already handles most role logic


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/100.security/1000006_ORDER_FLOW_RLS_POLICY_CANDIDATE_READ.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/100.security/1000007_ORDER_FLOW_RLS_POLICY_CANDIDATE_WRITE.md -->
# ============================================================
# ORDER FLOW RLS POLICY CANDIDATE WRITE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
Defines write-side RLS policy candidates for OrderFlow.

write_policy_candidates:

  general_insert_rule:
    rule:
      - inserted row must belong to session company scope directly or through valid parent order
    forbidden:
      - inserting child rows linked to foreign-company parent order

  general_update_rule:
    rule:
      - update allowed only inside session company scope
    additional_expectation:
      - app layer enforces business-role and state-transition rules
    note:
      - DB layer is primarily tenant isolation layer in first pass

  general_delete_rule:
    default:
      - no ordinary delete from end-user path
    note:
      - append/history style preferred
      - destructive deletes are not part of normal business operations

  order_record:
    insert_rule:
      - company_id must equal session company scope
    update_rule:
      - only same-company rows
    delete_rule:
      - deny by default for user path

  order_scoped_child_tables:
    insert_update_rule:
      - allow only when parent order belongs to session company scope
    delete_rule:
      - deny by default for user path
    tables:
      - order_line_item
      - order_customer_snapshot
      - order_source_estimate_link
      - order_status_record
      - order_inventory_check_record
      - order_supply_status_record
      - order_lead_time_record
      - delivery_schedule_calculation_record
      - delivery_schedule_candidate
      - delivery_schedule_confirmed_record
      - customer_delivery_proposal_record
      - customer_delivery_response_record
      - shipment_request_record
      - shipment_request_line
      - shipment_request_result
      - shipment_execution_record
      - shipment_request_status_history
      - delivery_confirmation_record
      - delivery_confirmation_line
      - order_history_entry
      - order_audit_log
      - order_pending_operation

  notification_event_record:
    insert_update_rule:
      - allow only within same company scope
    delete_rule:
      - deny by default for user path

  order_sync_state:
    write_rule_candidate:
      - privileged operational path only in first pass
    note:
      - sync/system visibility may be better handled by service role or controlled backend function

write_design_rules:
  - tenant isolation first
  - business workflow protection mostly at app/service layer in first pass
  - deny ordinary deletes
  - keep privileged/system-write paths explicit


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/100.security/1000007_ORDER_FLOW_RLS_POLICY_CANDIDATE_WRITE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100001_ORDER_FLOW_TABLE_CANDIDATE_ORDER_CORE.md -->
# ============================================================
# ORDER FLOW TABLE CANDIDATE ORDER CORE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact candidate tables for order core storage.

table_candidates:

  order_record:
    role:
      - top-level order anchor
    key_columns:
      - order_id
      - company_id
      - order_number
      - order_source_type
      - order_state
      - customer_id_or_local_ref
      - order_date
      - requested_delivery_date
      - internally_promised_date
      - customer_confirmed_date
      - currency_code
      - subtotal_amount
      - tax_amount
      - total_amount
      - source_estimate_exists
      - cancel_reason
      - closed_at
      - closed_by
      - created_by
      - created_at
      - updated_at
    notes:
      - one row per order
      - overall business state is stored here

  order_line_item:
    role:
      - ordered line scope
    key_columns:
      - order_line_id
      - order_id
      - line_no
      - item_ref_or_local_code
      - item_name_snapshot
      - ordered_quantity
      - unit_of_measure
      - unit_price_amount
      - currency_code
      - line_subtotal_amount
      - line_state
      - requested_ship_scope_note
      - customer_line_note
      - internal_line_note
      - source_estimate_line_id
      - created_at
      - updated_at
    notes:
      - one order has many lines
      - line state may diverge from order state

  order_customer_snapshot:
    role:
      - fixed customer/business party snapshot
    key_columns:
      - order_customer_snapshot_id
      - order_id
      - customer_name_snapshot
      - customer_display_name_snapshot
      - billing_name_snapshot
      - shipping_name_snapshot
      - contact_person_snapshot
      - contact_email_snapshot
      - contact_phone_snapshot
      - billing_address_snapshot
      - shipping_address_snapshot
      - department_snapshot
      - destination_note_snapshot
      - locale_snapshot
      - customer_code_snapshot
      - snapshot_taken_at
    notes:
      - snapshot survives later master changes

  order_source_estimate_link:
    role:
      - source estimate traceability
    key_columns:
      - order_source_estimate_link_id
      - order_id
      - source_estimate_id
      - source_estimate_number_snapshot
      - source_estimate_version
      - source_estimate_title_snapshot
      - handoff_type
      - handoff_note
      - snapshot_taken_at
      - linked_by
    notes:
      - optional only for standalone orders
      - never reuse estimate_id as order_id

  order_status_record:
    role:
      - explicit order state transition history
    key_columns:
      - order_status_record_id
      - order_id
      - previous_order_state
      - new_order_state
      - changed_by
      - changed_at
      - change_reason_type
      - change_reason_note
      - related_record_type
      - related_record_id
    notes:
      - complements broader timeline/history storage

design_rules:
  - order_record is the business anchor
  - line, snapshot, and estimate traceability are separated intentionally
  - currency context must exist at order and line levels


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100001_ORDER_FLOW_TABLE_CANDIDATE_ORDER_CORE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100002_ORDER_FLOW_TABLE_CANDIDATE_EXECUTION_AND_SCHEDULE.md -->
# ============================================================
# ORDER FLOW TABLE CANDIDATE EXECUTION AND SCHEDULE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact candidate tables for inventory, supply,
lead time, and delivery scheduling.

table_candidates:

  order_inventory_check_record:
    role:
      - fulfillment-context inventory check history
    key_columns:
      - order_inventory_check_record_id
      - order_id
      - inventory_status
      - freshness_type
      - inventory_source_type
      - source_system_name
      - source_reference_id
      - summary_note
      - checked_at
      - checked_by

  order_supply_status_record:
    role:
      - supply interpretation history
    key_columns:
      - order_supply_status_record_id
      - order_id
      - supply_status_type
      - expected_replenishment_date
      - supply_note
      - recorded_at
      - recorded_by

  order_lead_time_record:
    role:
      - lead time calculation result history
    key_columns:
      - order_lead_time_record_id
      - order_id
      - lead_time_days
      - lead_time_basis_type
      - lead_time_note
      - source_inventory_check_record_id
      - source_supply_status_record_id
      - calculated_at
      - calculated_by

  delivery_schedule_calculation_record:
    role:
      - one delivery candidate calculation session
    key_columns:
      - delivery_schedule_calculation_record_id
      - order_id
      - calculation_basis_summary
      - source_lead_time_record_id
      - source_inventory_check_record_id
      - calculation_note
      - calculated_at
      - calculated_by

  delivery_schedule_candidate:
    role:
      - individual candidate delivery date or range
    key_columns:
      - delivery_schedule_candidate_id
      - order_id
      - delivery_schedule_calculation_record_id
      - candidate_type
      - candidate_label
      - candidate_start_date
      - candidate_end_date
      - confidence_type
      - basis_note
      - rank_order
      - proposal_ready_flag
      - generated_at
      - generated_by

  delivery_schedule_confirmed_record:
    role:
      - internal execution-side confirmed schedule basis
    key_columns:
      - delivery_schedule_confirmed_record_id
      - order_id
      - source_candidate_id
      - confirmed_date_or_start
      - confirmed_end_date
      - confirmation_basis_type
      - confirmation_note
      - confirmed_at
      - confirmed_by

design_rules:
  - raw inventory check and supply interpretation are separate
  - lead time and delivery calculation are separate
  - one calculation session may produce multiple candidates
  - internal confirmed schedule is distinct from customer proposal acceptance


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100002_ORDER_FLOW_TABLE_CANDIDATE_EXECUTION_AND_SCHEDULE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100003_ORDER_FLOW_TABLE_CANDIDATE_SHIPMENT_DELIVERY.md -->
# ============================================================
# ORDER FLOW TABLE CANDIDATE SHIPMENT DELIVERY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact candidate tables for proposal, shipment,
delivery confirmation, and closure-facing fulfillment tracking.

table_candidates:

  customer_delivery_proposal_record:
    role:
      - formal proposal history toward customer
    key_columns:
      - customer_delivery_proposal_record_id
      - order_id
      - source_candidate_id
      - proposal_date_or_start
      - proposal_end_date
      - proposal_note
      - proposal_channel_type
      - proposal_status
      - recorded_at
      - recorded_by

  customer_delivery_response_record:
    role:
      - customer answer history
    key_columns:
      - customer_delivery_response_record_id
      - order_id
      - customer_delivery_proposal_record_id
      - response_type
      - response_date
      - operator_note
      - recorded_at
      - recorded_by

  shipment_request_record:
    role:
      - top-level shipment request
    key_columns:
      - shipment_request_record_id
      - order_id
      - shipment_request_number
      - shipment_status
      - request_scope_type
      - requested_ship_date
      - warehouse_or_execution_target_ref
      - shipment_instruction_note
      - rejection_reason
      - requested_at
      - requested_by

  shipment_request_line:
    role:
      - requested shipment scope per order line
    key_columns:
      - shipment_request_line_id
      - shipment_request_record_id
      - order_line_id
      - requested_quantity
      - unit_of_measure
      - allocation_note
      - partial_reason

  shipment_request_result:
    role:
      - downstream request answer history
    key_columns:
      - shipment_request_result_id
      - shipment_request_record_id
      - result_type
      - result_note
      - external_reference_id
      - result_recorded_at
      - result_recorded_by

  shipment_execution_record:
    role:
      - actual shipment execution visibility
    key_columns:
      - shipment_execution_record_id
      - shipment_request_record_id
      - shipment_execution_date
      - shipment_execution_scope_type
      - carrier_name_snapshot
      - tracking_number_snapshot
      - shipment_note
      - recorded_at
      - recorded_by

  shipment_request_status_history:
    role:
      - shipment request status transition history
    key_columns:
      - shipment_request_status_history_id
      - shipment_request_record_id
      - previous_shipment_status
      - new_shipment_status
      - changed_at
      - changed_by
      - change_note
      - related_execution_record_id

  delivery_confirmation_record:
    role:
      - top-level delivery confirmation record
    key_columns:
      - delivery_confirmation_record_id
      - order_id
      - delivery_status
      - confirmation_date
      - customer_receipt_note
      - delivery_issue_note
      - delivery_evidence_ref
      - confirmed_by
      - confirmed_at

  delivery_confirmation_line:
    role:
      - delivered scope by order line
    key_columns:
      - delivery_confirmation_line_id
      - delivery_confirmation_record_id
      - order_line_id
      - confirmed_delivered_quantity
      - unit_of_measure
      - line_delivery_note
      - short_delivery_reason

design_rules:
  - proposal and response are separate
  - request, request result, and execution are separate
  - delivery confirmation top-level and line-level are separate
  - partial fulfillment must remain reconstructable from stored rows


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100003_ORDER_FLOW_TABLE_CANDIDATE_SHIPMENT_DELIVERY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100004_ORDER_FLOW_TABLE_CANDIDATE_HISTORY_NOTIFICATION_SYNC.md -->
# ============================================================
# ORDER FLOW TABLE CANDIDATE HISTORY NOTIFICATION SYNC
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact candidate tables for history, audit-facing visibility,
notifications, and sync/pending-operation support.

table_candidates:

  order_history_entry:
    role:
      - timeline-friendly business history
    key_columns:
      - order_history_entry_id
      - order_id
      - history_entry_type
      - occurred_at
      - actor_display_name
      - history_label
      - history_detail_text
      - related_record_type
      - related_record_id

  order_audit_log:
    role:
      - audit-facing readable event log
    key_columns:
      - order_audit_log_id
      - order_id
      - audit_event_type
      - actor_ref
      - occurred_at
      - summary_text
      - previous_value_summary
      - new_value_summary
      - related_record_type
      - related_record_id

  notification_event_record:
    role:
      - operator-facing reminders and alerts
    key_columns:
      - notification_event_id
      - company_id
      - order_id
      - notification_event_type
      - notification_level
      - notification_title
      - notification_message
      - event_occurred_at
      - read_state
      - related_record_type
      - related_record_id
      - due_at
      - actor_ref
      - assigned_actor_ref
      - resolved_at
      - resolved_by
      - resolution_note

  order_sync_state:
    role:
      - sync visibility per local record
    key_columns:
      - order_sync_state_id
      - record_type
      - record_id
      - sync_state_type
      - target_system_name
      - recorded_at
      - last_attempt_at
      - last_error_code
      - last_error_note

  order_pending_operation:
    role:
      - locally queued operation visibility
    key_columns:
      - order_pending_operation_id
      - order_id
      - operation_type
      - operation_scope_type
      - payload_reference
      - retry_count
      - current_pending_state
      - queued_at
      - last_attempt_at
      - last_error_note

candidate_index_notes:
  recommended_index_targets:
    - order_record(company_id, order_state, updated_at)
    - order_record(company_id, order_date)
    - order_record(company_id, requested_delivery_date)
    - order_line_item(order_id, line_no)
    - shipment_request_record(order_id, shipment_status, requested_at)
    - delivery_confirmation_record(order_id, confirmation_date)
    - order_history_entry(order_id, occurred_at)
    - notification_event_record(company_id, read_state, event_occurred_at)
    - notification_event_record(company_id, notification_event_type, notification_level)
    - order_sync_state(record_type, record_id)

design_rules:
  - history, audit, notification, and sync are intentionally separated
  - notification_event_record is action visibility, not audit replacement
  - sync visibility must remain queryable without reading full history


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100004_ORDER_FLOW_TABLE_CANDIDATE_HISTORY_NOTIFICATION_SYNC.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100005_ORDER_FLOW_TABLE_RELATIONSHIP_OVERVIEW.md -->
# ============================================================
# ORDER FLOW TABLE RELATIONSHIP OVERVIEW
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines high-level table relationships before DDL exact work.

relationship_overview:

  order_record:
    has_many:
      - order_line_item
      - order_status_record
      - order_inventory_check_record
      - order_supply_status_record
      - order_lead_time_record
      - delivery_schedule_calculation_record
      - delivery_schedule_candidate
      - delivery_schedule_confirmed_record
      - customer_delivery_proposal_record
      - customer_delivery_response_record
      - shipment_request_record
      - delivery_confirmation_record
      - order_history_entry
      - order_audit_log
      - order_pending_operation
      - notification_event_record
    has_one_or_zero:
      - order_customer_snapshot
      - order_source_estimate_link

  delivery_schedule_calculation_record:
    has_many:
      - delivery_schedule_candidate

  customer_delivery_proposal_record:
    has_many:
      - customer_delivery_response_record

  shipment_request_record:
    has_many:
      - shipment_request_line
      - shipment_request_result
      - shipment_execution_record
      - shipment_request_status_history

  delivery_confirmation_record:
    has_many:
      - delivery_confirmation_line

relationship_design_rules:
  - order_record is the primary business anchor
  - child histories are append-oriented where possible
  - proposal and response stay separate
  - shipment request, result, execution, and status history stay separate
  - summary reconstruction should be possible from child tables


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100005_ORDER_FLOW_TABLE_RELATIONSHIP_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100006_ORDER_FLOW_FK_CANDIDATE_ORDER_AND_SCHEDULE.md -->
# ============================================================
# ORDER FLOW FK CANDIDATE ORDER AND SCHEDULE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines foreign key candidates for order core and schedule-side tables.

fk_candidates:

  order_line_item:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  order_customer_snapshot:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  order_source_estimate_link:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  order_status_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  order_inventory_check_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  order_supply_status_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  order_lead_time_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id
      - source_inventory_check_record_id -> order_inventory_check_record.order_inventory_check_record_id
      - source_supply_status_record_id -> order_supply_status_record.order_supply_status_record_id

  delivery_schedule_calculation_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id
      - source_lead_time_record_id -> order_lead_time_record.order_lead_time_record_id
      - source_inventory_check_record_id -> order_inventory_check_record.order_inventory_check_record_id

  delivery_schedule_candidate:
    candidate_foreign_keys:
      - order_id -> order_record.order_id
      - delivery_schedule_calculation_record_id -> delivery_schedule_calculation_record.delivery_schedule_calculation_record_id

  delivery_schedule_confirmed_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id
      - source_candidate_id -> delivery_schedule_candidate.delivery_schedule_candidate_id

fk_design_notes:
  - source_* references may be nullable where recalculation history is partial
  - order-level FK is the baseline relationship in all schedule-side tables
  - estimate-side external IDs are traceability refs, not DB FKs in this app scope


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100006_ORDER_FLOW_FK_CANDIDATE_ORDER_AND_SCHEDULE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100007_ORDER_FLOW_FK_CANDIDATE_SHIPMENT_AND_DELIVERY.md -->
# ============================================================
# ORDER FLOW FK CANDIDATE SHIPMENT AND DELIVERY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines foreign key candidates for proposal, shipment, and delivery tables.

fk_candidates:

  customer_delivery_proposal_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id
      - source_candidate_id -> delivery_schedule_candidate.delivery_schedule_candidate_id

  customer_delivery_response_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id
      - customer_delivery_proposal_record_id -> customer_delivery_proposal_record.customer_delivery_proposal_record_id

  shipment_request_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  shipment_request_line:
    candidate_foreign_keys:
      - shipment_request_record_id -> shipment_request_record.shipment_request_record_id
      - order_line_id -> order_line_item.order_line_id

  shipment_request_result:
    candidate_foreign_keys:
      - shipment_request_record_id -> shipment_request_record.shipment_request_record_id

  shipment_execution_record:
    candidate_foreign_keys:
      - shipment_request_record_id -> shipment_request_record.shipment_request_record_id

  shipment_request_status_history:
    candidate_foreign_keys:
      - shipment_request_record_id -> shipment_request_record.shipment_request_record_id
      - related_execution_record_id -> shipment_execution_record.shipment_execution_record_id

  delivery_confirmation_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  delivery_confirmation_line:
    candidate_foreign_keys:
      - delivery_confirmation_record_id -> delivery_confirmation_record.delivery_confirmation_record_id
      - order_line_id -> order_line_item.order_line_id

fk_design_notes:
  - proposal response binds to both order and proposal for safe traceability
  - shipment_request_line is the key bridge from request to ordered scope
  - delivery_confirmation_line binds delivered scope back to original line item


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100007_ORDER_FLOW_FK_CANDIDATE_SHIPMENT_AND_DELIVERY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100008_ORDER_FLOW_FK_CANDIDATE_HISTORY_NOTIFICATION_SYNC.md -->
# ============================================================
# ORDER FLOW FK CANDIDATE HISTORY NOTIFICATION SYNC
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines foreign key candidates for history, audit, notification,
and sync/pending-operation tables.

fk_candidates:

  order_history_entry:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  order_audit_log:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  notification_event_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  order_pending_operation:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  order_sync_state:
    candidate_foreign_keys:
      - no_strict_single_fk
    note:
      - record_type + record_id is a polymorphic local reference pattern

polymorphic_reference_notes:
  related_record_type_and_id_pairs_may_point_to:
    - order_status_record
    - order_inventory_check_record
    - order_lead_time_record
    - delivery_schedule_candidate
    - customer_delivery_proposal_record
    - customer_delivery_response_record
    - shipment_request_record
    - shipment_request_result
    - shipment_execution_record
    - delivery_confirmation_record

design_rules:
  - timeline and audit tables keep order_id as main anchor
  - related_record_type / related_record_id is intentionally soft-linked
  - order_sync_state remains polymorphic by design for cross-record sync visibility
  - notification_event_record should stay simple enough for fast querying


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100008_ORDER_FLOW_FK_CANDIDATE_HISTORY_NOTIFICATION_SYNC.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100009_ORDER_FLOW_DDL_DRAFT_ORDER_CORE.md -->
# ============================================================
# ORDER FLOW DDL DRAFT ORDER CORE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
DDL draft for order core tables.

~~~sql
create table if not exists order_record (
  order_id uuid primary key,
  company_id uuid not null,
  order_number text not null,
  order_source_type text not null,
  order_state text not null,
  customer_id_or_local_ref text,
  order_date date not null,
  requested_delivery_date date,
  internally_promised_date date,
  customer_confirmed_date date,
  currency_code text not null,
  subtotal_amount numeric(18,2) not null default 0,
  tax_amount numeric(18,2) not null default 0,
  total_amount numeric(18,2) not null default 0,
  source_estimate_exists boolean not null default false,
  cancel_reason text,
  closed_at timestamptz,
  closed_by uuid,
  created_by uuid not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint chk_order_source_type
    check (order_source_type in ('from_estimate','standalone')),
  constraint chk_order_state
    check (order_state in (
      'draft','confirmed','inventory_checked','delivery_date_calculated',
      'customer_proposed','customer_confirmed','shipment_requested',
      'shipped','delivered','closed','canceled'
    )),
  constraint chk_order_currency_code
    check (char_length(currency_code) between 3 and 10)
);

create unique index if not exists idx_order_record_company_order_number
  on order_record(company_id, order_number);

create index if not exists idx_order_record_company_state_updated
  on order_record(company_id, order_state, updated_at desc);

create index if not exists idx_order_record_company_order_date
  on order_record(company_id, order_date desc);

create index if not exists idx_order_record_company_requested_delivery_date
  on order_record(company_id, requested_delivery_date);

create table if not exists order_line_item (
  order_line_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  line_no integer not null,
  item_ref_or_local_code text,
  item_name_snapshot text not null,
  ordered_quantity numeric(18,4) not null,
  unit_of_measure text not null,
  unit_price_amount numeric(18,2) not null default 0,
  currency_code text not null,
  line_subtotal_amount numeric(18,2) not null default 0,
  line_state text not null,
  requested_ship_scope_note text,
  customer_line_note text,
  internal_line_note text,
  source_estimate_line_id uuid,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint chk_order_line_quantity
    check (ordered_quantity > 0),
  constraint chk_order_line_state
    check (line_state in (
      'open','partially_allocated','ready_for_shipment','partially_shipped',
      'shipped','partially_delivered','delivered','closed','canceled'
    )),
  constraint chk_order_line_currency_code
    check (char_length(currency_code) between 3 and 10)
);

create unique index if not exists idx_order_line_item_order_line_no
  on order_line_item(order_id, line_no);

create index if not exists idx_order_line_item_order_id
  on order_line_item(order_id);

create table if not exists order_customer_snapshot (
  order_customer_snapshot_id uuid primary key,
  order_id uuid not null unique references order_record(order_id) on delete cascade,
  customer_name_snapshot text not null,
  customer_display_name_snapshot text,
  billing_name_snapshot text,
  shipping_name_snapshot text,
  contact_person_snapshot text,
  contact_email_snapshot text,
  contact_phone_snapshot text,
  billing_address_snapshot text,
  shipping_address_snapshot text,
  department_snapshot text,
  destination_note_snapshot text,
  locale_snapshot text,
  customer_code_snapshot text,
  snapshot_taken_at timestamptz not null default now()
);

create index if not exists idx_order_customer_snapshot_order_id
  on order_customer_snapshot(order_id);

create table if not exists order_source_estimate_link (
  order_source_estimate_link_id uuid primary key,
  order_id uuid not null unique references order_record(order_id) on delete cascade,
  source_estimate_id uuid not null,
  source_estimate_number_snapshot text not null,
  source_estimate_version text,
  source_estimate_title_snapshot text,
  handoff_type text not null,
  handoff_note text,
  snapshot_taken_at timestamptz not null default now(),
  linked_by uuid not null,
  constraint chk_handoff_type
    check (handoff_type in ('copy','deeplink_copy','internal_create_from_estimate'))
);

create index if not exists idx_order_source_estimate_link_source_estimate_id
  on order_source_estimate_link(source_estimate_id);

create table if not exists order_status_record (
  order_status_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  previous_order_state text,
  new_order_state text not null,
  changed_by uuid not null,
  changed_at timestamptz not null default now(),
  change_reason_type text not null,
  change_reason_note text,
  related_record_type text,
  related_record_id uuid
);

create index if not exists idx_order_status_record_order_changed_at
  on order_status_record(order_id, changed_at desc);
~~~

notes:
- exact schema name is intentionally not fixed yet
- trigger/update policy is intentionally deferred

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100009_ORDER_FLOW_DDL_DRAFT_ORDER_CORE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100010_ORDER_FLOW_DDL_DRAFT_EXECUTION_AND_SCHEDULE.md -->
# ============================================================
# ORDER FLOW DDL DRAFT EXECUTION AND SCHEDULE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
DDL draft for inventory, supply, lead time, and schedule tables.

~~~sql
create table if not exists order_inventory_check_record (
  order_inventory_check_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  inventory_status text not null,
  freshness_type text not null,
  inventory_source_type text not null,
  source_system_name text,
  source_reference_id text,
  summary_note text,
  checked_at timestamptz not null default now(),
  checked_by uuid not null,
  constraint chk_inventory_status
    check (inventory_status in (
      'not_checked','available','partially_available','unavailable',
      'replenishment_required','stale'
    )),
  constraint chk_freshness_type
    check (freshness_type in ('fresh','cached','stale','unknown')),
  constraint chk_inventory_source_type
    check (inventory_source_type in (
      'erp','app_local','external_reference','manual_confirmation'
    ))
);

create index if not exists idx_order_inventory_check_record_order_checked_at
  on order_inventory_check_record(order_id, checked_at desc);

create table if not exists order_supply_status_record (
  order_supply_status_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  supply_status_type text not null,
  expected_replenishment_date date,
  supply_note text,
  recorded_at timestamptz not null default now(),
  recorded_by uuid not null,
  constraint chk_supply_status_type
    check (supply_status_type in (
      'immediately_fulfillable','partially_fulfillable',
      'waiting_replenishment','uncertain','blocked'
    ))
);

create index if not exists idx_order_supply_status_record_order_recorded_at
  on order_supply_status_record(order_id, recorded_at desc);

create table if not exists order_lead_time_record (
  order_lead_time_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  lead_time_days integer not null,
  lead_time_basis_type text not null,
  lead_time_note text,
  source_inventory_check_record_id uuid references order_inventory_check_record(order_inventory_check_record_id),
  source_supply_status_record_id uuid references order_supply_status_record(order_supply_status_record_id),
  calculated_at timestamptz not null default now(),
  calculated_by uuid not null,
  constraint chk_lead_time_days
    check (lead_time_days >= 0),
  constraint chk_lead_time_basis_type
    check (lead_time_basis_type in (
      'stock_available','partial_stock_waiting_supply',
      'made_to_order','supplier_confirmation','manual_estimation'
    ))
);

create index if not exists idx_order_lead_time_record_order_calculated_at
  on order_lead_time_record(order_id, calculated_at desc);

create table if not exists delivery_schedule_calculation_record (
  delivery_schedule_calculation_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  calculation_basis_summary text not null,
  source_lead_time_record_id uuid references order_lead_time_record(order_lead_time_record_id),
  source_inventory_check_record_id uuid references order_inventory_check_record(order_inventory_check_record_id),
  calculation_note text,
  calculated_at timestamptz not null default now(),
  calculated_by uuid not null
);

create index if not exists idx_delivery_schedule_calc_record_order_calculated_at
  on delivery_schedule_calculation_record(order_id, calculated_at desc);

create table if not exists delivery_schedule_candidate (
  delivery_schedule_candidate_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  delivery_schedule_calculation_record_id uuid not null references delivery_schedule_calculation_record(delivery_schedule_calculation_record_id) on delete cascade,
  candidate_type text not null,
  candidate_label text not null,
  candidate_start_date date not null,
  candidate_end_date date not null,
  confidence_type text not null,
  basis_note text,
  rank_order integer,
  proposal_ready_flag boolean not null default false,
  generated_at timestamptz not null default now(),
  generated_by uuid not null,
  constraint chk_candidate_type
    check (candidate_type in ('single_date','date_range')),
  constraint chk_confidence_type
    check (confidence_type in ('high','medium','low','manual')),
  constraint chk_candidate_date_range
    check (candidate_end_date >= candidate_start_date)
);

create index if not exists idx_delivery_schedule_candidate_order_rank
  on delivery_schedule_candidate(order_id, rank_order, generated_at desc);

create table if not exists delivery_schedule_confirmed_record (
  delivery_schedule_confirmed_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  source_candidate_id uuid references delivery_schedule_candidate(delivery_schedule_candidate_id),
  confirmed_date_or_start date not null,
  confirmed_end_date date not null,
  confirmation_basis_type text not null,
  confirmation_note text,
  confirmed_at timestamptz not null default now(),
  confirmed_by uuid not null,
  constraint chk_confirmed_date_range
    check (confirmed_end_date >= confirmed_date_or_start)
);

create index if not exists idx_delivery_schedule_confirmed_record_order_confirmed_at
  on delivery_schedule_confirmed_record(order_id, confirmed_at desc);
~~~

notes:
- internal confirmed schedule remains separate from customer response

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100010_ORDER_FLOW_DDL_DRAFT_EXECUTION_AND_SCHEDULE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100011_ORDER_FLOW_DDL_DRAFT_SHIPMENT_AND_DELIVERY.md -->
# ============================================================
# ORDER FLOW DDL DRAFT SHIPMENT AND DELIVERY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
DDL draft for proposal, shipment, and delivery tables.

~~~sql
create table if not exists customer_delivery_proposal_record (
  customer_delivery_proposal_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  source_candidate_id uuid references delivery_schedule_candidate(delivery_schedule_candidate_id),
  proposal_date_or_start date not null,
  proposal_end_date date not null,
  proposal_note text,
  proposal_channel_type text not null,
  proposal_status text not null,
  recorded_at timestamptz not null default now(),
  recorded_by uuid not null,
  constraint chk_proposal_date_range
    check (proposal_end_date >= proposal_date_or_start),
  constraint chk_proposal_channel_type
    check (proposal_channel_type in (
      'manual_internal_record','phone_record','email_record','in_person_record'
    )),
  constraint chk_proposal_status
    check (proposal_status in (
      'not_proposed','proposed','revision_requested','accepted','rejected'
    ))
);

create index if not exists idx_customer_delivery_proposal_record_order_recorded_at
  on customer_delivery_proposal_record(order_id, recorded_at desc);

create table if not exists customer_delivery_response_record (
  customer_delivery_response_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  customer_delivery_proposal_record_id uuid not null references customer_delivery_proposal_record(customer_delivery_proposal_record_id) on delete cascade,
  response_type text not null,
  response_date date not null,
  operator_note text,
  recorded_at timestamptz not null default now(),
  recorded_by uuid not null,
  constraint chk_response_type
    check (response_type in ('accepted','rejected','revision_requested'))
);

create index if not exists idx_customer_delivery_response_record_order_recorded_at
  on customer_delivery_response_record(order_id, recorded_at desc);

create table if not exists shipment_request_record (
  shipment_request_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  shipment_request_number text not null,
  shipment_status text not null,
  request_scope_type text not null,
  requested_ship_date date,
  warehouse_or_execution_target_ref text,
  shipment_instruction_note text,
  rejection_reason text,
  requested_at timestamptz not null default now(),
  requested_by uuid not null,
  constraint chk_shipment_status
    check (shipment_status in (
      'not_requested','requested','accepted','rejected',
      'partially_shipped','shipped'
    )),
  constraint chk_request_scope_type
    check (request_scope_type in ('full_order','partial_order','selected_lines'))
);

create unique index if not exists idx_shipment_request_record_number
  on shipment_request_record(shipment_request_number);

create index if not exists idx_shipment_request_record_order_requested_at
  on shipment_request_record(order_id, requested_at desc);

create table if not exists shipment_request_line (
  shipment_request_line_id uuid primary key,
  shipment_request_record_id uuid not null references shipment_request_record(shipment_request_record_id) on delete cascade,
  order_line_id uuid not null references order_line_item(order_line_id),
  requested_quantity numeric(18,4) not null,
  unit_of_measure text not null,
  allocation_note text,
  partial_reason text,
  constraint chk_requested_quantity
    check (requested_quantity > 0)
);

create index if not exists idx_shipment_request_line_request_id
  on shipment_request_line(shipment_request_record_id);

create table if not exists shipment_request_result (
  shipment_request_result_id uuid primary key,
  shipment_request_record_id uuid not null references shipment_request_record(shipment_request_record_id) on delete cascade,
  result_type text not null,
  result_note text,
  external_reference_id text,
  result_recorded_at timestamptz not null default now(),
  result_recorded_by uuid not null,
  constraint chk_result_type
    check (result_type in ('accepted','rejected','partially_accepted','pending_response'))
);

create index if not exists idx_shipment_request_result_request_recorded_at
  on shipment_request_result(shipment_request_record_id, result_recorded_at desc);

create table if not exists shipment_execution_record (
  shipment_execution_record_id uuid primary key,
  shipment_request_record_id uuid not null references shipment_request_record(shipment_request_record_id) on delete cascade,
  shipment_execution_date date not null,
  shipment_execution_scope_type text not null,
  carrier_name_snapshot text,
  tracking_number_snapshot text,
  shipment_note text,
  recorded_at timestamptz not null default now(),
  recorded_by uuid not null,
  constraint chk_shipment_execution_scope_type
    check (shipment_execution_scope_type in ('full_request','partial_request','selected_lines'))
);

create index if not exists idx_shipment_execution_record_request_execution_date
  on shipment_execution_record(shipment_request_record_id, shipment_execution_date desc);

create table if not exists shipment_request_status_history (
  shipment_request_status_history_id uuid primary key,
  shipment_request_record_id uuid not null references shipment_request_record(shipment_request_record_id) on delete cascade,
  previous_shipment_status text,
  new_shipment_status text not null,
  changed_at timestamptz not null default now(),
  changed_by uuid not null,
  change_note text,
  related_execution_record_id uuid references shipment_execution_record(shipment_execution_record_id)
);

create index if not exists idx_shipment_request_status_history_request_changed_at
  on shipment_request_status_history(shipment_request_record_id, changed_at desc);

create table if not exists delivery_confirmation_record (
  delivery_confirmation_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  delivery_status text not null,
  confirmation_date date not null,
  customer_receipt_note text,
  delivery_issue_note text,
  delivery_evidence_ref text,
  confirmed_by uuid not null,
  confirmed_at timestamptz not null default now(),
  constraint chk_delivery_status
    check (delivery_status in (
      'not_confirmed','partially_delivered','delivered','delivery_confirmed'
    ))
);

create index if not exists idx_delivery_confirmation_record_order_confirmation_date
  on delivery_confirmation_record(order_id, confirmation_date desc);

create table if not exists delivery_confirmation_line (
  delivery_confirmation_line_id uuid primary key,
  delivery_confirmation_record_id uuid not null references delivery_confirmation_record(delivery_confirmation_record_id) on delete cascade,
  order_line_id uuid not null references order_line_item(order_line_id),
  confirmed_delivered_quantity numeric(18,4) not null,
  unit_of_measure text not null,
  line_delivery_note text,
  short_delivery_reason text,
  constraint chk_confirmed_delivered_quantity
    check (confirmed_delivered_quantity > 0)
);

create index if not exists idx_delivery_confirmation_line_confirmation_id
  on delivery_confirmation_line(delivery_confirmation_record_id);
~~~

notes:
- partial handling is reconstructed through request_line and confirmation_line rows

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100011_ORDER_FLOW_DDL_DRAFT_SHIPMENT_AND_DELIVERY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100012_ORDER_FLOW_DDL_DRAFT_HISTORY_NOTIFICATION_SYNC.md -->
# ============================================================
# ORDER FLOW DDL DRAFT HISTORY NOTIFICATION SYNC
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
DDL draft for history, audit-facing visibility, notifications, and sync support.

~~~sql
create table if not exists order_history_entry (
  order_history_entry_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  history_entry_type text not null,
  occurred_at timestamptz not null default now(),
  actor_display_name text not null,
  history_label text not null,
  history_detail_text text,
  related_record_type text,
  related_record_id uuid
);

create index if not exists idx_order_history_entry_order_occurred_at
  on order_history_entry(order_id, occurred_at desc);

create table if not exists order_audit_log (
  order_audit_log_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  audit_event_type text not null,
  actor_ref uuid not null,
  occurred_at timestamptz not null default now(),
  summary_text text not null,
  previous_value_summary text,
  new_value_summary text,
  related_record_type text,
  related_record_id uuid
);

create index if not exists idx_order_audit_log_order_occurred_at
  on order_audit_log(order_id, occurred_at desc);

create table if not exists notification_event_record (
  notification_event_id uuid primary key,
  company_id uuid not null,
  order_id uuid not null references order_record(order_id) on delete cascade,
  notification_event_type text not null,
  notification_level text not null,
  notification_title text not null,
  notification_message text not null,
  event_occurred_at timestamptz not null default now(),
  read_state text not null default 'unread',
  related_record_type text,
  related_record_id uuid,
  due_at timestamptz,
  actor_ref uuid,
  assigned_actor_ref uuid,
  resolved_at timestamptz,
  resolved_by uuid,
  resolution_note text,
  constraint chk_notification_event_type
    check (notification_event_type in (
      'customer_response_waiting','shipment_request_waiting',
      'shipment_request_rejected','delivery_confirmation_waiting',
      'order_overdue','proposal_overdue','shipment_overdue',
      'delivery_overdue','sync_failed','sync_pending_too_long',
      'manual_attention_required'
    )),
  constraint chk_notification_level
    check (notification_level in ('info','warning','critical')),
  constraint chk_notification_read_state
    check (read_state in ('unread','read','resolved'))
);

create index if not exists idx_notification_event_record_company_read_occurred
  on notification_event_record(company_id, read_state, event_occurred_at desc);

create index if not exists idx_notification_event_record_company_type_level
  on notification_event_record(company_id, notification_event_type, notification_level);

create table if not exists order_sync_state (
  order_sync_state_id uuid primary key,
  record_type text not null,
  record_id uuid not null,
  sync_state_type text not null,
  target_system_name text,
  recorded_at timestamptz not null default now(),
  last_attempt_at timestamptz,
  last_error_code text,
  last_error_note text,
  constraint chk_sync_state_type
    check (sync_state_type in ('local_only','pending','synced','failed','retry_required'))
);

create index if not exists idx_order_sync_state_record_type_record_id
  on order_sync_state(record_type, record_id);

create table if not exists order_pending_operation (
  order_pending_operation_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  operation_type text not null,
  operation_scope_type text not null,
  payload_reference text,
  retry_count integer not null default 0,
  current_pending_state text not null,
  queued_at timestamptz not null default now(),
  last_attempt_at timestamptz,
  last_error_note text,
  constraint chk_operation_type
    check (operation_type in (
      'create_order','update_order','send_shipment_request',
      'record_shipment_execution','record_delivery_confirmation','sync_to_erp'
    )),
  constraint chk_operation_scope_type
    check (operation_scope_type in (
      'order_header','order_lines','shipment_request',
      'shipment_execution','delivery_confirmation'
    ))
);

create index if not exists idx_order_pending_operation_order_queued_at
  on order_pending_operation(order_id, queued_at desc);
~~~

notes:
- related_record_type / related_record_id stays soft-linked by design
- sync visibility remains polymorphic by design

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100012_ORDER_FLOW_DDL_DRAFT_HISTORY_NOTIFICATION_SYNC.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100013_ORDER_FLOW_RLS_SQL_DRAFT.md -->
# ============================================================
# ORDER FLOW RLS SQL DRAFT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
Draft SQL skeleton for OrderFlow row-level security.
This is not final executable approval.
Session claim function names are placeholders and must be aligned later.

~~~sql
-- ------------------------------------------------------------
-- placeholder assumptions
-- ------------------------------------------------------------
-- app.current_company_id() returns uuid
-- app.is_privileged_ops() returns boolean

alter table order_record enable row level security;
alter table order_line_item enable row level security;
alter table order_customer_snapshot enable row level security;
alter table order_source_estimate_link enable row level security;
alter table order_status_record enable row level security;
alter table order_inventory_check_record enable row level security;
alter table order_supply_status_record enable row level security;
alter table order_lead_time_record enable row level security;
alter table delivery_schedule_calculation_record enable row level security;
alter table delivery_schedule_candidate enable row level security;
alter table delivery_schedule_confirmed_record enable row level security;
alter table customer_delivery_proposal_record enable row level security;
alter table customer_delivery_response_record enable row level security;
alter table shipment_request_record enable row level security;
alter table shipment_request_line enable row level security;
alter table shipment_request_result enable row level security;
alter table shipment_execution_record enable row level security;
alter table shipment_request_status_history enable row level security;
alter table delivery_confirmation_record enable row level security;
alter table delivery_confirmation_line enable row level security;
alter table order_history_entry enable row level security;
alter table order_audit_log enable row level security;
alter table notification_event_record enable row level security;
alter table order_pending_operation enable row level security;
alter table order_sync_state enable row level security;

create policy order_record_select_same_company
on order_record
for select
using (company_id = app.current_company_id());

create policy order_record_insert_same_company
on order_record
for insert
with check (company_id = app.current_company_id());

create policy order_record_update_same_company
on order_record
for update
using (company_id = app.current_company_id())
with check (company_id = app.current_company_id());

create policy notification_event_record_select_same_company
on notification_event_record
for select
using (company_id = app.current_company_id());

create policy notification_event_record_insert_same_company
on notification_event_record
for insert
with check (company_id = app.current_company_id());

create policy notification_event_record_update_same_company
on notification_event_record
for update
using (company_id = app.current_company_id())
with check (company_id = app.current_company_id());

create policy order_line_item_select_by_parent_order
on order_line_item
for select
using (
  exists (
    select 1
    from order_record o
    where o.order_id = order_line_item.order_id
      and o.company_id = app.current_company_id()
  )
);

create policy order_line_item_insert_by_parent_order
on order_line_item
for insert
with check (
  exists (
    select 1
    from order_record o
    where o.order_id = order_line_item.order_id
      and o.company_id = app.current_company_id()
  )
);

create policy order_line_item_update_by_parent_order
on order_line_item
for update
using (
  exists (
    select 1
    from order_record o
    where o.order_id = order_line_item.order_id
      and o.company_id = app.current_company_id()
  )
)
with check (
  exists (
    select 1
    from order_record o
    where o.order_id = order_line_item.order_id
      and o.company_id = app.current_company_id()
  )
);

-- same parent-order pattern should be expanded for:
-- order_customer_snapshot
-- order_source_estimate_link
-- order_status_record
-- order_inventory_check_record
-- order_supply_status_record
-- order_lead_time_record
-- delivery_schedule_calculation_record
-- delivery_schedule_candidate
-- delivery_schedule_confirmed_record
-- customer_delivery_proposal_record
-- customer_delivery_response_record
-- shipment_request_record
-- shipment_request_line
-- shipment_request_result
-- shipment_execution_record
-- shipment_request_status_history
-- delivery_confirmation_record
-- delivery_confirmation_line
-- order_history_entry
-- order_audit_log
-- order_pending_operation

create policy order_sync_state_select_privileged_only
on order_sync_state
for select
using (app.is_privileged_ops());

create policy order_sync_state_insert_privileged_only
on order_sync_state
for insert
with check (app.is_privileged_ops());

create policy order_sync_state_update_privileged_only
on order_sync_state
for update
using (app.is_privileged_ops())
with check (app.is_privileged_ops());

-- delete policies intentionally omitted for normal user path
~~~

notes:
- function names are placeholders
- exact auth claim mapping must be aligned with platform conventions
- this draft is review-first and execution-held

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100013_ORDER_FLOW_RLS_SQL_DRAFT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100014_ORDER_FLOW_MIGRATION_PACKAGING_OVERVIEW.md -->
# ============================================================
# ORDER FLOW MIGRATION PACKAGING OVERVIEW
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
Defines how OrderFlow database changes should be packaged into migrations.

packaging_principles:
  - additive only
  - review first
  - small bounded migration units
  - core tables before dependent tables
  - indexes packaged with owning table when practical
  - RLS after base tables exist
  - no destructive statements in initial pack

recommended_packaging_order:
  1:
    - order core tables
  2:
    - execution and scheduling tables
  3:
    - proposal, shipment, and delivery tables
  4:
    - history, notification, pending operation, sync tables
  5:
    - RLS and policy layer
  6:
    - optional seeds / test fixtures handled separately

important_notes:
  - migration packaging is still review-stage
  - exact schema prefix and migration numbering are intentionally deferred
  - no go-execution is implied by this document


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100014_ORDER_FLOW_MIGRATION_PACKAGING_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100015_ORDER_FLOW_MIGRATION_PHASE_PLAN.md -->
# ============================================================
# ORDER FLOW MIGRATION PHASE PLAN
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
Defines the recommended migration phase plan for OrderFlow.

migration_phase_plan:

  phase_1_order_core:
    includes:
      - order_record
      - order_line_item
      - order_customer_snapshot
      - order_source_estimate_link
      - order_status_record
    reason:
      - foundational anchor layer for all later tables

  phase_2_execution_and_schedule:
    includes:
      - order_inventory_check_record
      - order_supply_status_record
      - order_lead_time_record
      - delivery_schedule_calculation_record
      - delivery_schedule_candidate
      - delivery_schedule_confirmed_record
      - customer_delivery_proposal_record
      - customer_delivery_response_record
    reason:
      - execution planning depends on order core

  phase_3_shipment_and_delivery:
    includes:
      - shipment_request_record
      - shipment_request_line
      - shipment_request_result
      - shipment_execution_record
      - shipment_request_status_history
      - delivery_confirmation_record
      - delivery_confirmation_line
    reason:
      - downstream fulfillment depends on prior order and schedule layers

  phase_4_history_notification_sync:
    includes:
      - order_history_entry
      - order_audit_log
      - notification_event_record
      - order_pending_operation
      - order_sync_state
    reason:
      - support and operational visibility layer comes after primary business tables

  phase_5_rls:
    includes:
      - enable row level security
      - select / insert / update policy draft packaging
    reason:
      - policies should attach after structural layer exists

phase_design_rules:
  - each phase should be reviewable independently
  - each phase should be executable without destructive dependency on later phases
  - rollback thinking may be documented later, but initial packaging stays additive


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100015_ORDER_FLOW_MIGRATION_PHASE_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100016_ORDER_FLOW_MIGRATION_FILE_CANDIDATES.md -->
# ============================================================
# ORDER FLOW MIGRATION FILE CANDIDATES
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
Defines candidate migration file breakdown for OrderFlow.

migration_file_candidates:

  - candidate_file_name: 0001_order_flow_order_core.sql
    phase:
      - phase_1_order_core
    contains:
      - order_record
      - order_line_item
      - order_customer_snapshot
      - order_source_estimate_link
      - order_status_record

  - candidate_file_name: 0002_order_flow_execution_and_schedule.sql
    phase:
      - phase_2_execution_and_schedule
    contains:
      - order_inventory_check_record
      - order_supply_status_record
      - order_lead_time_record
      - delivery_schedule_calculation_record
      - delivery_schedule_candidate
      - delivery_schedule_confirmed_record
      - customer_delivery_proposal_record
      - customer_delivery_response_record

  - candidate_file_name: 0003_order_flow_shipment_and_delivery.sql
    phase:
      - phase_3_shipment_and_delivery
    contains:
      - shipment_request_record
      - shipment_request_line
      - shipment_request_result
      - shipment_execution_record
      - shipment_request_status_history
      - delivery_confirmation_record
      - delivery_confirmation_line

  - candidate_file_name: 0004_order_flow_history_notification_sync.sql
    phase:
      - phase_4_history_notification_sync
    contains:
      - order_history_entry
      - order_audit_log
      - notification_event_record
      - order_pending_operation
      - order_sync_state

  - candidate_file_name: 0005_order_flow_rls.sql
    phase:
      - phase_5_rls
    contains:
      - rls enable statements
      - select policies
      - insert policies
      - update policies

file_packaging_notes:
  - numbering is candidate only
  - exact timestamp or migration engine naming remains undecided
  - seeds and fixtures should not be mixed into structural migrations


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100016_ORDER_FLOW_MIGRATION_FILE_CANDIDATES.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100017_ORDER_FLOW_MIGRATION_EXECUTION_GUARD.md -->
# ============================================================
# ORDER FLOW MIGRATION EXECUTION GUARD
# ============================================================

status: hold-guard
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Explicit execution guard for future migration packaging.

execution_guard:
  - migration packaging is not execution approval
  - candidate file breakdown is for planning only
  - do not package for real execution until:
    - Boss decision exists
    - Sato review is completed
    - target schema is confirmed
    - migration engine / repository placement is confirmed
    - RLS claim function strategy is confirmed

forbidden_until_approved:
  - applying candidate migration files to production
  - applying candidate migration files to shared staging without approval
  - treating candidate numbering as final official numbering

summary:
Packaging is planned.
Execution remains intentionally blocked.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100017_ORDER_FLOW_MIGRATION_EXECUTION_GUARD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100018_ORDER_FLOW_TEST_DATA_AND_SEED_EXACT.md -->
# ============================================================
# ORDER FLOW TEST DATA AND SEED EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
Defines exact seed/test-data strategy for OrderFlow.

seed_strategy:
  principles:
    - seed data is separate from structural migration
    - seed data is for local/dev/test use first
    - no production assumption
    - company-scoped sample data only
    - multilingual and multicurrency examples must be included

  recommended_seed_sets:
    - seed_company_context
    - seed_order_from_estimate_case
    - seed_standalone_order_case
    - seed_partial_shipment_case
    - seed_partial_delivery_case
    - seed_overdue_and_notification_case
    - seed_sync_failed_case

seed_case_definitions:

  seed_company_context:
    includes:
      - one test company
      - sample actor refs
      - role examples for sales_operator, order_coordinator, warehouse_operator, delivery_confirmation_operator, order_manager

  seed_order_from_estimate_case:
    includes:
      - one estimate-origin order
      - source estimate link
      - customer snapshot
      - multiple order lines
      - order_state around customer_proposed

  seed_standalone_order_case:
    includes:
      - one standalone order
      - customer snapshot without estimate link
      - multicurrency example such as USD

  seed_partial_shipment_case:
    includes:
      - shipment request
      - shipment request lines
      - accepted request result
      - partial shipment execution
      - remaining quantity still open

  seed_partial_delivery_case:
    includes:
      - delivery confirmation record
      - delivery confirmation lines
      - partially_delivered visibility
      - closure still blocked

  seed_overdue_and_notification_case:
    includes:
      - customer_proposed state with overdue followup
      - proposal_overdue notification
      - shipment_overdue notification example

  seed_sync_failed_case:
    includes:
      - order_sync_state failed
      - order_pending_operation queued
      - notification_event_record sync_failed

seed_rules:
  - every seed order should have reconstructable history
  - at least one JPY case and one USD case should exist
  - one ja-JP locale snapshot and one en-US locale snapshot should exist
  - one closed order and one canceled order should exist for list/filter testing


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100018_ORDER_FLOW_TEST_DATA_AND_SEED_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100019_ORDER_FLOW_FINAL_MIGRATION_PLACEMENT.md -->
# ============================================================
# ORDER FLOW FINAL MIGRATION PLACEMENT
# ============================================================

status: final-migration-placement
system: order-flow
owner: Boss
prepared_by: Zero
review_confirmed:
- Sato

purpose:
Defines the final recommended migration placement for OrderFlow.

final_migration_placement:

  target_folder_candidate:
    - 01.civilization-system/07.applications/OrderFlow/999.migration-ready

  recommended_files:
    - 0001_order_flow_order_core.sql
    - 0002_order_flow_execution_and_schedule.sql
    - 0003_order_flow_shipment_and_delivery_history.sql
    - 0004_order_flow_rls.sql
    - 0005_order_flow_seed_local_dev.sql

  source_mapping:
    0001_order_flow_order_core.sql:
      from:
        - 1200026_ORDER_FLOW_SQL_CANDIDATE_PHASE_1_ORDER_CORE.sql

    0002_order_flow_execution_and_schedule.sql:
      from:
        - 1200027_ORDER_FLOW_SQL_CANDIDATE_PHASE_2_EXECUTION.sql

    0003_order_flow_shipment_and_delivery_history.sql:
      from:
        - 1200028_ORDER_FLOW_SQL_CANDIDATE_PHASE_3_SHIPMENT_HISTORY.sql

    0004_order_flow_rls.sql:
      from:
        - 1100013_ORDER_FLOW_RLS_SQL_DRAFT.md

    0005_order_flow_seed_local_dev.sql:
      from:
        - 1200036_ORDER_FLOW_SEED_SQL_COMPANY_AND_ROLES.sql
        - 1200037_ORDER_FLOW_SEED_SQL_ORDERS_AND_EXECUTION.sql
        - 1200038_ORDER_FLOW_SEED_SQL_SHIPMENT_DELIVERY_NOTIFICATION.sql

placement_rules:
  - structural migrations first
  - RLS after structural migrations
  - seed kept last and local/dev oriented
  - no seed mixed into structural files


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/110.infrastructure/1100019_ORDER_FLOW_FINAL_MIGRATION_PLACEMENT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200000_ORDER_FLOW_IMPLEMENTATION_INDEX.md -->
# ============================================================
# ORDER FLOW IMPLEMENTATION INDEX
# ============================================================

files:

- 120300_ORDERFLOW_FULFILLMENT_CONTROL_IMPLEMENTATION_GUIDE.md

- 120310_ORDERFLOW_PHASE_A_EXECUTION_TIMELINE_IMPLEMENTATION_SKELETON.md

- 120320_ORDERFLOW_PHASE_A_STUB_FILE_PLAN.md

- 120330_ORDERFLOW_PHASE_A_MODULE_TASK_BREAKDOWN.md

- 120340_ORDERFLOW_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md

- 120350_ORDERFLOW_PHASE_A_SLICE_COMMAND_PACKS.md

- 120360_ORDERFLOW_PHASE_A_SLICE_FIELD_FILL_PLAN.md

- 120370_ORDERFLOW_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md

- 120380_ORDERFLOW_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200000_ORDER_FLOW_IMPLEMENTATION_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200001_ORDER_FLOW_API_ORDER_CREATE_EXACT.md -->
# ============================================================
# ORDER FLOW API ORDER CREATE EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact request / response payloads for order creation and order detail retrieval.

# ============================================================
# 1. create order from estimate
# ============================================================

endpoint_name:
- create_order_from_estimate

request_payload:
~~~json
{
  "company_id": "uuid",
  "source_type": "from_estimate",
  "source_estimate": {
    "estimate_id": "uuid",
    "estimate_number": "EST-2026-000123",
    "handoff_type": "deeplink_copy"
  },
  "customer_snapshot": {
    "customer_id": "uuid-or-null",
    "customer_name_snapshot": "ABC Trading Co., Ltd.",
    "customer_display_name_snapshot": "ABC Trading",
    "billing_name_snapshot": "ABC Trading Co., Ltd.",
    "shipping_name_snapshot": "ABC Trading Sendai Warehouse",
    "contact_person_snapshot": "Taro Yamada",
    "contact_email_snapshot": "taro@example.com",
    "contact_phone_snapshot": "+81-90-0000-0000",
    "billing_address_snapshot": "billing address text",
    "shipping_address_snapshot": "shipping address text",
    "locale_snapshot": "ja-JP"
  },
  "order_header": {
    "order_date": "2026-04-12",
    "currency_code": "JPY",
    "requested_delivery_date": "2026-04-20",
    "internal_note": "priority customer"
  },
  "order_lines": [
    {
      "source_estimate_line_id": "uuid-or-null",
      "item_ref_or_local_code": "ITEM-001",
      "item_name_snapshot": "Product A",
      "ordered_quantity": 10,
      "unit_of_measure": "pcs",
      "unit_price_amount": "1200.00",
      "line_subtotal_amount": "12000.00",
      "customer_line_note": "morning delivery preferred"
    }
  ],
  "money_summary": {
    "subtotal_amount": "12000.00",
    "tax_amount": "1200.00",
    "total_amount": "13200.00"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order": {
    "order_id": "uuid",
    "order_number": "ORD-2026-000045",
    "order_state": "draft",
    "source_type": "from_estimate",
    "source_estimate_exists": true,
    "currency_code": "JPY",
    "subtotal_amount": "12000.00",
    "tax_amount": "1200.00",
    "total_amount": "13200.00",
    "created_at": "2026-04-12T11:30:00+09:00"
  },
  "source_estimate_link": {
    "source_estimate_id": "uuid",
    "source_estimate_number_snapshot": "EST-2026-000123",
    "handoff_type": "deeplink_copy"
  },
  "sync_state": {
    "sync_state_type": "local_only",
    "target_system_name": null
  }
}
~~~

# ============================================================
# 2. create standalone order
# ============================================================

endpoint_name:
- create_standalone_order

request_payload:
~~~json
{
  "company_id": "uuid",
  "source_type": "standalone",
  "customer_snapshot": {
    "customer_id": "uuid-or-null",
    "customer_name_snapshot": "XYZ Co., Ltd.",
    "customer_display_name_snapshot": "XYZ",
    "billing_name_snapshot": "XYZ Co., Ltd.",
    "shipping_name_snapshot": "XYZ Tokyo Office",
    "contact_person_snapshot": "Hanako Sato",
    "contact_email_snapshot": "hanako@example.com",
    "contact_phone_snapshot": "+81-80-0000-0000",
    "billing_address_snapshot": "billing address text",
    "shipping_address_snapshot": "shipping address text",
    "locale_snapshot": "en-US"
  },
  "order_header": {
    "order_date": "2026-04-12",
    "currency_code": "USD",
    "requested_delivery_date": "2026-04-25",
    "internal_note": "standalone order"
  },
  "order_lines": [
    {
      "item_ref_or_local_code": "ITEM-100",
      "item_name_snapshot": "Service Plan B",
      "ordered_quantity": 2,
      "unit_of_measure": "license",
      "unit_price_amount": "500.00",
      "line_subtotal_amount": "1000.00",
      "customer_line_note": ""
    }
  ],
  "money_summary": {
    "subtotal_amount": "1000.00",
    "tax_amount": "0.00",
    "total_amount": "1000.00"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order": {
    "order_id": "uuid",
    "order_number": "ORD-2026-000046",
    "order_state": "draft",
    "source_type": "standalone",
    "source_estimate_exists": false,
    "currency_code": "USD",
    "subtotal_amount": "1000.00",
    "tax_amount": "0.00",
    "total_amount": "1000.00",
    "created_at": "2026-04-12T11:35:00+09:00"
  },
  "sync_state": {
    "sync_state_type": "local_only",
    "target_system_name": null
  }
}
~~~

# ============================================================
# 3. get order detail
# ============================================================

endpoint_name:
- get_order_detail

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid"
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order": {
    "order_id": "uuid",
    "order_number": "ORD-2026-000045",
    "order_state": "inventory_checked",
    "source_type": "from_estimate",
    "order_date": "2026-04-12",
    "requested_delivery_date": "2026-04-20",
    "currency_code": "JPY",
    "subtotal_amount": "12000.00",
    "tax_amount": "1200.00",
    "total_amount": "13200.00"
  },
  "customer_snapshot": {
    "customer_name_snapshot": "ABC Trading Co., Ltd.",
    "contact_person_snapshot": "Taro Yamada",
    "contact_email_snapshot": "taro@example.com",
    "shipping_address_snapshot": "shipping address text",
    "locale_snapshot": "ja-JP"
  },
  "source_estimate_link": {
    "source_estimate_id": "uuid",
    "source_estimate_number_snapshot": "EST-2026-000123",
    "handoff_type": "deeplink_copy"
  },
  "order_lines": [
    {
      "order_line_id": "uuid",
      "line_no": 1,
      "item_ref_or_local_code": "ITEM-001",
      "item_name_snapshot": "Product A",
      "ordered_quantity": 10,
      "unit_of_measure": "pcs",
      "unit_price_amount": "1200.00",
      "line_subtotal_amount": "12000.00",
      "line_state": "open"
    }
  ],
  "latest_execution_summary": {
    "inventory_status": "available",
    "customer_proposal_status": "not_proposed",
    "shipment_status": "not_requested",
    "delivery_status": "not_confirmed"
  }
}
~~~

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200001_ORDER_FLOW_API_ORDER_CREATE_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200002_ORDER_FLOW_API_INVENTORY_PROPOSAL_EXACT.md -->
# ============================================================
# ORDER FLOW API INVENTORY PROPOSAL EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact request / response payloads for inventory check,
lead time calculation, delivery candidates, and customer proposal flow.

# ============================================================
# 1. record inventory check
# ============================================================

endpoint_name:
- record_inventory_check

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "inventory_check": {
    "inventory_status": "available",
    "freshness_type": "fresh",
    "inventory_source_type": "erp",
    "source_system_name": "ERP",
    "source_reference_id": "INV-CHECK-001",
    "summary_note": "stock confirmed"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order_id": "uuid",
  "order_state": "inventory_checked",
  "inventory_check_record": {
    "order_inventory_check_record_id": "uuid",
    "inventory_status": "available",
    "freshness_type": "fresh",
    "inventory_source_type": "erp",
    "checked_at": "2026-04-12T11:40:00+09:00"
  }
}
~~~

# ============================================================
# 2. calculate lead time
# ============================================================

endpoint_name:
- calculate_lead_time

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "lead_time_input": {
    "lead_time_basis_type": "stock_available",
    "lead_time_note": "same-week shipment possible"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "lead_time_record": {
    "order_lead_time_record_id": "uuid",
    "lead_time_days": 3,
    "lead_time_basis_type": "stock_available",
    "calculated_at": "2026-04-12T11:42:00+09:00"
  }
}
~~~

# ============================================================
# 3. calculate delivery candidates
# ============================================================

endpoint_name:
- calculate_delivery_candidates

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "calculation_input": {
    "requested_delivery_date_hint": "2026-04-20",
    "internal_note": "prefer weekday delivery"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order_state": "delivery_date_calculated",
  "calculation_record": {
    "delivery_schedule_calculation_record_id": "uuid",
    "calculated_at": "2026-04-12T11:45:00+09:00"
  },
  "candidates": [
    {
      "delivery_schedule_candidate_id": "uuid-1",
      "candidate_type": "single_date",
      "candidate_label": "best_case",
      "candidate_start_date": "2026-04-18",
      "candidate_end_date": "2026-04-18",
      "confidence_type": "high",
      "rank_order": 1,
      "proposal_ready_flag": true
    },
    {
      "delivery_schedule_candidate_id": "uuid-2",
      "candidate_type": "date_range",
      "candidate_label": "safe_range",
      "candidate_start_date": "2026-04-19",
      "candidate_end_date": "2026-04-21",
      "confidence_type": "medium",
      "rank_order": 2,
      "proposal_ready_flag": true
    }
  ]
}
~~~

# ============================================================
# 4. create customer proposal
# ============================================================

endpoint_name:
- create_customer_delivery_proposal

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "proposal": {
    "source_candidate_id": "uuid-2",
    "proposal_date_or_start": "2026-04-19",
    "proposal_end_date": "2026-04-21",
    "proposal_note": "delivery between Sunday and Tuesday",
    "proposal_channel_type": "manual_internal_record"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order_state": "customer_proposed",
  "customer_proposal_status": "proposed",
  "proposal_record": {
    "customer_delivery_proposal_record_id": "uuid",
    "proposal_date_or_start": "2026-04-19",
    "proposal_end_date": "2026-04-21",
    "recorded_at": "2026-04-12T11:50:00+09:00"
  }
}
~~~

# ============================================================
# 5. record customer response
# ============================================================

endpoint_name:
- record_customer_delivery_response

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "response": {
    "response_type": "accepted",
    "response_date": "2026-04-12",
    "operator_note": "customer accepted by phone"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order_state": "customer_confirmed",
  "customer_proposal_status": "accepted",
  "response_record": {
    "customer_delivery_response_record_id": "uuid",
    "response_type": "accepted",
    "response_date": "2026-04-12",
    "recorded_at": "2026-04-12T11:55:00+09:00"
  }
}
~~~

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200002_ORDER_FLOW_API_INVENTORY_PROPOSAL_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200003_ORDER_FLOW_API_SHIPMENT_AND_DELIVERY_EXACT.md -->
# ============================================================
# ORDER FLOW API SHIPMENT AND DELIVERY EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact request / response payloads for shipment request,
shipment execution, delivery confirmation, and order closure.

# ============================================================
# 1. create shipment request
# ============================================================

endpoint_name:
- create_shipment_request

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "shipment_request": {
    "request_scope_type": "selected_lines",
    "requested_ship_date": "2026-04-17",
    "warehouse_or_execution_target_ref": "SENDAI-WH-01",
    "shipment_instruction_note": "keep upright"
  },
  "request_lines": [
    {
      "order_line_id": "uuid-line-1",
      "requested_quantity": 6,
      "unit_of_measure": "pcs",
      "partial_reason": "split shipment requested"
    }
  ]
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order_state": "shipment_requested",
  "shipment_request_record": {
    "shipment_request_record_id": "uuid",
    "shipment_request_number": "SHP-REQ-2026-000021",
    "shipment_status": "requested",
    "request_scope_type": "selected_lines",
    "requested_at": "2026-04-12T12:00:00+09:00"
  },
  "remaining_scope_summary": {
    "remaining_order_lines": 1,
    "remaining_quantity_exists": true
  }
}
~~~

# ============================================================
# 2. record shipment request result
# ============================================================

endpoint_name:
- record_shipment_request_result

request_payload:
~~~json
{
  "company_id": "uuid",
  "shipment_request_record_id": "uuid",
  "result": {
    "result_type": "accepted",
    "result_note": "warehouse accepted request"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "shipment_request_result": {
    "shipment_request_result_id": "uuid",
    "result_type": "accepted",
    "result_recorded_at": "2026-04-12T12:05:00+09:00"
  },
  "shipment_status": "accepted"
}
~~~

# ============================================================
# 3. record shipment execution
# ============================================================

endpoint_name:
- record_shipment_execution

request_payload:
~~~json
{
  "company_id": "uuid",
  "shipment_request_record_id": "uuid",
  "shipment_execution": {
    "shipment_execution_date": "2026-04-17",
    "shipment_execution_scope_type": "partial_request",
    "carrier_name_snapshot": "Yamato",
    "tracking_number_snapshot": "TRACK-1234567890",
    "shipment_note": "6 pcs shipped"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order_state": "shipped",
  "shipment_execution_record": {
    "shipment_execution_record_id": "uuid",
    "shipment_execution_date": "2026-04-17",
    "shipment_execution_scope_type": "partial_request",
    "recorded_at": "2026-04-17T14:00:00+09:00"
  },
  "shipment_status": "partially_shipped"
}
~~~

# ============================================================
# 4. record delivery confirmation
# ============================================================

endpoint_name:
- record_delivery_confirmation

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "delivery_confirmation": {
    "delivery_status": "partially_delivered",
    "confirmation_date": "2026-04-19",
    "customer_receipt_note": "first batch received",
    "delivery_issue_note": ""
  },
  "delivery_lines": [
    {
      "order_line_id": "uuid-line-1",
      "confirmed_delivered_quantity": 6,
      "unit_of_measure": "pcs",
      "line_delivery_note": "good condition"
    }
  ]
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order_state": "delivered",
  "delivery_confirmation_record": {
    "delivery_confirmation_record_id": "uuid",
    "delivery_status": "partially_delivered",
    "confirmation_date": "2026-04-19",
    "confirmed_at": "2026-04-19T10:00:00+09:00"
  },
  "remaining_scope_summary": {
    "remaining_quantity_exists": true,
    "remaining_delivery_required": true
  }
}
~~~

# ============================================================
# 5. close order
# ============================================================

endpoint_name:
- close_order

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "closure": {
    "closure_reason_type": "business_completed",
    "closure_note": "remaining quantity canceled by mutual agreement"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order": {
    "order_id": "uuid",
    "order_state": "closed",
    "closed_at": "2026-04-20T16:00:00+09:00",
    "closed_by": "uuid-actor"
  }
}
~~~

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200003_ORDER_FLOW_API_SHIPMENT_AND_DELIVERY_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200004_ORDER_FLOW_API_ERROR_AND_SYNC_RESPONSE_EXACT.md -->
# ============================================================
# ORDER FLOW API ERROR AND SYNC RESPONSE EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact response envelopes for success, validation failure,
authorization failure, and sync-related partial success.

# ============================================================
# 1. basic success envelope
# ============================================================

basic_success_envelope:
~~~json
{
  "ok": true,
  "message": "success",
  "data": {},
  "sync_state": {
    "sync_state_type": "local_only",
    "target_system_name": null
  }
}
~~~

# ============================================================
# 2. validation error envelope
# ============================================================

validation_error_envelope:
~~~json
{
  "ok": false,
  "error_code": "validation_error",
  "message": "required fields are missing or invalid",
  "field_errors": [
    {
      "field_name": "order_lines[0].ordered_quantity",
      "reason": "must be greater than zero"
    }
  ]
}
~~~

# ============================================================
# 3. authorization error envelope
# ============================================================

authorization_error_envelope:
~~~json
{
  "ok": false,
  "error_code": "authorization_error",
  "message": "access denied for this company or route"
}
~~~

# ============================================================
# 4. not found envelope
# ============================================================

not_found_envelope:
~~~json
{
  "ok": false,
  "error_code": "not_found",
  "message": "target order was not found"
}
~~~

# ============================================================
# 5. conflict envelope
# ============================================================

conflict_envelope:
~~~json
{
  "ok": false,
  "error_code": "state_conflict",
  "message": "operation is not allowed in current order state",
  "current_state": {
    "order_state": "draft",
    "shipment_status": "not_requested",
    "delivery_status": "not_confirmed"
  }
}
~~~

# ============================================================
# 6. sync partial success envelope
# ============================================================

sync_partial_success_envelope:
~~~json
{
  "ok": true,
  "message": "saved locally but ERP sync is pending",
  "data": {
    "order_id": "uuid"
  },
  "sync_state": {
    "sync_state_type": "pending",
    "target_system_name": "ERP"
  }
}
~~~

# ============================================================
# 7. sync failed envelope
# ============================================================

sync_failed_envelope:
~~~json
{
  "ok": true,
  "message": "saved locally but ERP sync failed",
  "data": {
    "order_id": "uuid"
  },
  "sync_state": {
    "sync_state_type": "failed",
    "target_system_name": "ERP",
    "last_error_code": "erp_timeout"
  }
}
~~~

# ============================================================
# 8. design rules
# ============================================================

rules:
  - business save success and sync success are separated
  - operator-visible sync meaning should remain explicit
  - validation errors should point to concrete fields
  - authorization failure should not leak sensitive details

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200004_ORDER_FLOW_API_ERROR_AND_SYNC_RESPONSE_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200005_ORDER_FLOW_OPERATOR_ACTION_MATRIX_ORDER_ENTRY.md -->
# ============================================================
# ORDER FLOW OPERATOR ACTION MATRIX ORDER ENTRY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines operator actions for order entry and order detail screens.

operator_action_matrix:

  create_order_from_estimate_screen:
    primary_goal:
      - create new order from estimate-origin context
    read:
      - source estimate summary
      - customer summary
      - estimate line snapshot
      - currency context
    write:
      - order header
      - order lines
      - internal note
    actions:
      - save_draft
      - confirm_creation
      - cancel_creation
    success_result:
      - order created in draft state
    blocked_when:
      - estimate context missing
      - authorization invalid
      - required order lines missing

  create_standalone_order_screen:
    primary_goal:
      - create new standalone order
    read:
      - customer entry context
      - line entry summary
    write:
      - customer snapshot fields
      - order header
      - order lines
      - money summary
    actions:
      - save_draft
      - confirm_creation
      - cancel_creation
    success_result:
      - standalone order created in draft state
    blocked_when:
      - customer snapshot incomplete
      - currency missing
      - no valid line exists

  order_header_edit_screen:
    primary_goal:
      - maintain order-level editable fields
    read:
      - order header
      - totals
      - requested delivery date
    write:
      - requested delivery date
      - internal note
      - header fields allowed by current state
    actions:
      - save_changes
      - discard_changes
    success_result:
      - order header updated
    blocked_when:
      - order already closed
      - state policy disallows header edit

  order_line_edit_screen:
    primary_goal:
      - maintain ordered scope at line level
    read:
      - existing lines
      - line state
      - quantity and price summary
    write:
      - add line
      - update line
      - remove line if policy allows
    actions:
      - add_line
      - edit_line
      - delete_line
      - save_changes
    success_result:
      - order lines updated
    blocked_when:
      - line quantity invalid
      - line monetary values invalid
      - order state disallows structural line edits

  order_detail_screen:
    primary_goal:
      - decide the next execution action for the order
    read:
      - order summary
      - state summaries
      - remaining scope summary
      - latest execution summary
    write:
      - none directly as primary mode
    actions:
      - open_inventory_check
      - open_lead_time_calculation
      - open_delivery_candidate
      - open_customer_proposal
      - open_shipment_request
      - open_delivery_confirmation
      - open_history
      - open_closure
    success_result:
      - operator reaches next correct action surface
    blocked_when:
      - authorization invalid
      - order not found


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200005_ORDER_FLOW_OPERATOR_ACTION_MATRIX_ORDER_ENTRY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200006_ORDER_FLOW_OPERATOR_ACTION_MATRIX_EXECUTION.md -->
# ============================================================
# ORDER FLOW OPERATOR ACTION MATRIX EXECUTION
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines operator actions for inventory check, lead time,
delivery candidate, and customer proposal flow.

operator_action_matrix:

  inventory_check_screen:
    primary_goal:
      - confirm fulfillment-context inventory condition
    read:
      - order lines
      - requested quantities
      - latest inventory reference summary
    write:
      - inventory status
      - freshness type
      - source type
      - summary note
    actions:
      - record_inventory_check
      - recheck_inventory
      - save_note
    success_result:
      - order reaches inventory_checked
    blocked_when:
      - inventory source context missing
      - order not execution-ready

  lead_time_calculation_screen:
    primary_goal:
      - record lead time basis for delivery planning
    read:
      - inventory check result
      - supply understanding
    write:
      - lead time days
      - lead time basis type
      - lead time note
    actions:
      - calculate_lead_time
      - recalculate_lead_time
      - save_result
    success_result:
      - lead time record stored
    blocked_when:
      - no usable inventory understanding exists

  delivery_candidate_screen:
    primary_goal:
      - generate and compare delivery schedule candidates
    read:
      - lead time result
      - requested delivery hint
      - candidate list
    write:
      - calculation input note
      - internal preferred candidate decision
    actions:
      - generate_candidates
      - compare_candidates
      - choose_internal_candidate
    success_result:
      - order reaches delivery_date_calculated
    blocked_when:
      - lead time basis absent
      - candidate generation input invalid

  customer_proposal_screen:
    primary_goal:
      - create and record customer-facing delivery proposal
    read:
      - chosen candidate
      - proposal history summary
    write:
      - proposal date or range
      - proposal note
      - proposal channel type
    actions:
      - create_proposal
      - revise_proposal
      - mark_as_presented
    success_result:
      - order reaches customer_proposed
    blocked_when:
      - no usable candidate exists
      - proposal content incomplete

  customer_response_record_screen:
    primary_goal:
      - record customer reaction to proposal
    read:
      - latest proposal summary
      - past proposal history
    write:
      - response type
      - response date
      - operator note
    actions:
      - record_acceptance
      - record_rejection
      - record_revision_request
    success_result:
      - accepted moves order to customer_confirmed
      - revision request keeps proposal cycle active
    blocked_when:
      - no proposal exists
      - response type missing


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200006_ORDER_FLOW_OPERATOR_ACTION_MATRIX_EXECUTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200007_ORDER_FLOW_OPERATOR_ACTION_MATRIX_SHIPMENT_DELIVERY.md -->
# ============================================================
# ORDER FLOW OPERATOR ACTION MATRIX SHIPMENT DELIVERY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines operator actions for shipment request, shipment execution,
delivery confirmation, and partial handling.

operator_action_matrix:

  shipment_request_screen:
    primary_goal:
      - create shipment request for full or partial scope
    read:
      - order summary
      - shippable scope
      - remaining scope
    write:
      - request scope type
      - requested ship date
      - target execution ref
      - shipment instruction note
      - request lines
    actions:
      - create_shipment_request
      - save_request_draft
      - cancel_request
    success_result:
      - order reaches shipment_requested
    blocked_when:
      - customer agreement missing under normal path
      - no valid request line exists

  shipment_request_detail_screen:
    primary_goal:
      - inspect and update one shipment request
    read:
      - request number
      - request scope
      - status
      - result
      - linked execution
    write:
      - result note
      - request-level update note
    actions:
      - record_acceptance
      - record_rejection
      - open_execution_record
    success_result:
      - shipment status updated
    blocked_when:
      - request not found
      - update conflicts with closed request policy

  shipment_status_board_screen:
    primary_goal:
      - monitor shipment progress across requests
    read:
      - shipment requests
      - partially shipped indicators
      - remaining shipment scope
    write:
      - none directly as main mode
    actions:
      - open_request_detail
      - open_execution_record
      - open_related_order
    success_result:
      - operator identifies pending or delayed shipment work
    blocked_when:
      - none except access failure

  delivery_confirmation_input_screen:
    primary_goal:
      - record delivery confirmation for relevant scope
    read:
      - latest shipment summary
      - order lines
      - remaining scope
    write:
      - delivery status
      - confirmation date
      - customer receipt note
      - delivery issue note
    actions:
      - record_delivery_confirmation
      - continue_to_partial_delivery_input
    success_result:
      - delivery confirmation stored
    blocked_when:
      - no shipment-side basis exists where policy requires it
      - confirmation date missing

  partial_delivery_confirmation_screen:
    primary_goal:
      - record delivered quantity at line level
    read:
      - order lines
      - already delivered quantity
      - remaining quantity
    write:
      - confirmed delivered quantity
      - line delivery note
      - short delivery reason
    actions:
      - save_partial_delivery
      - cancel_partial_entry
    success_result:
      - partial delivery remains visible and traceable
    blocked_when:
      - delivered quantity exceeds remaining quantity
      - no line selected


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200007_ORDER_FLOW_OPERATOR_ACTION_MATRIX_SHIPMENT_DELIVERY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200008_ORDER_FLOW_OPERATOR_ACTION_MATRIX_CLOSURE_AND_ERRORS.md -->
# ============================================================
# ORDER FLOW OPERATOR ACTION MATRIX CLOSURE AND ERRORS
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines operator actions for history, closure,
and error/sync handling interpretation.

operator_action_matrix:

  order_history_screen:
    primary_goal:
      - understand what happened to the order over time
    read:
      - timeline entries
      - actor display name
      - related event summary
    write:
      - none
    actions:
      - open_related_detail
    success_result:
      - operator understands chronology and context
    blocked_when:
      - order not found

  order_closure_screen:
    primary_goal:
      - perform explicit operational completion judgment
    read:
      - order summary
      - delivery summary
      - remaining quantity summary
      - unresolved issue summary
      - close readiness explanation
    write:
      - closure reason type
      - closure note
    actions:
      - close_order
      - stop_closure
    success_result:
      - order reaches closed
    blocked_when:
      - unresolved remaining scope without explicit business rule
      - missing closure reason where required
      - order already closed

  sync_failure_interpretation:
    primary_goal:
      - distinguish local save success from external sync failure
    read:
      - sync state type
      - target system name
      - last error code
    write:
      - retry intent note if supported later
    actions:
      - acknowledge_failure
      - retry_sync
    success_result:
      - operator understands record is locally saved but externally unsynced
    blocked_when:
      - no sync-visible record exists

  validation_error_interpretation:
    primary_goal:
      - correct invalid operator input
    read:
      - field error list
      - message
    write:
      - corrected field values
    actions:
      - fix_and_resubmit
      - cancel_operation
    success_result:
      - request becomes valid
    blocked_when:
      - field constraints still violated

design_rules:
  - closure is explicit and judgment-heavy
  - history is read-heavy
  - sync error does not automatically mean business save failure
  - operator must see whether failure is business-side or integration-side


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200008_ORDER_FLOW_OPERATOR_ACTION_MATRIX_CLOSURE_AND_ERRORS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200009_ORDER_FLOW_VALIDATION_RULES_ORDER_ENTRY.md -->
# ============================================================
# ORDER FLOW VALIDATION RULES ORDER ENTRY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact validation rules for order creation and order editing.

validation_rules:

  create_order_from_estimate:
    required:
      - company_id
      - source_type
      - source_estimate.estimate_id
      - source_estimate.estimate_number
      - source_estimate.handoff_type
      - customer_snapshot.customer_name_snapshot
      - order_header.order_date
      - order_header.currency_code
      - at_least_one_order_line
      - money_summary.total_amount
    constraints:
      source_type:
        allowed_values:
          - from_estimate
      source_estimate.handoff_type:
        allowed_values:
          - copy
          - deeplink_copy
          - internal_create_from_estimate
      order_header.currency_code:
        must_be:
          - non_empty_string
          - iso_currency_style_code
      order_lines:
        min_count: 1
      order_lines[].ordered_quantity:
        must_be:
          - numeric
          - greater_than_zero
      order_lines[].unit_price_amount:
        must_be:
          - decimal_string
          - zero_or_greater
      order_lines[].line_subtotal_amount:
        must_be:
          - decimal_string
          - zero_or_greater
    forbidden:
      - estimate_id reused as order_id
      - empty currency_code
      - negative quantity
      - missing customer snapshot
    failure_examples:
      - no order lines
      - invalid currency code
      - source estimate context missing

  create_standalone_order:
    required:
      - company_id
      - source_type
      - customer_snapshot.customer_name_snapshot
      - order_header.order_date
      - order_header.currency_code
      - at_least_one_order_line
      - money_summary.total_amount
    constraints:
      source_type:
        allowed_values:
          - standalone
      order_lines[].item_name_snapshot:
        must_be:
          - non_empty_string
      order_lines[].ordered_quantity:
        must_be:
          - numeric
          - greater_than_zero
      money_summary.subtotal_amount:
        must_be:
          - decimal_string
      money_summary.tax_amount:
        must_be:
          - decimal_string
      money_summary.total_amount:
        must_be:
          - decimal_string
    forbidden:
      - source_estimate payload required for standalone
      - negative money values unless future credit policy exists
    failure_examples:
      - customer snapshot absent
      - invalid line quantity
      - total amount missing

  order_header_edit:
    required:
      - company_id
      - order_id
    constraints:
      editable_fields_must_follow_current_state_policy:
        - true
      requested_delivery_date:
        must_be:
          - valid_date_or_null
      currency_code:
        must_be:
          - immutable_after_creation_by_default
    forbidden:
      - editing closed order in normal mode
      - silently switching order source type

  order_line_edit:
    required:
      - company_id
      - order_id
      - valid_line_payload
    constraints:
      line_no:
        must_be:
          - positive_integer
      ordered_quantity:
        must_be:
          - greater_than_zero
      unit_of_measure:
        must_be:
          - non_empty_string
      line_state:
        allowed_values:
          - open
          - partially_allocated
          - ready_for_shipment
          - partially_shipped
          - shipped
          - partially_delivered
          - delivered
          - closed
          - canceled
    forbidden:
      - deleting shipped line without explicit administrative rule
      - reducing quantity below already shipped or delivered scope


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200009_ORDER_FLOW_VALIDATION_RULES_ORDER_ENTRY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200010_ORDER_FLOW_VALIDATION_RULES_EXECUTION.md -->
# ============================================================
# ORDER FLOW VALIDATION RULES EXECUTION
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines validation rules for inventory check,
lead time calculation, delivery candidates, and proposal flow.

validation_rules:

  record_inventory_check:
    required:
      - company_id
      - order_id
      - inventory_check.inventory_status
      - inventory_check.freshness_type
      - inventory_check.inventory_source_type
    constraints:
      inventory_status:
        allowed_values:
          - not_checked
          - available
          - partially_available
          - unavailable
          - replenishment_required
          - stale
      freshness_type:
        allowed_values:
          - fresh
          - cached
          - stale
          - unknown
      inventory_source_type:
        allowed_values:
          - erp
          - app_local
          - external_reference
          - manual_confirmation
    forbidden:
      - inventory check on closed order
      - missing freshness semantics

  calculate_lead_time:
    required:
      - company_id
      - order_id
      - lead_time_input.lead_time_basis_type
    constraints:
      lead_time_basis_type:
        allowed_values:
          - stock_available
          - partial_stock_waiting_supply
          - made_to_order
          - supplier_confirmation
          - manual_estimation
      lead_time_days:
        must_be:
          - integer_or_computed_integer
          - zero_or_greater
    forbidden:
      - negative lead time
      - lead time calculation without usable order execution context

  calculate_delivery_candidates:
    required:
      - company_id
      - order_id
    constraints:
      requested_delivery_date_hint:
        must_be:
          - valid_date_or_null
      candidates[].candidate_type:
        allowed_values:
          - single_date
          - date_range
      candidates[].confidence_type:
        allowed_values:
          - high
          - medium
          - low
          - manual
      date_range_rule:
        - candidate_end_date must be same_or_after candidate_start_date
    forbidden:
      - generating candidate with invalid date range
      - empty candidate label where candidate exists

  create_customer_delivery_proposal:
    required:
      - company_id
      - order_id
      - proposal.proposal_date_or_start
      - proposal.proposal_channel_type
    constraints:
      proposal_channel_type:
        allowed_values:
          - manual_internal_record
          - phone_record
          - email_record
          - in_person_record
      proposal_end_date:
        must_be:
          - null_or_same_or_after proposal_date_or_start
    forbidden:
      - proposal on closed or canceled order
      - proposal without delivery basis in normal flow

  record_customer_delivery_response:
    required:
      - company_id
      - order_id
      - response.response_type
      - response.response_date
    constraints:
      response_type:
        allowed_values:
          - accepted
          - rejected
          - revision_requested
      response_date:
        must_be:
          - valid_date
    forbidden:
      - response record without prior proposal
      - accepted state without proposal context


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200010_ORDER_FLOW_VALIDATION_RULES_EXECUTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200011_ORDER_FLOW_VALIDATION_RULES_SHIPMENT_DELIVERY.md -->
# ============================================================
# ORDER FLOW VALIDATION RULES SHIPMENT DELIVERY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines validation rules for shipment request,
shipment execution, and delivery confirmation.

validation_rules:

  create_shipment_request:
    required:
      - company_id
      - order_id
      - shipment_request.request_scope_type
      - at_least_one_request_line
    constraints:
      request_scope_type:
        allowed_values:
          - full_order
          - partial_order
          - selected_lines
      request_lines[].requested_quantity:
        must_be:
          - numeric
          - greater_than_zero
      request_lines[].requested_quantity_must_not_exceed_remaining_scope:
        - true
    forbidden:
      - shipment request on closed order
      - shipment request with zero lines
      - shipment request exceeding remaining open quantity
    normal_path_requirement:
      - customer_confirmed expected before shipment request unless explicit override policy exists

  record_shipment_request_result:
    required:
      - company_id
      - shipment_request_record_id
      - result.result_type
    constraints:
      result_type:
        allowed_values:
          - accepted
          - rejected
          - partially_accepted
          - pending_response
    forbidden:
      - result recorded for nonexistent request
      - invalid result transition from terminal shipment handling state

  record_shipment_execution:
    required:
      - company_id
      - shipment_request_record_id
      - shipment_execution.shipment_execution_date
      - shipment_execution.shipment_execution_scope_type
    constraints:
      shipment_execution_scope_type:
        allowed_values:
          - full_request
          - partial_request
          - selected_lines
      shipment_execution_date:
        must_be:
          - valid_date
    forbidden:
      - execution on rejected request unless reopened by explicit policy
      - execution quantity exceeding accepted/requested scope

  record_delivery_confirmation:
    required:
      - company_id
      - order_id
      - delivery_confirmation.delivery_status
      - delivery_confirmation.confirmation_date
    constraints:
      delivery_status:
        allowed_values:
          - not_confirmed
          - partially_delivered
          - delivered
          - delivery_confirmed
      delivery_lines[].confirmed_delivered_quantity:
        must_be:
          - numeric
          - greater_than_zero
      delivery_lines[].confirmed_delivered_quantity_must_not_exceed_remaining_scope:
        - true
    forbidden:
      - delivery confirmation on closed order
      - partial delivery line exceeding remaining line quantity
      - delivery confirmation without selected scope where line detail is required


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200011_ORDER_FLOW_VALIDATION_RULES_SHIPMENT_DELIVERY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200012_ORDER_FLOW_VALIDATION_RULES_CLOSURE_AND_STATE.md -->
# ============================================================
# ORDER FLOW VALIDATION RULES CLOSURE AND STATE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines validation rules for closure, cancellation,
and state-transition control.

validation_rules:

  close_order:
    required:
      - company_id
      - order_id
      - closure.closure_reason_type
    constraints:
      closure_reason_type:
        allowed_values:
          - business_completed
          - delivered_completed
          - mutually_canceled_remainder
          - administrative_close
      closure_note:
        must_be:
          - optional_but_recommended
    forbidden:
      - closing already closed order
      - silent close with unresolved remaining scope and no explicit closure reason
      - close without operator intent
    readiness_expectations:
      - delivery summary reviewed
      - remaining quantity explained
      - unresolved issue summary reviewed

  cancel_order:
    required:
      - company_id
      - order_id
      - cancel_reason
    constraints:
      cancel_reason:
        must_be:
          - non_empty_string
    forbidden:
      - cancel closed order in normal mode
      - cancel after irreversible downstream handling unless explicit admin rule exists

  state_transition_general:
    constraints:
      allowed_primary_path:
        - draft_to_confirmed
        - confirmed_to_inventory_checked
        - inventory_checked_to_delivery_date_calculated
        - delivery_date_calculated_to_customer_proposed
        - customer_proposed_to_customer_confirmed
        - customer_confirmed_to_shipment_requested
        - shipment_requested_to_shipped
        - shipped_to_delivered
        - delivered_to_closed
      allowed_exception_examples:
        - draft_to_canceled
        - confirmed_to_canceled
        - customer_proposed_to_delivery_date_calculated
        - customer_confirmed_to_customer_proposed
    forbidden:
      - direct draft_to_closed
      - direct confirmed_to_closed without explicit administrative exception
      - implicit delivered_to_closed without closure action
      - state mutation without status history record

  sync_and_error_visibility:
    constraints:
      local_save_and_external_sync_must_be_separated:
        - true
      validation_error_must_point_to_field_when_possible:
        - true
      authorization_error_must_not_leak_sensitive_detail:
        - true


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200012_ORDER_FLOW_VALIDATION_RULES_CLOSURE_AND_STATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200013_ORDER_FLOW_SCREEN_PAYLOAD_MAPPING_ORDER_ENTRY.md -->
# ============================================================
# ORDER FLOW SCREEN PAYLOAD MAPPING ORDER ENTRY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact screen-to-API payload mapping for order entry and order detail surfaces.

screen_payload_mapping:

  create_order_from_estimate_screen:
    load_inputs:
      - deeplink or handoff context
      - source estimate summary
      - source estimate line snapshot
      - customer snapshot seed
    submit_endpoint:
      - create_order_from_estimate
    submit_request_fields:
      - company_id
      - source_type
      - source_estimate.estimate_id
      - source_estimate.estimate_number
      - source_estimate.handoff_type
      - customer_snapshot
      - order_header
      - order_lines
      - money_summary
    submit_response_fields_used_by_ui:
      - order.order_id
      - order.order_number
      - order.order_state
      - source_estimate_link
      - sync_state
    next_route_on_success:
      - order_detail_screen

  create_standalone_order_screen:
    load_inputs:
      - empty order entry state
      - customer entry state
      - default currency selection context
    submit_endpoint:
      - create_standalone_order
    submit_request_fields:
      - company_id
      - source_type
      - customer_snapshot
      - order_header
      - order_lines
      - money_summary
    submit_response_fields_used_by_ui:
      - order.order_id
      - order.order_number
      - order.order_state
      - sync_state
    next_route_on_success:
      - order_detail_screen

  order_header_edit_screen:
    load_endpoint:
      - get_order_detail
    load_request_fields:
      - company_id
      - order_id
    load_response_fields_used_by_ui:
      - order.order_id
      - order.order_number
      - order.order_state
      - order.order_date
      - order.requested_delivery_date
      - order.currency_code
      - order.subtotal_amount
      - order.tax_amount
      - order.total_amount
      - customer_snapshot
    local_submit_mode:
      - update_order_header_exact_to_be_defined_later
    note:
      - current design fixes field mapping responsibility first

  order_line_edit_screen:
    load_endpoint:
      - get_order_detail
    load_request_fields:
      - company_id
      - order_id
    load_response_fields_used_by_ui:
      - order_lines
      - order.currency_code
      - order.order_state
    local_submit_mode:
      - update_order_lines_exact_to_be_defined_later
    note:
      - line editor depends on loaded order_detail structure

  order_detail_screen:
    load_endpoint:
      - get_order_detail
    load_request_fields:
      - company_id
      - order_id
    load_response_fields_used_by_ui:
      - order
      - customer_snapshot
      - source_estimate_link
      - order_lines
      - latest_execution_summary
    action_routes:
      - inventory_check_screen
      - lead_time_calculation_screen
      - delivery_candidate_screen
      - customer_proposal_screen
      - shipment_request_screen
      - delivery_confirmation_input_screen
      - order_history_screen
      - order_closure_screen


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200013_ORDER_FLOW_SCREEN_PAYLOAD_MAPPING_ORDER_ENTRY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200014_ORDER_FLOW_SCREEN_PAYLOAD_MAPPING_EXECUTION.md -->
# ============================================================
# ORDER FLOW SCREEN PAYLOAD MAPPING EXECUTION
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact screen-to-API payload mapping for execution planning and proposal screens.

screen_payload_mapping:

  inventory_check_screen:
    load_endpoint:
      - get_order_detail
    load_request_fields:
      - company_id
      - order_id
    load_response_fields_used_by_ui:
      - order.order_id
      - order.order_state
      - order_lines
      - latest_execution_summary.inventory_status
    submit_endpoint:
      - record_inventory_check
    submit_request_fields:
      - company_id
      - order_id
      - inventory_check.inventory_status
      - inventory_check.freshness_type
      - inventory_check.inventory_source_type
      - inventory_check.source_system_name
      - inventory_check.source_reference_id
      - inventory_check.summary_note
    submit_response_fields_used_by_ui:
      - order_state
      - inventory_check_record

  lead_time_calculation_screen:
    load_dependencies:
      - get_order_detail result
      - latest inventory check context
    submit_endpoint:
      - calculate_lead_time
    submit_request_fields:
      - company_id
      - order_id
      - lead_time_input.lead_time_basis_type
      - lead_time_input.lead_time_note
    submit_response_fields_used_by_ui:
      - lead_time_record.order_lead_time_record_id
      - lead_time_record.lead_time_days
      - lead_time_record.lead_time_basis_type
      - lead_time_record.calculated_at

  delivery_candidate_screen:
    load_dependencies:
      - get_order_detail result
      - latest lead time context
    submit_endpoint:
      - calculate_delivery_candidates
    submit_request_fields:
      - company_id
      - order_id
      - calculation_input.requested_delivery_date_hint
      - calculation_input.internal_note
    submit_response_fields_used_by_ui:
      - order_state
      - calculation_record
      - candidates
    local_selection_fields:
      - candidates[].delivery_schedule_candidate_id
      - candidates[].candidate_label
      - candidates[].candidate_start_date
      - candidates[].candidate_end_date
      - candidates[].confidence_type
      - candidates[].rank_order

  customer_proposal_screen:
    load_dependencies:
      - get_order_detail result
      - chosen candidate from delivery_candidate_screen
    submit_endpoint:
      - create_customer_delivery_proposal
    submit_request_fields:
      - company_id
      - order_id
      - proposal.source_candidate_id
      - proposal.proposal_date_or_start
      - proposal.proposal_end_date
      - proposal.proposal_note
      - proposal.proposal_channel_type
    submit_response_fields_used_by_ui:
      - order_state
      - customer_proposal_status
      - proposal_record
    next_route_on_success:
      - proposal_history_screen
      - customer_response_record_screen

  customer_response_record_screen:
    load_dependencies:
      - latest proposal summary
    submit_endpoint:
      - record_customer_delivery_response
    submit_request_fields:
      - company_id
      - order_id
      - response.response_type
      - response.response_date
      - response.operator_note
    submit_response_fields_used_by_ui:
      - order_state
      - customer_proposal_status
      - response_record
    next_route_on_success:
      - order_detail_screen


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200014_ORDER_FLOW_SCREEN_PAYLOAD_MAPPING_EXECUTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200015_ORDER_FLOW_SCREEN_PAYLOAD_MAPPING_SHIPMENT_DELIVERY.md -->
# ============================================================
# ORDER FLOW SCREEN PAYLOAD MAPPING SHIPMENT DELIVERY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact screen-to-API payload mapping for shipment and delivery surfaces.

screen_payload_mapping:

  shipment_request_screen:
    load_endpoint:
      - get_order_detail
    load_request_fields:
      - company_id
      - order_id
    load_response_fields_used_by_ui:
      - order
      - order_lines
      - latest_execution_summary
    submit_endpoint:
      - create_shipment_request
    submit_request_fields:
      - company_id
      - order_id
      - shipment_request.request_scope_type
      - shipment_request.requested_ship_date
      - shipment_request.warehouse_or_execution_target_ref
      - shipment_request.shipment_instruction_note
      - request_lines
    submit_response_fields_used_by_ui:
      - order_state
      - shipment_request_record
      - remaining_scope_summary
    next_route_on_success:
      - shipment_request_detail_screen
      - shipment_status_board_screen

  shipment_request_detail_screen:
    load_dependencies:
      - shipment request summary
      - related order summary
    submit_endpoint:
      - record_shipment_request_result
    submit_request_fields:
      - company_id
      - shipment_request_record_id
      - result.result_type
      - result.result_note
    submit_response_fields_used_by_ui:
      - shipment_request_result
      - shipment_status

  shipment_status_board_screen:
    load_dependencies:
      - request list query exact to be defined later
    read_fields_expected:
      - shipment_request_record.shipment_request_record_id
      - shipment_request_record.shipment_request_number
      - shipment_request_record.shipment_status
      - remaining_scope_summary
    action_routes:
      - shipment_request_detail_screen
      - shipment_execution_entry_flow

  shipment_execution_entry_flow:
    submit_endpoint:
      - record_shipment_execution
    submit_request_fields:
      - company_id
      - shipment_request_record_id
      - shipment_execution.shipment_execution_date
      - shipment_execution.shipment_execution_scope_type
      - shipment_execution.carrier_name_snapshot
      - shipment_execution.tracking_number_snapshot
      - shipment_execution.shipment_note
    submit_response_fields_used_by_ui:
      - order_state
      - shipment_execution_record
      - shipment_status

  delivery_confirmation_input_screen:
    load_endpoint:
      - get_order_detail
    load_request_fields:
      - company_id
      - order_id
    load_response_fields_used_by_ui:
      - order
      - order_lines
      - latest_execution_summary
    submit_endpoint:
      - record_delivery_confirmation
    submit_request_fields:
      - company_id
      - order_id
      - delivery_confirmation.delivery_status
      - delivery_confirmation.confirmation_date
      - delivery_confirmation.customer_receipt_note
      - delivery_confirmation.delivery_issue_note
      - delivery_lines
    submit_response_fields_used_by_ui:
      - order_state
      - delivery_confirmation_record
      - remaining_scope_summary
    next_route_on_success:
      - order_detail_screen
      - partial_delivery_confirmation_screen

  partial_delivery_confirmation_screen:
    load_dependencies:
      - get_order_detail result
      - current remaining quantity view
    submit_endpoint:
      - record_delivery_confirmation
    submit_request_fields:
      - company_id
      - order_id
      - delivery_confirmation.delivery_status
      - delivery_confirmation.confirmation_date
      - delivery_lines[].order_line_id
      - delivery_lines[].confirmed_delivered_quantity
      - delivery_lines[].unit_of_measure
      - delivery_lines[].line_delivery_note
    submit_response_fields_used_by_ui:
      - delivery_confirmation_record
      - remaining_scope_summary


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200015_ORDER_FLOW_SCREEN_PAYLOAD_MAPPING_SHIPMENT_DELIVERY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200016_ORDER_FLOW_SCREEN_PAYLOAD_MAPPING_HISTORY_CLOSURE.md -->
# ============================================================
# ORDER FLOW SCREEN PAYLOAD MAPPING HISTORY CLOSURE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact screen-to-API payload mapping for history, closure, and error interpretation.

screen_payload_mapping:

  order_history_screen:
    load_dependencies:
      - order history query exact to be defined later
    read_fields_expected:
      - order_history_entry.order_history_entry_id
      - order_history_entry.history_entry_type
      - order_history_entry.occurred_at
      - order_history_entry.actor_display_name
      - order_history_entry.history_label
      - order_history_entry.history_detail_text
    action_routes:
      - related detail surfaces

  order_closure_screen:
    load_endpoint:
      - get_order_detail
    load_request_fields:
      - company_id
      - order_id
    load_response_fields_used_by_ui:
      - order
      - order_lines
      - latest_execution_summary
      - remaining_scope_summary_if_available
    submit_endpoint:
      - close_order
    submit_request_fields:
      - company_id
      - order_id
      - closure.closure_reason_type
      - closure.closure_note
    submit_response_fields_used_by_ui:
      - order.order_id
      - order.order_state
      - order.closed_at
      - order.closed_by
    next_route_on_success:
      - order_detail_screen
      - order_list_screen

  validation_error_surface_mapping:
    source_envelope:
      - validation_error_envelope
    ui_bindings:
      - field_errors[].field_name -> target form field
      - field_errors[].reason -> inline error message
      - message -> screen-level error banner

  sync_error_surface_mapping:
    source_envelope:
      - sync_partial_success_envelope
      - sync_failed_envelope
    ui_bindings:
      - sync_state.sync_state_type -> sync badge
      - sync_state.target_system_name -> sync target label
      - sync_state.last_error_code -> retry/error detail area
    notes:
      - local save success must remain visible even when external sync fails


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200016_ORDER_FLOW_SCREEN_PAYLOAD_MAPPING_HISTORY_CLOSURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200017_ORDER_FLOW_LIST_QUERY_ORDER_LIST_EXACT.md -->
# ============================================================
# ORDER FLOW LIST QUERY ORDER LIST EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact list query request / response for order list surfaces.

# ============================================================
# 1. endpoint
# ============================================================

endpoint_name:
- list_orders

request_payload:
~~~json
{
  "company_id": "uuid",
  "page": 1,
  "page_size": 20,
  "filters": {
    "keyword": "ABC Trading",
    "order_states": ["confirmed", "inventory_checked", "customer_proposed"],
    "inventory_statuses": ["available", "partially_available"],
    "shipment_statuses": ["not_requested", "requested", "partially_shipped"],
    "delivery_statuses": ["not_confirmed", "partially_delivered"],
    "source_types": ["from_estimate", "standalone"],
    "currency_codes": ["JPY", "USD"],
    "date_from": "2026-04-01",
    "date_to": "2026-04-30",
    "only_open_orders": true,
    "assigned_actor_ref": null
  },
  "sort": {
    "sort_by": "updated_at",
    "sort_direction": "desc"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "page": 1,
  "page_size": 20,
  "total_count": 152,
  "items": [
    {
      "order_id": "uuid",
      "order_number": "ORD-2026-000045",
      "order_state": "customer_proposed",
      "source_type": "from_estimate",
      "customer_name_snapshot": "ABC Trading Co., Ltd.",
      "order_date": "2026-04-12",
      "requested_delivery_date": "2026-04-20",
      "currency_code": "JPY",
      "total_amount": "13200.00",
      "inventory_status": "available",
      "shipment_status": "not_requested",
      "delivery_status": "not_confirmed",
      "updated_at": "2026-04-12T11:55:00+09:00"
    }
  ]
}
~~~

# ============================================================
# 2. ui use fields
# ============================================================

ui_use_fields:
  - order_number
  - order_state
  - source_type
  - customer_name_snapshot
  - order_date
  - requested_delivery_date
  - currency_code
  - total_amount
  - inventory_status
  - shipment_status
  - delivery_status
  - updated_at

# ============================================================
# 3. design rules
# ============================================================

rules:
  - order list is operator-first, not customer-first
  - list must support open-work identification quickly
  - filterable statuses should align with exact state models
  - page and page_size are mandatory for scalable retrieval


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200017_ORDER_FLOW_LIST_QUERY_ORDER_LIST_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200018_ORDER_FLOW_LIST_QUERY_SHIPMENT_BOARD_EXACT.md -->
# ============================================================
# ORDER FLOW LIST QUERY SHIPMENT BOARD EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact list query request / response for shipment status board.

# ============================================================
# 1. endpoint
# ============================================================

endpoint_name:
- list_shipment_requests

request_payload:
~~~json
{
  "company_id": "uuid",
  "page": 1,
  "page_size": 20,
  "filters": {
    "keyword": "ORD-2026-000045",
    "shipment_statuses": ["requested", "accepted", "partially_shipped"],
    "request_scope_types": ["full_order", "partial_order", "selected_lines"],
    "requested_ship_date_from": "2026-04-15",
    "requested_ship_date_to": "2026-04-30",
    "warehouse_or_execution_target_ref": "SENDAI-WH-01",
    "only_with_remaining_scope": true
  },
  "sort": {
    "sort_by": "requested_at",
    "sort_direction": "desc"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "page": 1,
  "page_size": 20,
  "total_count": 38,
  "items": [
    {
      "shipment_request_record_id": "uuid",
      "shipment_request_number": "SHP-REQ-2026-000021",
      "order_id": "uuid",
      "order_number": "ORD-2026-000045",
      "customer_name_snapshot": "ABC Trading Co., Ltd.",
      "shipment_status": "partially_shipped",
      "request_scope_type": "selected_lines",
      "requested_ship_date": "2026-04-17",
      "warehouse_or_execution_target_ref": "SENDAI-WH-01",
      "remaining_quantity_exists": true,
      "requested_at": "2026-04-12T12:00:00+09:00"
    }
  ]
}
~~~

# ============================================================
# 2. ui use fields
# ============================================================

ui_use_fields:
  - shipment_request_number
  - order_number
  - customer_name_snapshot
  - shipment_status
  - request_scope_type
  - requested_ship_date
  - warehouse_or_execution_target_ref
  - remaining_quantity_exists
  - requested_at

# ============================================================
# 3. design rules
# ============================================================

rules:
  - shipment board is request-centric
  - remaining scope visibility is mandatory
  - shipment board must allow quick drill-in to request detail
  - request and order identity should both remain visible


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200018_ORDER_FLOW_LIST_QUERY_SHIPMENT_BOARD_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200019_ORDER_FLOW_LIST_QUERY_HISTORY_EXACT.md -->
# ============================================================
# ORDER FLOW LIST QUERY HISTORY EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact query request / response for order history and timeline surfaces.

# ============================================================
# 1. endpoint
# ============================================================

endpoint_name:
- list_order_history_entries

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "page": 1,
  "page_size": 50,
  "filters": {
    "history_entry_types": [
      "order_created",
      "inventory_checked",
      "customer_proposed",
      "shipment_requested",
      "delivery_confirmed",
      "order_closed"
    ],
    "occurred_from": "2026-04-01T00:00:00+09:00",
    "occurred_to": "2026-04-30T23:59:59+09:00"
  },
  "sort": {
    "sort_by": "occurred_at",
    "sort_direction": "desc"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "page": 1,
  "page_size": 50,
  "total_count": 12,
  "items": [
    {
      "order_history_entry_id": "uuid",
      "history_entry_type": "customer_proposed",
      "occurred_at": "2026-04-12T11:50:00+09:00",
      "actor_display_name": "Zero Operator",
      "history_label": "Customer proposal recorded",
      "history_detail_text": "Proposed delivery window 2026-04-19 to 2026-04-21",
      "related_record_type": "customer_delivery_proposal_record",
      "related_record_id": "uuid"
    }
  ]
}
~~~

# ============================================================
# 2. ui use fields
# ============================================================

ui_use_fields:
  - history_entry_type
  - occurred_at
  - actor_display_name
  - history_label
  - history_detail_text
  - related_record_type
  - related_record_id

# ============================================================
# 3. design rules
# ============================================================

rules:
  - order history is chronological and readable
  - history query is order-scoped by default
  - timeline display favors operator comprehension over raw audit density
  - pagination still applies for long-lived orders


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200019_ORDER_FLOW_LIST_QUERY_HISTORY_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200020_ORDER_FLOW_FILTER_SORT_RULES_EXACT.md -->
# ============================================================
# ORDER FLOW FILTER SORT RULES EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact filter and sort rules across list surfaces.

# ============================================================
# 1. common filter rules
# ============================================================

common_filter_rules:

  keyword:
    meaning:
      - searches order_number
      - searches customer_name_snapshot
      - may search shipment_request_number on shipment surfaces
    constraints:
      - trim_whitespace
      - empty_string treated_as null

  date_range:
    meaning:
      - inclusive start
      - inclusive end for date fields
    constraints:
      - date_to must be same_or_after date_from

  multi_select_status_filters:
    meaning:
      - OR within same filter family
      - AND across different filter families
    examples:
      - order_states confirmed or inventory_checked
      - AND shipment_status not_requested

  only_open_orders:
    meaning:
      - excludes closed
      - excludes canceled unless explicitly included elsewhere

# ============================================================
# 2. allowed sort fields by surface
# ============================================================

allowed_sort_fields:

  order_list:
    - updated_at
    - order_date
    - requested_delivery_date
    - order_number
    - customer_name_snapshot
    - total_amount

  shipment_board:
    - requested_at
    - requested_ship_date
    - shipment_request_number
    - order_number

  order_history:
    - occurred_at

# ============================================================
# 3. sort direction rules
# ============================================================

sort_direction_rules:
  allowed_values:
    - asc
    - desc
  defaults:
    order_list:
      sort_by: updated_at
      sort_direction: desc
    shipment_board:
      sort_by: requested_at
      sort_direction: desc
    order_history:
      sort_by: occurred_at
      sort_direction: desc

# ============================================================
# 4. invalid filter handling
# ============================================================

invalid_filter_handling:
  rules:
    - invalid date range returns validation_error
    - unsupported sort field returns validation_error
    - unsupported status value returns validation_error
    - excessive page_size should be capped or rejected by policy

# ============================================================
# 5. ui intent
# ============================================================

ui_intent:
  - order_list optimizes next work discovery
  - shipment_board optimizes execution visibility
  - history list optimizes chronological understanding
  - filters should reduce ambiguity, not create hidden logic


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200020_ORDER_FLOW_FILTER_SORT_RULES_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200021_ORDER_FLOW_NOTIFICATION_LIST_QUERY_EXACT.md -->
# ============================================================
# ORDER FLOW NOTIFICATION LIST QUERY EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact list query request / response for notification and reminder surfaces.

endpoint_name:
- list_notification_events

request_payload:
~~~json
{
  "company_id": "uuid",
  "page": 1,
  "page_size": 20,
  "filters": {
    "keyword": "ABC Trading",
    "notification_event_types": [
      "proposal_overdue",
      "shipment_overdue",
      "sync_failed"
    ],
    "notification_levels": ["warning", "critical"],
    "read_states": ["unread", "read"],
    "assigned_actor_ref": null,
    "only_open_related_orders": true,
    "occurred_from": "2026-04-01T00:00:00+09:00",
    "occurred_to": "2026-04-30T23:59:59+09:00"
  },
  "sort": {
    "sort_by": "event_occurred_at",
    "sort_direction": "desc"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "page": 1,
  "page_size": 20,
  "total_count": 14,
  "items": [
    {
      "notification_event_id": "uuid",
      "order_id": "uuid",
      "order_number": "ORD-2026-000045",
      "customer_name_snapshot": "ABC Trading Co., Ltd.",
      "notification_event_type": "proposal_overdue",
      "notification_level": "warning",
      "notification_title": "Customer response overdue",
      "notification_message": "No response recorded 3 days after proposal",
      "event_occurred_at": "2026-04-15T09:00:00+09:00",
      "due_at": "2026-04-15T09:00:00+09:00",
      "read_state": "unread",
      "assigned_actor_ref": null,
      "related_record_type": "customer_delivery_proposal_record",
      "related_record_id": "uuid"
    }
  ]
}
~~~

ui_use_fields:
  - order_number
  - customer_name_snapshot
  - notification_event_type
  - notification_level
  - notification_title
  - notification_message
  - event_occurred_at
  - due_at
  - read_state

design_rules:
  - notification list is operator action discovery surface
  - critical items should sort visibly even in default desc order context
  - notification list should link back to order_detail or related action screen
  - notification visibility is separate from audit log density


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200021_ORDER_FLOW_NOTIFICATION_LIST_QUERY_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200022_ORDER_FLOW_HOME_SUMMARY_QUERY_EXACT.md -->
# ============================================================
# ORDER FLOW HOME SUMMARY QUERY EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact request / response payload for home dashboard summary query.

endpoint_name:
- get_home_dashboard_summary

request_payload:
~~~json
{
  "company_id": "uuid",
  "actor_ref": "uuid",
  "scope": {
    "include_only_open_orders": true,
    "include_assigned_only": false
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "summary": {
    "open_order_count": 128,
    "waiting_customer_response_count": 14,
    "waiting_shipment_count": 19,
    "waiting_delivery_confirmation_count": 11,
    "overdue_order_count": 7
  },
  "shipment_progress": {
    "requested_count": 8,
    "accepted_count": 5,
    "partially_shipped_count": 3,
    "shipped_count": 12
  },
  "overdue_risk": {
    "proposal_overdue_count": 4,
    "shipment_overdue_count": 2,
    "delivery_overdue_count": 3
  },
  "recent_orders": [
    {
      "order_id": "uuid",
      "order_number": "ORD-2026-000045",
      "customer_name_snapshot": "ABC Trading Co., Ltd.",
      "order_state": "customer_proposed",
      "updated_at": "2026-04-12T11:55:00+09:00"
    }
  ],
  "action_needed_items": [
    {
      "order_id": "uuid",
      "order_number": "ORD-2026-000045",
      "action_type": "followup_customer_response",
      "action_label": "Follow up proposal response",
      "priority_level": "warning"
    }
  ]
}
~~~

design_rules:
  - home summary is aggregate-first
  - summary must be fast to read
  - action_needed_items are more important than passive totals
  - counts should reflect operator-meaningful open work


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200022_ORDER_FLOW_HOME_SUMMARY_QUERY_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200023_ORDER_FLOW_HOME_WIDGET_MAPPING_EXACT.md -->
# ============================================================
# ORDER FLOW HOME WIDGET MAPPING EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines which response fields map to which home widgets.

home_widget_mapping:

  open_orders_kpi_widget:
    source_fields:
      - summary.open_order_count

  waiting_customer_response_kpi_widget:
    source_fields:
      - summary.waiting_customer_response_count

  waiting_shipment_kpi_widget:
    source_fields:
      - summary.waiting_shipment_count

  waiting_delivery_confirmation_kpi_widget:
    source_fields:
      - summary.waiting_delivery_confirmation_count

  overdue_orders_kpi_widget:
    source_fields:
      - summary.overdue_order_count

  shipment_progress_widget:
    source_fields:
      - shipment_progress.requested_count
      - shipment_progress.accepted_count
      - shipment_progress.partially_shipped_count
      - shipment_progress.shipped_count

  overdue_risk_widget:
    source_fields:
      - overdue_risk.proposal_overdue_count
      - overdue_risk.shipment_overdue_count
      - overdue_risk.delivery_overdue_count

  recent_orders_widget:
    source_fields:
      - recent_orders[].order_id
      - recent_orders[].order_number
      - recent_orders[].customer_name_snapshot
      - recent_orders[].order_state
      - recent_orders[].updated_at

  action_needed_widget:
    source_fields:
      - action_needed_items[].order_id
      - action_needed_items[].order_number
      - action_needed_items[].action_type
      - action_needed_items[].action_label
      - action_needed_items[].priority_level

mapping_rules:
  - widget field mapping should stay shallow and readable
  - each widget should degrade gracefully on mobile
  - action_needed_widget has higher priority than recent_orders_widget


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200023_ORDER_FLOW_HOME_WIDGET_MAPPING_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200024_ORDER_FLOW_HOME_ACTION_SHORTCUTS_EXACT.md -->
# ============================================================
# ORDER FLOW HOME ACTION SHORTCUTS EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact home shortcut actions and their navigation targets.

home_action_shortcuts:

  create_standalone_order:
    label:
      - Create Order
    target_route:
      - create_standalone_order_screen
    permission_expectation:
      - create_standalone_order permission required

  create_from_estimate:
    label:
      - Create from Estimate
    target_route:
      - create_order_from_estimate_screen
    visibility_rule:
      - visible when estimate-origin entry context or authorized estimate selection exists

  open_order_list:
    label:
      - Open Orders
    target_route:
      - order_list_screen

  open_notifications:
    label:
      - Notifications
    target_route:
      - notification_list_surface_exact_to_be_added_later

  open_shipment_board:
    label:
      - Shipment Board
    target_route:
      - shipment_status_board_screen

  open_overdue_items:
    label:
      - Overdue Items
    target_route:
      - filtered_order_list_or_notification_list

shortcut_design_rules:
  - shortcuts should point to high-frequency operational actions
  - shortcuts should not replace state-aware action guidance
  - home should stay useful even without estimate-origin context


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200024_ORDER_FLOW_HOME_ACTION_SHORTCUTS_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200025_ORDER_FLOW_SQL_REVIEW_PACKET_OVERVIEW.md -->
# ============================================================
# ORDER FLOW SQL REVIEW PACKET OVERVIEW
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
This packet provides SQL candidate files for Sato review
before any actual database execution planning.

review_policy:
- review first
- additive only
- no destructive change included
- schema name intentionally left as public candidate for review stage
- production execution is out of scope in this packet

packet_files:
- 1200026_ORDER_FLOW_SQL_CANDIDATE_PHASE_1_ORDER_CORE.sql
- 1200027_ORDER_FLOW_SQL_CANDIDATE_PHASE_2_EXECUTION.sql
- 1200028_ORDER_FLOW_SQL_CANDIDATE_PHASE_3_SHIPMENT_HISTORY.sql

recommended_review_order:
1. order core
2. execution and schedule
3. shipment, delivery, history, notification, sync

important_note:
These files are review candidates only.
They are not the final approved execution SQL.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200025_ORDER_FLOW_SQL_REVIEW_PACKET_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200029_ORDER_FLOW_SATO_REVIEW_REQUEST.md -->
# ============================================================
# ORDER FLOW SATO REVIEW REQUEST
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_target:
- Sato

purpose:
Formal review request note for OrderFlow SQL candidate packet.

review_request_message:
佐藤（DB担当）レビュー依頼

OrderFlow の初期DB設計について、
以下のSQL候補束をレビュー対象として確認してください。

対象:
- 1200026_ORDER_FLOW_SQL_CANDIDATE_PHASE_1_ORDER_CORE.sql
- 1200027_ORDER_FLOW_SQL_CANDIDATE_PHASE_2_EXECUTION.sql
- 1200028_ORDER_FLOW_SQL_CANDIDATE_PHASE_3_SHIPMENT_HISTORY.sql

見てほしい観点:
- テーブル分割は妥当か
- FK候補の切り方は妥当か
- 状態の持ち方が過不足ないか
- partial shipment / partial delivery を再構成できるか
- 通知 / sync / pending_operation の置き場は妥当か
- index候補は初期値として過不足ないか
- 将来の ERP 連携や app-local 運用に耐えるか
- additive only の方針に反していないか

前提:
- 本束はレビュー用候補であり、まだ実行確定ではない
- destructive change は含めていない
- 共通部品詳細はこの設計束に含めていない
- OrderFlow 固有責務のみを中心に設計している

期待アウトプット:
- OK / 要修正 / 保留
- 修正が必要なら具体的な指摘点
- 実行前に追加で必要な制約や index
- 将来詰めるべき migration 論点


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200029_ORDER_FLOW_SATO_REVIEW_REQUEST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200030_ORDER_FLOW_PRE_EXECUTION_CHECKLIST.md -->
# ============================================================
# ORDER FLOW PRE EXECUTION CHECKLIST
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Checklist to be completed before any actual SQL execution planning.

pre_execution_checklist:

  phase_guard:
    - current work is still design/review stage
    - no execution before explicit approval
    - no phase-less fix

  review_guard:
    - Sato review completed
    - review outcome recorded
    - unresolved DB concerns listed

  schema_guard:
    - target schema decided explicitly
    - naming policy confirmed
    - company scope strategy confirmed
    - uuid generation policy confirmed

  data_model_guard:
    - order core approved
    - schedule-side tables approved
    - shipment and delivery tables approved
    - notification and sync tables approved
    - soft-link policy approved where strict FK is not used

  index_guard:
    - list query paths reviewed
    - shipment board query paths reviewed
    - notification list query paths reviewed
    - history query paths reviewed

  state_guard:
    - order_state approved
    - shipment_status approved
    - delivery_status approved
    - proposal_status approved
    - close and cancel rules approved

  migration_guard:
    - additive only confirmed
    - destructive statements absent
    - rollback / retry posture discussed if needed later

  integration_guard:
    - ERP-present mode assumptions reviewed
    - ERP-absent mode assumptions reviewed
    - sync_state handling reviewed
    - pending_operation handling reviewed

final_gate:
  - do not execute until Boss decision exists
  - do not execute until Sato review result is attached


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200030_ORDER_FLOW_PRE_EXECUTION_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200031_ORDER_FLOW_SQL_REVIEW_FINDINGS_TEMPLATE.md -->
# ============================================================
# ORDER FLOW SQL REVIEW FINDINGS TEMPLATE
# ============================================================

status: template
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Template for recording Sato review findings.

review_summary:
  overall_result:
    - pending

  reviewed_files:
    - 1200026_ORDER_FLOW_SQL_CANDIDATE_PHASE_1_ORDER_CORE.sql
    - 1200027_ORDER_FLOW_SQL_CANDIDATE_PHASE_2_EXECUTION.sql
    - 1200028_ORDER_FLOW_SQL_CANDIDATE_PHASE_3_SHIPMENT_HISTORY.sql

  findings:

    order_core:
      result:
        - pending
      notes:
        - TBD

    execution_and_schedule:
      result:
        - pending
      notes:
        - TBD

    shipment_delivery_history:
      result:
        - pending
      notes:
        - TBD

  required_changes:
    - TBD

  optional_improvements:
    - TBD

  deferred_topics:
    - schema exact placement
    - trigger/update strategy
    - RLS exact design
    - migration packaging
    - app-local seed/test data strategy

  final_recommendation:
    - pending


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200031_ORDER_FLOW_SQL_REVIEW_FINDINGS_TEMPLATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200032_ORDER_FLOW_EXECUTION_HOLD_NOTE.md -->
# ============================================================
# ORDER FLOW EXECUTION HOLD NOTE
# ============================================================

status: hold-note
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Explicitly prevents accidental interpretation that SQL candidates
are already approved for execution.

hold_note:
- current SQL files are design/review candidates only
- no production execution is approved by this note
- no migration packaging is approved by this note
- no schema write should occur before:
  - Boss go decision
  - Sato DB review completion
  - execution target confirmation
  - migration policy confirmation

summary:
Design is advanced.
Execution is intentionally held.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200032_ORDER_FLOW_EXECUTION_HOLD_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200033_ORDER_FLOW_SEED_PACKET_CANDIDATE.md -->
# ============================================================
# ORDER FLOW SEED PACKET CANDIDATE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines candidate seed packet files for OrderFlow local/dev/test usage.

seed_packet_candidates:
  - candidate_file_name: seed_0001_order_flow_company_and_roles.sql
    contains:
      - company context
      - actor refs
      - sample role context

  - candidate_file_name: seed_0002_order_flow_orders.sql
    contains:
      - estimate-origin order
      - standalone order
      - customer snapshots
      - line items

  - candidate_file_name: seed_0003_order_flow_execution.sql
    contains:
      - inventory checks
      - lead time
      - delivery candidates
      - proposals and responses

  - candidate_file_name: seed_0004_order_flow_shipment_delivery.sql
    contains:
      - shipment request
      - shipment result
      - shipment execution
      - delivery confirmation
      - partial cases

  - candidate_file_name: seed_0005_order_flow_notification_sync.sql
    contains:
      - history
      - notification events
      - sync failed cases
      - pending operation cases

notes:
  - seed files are candidate only
  - exact insert sql is intentionally deferred

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200033_ORDER_FLOW_SEED_PACKET_CANDIDATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200034_ORDER_FLOW_DOWNSTREAM_HANDOFF_API_CANDIDATE.md -->
# ============================================================
# ORDER FLOW DOWNSTREAM HANDOFF API CANDIDATE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines future candidate API payload for downstream invoice handoff.

endpoint_name:
- create_downstream_invoice_handoff

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "handoff_target": "invoice_flow",
  "handoff_payload": {
    "order_number": "ORD-2026-000045",
    "currency_code": "JPY",
    "total_amount": "13200.00",
    "closure_reason_type": "delivered_completed",
    "customer_snapshot_summary": {
      "customer_name_snapshot": "ABC Trading Co., Ltd.",
      "billing_name_snapshot": "ABC Trading Co., Ltd."
    },
    "delivered_scope_summary": {
      "fully_delivered": true,
      "remaining_quantity_exists": false
    }
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "handoff_result": {
    "handoff_target": "invoice_flow",
    "handoff_status": "created",
    "downstream_reference_id": "uuid"
  }
}
~~~

notes:
  - candidate only
  - downstream system exact is intentionally deferred


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200034_ORDER_FLOW_DOWNSTREAM_HANDOFF_API_CANDIDATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200035_ORDER_FLOW_SEED_SQL_PACKET_OVERVIEW.md -->
# ============================================================
# ORDER FLOW SEED SQL PACKET OVERVIEW
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
Provides local/dev/test seed SQL candidates for OrderFlow.

packet_policy:
- seed only
- local/dev/test oriented
- not for production assumption
- separate from structural migration
- review first before real use in shared environments

packet_files:
- 1200036_ORDER_FLOW_SEED_SQL_COMPANY_AND_ROLES.sql
- 1200037_ORDER_FLOW_SEED_SQL_ORDERS_AND_EXECUTION.sql
- 1200038_ORDER_FLOW_SEED_SQL_SHIPMENT_DELIVERY_NOTIFICATION.sql

coverage_goal:
- company and actor context
- estimate-origin order
- standalone order
- partial shipment
- partial delivery
- overdue notification
- sync failed visibility


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200035_ORDER_FLOW_SEED_SQL_PACKET_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200039_ORDER_FLOW_TO_INVOICEFLOW_RECEIVER_API_EXACT.md -->
# ============================================================
# ORDER FLOW TO INVOICEFLOW RECEIVER API EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact candidate payload contract between OrderFlow and InvoiceFlow receiver.

endpoint_name:
- create_invoice_from_order_handoff

request_payload:
~~~json
{
  "company_id": "uuid",
  "source_system": "order_flow",
  "handoff_context": {
    "order_id": "uuid",
    "order_number": "ORD-2026-000045",
    "closure_reason_type": "delivered_completed",
    "handoff_timestamp": "2026-04-20T16:05:00+09:00"
  },
  "customer_billing_summary": {
    "customer_name_snapshot": "ABC Trading Co., Ltd.",
    "billing_name_snapshot": "ABC Trading Co., Ltd.",
    "contact_person_snapshot": "Taro Yamada",
    "contact_email_snapshot": "taro@example.com",
    "billing_address_snapshot": "billing address text",
    "locale_snapshot": "ja-JP"
  },
  "money_summary": {
    "currency_code": "JPY",
    "subtotal_amount": "12000.00",
    "tax_amount": "1200.00",
    "total_amount": "13200.00"
  },
  "delivered_scope_summary": {
    "fully_delivered": true,
    "remaining_quantity_exists": false,
    "delivery_confirmation_count": 1
  },
  "source_trace": {
    "source_estimate_exists": true,
    "source_estimate_id": "uuid-or-null",
    "source_estimate_number_snapshot": "EST-2026-000123"
  },
  "notes": {
    "billing_hint_note": "bill after final delivery confirmation"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "receiver_result": {
    "receiver_system": "invoice_flow",
    "invoice_creation_status": "created",
    "invoice_id": "uuid",
    "invoice_number": "INV-2026-000010"
  }
}
~~~

design_rules:
  - receiver payload is summary-first, not full order replay
  - invoice receiver may revalidate readiness
  - sender traceability must remain visible


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200039_ORDER_FLOW_TO_INVOICEFLOW_RECEIVER_API_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200040_ORDER_FLOW_TO_INVOICEFLOW_BILLING_READY_RULES.md -->
# ============================================================
# ORDER FLOW TO INVOICEFLOW BILLING READY RULES
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines candidate billing-ready rules before downstream handoff to InvoiceFlow.

billing_ready_rules:

  normally_ready_when:
    - order_state is closed
    - closure_reason_type is one of:
      - delivered_completed
      - business_completed
    - currency_code exists
    - total_amount exists
    - customer billing summary exists

  may_be_blocked_when:
    - remaining_quantity_exists is true and not explicitly accepted by closure reason
    - billing-side customer summary is incomplete
    - total amount is missing
    - order is canceled without billing policy allowing invoice creation
    - sync/error posture indicates unresolved business incompleteness

  manual_override_candidate:
    - order_manager approved billing handoff
    - future policy may allow exceptional billing-ready override

  sender_side_note:
    - OrderFlow determines handoff eligibility candidate
    - InvoiceFlow still decides invoice-side acceptance


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200040_ORDER_FLOW_TO_INVOICEFLOW_BILLING_READY_RULES.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200041_ORDER_FLOW_TO_INVOICEFLOW_ERROR_CASES.md -->
# ============================================================
# ORDER FLOW TO INVOICEFLOW ERROR CASES
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines candidate error cases for downstream invoice handoff.

error_cases:

  not_billing_ready:
    meaning:
      - OrderFlow attempted handoff before billing-ready conditions
    suggested_error_code:
      - not_billing_ready

  receiver_validation_error:
    meaning:
      - InvoiceFlow rejected the payload because receiver-required fields are incomplete
    suggested_error_code:
      - receiver_validation_error

  duplicate_handoff_attempt:
    meaning:
      - a downstream invoice already exists for the same order and policy disallows duplicate creation
    suggested_error_code:
      - duplicate_handoff_attempt

  authorization_error:
    meaning:
      - actor lacks permission to initiate downstream handoff
    suggested_error_code:
      - authorization_error

  receiver_unavailable:
    meaning:
      - receiver system is unavailable or timed out
    suggested_error_code:
      - receiver_unavailable

response_envelope_candidate:
~~~json
{
  "ok": false,
  "error_code": "not_billing_ready",
  "message": "order is not ready for invoice handoff"
}
~~~

design_rules:
  - downstream failure must not mutate OrderFlow identity
  - handoff failure must stay operator-visible
  - duplicate control policy should be explicit later


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200041_ORDER_FLOW_TO_INVOICEFLOW_ERROR_CASES.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200042_ORDER_FLOW_REVIEW_REFLECTION_PACKET_OVERVIEW.md -->
# ============================================================
# ORDER FLOW REVIEW REFLECTION PACKET OVERVIEW
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides the packet structure for reflecting review findings
after Sato review and later decision review.

packet_role:
- record what was pointed out
- record what changed
- record what was deferred
- keep design traceability after review

packet_files:
- 1200043_ORDER_FLOW_REVIEW_CHANGELOG_TEMPLATE.md
- 1200044_ORDER_FLOW_REVIEW_DECISION_LOG_TEMPLATE.md
- 1200045_ORDER_FLOW_POST_REVIEW_ACTION_PLAN.md

usage_rule:
- do not silently edit major design assumptions without decision log
- use changelog for concrete file-level changes
- use decision log for accepted / rejected / deferred findings


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200042_ORDER_FLOW_REVIEW_REFLECTION_PACKET_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200043_ORDER_FLOW_REVIEW_CHANGELOG_TEMPLATE.md -->
# ============================================================
# ORDER FLOW REVIEW CHANGELOG TEMPLATE
# ============================================================

status: template
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Template for recording concrete changes after review.

review_changelog:

  - change_id: OF-REV-001
    review_source:
      - Sato
    target_files:
      - TBD
    change_type:
      - update
    summary:
      - TBD
    before:
      - TBD
    after:
      - TBD
    reason:
      - TBD
    status:
      - pending

  - change_id: OF-REV-002
    review_source:
      - Sato
    target_files:
      - TBD
    change_type:
      - add
    summary:
      - TBD
    before:
      - TBD
    after:
      - TBD
    reason:
      - TBD
    status:
      - pending

change_type_allowed_values:
- add
- update
- split
- clarify
- defer


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200043_ORDER_FLOW_REVIEW_CHANGELOG_TEMPLATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200044_ORDER_FLOW_REVIEW_DECISION_LOG_TEMPLATE.md -->
# ============================================================
# ORDER FLOW REVIEW DECISION LOG TEMPLATE
# ============================================================

status: template
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Template for recording decision outcomes for review findings.

review_decision_log:

  - decision_id: OF-DEC-001
    source_finding:
      - TBD
    reviewer:
      - Sato
    decision:
      - pending
    decision_reason:
      - TBD
    affected_area:
      - TBD
    followup_required:
      - TBD
    note:
      - TBD

decision_allowed_values:
- accepted
- partially_accepted
- rejected
- deferred

decision_rules:
- every major review finding should have a decision
- deferred items should point to a future action
- rejected findings should carry a reason


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200044_ORDER_FLOW_REVIEW_DECISION_LOG_TEMPLATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200045_ORDER_FLOW_POST_REVIEW_ACTION_PLAN.md -->
# ============================================================
# ORDER FLOW POST REVIEW ACTION PLAN
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the recommended order of work after review results arrive.

post_review_action_plan:

  step_1:
    - record Sato findings in review findings template

  step_2:
    - classify findings into:
      - must_fix_before_execution
      - should_fix_before_seed_use
      - can_defer

  step_3:
    - update structural docs first if model assumptions changed
    includes:
      - table candidates
      - fk candidates
      - ddl draft
      - rls draft

  step_4:
    - update implementation docs if API or validation changed
    includes:
      - api exact docs
      - validation docs
      - screen mapping docs

  step_5:
    - refresh integrated docs
    includes:
      - 000_COMMON_DESIGN_INDEX.md
      - 000_COMMON_DESIGN_OVERVIEW.md
      - 00_ORDER_FLOW_INTEGRATED.md
      - 9000001_ORDER_FLOW_DESIGN_BIBLE.md

  step_6:
    - regenerate or revise seed SQL if structural changes require it

  step_7:
    - prepare execution candidate only after review closure and go decision

priority_rule:
- structural consistency first
- implementation mapping second
- integrated refresh third
- execution candidate last


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200045_ORDER_FLOW_POST_REVIEW_ACTION_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200046_ORDER_FLOW_REVIEW_REFLECTION_RESULT.md -->
# ============================================================
# ORDER FLOW REVIEW REFLECTION RESULT
# ============================================================

status: final-review-reflected
system: order-flow
owner: Boss
prepared_by: Zero
reviewer:
- Sato

purpose:
Records the final review reflection result for OrderFlow.

review_result:
  overall_result:
    - accepted

  reviewer_statement:
    - no blocking issue
    - no structural correction required before execution planning
    - current table split, FK direction, and migration phasing are acceptable

  accepted_points:
    - order core structure accepted
    - execution and schedule structure accepted
    - shipment and delivery structure accepted
    - history / notification / sync structure accepted
    - RLS candidate direction accepted
    - migration packaging direction accepted
    - seed direction accepted

  required_changes:
    - none

  optional_changes:
    - final repository placement should match actual migration convention
    - seed SQL may be lightly adjusted only if target schema naming changes later

final_reflection:
  - Sato review is treated as passed
  - OrderFlow may move to final execution-candidate preparation stage


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200046_ORDER_FLOW_REVIEW_REFLECTION_RESULT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200047_ORDER_FLOW_EXECUTION_SQL_FINAL_PACKET.md -->
# ============================================================
# ORDER FLOW EXECUTION SQL FINAL PACKET
# ============================================================

status: final-execution-candidate
system: order-flow
owner: Boss
prepared_by: Zero
review_confirmed:
- Sato

purpose:
Marks the final SQL packet set for execution-candidate use.

final_execution_packet:
  structural_sql:
    - 1200026_ORDER_FLOW_SQL_CANDIDATE_PHASE_1_ORDER_CORE.sql
    - 1200027_ORDER_FLOW_SQL_CANDIDATE_PHASE_2_EXECUTION.sql
    - 1200028_ORDER_FLOW_SQL_CANDIDATE_PHASE_3_SHIPMENT_HISTORY.sql

  policy_sql:
    - 1100013_ORDER_FLOW_RLS_SQL_DRAFT.md

  packaging_reference:
    - 1100014_ORDER_FLOW_MIGRATION_PACKAGING_OVERVIEW.md
    - 1100015_ORDER_FLOW_MIGRATION_PHASE_PLAN.md
    - 1100016_ORDER_FLOW_MIGRATION_FILE_CANDIDATES.md

execution_candidate_rule:
  - these are now treated as final execution-candidate sources
  - migration repository formatting may still wrap them
  - business meaning is fixed
  - structural re-review is not required unless later scope changes


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200047_ORDER_FLOW_EXECUTION_SQL_FINAL_PACKET.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200048_ORDER_FLOW_SEED_SQL_REFINED_NOTE.md -->
# ============================================================
# ORDER FLOW SEED SQL REFINED NOTE
# ============================================================

status: refined-seed-note
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Confirms the seed SQL posture after final review.

seed_refinement_result:
  result:
    - no major correction required

  minor_refinement_policy:
    - keep current seed IDs and sample flow
    - only adjust later if final schema prefix changes
    - keep company_id fixed to test company
    - keep both JPY and USD examples
    - keep partial shipment and partial delivery examples

seed_status:
  - good enough for local/dev/test candidate use
  - no further seed redesign required at this stage


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200048_ORDER_FLOW_SEED_SQL_REFINED_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200049_ORDER_FLOW_TO_INVOICEFLOW_RECEIVER_API_FINAL.md -->
# ============================================================
# ORDER FLOW TO INVOICEFLOW RECEIVER API FINAL
# ============================================================

status: final-api-candidate
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the final candidate payload contract for OrderFlow -> InvoiceFlow handoff.

endpoint_name:
- create_invoice_from_order_handoff

request_payload:
~~~json
{
  "company_id": "uuid",
  "source_system": "order_flow",
  "handoff_context": {
    "order_id": "uuid",
    "order_number": "ORD-2026-000045",
    "closure_reason_type": "delivered_completed",
    "handoff_timestamp": "2026-04-20T16:05:00+09:00"
  },
  "customer_billing_summary": {
    "customer_name_snapshot": "ABC Trading Co., Ltd.",
    "billing_name_snapshot": "ABC Trading Co., Ltd.",
    "contact_person_snapshot": "Taro Yamada",
    "contact_email_snapshot": "taro@example.com",
    "billing_address_snapshot": "billing address text",
    "locale_snapshot": "ja-JP"
  },
  "money_summary": {
    "currency_code": "JPY",
    "subtotal_amount": "12000.00",
    "tax_amount": "1200.00",
    "total_amount": "13200.00"
  },
  "delivered_scope_summary": {
    "fully_delivered": true,
    "remaining_quantity_exists": false,
    "delivery_confirmation_count": 1
  },
  "source_trace": {
    "source_estimate_exists": true,
    "source_estimate_id": "uuid-or-null",
    "source_estimate_number_snapshot": "EST-2026-000123"
  },
  "notes": {
    "billing_hint_note": "bill after final delivery confirmation"
  }
}
~~~

success_response_payload:
~~~json
{
  "ok": true,
  "receiver_result": {
    "receiver_system": "invoice_flow",
    "invoice_creation_status": "created",
    "invoice_id": "uuid",
    "invoice_number": "INV-2026-000010"
  }
}
~~~

error_response_payload:
~~~json
{
  "ok": false,
  "error_code": "not_billing_ready",
  "message": "order is not ready for invoice handoff"
}
~~~


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/1200049_ORDER_FLOW_TO_INVOICEFLOW_RECEIVER_API_FINAL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/120300_ORDERFLOW_FULFILLMENT_CONTROL_IMPLEMENTATION_GUIDE.md -->
# ============================================================
# ORDERFLOW FULFILLMENT CONTROL IMPLEMENTATION GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: OrderFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: fulfillment-control-implementation-guide

purpose:
Provides the first implementation-oriented guide for the newly
clarified differentiator in OrderFlow.

implementation_priority:
- Phase A should begin from order cockpit and fulfillment visibility,
  not from generic order entry expansion.
- Operational control should become visible before deeper automation.

recommended_phase_a_entry:
- fix row families for execution timeline, exception review, and cockpit outputs
- freeze cockpit and exception-review DTOs
- separate raw order editing from execution readiness aggregation
- create slice order:
  - order cockpit query
  - fulfillment exception review query
  - approval action
  - downstream handoff readiness review

hard_rules:
- keep raw order detail separate from execution rollup state
- keep approval and exception review separate from raw history
- do not collapse fulfillment blockers into only notes or comments
- do not bury downstream blockers inside generic order text

implementation_readiness_signal:
- once DDL, DTO, stub boundaries, and slice order are frozen,
  OrderFlow can follow the same bundled Phase A pattern used in
  NameCardManager, PocketSecretary, ProjectFlow, and EstimateCreator.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/120300_ORDERFLOW_FULFILLMENT_CONTROL_IMPLEMENTATION_GUIDE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/120310_ORDERFLOW_PHASE_A_EXECUTION_TIMELINE_IMPLEMENTATION_SKELETON.md -->
# ============================================================
# ORDERFLOW PHASE A EXECUTION TIMELINE IMPLEMENTATION SKELETON
# ============================================================

status: canonical
layer: implementation
system: applications
application: OrderFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-execution-timeline-implementation-skeleton

purpose:
Defines the first implementation skeleton for OrderFlow
Phase A operational control without starting runtime generation.

implementation_policy:
- additive only
- exact DTOs first
- keep raw order editing separate from execution rollup state
- keep audit append separate from review query repositories

recommended_server_modules:
- api/controller
- api/dto
- application/service
- application/validator
- application/mapper
- domain/model
- domain/port
- infrastructure/repository
- infrastructure/audit

phase_a_skeleton_units:
- OrderCockpitQueryController
- OrderCockpitQueryService
- OrderCockpitQueryValidator
- ExecutionTimelineRepository
- FulfillmentExceptionReviewController
- FulfillmentExceptionReviewService
- FulfillmentExceptionReviewValidator
- FulfillmentExceptionReviewRepository
- OrderCockpitSnapshotRepository
- OrderFlowAuditWriter

responsibility_split:
- controller:
  - request parsing
  - auth context handoff
  - response serialization
- service:
  - cockpit assembly
  - fulfillment review orchestration
  - summary message assembly
- validator:
  - required field checks
  - page boundary checks
  - Phase A scope rejection
- mapper:
  - dto to domain mapping
  - domain to response mapping
- repository:
  - persistence and query only
  - no business branching
- audit:
  - append events after relevant review operations when needed

phase_a_build_order:
- step_01_order_cockpit_query_path
- step_02_fulfillment_exception_review_query_path
- step_03_add snapshot and audit path
- step_04_add test baseline

minimum_test_families:
- order_cockpit_query_success
- order_cockpit_query_validation_failure
- fulfillment_exception_review_query_success
- fulfillment_exception_review_include_resolved_toggle
- fulfillment_exception_review_include_downstream_blockers_toggle

phase_a_exit_ready_definition:
- DTO names compile against frozen contracts
- cockpit and exception review boundaries are explicit
- row-family assumptions align to the DDL additive plan
- audit append seam is present where needed

explicit_non_scope:
- no order write automation in this document
- no shipment release workflow here
- no invoice handoff execution here
- no Android client work here

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/120310_ORDERFLOW_PHASE_A_EXECUTION_TIMELINE_IMPLEMENTATION_SKELETON.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/120320_ORDERFLOW_PHASE_A_STUB_FILE_PLAN.md -->
# ============================================================
# ORDERFLOW PHASE A STUB FILE PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: OrderFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-stub-file-plan

purpose:
Defines the implementation-ready stub file boundary for
OrderFlow Phase A operational control.

implementation_policy:
- additive only
- exact DTOs first
- no Japanese literals in Java source
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit append stays separate

target_package_base:
- com.lsam.OrderFlow

target_server_source_root_example:
- src/main/java/com/lsam/OrderFlow

target_test_source_root_example:
- src/test/java/com/lsam/OrderFlow

phase_a_scope_modules:
- order cockpit query
- fulfillment exception review query
- cockpit snapshot and audit bridge

recommended_stub_tree:
- src/main/java/com/lsam/OrderFlow/api/controller/execution/OrderCockpitQueryController.java
- src/main/java/com/lsam/OrderFlow/api/controller/execution/FulfillmentExceptionReviewQueryController.java

- src/main/java/com/lsam/OrderFlow/api/dto/execution/request/OrderCockpitQueryRequest.java
- src/main/java/com/lsam/OrderFlow/api/dto/execution/request/FulfillmentExceptionReviewQueryRequest.java

- src/main/java/com/lsam/OrderFlow/api/dto/execution/response/OrderCockpitQueryResponse.java
- src/main/java/com/lsam/OrderFlow/api/dto/execution/response/FulfillmentExceptionReviewQueryResponse.java
- src/main/java/com/lsam/OrderFlow/api/dto/common/ErrorResponse.java

- src/main/java/com/lsam/OrderFlow/application/service/execution/OrderCockpitQueryService.java
- src/main/java/com/lsam/OrderFlow/application/service/execution/FulfillmentExceptionReviewQueryService.java

- src/main/java/com/lsam/OrderFlow/application/validator/execution/OrderCockpitQueryValidator.java
- src/main/java/com/lsam/OrderFlow/application/validator/execution/FulfillmentExceptionReviewQueryValidator.java

- src/main/java/com/lsam/OrderFlow/application/mapper/execution/OrderCockpitQueryMapper.java
- src/main/java/com/lsam/OrderFlow/application/mapper/execution/FulfillmentExceptionReviewQueryMapper.java

- src/main/java/com/lsam/OrderFlow/domain/model/execution/OrderExecutionTimelineItem.java
- src/main/java/com/lsam/OrderFlow/domain/model/execution/FulfillmentExceptionReviewItem.java
- src/main/java/com/lsam/OrderFlow/domain/model/execution/OrderCockpitSnapshot.java

- src/main/java/com/lsam/OrderFlow/domain/port/execution/ExecutionTimelineRepository.java
- src/main/java/com/lsam/OrderFlow/domain/port/execution/FulfillmentExceptionReviewRepository.java
- src/main/java/com/lsam/OrderFlow/domain/port/execution/OrderCockpitSnapshotRepository.java
- src/main/java/com/lsam/OrderFlow/domain/port/execution/OrderFlowAuditPort.java

- src/main/java/com/lsam/OrderFlow/infrastructure/repository/execution/JdbcExecutionTimelineRepository.java
- src/main/java/com/lsam/OrderFlow/infrastructure/repository/execution/JdbcFulfillmentExceptionReviewRepository.java
- src/main/java/com/lsam/OrderFlow/infrastructure/repository/execution/JdbcOrderCockpitSnapshotRepository.java
- src/main/java/com/lsam/OrderFlow/infrastructure/audit/execution/DatabaseOrderFlowAuditAdapter.java

- src/main/java/com/lsam/OrderFlow/config/execution/OrderFlowPhaseAConfig.java

- src/test/java/com/lsam/OrderFlow/application/service/execution/OrderCockpitQueryServiceTest.java
- src/test/java/com/lsam/OrderFlow/application/service/execution/FulfillmentExceptionReviewQueryServiceTest.java

file_role_notes:
- controller:
  - request entry
  - auth context handoff
  - response return only
- dto:
  - exact API contract
- validator:
  - required field and boundary checks
- mapper:
  - dto to domain and domain to response conversion
- service:
  - use case orchestration and summary assembly
- domain model:
  - runtime meaning carrier
- port:
  - stable repository and audit boundary
- jdbc repository:
  - SQL-backed adapter
- audit adapter:
  - append-only audit bridge
- config:
  - bean wiring and module isolation

minimum_stub_creation_order:
- 01 common error dto
- 02 request and response dto
- 03 validators
- 04 domain models
- 05 domain ports
- 06 mappers
- 07 services
- 08 controllers
- 09 jdbc repositories
- 10 audit adapter
- 11 config
- 12 service tests

alignment_requirements:
- DTO field names must follow the Phase A API DTO freeze
- row-family assumptions must follow the DDL additive plan
- cockpit and exception review responses must remain aligned to their fixed payload families

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/120320_ORDERFLOW_PHASE_A_STUB_FILE_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/120330_ORDERFLOW_PHASE_A_MODULE_TASK_BREAKDOWN.md -->
# ============================================================
# ORDERFLOW PHASE A MODULE TASK BREAKDOWN
# ============================================================

status: canonical
layer: implementation
system: applications
application: OrderFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-module-task-breakdown

purpose:
Breaks the OrderFlow Phase A stub plan into module-by-module
execution tasks.

baseline_dependencies:
- Phase A execution timeline DDL additive plan
- Phase A API starter
- Phase A API DTO field freeze
- Phase A implementation skeleton

global_rules:
- additive only
- exact DTO names must not drift
- no destructive schema rewrite
- no order write or shipment execution automation in Phase A
- audit append remains separate from query repositories

module_01_request_response_dto:
  goal:
    - create exact request and response DTO classes
  target_files:
    - OrderCockpitQueryRequest.java
    - FulfillmentExceptionReviewQueryRequest.java
    - OrderCockpitQueryResponse.java
    - FulfillmentExceptionReviewQueryResponse.java
    - ErrorResponse.java
  done_definition:
    - all DTO classes compile
    - field names match the DTO freeze exactly

module_02_validators:
  goal:
    - reject invalid request shapes before service entry
  target_files:
    - OrderCockpitQueryValidator.java
    - FulfillmentExceptionReviewQueryValidator.java
  tasks:
    - required field validation
    - page boundary validation
    - filter boundary validation
  done_definition:
    - each endpoint has one dedicated validator

module_03_order_cockpit_query:
  goal:
    - assemble pending approvals, fulfillment blockers, and downstream handoff visibility
  target_files:
    - OrderCockpitQueryController.java
    - OrderCockpitQueryService.java
    - OrderExecutionTimelineItem.java
    - ExecutionTimelineRepository.java
    - JdbcExecutionTimelineRepository.java
    - OrderCockpitQueryMapper.java
  tasks:
    - wire controller to validator and service
    - query execution timeline rows
    - assemble cockpit summary message
    - emit audit append when needed
  done_definition:
    - cockpit query path is structurally stable

module_04_fulfillment_exception_review_query:
  goal:
    - expose fulfillment and downstream blocker review rows
  target_files:
    - FulfillmentExceptionReviewQueryController.java
    - FulfillmentExceptionReviewQueryService.java
    - FulfillmentExceptionReviewItem.java
    - FulfillmentExceptionReviewRepository.java
    - JdbcFulfillmentExceptionReviewRepository.java
    - FulfillmentExceptionReviewQueryMapper.java
  tasks:
    - apply includeResolved toggle
    - apply includeApprovalPending toggle
    - apply includeDownstreamBlockers toggle
    - emit audit append when needed
  done_definition:
    - exception review query path is structurally stable

module_05_snapshot_and_audit_bridge:
  goal:
    - define optional snapshot persistence and audit append boundary
  target_files:
    - OrderCockpitSnapshot.java
    - OrderCockpitSnapshotRepository.java
    - JdbcOrderCockpitSnapshotRepository.java
    - OrderFlowAuditPort.java
    - DatabaseOrderFlowAuditAdapter.java
  tasks:
    - define snapshot seam
    - define audit append seams
    - keep audit append separate from review repositories
  done_definition:
    - snapshot and audit boundary is explicit

module_06_configuration:
  goal:
    - provide minimum wiring boundary
  target_files:
    - OrderFlowPhaseAConfig.java
  tasks:
    - wire controllers to services
    - wire services to repositories and audit port
  done_definition:
    - dependency graph is representable

module_07_tests:
  goal:
    - establish minimum Phase A test safety net
  target_files:
    - OrderCockpitQueryServiceTest.java
    - FulfillmentExceptionReviewQueryServiceTest.java
  tasks:
    - success path test
    - validation failure test
    - filter variation test
  done_definition:
    - each core query service has baseline tests

recommended_execution_order:
- module_01_request_response_dto
- module_02_validators
- module_03_order_cockpit_query
- module_04_fulfillment_exception_review_query
- module_05_snapshot_and_audit_bridge
- module_06_configuration
- module_07_tests

phase_a_ready_to_code_gate:
- DTO names frozen
- validators fixed
- repository boundaries explicit
- service responsibilities explicit
- cockpit and exception review payload compatibility preserved
- audit append boundary explicit

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/120330_ORDERFLOW_PHASE_A_MODULE_TASK_BREAKDOWN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/120340_ORDERFLOW_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md -->
# ============================================================
# ORDERFLOW PHASE A EXACT STUB CONTENT ORDER PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: OrderFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-exact-stub-content-order-plan

purpose:
Defines the exact file content writing order for OrderFlow
Phase A stub generation.

baseline_documents:
- Phase A DDL additive plan
- Phase A API starter
- Phase A API DTO field freeze
- Phase A stub file plan
- Phase A module task breakdown

global_rules:
- additive only
- DTO field names match the freeze document exactly
- controller stays thin
- service owns orchestration
- repository owns persistence and query only
- audit append stays separate

content_order_strategy:
- start from dependency-light files
- lock contracts first
- write ports before adapters
- write tests after service boundaries are clear

phase_01_common_error_contract:
  files:
    - api/dto/common/ErrorResponse.java

phase_02_request_dto_contracts:
  files:
    - api/dto/execution/request/OrderCockpitQueryRequest.java
    - api/dto/execution/request/FulfillmentExceptionReviewQueryRequest.java

phase_03_response_dto_contracts:
  files:
    - api/dto/execution/response/OrderCockpitQueryResponse.java
    - api/dto/execution/response/FulfillmentExceptionReviewQueryResponse.java

phase_04_validators:
  files:
    - application/validator/execution/OrderCockpitQueryValidator.java
    - application/validator/execution/FulfillmentExceptionReviewQueryValidator.java

phase_05_domain_models:
  files:
    - domain/model/execution/OrderExecutionTimelineItem.java
    - domain/model/execution/FulfillmentExceptionReviewItem.java
    - domain/model/execution/OrderCockpitSnapshot.java

phase_06_domain_ports:
  files:
    - domain/port/execution/ExecutionTimelineRepository.java
    - domain/port/execution/FulfillmentExceptionReviewRepository.java
    - domain/port/execution/OrderCockpitSnapshotRepository.java
    - domain/port/execution/OrderFlowAuditPort.java

phase_07_mappers:
  files:
    - application/mapper/execution/OrderCockpitQueryMapper.java
    - application/mapper/execution/FulfillmentExceptionReviewQueryMapper.java

phase_08_services:
  files:
    - application/service/execution/OrderCockpitQueryService.java
    - application/service/execution/FulfillmentExceptionReviewQueryService.java

phase_09_controllers:
  files:
    - api/controller/execution/OrderCockpitQueryController.java
    - api/controller/execution/FulfillmentExceptionReviewQueryController.java

phase_10_repository_adapters:
  files:
    - infrastructure/repository/execution/JdbcExecutionTimelineRepository.java
    - infrastructure/repository/execution/JdbcFulfillmentExceptionReviewRepository.java
    - infrastructure/repository/execution/JdbcOrderCockpitSnapshotRepository.java

phase_11_audit_adapter:
  files:
    - infrastructure/audit/execution/DatabaseOrderFlowAuditAdapter.java

phase_12_configuration:
  files:
    - config/execution/OrderFlowPhaseAConfig.java

phase_13_tests:
  files:
    - src/test/java/com/lsam/OrderFlow/application/service/execution/OrderCockpitQueryServiceTest.java
    - src/test/java/com/lsam/OrderFlow/application/service/execution/FulfillmentExceptionReviewQueryServiceTest.java

first_slice_recommended_start:
- ErrorResponse
- OrderCockpitQueryRequest
- OrderCockpitQueryResponse
- OrderCockpitQueryValidator
- OrderExecutionTimelineItem
- ExecutionTimelineRepository
- OrderCockpitQueryMapper
- OrderCockpitQueryService
- OrderCockpitQueryController
- JdbcExecutionTimelineRepository
- DatabaseOrderFlowAuditAdapter
- OrderFlowPhaseAConfig
- OrderCockpitQueryServiceTest

why_this_order:
- starts from contract-first
- keeps the first compile graph shallow
- enables the cockpit query as the narrowest first vertical slice
- delays exception review query until cockpit boundaries are stable

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/120340_ORDERFLOW_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/120350_ORDERFLOW_PHASE_A_SLICE_COMMAND_PACKS.md -->
# ============================================================
# ORDERFLOW PHASE A SLICE COMMAND PACKS
# ============================================================

status: canonical
layer: implementation
system: applications
application: OrderFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-slice-command-packs

purpose:
Fixes the Termux-oriented stub generation packs for the OrderFlow
Phase A vertical slices.

execution_policy:
- design fixation only in this step
- actual execution is later
- Termux one-block style
- mkdir -p plus cat standard
- package base is com.lsam.OrderFlow
- no Japanese literals in Java source
- additive only

slice_01_order_cockpit_query:
  goal:
    - create the first vertical slice for order cockpit visibility
  target_files:
    - api/dto/common/ErrorResponse.java
    - api/dto/execution/request/OrderCockpitQueryRequest.java
    - api/dto/execution/response/OrderCockpitQueryResponse.java
    - application/validator/execution/OrderCockpitQueryValidator.java
    - domain/model/execution/OrderExecutionTimelineItem.java
    - domain/port/execution/ExecutionTimelineRepository.java
    - application/mapper/execution/OrderCockpitQueryMapper.java
    - application/service/execution/OrderCockpitQueryService.java
    - api/controller/execution/OrderCockpitQueryController.java
    - infrastructure/repository/execution/JdbcExecutionTimelineRepository.java
    - infrastructure/audit/execution/DatabaseOrderFlowAuditAdapter.java
    - config/execution/OrderFlowPhaseAConfig.java
    - src/test/java/com/lsam/OrderFlow/application/service/execution/OrderCockpitQueryServiceTest.java
  default_safe_output_root:
    - $HOME/.tmp/orderflow-phase-a-slice01
  exact_termux_command_pack:
      TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/orderflow-phase-a-slice01}"
      SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/OrderFlow"
      SRC_TEST="$TARGET_ROOT/src/test/java/com/lsam/OrderFlow"

      mkdir -p \
        "$SRC_MAIN/api/dto/common" \
        "$SRC_MAIN/api/dto/execution/request" \
        "$SRC_MAIN/api/dto/execution/response" \
        "$SRC_MAIN/application/validator/execution" \
        "$SRC_MAIN/domain/model/execution" \
        "$SRC_MAIN/domain/port/execution" \
        "$SRC_MAIN/application/mapper/execution" \
        "$SRC_MAIN/application/service/execution" \
        "$SRC_MAIN/api/controller/execution" \
        "$SRC_MAIN/infrastructure/repository/execution" \
        "$SRC_MAIN/infrastructure/audit/execution" \
        "$SRC_MAIN/config/execution" \
        "$SRC_TEST/application/service/execution"

      cat > "$SRC_MAIN/api/dto/common/ErrorResponse.java" <<'EOF'
      package com.lsam.OrderFlow.api.dto.common;

      public class ErrorResponse {
      }
      EOF

      cat > "$SRC_MAIN/api/dto/execution/request/OrderCockpitQueryRequest.java" <<'EOF'
      package com.lsam.OrderFlow.api.dto.execution.request;

      public class OrderCockpitQueryRequest {
      }
      EOF

      cat > "$SRC_MAIN/api/dto/execution/response/OrderCockpitQueryResponse.java" <<'EOF'
      package com.lsam.OrderFlow.api.dto.execution.response;

      public class OrderCockpitQueryResponse {
      }
      EOF

      cat > "$SRC_MAIN/application/validator/execution/OrderCockpitQueryValidator.java" <<'EOF'
      package com.lsam.OrderFlow.application.validator.execution;

      public class OrderCockpitQueryValidator {
      }
      EOF

      cat > "$SRC_MAIN/domain/model/execution/OrderExecutionTimelineItem.java" <<'EOF'
      package com.lsam.OrderFlow.domain.model.execution;

      public class OrderExecutionTimelineItem {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/execution/ExecutionTimelineRepository.java" <<'EOF'
      package com.lsam.OrderFlow.domain.port.execution;

      public interface ExecutionTimelineRepository {
      }
      EOF

      cat > "$SRC_MAIN/application/mapper/execution/OrderCockpitQueryMapper.java" <<'EOF'
      package com.lsam.OrderFlow.application.mapper.execution;

      public class OrderCockpitQueryMapper {
      }
      EOF

      cat > "$SRC_MAIN/application/service/execution/OrderCockpitQueryService.java" <<'EOF'
      package com.lsam.OrderFlow.application.service.execution;

      public class OrderCockpitQueryService {
      }
      EOF

      cat > "$SRC_MAIN/api/controller/execution/OrderCockpitQueryController.java" <<'EOF'
      package com.lsam.OrderFlow.api.controller.execution;

      public class OrderCockpitQueryController {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/repository/execution/JdbcExecutionTimelineRepository.java" <<'EOF'
      package com.lsam.OrderFlow.infrastructure.repository.execution;

      public class JdbcExecutionTimelineRepository {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/audit/execution/DatabaseOrderFlowAuditAdapter.java" <<'EOF'
      package com.lsam.OrderFlow.infrastructure.audit.execution;

      public class DatabaseOrderFlowAuditAdapter {
      }
      EOF

      cat > "$SRC_MAIN/config/execution/OrderFlowPhaseAConfig.java" <<'EOF'
      package com.lsam.OrderFlow.config.execution;

      public class OrderFlowPhaseAConfig {
      }
      EOF

      cat > "$SRC_TEST/application/service/execution/OrderCockpitQueryServiceTest.java" <<'EOF'
      package com.lsam.OrderFlow.application.service.execution;

      public class OrderCockpitQueryServiceTest {
      }
      EOF

slice_02_fulfillment_exception_review_query:
  goal:
    - expose fulfillment and downstream exception review rows
  target_files:
    - api/dto/execution/request/FulfillmentExceptionReviewQueryRequest.java
    - api/dto/execution/response/FulfillmentExceptionReviewQueryResponse.java
    - application/validator/execution/FulfillmentExceptionReviewQueryValidator.java
    - domain/model/execution/FulfillmentExceptionReviewItem.java
    - domain/port/execution/FulfillmentExceptionReviewRepository.java
    - application/mapper/execution/FulfillmentExceptionReviewQueryMapper.java
    - application/service/execution/FulfillmentExceptionReviewQueryService.java
    - api/controller/execution/FulfillmentExceptionReviewQueryController.java
    - infrastructure/repository/execution/JdbcFulfillmentExceptionReviewRepository.java
    - src/test/java/com/lsam/OrderFlow/application/service/execution/FulfillmentExceptionReviewQueryServiceTest.java
  default_safe_output_root:
    - $HOME/.tmp/orderflow-phase-a-slice02
  exact_termux_command_pack:
      TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/orderflow-phase-a-slice02}"
      SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/OrderFlow"
      SRC_TEST="$TARGET_ROOT/src/test/java/com/lsam/OrderFlow"

      mkdir -p \
        "$SRC_MAIN/api/dto/execution/request" \
        "$SRC_MAIN/api/dto/execution/response" \
        "$SRC_MAIN/application/validator/execution" \
        "$SRC_MAIN/domain/model/execution" \
        "$SRC_MAIN/domain/port/execution" \
        "$SRC_MAIN/application/mapper/execution" \
        "$SRC_MAIN/application/service/execution" \
        "$SRC_MAIN/api/controller/execution" \
        "$SRC_MAIN/infrastructure/repository/execution" \
        "$SRC_TEST/application/service/execution"

      cat > "$SRC_MAIN/api/dto/execution/request/FulfillmentExceptionReviewQueryRequest.java" <<'EOF'
      package com.lsam.OrderFlow.api.dto.execution.request;

      public class FulfillmentExceptionReviewQueryRequest {
      }
      EOF

      cat > "$SRC_MAIN/api/dto/execution/response/FulfillmentExceptionReviewQueryResponse.java" <<'EOF'
      package com.lsam.OrderFlow.api.dto.execution.response;

      public class FulfillmentExceptionReviewQueryResponse {
      }
      EOF

      cat > "$SRC_MAIN/application/validator/execution/FulfillmentExceptionReviewQueryValidator.java" <<'EOF'
      package com.lsam.OrderFlow.application.validator.execution;

      public class FulfillmentExceptionReviewQueryValidator {
      }
      EOF

      cat > "$SRC_MAIN/domain/model/execution/FulfillmentExceptionReviewItem.java" <<'EOF'
      package com.lsam.OrderFlow.domain.model.execution;

      public class FulfillmentExceptionReviewItem {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/execution/FulfillmentExceptionReviewRepository.java" <<'EOF'
      package com.lsam.OrderFlow.domain.port.execution;

      public interface FulfillmentExceptionReviewRepository {
      }
      EOF

      cat > "$SRC_MAIN/application/mapper/execution/FulfillmentExceptionReviewQueryMapper.java" <<'EOF'
      package com.lsam.OrderFlow.application.mapper.execution;

      public class FulfillmentExceptionReviewQueryMapper {
      }
      EOF

      cat > "$SRC_MAIN/application/service/execution/FulfillmentExceptionReviewQueryService.java" <<'EOF'
      package com.lsam.OrderFlow.application.service.execution;

      public class FulfillmentExceptionReviewQueryService {
      }
      EOF

      cat > "$SRC_MAIN/api/controller/execution/FulfillmentExceptionReviewQueryController.java" <<'EOF'
      package com.lsam.OrderFlow.api.controller.execution;

      public class FulfillmentExceptionReviewQueryController {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/repository/execution/JdbcFulfillmentExceptionReviewRepository.java" <<'EOF'
      package com.lsam.OrderFlow.infrastructure.repository.execution;

      public class JdbcFulfillmentExceptionReviewRepository {
      }
      EOF

      cat > "$SRC_TEST/application/service/execution/FulfillmentExceptionReviewQueryServiceTest.java" <<'EOF'
      package com.lsam.OrderFlow.application.service.execution;

      public class FulfillmentExceptionReviewQueryServiceTest {
      }
      EOF

slice_03_snapshot_and_audit_bridge:
  goal:
    - expose optional cockpit snapshot persistence and explicit audit seams
  target_files:
    - domain/model/execution/OrderCockpitSnapshot.java
    - domain/port/execution/OrderCockpitSnapshotRepository.java
    - domain/port/execution/OrderFlowAuditPort.java
    - infrastructure/repository/execution/JdbcOrderCockpitSnapshotRepository.java
    - infrastructure/audit/execution/DatabaseOrderFlowAuditAdapter.java
  default_safe_output_root:
    - $HOME/.tmp/orderflow-phase-a-slice03
  exact_termux_command_pack:
      TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/orderflow-phase-a-slice03}"
      SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/OrderFlow"

      mkdir -p \
        "$SRC_MAIN/domain/model/execution" \
        "$SRC_MAIN/domain/port/execution" \
        "$SRC_MAIN/infrastructure/repository/execution" \
        "$SRC_MAIN/infrastructure/audit/execution"

      cat > "$SRC_MAIN/domain/model/execution/OrderCockpitSnapshot.java" <<'EOF'
      package com.lsam.OrderFlow.domain.model.execution;

      public class OrderCockpitSnapshot {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/execution/OrderCockpitSnapshotRepository.java" <<'EOF'
      package com.lsam.OrderFlow.domain.port.execution;

      public interface OrderCockpitSnapshotRepository {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/execution/OrderFlowAuditPort.java" <<'EOF'
      package com.lsam.OrderFlow.domain.port.execution;

      public interface OrderFlowAuditPort {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/repository/execution/JdbcOrderCockpitSnapshotRepository.java" <<'EOF'
      package com.lsam.OrderFlow.infrastructure.repository.execution;

      public class JdbcOrderCockpitSnapshotRepository {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/audit/execution/DatabaseOrderFlowAuditAdapter.java" <<'EOF'
      package com.lsam.OrderFlow.infrastructure.audit.execution;

      public class DatabaseOrderFlowAuditAdapter {
      }
      EOF

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/120350_ORDERFLOW_PHASE_A_SLICE_COMMAND_PACKS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/120360_ORDERFLOW_PHASE_A_SLICE_FIELD_FILL_PLAN.md -->
# ============================================================
# ORDERFLOW PHASE A SLICE FIELD FILL PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: OrderFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-slice-field-fill-plan

purpose:
Defines what each Phase A slice should contain once empty stubs move
into field-filled implementation-ready stubs.

global_rules:
- exact field names follow the DTO freeze exactly
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit append remains separate
- no Japanese literals in Java source

slice_01_order_cockpit_query:
  target_files:
    - ErrorResponse.java
    - OrderCockpitQueryRequest.java
    - OrderCockpitQueryResponse.java
    - OrderCockpitQueryValidator.java
    - OrderExecutionTimelineItem.java
    - ExecutionTimelineRepository.java
    - OrderCockpitQueryMapper.java
    - OrderCockpitQueryService.java
    - OrderCockpitQueryController.java
    - JdbcExecutionTimelineRepository.java
    - DatabaseOrderFlowAuditAdapter.java
    - OrderFlowPhaseAConfig.java
    - OrderCockpitQueryServiceTest.java
  expected_fill:
    - ErrorResponse:
      - errorCode
      - errorMessage
      - requestId
      - details
    - OrderCockpitQueryRequest:
      - orderId
      - timezone
      - includePendingApproval
      - includeFulfillmentBlockers
      - includeDownstreamHandoff
      - pageSize
      - pageToken
    - OrderCockpitQueryResponse:
      - orderId
      - orderTitle
      - healthSummaryMessage
      - pendingApprovalItems
      - fulfillmentBlockerItems
      - downstreamHandoffItems
      - nextPageToken
      - generatedAt
    - OrderCockpitQueryValidator:
      - validate(OrderCockpitQueryRequest request)
      - required checks for orderId, timezone, pageSize
    - OrderExecutionTimelineItem:
      - fields aligned to execution_timeline_item row family
    - ExecutionTimelineRepository:
      - queryCockpitItems(...)
      - findDownstreamHandoffItems(...)
    - OrderCockpitQueryMapper:
      - toCockpitResponse(...)
    - OrderCockpitQueryService:
      - queryOrderCockpit(...)
    - OrderCockpitQueryController:
      - queryOrderCockpit(OrderCockpitQueryRequest request)
    - JdbcExecutionTimelineRepository:
      - sql placeholders aligned to execution timeline table
    - DatabaseOrderFlowAuditAdapter:
      - appendOrderCockpitQueryAudit(...)
    - OrderFlowPhaseAConfig:
      - first-slice bean wiring placeholders
    - OrderCockpitQueryServiceTest:
      - order_cockpit_query_success
      - order_cockpit_query_validation_failure

slice_02_fulfillment_exception_review_query:
  target_files:
    - FulfillmentExceptionReviewQueryRequest.java
    - FulfillmentExceptionReviewQueryResponse.java
    - FulfillmentExceptionReviewQueryValidator.java
    - FulfillmentExceptionReviewItem.java
    - FulfillmentExceptionReviewRepository.java
    - FulfillmentExceptionReviewQueryMapper.java
    - FulfillmentExceptionReviewQueryService.java
    - FulfillmentExceptionReviewQueryController.java
    - JdbcFulfillmentExceptionReviewRepository.java
    - FulfillmentExceptionReviewQueryServiceTest.java
  expected_fill:
    - FulfillmentExceptionReviewQueryRequest:
      - orderId
      - includeResolved
      - includeApprovalPending
      - includeDownstreamBlockers
      - pageSize
      - pageToken
    - FulfillmentExceptionReviewQueryResponse:
      - orderId
      - reviewItems
      - summaryMessage
      - nextPageToken
      - generatedAt
    - FulfillmentExceptionReviewQueryValidator:
      - validate(FulfillmentExceptionReviewQueryRequest request)
      - required checks for orderId and pageSize
    - FulfillmentExceptionReviewItem:
      - fields aligned to fulfillment_exception_review_item row family
    - FulfillmentExceptionReviewRepository:
      - queryReviewItems(...)
    - FulfillmentExceptionReviewQueryMapper:
      - toFulfillmentExceptionReviewResponse(...)
    - FulfillmentExceptionReviewQueryService:
      - queryFulfillmentExceptionReview(...)
    - FulfillmentExceptionReviewQueryController:
      - queryFulfillmentExceptionReview(FulfillmentExceptionReviewQueryRequest request)
    - JdbcFulfillmentExceptionReviewRepository:
      - sql placeholders aligned to review table
    - FulfillmentExceptionReviewQueryServiceTest:
      - fulfillment_exception_review_query_success
      - fulfillment_exception_review_include_resolved_toggle
      - fulfillment_exception_review_include_downstream_blockers_toggle

slice_03_snapshot_and_audit_bridge:
  target_files:
    - OrderCockpitSnapshot.java
    - OrderCockpitSnapshotRepository.java
    - OrderFlowAuditPort.java
    - JdbcOrderCockpitSnapshotRepository.java
    - DatabaseOrderFlowAuditAdapter.java
  expected_fill:
    - OrderCockpitSnapshot:
      - fields aligned to order_cockpit_snapshot row family
    - OrderCockpitSnapshotRepository:
      - insertSnapshot(...)
      - findLatestSnapshot(...)
    - OrderFlowAuditPort:
      - appendOrderCockpitQueryAudit(...)
      - appendFulfillmentExceptionReviewQueryAudit(...)
    - JdbcOrderCockpitSnapshotRepository:
      - sql placeholders aligned to cockpit snapshot table
    - DatabaseOrderFlowAuditAdapter:
      - explicit append-only audit method seams

done_definition:
- all slice seams are fixed
- DTO and row-family alignment is explicit
- tests are named before runtime generation begins

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/120360_ORDERFLOW_PHASE_A_SLICE_FIELD_FILL_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/120370_ORDERFLOW_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md -->
# ============================================================
# ORDERFLOW PHASE A IMPLEMENTATION READY COMPLETION MEMO
# ============================================================

status: canonical
layer: implementation
system: applications
application: OrderFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-implementation-ready-completion

purpose:
Declares that OrderFlow Phase A planning has reached
implementation-ready status without starting real runtime generation.

completion_basis:
- competitive positioning note added
- order lifecycle fulfillment control architecture added
- approval fulfillment exception architecture added
- order execution timeline model added
- order cockpit and fulfillment exception exact payloads added
- order cockpit interface added
- fulfillment control implementation guide added
- Phase A DDL additive plan added
- Phase A API starter added
- Phase A DTO field freeze added
- Phase A implementation skeleton added
- stub file plan added
- module task breakdown added
- exact stub content order plan added
- slice command packs added
- slice field-fill plan added

what_is_now_fixed:
- operational control differentiator
- Phase A row-family direction
- Phase A endpoint contracts
- repository, service, validator, mapper, and controller boundaries
- slice-based execution order
- command-pack-driven stub generation order
- field-fill expectations for each slice

what_is_not_started_yet:
- no real Java file generation in app source tree
- no SQL execution against business schema
- no runtime framework lock in live codebase
- no client implementation
- no order write or shipment execution automation

implementation_ready_definition_met:
- the design no longer depends on unresolved major architecture questions
- the remaining work is fill-in and generation, not rediscovery
- slice-by-slice execution order is fixed
- DTO and row-family drift is constrained
- audit separation remains explicit

recommended_start_when_execution_begins:
- start from slice_01 order cockpit query only
- fill first-slice DTOs and seams before moving to slice_02
- move to slice_03 only after slice_01 and slice_02 compile boundaries are stable
- preserve review discipline before any SQL apply step

conclusion:
- OrderFlow Phase A is implementation-ready at the design level.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/120370_ORDERFLOW_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/120380_ORDERFLOW_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md -->
# ============================================================
# ORDERFLOW PHASE A EXECUTION ENTRY PROTOCOL
# ============================================================

status: canonical
layer: implementation
system: applications
application: OrderFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-execution-entry-protocol

purpose:
Defines the exact protocol to follow when the project later moves
from planning artifacts into actual stub generation or SQL execution.

entry_principles:
- do not begin from slice_03
- do not generate all files at once without slice order
- do not execute SQL before review
- keep additive only
- keep command packs as the sole sequence authority
- do not reopen already frozen DTO names casually

execution_start_order:
- step_01:
  - execute slice_01 command pack into a safe output root
- step_02:
  - fill slice_01 contents according to the field-fill plan
- step_03:
  - review compile surface and naming consistency
- step_04:
  - execute slice_02 command pack
- step_05:
  - fill slice_02 contents according to the field-fill plan
- step_06:
  - review cockpit-to-exception-review seam
- step_07:
  - execute slice_03 command pack
- step_08:
  - fill slice_03 contents according to the field-fill plan
- step_09:
  - review snapshot and audit seams
- step_10:
  - only after design-to-code review, prepare SQL apply pack
- step_11:
  - only after review, execute additive SQL in controlled order

safe_output_policy:
- initial file generation should use .tmp or another isolated root
- do not inject generated stubs into a production source tree as the first action
- compare generated files against design documents before relocation

review_gates:
- gate_01_contract_review:
  - DTO names match the freeze document exactly
- gate_02_boundary_review:
  - repository and service responsibilities remain separated
- gate_03_schema_review:
  - DDL aligns with the planned row families
- gate_04_query_review:
  - cockpit and exception review responses remain bound to the fixed payload families
- gate_05_audit_review:
  - audit append seams remain separate from query repositories

abort_conditions:
- a command pack requires reopening DTO names
- a field-fill plan conflicts with earlier freeze documents
- existing physical schema core names differ from assumptions materially
- SQL needs destructive change
- slice order is being bypassed

handoff_statement:
- this protocol is the bridge between the planning layer and the later execution layer.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/120.implementation/120380_ORDERFLOW_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/130.development/1300001_ORDER_FLOW_COMPETITOR_ANALYSIS.md -->
# ============================================================
# ORDER FLOW COMPETITOR ANALYSIS
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
This document compares major adjacent competitors to clarify
where OrderFlow should compete, where it should not,
and what must be differentiated early.

# ============================================================
# 1. comparison target selection
# ============================================================

selected competitors:
- Zoho Inventory
- Katana
- ShipStation
- NetSuite
- Extensiv
- Brightpearl

selection reason:
These products are close to OrderFlow in one or more of:
- order management
- inventory visibility
- shipping / fulfillment
- multichannel coordination
- scheduling / execution adjacency

# ============================================================
# 2. summary conclusion
# ============================================================

OrderFlow should not try to win as a generic all-in-one ERP clone.

OrderFlow should win as:
- estimate-to-order handoff front
- delivery coordination front
- customer proposal / agreement front
- ERP-present / ERP-absent dual-mode business app
- lightweight but structurally serious execution app

# ============================================================
# 3. competitor comparison
# ============================================================

## 3-1. Zoho Inventory

strong points:
- broad order + inventory + shipment flow coverage
- multichannel friendly
- packaging / tracking / shipment update strengths
- relatively easy to understand for SMB operations

weaknesses relative to OrderFlow:
- weaker identity around estimate-to-order business handoff
- delivery date negotiation / customer agreement is not the center
- less specialized as a fulfillment coordination front

what OrderFlow should learn:
- clean order-to-shipment continuity
- practical SMB usability
- shipment visibility language

## 3-2. Katana

strong points:
- real-time inventory visibility
- committed / arriving / available style thinking
- strong planning and operational clarity
- good for product businesses with stock / production complexity

weaknesses relative to OrderFlow:
- stronger on inventory / planning than customer-facing delivery adjustment
- estimate-origin business transition is not the core story
- more supply-side centric than agreement-side centric

what OrderFlow should learn:
- inventory truth clarity
- supply status readability
- committed stock semantics

## 3-3. ShipStation

strong points:
- shipping-focused operational excellence
- label / carrier / rate / automation strengths
- fast path from order to shipment execution

weaknesses relative to OrderFlow:
- downstream shipment strength is high,
  but pre-shipment delivery promise coordination is not the center
- estimate handoff is outside core identity
- customer agreement before shipment is not the main front

what OrderFlow should learn:
- shipping action efficiency
- warehouse-facing simplicity
- shipment status usability

## 3-4. NetSuite

strong points:
- strong real-time inventory visibility
- broad enterprise coverage
- cross-channel stock visibility
- strong enterprise integration story

weaknesses relative to OrderFlow:
- heavy platform character
- too large for lightweight front replacement
- harder to position as a focused execution front for smaller teams

what OrderFlow should learn:
- authoritative inventory reference model
- strong system-of-record linkage
- enterprise-ready integration posture

## 3-5. Extensiv

strong points:
- strong order / channel / fulfillment visibility
- omnichannel / fulfillment flow orchestration
- strong operational control framing

weaknesses relative to OrderFlow:
- ecommerce / fulfillment channel emphasis is strong
- estimate-origin business process is not the center
- customer proposal / negotiation before shipment is not the core identity

what OrderFlow should learn:
- visibility language
- multi-channel control viewpoint
- order-flow standardization thinking

## 3-6. Brightpearl

strong points:
- retail operations orientation
- inventory and buying recommendation strength
- planning / reorder / retail operations visibility

weaknesses relative to OrderFlow:
- stronger as retail operating backbone than as delivery coordination front
- estimate handoff story is weak
- proposal / agreement / internal business adjustment is not the primary center

what OrderFlow should learn:
- operational dashboarding
- planning visibility
- action-oriented retail summaries

# ============================================================
# 4. comparison table
# ============================================================

| product | order | inventory | shipment | customer delivery coordination | estimate handoff | ERP/no-ERP duality |
| --- | --- | --- | --- | --- | --- | --- |
| Zoho Inventory | strong | strong | strong | medium | weak | medium |
| Katana | medium | very strong | medium | weak | weak | medium |
| ShipStation | medium | medium | very strong | weak | weak | weak |
| NetSuite | strong | very strong | strong | medium | weak | strong |
| Extensiv | strong | strong | strong | weak | weak | medium |
| Brightpearl | strong | strong | medium | weak | weak | medium |
| OrderFlow target | strong | strong enough | strong enough | very strong | very strong | very strong |

# ============================================================
# 5. implications for OrderFlow
# ============================================================

OrderFlow must emphasize:
- estimate-to-order copy / handoff
- delivery promise calculation
- customer proposal history
- customer agreement recording
- partial shipment + partial delivery handling
- ERP-present / ERP-absent compatible architecture
- multilingual / multicurrency / multi-device from day 0

OrderFlow must avoid:
- becoming vague generic ERP
- becoming shipment-only tooling
- becoming inventory-only tooling
- becoming quote-authoring app

# ============================================================
# 6. final design meaning
# ============================================================

Competitors are strongest in:
- generic OMS
- inventory visibility
- shipping execution
- omnichannel operations

OrderFlow should be strongest in:
- post-estimate order execution handoff
- delivery coordination
- customer-facing date proposal tracking
- execution front positioning
- structural compatibility with and without ERP


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/130.development/1300001_ORDER_FLOW_COMPETITOR_ANALYSIS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/130.development/1300002_ORDER_FLOW_DIFFERENTIATION_STRATEGY.md -->
# ============================================================
# ORDER FLOW DIFFERENTIATION STRATEGY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

# ============================================================
# 1. core differentiation
# ============================================================

OrderFlow should be differentiated as:

Order execution and delivery coordination front
specialized for the business gap between:
- estimate
and
- shipment / delivery execution

It should not be explained merely as:
- inventory tool
- shipping tool
- generic OMS
- ERP mini clone

# ============================================================
# 2. what makes OrderFlow different
# ============================================================

## 2-1. estimate-origin execution

OrderFlow starts from:
- estimate handoff
- source estimate link
- estimate snapshot retention

This is a structural differentiator.

## 2-2. delivery date negotiation as a first-class concept

OrderFlow treats these as core:
- lead time calculation
- delivery candidate calculation
- customer proposal
- customer revision request
- customer acceptance
- internal agreement record

This is stronger than ordinary shipment-centered systems.

## 2-3. ERP-present / ERP-absent duality

OrderFlow can work:
- with ERP integration
- without ERP integration

Responsibility stays the same.
Only the connection target changes.

## 2-4. manual-first realistic operation

OrderFlow can start with:
- internal manual customer OK recording
- internal shipment status update
- internal delivery confirmation input

This lowers adoption friction.

## 2-5. multilingual / multicurrency / multi-device from day 0

OrderFlow should not retrofit:
- localization
- multicurrency
- tablet / PC usage

These should be first-class architectural assumptions.

# ============================================================
# 3. target user value
# ============================================================

OrderFlow should create value for teams that say:

- we already make estimates, but order execution after that is messy
- inventory visibility exists, but delivery promise adjustment is unclear
- customer date confirmation is handled in chat / phone / spreadsheets
- ERP is too heavy alone for this front
- we need a serious but lightweight execution app

# ============================================================
# 4. feature strategy
# ============================================================

## must win
- create order from estimate
- standalone order creation
- source estimate traceability
- inventory check in fulfillment context
- lead time calculation
- delivery schedule candidate generation
- customer proposal history
- customer agreement recording
- shipment request state management
- partial shipment and partial delivery support

## good to have
- template-based customer proposal messages
- reminder / follow-up surfaces
- SLA-style late-risk visibility
- ERP sync status surface
- operator audit trail summary

## intentionally not first
- full warehouse management replacement
- full accounting replacement
- full CRM replacement
- auto-negotiation AI
- deep procurement suite

# ============================================================
# 5. UI differentiation
# ============================================================

OrderFlow UI should feel like:
- execution-oriented
- state-clear
- schedule-aware
- customer-response-aware

not like:
- accounting-centric screens
- pure warehouse terminals
- vague spreadsheet clones

PC / tablet strengths should include:
- list + detail split view
- candidate delivery date comparison
- proposal history visibility
- shipment and delivery state side-by-side review

# ============================================================
# 6. messaging draft
# ============================================================

positioning draft:
OrderFlow is the order execution and delivery coordination front
that bridges estimate handoff, inventory check,
delivery promise calculation, customer proposal,
shipment request, and delivery confirmation.

simple sales message:
From estimate handoff to delivery confirmation,
OrderFlow keeps execution visible and adjustable.

# ============================================================
# 7. final conclusion
# ============================================================

OrderFlow should compete by being:
- closer to actual business execution than generic OMS
- lighter than ERP-heavy execution layers
- stronger in delivery coordination than shipment-first tools
- stronger in estimate handoff than fulfillment tools
- more realistic for mixed ERP / non-ERP environments


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/130.development/1300002_ORDER_FLOW_DIFFERENTIATION_STRATEGY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.bible/9000001_ORDER_FLOW_DESIGN_BIBLE.md -->
# ============================================================
# ORDER FLOW DESIGN BIBLE
# ============================================================

status: draft-bible
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides the recommended reading order for the current OrderFlow design set.

recommended_reading_order:
  1:
    - 000_COMMON_DESIGN_OVERVIEW.md
    - 00_ORDER_FLOW_INTEGRATED.md

  2:
    - 0200001_ORDER_FLOW_POSITIONING_ARCHITECTURE.md
    - 0200002_ORDER_FLOW_DIFFERENTIATION_ARCHITECTURE.md
    - 0200003_ORDER_FLOW_BOUNDARY_ARCHITECTURE.md

  3:
    - 0300001_ORDER_FLOW_ORDER_STATE_EXACT_MODEL.md
    - 0300002_ORDER_FLOW_INVENTORY_AND_DELIVERY_STATE_EXACT_MODEL.md
    - 0500001_ORDER_FLOW_ORDER_LIFECYCLE_FLOW.md
    - 0500002_ORDER_FLOW_PARTIAL_SHIPMENT_AND_PARTIAL_DELIVERY_FLOW.md
    - 0500003_ORDER_FLOW_SCREEN_STATE_TRANSITION_MATRIX_BY_ROLE.md

  4:
    - 0300003_ORDER_FLOW_ORDER_CORE_MODEL_EXACT.md
    - 0300004_ORDER_FLOW_INVENTORY_AND_SCHEDULE_MODEL_EXACT.md
    - 0300005_ORDER_FLOW_SHIPMENT_AND_DELIVERY_MODEL_EXACT.md
    - 0300006_ORDER_FLOW_HISTORY_AND_SYNC_MODEL_EXACT.md

  5:
    - 0900001_ORDER_FLOW_SCREEN_STRUCTURE_EXACT.md
    - 0900002_ORDER_FLOW_ORDER_ENTRY_AND_DETAIL_SCREEN_EXACT.md
    - 0900003_ORDER_FLOW_PROPOSAL_AND_SHIPMENT_SCREEN_EXACT.md
    - 0900004_ORDER_FLOW_DELIVERY_AND_CLOSURE_SCREEN_EXACT.md
    - 0900005_ORDER_FLOW_HOME_DASHBOARD_EXACT.md

  6:
    - 0600001_ORDER_FLOW_ESTIMATE_HANDOFF_EXACT.md
    - 0600002_ORDER_FLOW_DEEPLINK_AND_SESSION_ENTRY_EXACT.md
    - 0600003_ORDER_FLOW_ERP_PRESENT_MODE_EXACT.md
    - 0600004_ORDER_FLOW_ERP_ABSENT_MODE_EXACT.md
    - 0600005_ORDER_FLOW_DOWNSTREAM_INVOICE_HANDOFF_EXACT.md

  7:
    - 1000001_ORDER_FLOW_ROLE_MODEL_EXACT.md
    - 1000002_ORDER_FLOW_PERMISSION_MATRIX_ORDER_AND_EXECUTION.md
    - 1000003_ORDER_FLOW_PERMISSION_MATRIX_SHIPMENT_AND_CLOSURE.md
    - 1000004_ORDER_FLOW_AUTHORIZATION_AND_SCOPE_RULES.md
    - 1000005_ORDER_FLOW_DB_ACCESS_MODEL_EXACT.md
    - 1000006_ORDER_FLOW_RLS_POLICY_CANDIDATE_READ.md
    - 1000007_ORDER_FLOW_RLS_POLICY_CANDIDATE_WRITE.md

  8:
    - 0700001_ORDER_FLOW_NOTIFICATION_EVENT_MODEL_EXACT.md
    - 0700002_ORDER_FLOW_REMINDER_AND_FOLLOWUP_RULES_EXACT.md
    - 0700003_ORDER_FLOW_OVERDUE_AND_RISK_VISIBILITY_EXACT.md

  9:
    - 1200001_ORDER_FLOW_API_ORDER_CREATE_EXACT.md
    - 1200002_ORDER_FLOW_API_INVENTORY_PROPOSAL_EXACT.md
    - 1200003_ORDER_FLOW_API_SHIPMENT_AND_DELIVERY_EXACT.md
    - 1200004_ORDER_FLOW_API_ERROR_AND_SYNC_RESPONSE_EXACT.md
    - 1200005_ORDER_FLOW_OPERATOR_ACTION_MATRIX_ORDER_ENTRY.md
    - 1200006_ORDER_FLOW_OPERATOR_ACTION_MATRIX_EXECUTION.md
    - 1200007_ORDER_FLOW_OPERATOR_ACTION_MATRIX_SHIPMENT_DELIVERY.md
    - 1200008_ORDER_FLOW_OPERATOR_ACTION_MATRIX_CLOSURE_AND_ERRORS.md
    - 1200009_ORDER_FLOW_VALIDATION_RULES_ORDER_ENTRY.md
    - 1200010_ORDER_FLOW_VALIDATION_RULES_EXECUTION.md
    - 1200011_ORDER_FLOW_VALIDATION_RULES_SHIPMENT_DELIVERY.md
    - 1200012_ORDER_FLOW_VALIDATION_RULES_CLOSURE_AND_STATE.md
    - 1200013_ORDER_FLOW_SCREEN_PAYLOAD_MAPPING_ORDER_ENTRY.md
    - 1200014_ORDER_FLOW_SCREEN_PAYLOAD_MAPPING_EXECUTION.md
    - 1200015_ORDER_FLOW_SCREEN_PAYLOAD_MAPPING_SHIPMENT_DELIVERY.md
    - 1200016_ORDER_FLOW_SCREEN_PAYLOAD_MAPPING_HISTORY_CLOSURE.md
    - 1200017_ORDER_FLOW_LIST_QUERY_ORDER_LIST_EXACT.md
    - 1200018_ORDER_FLOW_LIST_QUERY_SHIPMENT_BOARD_EXACT.md
    - 1200019_ORDER_FLOW_LIST_QUERY_HISTORY_EXACT.md
    - 1200020_ORDER_FLOW_FILTER_SORT_RULES_EXACT.md
    - 1200021_ORDER_FLOW_NOTIFICATION_LIST_QUERY_EXACT.md
    - 1200022_ORDER_FLOW_HOME_SUMMARY_QUERY_EXACT.md
    - 1200023_ORDER_FLOW_HOME_WIDGET_MAPPING_EXACT.md
    - 1200024_ORDER_FLOW_HOME_ACTION_SHORTCUTS_EXACT.md
    - 1200025_ORDER_FLOW_SQL_REVIEW_PACKET_OVERVIEW.md
    - 1200029_ORDER_FLOW_SATO_REVIEW_REQUEST.md
    - 1200030_ORDER_FLOW_PRE_EXECUTION_CHECKLIST.md
    - 1200031_ORDER_FLOW_SQL_REVIEW_FINDINGS_TEMPLATE.md
    - 1200032_ORDER_FLOW_EXECUTION_HOLD_NOTE.md
    - 1200033_ORDER_FLOW_SEED_PACKET_CANDIDATE.md
    - 1200034_ORDER_FLOW_DOWNSTREAM_HANDOFF_API_CANDIDATE.md

  10:
    - 1100001_ORDER_FLOW_TABLE_CANDIDATE_ORDER_CORE.md
    - 1100002_ORDER_FLOW_TABLE_CANDIDATE_EXECUTION_AND_SCHEDULE.md
    - 1100003_ORDER_FLOW_TABLE_CANDIDATE_SHIPMENT_DELIVERY.md
    - 1100004_ORDER_FLOW_TABLE_CANDIDATE_HISTORY_NOTIFICATION_SYNC.md
    - 1100005_ORDER_FLOW_TABLE_RELATIONSHIP_OVERVIEW.md
    - 1100006_ORDER_FLOW_FK_CANDIDATE_ORDER_AND_SCHEDULE.md
    - 1100007_ORDER_FLOW_FK_CANDIDATE_SHIPMENT_AND_DELIVERY.md
    - 1100008_ORDER_FLOW_FK_CANDIDATE_HISTORY_NOTIFICATION_SYNC.md
    - 1100009_ORDER_FLOW_DDL_DRAFT_ORDER_CORE.md
    - 1100010_ORDER_FLOW_DDL_DRAFT_EXECUTION_AND_SCHEDULE.md
    - 1100011_ORDER_FLOW_DDL_DRAFT_SHIPMENT_AND_DELIVERY.md
    - 1100012_ORDER_FLOW_DDL_DRAFT_HISTORY_NOTIFICATION_SYNC.md
    - 1100013_ORDER_FLOW_RLS_SQL_DRAFT.md
    - 1100014_ORDER_FLOW_MIGRATION_PACKAGING_OVERVIEW.md
    - 1100015_ORDER_FLOW_MIGRATION_PHASE_PLAN.md
    - 1100016_ORDER_FLOW_MIGRATION_FILE_CANDIDATES.md
    - 1100017_ORDER_FLOW_MIGRATION_EXECUTION_GUARD.md
    - 1100018_ORDER_FLOW_TEST_DATA_AND_SEED_EXACT.md

  11:
    - 1200026_ORDER_FLOW_SQL_CANDIDATE_PHASE_1_ORDER_CORE.sql
    - 1200027_ORDER_FLOW_SQL_CANDIDATE_PHASE_2_EXECUTION.sql
    - 1200028_ORDER_FLOW_SQL_CANDIDATE_PHASE_3_SHIPMENT_HISTORY.sql

  12:
    - 1300001_ORDER_FLOW_COMPETITOR_ANALYSIS.md
    - 1300002_ORDER_FLOW_DIFFERENTIATION_STRATEGY.md

  13:
    - 9000002_ORDER_FLOW_BUNDLE_COMPLETION_NOTE.md

current_completion_summary:
- positioning fixed
- boundary fixed
- state model fixed
- exact core models drafted
- primary screens drafted
- handoff and ERP modes drafted
- API and validation fixed
- permission and authorization fixed
- query/filter/sort fixed
- notification and dashboard fixed
- table/fk/ddl candidates fixed
- RLS candidates fixed
- migration packaging fixed
- seed strategy fixed
- downstream invoice handoff boundary fixed
- SQL review packet prepared
- execution intentionally held pending review

next_recommended_topics:
- exact seed insert SQL
- migration repository placement exact
- screen-level test cases
- API contract versioning
- InvoiceFlow 側の受け口 exact

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.bible/9000001_ORDER_FLOW_DESIGN_BIBLE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000002_ORDER_FLOW_BUNDLE_COMPLETION_NOTE.md -->
# ============================================================
# ORDER FLOW BUNDLE COMPLETION NOTE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Summarizes the current design bundle completion level.

completion_summary:
  fixed_now:
    - positioning
    - boundary
    - state
    - models
    - screens
    - handoff and ERP modes
    - API payloads
    - operator actions
    - validation
    - role and permission
    - payload mapping
    - list/filter/sort
    - notification and overdue visibility
    - dashboard
    - table candidates
    - FK candidates
    - DDL drafts
    - SQL review packet
    - review gate
    - RLS candidate
    - migration packaging
    - seed strategy
    - role-based screen transition
    - downstream invoice handoff boundary

  intentionally_deferred:
    - final approved executable SQL
    - final migration numbering
    - exact seed insert SQL
    - final RLS claim function names
    - shared/common component exact design

overall_assessment:
  - OrderFlow has reached deep pre-implementation design level
  - execution remains intentionally held pending review


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000002_ORDER_FLOW_BUNDLE_COMPLETION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000003_ORDER_FLOW_DESIGN_COVERAGE_CHECKLIST.md -->
# ============================================================
# ORDER FLOW DESIGN COVERAGE CHECKLIST
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Checks whether the major design coverage areas for OrderFlow
have been addressed.

coverage_checklist:

  positioning_and_scope:
    - fixed

  estimate_creator_boundary:
    - fixed

  erp_present_absent_boundary:
    - fixed

  multilingual_multicurrency_multidevice:
    - fixed

  state_model:
    - fixed

  lifecycle_flow:
    - fixed

  partial_shipment_and_partial_delivery:
    - fixed

  core_domain_models:
    - fixed

  primary_screens:
    - fixed

  dashboard_and_home:
    - fixed

  api_request_response:
    - fixed

  validation_rules:
    - fixed

  role_permission_authorization:
    - fixed

  screen_payload_mapping:
    - fixed

  list_query_filter_sort:
    - fixed

  notification_reminder_overdue:
    - fixed

  table_candidates:
    - fixed

  fk_candidates:
    - fixed

  ddl_draft:
    - fixed

  rls_candidate:
    - fixed

  migration_packaging:
    - fixed

  seed_strategy:
    - fixed

  downstream_invoice_handoff_boundary:
    - fixed

  common_component_exact_design:
    - intentionally_out_of_scope

summary:
  - major app-specific design coverage is present
  - shared/common exact design remains intentionally separate


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000003_ORDER_FLOW_DESIGN_COVERAGE_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000004_ORDER_FLOW_OPEN_QUESTIONS_AND_DEFERRED_ITEMS.md -->
# ============================================================
# ORDER FLOW OPEN QUESTIONS AND DEFERRED ITEMS
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Collects intentionally deferred items and remaining open questions.

deferred_items:

  execution_sql_finalization:
    status:
      - deferred
    reason:
      - waiting for Sato review and Boss go decision

  final_schema_name:
    status:
      - deferred
    reason:
      - not fixed yet in current packet

  exact_seed_insert_sql:
    status:
      - deferred
    reason:
      - seed strategy fixed, insert bundle not yet authored

  final_rls_claim_function_names:
    status:
      - deferred
    reason:
      - platform alignment required

  migration_repository_placement:
    status:
      - deferred
    reason:
      - repo/package placement not fixed yet

  invoice_flow_receiver_exact:
    status:
      - deferred
    reason:
      - only downstream boundary fixed here

  common_component_exact_design:
    status:
      - deferred_to_other_chat
    reason:
      - intentionally separated by policy

open_questions:

  close_rule_exact:
    current_state:
      - mostly fixed
    remaining_question:
      - whether additional closure_reason_type values are needed later

  sync_visibility_scope:
    current_state:
      - fixed at candidate level
    remaining_question:
      - how much end-user exposure vs privileged exposure should exist in final implementation

  shipment_execution_depth:
    current_state:
      - visibility level only
    remaining_question:
      - whether deeper warehouse-side fields are needed later

  customer_proposal_channel_depth:
    current_state:
      - basic channel types fixed
    remaining_question:
      - whether notification/publication coupling grows later


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000004_ORDER_FLOW_OPEN_QUESTIONS_AND_DEFERRED_ITEMS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000005_ORDER_FLOW_DUPLICATION_AND_BOUNDARY_CHECK_NOTE.md -->
# ============================================================
# ORDER FLOW DUPLICATION AND BOUNDARY CHECK NOTE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Records duplication and boundary sanity checks.

boundary_check_summary:

  estimate_creator_vs_orderflow:
    result:
      - acceptable
    note:
      - estimate authoring stays upstream
      - order execution stays in OrderFlow

  orderflow_vs_erp:
    result:
      - acceptable
    note:
      - responsibility fixed
      - connection target variable

  orderflow_vs_common_components:
    result:
      - acceptable
    note:
      - dependency-only references kept
      - exact common design deferred externally

duplication_check_summary:

  state_documents:
    result:
      - acceptable
    note:
      - state meaning and lifecycle docs are complementary, not conflicting

  api_and_screen_mapping:
    result:
      - acceptable
    note:
      - payload docs define contract
      - mapping docs define screen consumption

  table_candidates_and_ddl_drafts:
    result:
      - acceptable
    note:
      - candidate docs explain intent
      - ddl docs express draft structure

risk_note:
  - integrated docs should continue to be refreshed after major additions
  - future seed sql and migration placement should avoid duplicating structural meaning


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000005_ORDER_FLOW_DUPLICATION_AND_BOUNDARY_CHECK_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000006_ORDER_FLOW_COMPLETION_READINESS_NOTE.md -->
# ============================================================
# ORDER FLOW COMPLETION READINESS NOTE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Assesses how close OrderFlow is to design-stage completion.

readiness_assessment:
  app_specific_design_depth:
    - high

  implementation_readiness:
    - pre-implementation_ready_after_review

  db_execution_readiness:
    - held_pending_review

  remaining_major_design_gaps:
    - few

current_conclusion:
  - OrderFlow is close to design-phase completion
  - the remaining work is mainly review, finalization, and execution packaging
  - app-specific meaning is already strongly fixed

recommended_next_focus_if_continuing:
  - exact seed insert SQL
  - migration repository placement
  - InvoiceFlow receiver-side exact
  - review feedback reflection bundle


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000006_ORDER_FLOW_COMPLETION_READINESS_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000007_ORDER_FLOW_NEXT_CHAT_HANDOFF.md -->
# ============================================================
# ORDER FLOW NEXT CHAT HANDOFF
# ============================================================

status: draft-handoff
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a clean handoff summary for the next chat.

handoff_summary:
  app_name:
    - OrderFlow

  app_definition:
    - order execution and delivery coordination front

  already_fixed:
    - positioning and boundaries
    - state and lifecycle
    - partial shipment / delivery
    - exact domain models
    - primary screens and dashboard
    - API payloads
    - validation and permission rules
    - query/filter/sort rules
    - notifications and overdue visibility
    - table/fk/ddl candidates
    - rls candidates
    - migration packaging
    - seed strategy
    - downstream invoice handoff boundary

  intentionally_separate:
    - common component exact design

  held_items:
    - final executable SQL
    - final seed insert SQL
    - final RLS claim mapping
    - final migration placement

recommended_next_chat_start:
  - reflect Sato review results
  - or create exact seed insert SQL
  - or define InvoiceFlow receiver-side exact handoff

one_line_start_prompt:
  - OrderFlow の現設計を前提に、次はレビュー反映または seed SQL exact 化に進めたい


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000007_ORDER_FLOW_NEXT_CHAT_HANDOFF.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000008_ORDER_FLOW_SEED_READY_NOTE.md -->
# ============================================================
# ORDER FLOW SEED READY NOTE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Summarizes the seed SQL readiness level.

seed_readiness:
  packet_status:
    - drafted

  covers:
    - estimate-origin order
    - standalone order
    - customer snapshots
    - inventory and lead time
    - delivery candidates
    - proposal and acceptance
    - partial shipment
    - partial delivery
    - history
    - notifications
    - sync failed visibility

  still_needed_before_shared_use:
    - Sato review
    - target schema confirmation
    - insert order check against final ddl naming
    - optional cleanup/reset strategy

summary:
  - local/dev/test seed direction is now fixed
  - shared execution remains review-gated


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000008_ORDER_FLOW_SEED_READY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000009_ORDER_FLOW_INVOICEFLOW_HANDOFF_READY_NOTE.md -->
# ============================================================
# ORDER FLOW INVOICEFLOW HANDOFF READY NOTE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Summarizes current readiness of the OrderFlow -> InvoiceFlow handoff boundary.

handoff_readiness:
  fixed_now:
    - sender/receiver boundary
    - receiver API candidate
    - billing-ready candidate rules
    - major error cases

  still_deferred:
    - InvoiceFlow exact receiving schema
    - InvoiceFlow invoice lifecycle exact
    - duplicate invoice prevention exact policy
    - ERP billing sync exact on InvoiceFlow side

summary:
  - OrderFlow side has enough boundary definition to hand off design work
  - full downstream completion now depends on InvoiceFlow-side exact design


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000009_ORDER_FLOW_INVOICEFLOW_HANDOFF_READY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000010_ORDER_FLOW_REVIEW_REFLECTION_READY_NOTE.md -->
# ============================================================
# ORDER FLOW REVIEW REFLECTION READY NOTE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Confirms that OrderFlow is ready to receive structured review reflection.

readiness_summary:
  ready_for:
    - Sato review reflection
    - decision logging
    - changelog recording
    - post-review action planning

  not_implied:
    - execution approval
    - final SQL approval
    - automatic design closure

summary:
  - review reception structure is now prepared
  - next natural step is to reflect actual review results when available


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000010_ORDER_FLOW_REVIEW_REFLECTION_READY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000011_ORDER_FLOW_DESIGN_COMPLETION_CANDIDATE_NOTE.md -->
# ============================================================
# ORDER FLOW DESIGN COMPLETION CANDIDATE NOTE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Marks OrderFlow as a design-phase completion candidate.

completion_candidate_assessment:
  positioning_and_scope:
    - complete_candidate
  boundary_design:
    - complete_candidate
  lifecycle_and_state:
    - complete_candidate
  model_design:
    - complete_candidate
  screen_design:
    - complete_candidate
  api_and_validation:
    - complete_candidate
  permission_and_authorization:
    - complete_candidate
  infra_and_db_candidates:
    - complete_candidate
  migration_and_seed_strategy:
    - complete_candidate
  downstream_boundary:
    - complete_candidate

remaining_before_true_completion_label:
  - review reflection if findings arrive
  - optional final integrated refresh after review
  - optional seed exact refinement

current_judgment:
  - OrderFlow can be treated as design-phase completion candidate


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000011_ORDER_FLOW_DESIGN_COMPLETION_CANDIDATE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md -->
# ============================================================
# ORDER FLOW FINAL RESTART GUIDE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a clean restart guide for a future chat or future work session.

restart_paths:

  path_1_review_reflection:
    use_when:
      - Sato review has arrived
    start_from:
      - 1200031_ORDER_FLOW_SQL_REVIEW_FINDINGS_TEMPLATE.md
      - 1200042_ORDER_FLOW_REVIEW_REFLECTION_PACKET_OVERVIEW.md

  path_2_seed_exact_refinement:
    use_when:
      - local/dev seed SQL needs refinement
    start_from:
      - 1100018_ORDER_FLOW_TEST_DATA_AND_SEED_EXACT.md
      - 1200035_ORDER_FLOW_SEED_SQL_PACKET_OVERVIEW.md

  path_3_invoiceflow_receiver_followup:
    use_when:
      - InvoiceFlow side needs exact receiver design
    start_from:
      - 0600005_ORDER_FLOW_DOWNSTREAM_INVOICE_HANDOFF_EXACT.md
      - 0600006_ORDER_FLOW_TO_INVOICEFLOW_RECEIVER_BOUNDARY.md
      - 1200039_ORDER_FLOW_TO_INVOICEFLOW_RECEIVER_API_EXACT.md

  path_4_execution_planning:
    use_when:
      - review is closed and execution planning begins
    start_from:
      - 1200030_ORDER_FLOW_PRE_EXECUTION_CHECKLIST.md
      - 1100014_ORDER_FLOW_MIGRATION_PACKAGING_OVERVIEW.md
      - 1100017_ORDER_FLOW_MIGRATION_EXECUTION_GUARD.md

restart_rule:
  - do not restart from random mid-layer files first
  - restart from overview, bible, and the topic entry file


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000013_ORDER_FLOW_IMPLEMENTATION_ENTRY_GUIDE.md -->
# ============================================================
# ORDER FLOW IMPLEMENTATION ENTRY GUIDE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Explains the safest entry order when moving from design to implementation.

implementation_entry_order:

  1:
    - read 000_COMMON_DESIGN_OVERVIEW.md
    - read 00_ORDER_FLOW_INTEGRATED.md
    - read 9000001_ORDER_FLOW_DESIGN_BIBLE.md

  2:
    - confirm review status
    - confirm execution is still held or released

  3:
    - confirm structural layer
    files:
      - 1100001_ORDER_FLOW_TABLE_CANDIDATE_ORDER_CORE.md
      - 1100009_ORDER_FLOW_DDL_DRAFT_ORDER_CORE.md
      - 1100014_ORDER_FLOW_MIGRATION_PACKAGING_OVERVIEW.md

  4:
    - confirm app contract layer
    files:
      - 1200001_ORDER_FLOW_API_ORDER_CREATE_EXACT.md
      - 1200002_ORDER_FLOW_API_INVENTORY_PROPOSAL_EXACT.md
      - 1200003_ORDER_FLOW_API_SHIPMENT_AND_DELIVERY_EXACT.md
      - 1200004_ORDER_FLOW_API_ERROR_AND_SYNC_RESPONSE_EXACT.md

  5:
    - confirm UI behavior layer
    files:
      - 0900002_ORDER_FLOW_ORDER_ENTRY_AND_DETAIL_SCREEN_EXACT.md
      - 0900003_ORDER_FLOW_PROPOSAL_AND_SHIPMENT_SCREEN_EXACT.md
      - 0900004_ORDER_FLOW_DELIVERY_AND_CLOSURE_SCREEN_EXACT.md

  6:
    - confirm validation and permission layer
    files:
      - 1200009_ORDER_FLOW_VALIDATION_RULES_ORDER_ENTRY.md
      - 1200010_ORDER_FLOW_VALIDATION_RULES_EXECUTION.md
      - 1000002_ORDER_FLOW_PERMISSION_MATRIX_ORDER_AND_EXECUTION.md
      - 1000003_ORDER_FLOW_PERMISSION_MATRIX_SHIPMENT_AND_CLOSURE.md

  7:
    - confirm seed and test direction if needed
    files:
      - 1100018_ORDER_FLOW_TEST_DATA_AND_SEED_EXACT.md
      - 1200035_ORDER_FLOW_SEED_SQL_PACKET_OVERVIEW.md

implementation_rule:
  - implementation should not invent new business meaning without updating design docs
  - structural changes should refresh integrated docs after acceptance


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000013_ORDER_FLOW_IMPLEMENTATION_ENTRY_GUIDE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000014_ORDER_FLOW_REVIEW_TO_EXECUTION_GATE.md -->
# ============================================================
# ORDER FLOW REVIEW TO EXECUTION GATE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the gate from review stage to execution-planning stage.

gate_conditions:

  must_be_true:
    - Sato review completed
    - Boss go decision exists
    - unresolved structural blockers are closed or explicitly accepted
    - target schema confirmed
    - migration packaging confirmed
    - RLS claim strategy confirmed

  must_not_be_assumed:
    - draft SQL equals approved SQL
    - seed SQL equals production-safe SQL
    - candidate migration numbering equals final numbering

gate_result_when_passed:
  - OrderFlow may move from review-held design stage
    to execution-planning stage

gate_result_when_not_passed:
  - OrderFlow remains execution-held


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000014_ORDER_FLOW_REVIEW_TO_EXECUTION_GATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000015_ORDER_FLOW_FINAL_STATUS_SUMMARY.md -->
# ============================================================
# ORDER FLOW FINAL STATUS SUMMARY
# ============================================================

status: draft-summary
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact final summary of current OrderFlow status.

final_status:
  design_depth:
    - deep_pre_implementation
  design_phase:
    - completion_candidate
  review_phase:
    - pending_or_ready_for_reflection
  execution_phase:
    - intentionally_held

major_strengths:
  - clear boundary with EstimateCreator
  - strong execution-side lifecycle
  - realistic partial shipment / delivery handling
  - ERP-present / ERP-absent duality
  - API / validation / permission / table candidate alignment
  - downstream InvoiceFlow boundary prepared

major_holds:
  - final SQL approval
  - final migration packaging approval
  - final RLS naming alignment
  - review reflection not yet applied

one_line_summary:
  - OrderFlow is structurally well-designed and ready for review-driven finalization


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000015_ORDER_FLOW_FINAL_STATUS_SUMMARY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000016_ORDER_FLOW_OFFICIAL_LEDGER.md -->
# ============================================================
# ORDER FLOW OFFICIAL LEDGER
# ============================================================

status: draft-official-ledger
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides the official ledger view of the current OrderFlow design bundle.

official_ledger:
  app_name:
    - OrderFlow

  app_definition:
    - order execution and delivery coordination front

  official_fixed_areas:
    - positioning
    - scope
    - EstimateCreator boundary
    - ERP present / absent stance
    - multilingual / multicurrency / multidevice assumptions
    - lifecycle and state model
    - partial shipment / delivery policy
    - exact core models
    - exact screen responsibilities
    - dashboard and home summary
    - API request / response exact
    - validation rules
    - role / permission / authorization
    - screen payload mapping
    - list query / filter / sort
    - notification / reminder / overdue visibility
    - table candidates
    - FK candidates
    - DDL draft candidates
    - SQL review packet
    - RLS candidates
    - migration packaging
    - seed strategy
    - downstream InvoiceFlow handoff boundary

  intentionally_deferred:
    - common component exact design
    - final approved execution SQL
    - final migration numbering
    - final seed insert refinement
    - final InvoiceFlow-side canonical design

summary:
  - this ledger is the current official navigation anchor for OrderFlow design work


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000016_ORDER_FLOW_OFFICIAL_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000017_ORDER_FLOW_OFFICIAL_NAVIGATION_NOTE.md -->
# ============================================================
# ORDER FLOW OFFICIAL NAVIGATION NOTE
# ============================================================

status: draft-navigation
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Explains where to start depending on the reader's goal.

navigation_paths:

  if_you_want_full_picture:
    start_from:
      - 000_COMMON_DESIGN_OVERVIEW.md
      - 00_ORDER_FLOW_INTEGRATED.md
      - 9000001_ORDER_FLOW_DESIGN_BIBLE.md

  if_you_want_db_structure:
    start_from:
      - 1100001_ORDER_FLOW_TABLE_CANDIDATE_ORDER_CORE.md
      - 1100005_ORDER_FLOW_TABLE_RELATIONSHIP_OVERVIEW.md
      - 1100009_ORDER_FLOW_DDL_DRAFT_ORDER_CORE.md
      - 1100013_ORDER_FLOW_RLS_SQL_DRAFT.md

  if_you_want_api_and_ui_contract:
    start_from:
      - 1200001_ORDER_FLOW_API_ORDER_CREATE_EXACT.md
      - 1200013_ORDER_FLOW_SCREEN_PAYLOAD_MAPPING_ORDER_ENTRY.md
      - 0900002_ORDER_FLOW_ORDER_ENTRY_AND_DETAIL_SCREEN_EXACT.md

  if_you_want_review_and_execution_gate:
    start_from:
      - 1200025_ORDER_FLOW_SQL_REVIEW_PACKET_OVERVIEW.md
      - 1200030_ORDER_FLOW_PRE_EXECUTION_CHECKLIST.md
      - 1100017_ORDER_FLOW_MIGRATION_EXECUTION_GUARD.md
      - 9000014_ORDER_FLOW_REVIEW_TO_EXECUTION_GATE.md

  if_you_want_next_chat_restart:
    start_from:
      - 9000007_ORDER_FLOW_NEXT_CHAT_HANDOFF.md
      - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000017_ORDER_FLOW_OFFICIAL_NAVIGATION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000018_ORDER_FLOW_OFFICIAL_DECISION_LOG.md -->
# ============================================================
# ORDER FLOW OFFICIAL DECISION LOG
# ============================================================

status: draft-decision-log
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Records current top-level decisions already fixed in this design stream.

official_decisions:

  - decision_id: OF-DEC-OFFICIAL-001
    topic:
      - app naming
    decision:
      - use OrderFlow
    status:
      - fixed

  - decision_id: OF-DEC-OFFICIAL-002
    topic:
      - app position
    decision:
      - order execution and delivery coordination front
    status:
      - fixed

  - decision_id: OF-DEC-OFFICIAL-003
    topic:
      - estimate relationship
    decision:
      - estimate and order are separate records
      - same-record promotion is forbidden
      - copy / handoff only
    status:
      - fixed

  - decision_id: OF-DEC-OFFICIAL-004
    topic:
      - platform assumptions
    decision:
      - multilingual
      - multicurrency
      - iPhone
      - Android
      - PC
      - tablet
    status:
      - fixed

  - decision_id: OF-DEC-OFFICIAL-005
    topic:
      - partial handling
    decision:
      - partial shipment allowed
      - partial delivery allowed
      - remaining scope must stay visible
    status:
      - fixed

  - decision_id: OF-DEC-OFFICIAL-006
    topic:
      - ERP stance
    decision:
      - responsibility fixed
      - connection target changes
    status:
      - fixed

  - decision_id: OF-DEC-OFFICIAL-007
    topic:
      - common component scope
    decision:
      - exact common component design handled in separate chat
      - OrderFlow keeps dependency-only references
    status:
      - fixed

  - decision_id: OF-DEC-OFFICIAL-008
    topic:
      - execution posture
    decision:
      - SQL candidates are review-only
      - execution intentionally held
    status:
      - fixed


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000018_ORDER_FLOW_OFFICIAL_DECISION_LOG.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000019_ORDER_FLOW_OFFICIAL_NEXT_ACTIONS.md -->
# ============================================================
# ORDER FLOW OFFICIAL NEXT ACTIONS
# ============================================================

status: draft-next-actions
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Lists the official next actions from the current OrderFlow state.

official_next_actions:
  highest_priority:
    - receive and reflect Sato review
    - decide whether to refine seed SQL further
    - decide whether to start InvoiceFlow receiver-side exact work

  if_moving_toward_execution:
    - confirm Boss go decision
    - finalize migration placement
    - finalize RLS claim mapping
    - revise SQL candidates into approved execution bundle

  if_moving_toward_cross-app integration:
    - continue InvoiceFlow side exact design
    - later connect billing-ready rule and duplicate prevention policy

  if_moving_toward shared design:
    - start separate chat for exact common component design


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000019_ORDER_FLOW_OFFICIAL_NEXT_ACTIONS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000020_ORDER_FLOW_OFFICIAL_MASTER_STATUS.md -->
# ============================================================
# ORDER FLOW OFFICIAL MASTER STATUS
# ============================================================

status: draft-master-status
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact official master status for OrderFlow.

master_status:
  design_phase:
    - completion_candidate

  review_phase:
    - ready_for_review_reflection

  execution_phase:
    - held

  restart_readiness:
    - high

  document_navigation_readiness:
    - high

  current_best_start_files:
    - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
    - 000_COMMON_DESIGN_OVERVIEW.md
    - 00_ORDER_FLOW_INTEGRATED.md
    - 9000001_ORDER_FLOW_DESIGN_BIBLE.md

one_line_status:
  - OrderFlow is officially organized as a design-complete candidate with review-gated execution


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000020_ORDER_FLOW_OFFICIAL_MASTER_STATUS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md -->
# ============================================================
# ORDER FLOW FINAL INTEGRATED CANONICAL CANDIDATE
# ============================================================

status: regenerated-post-review-canonical-candidate
system: order-flow
owner: Boss
prepared_by: Zero
review_confirmed:
- Sato

# ============================================================
# 0. system definition
# ============================================================

OrderFlow is the order execution and delivery coordination front.

It bridges:
- EstimateCreator as the upstream estimate-side front
and
- InvoiceFlow or equivalent billing-side flow as the downstream handoff target.

OrderFlow is intentionally separated from:
- EstimateCreator as quote-authoring / estimate-side responsibility
- InvoiceFlow as billing-side responsibility
- generic ERP identity as an all-in-one application boundary

# ============================================================
# 1. fixed assumptions
# ============================================================

fixed_assumptions:
  - multilingual ready from day 0
  - multicurrency ready from day 0
  - iPhone supported
  - Android supported
  - PC supported
  - tablet supported

# ============================================================
# 2. core business scope
# ============================================================

core_scope:
  - create order from estimate
  - create standalone order
  - keep customer snapshot
  - manage order lines
  - perform fulfillment-context inventory check
  - calculate lead time
  - calculate delivery candidates
  - create customer proposal
  - record customer response
  - create shipment request
  - track shipment execution visibility
  - record delivery confirmation
  - perform explicit order closure
  - provide downstream billing handoff boundary

# ============================================================
# 3. upstream / downstream boundaries
# ============================================================

upstream_boundary:
  EstimateCreator:
    owns:
      - estimate
      - rough estimate
      - sales memo
      - quote sharing
      - quote-context inventory reference

orderflow_boundary:
  owns:
    - order creation from estimate
    - standalone order creation
    - execution-side inventory confirmation
    - delivery coordination
    - proposal / agreement visibility
    - shipment request and tracking
    - delivery confirmation
    - closure

downstream_boundary:
  InvoiceFlow_or_equivalent:
    receives:
      - billing-ready candidate handoff
    owns:
      - invoice identity
      - billing-side lifecycle
      - billing-side acceptance rules

# ============================================================
# 4. identity rules
# ============================================================

identity_rules:
  - estimate_id and order_id are separate
  - order_id and invoice_id are separate
  - same-record promotion is forbidden
  - copy / handoff only
  - source traceability must remain visible

# ============================================================
# 5. lifecycle
# ============================================================

order_lifecycle:
  - draft
  - confirmed
  - inventory_checked
  - delivery_date_calculated
  - customer_proposed
  - customer_confirmed
  - shipment_requested
  - shipped
  - delivered
  - closed

terminal_or_exception_states:
  - canceled

partial_policy:
  - partial shipment allowed
  - partial delivery allowed
  - remaining scope must stay visible
  - close must be explicit

# ============================================================
# 6. ERP stance
# ============================================================

erp_present_mode:
  - OrderFlow remains execution front
  - ERP may serve as truth/source for selected areas
  - sync visibility remains explicit

erp_absent_mode:
  - OrderFlow remains usable without ERP
  - app-local / manual / external-reference operation is allowed
  - business responsibility does not change

principle:
  - responsibility stays fixed
  - connection target changes

# ============================================================
# 7. exact design layers already fixed
# ============================================================

exact_layers_fixed:
  - positioning and differentiation
  - boundary design
  - state and lifecycle
  - core model design
  - screen responsibility design
  - home/dashboard design
  - API request/response exact
  - operator action matrix
  - validation rules
  - permission and authorization
  - screen payload mapping
  - list query / filter / sort
  - notification / reminder / overdue visibility
  - table candidates
  - relationship / FK candidates
  - DDL draft candidates
  - SQL review packet
  - RLS candidates
  - migration packaging
  - seed strategy
  - downstream invoice handoff boundary
  - InvoiceFlow receiver-side candidate contract on OrderFlow side

# ============================================================
# 8. review and execution posture
# ============================================================

review_posture:
  - Sato review passed
  - no blocking structural issue found
  - no mandatory structural redesign required before execution planning

execution_posture:
  - SQL is treated as final execution candidate source
  - actual execution remains a separate go decision
  - additive only posture is preserved

go_gate_requires:
  - Boss go decision
  - target schema confirmation
  - migration placement confirmation
  - final RLS claim mapping confirmation

# ============================================================
# 9. seed posture
# ============================================================

seed_posture:
  - local/dev/test oriented
  - JPY and USD examples included
  - estimate-origin and standalone examples included
  - partial shipment and partial delivery cases included
  - notification and sync-failed examples included

seed_status:
  - good enough for local/dev/test candidate use
  - only minor future adjustment may be needed if schema naming changes later

# ============================================================
# 10. downstream billing boundary
# ============================================================

downstream_billing_boundary:
  endpoint_candidate:
    - create_invoice_from_order_handoff

  required_sender_meaning:
    - company_id
    - order identity
    - closure context
    - customer billing summary
    - money summary
    - delivered scope summary

  fixed_rules:
    - OrderFlow remains execution authority only
    - InvoiceFlow becomes billing-side authority
    - duplicate invoice prevention is receiver-side policy
    - receiver may reject non-billing-ready payloads

# ============================================================
# 11. intentionally separated or deferred
# ============================================================

intentionally_separated:
  - exact common component design

intentionally_deferred:
  - final live execution approval
  - final InvoiceFlow-side canonical implementation
  - final environment-specific RLS claim function naming if platform requires changes

# ============================================================
# 12. current assessment
# ============================================================

current_assessment:
  - OrderFlow is design-finalized after review
  - OrderFlow is execution-candidate ready
  - final execution is still an operational go decision
  - restart and navigation readiness are very high

official_one_line_status:
  - OrderFlow is design-finalized after review, with execution handled as a separate go decision


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000022_ORDER_FLOW_FINAL_READING_ORDER.md -->
# ============================================================
# ORDER FLOW FINAL READING ORDER
# ============================================================

status: draft-final-reading-order
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides the shortest reliable reading path for a future reader.

final_reading_order:

  stage_1_orientation:
    - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
    - 000_COMMON_DESIGN_OVERVIEW.md
    - 00_ORDER_FLOW_INTEGRATED.md
    - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md

  stage_2_core_meaning:
    - 0200001_ORDER_FLOW_POSITIONING_ARCHITECTURE.md
    - 0200003_ORDER_FLOW_BOUNDARY_ARCHITECTURE.md
    - 0300001_ORDER_FLOW_ORDER_STATE_EXACT_MODEL.md
    - 0500001_ORDER_FLOW_ORDER_LIFECYCLE_FLOW.md

  stage_3_contract_and_behavior:
    - 0900002_ORDER_FLOW_ORDER_ENTRY_AND_DETAIL_SCREEN_EXACT.md
    - 1200001_ORDER_FLOW_API_ORDER_CREATE_EXACT.md
    - 1200009_ORDER_FLOW_VALIDATION_RULES_ORDER_ENTRY.md
    - 1000002_ORDER_FLOW_PERMISSION_MATRIX_ORDER_AND_EXECUTION.md

  stage_4_db_and_execution_hold:
    - 1100001_ORDER_FLOW_TABLE_CANDIDATE_ORDER_CORE.md
    - 1100009_ORDER_FLOW_DDL_DRAFT_ORDER_CORE.md
    - 1100013_ORDER_FLOW_RLS_SQL_DRAFT.md
    - 1200030_ORDER_FLOW_PRE_EXECUTION_CHECKLIST.md
    - 9000014_ORDER_FLOW_REVIEW_TO_EXECUTION_GATE.md

  stage_5_restart_or_continue:
    - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md
    - 9000007_ORDER_FLOW_NEXT_CHAT_HANDOFF.md
    - 9000019_ORDER_FLOW_OFFICIAL_NEXT_ACTIONS.md


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000022_ORDER_FLOW_FINAL_READING_ORDER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000023_ORDER_FLOW_FINAL_SCOPE_AND_HOLD_SUMMARY.md -->
# ============================================================
# ORDER FLOW FINAL SCOPE AND HOLD SUMMARY
# ============================================================

status: draft-final-scope-summary
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a concise summary of what is in scope and what is held.

in_scope_now:
  - app-specific design completion candidate
  - API and screen contract design
  - table/fk/ddl candidate design
  - RLS candidate design
  - migration and seed direction
  - downstream billing handoff boundary

held_now:
  - final executable SQL
  - final DB approval
  - final migration execution
  - final InvoiceFlow-side receiver implementation
  - exact common component design in this chat

hold_reason:
  - review-first posture
  - explicit go-decision requirement
  - boundary discipline


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000023_ORDER_FLOW_FINAL_SCOPE_AND_HOLD_SUMMARY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000024_ORDER_FLOW_FINAL_MASTER_RESTART_NOTE.md -->
# ============================================================
# ORDER FLOW FINAL MASTER RESTART NOTE
# ============================================================

status: draft-final-restart
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Acts as the master restart note for future continuation.

restart_anchor_files:
  - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
  - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
  - 9000001_ORDER_FLOW_DESIGN_BIBLE.md
  - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md

best_restart_modes:
  - reflect review
  - refine seed sql
  - continue InvoiceFlow exact
  - start execution planning after approval

restart_warning:
  - do not restart from isolated implementation files without reading the overview or ledger first


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000024_ORDER_FLOW_FINAL_MASTER_RESTART_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000025_ORDER_FLOW_FINAL_BUILD_READY_NOTE.md -->
# ============================================================
# ORDER FLOW FINAL BUILD READY NOTE
# ============================================================

status: draft-build-ready-note
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Clarifies what "build ready" means at the current stage.

build_ready_meaning_now:
  - business meaning is strong enough for implementation planning
  - API and screen contracts are fixed enough for app-side work
  - DB candidate structure is fixed enough for review
  - execution is not yet approved

not_meant_by_build_ready:
  - immediate production migration approval
  - final DB execution approval
  - final seed approval for shared environments

summary:
  - OrderFlow is build-ready for planning and review
  - OrderFlow is not yet execution-approved


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000025_ORDER_FLOW_FINAL_BUILD_READY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000026_ORDER_FLOW_FINAL_CONSISTENCY_CHECK.md -->
# ============================================================
# ORDER FLOW FINAL CONSISTENCY CHECK
# ============================================================

status: draft-final-check
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Performs a final consistency check across the current OrderFlow design bundle.

consistency_check:

  naming_consistency:
    result:
      - acceptable
    notes:
      - OrderFlow naming is consistently used as the official app name

  boundary_consistency:
    result:
      - acceptable
    notes:
      - EstimateCreator boundary is consistent
      - ERP present/absent stance is consistent
      - InvoiceFlow downstream boundary is consistent

  lifecycle_consistency:
    result:
      - acceptable
    notes:
      - state model, lifecycle flow, validation, and action matrix align sufficiently

  api_model_consistency:
    result:
      - acceptable
    notes:
      - API payloads align with core model family and screen mapping

  screen_behavior_consistency:
    result:
      - acceptable
    notes:
      - detail screen remains execution hub
      - home remains triage hub
      - close remains explicit

  table_and_ddl_consistency:
    result:
      - acceptable
    notes:
      - table candidates, FK candidates, DDL drafts, and SQL candidate packet align

  execution_posture_consistency:
    result:
      - acceptable
    notes:
      - review-only SQL posture is consistently preserved
      - execution hold is consistently preserved

overall_result:
  - current bundle is structurally consistent enough for review-driven finalization


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000026_ORDER_FLOW_FINAL_CONSISTENCY_CHECK.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000027_ORDER_FLOW_FINAL_HOLD_AND_GO_CHECK.md -->
# ============================================================
# ORDER FLOW FINAL HOLD AND GO CHECK
# ============================================================

status: draft-hold-go-check
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Makes the current hold/go condition explicit.

hold_and_go_check:

  currently_true:
    - design bundle is deeply prepared
    - review packet exists
    - seed packet exists
    - migration packaging exists
    - restart guidance exists

  currently_not_true:
    - Sato review closure
    - Boss go decision for execution
    - final execution SQL approval
    - final migration application approval

  current_result:
    - hold

  go_condition_summary:
    all_required:
      - Sato review completed
      - Boss go decision exists
      - final execution candidate approved
      - target placement confirmed
      - unresolved blockers closed or explicitly accepted

one_line_result:
  - OrderFlow remains in review-held state


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000027_ORDER_FLOW_FINAL_HOLD_AND_GO_CHECK.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000028_ORDER_FLOW_FINAL_REVIEW_WAITING_NOTE.md -->
# ============================================================
# ORDER FLOW FINAL REVIEW WAITING NOTE
# ============================================================

status: draft-review-waiting
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Marks the current design state as ready and waiting for review reflection.

review_waiting_state:
  ready_for_review:
    - yes

  waiting_for:
    - Sato DB review
    - possible follow-up design corrections
    - go / hold decision after review

  recommended_files_for_reviewer:
    - 1200025_ORDER_FLOW_SQL_REVIEW_PACKET_OVERVIEW.md
    - 1200026_ORDER_FLOW_SQL_CANDIDATE_PHASE_1_ORDER_CORE.sql
    - 1200027_ORDER_FLOW_SQL_CANDIDATE_PHASE_2_EXECUTION.sql
    - 1200028_ORDER_FLOW_SQL_CANDIDATE_PHASE_3_SHIPMENT_HISTORY.sql
    - 1100013_ORDER_FLOW_RLS_SQL_DRAFT.md
    - 1100014_ORDER_FLOW_MIGRATION_PACKAGING_OVERVIEW.md

summary:
  - design side is prepared enough to receive concrete review findings


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000028_ORDER_FLOW_FINAL_REVIEW_WAITING_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000029_ORDER_FLOW_FINAL_RESTART_PROMPT.md -->
# ============================================================
# ORDER FLOW FINAL RESTART PROMPT
# ============================================================

status: draft-restart-prompt
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a ready-to-paste restart prompt for the next chat.

restart_prompt:
OrderFlow の現設計を前提に次へ進みたい。
現在は、境界・状態・モデル・画面・API・validation・permission・query・notification・dashboard・table candidate・FK candidate・DDL draft・RLS candidate・migration packaging・seed strategy・InvoiceFlow handoff boundary まで固まっている。
共通部品の exact 設計は別チャット扱いのまま維持したい。
次は以下のどれかに進めたい。
1. 佐藤レビュー結果の反映
2. seed SQL の精密化
3. InvoiceFlow 側受け口の exact 設計
4. 実行前最終整理

start_files:
- 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
- 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
- 9000001_ORDER_FLOW_DESIGN_BIBLE.md
- 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000029_ORDER_FLOW_FINAL_RESTART_PROMPT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000030_ORDER_FLOW_FINAL_CLOSURE_CANDIDATE.md -->
# ============================================================
# ORDER FLOW FINAL CLOSURE CANDIDATE
# ============================================================

status: draft-closure-candidate
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Acts as the current closure candidate note for the OrderFlow design stream.

closure_candidate_judgment:
  design_phase:
    - can_be_closed_as_candidate

  reason:
    - major app-specific design areas are covered
    - major boundaries are fixed
    - execution is intentionally gated
    - restart and continuation guides are prepared

  do_not_forget:
    - review reflection may still reopen selected documents
    - execution approval is separate from design closure
    - common component exact design remains outside this stream

current_best_closure_statement:
  - OrderFlow can be treated as a design-phase closure candidate, pending review-driven refinement if needed


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000030_ORDER_FLOW_FINAL_CLOSURE_CANDIDATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000031_ORDER_FLOW_ROOT_REFLECTION_NOTE.md -->
# ============================================================
# ORDER FLOW ROOT REFLECTION NOTE
# ============================================================

status: draft-root-reflection
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Explains what should be reflected at higher-level root navigation later.

recommended_root_reflection_targets:
  - applications master index
  - civilization-system level navigation note
  - future official app ledger aggregation
  - future restart guide aggregation

reflection_summary:
  - OrderFlow is now a design-phase completion candidate
  - official ledger and final integrated candidate already exist
  - restart and review-held posture are already documented

reflection_rule:
  - root reflection should reference OrderFlow by navigation anchor
  - root reflection should not duplicate detailed app design meaning


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000031_ORDER_FLOW_ROOT_REFLECTION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000032_ORDER_FLOW_MASTER_INDEX_PATCH_NOTE.md -->
# ============================================================
# ORDER FLOW MASTER INDEX PATCH NOTE
# ============================================================

status: draft-master-index-patch
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides the summary text that can be reused when patching a higher-level master index.

master_index_patch_candidate:
  app_name:
    - OrderFlow
  app_role:
    - order execution and delivery coordination front
  current_status:
    - design-phase completion candidate
  primary_start_files:
    - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
    - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
    - 9000001_ORDER_FLOW_DESIGN_BIBLE.md
  execution_posture:
    - review-held
  note:
    - common component exact design is intentionally out of scope here


- 900410_ORDERFLOW_20260416_DIFF_AUDIT_NOTE.md

- 900420_ORDERFLOW_20260416_BUNDLE02_PHASE_A_AUDIT_NOTE.md

- 900430_ORDERFLOW_20260416_BUNDLE03_STUB_AUDIT_NOTE.md

- 900440_ORDERFLOW_20260416_BUNDLE04_CLOSEOUT_AUDIT_NOTE.md

- 900450_ORDERFLOW_NEXT_APP_TRANSITION_HANDOFF.md

- 900460_ORDERFLOW_REUSABLE_PHASEA_REINFORCEMENT_RECIPE.md

- 900470_ORDERFLOW_PLANNING_STOP_RULE_NOTE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000032_ORDER_FLOW_MASTER_INDEX_PATCH_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000033_ORDER_FLOW_SYSTEM_INDEX_ENTRY_NOTE.md -->
# ============================================================
# ORDER FLOW SYSTEM INDEX ENTRY NOTE
# ============================================================

status: draft-system-index-entry
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact index-entry style note for future higher-level system indexes.

system_index_entry:
  title:
    - OrderFlow
  one_line_definition:
    - OrderFlow is the order execution and delivery coordination front positioned between EstimateCreator and downstream billing-side handoff.
  design_state:
    - design-phase completion candidate
  read_start:
    - 000_COMMON_DESIGN_OVERVIEW.md
    - 00_ORDER_FLOW_INTEGRATED.md
    - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
  review_state:
    - ready for review reflection
  execution_state:
    - intentionally held


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000033_ORDER_FLOW_SYSTEM_INDEX_ENTRY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000034_ORDER_FLOW_FINAL_NAVIGATION_BRIDGE.md -->
# ============================================================
# ORDER FLOW FINAL NAVIGATION BRIDGE
# ============================================================

status: draft-navigation-bridge
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Acts as a bridge note from higher-level navigation to app-local canonical files.

bridge_targets:
  if_reader_wants_full_overview:
    - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
    - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md

  if_reader_wants_contract_and_api:
    - 1200001_ORDER_FLOW_API_ORDER_CREATE_EXACT.md
    - 1200002_ORDER_FLOW_API_INVENTORY_PROPOSAL_EXACT.md
    - 1200003_ORDER_FLOW_API_SHIPMENT_AND_DELIVERY_EXACT.md

  if_reader_wants_db_and_execution_gate:
    - 1100009_ORDER_FLOW_DDL_DRAFT_ORDER_CORE.md
    - 1100013_ORDER_FLOW_RLS_SQL_DRAFT.md
    - 1200030_ORDER_FLOW_PRE_EXECUTION_CHECKLIST.md

  if_reader_wants_restart:
    - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md
    - 9000029_ORDER_FLOW_FINAL_RESTART_PROMPT.md

navigation_rule:
  - use bridge files for entry
  - use bible file for deep reading order


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000034_ORDER_FLOW_FINAL_NAVIGATION_BRIDGE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000035_ORDER_FLOW_MASTER_RESTART_BRIDGE.md -->
# ============================================================
# ORDER FLOW MASTER RESTART BRIDGE
# ============================================================

status: draft-master-restart-bridge
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact master restart bridge for future continuation.

master_restart_bridge:
  current_best_restart_files:
    - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
    - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
    - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md
    - 9000029_ORDER_FLOW_FINAL_RESTART_PROMPT.md

  best_restart_topics:
    - reflect Sato review
    - refine seed SQL
    - continue InvoiceFlow receiver exact
    - prepare execution-planning after approval

  restart_warning:
    - do not skip overview or ledger when restarting after long gaps


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000035_ORDER_FLOW_MASTER_RESTART_BRIDGE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000036_ORDER_FLOW_CHAT_CLOSURE_NOTE.md -->
# ============================================================
# ORDER FLOW CHAT CLOSURE NOTE
# ============================================================

status: draft-chat-closure
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Marks the current chat stream as closable from the design-work perspective.

closure_note:
  current_state:
    - design bundle is deeply built
    - official ledger exists
    - final integrated candidate exists
    - restart bridges exist
    - review-held posture is explicit

  meaning:
    - this chat can be closed without losing design continuity
    - future work can restart from official anchors

  not_meant:
    - execution approval
    - final review completion
    - final SQL approval


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000036_ORDER_FLOW_CHAT_CLOSURE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000037_ORDER_FLOW_FINAL_WORK_STOP_POINT.md -->
# ============================================================
# ORDER FLOW FINAL WORK STOP POINT
# ============================================================

status: draft-stop-point
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the safest stop point for the current stream.

safe_stop_point:
  reached_items:
    - app-specific design completion candidate
    - db candidate structure prepared
    - review packet prepared
    - seed direction prepared
    - downstream billing boundary prepared
    - restart guidance prepared

  next_work_should_start_from:
    - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
    - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
    - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md

stop_rule:
  - do not continue into execution without review/go gate
  - do not reopen boundary design unless review requires it


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000037_ORDER_FLOW_FINAL_WORK_STOP_POINT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000038_ORDER_FLOW_RESUME_PRIORITY_NOTE.md -->
# ============================================================
# ORDER FLOW RESUME PRIORITY NOTE
# ============================================================

status: draft-resume-priority
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines priority order when resuming OrderFlow later.

resume_priorities:
  priority_1:
    - reflect Sato review if available

  priority_2:
    - refine seed SQL if local/dev testing is needed next

  priority_3:
    - continue InvoiceFlow receiver-side exact if downstream billing work is next

  priority_4:
    - prepare approved execution bundle only after explicit gate pass

resume_rule:
  - review reflection outranks new expansion work
  - execution packaging comes after review closure, not before


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000038_ORDER_FLOW_RESUME_PRIORITY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000039_ORDER_FLOW_PASS_CANDIDATE_SUMMARY.md -->
# ============================================================
# ORDER FLOW PASS CANDIDATE SUMMARY
# ============================================================

status: draft-pass-candidate
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Compact summary indicating that the current design stream is passable as a candidate.

pass_candidate_summary:
  result:
    - pass_candidate

  because:
    - business meaning is stable
    - boundaries are stable
    - state/model/api/ui/db candidate layers align
    - review and restart structures are prepared

  remaining_before_harder_pass:
    - review reflection
    - optional final corrections
    - explicit execution go/no-go decision


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000039_ORDER_FLOW_PASS_CANDIDATE_SUMMARY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000040_ORDER_FLOW_FINAL_HANDOFF_MINI.md -->
# ============================================================
# ORDER FLOW FINAL HANDOFF MINI
# ============================================================

status: draft-mini-handoff
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a very short handoff note for quick continuation.

mini_handoff:
  app:
    - OrderFlow

  status:
    - design-phase completion candidate
    - review-held for execution

  start_files:
    - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
    - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
    - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md

  next_best_topics:
    - Sato review reflection
    - seed SQL refinement
    - InvoiceFlow receiver exact
    - execution planning after approval


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000040_ORDER_FLOW_FINAL_HANDOFF_MINI.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000041_ORDER_FLOW_FIXED_SCOPE_DECLARATION.md -->
# ============================================================
# ORDER FLOW FIXED SCOPE DECLARATION
# ============================================================

status: fixed-scope-declaration
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Declares the current fixed design scope of OrderFlow.

fixed_scope:
  included:
    - order creation from estimate
    - standalone order creation
    - customer snapshot retention
    - fulfillment-context inventory confirmation
    - lead time calculation
    - delivery schedule candidate generation
    - customer proposal and response recording
    - shipment request and shipment visibility
    - delivery confirmation
    - explicit order closure
    - downstream billing handoff boundary

  excluded:
    - estimate authoring itself
    - invoice lifecycle itself
    - exact shared/common component design
    - final executable migration approval

declaration:
  - the above scope is treated as fixed for the current design bundle unless explicit review requires change


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000041_ORDER_FLOW_FIXED_SCOPE_DECLARATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000042_ORDER_FLOW_FIXED_HOLD_DECLARATION.md -->
# ============================================================
# ORDER FLOW FIXED HOLD DECLARATION
# ============================================================

status: fixed-hold-declaration
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Declares the current hold posture as fixed.

fixed_hold_items:
  - final executable SQL
  - final migration application
  - final seed approval for shared use
  - execution go decision
  - final InvoiceFlow-side canonical implementation

declaration:
  - OrderFlow remains review-held for execution
  - design closure and execution approval are separate concerns


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000042_ORDER_FLOW_FIXED_HOLD_DECLARATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000043_ORDER_FLOW_FIXED_RESTART_ANCHOR.md -->
# ============================================================
# ORDER FLOW FIXED RESTART ANCHOR
# ============================================================

status: fixed-restart-anchor
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Declares the fixed restart anchors for future continuation.

fixed_restart_anchors:
  - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
  - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
  - 9000001_ORDER_FLOW_DESIGN_BIBLE.md
  - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md
  - 9000029_ORDER_FLOW_FINAL_RESTART_PROMPT.md

declaration:
  - future continuation should restart from these anchors first
  - isolated mid-layer re-entry is discouraged


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000043_ORDER_FLOW_FIXED_RESTART_ANCHOR.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000044_ORDER_FLOW_FIXED_REVIEW_GATE_DECLARATION.md -->
# ============================================================
# ORDER FLOW FIXED REVIEW GATE DECLARATION
# ============================================================

status: fixed-review-gate-declaration
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Declares the fixed review gate conditions before execution planning.

fixed_review_gate:
  required_before_execution:
    - Sato review completed
    - Boss go decision exists
    - structural blockers resolved or explicitly accepted
    - target schema confirmed
    - migration packaging confirmed
    - RLS claim mapping confirmed

declaration:
  - no execution planning should bypass this gate
  - no candidate SQL should be treated as final before this gate is passed


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000044_ORDER_FLOW_FIXED_REVIEW_GATE_DECLARATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000045_ORDER_FLOW_FIXED_STATUS_DECLARATION.md -->
# ============================================================
# ORDER FLOW FIXED STATUS DECLARATION
# ============================================================

status: fixed-status-declaration
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Declares the current official fixed status of OrderFlow.

fixed_status:
  design_phase:
    - completion_candidate
  review_phase:
    - ready_for_reflection
  execution_phase:
    - held
  restart_readiness:
    - high
  navigation_readiness:
    - high

official_one_line_status:
  - OrderFlow is fixed as a design-complete candidate with review-gated execution readiness


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000045_ORDER_FLOW_FIXED_STATUS_DECLARATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000046_ORDER_FLOW_FINAL_STOP_DECLARATION.md -->
# ============================================================
# ORDER FLOW FINAL STOP DECLARATION
# ============================================================

status: final-stop-declaration
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Declares that the current OrderFlow design stream can be safely stopped here.

declaration:
  - OrderFlow design has reached a stop-safe point
  - major app-specific design meaning is already fixed
  - continuation can resume later from official anchors
  - no further design expansion is required for this stop point

not_implied:
  - execution approval
  - review completion
  - production readiness


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000046_ORDER_FLOW_FINAL_STOP_DECLARATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000047_ORDER_FLOW_FINAL_GO_OR_HOLD_REFERENCE.md -->
# ============================================================
# ORDER FLOW FINAL GO OR HOLD REFERENCE
# ============================================================

status: final-go-hold-reference
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides the shortest reference for future go/hold judgment.

go_or_hold_reference:
  current_state:
    - hold

  go_requires:
    - Sato review completed
    - Boss go decision exists
    - final SQL candidate approved
    - migration placement confirmed
    - RLS claim mapping confirmed

  hold_means:
    - design may stop here
    - execution may not start yet


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000047_ORDER_FLOW_FINAL_GO_OR_HOLD_REFERENCE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000048_ORDER_FLOW_FINAL_RESUME_ENTRY.md -->
# ============================================================
# ORDER FLOW FINAL RESUME ENTRY
# ============================================================

status: final-resume-entry
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides the shortest future resume entry for OrderFlow.

resume_entry:
  first_files:
    - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
    - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
    - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md

  next_topics:
    - review reflection
    - seed refinement
    - InvoiceFlow continuation
    - execution planning after approval


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000048_ORDER_FLOW_FINAL_RESUME_ENTRY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000049_ORDER_FLOW_FINAL_OFFICIAL_CLOSURE_NOTE.md -->
# ============================================================
# ORDER FLOW FINAL OFFICIAL CLOSURE NOTE
# ============================================================

status: final-official-closure-note
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Acts as the official closure note for the current OrderFlow design stream.

official_closure_note:
  result:
    - design stream closure candidate reached

  because:
    - scope is fixed
    - boundaries are fixed
    - app contract is fixed
    - db candidate design is fixed
    - restart and hold posture are fixed

  reopen_triggers:
    - Sato review findings
    - Boss decision for execution planning
    - downstream InvoiceFlow continuation


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000049_ORDER_FLOW_FINAL_OFFICIAL_CLOSURE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000050_ORDER_FLOW_FINAL_STATUS_FREEZE_NOTE.md -->
# ============================================================
# ORDER FLOW FINAL STATUS FREEZE NOTE
# ============================================================

status: final-status-freeze-note
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Freezes the current status wording for OrderFlow.

status_freeze:
  official_status_text:
    - OrderFlow is a design-complete candidate with review-gated execution readiness.

  freeze_meaning:
    - use this wording consistently until review reflection changes it


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000050_ORDER_FLOW_FINAL_STATUS_FREEZE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000051_ORDER_FLOW_CANONICAL_ENTRY_NOTE.md -->
# ============================================================
# ORDER FLOW CANONICAL ENTRY NOTE
# ============================================================

status: canonical-entry-note
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides the shortest canonical entry set for OrderFlow.

canonical_entry_files:
  - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
  - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
  - 9000001_ORDER_FLOW_DESIGN_BIBLE.md
  - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md

canonical_rule:
  - start from these files before entering lower-layer docs
  - treat these as the fixed entry anchor set for the current design bundle


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000051_ORDER_FLOW_CANONICAL_ENTRY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000052_ORDER_FLOW_ONE_PAGE_SUMMARY.md -->
# ============================================================
# ORDER FLOW ONE PAGE SUMMARY
# ============================================================

status: one-page-summary
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a one-page summary of the current OrderFlow design state.

one_page_summary:
  app_name:
    - OrderFlow

  role:
    - order execution and delivery coordination front

  fixed_scope:
    - order from estimate
    - standalone order
    - inventory confirmation
    - lead time calculation
    - delivery candidate generation
    - customer proposal / response
    - shipment request / shipment visibility
    - delivery confirmation
    - explicit closure
    - downstream billing handoff boundary

  fixed_boundaries:
    - EstimateCreator stays upstream
    - InvoiceFlow stays downstream
    - ERP may be present or absent
    - common component exact design is outside this stream

  current_status:
    - design-complete candidate
    - review-held for execution

  best_start_files:
    - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
    - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
    - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000052_ORDER_FLOW_ONE_PAGE_SUMMARY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000053_ORDER_FLOW_REVIEW_STARTER_NOTE.md -->
# ============================================================
# ORDER FLOW REVIEW STARTER NOTE
# ============================================================

status: review-starter-note
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides the shortest starting set for review work.

review_start_files:
  - 1200025_ORDER_FLOW_SQL_REVIEW_PACKET_OVERVIEW.md
  - 1200026_ORDER_FLOW_SQL_CANDIDATE_PHASE_1_ORDER_CORE.sql
  - 1200027_ORDER_FLOW_SQL_CANDIDATE_PHASE_2_EXECUTION.sql
  - 1200028_ORDER_FLOW_SQL_CANDIDATE_PHASE_3_SHIPMENT_HISTORY.sql
  - 1100013_ORDER_FLOW_RLS_SQL_DRAFT.md
  - 1200030_ORDER_FLOW_PRE_EXECUTION_CHECKLIST.md

review_note:
  - use these files first when starting Sato review or review reflection


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000053_ORDER_FLOW_REVIEW_STARTER_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000054_ORDER_FLOW_EXECUTION_STARTER_NOTE.md -->
# ============================================================
# ORDER FLOW EXECUTION STARTER NOTE
# ============================================================

status: execution-starter-note
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides the shortest starting set for future execution planning after approval.

execution_start_files:
  - 9000014_ORDER_FLOW_REVIEW_TO_EXECUTION_GATE.md
  - 1200030_ORDER_FLOW_PRE_EXECUTION_CHECKLIST.md
  - 1100014_ORDER_FLOW_MIGRATION_PACKAGING_OVERVIEW.md
  - 1100015_ORDER_FLOW_MIGRATION_PHASE_PLAN.md
  - 1100017_ORDER_FLOW_MIGRATION_EXECUTION_GUARD.md

execution_note:
  - do not use this entry unless review is closed and go decision exists


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000054_ORDER_FLOW_EXECUTION_STARTER_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000055_ORDER_FLOW_ARCHIVE_READY_NOTE.md -->
# ============================================================
# ORDER FLOW ARCHIVE READY NOTE
# ============================================================

status: archive-ready-note
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Confirms that the current bundle can be archived or paused safely.

archive_ready:
  - official anchors exist
  - restart anchors exist
  - review anchors exist
  - execution hold is explicit
  - current status wording is frozen

summary:
  - OrderFlow is safe to pause, archive, or resume later from canonical anchors


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000055_ORDER_FLOW_ARCHIVE_READY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000056_ORDER_FLOW_UPPER_INDEX_REFLECTION_READY.md -->
# ============================================================
# ORDER FLOW UPPER INDEX REFLECTION READY
# ============================================================

status: upper-index-reflection-ready
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Confirms that OrderFlow is ready to be reflected into upper-level indexes.

reflection_ready:
  - official ledger exists
  - final integrated candidate exists
  - restart guides exist
  - review hold posture exists
  - concise one-page summary exists

summary:
  - OrderFlow is ready for upper-index reflection without requiring deep file reading first


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000056_ORDER_FLOW_UPPER_INDEX_REFLECTION_READY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000057_ORDER_FLOW_MASTER_LEDGER_ENTRY_CANDIDATE.md -->
# ============================================================
# ORDER FLOW MASTER LEDGER ENTRY CANDIDATE
# ============================================================

status: master-ledger-entry-candidate
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact candidate entry for future master ledger aggregation.

master_ledger_entry_candidate:
  app_name:
    - OrderFlow
  role:
    - order execution and delivery coordination front
  current_status:
    - design-complete candidate
  execution_status:
    - review-held
  canonical_start_files:
    - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
    - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
    - 9000001_ORDER_FLOW_DESIGN_BIBLE.md
  note:
    - common component exact design remains intentionally outside this stream


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000057_ORDER_FLOW_MASTER_LEDGER_ENTRY_CANDIDATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000058_ORDER_FLOW_GLOBAL_NAV_SUMMARY.md -->
# ============================================================
# ORDER FLOW GLOBAL NAV SUMMARY
# ============================================================

status: global-nav-summary
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a short navigation summary for broader system-level references.

global_nav_summary:
  what_it_is:
    - OrderFlow is the execution-side front after estimate and before billing-side handoff.

  where_to_start:
    - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
    - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md

  where_to_review_db:
    - 1200025_ORDER_FLOW_SQL_REVIEW_PACKET_OVERVIEW.md
    - 1100013_ORDER_FLOW_RLS_SQL_DRAFT.md

  where_to_restart:
    - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md
    - 9000029_ORDER_FLOW_FINAL_RESTART_PROMPT.md


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000058_ORDER_FLOW_GLOBAL_NAV_SUMMARY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000059_ORDER_FLOW_APP_PORTFOLIO_ENTRY_NOTE.md -->
# ============================================================
# ORDER FLOW APP PORTFOLIO ENTRY NOTE
# ============================================================

status: app-portfolio-entry-note
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact portfolio-style entry for application listings.

portfolio_entry:
  name:
    - OrderFlow
  category:
    - business application
  subcategory:
    - order execution / delivery coordination
  upstream_relation:
    - EstimateCreator
  downstream_relation:
    - InvoiceFlow or ERP billing flow
  maturity:
    - design-complete candidate
  next_step:
    - review reflection or execution planning after approval


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000059_ORDER_FLOW_APP_PORTFOLIO_ENTRY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000060_ORDER_FLOW_FINAL_INDEX_READY_NOTE.md -->
# ============================================================
# ORDER FLOW FINAL INDEX READY NOTE
# ============================================================

status: final-index-ready-note
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Marks OrderFlow as ready for final index-level references.

index_ready_result:
  - yes

because:
  - canonical anchors are fixed
  - overview and integrated summaries exist
  - official status wording is fixed
  - restart and review entry points are fixed

one_line_result:
  - OrderFlow is now index-ready for broader navigation layers


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000060_ORDER_FLOW_FINAL_INDEX_READY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000061_ORDER_FLOW_INDEX_REFLECTION_WAITING_NOTE.md -->
# ============================================================
# ORDER FLOW INDEX REFLECTION WAITING NOTE
# ============================================================

status: index-reflection-waiting-note
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Marks OrderFlow as waiting-ready for upper index reflection.

waiting_state:
  - upper index reflection can happen later without further deep design work
  - current app-local canonical anchors are already sufficient
  - detailed app meaning does not need to be restated at upper layers

recommended_entry_for_upper_index:
  - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
  - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
  - 9000051_ORDER_FLOW_CANONICAL_ENTRY_NOTE.md


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000061_ORDER_FLOW_INDEX_REFLECTION_WAITING_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000062_ORDER_FLOW_MASTER_LEDGER_REFLECTION_NOTE.md -->
# ============================================================
# ORDER FLOW MASTER LEDGER REFLECTION NOTE
# ============================================================

status: master-ledger-reflection-note
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a ready summary for reflection into a future master ledger.

reflection_payload:
  app_name:
    - OrderFlow
  role:
    - order execution and delivery coordination front
  maturity:
    - design-complete candidate
  execution_posture:
    - review-held
  canonical_anchor:
    - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
  integrated_anchor:
    - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
  restart_anchor:
    - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md

reflection_rule:
  - keep this reflection compact
  - do not duplicate lower-level detail in the master ledger


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000062_ORDER_FLOW_MASTER_LEDGER_REFLECTION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000063_ORDER_FLOW_PORTFOLIO_REFLECTION_WAITING_NOTE.md -->
# ============================================================
# ORDER FLOW PORTFOLIO REFLECTION WAITING NOTE
# ============================================================

status: portfolio-reflection-waiting-note
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact waiting note for portfolio-style app listings.

portfolio_reflection_summary:
  app:
    - OrderFlow
  portfolio_category:
    - business application
  portfolio_role:
    - order execution / delivery coordination
  upstream:
    - EstimateCreator
  downstream:
    - InvoiceFlow or ERP billing flow
  current_state:
    - design-complete candidate
  next_stage:
    - review reflection or execution planning after approval


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000063_ORDER_FLOW_PORTFOLIO_REFLECTION_WAITING_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000064_ORDER_FLOW_GLOBAL_RESTART_REFLECTION_NOTE.md -->
# ============================================================
# ORDER FLOW GLOBAL RESTART REFLECTION NOTE
# ============================================================

status: global-restart-reflection-note
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact restart reflection note for future global restart maps.

global_restart_reflection:
  best_restart_files:
    - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
    - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
    - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md
    - 9000029_ORDER_FLOW_FINAL_RESTART_PROMPT.md

  best_restart_topics:
    - reflect Sato review
    - refine seed SQL
    - continue InvoiceFlow exact
    - prepare execution after approval


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000064_ORDER_FLOW_GLOBAL_RESTART_REFLECTION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000065_ORDER_FLOW_FINAL_REFLECTION_WAIT_STATE.md -->
# ============================================================
# ORDER FLOW FINAL REFLECTION WAIT STATE
# ============================================================

status: final-reflection-wait-state
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Declares the final reflection-wait state for the current OrderFlow bundle.

final_wait_state:
  design_state:
    - fixed enough for reflection
  index_state:
    - ready
  portfolio_state:
    - ready
  restart_state:
    - ready
  execution_state:
    - held

one_line_state:
  - OrderFlow is reflection-ready and execution-held


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000065_ORDER_FLOW_FINAL_REFLECTION_WAIT_STATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000066_ORDER_FLOW_POST_REVIEW_FINALIZATION_NOTE.md -->
# ============================================================
# ORDER FLOW POST REVIEW FINALIZATION NOTE
# ============================================================

status: post-review-finalized
system: order-flow
owner: Boss
prepared_by: Zero
review_confirmed:
- Sato

purpose:
Summarizes the finalization result after assuming Sato review passed.

finalization_summary:
  review_state:
    - passed

  finalized_now:
    - review reflection recorded
    - execution SQL packet treated as final candidate
    - migration placement fixed
    - seed SQL accepted with only minor future-adjustment caveat
    - InvoiceFlow receiver exact finalized on OrderFlow side

  still_separate:
    - actual execution approval
    - actual migration application
    - InvoiceFlow-side canonical implementation details

official_result:
  - OrderFlow may now be treated as post-review design-finalized
  - execution remains a separate operational decision


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000066_ORDER_FLOW_POST_REVIEW_FINALIZATION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000067_ORDER_FLOW_FINAL_STATUS_AFTER_REVIEW.md -->
# ============================================================
# ORDER FLOW FINAL STATUS AFTER REVIEW
# ============================================================

status: final-status-after-review
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides the final concise status after assumed review pass.

final_status_after_review:
  design_phase:
    - finalized

  review_phase:
    - passed

  execution_phase:
    - candidate_ready_but_go_separate

  restart_readiness:
    - very_high

official_one_line_status:
  - OrderFlow is design-finalized after review, with execution handled as a separate go decision


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/9000067_ORDER_FLOW_FINAL_STATUS_AFTER_REVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/900410_ORDERFLOW_20260416_DIFF_AUDIT_NOTE.md -->
# ============================================================
# ORDERFLOW 20260416 DIFF AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: OrderFlow
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: diff-audit-note

purpose:
Records the first differential reinforcement bundle applied to the
existing OrderFlow design.

preserved_core:
- order operation identity
- existing business flow role
- existing architecture layers
- existing ERP and adjacent flow direction
- existing platform direction

added_in_this_bundle:
- competitive positioning note
- order lifecycle fulfillment control architecture
- approval fulfillment exception architecture
- order execution timeline model
- order cockpit exact payload
- fulfillment exception review exact payload
- order cockpit interface note
- fulfillment control implementation guide

why_this_bundle:
- existing OrderFlow design already had strong order handling
- what was less explicit was the lifecycle-control layer above raw order processing
- this bundle makes the app more implementation-ready without rewriting its base

recommended_next_step:
- proceed to Phase A entry documents for execution timeline, DDL, DTO freeze,
  and slice-based execution planning

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/900410_ORDERFLOW_20260416_DIFF_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/900420_ORDERFLOW_20260416_BUNDLE02_PHASE_A_AUDIT_NOTE.md -->
# ============================================================
# ORDERFLOW 20260416 BUNDLE02 PHASE A AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: OrderFlow
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: bundle02-phase-a-audit

purpose:
Records the second reinforcement bundle applied to OrderFlow,
covering Phase A entry documents and exact implementation-start
boundaries.

bundle02_contents:
- 020.architecture/021140_ORDERFLOW_PHASE_A_EXECUTION_TIMELINE_DDL_ADDITIVE_PLAN.md
- 060.integration/060320_ORDERFLOW_PHASE_A_API_STARTER.md
- 060.integration/060330_ORDERFLOW_PHASE_A_API_DTO_FIELD_FREEZE.md
- 120.implementation/120310_ORDERFLOW_PHASE_A_EXECUTION_TIMELINE_IMPLEMENTATION_SKELETON.md

result:
- Phase A DDL direction fixed
- Phase A endpoint set fixed
- API DTO field set frozen
- implementation skeleton fixed
- OrderFlow now has the same kind of Phase A entry footing
  that made the previous apps easier to continue in bundled form

recommended_next_step:
- proceed to bundle_03 for stub file plan, module task breakdown, and content order

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/900420_ORDERFLOW_20260416_BUNDLE02_PHASE_A_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/900430_ORDERFLOW_20260416_BUNDLE03_STUB_AUDIT_NOTE.md -->
# ============================================================
# ORDERFLOW 20260416 BUNDLE03 STUB AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: OrderFlow
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: bundle03-stub-audit

purpose:
Records the third reinforcement bundle applied to OrderFlow,
covering the stub planning boundary for Phase A.

bundle03_contents:
- 120.implementation/120320_ORDERFLOW_PHASE_A_STUB_FILE_PLAN.md
- 120.implementation/120330_ORDERFLOW_PHASE_A_MODULE_TASK_BREAKDOWN.md
- 120.implementation/120340_ORDERFLOW_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md

result:
- stub file boundary fixed
- module task order fixed
- exact stub content order fixed
- OrderFlow now has a bundled Phase A planning posture
  similar to the previously completed apps before command-pack generation

recommended_next_step:
- proceed to bundle_04 for command packs, field-fill plans, and closure

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/900430_ORDERFLOW_20260416_BUNDLE03_STUB_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/900440_ORDERFLOW_20260416_BUNDLE04_CLOSEOUT_AUDIT_NOTE.md -->
# ============================================================
# ORDERFLOW 20260416 BUNDLE04 CLOSEOUT AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: OrderFlow
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: bundle04-closeout-audit

purpose:
Records the fourth reinforcement bundle applied to OrderFlow,
closing the Phase A planning layer at an implementation-ready state.

bundle04_contents:
- 120.implementation/120350_ORDERFLOW_PHASE_A_SLICE_COMMAND_PACKS.md
- 120.implementation/120360_ORDERFLOW_PHASE_A_SLICE_FIELD_FILL_PLAN.md
- 120.implementation/120370_ORDERFLOW_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md
- 120.implementation/120380_ORDERFLOW_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md

result:
- slice command packs fixed
- field-fill plan fixed
- implementation-ready completion declared
- execution entry protocol fixed
- OrderFlow planning can stop here cleanly unless execution begins or contradiction appears

readiness_statement:
- differential reinforcement completed
- Phase A entry completed
- stub planning completed
- command-pack and field-fill planning completed
- implementation-ready design status achieved

recommended_default_after_closure:
- do not add more micro design memos unless a contradiction is found
- if work resumes, start from the execution entry protocol
- later execution should follow slice order only

final_assessment:
- OrderFlow moved from reinforcement into implementation-ready
  Phase A design closure successfully.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/900440_ORDERFLOW_20260416_BUNDLE04_CLOSEOUT_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/900450_ORDERFLOW_NEXT_APP_TRANSITION_HANDOFF.md -->
# ============================================================
# ORDERFLOW NEXT APP TRANSITION HANDOFF
# ============================================================

status: canonical
layer: meta
system: applications
application: OrderFlow
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: next-app-transition-handoff

purpose:
Closes the current OrderFlow planning stream cleanly and makes it
easy to move to the next BusinessOS application without reopening
already-settled OrderFlow planning questions.

current_status_summary:
- differential reinforcement completed
- bundle_01 completed
- bundle_02 Phase A entry completed
- bundle_03 stub planning completed
- bundle_04 closeout completed
- implementation-ready completion memo completed
- execution entry protocol completed

what_should_not_be_reopened_by_default:
- order lifecycle and fulfillment control direction
- approval, blocker, and downstream handoff visibility direction
- order cockpit as an operational control surface
- separation of raw order detail and execution readiness rollup
- exact payload freeze direction
- slice-based execution order
- additive-only Phase A direction

what_is_safe_to_defer:
- actual Java stub generation
- actual SQL apply
- runtime framework detail lock
- client implementation
- approval action execution
- shipment release execution
- downstream handoff execution
- operational rollout planning

recommended_default_next_move:
- move to the next BusinessOS application using the same bundled
  differential reinforcement pattern
- do not continue creating micro-memos for OrderFlow unless
  contradiction, failure recovery, or explicit execution start appears

if_execution_is_later_requested:
- start from the Phase A execution entry protocol
- do not skip directly to later slices
- do not execute SQL before review
- use slice command packs as the only sequence authority

handoff_statement:
- OrderFlow can now be treated as planning-closed and
  next-app-transition-ready.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/900450_ORDERFLOW_NEXT_APP_TRANSITION_HANDOFF.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/900460_ORDERFLOW_REUSABLE_PHASEA_REINFORCEMENT_RECIPE.md -->
# ============================================================
# ORDERFLOW REUSABLE PHASEA REINFORCEMENT RECIPE
# ============================================================

status: canonical
layer: meta
system: applications
application: OrderFlow
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: reusable-phasea-reinforcement-recipe

purpose:
Captures the reusable reinforcement recipe proven during the
OrderFlow planning work so the next BusinessOS app can be
advanced faster and with fewer unnecessary micro-iterations.

recommended_reuse_sequence:
- step_01:
  - preserve the app core idea instead of rewriting by default
- step_02:
  - identify the real differentiator and make it explicit
- step_03:
  - add missing architecture notes only for that differentiator
- step_04:
  - add exact payload or model documents only where ambiguity blocks implementation
- step_05:
  - add interface notes only where the new behavior becomes visible
- step_06:
  - add implementation guide and diff audit memo
- step_07:
  - reflect the result in 000_BUSINESS_APP_LEDGER.md
- step_08:
  - move to Phase A entry documents only after the diff layer is coherent
- step_09:
  - freeze DDL, DTO, stub boundaries, and slice order
- step_10:
  - close with implementation-ready and transition-ready memos

what_worked_well_here:
- additive-only reinforcement
- differentiator-first architecture completion
- freezing DDL and DTO before generation
- using slice order instead of all-at-once generation
- closing planning once implementation-ready status was reached

what_to_avoid_next_time:
- reopening stable core text too early
- jumping to implementation before exact payload and row-family clarity
- continuing micro-memos after bundled planning is already stable
- mixing audit concerns into mutation planning
- mixing operational rollup state with raw order detail state

default_bundle_strategy_for_next_app:
- bundle_01:
  - diff reinforcement plus audit
- bundle_02:
  - Phase A entry plus DDL plus DTO freeze
- bundle_03:
  - stub plan plus module tasks plus content order
- bundle_04:
  - command packs plus field-fill plans plus closure

success_definition_for_next_app:
- the next app reaches implementation-ready planning state
- the BusinessOS ledger reflects the new status
- the app can move to execution later without rediscovering core design intent

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/900460_ORDERFLOW_REUSABLE_PHASEA_REINFORCEMENT_RECIPE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/900470_ORDERFLOW_PLANNING_STOP_RULE_NOTE.md -->
# ============================================================
# ORDERFLOW PLANNING STOP RULE NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: OrderFlow
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: planning-stop-rule-note

purpose:
Defines the stop rule for the OrderFlow planning layer so that
the project does not continue adding design documents without need.

default_stop_rule:
- stop adding planning artifacts once implementation-ready status,
  execution entry protocol, and transition handoff are all present

allowed_reopen_cases:
- contradiction between frozen DTOs and row-family direction
- contradiction between slice command packs and field-fill plans
- material mismatch with existing physical schema core
- explicit request to start runtime generation
- explicit request to execute SQL after review
- failure recovery after a broken or invalid generated artifact

not_enough_reason_to_reopen:
- preference for more wording
- preference for additional micro-notes
- desire to restate already frozen boundaries
- desire to re-explain the same slice order

default_action_after_stop_rule:
- either begin actual generation using the execution entry protocol
- or move to the next BusinessOS application

closure_statement:
- OrderFlow planning should now be considered complete by default.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/OrderFlow/900.meta/900470_ORDERFLOW_PLANNING_STOP_RULE_NOTE.md -->
