# ============================================================
# ESTIMATE CREATOR INDEX
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# ROOT
- 00_ESTIMATE_CREATOR_INTEGRATED.md

# ============================================================

- 000_ESTIMATE_CREATOR_OVERVIEW.md
- 000_ESTIMATE_CREATOR_INDEX.md

# ============================================================
# LAYERS
# ============================================================

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
- 900.meta

# ============================================================
# PRIMARY DESIGN FOCUS
# ============================================================

EstimateCreator formally defines:

- rough estimate creation
- local formal usage exception
- offline drafting and sync
- app-internal sharing for estimate-related objects
- ERP rough estimate publication
- latest inventory reference integration
- premium feature gating



- 030420_ESTIMATE_DELIVERY_RECORD_MODEL.md
- 030430_ESTIMATE_SHARE_LINK_RECORD_MODEL.md
- 030440_ESTIMATE_OPEN_LOG_RECORD_MODEL.md
- 030450_ESTIMATE_CUSTOMER_RESPONSE_RECORD_MODEL.md
- 030460_ESTIMATE_TEMPLATE_LOCALE_VARIANT_MODEL.md
- 030470_ESTIMATE_TEMPLATE_INDUSTRY_CATEGORY_MODEL.md
- 030480_ESTIMATE_PROPOSAL_SUMMARY_TEMPLATE_MODEL.md
- 030490_CUSTOMER_PREFERRED_LOCALE_RECORD_MODEL.md
- 030500_CUSTOMER_PREFERRED_CURRENCY_RECORD_MODEL.md
- 050190_ESTIMATE_CUSTOMER_DELIVERY_FLOW.md
- 060270_ESTIMATE_LOCALE_MULTICURRENCY_CONTRACT.md
- 060280_ESTIMATE_CUSTOMER_DELIVERY_CONTRACT.md
- 060290_ESTIMATE_DELIVERY_LOCALE_EXACT_PAYLOAD_CONTRACT.md
- 080220_ESTIMATE_CUSTOMER_DELIVERY_POLICY.md
- 080230_ESTIMATE_LOCALE_POLICY.md
- 090280_ESTIMATE_CUSTOMER_DELIVERY_INTERFACE.md
- 090290_ESTIMATE_LOCALE_INTERFACE.md
- 120320_ESTIMATE_LOCALE_IMPLEMENTATION_GUIDE.md
- 120330_ESTIMATE_CUSTOMER_DELIVERY_IMPLEMENTATION_GUIDE.md
- 120340_ESTIMATE_DELIVERY_LOCALE_IMPLEMENTATION_GUIDE.md
- 900370_ESTIMATE_MULTILINGUAL_DELIVERY_META_NOTE.md
- 900380_ESTIMATE_DELIVERY_LOCALE_META_NOTE.md



- 030510_ESTIMATE_PERMISSION_SCOPE_MODEL.md
- 030520_ESTIMATE_REVISION_SNAPSHOT_MODEL.md
- 030530_ESTIMATE_DELIVERY_ARTIFACT_MODEL.md
- 030540_ESTIMATE_DELIVERY_STATE_TRANSITION_MODEL.md
- 030550_ESTIMATE_CUSTOMER_RESPONSE_BASIS_MODEL.md
- 040170_ESTIMATE_PERMISSION_RUNTIME.md
- 050220_ESTIMATE_PERMISSION_EVALUATION_FLOW.md
- 050230_ESTIMATE_REVISION_DELIVERY_AUDIT_FLOW.md
- 060300_ESTIMATE_DELIVERY_STATE_EXACT_CONTRACT.md
- 080240_ESTIMATE_PERMISSION_POLICY.md
- 080250_ESTIMATE_REVISION_AUDIT_POLICY.md
- 080260_ESTIMATE_DELIVERY_STATE_POLICY.md
- 090300_ESTIMATE_PERMISSION_INTERFACE.md
- 090310_ESTIMATE_REVISION_HISTORY_INTERFACE.md
- 090320_ESTIMATE_DELIVERY_HISTORY_DETAIL_INTERFACE.md
- 120350_ESTIMATE_PLATFORM_DEVICE_IMPLEMENTATION_GUIDE.md
- 120360_ESTIMATE_PERMISSION_IMPLEMENTATION_GUIDE.md
- 120380_ESTIMATE_REVISION_SNAPSHOT_IMPLEMENTATION_GUIDE.md
- 120390_ESTIMATE_DELIVERY_AUDIT_IMPLEMENTATION_GUIDE.md
- 120400_ESTIMATE_DELIVERY_STATE_IMPLEMENTATION_GUIDE.md
- 900390_ESTIMATE_PLATFORM_DEVICE_META_NOTE.md
- 900410_ESTIMATE_PERMISSION_META_NOTE.md
- 900420_ESTIMATE_REVISION_DELIVERY_META_NOTE.md
- 900430_ESTIMATE_DELIVERY_STATE_META_NOTE.md

# ============================================================
# ESTIMATE CREATOR OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

EstimateCreator is a BusinessOS application for
rough estimate creation,
sales opportunity support,
offline field use,
shared collaboration inside BusinessOS,
and ERP-connected approval/publication.

EstimateCreator is not the primary ERP itself.

Its primary role is:

- create rough estimates quickly
- support sales activities in the field
- allow offline drafting and later sync
- share estimate-related content with preconfigured users
- send approved rough estimates to ERP through shared BusinessOS publication capability
- optionally allow local formal usage when business operation requires it

# ============================================================
# 2. CORE POSITIONING
# ============================================================

EstimateCreator is positioned as:

BusinessOS-side simplified ERP front application.

Primary principle:

- rough estimate is the default
- formal estimate source of truth is normally ERP
- local formal usage is allowed only as an operational exception
- ERP publication is handled through shared BusinessOS capability
- sharing / sync / ERP publication follow the same common pattern as NameCardManager

# ============================================================
# 3. PRIMARY OBJECTS
# ============================================================

EstimateCreator handles the following primary objects:

- rough estimate
- estimate line item
- opportunity memo
- meeting memo
- estimate approval state
- estimate ERP publication request/result
- estimate share target
- estimate sync state
- estimate pending operation
- estimate inventory reference result

# ============================================================
# 4. SHAREABLE OBJECTS
# ============================================================

Objects shareable inside BusinessOS application scope:

- opportunity memo
- meeting memo
- rough estimate

Sharing is limited to preconfigured users
using the same common sharing pattern as NameCardManager.

# ============================================================
# 5. ERP RELATION
# ============================================================

EstimateCreator does not directly implement
full ERP-native authoritative estimate issuance.

Instead it supports:

- approval preparation
- rough estimate publication request
- ERP publication result tracking
- latest inventory reference inquiry
- simplified ERP-compatible input

ERP publication classification:

- rough_estimate

# ============================================================
# 6. OFFLINE POSITION
# ============================================================

EstimateCreator supports offline usage for field work.

Allowed offline:

- login with valid cached auth context
- draft creation
- memo editing
- line editing
- template usage from local cache
- local queueing of sync/share/publication preparation

Not allowed offline:

- live ERP publication execution
- live latest inventory confirmation
- final approval execution requiring server truth
- contract/license refresh

# ============================================================
# 7. PREMIUM FEATURES
# ============================================================

Paid option price:
500 JPY

Premium features:

- structured meeting note format
- QA management
- estimate templates
- app default template expansion
- user preregistered reusable templates

# ============================================================
# 8. COMMON CAPABILITIES
# ============================================================

EstimateCreator reuses common BusinessOS capabilities for:

- user-target sharing
- online synchronization
- pending operation replay
- ERP publication
- audit/history handling style alignment
- shared state/status conventions

# ============================================================
# 9. DESIGN CONCLUSION
# ============================================================

EstimateCreator is an independent application under 07.applications.

It provides a fast, shareable, offline-capable rough estimate workflow,
while preserving the principle that authoritative formal estimate issuance
normally belongs to ERP.


# ============================================================
# DUAL ENTRY AND SHARED AUTH CONTEXT
# ============================================================

EstimateCreator supports both:

- standalone launch
- deeplink launch

These are equally valid primary entry paths.

Authentication behavior differs by entry path:

- standalone launch uses EstimateCreator login entry
- deeplink launch reuses authenticated BusinessOS session context
  from the calling application and does not require redundant login
  when that shared session is valid

Deeplink launch must not bypass:

- session validation
- authorization checks
- company/workspace context validation
- premium entitlement checks where required

Deeplink must not carry raw credentials as business parameters.


# ============================================================
# MULTILINGUAL / MULTICURRENCY / CUSTOMER DELIVERY EXTENSION
# ============================================================

EstimateCreator additionally supports:

- multilingual UI
- locale-aware customer delivery output
- multicurrency display support
- customer preferred locale
- customer preferred currency
- estimate delivery actions
- readonly customer delivery link
- proposal history
- customer response recording
- delivery/open badges and logs

These capabilities strengthen EstimateCreator
without turning it into a full customer portal or CPQ system.


# ============================================================
# CUSTOMER DELIVERY / TEMPLATE / LOCALE STRENGTHENING SUMMARY
# ============================================================

EstimateCreator is additionally strengthened by:

- multilingual UI
- customer preferred locale
- customer preferred currency
- locale-aware output
- PDF export
- email send
- readonly customer delivery link
- delivery history
- open log tracking
- manual customer response recording
- locale-specific templates
- industry-specific templates
- proposal summary templates
- business delivery/open/status badges


# ============================================================
# IOS / ANDROID / TABLET SUPPORT
# ============================================================

EstimateCreator officially supports:

- iPhone
- Android phone
- iPad / iOS tablet
- Android tablet

Business rules, payloads, and state semantics remain shared.

Only device presentation and interaction density
may differ between phone and tablet surfaces.



# ============================================================
# PERMISSION / REVISION / DELIVERY TRACEABILITY STRENGTHENING
# ============================================================

EstimateCreator is additionally strengthened by:

- explicit permission scope modeling
- readonly customer-view boundary
- revision snapshots
- delivery artifacts
- delivery state transitions
- response-basis traceability
- resend-safe delivery audit history
- phone / tablet platform support discipline

# ============================================================
# ESTIMATE CREATOR CONSTITUTION
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CONSTITUTIONAL ROLE
# ============================================================

EstimateCreator is a BusinessOS application for
rough estimate creation and estimate-related collaboration.

EstimateCreator is not the default authoritative ERP estimate issuer.

# ============================================================
# 2. DEFAULT ESTIMATE CLASS
# ============================================================

The default class of an EstimateCreator estimate is:

- rough_estimate

This classification must remain explicit in model,
runtime, integration, and interface.

# ============================================================
# 3. FORMAL ESTIMATE PRINCIPLE
# ============================================================

The normal authoritative formal estimate
must be created and governed in ERP.

EstimateCreator may allow local formal usage
only as an operational exception.

When local formal usage is allowed,
auditability, revision traceability,
and approval visibility are mandatory.

# ============================================================
# 4. ERP PUBLICATION PRINCIPLE
# ============================================================

EstimateCreator must not own direct ERP-authoritative issuance logic
as its private isolated mechanism.

ERP publication must be performed through
shared BusinessOS publication capability.

EstimateCreator may prepare and submit publication requests,
but publication execution authority belongs to the shared publication path.

# ============================================================
# 5. SHARING PRINCIPLE
# ============================================================

EstimateCreator supports app-internal sharing
only to preconfigured users.

Shareable objects are limited to:

- opportunity memo
- meeting memo
- rough estimate

Unbounded public sharing is prohibited.

# ============================================================
# 6. OFFLINE PRINCIPLE
# ============================================================

Offline usage is allowed for drafting and preparation.

Offline usage must never silently create false authority.

Therefore offline mode may support:

- draft creation
- local editing
- local queueing
- local cache reading

Offline mode must not silently claim completion for:

- live approval
- live ERP publication
- live latest inventory truth confirmation

# ============================================================
# 7. INVENTORY REFERENCE PRINCIPLE
# ============================================================

Inventory information displayed by EstimateCreator
is reference information only.

The final authoritative inventory truth remains outside EstimateCreator
and must be obtained from the connected ERP authority.

# ============================================================
# 8. PREMIUM FEATURE PRINCIPLE
# ============================================================

Premium features are optional business enhancements,
not architectural forks.

Premium features must remain gated additions
on top of the same canonical application model.

Premium features include:

- structured meeting note format
- QA management
- estimate templates

# ============================================================
# 9. AUDIT PRINCIPLE
# ============================================================

The application must preserve auditable records for:

- estimate creation
- estimate modification
- memo modification
- share actions
- approval-related actions
- ERP publication actions
- sync actions
- premium feature related business actions where applicable

# ============================================================
# 10. FAIL CLOSED PRINCIPLE
# ============================================================

Whenever EstimateCreator cannot verify required authority,
required freshness,
required identity,
or required online confirmation,
it must fail closed.


# ============================================================
# 11. ENTRY PATH CONSTITUTION
# ============================================================

EstimateCreator supports the following equally valid primary entry paths:

- standalone launch
- deeplink launch

Neither entry path is subordinate in constitutional status.

# ============================================================
# 12. SHARED AUTH CONTEXT CONSTITUTION
# ============================================================

Standalone launch uses the application login entry.

Deeplink launch may skip redundant login UI
only when authenticated BusinessOS session context
from the calling application is valid and reusable.

This shared-session reuse must not bypass
authorization, visibility, approval,
publication, or premium entitlement checks.

# ============================================================
# 13. DEEPLINK SAFETY CONSTITUTION
# ============================================================

Deeplink parameters may provide launch context,
but must not be treated as authority by themselves.

Raw credentials must not be transported as deeplink business parameters.

If shared session context is missing, expired, or invalid,
the application must safely fall back to login
or fail closed according to policy.

# ============================================================
# ESTIMATE CREATOR CONSTITUTION INDEX
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

- 010_OVERVIEW.md
- 010_INDEX.md
- 010_ESTIMATE_CREATOR_CONSTITUTION.md

# ============================================================
# ESTIMATE CREATOR CONSTITUTION OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator Constitution defines the non-negotiable
principles of the application.

These principles control:

- what EstimateCreator is
- what EstimateCreator is not
- what is allowed to become authoritative
- what must remain under ERP authority
- how offline, sharing, and ERP publication are bounded

# ============================================================
# ESTIMATE CREATOR SHARED ERP PUBLICATION ARCHITECTURE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines how EstimateCreator publishes estimate-related data
to ERP through the shared BusinessOS publication path.

# ============================================================
# 2. PRINCIPLE
# ============================================================

EstimateCreator must not directly behave as a private ERP publication engine.

Instead:

- EstimateCreator creates publication-ready payload intent
- shared BusinessOS publication capability receives the request
- publication execution occurs in the shared path
- execution result is returned back to EstimateCreator state

# ============================================================
# 3. PRIMARY PUBLICATION OBJECT
# ============================================================

Primary ERP publication object:

- rough estimate

Secondary supporting objects may be attached when policy allows:

- opportunity memo summary
- meeting memo summary

# ============================================================
# 4. REQUIRED PUBLICATION ATTRIBUTES
# ============================================================

Publication requests must carry explicit metadata including:

- source_system = business_os
- source_app = estimate_creator
- estimate_class = rough_estimate
- revision reference
- requesting user context
- company context
- approval-related state when required

# ============================================================
# 5. RESULT HANDLING
# ============================================================

EstimateCreator must persist publication result state separately from
local draft state.

Typical result states include:

- publication_pending
- publication_accepted
- publication_rejected
- publication_failed

# ============================================================
# 6. OFFLINE RESTRICTION
# ============================================================

Offline mode may prepare publication intent,
but must not mark ERP publication as completed.

# ============================================================
# ESTIMATE CREATOR ARCHITECTURE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. ARCHITECTURAL POSITION
# ============================================================

EstimateCreator is an application-layer business tool
under 07.applications.

It is built from:

- application-specific business objects
- shared BusinessOS collaboration capabilities
- shared BusinessOS synchronization capabilities
- shared BusinessOS ERP publication capabilities
- ERP-side authoritative services for inventory and approval-linked publication outcomes

# ============================================================
# 2. MAJOR COMPONENTS
# ============================================================

EstimateCreator consists of the following major components:

1. Login and Local Auth Context
2. Estimate Workspace
3. Opportunity Memo Workspace
4. Meeting Memo Workspace
5. Estimate Pricing Workspace
6. Share Target Selector
7. Local Protected Storage
8. Sync Coordinator Adapter
9. ERP Publication Request Adapter
10. Inventory Reference Adapter
11. Premium Feature Gate
12. Audit / History Recorder

# ============================================================
# 3. COMMON CAPABILITY DEPENDENCIES
# ============================================================

EstimateCreator depends on BusinessOS common capabilities for:

- user-target sharing
- online sync
- pending operation replay
- ERP publication execution path
- shared status conventions
- relationship visibility conventions

These common capabilities must be reused rather than reimplemented privately.

# ============================================================
# 4. LOCAL OWNED BUSINESS DOMAIN
# ============================================================

EstimateCreator owns local business behavior for:

- estimate drafting
- line item editing
- memo creation
- memo editing
- local revision preparation
- estimate presentation
- premium template usage
- QA handling
- estimate-to-publication request preparation

# ============================================================
# 5. NON-OWNED AUTHORITATIVE DOMAINS
# ============================================================

EstimateCreator does not own authoritative truth for:

- ERP final formal estimate authority
- ERP final inventory truth
- ERP enterprise workflow source of truth
- global publication infrastructure
- enterprise-wide unrestricted sharing

# ============================================================
# 6. OFFLINE ARCHITECTURE
# ============================================================

Offline operation is enabled through:

- local protected storage
- cached auth context
- cached catalog data
- pending operation queue
- later sync replay

Offline mode is a preparation mode,
not a final authoritative completion mode.

# ============================================================
# 7. PREMIUM FEATURE PLACEMENT
# ============================================================

Premium feature logic is placed as gated capability
within the same canonical application structure.

Premium feature gate applies to:

- structured meeting note features
- QA management
- reusable estimate templates

Premium gating must not fork canonical data authority rules.

# ============================================================
# 8. ARCHITECTURAL CONCLUSION
# ============================================================

EstimateCreator architecture is defined as:

application-specific estimate workflow
plus common BusinessOS sharing / sync / ERP publication capabilities
plus ERP-referenced external authority for authoritative outcomes.


# ============================================================
# 9. ENTRY ARCHITECTURE
# ============================================================

EstimateCreator architecture supports two first-class entry paths:

1. Standalone Entry
2. Deeplink Entry

These entry paths converge into shared canonical workspace logic.

# ============================================================
# 10. SHARED AUTH COMPONENTS
# ============================================================

The architecture includes the following entry-related components:

- Standalone Entry
- Deeplink Entry
- Shared Auth Context Receiver
- Launch Context Resolver
- Session Validation Adapter
- Unified Workspace Router

# ============================================================
# 11. ENTRY BEHAVIOR
# ============================================================

Standalone Entry flow:

- app launch
- login entry
- session establishment
- workspace routing

Deeplink Entry flow:

- deeplink receive
- shared auth context resolve
- session validation
- launch context resolution
- workspace routing

The deeplink path must not directly bypass shared validation components.


# ============================================================
# DEVICE ARCHITECTURE
# ============================================================

EstimateCreator architecture supports:

- iOS runtime
- Android runtime
- phone presentation
- tablet presentation

Device-specific UI adaptation must not fork
business meaning, payload contract, or state model.

Phone and tablet must share the same canonical business logic.

# ============================================================
# ESTIMATE CREATOR ARCHITECTURE INDEX
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

- 020_OVERVIEW.md
- 020_INDEX.md
- 020_ESTIMATE_CREATOR_ARCHITECTURE.md
- 020110_SHARED_ERP_PUBLICATION_ARCHITECTURE.md

# ============================================================
# ESTIMATE CREATOR ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator Architecture defines the structural decomposition
of the application and its common capability dependencies.

It clarifies:

- local business objects
- common BusinessOS dependencies
- ERP publication path usage
- offline and sync boundaries
- premium feature gate placement

# ============================================================
# ESTIMATE RECORD MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_record is the central business object of EstimateCreator.

Its default role is to represent a rough estimate
created inside BusinessOS for fast field usage,
later sharing,
later synchronization,
and optional ERP publication preparation.

The record may also be used for local formal estimate handling
only when operation explicitly permits it.

# ============================================================
# 2. CORE POSITION
# ============================================================

estimate_record is the parent object for:

- estimate_line_item
- opportunity_memo linkage
- meeting_memo linkage
- inventory reference linkage
- QA linkage
- publication linkage
- sync state linkage
- audit/history linkage

It must remain the single canonical estimate header object inside the app.

# ============================================================
# 3. REQUIRED FIELDS
# ============================================================

- estimate_id
- workspace_id
- company_id
- estimate_number
- estimate_class
- title
- customer_id
- customer_name_snapshot
- customer_contact_name_snapshot
- currency_code
- issue_date
- valid_until
- subtotal_amount
- tax_amount
- total_amount
- estimate_status
- approval_state
- publication_state
- sync_state
- share_state
- current_revision_no
- is_local_formal_use
- created_by
- created_at
- updated_by
- updated_at
- is_deleted

# ============================================================
# 4. ESTIMATE CLASS
# ============================================================

Supported estimate_class values:

- rough_estimate
- local_formal_estimate

Default value:

- rough_estimate

rough_estimate is the normal class used by the application.

local_formal_estimate is exceptional and must remain explicit.

# ============================================================
# 5. ESTIMATE STATUS
# ============================================================

Representative estimate_status values:

- draft
- review_ready
- publication_ready
- archived

estimate_status is local business workflow status.

It must not be used as a replacement for approval_state,
publication_state,
or sync_state.

# ============================================================
# 6. APPROVAL STATE
# ============================================================

Representative approval_state values:

- not_required
- not_requested
- approval_pending
- approved
- rejected

approval_state tracks approval-related business meaning only.

It must remain separate from publication_state.

# ============================================================
# 7. PUBLICATION STATE
# ============================================================

Representative publication_state values:

- not_requested
- publication_prepared
- publication_pending
- publication_completed
- publication_rejected
- publication_failed

This field tracks ERP publication progression only.

# ============================================================
# 8. SYNC STATE
# ============================================================

Representative sync_state values:

- local_only
- pending_push
- synced
- conflict
- failed

This field tracks synchronization state only.

# ============================================================
# 9. SHARE STATE
# ============================================================

Representative share_state values:

- private
- shared_in_app
- share_pending
- share_revoked

Share state covers app-internal sharing only.

It does not replace publication_state.

# ============================================================
# 10. AMOUNT RULES
# ============================================================

subtotal_amount,
tax_amount,
and total_amount
must reflect the current effective revision snapshot.

The record may keep only summary amounts;
detailed amount construction belongs to line items
and pricing calculation behavior.

# ============================================================
# 11. SNAPSHOT FIELDS
# ============================================================

customer-related snapshot fields are required
so the estimate remains readable
even if upstream reference labels later change.

Representative snapshot fields:

- customer_name_snapshot
- customer_contact_name_snapshot

Snapshot fields improve auditability and export consistency.

# ============================================================
# 12. DELETION RULE
# ============================================================

Hard deletion should be avoided where audit preservation is required.

Use is_deleted for safe removal semantics
unless stronger archival policy is defined elsewhere.

# ============================================================
# ESTIMATE LINE ITEM MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_line_item represents one priced line
inside an estimate.

It is the detailed pricing unit of the application.

# ============================================================
# 2. CORE POSITION
# ============================================================

estimate_line_item belongs to exactly one estimate revision context.

Line items drive:

- subtotal calculation
- tax calculation
- total calculation
- inventory reference context
- template application materialization

# ============================================================
# 3. REQUIRED FIELDS
# ============================================================

- line_item_id
- estimate_id
- revision_no
- line_no
- item_type
- item_code
- item_name
- description
- quantity
- unit_name
- unit_price
- discount_type
- discount_value
- tax_category
- tax_rate_snapshot
- line_subtotal
- line_tax_amount
- line_total
- inventory_reference_state
- inventory_reference_value
- sort_order
- created_at
- updated_at
- is_deleted

# ============================================================
# 4. ITEM TYPE
# ============================================================

Representative item_type values:

- product
- service
- misc

The model must not assume all lines are stockable goods.

# ============================================================
# 5. DISCOUNT RULE
# ============================================================

discount_type may include:

- none
- percent
- fixed_amount

discount_value interpretation depends on discount_type
and must be runtime-deterministic.

# ============================================================
# 6. TAX RULE
# ============================================================

tax_category and tax_rate_snapshot
must preserve the effective tax interpretation
used at estimate calculation time.

The model must not require future re-derivation
from unknown external defaults.

# ============================================================
# 7. INVENTORY REFERENCE FIELDS
# ============================================================

inventory_reference_state and inventory_reference_value
are support fields only.

They are reference-derived
and must not be treated as authoritative inventory reservation.

Representative inventory_reference_state values:

- none
- cached
- fresh
- stale
- failed

# ============================================================
# 8. SORTING RULE
# ============================================================

sort_order controls visual ordering.

line_no is the semantic line identity within a revision,
while sort_order may support UI rearrangement.

# ============================================================
# ESTIMATE OPPORTUNITY MEMO MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

opportunity_memo stores free-form sales opportunity notes
related to estimate work.

This object supports lightweight deal capture
without requiring rigid formatting.

# ============================================================
# 2. CORE ROLE
# ============================================================

opportunity_memo is intended for:

- meeting summaries
- customer requests
- sales notes
- next action reminders
- negotiation context

It is shareable through app-internal sharing.

# ============================================================
# 3. REQUIRED FIELDS
# ============================================================

- opportunity_memo_id
- estimate_id
- customer_id
- memo_text
- share_state
- sync_state
- created_by
- created_at
- updated_by
- updated_at
- is_deleted

# ============================================================
# 4. CONTENT RULE
# ============================================================

memo_text is intentionally free-form.

No fixed format is required in the standard mode.

# ============================================================
# 5. SHARE RULE
# ============================================================

Shareable to preconfigured users only.

Representative share_state values:

- private
- share_pending
- shared_in_app
- share_revoked

# ============================================================
# 6. SYNC RULE
# ============================================================

Representative sync_state values:

- local_only
- pending_push
- synced
- conflict
- failed

# ============================================================
# ESTIMATE SHARE TARGET MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_share_target defines a preconfigured user
who may receive app-internal shared content.

This model should align with the same common concept
used by NameCardManager.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- share_target_id
- owner_user_id
- target_user_id
- target_display_name
- target_scope
- is_enabled
- created_at
- updated_at

# ============================================================
# 3. TARGET SCOPE
# ============================================================

Representative target_scope values:

- businessos_user
- team_user
- company_user

Actual allowed scope must remain bounded by BusinessOS policy.

# ============================================================
# 4. ENABLEMENT RULE
# ============================================================

Only enabled targets may be selected in share actions.

Disabled targets remain historically meaningful
but should not be offered for new share requests.

# ============================================================
# ESTIMATE ERP PUBLISH SETTING MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_erp_publish_setting stores publication-related configuration
used when EstimateCreator prepares ERP publication requests.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- publish_setting_id
- owner_scope_type
- owner_scope_id
- company_id
- publication_channel
- is_enabled
- require_approval_before_publication
- payload_profile_code
- created_at
- updated_at

# ============================================================
# 3. OWNER SCOPE
# ============================================================

Representative owner_scope_type values:

- application
- workspace
- user

# ============================================================
# 4. CHANNEL RULE
# ============================================================

publication_channel identifies the shared BusinessOS publication route
or publication profile expected by the app.

EstimateCreator must not treat this model
as a private direct ERP credential source.

# ============================================================
# ESTIMATE SYNC STATE MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_sync_state stores synchronization status
for a local business object.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- sync_state_id
- object_type
- object_id
- local_version
- remote_version
- sync_status
- last_sync_at
- last_sync_result
- conflict_state
- pending_operation_count
- updated_at

# ============================================================
# 3. OBJECT TYPES
# ============================================================

Representative object_type values:

- estimate_record
- estimate_line_item
- opportunity_memo
- meeting_memo
- qa_record
- template_record

# ============================================================
# 4. SYNC STATUS
# ============================================================

Representative sync_status values:

- local_only
- pending_push
- synced
- conflict
- failed

# ============================================================
# 5. CONFLICT STATE
# ============================================================

Representative conflict_state values:

- none
- local_remote_diverged
- remote_deleted
- publication_overlap
- share_overlap

# ============================================================
# ESTIMATE PENDING OPERATION MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_pending_operation stores queued work
prepared locally for later online execution.

This model is critical for offline-first behavior.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- pending_operation_id
- object_type
- object_id
- operation_type
- payload_snapshot
- queue_state
- enqueue_at
- execute_after
- last_attempt_at
- attempt_count
- last_error_code

# ============================================================
# 3. OPERATION TYPES
# ============================================================

Representative operation_type values:

- sync_push
- sync_pull
- share_request
- share_revoke
- publication_prepare
- publication_request
- memo_update
- inventory_reference_request

# ============================================================
# 4. QUEUE STATE
# ============================================================

Representative queue_state values:

- queued
- running
- completed
- failed
- blocked

# ============================================================
# 5. PAYLOAD SNAPSHOT RULE
# ============================================================

payload_snapshot must preserve the intended operation data
needed for later execution or review.

It should be sufficient for deterministic retry behavior
within policy bounds.

# ============================================================
# ESTIMATE RELATIONSHIP MODEL
# ============================================================

status: draft
owner: Boss
prepared_by: Zero

# ============================================================
# ESTIMATE RELATIONSHIP VISIBILITY MODEL
# ============================================================

status: draft
owner: Boss
prepared_by: Zero

# ============================================================
# ESTIMATE API REQUEST RESPONSE MODEL
# ============================================================

status: draft
owner: Boss
prepared_by: Zero

# ============================================================
# ESTIMATE ERP PUBLICATION REQUEST MODEL
# ============================================================

status: draft
owner: Boss
prepared_by: Zero

# ============================================================
# ESTIMATE ERP PUBLICATION RESULT MODEL
# ============================================================

status: draft
owner: Boss
prepared_by: Zero

# ============================================================
# ESTIMATE AUDIT LOG MODEL
# ============================================================

status: draft
owner: Boss
prepared_by: Zero

# ============================================================
# ESTIMATE HISTORY ENTRY MODEL
# ============================================================

status: draft
owner: Boss
prepared_by: Zero

# ============================================================
# ESTIMATE APPROVAL EVENT MODEL
# ============================================================

status: draft
owner: Boss
prepared_by: Zero

# ============================================================
# ESTIMATE APPROVAL STATE TRANSITION MODEL
# ============================================================

status: draft
owner: Boss
prepared_by: Zero

# ============================================================
# ESTIMATE AUDIT ACTION CODE MODEL
# ============================================================

status: draft
owner: Boss
prepared_by: Zero

# ============================================================
# ESTIMATE ERROR CODE MODEL
# ============================================================

status: draft
owner: Boss
prepared_by: Zero

# ============================================================
# ESTIMATE UI STATE CODE MODEL
# ============================================================

status: draft
owner: Boss
prepared_by: Zero

# ============================================================
# ESTIMATE ERP PUBLICATION PAYLOAD FIELD MAP MODEL
# ============================================================

status: draft
owner: Boss
prepared_by: Zero

# ============================================================
# ESTIMATE API FIELD SCHEMA MODEL
# ============================================================

status: draft
owner: Boss
prepared_by: Zero

# ============================================================
# ESTIMATE VALIDATION CODE MODEL
# ============================================================

status: draft
owner: Boss
prepared_by: Zero

# ============================================================
# ESTIMATE UI LABEL CODE MODEL
# ============================================================

status: draft
owner: Boss
prepared_by: Zero

# ============================================================
# ESTIMATE MEETING MEMO MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_meeting_memo stores meeting notes
linked to estimate activity.

It supports both free-form standard use
and structured premium use.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- meeting_memo_id
- estimate_id
- memo_mode
- memo_text
- template_code
- is_premium_format
- share_state
- sync_state
- created_by
- created_at
- updated_by
- updated_at
- is_deleted

# ============================================================
# 3. MEMO MODE
# ============================================================

Representative memo_mode values:

- free_form
- structured

free_form is standard.

structured requires premium access.

# ============================================================
# 4. TEMPLATE CODE
# ============================================================

template_code may identify the structured meeting format
used to compose the memo.

It may be null for free_form mode.

# ============================================================
# 5. SHARE AND SYNC
# ============================================================

Meeting memo is shareable through app-internal sharing
and synchronizable like other business objects.

# ============================================================
# ESTIMATE INVENTORY CHECK MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_inventory_check stores reference lookup results
for item inventory information.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- inventory_check_id
- estimate_id
- line_item_id
- item_code
- reference_status
- available_quantity
- reserved_quantity
- inbound_quantity
- checked_at
- source_system
- is_cached
- cache_expire_at

# ============================================================
# 3. REFERENCE STATUS
# ============================================================

Representative reference_status values:

- success_fresh
- success_cached
- stale
- failed
- unknown

# ============================================================
# 4. AUTHORITY RULE
# ============================================================

This model is non-authoritative.

It stores advisory inventory information only.

# ============================================================
# 5. LINKAGE RULE
# ============================================================

An inventory check may be linked to one line item,
or in some UI cases to estimate-level exploratory lookup.

line_item_id may therefore be nullable if policy allows.

# ============================================================
# ESTIMATE TEMPLATE MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_template stores reusable estimate templates
used to accelerate estimate preparation.

This is a premium-oriented object.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- template_id
- owner_scope_type
- owner_scope_id
- template_name
- template_category
- is_app_default
- is_premium_only
- is_enabled
- created_at
- updated_at

# ============================================================
# 3. TEMPLATE CATEGORIES
# ============================================================

Representative categories:

- general_estimate
- service_estimate
- maintenance_estimate
- stock_based_estimate
- rough_only_estimate

# ============================================================
# 4. OWNERSHIP
# ============================================================

Representative owner_scope_type values:

- application_default
- workspace
- user

# ============================================================
# 5. ENABLEMENT RULE
# ============================================================

Disabled templates remain historically meaningful
but should not be available for new application actions.

# ============================================================
# ESTIMATE TEMPLATE LINE MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_template_line stores reusable line definitions
attached to an estimate template.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- template_line_id
- template_id
- line_no
- item_name
- description
- default_quantity
- default_unit_name
- default_unit_price
- default_tax_category
- sort_order

# ============================================================
# 3. ROLE
# ============================================================

These lines do not directly become authoritative estimate lines.

They are source material for draft generation
when a user applies a template.

# ============================================================
# ESTIMATE QA RECORD MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_qa_record stores question-answer items
used to track follow-up points related to an estimate.

This is a premium-oriented management object.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- qa_id
- estimate_id
- question_text
- answer_text
- qa_status
- owner_user_id
- due_date
- created_at
- updated_at

# ============================================================
# 3. STATUS
# ============================================================

Representative qa_status values:

- open
- pending
- answered
- closed

# ============================================================
# 4. ROLE
# ============================================================

QA records support:

- customer question tracking
- internal clarification tracking
- proposal open issue tracking
- approval preparation issue tracking

# ============================================================
# ESTIMATE PREMIUM FEATURE STATE MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_premium_feature_state stores effective premium capability state
for a user or broader owning scope.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- premium_state_id
- owner_scope_type
- owner_scope_id
- premium_plan_code
- is_active
- activated_at
- expired_at
- last_verified_at

# ============================================================
# 3. OWNER SCOPE
# ============================================================

Representative owner_scope_type values:

- user
- workspace
- application

# ============================================================
# 4. CONTROLLED FEATURES
# ============================================================

Premium-controlled features include:

- structured meeting note
- qa management
- estimate templates
- expanded default template access

# ============================================================
# 5. GATE RULE
# ============================================================

Unknown or inactive premium state
must fail closed for premium-only write actions.


# ============================================================
# 6. BILLING SUPPORT FIELDS
# ============================================================

Recommended billing-support fields include:

- billing_cycle_type
- plan_price_snapshot
- currency_code
- grace_until
- purchased_at
- renewed_at
- canceled_at
- downgrade_effective_at
- source_of_truth

These fields help preserve clear entitlement behavior
even when billing source of truth is external.

# ============================================================
# 7. ENTITLEMENT SEMANTICS
# ============================================================

Representative premium entitlement states:

- inactive
- active
- grace
- expired
- unknown

unknown must fail closed for premium-only write operations.


# ============================================================
# ESTIMATE LAUNCH CONTEXT MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_launch_context stores normalized entry information
used when EstimateCreator is opened either by standalone launch
or by deeplink launch.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- launch_context_id
- launch_type
- source_app
- source_screen
- launch_mode
- estimate_id
- customer_id
- opportunity_id
- draft_id
- readonly
- received_at

# ============================================================
# 3. LAUNCH TYPE
# ============================================================

Representative launch_type values:

- standalone
- deeplink

# ============================================================
# 4. ROLE
# ============================================================

This model stores invocation context only.

It must not be treated as an authorization bypass mechanism.


# ============================================================
# ESTIMATE DEEPLINK CONTEXT MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_deeplink_context stores validated deeplink parameters.

Representative fields:

- deeplink_context_id
- source_app
- source_screen
- deeplink_mode
- estimate_id
- customer_id
- opportunity_id
- draft_id
- readonly
- received_at
- validation_state

Representative validation_state values:

- received
- validated
- invalid
- rejected

Raw credentials must not be stored as deeplink business parameters.


# ============================================================
# ESTIMATE SOURCE APP RECORD MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_source_app_record stores normalized calling-application metadata
for deeplink invocation review and audit support.

Representative fields:

- source_app_record_id
- source_app
- source_screen
- source_action
- linked_launch_context_id
- created_at


# ============================================================
# ESTIMATE DELIVERY RECORD MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_delivery_record stores customer-facing estimate delivery activity.

Required fields:
- delivery_record_id
- estimate_id
- delivery_channel
- delivery_state
- delivery_locale
- delivery_currency_code
- presented_total_amount
- presented_at
- operator_user_id
- readonly_link_id
- pdf_artifact_id
- email_target
- created_at
- updated_at

Representative delivery_channel values:
- pdf_export
- email
- readonly_link

Representative delivery_state values:
- not_sent
- sent
- delivery_failed
- opened
- expired


# ============================================================
# ESTIMATE SHARE LINK RECORD MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_share_link_record stores readonly customer-facing share link state.

Required fields:
- link_id
- estimate_id
- link_state
- readonly
- expires_at
- created_at
- created_by
- latest_opened_at
- first_opened_at
- open_count

Representative link_state values:
- active
- expired
- revoked


# ============================================================
# ESTIMATE OPEN LOG RECORD MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_open_log_record stores delivery/open evidence.

Required fields:
- open_log_id
- estimate_id
- link_id
- opened_at
- viewer_type
- locale
- device_hint
- ip_hint_if_allowed
- created_at


# ============================================================
# ESTIMATE CUSTOMER RESPONSE RECORD MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_customer_response_record stores manually recorded customer response.

Required fields:
- customer_response_id
- estimate_id
- customer_response_state
- responded_at
- response_note
- recorded_by
- created_at
- updated_at

Representative customer_response_state values:
- no_response
- accepted
- revision_requested
- rejected


# ============================================================
# ESTIMATE TEMPLATE LOCALE VARIANT MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_template_locale_variant stores locale-specific template representation.

Required fields:
- template_locale_variant_id
- template_id
- locale_code
- localized_template_name
- localized_summary_text
- is_enabled
- created_at
- updated_at


# ============================================================
# ESTIMATE TEMPLATE INDUSTRY CATEGORY MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_template_industry_category stores industry classification
for template filtering.

Required fields:
- template_industry_category_id
- template_id
- industry_category_code
- created_at

Representative industry_category_code values:
- retail
- wholesale
- service
- maintenance
- software
- consulting
- manufacturing


# ============================================================
# ESTIMATE PROPOSAL SUMMARY TEMPLATE MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_proposal_summary_template stores reusable summary/conditions text.

Required fields:
- proposal_summary_template_id
- owner_scope_type
- owner_scope_id
- locale_code
- template_name
- summary_text
- is_enabled
- created_at
- updated_at


# ============================================================
# CUSTOMER PREFERRED LOCALE RECORD MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

customer_preferred_locale_record stores customer default locale preference.

Required fields:
- customer_locale_record_id
- customer_id
- preferred_locale_code
- created_at
- updated_at


# ============================================================
# CUSTOMER PREFERRED CURRENCY RECORD MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

customer_preferred_currency_record stores customer default currency preference.

Required fields:
- customer_currency_record_id
- customer_id
- preferred_currency_code
- created_at
- updated_at


# ============================================================
# ESTIMATE PERMISSION SCOPE MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_permission_scope defines who may perform
which actions on which estimate-related objects.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- permission_scope_id
- object_type
- object_id
- subject_type
- subject_id
- permission_role
- permission_state
- readonly
- created_at
- updated_at

# ============================================================
# 3. OBJECT TYPES
# ============================================================

Representative object_type values:

- estimate_record
- opportunity_memo
- meeting_memo
- estimate_delivery_record
- estimate_share_link_record
- estimate_qa_record
- estimate_template

# ============================================================
# 4. SUBJECT TYPES
# ============================================================

Representative subject_type values:

- owner_user
- shared_user
- publication_operator
- customer_link_viewer
- workspace_user

# ============================================================
# 5. PERMISSION ROLES
# ============================================================

Representative permission_role values:

- owner
- editor
- viewer
- share_target
- publication_operator
- premium_holder
- customer_readonly_viewer

# ============================================================
# 6. PERMISSION STATE
# ============================================================

Representative permission_state values:

- active
- revoked
- expired
- restricted

# ============================================================
# 7. RULE
# ============================================================

Readonly customer delivery access must map to:

- subject_type: customer_link_viewer
- permission_role: customer_readonly_viewer
- readonly: true

This role must never grant write actions.


# ============================================================
# ESTIMATE REVISION SNAPSHOT MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_revision_snapshot stores an immutable business snapshot
of an estimate at a meaningful revision point.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- revision_snapshot_id
- estimate_id
- revision_no
- snapshot_type
- estimate_header_snapshot_json
- line_item_snapshot_json
- opportunity_memo_snapshot_json
- meeting_memo_snapshot_json
- subtotal_amount
- tax_amount
- total_amount
- estimate_locale
- estimate_currency_code
- created_by
- created_at

# ============================================================
# 3. SNAPSHOT TYPES
# ============================================================

Representative snapshot_type values:

- manual_revision
- delivery_revision
- publication_revision
- customer_response_basis

# ============================================================
# 4. RULE
# ============================================================

A revision snapshot is immutable in meaning once created.

It preserves the exact estimate state
that later delivery, publication, or customer response may reference.


# ============================================================
# ESTIMATE DELIVERY ARTIFACT MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_delivery_artifact stores the concrete delivery-facing artifact
associated with a delivered estimate revision.

Required fields:
- delivery_artifact_id
- estimate_id
- revision_snapshot_id
- delivery_record_id
- artifact_type
- artifact_state
- artifact_reference_id
- locale_code
- currency_code
- created_at
- created_by

Representative artifact_type values:
- pdf
- readonly_link_payload
- email_render

Representative artifact_state values:
- prepared
- delivered
- expired
- revoked


# ============================================================
# ESTIMATE DELIVERY STATE TRANSITION MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_delivery_state_transition records explicit delivery state changes.

Required fields:
- delivery_state_transition_id
- delivery_record_id
- from_state
- to_state
- changed_at
- changed_by
- reason_code
- note

Representative from_state / to_state values:
- not_sent
- sent
- delivery_failed
- opened
- expired
- revoked

This model supports explicit auditability for customer-facing delivery.


# ============================================================
# ESTIMATE CUSTOMER RESPONSE BASIS MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_customer_response_basis links a customer response
to the exact revision snapshot that was presented.

Required fields:
- customer_response_basis_id
- customer_response_id
- estimate_id
- revision_snapshot_id
- delivery_record_id
- delivery_artifact_id
- created_at

This prevents ambiguity about
which estimate version the customer responded to.

# ============================================================
# ESTIMATE CREATOR MODEL OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. MODEL GROUPS
# ============================================================

EstimateCreator canonical model is grouped into:

- estimate core
- memo
- sharing
- sync
- ERP publication
- audit/history
- inventory reference
- premium feature

# ============================================================
# 2. PRIMARY MODEL RULE
# ============================================================

Estimate record is the central business object.

Other objects must attach to estimate-centric or app-scoped workflows
without breaking auditability and authority boundaries.

# ============================================================
# 3. MODEL TRUTH POSITION
# ============================================================

EstimateCreator models preserve BusinessOS-side operational truth
for drafting, sharing state, local workflow, and publication preparation.

They do not replace ERP final authoritative truth.


# ============================================================
# 4. LAUNCH CONTEXT MODEL GROUP
# ============================================================

EstimateCreator model also includes launch-context support objects
for dual-entry operation.

Representative launch-related objects include:

- estimate_launch_context
- estimate_deeplink_context
- estimate_source_app_record

These objects describe invocation context,
not business authority by themselves.


# ============================================================
# 5. BILLING AND ENTITLEMENT MODEL GROUP
# ============================================================

EstimateCreator model includes premium entitlement support
for premium-gated business features.

Primary related objects include:

- estimate_premium_feature_state

This model group controls premium-only capability access
such as:

- structured meeting memo
- QA management
- estimate templates


# ============================================================
# 6. CUSTOMER DELIVERY AND LOCALE MODEL GROUP
# ============================================================

EstimateCreator model additionally includes
customer delivery,
locale,
currency-display,
and template-variant support.

Representative objects include:

- estimate_delivery_record
- estimate_share_link_record
- estimate_open_log_record
- estimate_customer_response_record
- estimate_template_locale_variant
- estimate_template_industry_category
- estimate_proposal_summary_template
- customer_preferred_locale_record
- customer_preferred_currency_record

# ============================================================
# ESTIMATE CREATOR MODEL INDEX
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

- 030_OVERVIEW.md
- 030_INDEX.md
- 030_ESTIMATE_CREATOR_MODEL_OVERVIEW.md
- 030100_ESTIMATE_RECORD_MODEL.md
- 030110_ESTIMATE_LINE_ITEM_MODEL.md
- 030120_ESTIMATE_OPPORTUNITY_MEMO_MODEL.md
- 030130_ESTIMATE_SHARE_TARGET_MODEL.md
- 030140_ESTIMATE_ERP_PUBLISH_SETTING_MODEL.md
- 030150_ESTIMATE_SYNC_STATE_MODEL.md
- 030160_ESTIMATE_PENDING_OPERATION_MODEL.md
- 030330_ESTIMATE_MEETING_MEMO_MODEL.md
- 030340_ESTIMATE_INVENTORY_CHECK_MODEL.md
- 030350_ESTIMATE_TEMPLATE_MODEL.md
- 030360_ESTIMATE_TEMPLATE_LINE_MODEL.md
- 030370_ESTIMATE_QA_RECORD_MODEL.md
- 030380_ESTIMATE_PREMIUM_FEATURE_STATE_MODEL.md

# ============================================================
# ESTIMATE CREATOR MODEL OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator Model defines the canonical business objects,
their states,
their relationships,
and their integration-support structures.

The model includes:

- estimate core objects
- memo objects
- sharing objects
- sync objects
- ERP publication objects
- inventory reference objects
- premium feature objects

# ============================================================
# ESTIMATE SYNC CONFLICT RUNTIME
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This runtime defines how EstimateCreator behaves
when local and remote states diverge.

# ============================================================
# 2. CONFLICT TRIGGERS
# ============================================================

Conflict may be triggered when:

- same object changed locally and remotely
- remote version advanced while local pending changes exist
- share state changed remotely while local revoke request exists
- publication-related state returned while local object changed again

# ============================================================
# 3. CONFLICT RULE
# ============================================================

Conflict must be explicit.

The application must never silently discard:
- local changes
- remote changes
- publication results
- share state changes

# ============================================================
# 4. CONFLICT OUTCOME STATES
# ============================================================

- local_wins_manual
- remote_wins_manual
- merged_manual
- retry_required
- blocked_until_review

# ============================================================
# ESTIMATE RELATIONSHIP VISIBILITY RUNTIME
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Estimate-related visibility must be controlled by:

- owner visibility
- explicit app share visibility
- publication-linked visibility where applicable
- premium feature visibility rules

Runtime visibility must not broaden access implicitly.

# ============================================================
# ESTIMATE OFFLINE RUNTIME
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. OFFLINE ENTRY CONDITION
# ============================================================

Offline runtime is allowed only when:

- user previously authenticated successfully
- local auth context remains valid
- protected local storage is available
- application policy allows offline usage for the user/device context

# ============================================================
# 2. OFFLINE-ALLOWED OPERATIONS
# ============================================================

Offline mode allows:

- estimate create
- estimate edit
- memo edit
- line edit
- local pricing recalculation
- template apply from local cache
- QA draft edit where premium state is cached as active
- pending operation queue registration

# ============================================================
# 3. OFFLINE-DISALLOWED OPERATIONS
# ============================================================

Offline mode must not complete:

- live ERP publication execution
- live inventory truth retrieval
- live approval confirmation requiring server truth
- premium entitlement refresh
- share completion confirmation requiring server result

# ============================================================
# 4. OFFLINE STATUS DISPLAY
# ============================================================

The UI must clearly indicate:

- offline mode active
- local draft state
- pending sync count
- pending share requests
- pending publication requests
- cached inventory state
- freshness warnings

# ============================================================
# ESTIMATE INVENTORY REFERENCE RUNTIME
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This runtime governs how the application references
latest inventory information from ERP-connected services.

# ============================================================
# 2. REFERENCE BEHAVIOR
# ============================================================

For each item lookup, runtime must store:

- lookup time
- source system
- returned quantities
- success/failure state
- cache state

# ============================================================
# 3. VISUAL STATES
# ============================================================

Inventory reference visual states may include:

- available
- low_stock
- out_of_stock
- inbound_only
- unknown
- cached
- stale
- failed

# ============================================================
# 4. AUTHORITY RULE
# ============================================================

The runtime must never represent inventory reference
as final reservable guarantee unless provided by authoritative external policy.

# ============================================================
# ESTIMATE PREMIUM FEATURE GATE RUNTIME
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Premium gate runtime evaluates whether feature execution is allowed.

Premium-gated operations include:

- structured meeting memo creation/editing
- QA creation/editing
- template registration/editing
- expanded default template access

Runtime outcome must be one of:

- allowed
- denied_inactive_plan
- denied_unknown_plan_state
- denied_refresh_required

Unknown plan state must fail closed for premium-only writes.



# ============================================================
# OFFLINE ENTITLEMENT RUNTIME
# ============================================================

Offline premium write behavior must use cached entitlement state.

Allowed premium write may include:

- active
- grace, where policy allows

Denied premium write includes:

- inactive
- expired
- unknown

unknown must fail closed for premium-only write operations.

# ============================================================
# DOWNGRADE RUNTIME
# ============================================================

After downgrade or expiry,
the runtime should preserve safe read access
to already existing premium-created data where policy permits,
while denying new premium-only writes and edits.


# ============================================================
# ESTIMATE ENTRY RUNTIME
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

This runtime defines dual-entry behavior.

Standalone:

- may require local login UI
- establishes usable app session
- routes to list/detail/editor according to user action

Deeplink:

- receives launch context
- reuses shared BusinessOS session when valid
- does not require redundant login UI
- validates session and route context before entry

Both entry paths must converge into the same canonical workspace rules.


# ============================================================
# ESTIMATE PERMISSION RUNTIME
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Permission runtime must distinguish:

- authenticated
- authorized
- readonly
- premium-entitled

Runtime must not treat these as equivalent.

Representative runtime outputs:

- can_view
- can_edit
- can_share
- can_request_publication
- can_use_premium_write
- is_customer_readonly_view

# ============================================================
# ESTIMATE CREATOR RUNTIME
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PRIMARY RUNTIME STATES
# ============================================================

EstimateCreator runtime must support the following primary states:

- authenticated_online
- authenticated_offline
- editing
- pending_sync
- sharing_pending
- publication_pending
- publication_completed
- publication_failed
- conflict_detected
- premium_active
- premium_inactive

# ============================================================
# 2. ESTIMATE EDITING RUNTIME
# ============================================================

Estimate editing is locally allowed when the user has
valid application access and valid local auth context.

Estimate editing supports:

- header editing
- line item editing
- memo editing
- template application
- QA update when premium is active
- local pricing recalculation
- local queue registration for future sync

# ============================================================
# 3. AUTHORITY BOUNDARY RUNTIME
# ============================================================

Local completion must not be treated as external authority.

Therefore the application must separate:

- local edit completion
- sync completion
- share completion
- ERP publication completion
- inventory freshness confirmation

These must be represented as different runtime states.

# ============================================================
# 4. SHARE RUNTIME
# ============================================================

App-internal sharing uses preconfigured share targets only.

Share runtime steps:

- user selects shareable object
- user selects enabled share target
- local intent is created
- online execution sends share request through common capability
- result updates share state

Offline mode may store share intent,
but must not falsely mark share completion before result confirmation.

# ============================================================
# 5. ERP PUBLICATION RUNTIME
# ============================================================

ERP publication runtime is request-based.

Application behavior:

- prepare publication payload intent
- validate minimum required fields
- validate publication-allowed state
- register publication request
- wait for shared publication path result
- update publication state

Publication execution result is external to local edit completion.

# ============================================================
# 6. INVENTORY RUNTIME
# ============================================================

Inventory lookup is a reference runtime operation.

Inventory runtime must distinguish:

- no_reference
- cached_reference
- fresh_reference
- expired_reference
- reference_failed

Fresh inventory requires online retrieval.
Cached values must be visually marked as non-authoritative.

# ============================================================
# 7. PREMIUM GATE RUNTIME
# ============================================================

Premium-gated features must be evaluated through effective premium state.

Premium gate affects:

- structured meeting memo mode
- QA management access
- reusable template creation/editing
- expanded template library access

When premium is inactive,
the application must fail closed for premium-only actions
while preserving existing records safely.


# ============================================================
# 8. ENTRY RUNTIME
# ============================================================

EstimateCreator runtime supports two equally valid entry paths:

- standalone launch runtime
- deeplink launch runtime

Standalone launch runtime may show login entry.

Deeplink launch runtime reuses authenticated BusinessOS session context
from the calling app when that session is valid.

# ============================================================
# 9. DEEPLINK SHARED SESSION RUNTIME
# ============================================================

Deeplink runtime steps:

1. deeplink received
2. shared auth context resolved
3. session validated
4. launch context validated
5. workspace entered

If shared session is invalid or unavailable:

- fallback to login entry
  or
- fail closed

according to policy and device/session state.

# ============================================================
# 10. RUNTIME SAFETY
# ============================================================

Skipping redundant login UI must not mean
skipping session validation or authorization checks.


# ============================================================
# 11. BILLING RUNTIME
# ============================================================

EstimateCreator runtime must distinguish
core estimate capability from premium productivity capability.

Core estimate capability remains available in Free plan.

Premium runtime controls access to:

- structured meeting memo
- QA management
- estimate templates

Premium runtime must evaluate entitlement state
before premium-only write actions.

# ============================================================
# 12. DEEPLINK AND BILLING RUNTIME
# ============================================================

Deeplink launch may skip redundant login UI
when shared BusinessOS session is valid.

However, deeplink launch must still resolve entitlement state
before premium-only actions are allowed.

Deeplink is not a premium bypass path.


# ============================================================
# 13. LOCALE / DELIVERY RUNTIME
# ============================================================

EstimateCreator runtime must support:

- UI locale resolution
- customer preferred locale override for delivery output
- customer preferred currency for display/output
- readonly link generation
- delivery/open state updates
- delivery history capture

Readonly delivery link runtime must never expose write actions.

# ============================================================
# ESTIMATE CREATOR RUNTIME INDEX
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

- 040_OVERVIEW.md
- 040_INDEX.md
- 040_ESTIMATE_CREATOR_RUNTIME.md
- 040110_ESTIMATE_SYNC_CONFLICT_RUNTIME.md
- 040120_ESTIMATE_RELATIONSHIP_VISIBILITY_RUNTIME.md
- 040130_ESTIMATE_OFFLINE_RUNTIME.md
- 040140_ESTIMATE_INVENTORY_REFERENCE_RUNTIME.md
- 040150_ESTIMATE_PREMIUM_FEATURE_GATE_RUNTIME.md

# ============================================================
# ESTIMATE CREATOR RUNTIME OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator Runtime defines the executable behavioral rules
of the application.

Runtime covers:

- local editing behavior
- offline behavior
- sync and conflict behavior
- sharing execution behavior
- ERP publication preparation behavior
- inventory reference behavior
- premium feature gating behavior

# ============================================================
# ESTIMATE ERP WIDE SHARE APPROVAL FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator may prepare estimate publication requests
that pass through shared BusinessOS ERP publication approval handling.

High-level flow:

1. validate publication readiness
2. build publication request
3. submit to shared publication capability
4. wait for approval-linked processing
5. receive result
6. update local publication state

# ============================================================
# ESTIMATE SYNC CONFLICT RESOLUTION FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Conflict resolution flow:

1. detect conflict
2. freeze conflicting automatic overwrite
3. present conflict state explicitly
4. review local and remote versions
5. select resolution path
6. record decision in audit/history
7. requeue sync if necessary

# ============================================================
# ESTIMATE APPROVAL STATE TRANSITION FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Typical approval-related states:

- draft
- review_ready
- approval_pending
- approved
- rejected
- publication_pending
- publication_completed

Approval state and publication state must not be collapsed
into one ambiguous state.

# ============================================================
# ESTIMATE OFFLINE TO ONLINE SYNC FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This flow defines how offline-created or offline-edited data
is synchronized after connectivity returns.

# ============================================================
# 2. FLOW
# ============================================================

1. offline mode active
2. local edits stored
3. pending operations queued
4. connectivity restored
5. auth context validated
6. sync coordinator starts replay
7. push local changes
8. fetch remote updates
9. detect and handle conflicts
10. finalize sync state
11. refresh UI status

# ============================================================
# 3. OBJECTS INCLUDED
# ============================================================

Objects typically included:

- estimate_record
- estimate_line_item
- opportunity_memo
- meeting_memo
- share requests
- publication preparation requests
- QA records
- template usage records

# ============================================================
# ESTIMATE INVENTORY REFERENCE FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Inventory reference flow:

1. user selects item or estimate line
2. application checks online availability
3. if online, inventory reference request is sent
4. ERP-connected result is received
5. result is stored as reference record
6. UI updates freshness and stock state
7. if offline, cached value may be shown with warning

# ============================================================
# ESTIMATE TEMPLATE APPLICATION FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Template application flow:

1. user opens template picker
2. premium gate evaluated where required
3. selected template is loaded
4. template lines are materialized into estimate draft
5. user edits quantities / prices / notes
6. local recalculation occurs
7. audit/history entry is recorded where policy requires

# ============================================================
# ESTIMATE QA MANAGEMENT FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

QA management flow:

1. premium state verified
2. user creates or opens QA record
3. question and owner are set
4. answer/status are updated over time
5. sync persists changes
6. estimate detail view reflects open/pending/closed QA states


# ============================================================
# ESTIMATE DEEPLINK LAUNCH FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Deeplink launch flow:

1. receive deeplink
2. read source_app / source_screen / mode / context ids
3. resolve shared BusinessOS session
4. validate session
5. validate deeplink context
6. enter target screen without redundant login UI when valid
7. fallback safely when invalid

Representative deeplink modes:

- create
- edit
- detail
- memo
- meeting
- qa
- template_apply
- inventory_check


# ============================================================
# ESTIMATE CUSTOMER DELIVERY FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Customer delivery flow supports:

- PDF export
- email send
- readonly link generation

Additional follow-up:
- delivery history
- open tracking
- customer response recording
- expiring-soon awareness


# ============================================================
# ESTIMATE PERMISSION EVALUATION FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Permission evaluation flow:

1. session resolved
2. object identified
3. subject identity resolved
4. permission scope resolved
5. readonly context applied
6. premium entitlement checked if needed
7. UI/action gate decided

Permission must be evaluated before sensitive action execution.


# ============================================================
# ESTIMATE REVISION DELIVERY AUDIT FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Revision / delivery audit flow:

1. estimate reaches meaningful state
2. revision snapshot created
3. delivery artifact prepared from snapshot
4. delivery record created
5. delivery state transition tracked
6. open events appended if any
7. customer response recorded against revision basis
8. history remains queryable

This flow preserves customer-facing traceability.

# ============================================================
# ESTIMATE CREATOR FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PRIMARY FLOW
# ============================================================

The primary EstimateCreator business flow is:

1. login
2. open workspace
3. select customer or customer context
4. create or open estimate
5. edit line items and estimate conditions
6. add opportunity memo and/or meeting memo
7. optionally reference inventory
8. optionally share estimate-related objects
9. optionally prepare ERP publication
10. sync online when possible
11. receive publication/share results
12. continue revision cycle if needed

# ============================================================
# 2. DEFAULT ESTIMATE FLOW POSITION
# ============================================================

The default estimate flow produces a rough estimate.

The flow must not silently convert a rough estimate
into authoritative ERP formal issuance.

# ============================================================
# 3. LOCAL FORMAL USE EXCEPTION FLOW
# ============================================================

Where policy allows local formal use:

- estimate record is explicitly marked
- audit/history is preserved
- approval trace is preserved where required
- publication to ERP remains separately modeled


# ============================================================
# 4. ENTRY FLOWS
# ============================================================

EstimateCreator supports:

- standalone launch flow
- deeplink launch flow
- unified workspace entry flow

These are equally valid operational entry flows.

# ============================================================
# 5. STANDALONE LAUNCH FLOW
# ============================================================

1. app opened directly
2. login checked
3. if needed, login screen shown
4. session established
5. workspace entered

# ============================================================
# 6. DEEPLINK LAUNCH FLOW
# ============================================================

1. deeplink received
2. launch context parsed
3. shared BusinessOS session resolved
4. session validated
5. route context validated
6. target workspace entered without redundant login UI when valid


# ============================================================
# 7. CUSTOMER DELIVERY FLOW
# ============================================================

Estimate customer delivery flow:

1. estimate detail opened
2. delivery channel selected
3. locale resolved
4. currency display resolved
5. readonly link or PDF or email payload prepared
6. delivery recorded
7. opened state tracked if available
8. customer response recorded manually when received

# ============================================================
# ESTIMATE CREATOR FLOW INDEX
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

- 050_OVERVIEW.md
- 050_INDEX.md
- 050_ESTIMATE_CREATOR_FLOW.md
- 050110_ERP_WIDE_SHARE_APPROVAL_FLOW.md
- 050120_ESTIMATE_SYNC_CONFLICT_RESOLUTION_FLOW.md
- 050130_ESTIMATE_APPROVAL_STATE_TRANSITION_FLOW.md
- 050140_ESTIMATE_OFFLINE_TO_ONLINE_SYNC_FLOW.md
- 050150_ESTIMATE_INVENTORY_REFERENCE_FLOW.md
- 050160_ESTIMATE_TEMPLATE_APPLICATION_FLOW.md
- 050170_ESTIMATE_QA_MANAGEMENT_FLOW.md

# ============================================================
# ESTIMATE CREATOR FLOW OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator Flow defines the ordered business movement
of the application.

It covers:

- estimate creation
- offline to online sync
- app-internal sharing
- ERP publication
- inventory reference
- premium feature flows
- conflict resolution

# ============================================================
# ESTIMATE API INTEGRATION CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Estimate API contract covers application objects such as:

- estimate_record
- estimate_line_item
- opportunity_memo
- meeting_memo
- QA record
- template references

The contract must support explicit object identifiers,
versions,
and sync-related metadata.

# ============================================================
# ESTIMATE SYNC API CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Sync API contract must support:

- push local changes
- pull remote changes
- object version comparison
- conflict signaling
- pending operation replay result
- last successful sync marker

Required sync response qualities:

- explicit success/failure
- explicit conflict
- no silent overwrite

# ============================================================
# ESTIMATE SHARE API CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Share API contract supports app-internal sharing
to preconfigured users.

Required share request characteristics:

- object_type
- object_id
- source_user_id
- target_user_id
- share_scope
- request_time

Required response qualities:

- accepted
- rejected
- already_shared
- revoke_completed
- revoke_failed

# ============================================================
# ESTIMATE ERP PUBLISH API CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

ERP publish contract for EstimateCreator must represent
rough estimate publication explicitly.

Minimum payload characteristics:

- source_system = business_os
- source_app = estimate_creator
- estimate_class = rough_estimate
- company_id
- estimate_id
- revision_no
- requesting_user_id
- approval_state
- payload_profile_code

Response must distinguish:

- request_accepted
- request_rejected
- processing
- completed
- failed

# ============================================================
# ESTIMATE SHARED ERP PUBLICATION INTEGRATION
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator integrates with the shared BusinessOS ERP publication path.

Integration rule:

- EstimateCreator prepares request
- shared publication capability executes publication path
- EstimateCreator consumes result
- final external authority remains outside local app runtime

# ============================================================
# ESTIMATE ERP PUBLICATION PAYLOAD FIELD MAP
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Typical publication payload fields include:

- company_id
- estimate_id
- estimate_number
- estimate_class
- revision_no
- customer_id
- customer_name_snapshot
- currency_code
- issue_date
- valid_until
- subtotal_amount
- tax_amount
- total_amount
- approval_state
- line_items[]
- memo_summary
- source_system
- source_app

# ============================================================
# ESTIMATE API FIELD SCHEMA
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Field schema must preserve explicit nullability,
explicit required fields,
and explicit type boundaries.

Schema design must avoid ambiguous fields that mix:

- local state
- sync state
- publication state
- authority state

# ============================================================
# ESTIMATE INVENTORY REFERENCE INTEGRATION
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Inventory reference integration connects EstimateCreator
to ERP-connected inventory information services.

Required request characteristics:

- item_code or product identifier
- company context when required
- requesting user context
- request time

Required response characteristics:

- available quantity
- reserved quantity when available
- inbound quantity when available
- source timestamp
- reference freshness signal
- success/failure signal

Inventory response is reference-only unless authoritative policy states otherwise.

# ============================================================
# ESTIMATE PREMIUM FEATURE LICENSE INTEGRATION
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Premium feature integration provides effective entitlement state
for premium-only capabilities.

Required integration qualities:

- explicit active/inactive state
- explicit last verified time
- safe cached fallback
- fail closed on unknown entitlement for premium-only write operations


# ============================================================
# ESTIMATE DEEPLINK PARAMETER CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Representative deeplink parameters include:

- source_app
- source_screen
- mode
- estimate_id
- customer_id
- opportunity_id
- draft_id
- readonly

These parameters provide launch context only.

They must not be treated as proof of authority,
and must not include raw credentials.

# ============================================================
# ESTIMATE EXACT PAYLOAD CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the request / response exact payloads
for EstimateCreator integration-facing operations.

Principles:
- exact field names are fixed
- request and response are separated
- auth/session is not transported as raw credential inside business payload
- business status and sync/publication status are not collapsed
- nullability must remain explicit in implementation

# ============================================================
# 2. COMMON RESPONSE ENVELOPE
# ============================================================

Recommended common response envelope:

response_envelope:
  success: boolean
  code: string
  message: string
  data: object|null
  error:
    field: string|null
    detail: string|null

# ============================================================
# 3. STANDALONE ENTRY CONTEXT RESOLVE
# ============================================================

operation:
- standalone_entry_context_resolve

request:
  launch_type: standalone
  requested_screen: string
  requested_mode: string|null

response_success:
  success: true
  code: ENTRY_CONTEXT_READY
  message: Entry context resolved
  data:
    launch_type: standalone
    login_required: boolean
    resolved_screen: string
    resolved_mode: string|null

response_failure:
  success: false
  code: ENTRY_CONTEXT_INVALID
  message: Unable to resolve entry context
  data: null
  error:
    field: requested_screen
    detail: unsupported or missing screen

# ============================================================
# 4. DEEPLINK ENTRY CONTEXT RESOLVE
# ============================================================

operation:
- deeplink_entry_context_resolve

request:
  source_app: string
  source_screen: string|null
  mode: string
  estimate_id: string|null
  customer_id: string|null
  opportunity_id: string|null
  draft_id: string|null
  readonly: boolean

response_success:
  success: true
  code: DEEPLINK_CONTEXT_READY
  message: Deeplink context resolved
  data:
    launch_type: deeplink
    source_app: string
    source_screen: string|null
    mode: string
    estimate_id: string|null
    customer_id: string|null
    opportunity_id: string|null
    draft_id: string|null
    readonly: boolean
    session_reuse_required: true
    login_required: false

response_failure:
  success: false
  code: DEEPLINK_CONTEXT_INVALID
  message: Deeplink context is invalid
  data: null
  error:
    field: mode
    detail: invalid mode or insufficient context

# ============================================================
# 5. SHARED SESSION RESOLVE
# ============================================================

operation:
- shared_session_resolve

request:
  launch_type: deeplink
  source_app: string
  company_id: string|null
  workspace_id: string|null

response_success:
  success: true
  code: SHARED_SESSION_VALID
  message: Shared session is valid
  data:
    session_state: active
    user_id: string
    company_id: string
    workspace_id: string
    authorization_recheck_required: true

response_failure:
  success: false
  code: SHARED_SESSION_INVALID
  message: Shared session is invalid or unavailable
  data:
    session_state: invalid
    fallback_to_login: boolean
  error:
    field: source_app
    detail: no reusable shared session

# ============================================================
# 6. ESTIMATE CREATE
# ============================================================

operation:
- create_estimate

request:
  estimate_class: rough_estimate|local_formal_estimate
  title: string
  customer_id: string
  customer_name_snapshot: string
  customer_contact_name_snapshot: string|null
  currency_code: string
  issue_date: string
  valid_until: string|null
  line_items:
    - line_no: integer
      item_type: product|service|misc
      item_code: string|null
      item_name: string
      description: string|null
      quantity: number
      unit_name: string
      unit_price: number
      discount_type: none|percent|fixed_amount
      discount_value: number
      tax_category: string
      tax_rate_snapshot: number
  opportunity_memo_text: string|null
  meeting_memo:
    memo_mode: free_form|structured
    memo_text: string|null
    template_code: string|null

response_success:
  success: true
  code: ESTIMATE_CREATED
  message: Estimate created
  data:
    estimate_id: string
    estimate_number: string
    estimate_status: draft
    approval_state: not_requested
    publication_state: not_requested
    sync_state: local_only
    share_state: private
    current_revision_no: 1
    subtotal_amount: number
    tax_amount: number
    total_amount: number

response_failure:
  success: false
  code: ESTIMATE_CREATE_INVALID
  message: Estimate create payload is invalid
  data: null
  error:
    field: string|null
    detail: string|null

# ============================================================
# 7. ESTIMATE HEADER UPDATE
# ============================================================

operation:
- update_estimate_header

request:
  estimate_id: string
  title: string|null
  valid_until: string|null
  customer_id: string|null
  customer_name_snapshot: string|null
  customer_contact_name_snapshot: string|null
  currency_code: string|null

response_success:
  success: true
  code: ESTIMATE_UPDATED
  message: Estimate header updated
  data:
    estimate_id: string
    updated_at: string
    sync_state: pending_push

# ============================================================
# 8. ESTIMATE LINE REPLACE
# ============================================================

operation:
- replace_estimate_lines

request:
  estimate_id: string
  revision_no: integer
  line_items:
    - line_no: integer
      item_type: product|service|misc
      item_code: string|null
      item_name: string
      description: string|null
      quantity: number
      unit_name: string
      unit_price: number
      discount_type: none|percent|fixed_amount
      discount_value: number
      tax_category: string
      tax_rate_snapshot: number

response_success:
  success: true
  code: ESTIMATE_LINES_REPLACED
  message: Estimate lines replaced
  data:
    estimate_id: string
    revision_no: integer
    subtotal_amount: number
    tax_amount: number
    total_amount: number
    updated_at: string
    sync_state: pending_push

# ============================================================
# 9. OPPORTUNITY MEMO UPDATE
# ============================================================

operation:
- update_opportunity_memo

request:
  estimate_id: string
  memo_text: string

response_success:
  success: true
  code: OPPORTUNITY_MEMO_UPDATED
  message: Opportunity memo updated
  data:
    estimate_id: string
    memo_object_type: opportunity_memo
    sync_state: pending_push
    share_state: private

# ============================================================
# 10. MEETING MEMO UPDATE
# ============================================================

operation:
- update_meeting_memo

request:
  estimate_id: string
  memo_mode: free_form|structured
  memo_text: string|null
  template_code: string|null

response_success:
  success: true
  code: MEETING_MEMO_UPDATED
  message: Meeting memo updated
  data:
    estimate_id: string
    memo_mode: free_form|structured
    is_premium_format: boolean
    sync_state: pending_push

response_failure:
  success: false
  code: PREMIUM_REQUIRED
  message: Premium required for structured meeting memo
  data: null
  error:
    field: memo_mode
    detail: structured mode requires premium entitlement

# ============================================================
# 11. SHARE REQUEST
# ============================================================

operation:
- request_share

request:
  object_type: rough_estimate|opportunity_memo|meeting_memo
  object_id: string
  target_user_id: string

response_success:
  success: true
  code: SHARE_REQUEST_ACCEPTED
  message: Share request accepted
  data:
    object_type: string
    object_id: string
    target_user_id: string
    share_state: share_pending

response_failure:
  success: false
  code: SHARE_TARGET_INVALID
  message: Share target is invalid
  data: null
  error:
    field: target_user_id
    detail: target not enabled or not permitted

# ============================================================
# 12. SHARE REVOKE
# ============================================================

operation:
- revoke_share

request:
  object_type: rough_estimate|opportunity_memo|meeting_memo
  object_id: string
  target_user_id: string

response_success:
  success: true
  code: SHARE_REVOKE_ACCEPTED
  message: Share revoke accepted
  data:
    object_type: string
    object_id: string
    target_user_id: string
    share_state: share_revoked

# ============================================================
# 13. ERP PUBLICATION REQUEST
# ============================================================

operation:
- request_erp_publication

request:
  estimate_id: string
  revision_no: integer
  company_id: string
  requesting_user_id: string
  estimate_class: rough_estimate
  payload_profile_code: string|null
  memo_summary: string|null

response_success:
  success: true
  code: ERP_PUBLICATION_REQUEST_ACCEPTED
  message: ERP publication request accepted
  data:
    estimate_id: string
    revision_no: integer
    publication_state: publication_pending
    approval_state: string

response_failure:
  success: false
  code: ERP_PUBLICATION_REQUEST_REJECTED
  message: ERP publication request rejected
  data: null
  error:
    field: estimate_id
    detail: estimate not publication-ready

# ============================================================
# 14. ERP PUBLICATION RESULT REFRESH
# ============================================================

operation:
- refresh_erp_publication_result

request:
  estimate_id: string

response_success:
  success: true
  code: ERP_PUBLICATION_RESULT_READY
  message: ERP publication result refreshed
  data:
    estimate_id: string
    publication_state: publication_pending|publication_completed|publication_rejected|publication_failed
    published_at: string|null
    external_reference_id: string|null

# ============================================================
# 15. INVENTORY REFERENCE REQUEST
# ============================================================

operation:
- request_inventory_reference

request:
  estimate_id: string|null
  line_item_id: string|null
  item_code: string
  company_id: string|null

response_success:
  success: true
  code: INVENTORY_REFERENCE_READY
  message: Inventory reference ready
  data:
    item_code: string
    reference_status: success_fresh|success_cached|stale|failed|unknown
    available_quantity: number|null
    reserved_quantity: number|null
    inbound_quantity: number|null
    checked_at: string|null
    source_system: string|null
    is_cached: boolean

response_failure:
  success: false
  code: INVENTORY_REFERENCE_FAILED
  message: Inventory reference failed
  data: null
  error:
    field: item_code
    detail: unable to resolve inventory reference

# ============================================================
# 16. PREMIUM ENTITLEMENT RESOLVE
# ============================================================

operation:
- resolve_premium_entitlement

request:
  user_id: string
  workspace_id: string|null
  company_id: string|null

response_success:
  success: true
  code: PREMIUM_ENTITLEMENT_READY
  message: Premium entitlement resolved
  data:
    premium_plan_code: string|null
    entitlement_state: inactive|active|grace|expired|unknown
    is_active: boolean
    grace_until: string|null
    last_verified_at: string|null

# ============================================================
# 17. TEMPLATE APPLY
# ============================================================

operation:
- apply_template

request:
  estimate_id: string
  template_id: string

response_success:
  success: true
  code: TEMPLATE_APPLIED
  message: Template applied
  data:
    estimate_id: string
    template_id: string
    subtotal_amount: number
    tax_amount: number
    total_amount: number
    sync_state: pending_push

response_failure:
  success: false
  code: PREMIUM_REQUIRED
  message: Premium required for this template action
  data: null
  error:
    field: template_id
    detail: template is premium-only or editing requires premium

# ============================================================
# 18. QA CREATE
# ============================================================

operation:
- create_qa

request:
  estimate_id: string
  question_text: string
  owner_user_id: string|null
  due_date: string|null

response_success:
  success: true
  code: QA_CREATED
  message: QA created
  data:
    qa_id: string
    estimate_id: string
    qa_status: open
    sync_state: pending_push

response_failure:
  success: false
  code: PREMIUM_REQUIRED
  message: Premium required for QA management
  data: null
  error:
    field: estimate_id
    detail: QA management is premium-gated

# ============================================================
# ESTIMATE SCREEN EXACT PAYLOAD CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes exact request / response payloads
at screen-action level for EstimateCreator.

It complements the operation-level exact payload contract.

# ============================================================
# 2. LOGIN SCREEN / STANDALONE ENTRY
# ============================================================

screen_action:
- login_screen_submit

request:
  login_id: string
  password: string
  requested_screen: string|null
  requested_mode: string|null

response_success:
  success: true
  code: LOGIN_SUCCESS
  message: Login successful
  data:
    user_id: string
    company_id: string
    workspace_id: string
    resolved_screen: string
    resolved_mode: string|null
    offline_available: boolean

response_failure:
  success: false
  code: LOGIN_FAILED
  message: Login failed
  data: null
  error:
    field: login_id|password|null
    detail: invalid credentials or unavailable auth path

# ============================================================
# 3. DEEPLINK ENTRY SCREEN
# ============================================================

screen_action:
- deeplink_entry_open

request:
  source_app: string
  source_screen: string|null
  mode: string
  estimate_id: string|null
  customer_id: string|null
  opportunity_id: string|null
  draft_id: string|null
  readonly: boolean

response_success:
  success: true
  code: DEEPLINK_ENTRY_READY
  message: Deeplink entry ready
  data:
    launch_type: deeplink
    resolved_screen: string
    resolved_mode: string
    estimate_id: string|null
    customer_id: string|null
    opportunity_id: string|null
    draft_id: string|null
    readonly: boolean
    login_required: false

response_failure:
  success: false
  code: DEEPLINK_ENTRY_REJECTED
  message: Deeplink entry rejected
  data:
    fallback_to_login: boolean
  error:
    field: mode|null
    detail: invalid context or no valid shared session

# ============================================================
# 4. ESTIMATE LIST SCREEN LOAD
# ============================================================

screen_action:
- estimate_list_load

request:
  filter_type: all|drafts|pending_sync|conflicts|publication_pending|publication_failed|shared|archived
  search_keyword: string|null
  page_size: integer
  page_token: string|null

response_success:
  success: true
  code: ESTIMATE_LIST_READY
  message: Estimate list loaded
  data:
    items:
      - estimate_id: string
        estimate_number: string
        title: string
        customer_name_snapshot: string
        total_amount: number
        estimate_class: string
        sync_state: string
        publication_state: string
        updated_at: string
    next_page_token: string|null

# ============================================================
# 5. ESTIMATE DETAIL SCREEN LOAD
# ============================================================

screen_action:
- estimate_detail_load

request:
  estimate_id: string

response_success:
  success: true
  code: ESTIMATE_DETAIL_READY
  message: Estimate detail loaded
  data:
    estimate:
      estimate_id: string
      estimate_number: string
      estimate_class: string
      title: string
      customer_id: string
      customer_name_snapshot: string
      customer_contact_name_snapshot: string|null
      issue_date: string
      valid_until: string|null
      subtotal_amount: number
      tax_amount: number
      total_amount: number
      estimate_status: string
      approval_state: string
      publication_state: string
      sync_state: string
      share_state: string
      current_revision_no: integer
    line_items:
      - line_item_id: string
        line_no: integer
        item_type: string
        item_code: string|null
        item_name: string
        description: string|null
        quantity: number
        unit_name: string
        unit_price: number
        discount_type: string
        discount_value: number
        tax_category: string
        tax_rate_snapshot: number
        line_subtotal: number
        line_tax_amount: number
        line_total: number
        inventory_reference_state: string
    opportunity_memo:
      memo_text: string|null
      share_state: string|null
      sync_state: string|null
    meeting_memo:
      memo_mode: string|null
      memo_text: string|null
      template_code: string|null
      is_premium_format: boolean|null
      sync_state: string|null
    qa_summary:
      open_count: integer
      pending_count: integer
      answered_count: integer
      closed_count: integer
    inventory_summary:
      freshness_state: string|null
      checked_at: string|null

# ============================================================
# 6. ESTIMATE EDITOR SAVE
# ============================================================

screen_action:
- estimate_editor_save

request:
  estimate_id: string|null
  estimate_class: rough_estimate|local_formal_estimate
  title: string
  customer_id: string
  customer_name_snapshot: string
  customer_contact_name_snapshot: string|null
  currency_code: string
  issue_date: string
  valid_until: string|null
  line_items:
    - line_no: integer
      item_type: product|service|misc
      item_code: string|null
      item_name: string
      description: string|null
      quantity: number
      unit_name: string
      unit_price: number
      discount_type: none|percent|fixed_amount
      discount_value: number
      tax_category: string
      tax_rate_snapshot: number

response_success:
  success: true
  code: ESTIMATE_EDITOR_SAVED
  message: Estimate saved
  data:
    estimate_id: string
    estimate_number: string
    subtotal_amount: number
    tax_amount: number
    total_amount: number
    sync_state: local_only|pending_push
    updated_at: string

response_failure:
  success: false
  code: ESTIMATE_EDITOR_INVALID
  message: Estimate editor payload is invalid
  data: null
  error:
    field: string|null
    detail: string|null

# ============================================================
# 7. OPPORTUNITY MEMO SAVE
# ============================================================

screen_action:
- opportunity_memo_save

request:
  estimate_id: string
  memo_text: string

response_success:
  success: true
  code: OPPORTUNITY_MEMO_SAVED
  message: Opportunity memo saved
  data:
    estimate_id: string
    sync_state: local_only|pending_push
    updated_at: string

# ============================================================
# 8. MEETING MEMO SAVE
# ============================================================

screen_action:
- meeting_memo_save

request:
  estimate_id: string
  memo_mode: free_form|structured
  memo_text: string|null
  template_code: string|null

response_success:
  success: true
  code: MEETING_MEMO_SAVED
  message: Meeting memo saved
  data:
    estimate_id: string
    memo_mode: free_form|structured
    is_premium_format: boolean
    sync_state: local_only|pending_push
    updated_at: string

response_failure:
  success: false
  code: PREMIUM_REQUIRED
  message: Premium required for structured meeting memo
  data: null
  error:
    field: memo_mode
    detail: structured mode requires premium entitlement

# ============================================================
# 9. SHARE ACTION SHEET SUBMIT
# ============================================================

screen_action:
- share_action_submit

request:
  object_type: rough_estimate|opportunity_memo|meeting_memo
  object_id: string
  target_user_id: string

response_success:
  success: true
  code: SHARE_ACTION_ACCEPTED
  message: Share action accepted
  data:
    object_type: string
    object_id: string
    target_user_id: string
    share_state: share_pending

# ============================================================
# 10. ERP PUBLICATION ACTION
# ============================================================

screen_action:
- erp_publication_submit

request:
  estimate_id: string
  revision_no: integer
  company_id: string
  payload_profile_code: string|null
  memo_summary: string|null

response_success:
  success: true
  code: ERP_PUBLICATION_SUBMITTED
  message: ERP publication submitted
  data:
    estimate_id: string
    publication_state: publication_pending
    approval_state: string

response_failure:
  success: false
  code: ERP_PUBLICATION_SUBMIT_REJECTED
  message: ERP publication submit rejected
  data: null
  error:
    field: estimate_id
    detail: estimate not publication-ready

# ============================================================
# 11. INVENTORY REFRESH ACTION
# ============================================================

screen_action:
- inventory_refresh_submit

request:
  estimate_id: string|null
  line_item_id: string|null
  item_code: string
  company_id: string|null

response_success:
  success: true
  code: INVENTORY_REFRESH_READY
  message: Inventory refresh completed
  data:
    item_code: string
    reference_status: success_fresh|success_cached|stale|failed|unknown
    available_quantity: number|null
    reserved_quantity: number|null
    inbound_quantity: number|null
    checked_at: string|null
    source_system: string|null
    is_cached: boolean

# ============================================================
# 12. PREMIUM GATE CHECK
# ============================================================

screen_action:
- premium_gate_check

request:
  target_feature: structured_meeting_memo|qa_management|estimate_templates

response_success:
  success: true
  code: PREMIUM_GATE_RESOLVED
  message: Premium gate resolved
  data:
    target_feature: string
    entitlement_state: inactive|active|grace|expired|unknown
    allowed: boolean
    upgrade_required: boolean

# ============================================================
# 13. QA CREATE SCREEN SUBMIT
# ============================================================

screen_action:
- qa_create_submit

request:
  estimate_id: string
  question_text: string
  owner_user_id: string|null
  due_date: string|null

response_success:
  success: true
  code: QA_CREATE_ACCEPTED
  message: QA create accepted
  data:
    qa_id: string
    estimate_id: string
    qa_status: open
    sync_state: local_only|pending_push

response_failure:
  success: false
  code: PREMIUM_REQUIRED
  message: Premium required for QA management
  data: null
  error:
    field: estimate_id
    detail: QA management is premium-gated

# ============================================================
# 14. QA UPDATE SCREEN SUBMIT
# ============================================================

screen_action:
- qa_update_submit

request:
  qa_id: string
  answer_text: string|null
  qa_status: open|pending|answered|closed
  owner_user_id: string|null
  due_date: string|null

response_success:
  success: true
  code: QA_UPDATE_ACCEPTED
  message: QA update accepted
  data:
    qa_id: string
    qa_status: string
    sync_state: local_only|pending_push

# ============================================================
# 15. TEMPLATE APPLY SCREEN SUBMIT
# ============================================================

screen_action:
- template_apply_submit

request:
  estimate_id: string
  template_id: string

response_success:
  success: true
  code: TEMPLATE_APPLY_ACCEPTED
  message: Template apply accepted
  data:
    estimate_id: string
    template_id: string
    subtotal_amount: number
    tax_amount: number
    total_amount: number
    sync_state: local_only|pending_push

response_failure:
  success: false
  code: PREMIUM_REQUIRED
  message: Premium required for this template action
  data: null
  error:
    field: template_id
    detail: template is premium-only or editing requires premium

# ============================================================
# ESTIMATE LOCAL STORE EXACT CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the exact local-store contracts
for EstimateCreator offline-capable persistence.

It defines canonical locally persisted object shapes for:

- estimate header
- estimate lines
- opportunity memo
- meeting memo
- sync state
- pending operation
- launch context
- inventory cache
- premium entitlement cache

# ============================================================
# 2. LOCAL ESTIMATE RECORD
# ============================================================

local_object:
- local_estimate_record

shape:
  estimate_id: string
  workspace_id: string
  company_id: string
  estimate_number: string|null
  estimate_class: rough_estimate|local_formal_estimate
  title: string
  customer_id: string
  customer_name_snapshot: string
  customer_contact_name_snapshot: string|null
  currency_code: string
  issue_date: string
  valid_until: string|null
  subtotal_amount: number
  tax_amount: number
  total_amount: number
  estimate_status: draft|review_ready|publication_ready|archived
  approval_state: not_required|not_requested|approval_pending|approved|rejected
  publication_state: not_requested|publication_prepared|publication_pending|publication_completed|publication_rejected|publication_failed
  sync_state: local_only|pending_push|synced|conflict|failed
  share_state: private|share_pending|shared_in_app|share_revoked
  current_revision_no: integer
  is_local_formal_use: boolean
  created_by: string
  created_at: string
  updated_by: string
  updated_at: string
  is_deleted: boolean

# ============================================================
# 3. LOCAL ESTIMATE LINE ITEM
# ============================================================

local_object:
- local_estimate_line_item

shape:
  line_item_id: string
  estimate_id: string
  revision_no: integer
  line_no: integer
  item_type: product|service|misc
  item_code: string|null
  item_name: string
  description: string|null
  quantity: number
  unit_name: string
  unit_price: number
  discount_type: none|percent|fixed_amount
  discount_value: number
  tax_category: string
  tax_rate_snapshot: number
  line_subtotal: number
  line_tax_amount: number
  line_total: number
  inventory_reference_state: none|cached|fresh|stale|failed
  inventory_reference_value: number|null
  sort_order: integer
  created_at: string
  updated_at: string
  is_deleted: boolean

# ============================================================
# 4. LOCAL OPPORTUNITY MEMO
# ============================================================

local_object:
- local_opportunity_memo

shape:
  opportunity_memo_id: string
  estimate_id: string
  customer_id: string
  memo_text: string
  share_state: private|share_pending|shared_in_app|share_revoked
  sync_state: local_only|pending_push|synced|conflict|failed
  created_by: string
  created_at: string
  updated_by: string
  updated_at: string
  is_deleted: boolean

# ============================================================
# 5. LOCAL MEETING MEMO
# ============================================================

local_object:
- local_meeting_memo

shape:
  meeting_memo_id: string
  estimate_id: string
  memo_mode: free_form|structured
  memo_text: string|null
  template_code: string|null
  is_premium_format: boolean
  share_state: private|share_pending|shared_in_app|share_revoked
  sync_state: local_only|pending_push|synced|conflict|failed
  created_by: string
  created_at: string
  updated_by: string
  updated_at: string
  is_deleted: boolean

# ============================================================
# 6. LOCAL SYNC STATE
# ============================================================

local_object:
- local_sync_state

shape:
  sync_state_id: string
  object_type: estimate_record|estimate_line_item|opportunity_memo|meeting_memo|qa_record|template_record
  object_id: string
  local_version: integer
  remote_version: integer|null
  sync_status: local_only|pending_push|synced|conflict|failed
  last_sync_at: string|null
  last_sync_result: string|null
  conflict_state: none|local_remote_diverged|remote_deleted|publication_overlap|share_overlap
  pending_operation_count: integer
  updated_at: string

# ============================================================
# 7. LOCAL PENDING OPERATION
# ============================================================

local_object:
- local_pending_operation

shape:
  pending_operation_id: string
  object_type: estimate_record|estimate_line_item|opportunity_memo|meeting_memo|qa_record|template_record|share_request|publication_request|inventory_reference_request
  object_id: string
  operation_type: sync_push|sync_pull|share_request|share_revoke|publication_prepare|publication_request|memo_update|inventory_reference_request|premium_gate_refresh
  payload_snapshot_json: string
  queue_state: queued|running|completed|failed|blocked
  enqueue_at: string
  execute_after: string|null
  last_attempt_at: string|null
  attempt_count: integer
  last_error_code: string|null

# ============================================================
# 8. LOCAL LAUNCH CONTEXT
# ============================================================

local_object:
- local_launch_context

shape:
  launch_context_id: string
  launch_type: standalone|deeplink
  source_app: string|null
  source_screen: string|null
  launch_mode: string|null
  estimate_id: string|null
  customer_id: string|null
  opportunity_id: string|null
  draft_id: string|null
  readonly: boolean
  received_at: string

# ============================================================
# 9. LOCAL INVENTORY CACHE
# ============================================================

local_object:
- local_inventory_cache

shape:
  inventory_cache_id: string
  estimate_id: string|null
  line_item_id: string|null
  item_code: string
  reference_status: success_fresh|success_cached|stale|failed|unknown
  available_quantity: number|null
  reserved_quantity: number|null
  inbound_quantity: number|null
  checked_at: string|null
  source_system: string|null
  is_cached: boolean
  cache_expire_at: string|null

# ============================================================
# 10. LOCAL PREMIUM ENTITLEMENT CACHE
# ============================================================

local_object:
- local_premium_entitlement_cache

shape:
  premium_state_id: string
  owner_scope_type: user|workspace|application
  owner_scope_id: string
  premium_plan_code: string|null
  entitlement_state: inactive|active|grace|expired|unknown
  is_active: boolean
  activated_at: string|null
  expired_at: string|null
  grace_until: string|null
  last_verified_at: string|null
  source_of_truth: string|null

# ============================================================
# 11. STORAGE RULE
# ============================================================

All local objects must preserve exact field names and exact state values.

Local persistence must not:
- omit required nullable fields
- collapse state values
- replace publication state with sync state
- replace entitlement state with generic boolean only

# ============================================================
# ESTIMATE SYNC QUEUE EXACT CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the exact contract for
sync queue, replay, and conflict handling.

# ============================================================
# 2. QUEUE ENQUEUE
# ============================================================

operation:
- queue_enqueue

request:
  pending_operation_id: string
  object_type: string
  object_id: string
  operation_type: string
  payload_snapshot_json: string
  execute_after: string|null

response_success:
  success: true
  code: QUEUE_ENQUEUED
  message: Pending operation enqueued
  data:
    pending_operation_id: string
    queue_state: queued
    enqueue_at: string

# ============================================================
# 3. QUEUE REPLAY START
# ============================================================

operation:
- queue_replay_start

request:
  replay_scope: all|sync_only|share_only|publication_only
  max_batch_size: integer

response_success:
  success: true
  code: QUEUE_REPLAY_STARTED
  message: Queue replay started
  data:
    replay_scope: string
    queued_count: integer
    started_at: string

# ============================================================
# 4. QUEUE REPLAY ITEM RESULT
# ============================================================

operation:
- queue_replay_item_result

request:
  pending_operation_id: string

response_success:
  success: true
  code: QUEUE_REPLAY_ITEM_RESULT
  message: Queue replay item processed
  data:
    pending_operation_id: string
    queue_state: completed|failed|blocked
    last_attempt_at: string
    attempt_count: integer
    last_error_code: string|null

# ============================================================
# 5. SYNC PUSH RESULT
# ============================================================

operation:
- sync_push_result

request:
  object_type: string
  object_id: string

response_success:
  success: true
  code: SYNC_PUSH_RESULT_READY
  message: Sync push result ready
  data:
    object_type: string
    object_id: string
    sync_status: synced|conflict|failed
    remote_version: integer|null
    conflict_state: none|local_remote_diverged|remote_deleted|publication_overlap|share_overlap
    last_sync_at: string|null

# ============================================================
# 6. SYNC PULL RESULT
# ============================================================

operation:
- sync_pull_result

request:
  object_type: string
  object_id: string|null
  since_version: integer|null

response_success:
  success: true
  code: SYNC_PULL_RESULT_READY
  message: Sync pull result ready
  data:
    items:
      - object_type: string
        object_id: string
        remote_version: integer
        payload_snapshot_json: string
    pulled_at: string

# ============================================================
# 7. CONFLICT RESOLUTION SUBMIT
# ============================================================

operation:
- conflict_resolution_submit

request:
  object_type: string
  object_id: string
  resolution_type: local_wins_manual|remote_wins_manual|merged_manual|retry_required|blocked_until_review
  merged_payload_snapshot_json: string|null

response_success:
  success: true
  code: CONFLICT_RESOLUTION_ACCEPTED
  message: Conflict resolution accepted
  data:
    object_type: string
    object_id: string
    sync_status: pending_push|synced|blocked
    conflict_state: none|local_remote_diverged|remote_deleted|publication_overlap|share_overlap

# ============================================================
# ESTIMATE API ENDPOINT CATALOG
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the endpoint-level catalog for EstimateCreator.

It does not require final transport technology,
but it fixes logical endpoint boundaries and ownership.

# ============================================================
# 2. ENTRY / SESSION ENDPOINTS
# ============================================================

- POST /estimatecreator/entry/standalone/resolve
  purpose:
  resolve standalone entry context

- POST /estimatecreator/entry/deeplink/resolve
  purpose:
  resolve deeplink entry context

- POST /estimatecreator/session/shared/resolve
  purpose:
  resolve reusable shared BusinessOS session for deeplink entry

# ============================================================
# 3. ESTIMATE CORE ENDPOINTS
# ============================================================

- POST /estimatecreator/estimates
  purpose:
  create estimate

- GET /estimatecreator/estimates
  purpose:
  list estimates

- GET /estimatecreator/estimates/{estimate_id}
  purpose:
  load estimate detail

- PATCH /estimatecreator/estimates/{estimate_id}/header
  purpose:
  update estimate header

- PUT /estimatecreator/estimates/{estimate_id}/lines
  purpose:
  replace estimate lines

# ============================================================
# 4. MEMO ENDPOINTS
# ============================================================

- PUT /estimatecreator/estimates/{estimate_id}/opportunity-memo
  purpose:
  update opportunity memo

- PUT /estimatecreator/estimates/{estimate_id}/meeting-memo
  purpose:
  update meeting memo

# ============================================================
# 5. SHARE ENDPOINTS
# ============================================================

- POST /estimatecreator/share/request
  purpose:
  create app-internal share request

- POST /estimatecreator/share/revoke
  purpose:
  revoke app-internal share

# ============================================================
# 6. ERP PUBLICATION ENDPOINTS
# ============================================================

- POST /estimatecreator/publication/erp/request
  purpose:
  submit ERP rough estimate publication request

- GET /estimatecreator/publication/erp/result/{estimate_id}
  purpose:
  refresh ERP publication result

# ============================================================
# 7. INVENTORY ENDPOINTS
# ============================================================

- POST /estimatecreator/inventory/reference/request
  purpose:
  request inventory reference refresh

# ============================================================
# 8. PREMIUM / ENTITLEMENT ENDPOINTS
# ============================================================

- POST /estimatecreator/premium/entitlement/resolve
  purpose:
  resolve premium entitlement state

# ============================================================
# 9. TEMPLATE ENDPOINTS
# ============================================================

- POST /estimatecreator/templates/apply
  purpose:
  apply template to estimate

# ============================================================
# 10. QA ENDPOINTS
# ============================================================

- POST /estimatecreator/qa
  purpose:
  create QA

- PATCH /estimatecreator/qa/{qa_id}
  purpose:
  update QA

# ============================================================
# 11. LOCAL / SYNC SUPPORT ENDPOINTS
# ============================================================

- POST /estimatecreator/sync/queue/enqueue
  purpose:
  enqueue pending operation

- POST /estimatecreator/sync/queue/replay/start
  purpose:
  start queue replay

- GET /estimatecreator/sync/queue/replay/result/{pending_operation_id}
  purpose:
  load replay item result

- GET /estimatecreator/sync/push/result
  purpose:
  load sync push result

- GET /estimatecreator/sync/pull/result
  purpose:
  load sync pull result

- POST /estimatecreator/sync/conflict/resolve
  purpose:
  submit conflict resolution

# ============================================================
# 12. OWNERSHIP RULE
# ============================================================

Endpoint responsibilities must remain explicit.

Do not collapse:
- entry/session
- core estimate
- memo
- share
- publication
- inventory
- premium
- local/sync

into one ambiguous action surface.

# ============================================================
# ESTIMATE SCREEN ACTION TO ENDPOINT MAPPING
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document maps screen actions
to exact logical endpoints.

# ============================================================
# 2. ENTRY
# ============================================================

screen_action:
- login_screen_submit
endpoint:
- POST /estimatecreator/entry/standalone/resolve

screen_action:
- deeplink_entry_open
endpoint:
- POST /estimatecreator/entry/deeplink/resolve
- POST /estimatecreator/session/shared/resolve

# ============================================================
# 3. ESTIMATE LIST / DETAIL
# ============================================================

screen_action:
- estimate_list_load
endpoint:
- GET /estimatecreator/estimates

screen_action:
- estimate_detail_load
endpoint:
- GET /estimatecreator/estimates/{estimate_id}

# ============================================================
# 4. ESTIMATE EDITOR
# ============================================================

screen_action:
- estimate_editor_save
endpoint:
- POST /estimatecreator/estimates
or
- PATCH /estimatecreator/estimates/{estimate_id}/header
- PUT /estimatecreator/estimates/{estimate_id}/lines

# ============================================================
# 5. MEMOS
# ============================================================

screen_action:
- opportunity_memo_save
endpoint:
- PUT /estimatecreator/estimates/{estimate_id}/opportunity-memo

screen_action:
- meeting_memo_save
endpoint:
- PUT /estimatecreator/estimates/{estimate_id}/meeting-memo

# ============================================================
# 6. SHARE
# ============================================================

screen_action:
- share_action_submit
endpoint:
- POST /estimatecreator/share/request

screen_action:
- share_revoke_submit
endpoint:
- POST /estimatecreator/share/revoke

# ============================================================
# 7. ERP PUBLICATION
# ============================================================

screen_action:
- erp_publication_submit
endpoint:
- POST /estimatecreator/publication/erp/request

screen_action:
- erp_publication_result_refresh
endpoint:
- GET /estimatecreator/publication/erp/result/{estimate_id}

# ============================================================
# 8. INVENTORY
# ============================================================

screen_action:
- inventory_refresh_submit
endpoint:
- POST /estimatecreator/inventory/reference/request

# ============================================================
# 9. PREMIUM
# ============================================================

screen_action:
- premium_gate_check
endpoint:
- POST /estimatecreator/premium/entitlement/resolve

# ============================================================
# 10. TEMPLATE
# ============================================================

screen_action:
- template_apply_submit
endpoint:
- POST /estimatecreator/templates/apply

# ============================================================
# 11. QA
# ============================================================

screen_action:
- qa_create_submit
endpoint:
- POST /estimatecreator/qa

screen_action:
- qa_update_submit
endpoint:
- PATCH /estimatecreator/qa/{qa_id}

# ============================================================
# 12. OFFLINE / SYNC
# ============================================================

screen_action:
- queue_enqueue
endpoint:
- POST /estimatecreator/sync/queue/enqueue

screen_action:
- queue_replay_start
endpoint:
- POST /estimatecreator/sync/queue/replay/start

screen_action:
- queue_replay_item_result
endpoint:
- GET /estimatecreator/sync/queue/replay/result/{pending_operation_id}

screen_action:
- sync_push_result_load
endpoint:
- GET /estimatecreator/sync/push/result

screen_action:
- sync_pull_result_load
endpoint:
- GET /estimatecreator/sync/pull/result

screen_action:
- conflict_resolution_submit
endpoint:
- POST /estimatecreator/sync/conflict/resolve


# ============================================================
# ESTIMATE LOCALE MULTICURRENCY CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Fixed locale/currency support fields:

- ui_locale
- customer_preferred_locale
- template_locale
- export_locale
- estimate_currency_code
- customer_preferred_currency_code
- currency_display_locale

Rules:
- payload field names remain English-fixed
- locale affects labels/messages/templates/output
- currency affects display/output formatting
- free text is not automatically translated


# ============================================================
# ESTIMATE CUSTOMER DELIVERY CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Customer delivery channels:

- pdf_export
- email
- readonly_link

Representative delivery-support fields:

- delivery_channel
- delivery_locale
- delivery_currency_code
- readonly_link_id
- pdf_artifact_id
- email_target
- delivery_state
- presented_at

# ============================================================
# ESTIMATE DELIVERY LOCALE EXACT PAYLOAD CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes exact request / response payloads
for multilingual, multicurrency-display,
customer delivery,
and customer response operations.

Principles:
- field names remain English-fixed
- locale affects display/output only
- customer delivery is distinct from ERP publication
- readonly links never imply write capability
- customer response is manual-record based in current phase

# ============================================================
# 2. COMMON RESPONSE ENVELOPE
# ============================================================

response_envelope:
  success: boolean
  code: string
  message: string
  data: object|null
  error:
    field: string|null
    detail: string|null

# ============================================================
# 3. UI LOCALE RESOLVE
# ============================================================

operation:
- resolve_ui_locale

request:
  user_id: string
  requested_locale: string|null
  system_locale: string|null

response_success:
  success: true
  code: UI_LOCALE_RESOLVED
  message: UI locale resolved
  data:
    ui_locale: string
    fallback_applied: boolean

# ============================================================
# 4. CUSTOMER PREFERRED LOCALE SAVE
# ============================================================

operation:
- save_customer_preferred_locale

request:
  customer_id: string
  preferred_locale_code: string

response_success:
  success: true
  code: CUSTOMER_PREFERRED_LOCALE_SAVED
  message: Customer preferred locale saved
  data:
    customer_id: string
    preferred_locale_code: string
    updated_at: string

# ============================================================
# 5. CUSTOMER PREFERRED CURRENCY SAVE
# ============================================================

operation:
- save_customer_preferred_currency

request:
  customer_id: string
  preferred_currency_code: string

response_success:
  success: true
  code: CUSTOMER_PREFERRED_CURRENCY_SAVED
  message: Customer preferred currency saved
  data:
    customer_id: string
    preferred_currency_code: string
    updated_at: string

# ============================================================
# 6. DELIVERY PDF EXPORT
# ============================================================

operation:
- export_estimate_pdf

request:
  estimate_id: string
  export_locale: string
  delivery_currency_code: string
  template_locale_variant_id: string|null
  proposal_summary_template_id: string|null

response_success:
  success: true
  code: ESTIMATE_PDF_EXPORTED
  message: Estimate PDF exported
  data:
    delivery_record_id: string
    delivery_channel: pdf_export
    delivery_state: sent
    pdf_artifact_id: string
    export_locale: string
    delivery_currency_code: string
    presented_at: string

response_failure:
  success: false
  code: ESTIMATE_PDF_EXPORT_FAILED
  message: Estimate PDF export failed
  data: null
  error:
    field: estimate_id|export_locale|null
    detail: export failed or invalid locale/template input

# ============================================================
# 7. DELIVERY EMAIL SEND
# ============================================================

operation:
- send_estimate_email

request:
  estimate_id: string
  email_target: string
  delivery_locale: string
  delivery_currency_code: string
  subject_template_key: string|null
  body_template_key: string|null
  template_locale_variant_id: string|null
  proposal_summary_template_id: string|null

response_success:
  success: true
  code: ESTIMATE_EMAIL_SENT
  message: Estimate email sent
  data:
    delivery_record_id: string
    delivery_channel: email
    delivery_state: sent
    email_target: string
    delivery_locale: string
    delivery_currency_code: string
    presented_at: string

response_failure:
  success: false
  code: ESTIMATE_EMAIL_SEND_FAILED
  message: Estimate email send failed
  data: null
  error:
    field: email_target|string|null
    detail: invalid target or delivery failure

# ============================================================
# 8. READONLY LINK CREATE
# ============================================================

operation:
- create_estimate_readonly_link

request:
  estimate_id: string
  delivery_locale: string
  delivery_currency_code: string
  expires_at: string|null

response_success:
  success: true
  code: ESTIMATE_READONLY_LINK_CREATED
  message: Readonly link created
  data:
    delivery_record_id: string
    link_id: string
    delivery_channel: readonly_link
    delivery_state: sent
    readonly: true
    expires_at: string|null
    presented_at: string

response_failure:
  success: false
  code: ESTIMATE_READONLY_LINK_CREATE_FAILED
  message: Readonly link creation failed
  data: null
  error:
    field: estimate_id|null
    detail: invalid estimate or link generation failure

# ============================================================
# 9. READONLY LINK REVOKE
# ============================================================

operation:
- revoke_estimate_readonly_link

request:
  link_id: string

response_success:
  success: true
  code: ESTIMATE_READONLY_LINK_REVOKED
  message: Readonly link revoked
  data:
    link_id: string
    link_state: revoked
    revoked_at: string

# ============================================================
# 10. DELIVERY HISTORY LOAD
# ============================================================

operation:
- load_estimate_delivery_history

request:
  estimate_id: string

response_success:
  success: true
  code: ESTIMATE_DELIVERY_HISTORY_READY
  message: Estimate delivery history loaded
  data:
    items:
      - delivery_record_id: string
        delivery_channel: pdf_export|email|readonly_link
        delivery_state: not_sent|sent|delivery_failed|opened|expired
        delivery_locale: string
        delivery_currency_code: string
        presented_total_amount: number|null
        presented_at: string
        email_target: string|null
        readonly_link_id: string|null
        pdf_artifact_id: string|null

# ============================================================
# 11. OPEN LOG LOAD
# ============================================================

operation:
- load_estimate_open_logs

request:
  estimate_id: string

response_success:
  success: true
  code: ESTIMATE_OPEN_LOGS_READY
  message: Estimate open logs loaded
  data:
    items:
      - open_log_id: string
        link_id: string|null
        opened_at: string
        viewer_type: string|null
        locale: string|null
        device_hint: string|null
        ip_hint_if_allowed: string|null

# ============================================================
# 12. CUSTOMER RESPONSE SAVE
# ============================================================

operation:
- save_estimate_customer_response

request:
  estimate_id: string
  customer_response_state: no_response|accepted|revision_requested|rejected
  response_note: string|null
  responded_at: string|null

response_success:
  success: true
  code: ESTIMATE_CUSTOMER_RESPONSE_SAVED
  message: Estimate customer response saved
  data:
    customer_response_id: string
    estimate_id: string
    customer_response_state: string
    responded_at: string|null
    updated_at: string

# ============================================================
# 13. TEMPLATE LOCALE VARIANT LOAD
# ============================================================

operation:
- load_template_locale_variants

request:
  template_id: string
  locale_code: string|null
  industry_category_code: string|null

response_success:
  success: true
  code: TEMPLATE_LOCALE_VARIANTS_READY
  message: Template locale variants loaded
  data:
    items:
      - template_locale_variant_id: string
        template_id: string
        locale_code: string
        localized_template_name: string
        localized_summary_text: string|null
        industry_category_code: string|null
        is_enabled: boolean

# ============================================================
# 14. PROPOSAL SUMMARY TEMPLATE APPLY
# ============================================================

operation:
- apply_proposal_summary_template

request:
  estimate_id: string
  proposal_summary_template_id: string

response_success:
  success: true
  code: PROPOSAL_SUMMARY_TEMPLATE_APPLIED
  message: Proposal summary template applied
  data:
    estimate_id: string
    proposal_summary_template_id: string
    sync_state: local_only|pending_push
    updated_at: string

# ============================================================
# ESTIMATE DELIVERY STATE EXACT CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes exact request / response payloads
for delivery state transitions,
resend behavior,
expiry,
revocation,
open tracking,
and response-basis traceability.

Principles:
- delivery state is distinct from publication state
- resend does not overwrite prior delivery meaning
- opened does not imply accepted
- response basis must point to a delivered revision basis
- readonly link state and delivery state must remain explicit

# ============================================================
# 2. COMMON RESPONSE ENVELOPE
# ============================================================

response_envelope:
  success: boolean
  code: string
  message: string
  data: object|null
  error:
    field: string|null
    detail: string|null

# ============================================================
# 3. DELIVERY RECORD CREATE
# ============================================================

operation:
- create_delivery_record

request:
  estimate_id: string
  revision_snapshot_id: string
  delivery_channel: pdf_export|email|readonly_link
  delivery_locale: string
  delivery_currency_code: string
  email_target: string|null
  readonly_link_id: string|null
  pdf_artifact_id: string|null

response_success:
  success: true
  code: DELIVERY_RECORD_CREATED
  message: Delivery record created
  data:
    delivery_record_id: string
    estimate_id: string
    revision_snapshot_id: string
    delivery_channel: string
    delivery_state: sent
    presented_at: string

# ============================================================
# 4. DELIVERY STATE TRANSITION SUBMIT
# ============================================================

operation:
- submit_delivery_state_transition

request:
  delivery_record_id: string
  from_state: not_sent|sent|delivery_failed|opened|expired|revoked
  to_state: sent|delivery_failed|opened|expired|revoked
  reason_code: string|null
  note: string|null

response_success:
  success: true
  code: DELIVERY_STATE_TRANSITION_ACCEPTED
  message: Delivery state transition accepted
  data:
    delivery_state_transition_id: string
    delivery_record_id: string
    from_state: string
    to_state: string
    changed_at: string

response_failure:
  success: false
  code: DELIVERY_STATE_TRANSITION_REJECTED
  message: Delivery state transition rejected
  data: null
  error:
    field: to_state|string|null
    detail: invalid transition or missing delivery record

# ============================================================
# 5. READONLY LINK EXPIRE
# ============================================================

operation:
- expire_readonly_link

request:
  link_id: string
  reason_code: string|null

response_success:
  success: true
  code: READONLY_LINK_EXPIRED
  message: Readonly link expired
  data:
    link_id: string
    link_state: expired
    expired_at: string

# ============================================================
# 6. READONLY LINK REVOKE
# ============================================================

operation:
- revoke_readonly_link

request:
  link_id: string
  reason_code: string|null

response_success:
  success: true
  code: READONLY_LINK_REVOKED
  message: Readonly link revoked
  data:
    link_id: string
    link_state: revoked
    revoked_at: string

# ============================================================
# 7. DELIVERY RESEND
# ============================================================

operation:
- resend_delivery

request:
  prior_delivery_record_id: string
  estimate_id: string
  revision_snapshot_id: string
  delivery_channel: pdf_export|email|readonly_link
  delivery_locale: string
  delivery_currency_code: string
  email_target: string|null
  expires_at: string|null

response_success:
  success: true
  code: DELIVERY_RESEND_ACCEPTED
  message: Delivery resend accepted
  data:
    prior_delivery_record_id: string
    new_delivery_record_id: string
    revision_snapshot_id: string
    delivery_channel: string
    delivery_state: sent
    presented_at: string

response_failure:
  success: false
  code: DELIVERY_RESEND_REJECTED
  message: Delivery resend rejected
  data: null
  error:
    field: prior_delivery_record_id|string|null
    detail: invalid prior delivery or resend input

# ============================================================
# 8. OPEN EVENT APPEND
# ============================================================

operation:
- append_delivery_open_event

request:
  estimate_id: string
  delivery_record_id: string|null
  link_id: string|null
  opened_at: string
  viewer_type: string|null
  locale: string|null
  device_hint: string|null
  ip_hint_if_allowed: string|null

response_success:
  success: true
  code: DELIVERY_OPEN_EVENT_APPENDED
  message: Delivery open event appended
  data:
    open_log_id: string
    estimate_id: string
    delivery_record_id: string|null
    link_id: string|null
    opened_at: string
    aggregate_first_opened_at: string|null
    aggregate_latest_opened_at: string
    aggregate_open_count: integer

# ============================================================
# 9. DELIVERY HISTORY LOAD
# ============================================================

operation:
- load_delivery_history_detail

request:
  estimate_id: string

response_success:
  success: true
  code: DELIVERY_HISTORY_DETAIL_READY
  message: Delivery history detail ready
  data:
    items:
      - delivery_record_id: string
        revision_snapshot_id: string
        delivery_channel: pdf_export|email|readonly_link
        delivery_state: not_sent|sent|delivery_failed|opened|expired|revoked
        artifact_type: pdf|readonly_link_payload|email_render|null
        artifact_reference_id: string|null
        delivery_locale: string
        delivery_currency_code: string
        presented_at: string
        latest_opened_at: string|null
        open_count: integer
        customer_response_state: no_response|accepted|revision_requested|rejected|null

# ============================================================
# 10. RESPONSE BASIS CREATE
# ============================================================

operation:
- create_customer_response_basis

request:
  customer_response_id: string
  estimate_id: string
  revision_snapshot_id: string
  delivery_record_id: string
  delivery_artifact_id: string|null

response_success:
  success: true
  code: CUSTOMER_RESPONSE_BASIS_CREATED
  message: Customer response basis created
  data:
    customer_response_basis_id: string
    customer_response_id: string
    revision_snapshot_id: string
    delivery_record_id: string
    delivery_artifact_id: string|null
    created_at: string

response_failure:
  success: false
  code: CUSTOMER_RESPONSE_BASIS_REJECTED
  message: Customer response basis rejected
  data: null
  error:
    field: revision_snapshot_id|string|null
    detail: response basis must point to a delivered revision basis

# ============================================================
# 11. DELIVERY BADGE SUMMARY LOAD
# ============================================================

operation:
- load_delivery_badge_summary

request:
  estimate_id: string

response_success:
  success: true
  code: DELIVERY_BADGE_SUMMARY_READY
  message: Delivery badge summary ready
  data:
    has_sent: boolean
    has_opened: boolean
    has_expiring_soon: boolean
    has_failed_delivery: boolean
    latest_delivery_state: string|null
    latest_customer_response_state: string|null

# ============================================================
# ESTIMATE CREATOR INTEGRATION
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. INTEGRATION POSITION
# ============================================================

EstimateCreator integrates with common BusinessOS capabilities
and ERP-connected services.

The application itself remains a business application,
not the global authority hub.

# ============================================================
# 2. PRIMARY INTEGRATION DOMAINS
# ============================================================

Primary integration domains:

- auth/session context
- sync capability
- app-internal sharing capability
- shared ERP publication capability
- ERP inventory reference capability
- premium license / entitlement state

# ============================================================
# 3. CONTRACT STYLE
# ============================================================

Integration contracts must preserve explicit status separation for:

- local save
- sync result
- share result
- publication result
- inventory freshness result
- premium entitlement result


# ============================================================
# 4. DEEPLINK AND SESSION INTEGRATION
# ============================================================

EstimateCreator integrates with BusinessOS-level shared session handling
for deeplink launch.

Deeplink may transport launch context,
but raw credentials must not be passed as deeplink business parameters.

Session identity should be resolved through shared session infrastructure,
not through credential-bearing route payloads.


# ============================================================
# 5. LOCALE / DELIVERY INTEGRATION
# ============================================================

EstimateCreator integrates with delivery/output surfaces for:

- PDF export
- email send
- readonly link generation
- locale-aware template selection
- currency-aware display formatting

These integrations remain customer-delivery support,
not ERP publication replacement.

# ============================================================
# ESTIMATE CREATOR INTEGRATION INDEX
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

- 060_OVERVIEW.md
- 060_INDEX.md
- 060_ESTIMATE_CREATOR_INTEGRATION.md
- 060110_ESTIMATE_API_INTEGRATION_CONTRACT.md
- 060120_ESTIMATE_SYNC_API_CONTRACT.md
- 060130_ESTIMATE_SHARE_API_CONTRACT.md
- 060140_ESTIMATE_ERP_PUBLISH_API_CONTRACT.md
- 060150_ESTIMATE_SHARED_ERP_PUBLICATION_INTEGRATION.md
- 060160_ESTIMATE_ERP_PUBLICATION_PAYLOAD_FIELD_MAP.md
- 060170_ESTIMATE_API_FIELD_SCHEMA.md
- 060180_ESTIMATE_INVENTORY_REFERENCE_INTEGRATION.md
- 060190_ESTIMATE_PREMIUM_FEATURE_LICENSE_INTEGRATION.md

# ============================================================
# ESTIMATE CREATOR INTEGRATION OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator Integration defines the external-facing
contracts and dependency boundaries of the application.

It covers:

- API contract expectations
- sync contract expectations
- share contract expectations
- ERP publication contract expectations
- inventory reference integration
- premium feature license state integration

# ============================================================
# ESTIMATE AUDIT AND HISTORY OPERATIONS
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Audit and history operations must record at least:

- estimate create
- estimate update
- estimate delete flag
- line item add/update/remove
- memo add/update/remove
- share request
- share revoke
- sync start/result
- publication request/result
- inventory reference execution
- template application
- QA status change
- premium gate denial where policy requires business trace

History must remain readable as business activity,
not only as low-level technical logs.

# ============================================================
# ESTIMATE AUDIT ACTION CODE OPERATIONS
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Typical audit action codes include:

- ESTIMATE_CREATE
- ESTIMATE_UPDATE
- ESTIMATE_DELETE_FLAG
- LINE_ITEM_ADD
- LINE_ITEM_UPDATE
- LINE_ITEM_REMOVE
- OPPORTUNITY_MEMO_UPDATE
- MEETING_MEMO_UPDATE
- SHARE_REQUEST
- SHARE_REVOKE
- SYNC_PUSH
- SYNC_PULL
- SYNC_CONFLICT
- ERP_PUBLICATION_REQUEST
- ERP_PUBLICATION_RESULT
- INVENTORY_REFERENCE
- TEMPLATE_APPLY
- QA_CREATE
- QA_UPDATE
- PREMIUM_GATE_DENY

Action code design must remain explicit and stable.

# ============================================================
# ESTIMATE ERROR CODE OPERATIONS
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Error operations must classify failures explicitly.

Representative categories:

- AUTH_ERROR
- OFFLINE_NOT_ALLOWED
- INVALID_ESTIMATE_STATE
- VALIDATION_FAILED
- SHARE_TARGET_INVALID
- SHARE_EXECUTION_FAILED
- SYNC_FAILED
- SYNC_CONFLICT
- ERP_PUBLICATION_REJECTED
- ERP_PUBLICATION_FAILED
- INVENTORY_REFERENCE_FAILED
- PREMIUM_PLAN_INACTIVE
- PREMIUM_PLAN_UNKNOWN
- TEMPLATE_APPLY_FAILED
- QA_OPERATION_DENIED

Operational handling must support retryability judgment where relevant.

# ============================================================
# ESTIMATE VALIDATION CODE OPERATIONS
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Representative validation domains:

- estimate header required fields
- line item required fields
- amount consistency
- publication readiness
- share eligibility
- premium feature eligibility
- inventory request eligibility
- local formal use eligibility

Validation outcomes must be deterministic and reviewable.

# ============================================================
# ESTIMATE CREATOR OPERATIONS
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. OPERATIONS PURPOSE
# ============================================================

EstimateCreator operational handling must keep the application usable,
auditable,
and recoverable across:

- normal online usage
- offline usage
- sync recovery
- share execution
- ERP publication execution
- premium feature access checks

# ============================================================
# 2. OPERATIONAL TRACKING TARGETS
# ============================================================

The following must be operationally trackable:

- login context state
- estimate creation/update
- memo creation/update
- share request / revoke
- sync attempt / result
- publication request / result
- inventory lookup
- premium entitlement gate outcome
- template application
- QA update

# ============================================================
# 3. OPERATIONAL SAFETY
# ============================================================

Operations must preserve explicit state separation.

In particular, operations must not confuse:

- local save success
- sync success
- share success
- publication success
- inventory freshness success
- premium entitlement verification success

# ============================================================
# 4. DAILY OPERATIONAL VIEW
# ============================================================

At minimum, operations should allow review of:

- pending sync count
- failed operations
- unresolved conflicts
- pending publication requests
- failed publication requests
- recent share actions
- offline backlog state

# ============================================================
# ESTIMATE CREATOR OPERATIONS INDEX
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

- 070_OVERVIEW.md
- 070_INDEX.md
- 070_ESTIMATE_CREATOR_OPERATIONS.md
- 070110_ESTIMATE_AUDIT_AND_HISTORY_OPERATIONS.md
- 070120_ESTIMATE_AUDIT_ACTION_CODE_OPERATIONS.md
- 070130_ESTIMATE_ERROR_CODE_OPERATIONS.md
- 070140_ESTIMATE_VALIDATION_CODE_OPERATIONS.md

# ============================================================
# ESTIMATE CREATOR OPERATIONS OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator Operations defines the operational handling rules
for audit,
history,
validation,
error handling,
and daily app operation support.

It ensures that the application remains
traceable,
reviewable,
and safe under normal and degraded conditions.

# ============================================================
# ESTIMATE ERP WIDE SHARE APPROVAL POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Estimate publication to ERP through shared BusinessOS capability
must follow the approval and publication governance
defined outside the local app.

The local app must reflect result states,
not invent them.

# ============================================================
# ESTIMATE SYNC CONFLICT POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Sync conflicts must be explicit and reviewable.

Silent overwrite of meaningful local or remote business data is prohibited.

When conflict exists,
automatic completion must pause until allowed resolution path is chosen.

# ============================================================
# ESTIMATE DATA PROTECTION POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator data must be protected in local and synced contexts.

At minimum:

- protected local storage is required
- user-target visibility must be explicit
- share scope must be controlled
- sensitive business content must not be exposed implicitly
- cached data must follow policy-controlled lifetime

# ============================================================
# ESTIMATE RELATIONSHIP VISIBILITY POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Estimate-related visibility must follow least-necessary access.

Access may come from:

- ownership
- explicit app share
- approved publication-linked visibility where applicable

Visibility expansion by inference is prohibited.

# ============================================================
# ESTIMATE AUDIT AND APPROVAL POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Auditability is mandatory for estimate-related business activity.

Approval-related activity must be distinguishable from
sync-only or local-edit-only activity.

Approval visibility must remain explicit in history and state displays.

# ============================================================
# ESTIMATE APPROVAL AND AUDIT CODE POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Approval and audit codes must remain stable,
explicit,
and semantically meaningful.

Codes must not collapse distinct business outcomes
into generic ambiguous results.

# ============================================================
# ESTIMATE ERROR CODE POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Error codes must be:

- explicit
- stable
- mappable to user-safe messages
- reviewable in operations

Generic undifferentiated failure signaling is discouraged.

# ============================================================
# ESTIMATE VALIDATION CODE POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Validation codes must correspond to deterministic rule failures.

Validation must cover at least:

- required fields
- amount consistency
- publication readiness
- share target eligibility
- premium gate eligibility
- inventory reference prerequisites

# ============================================================
# ESTIMATE OFFLINE USAGE POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Offline usage is allowed only within controlled boundaries.

Allowed offline:

- local drafting
- local memo editing
- local queueing
- cached template use
- cached premium read behavior where safe

Disallowed offline completion:

- live share completion
- live ERP publication completion
- live authoritative inventory confirmation
- entitlement refresh completion

# ============================================================
# ESTIMATE INVENTORY REFERENCE POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Inventory reference is advisory unless authoritative policy states otherwise.

The app must preserve freshness indicators
and clearly distinguish cached values from fresh online values.

# ============================================================
# ESTIMATE PREMIUM FEATURE POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Premium features include:

- structured meeting memo
- QA management
- estimate template registration and expanded template usage

Premium-only write actions must be denied
when entitlement is inactive or unknown.

Read-safe handling of existing premium-created records
should remain possible where policy permits.



# ============================================================
# BILLING BOUNDARY
# ============================================================

The billing boundary must preserve the essential rough-estimate workflow
in the Free plan.

Premium must be limited to structured and productivity-enhancing features.

Free plan retains at minimum:

- rough estimate create/edit
- opportunity memo
- meeting memo in free_form mode
- app-internal sharing
- ERP rough estimate publication request
- inventory reference
- offline draft usage

Premium unlocks:

- structured meeting memo
- QA management
- estimate templates
- expanded template set
- user template registration and editing

# ============================================================
# DOWNGRADE POLICY
# ============================================================

After premium downgrade or expiry,
safe read access to existing premium-created data
may remain available where policy permits.

Premium-only new writes and edits must be denied
when entitlement is inactive, expired, or unknown.

# ============================================================
# OFFLINE BILLING POLICY
# ============================================================

Offline premium behavior must rely on cached verified entitlement state.

If entitlement freshness cannot be trusted beyond policy bounds,
premium-only write operations must fail closed.


# ============================================================
# ESTIMATE CUSTOMER DELIVERY POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Customer delivery policy:

- support PDF export
- support email send
- support readonly link
- store delivery history
- store open logs where available
- allow manual customer response recording
- delivery/open states are audit-relevant


# ============================================================
# ESTIMATE LOCALE POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Locale policy:

- internal codes are not translated
- UI/resources are locale-aware
- customer preferred locale may override output locale
- template locale variants are allowed
- free text remains user-authored and untranslated


# ============================================================
# ESTIMATE PERMISSION POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This policy defines permission boundaries
for EstimateCreator objects and actions.

# ============================================================
# 2. PRIMARY ROLES
# ============================================================

Primary roles include:

- owner
- editor
- viewer
- share_target
- publication_operator
- premium_holder
- customer_readonly_viewer

# ============================================================
# 3. GENERAL RULES
# ============================================================

Permission rules:

- owner may view and edit owned estimate objects
- editor may edit only where explicitly allowed
- viewer may read only where explicitly allowed
- share_target visibility must remain bounded
- publication_operator may request publication only where permitted
- premium_holder status does not override object permission
- customer_readonly_viewer may only view via readonly delivery surface

# ============================================================
# 4. READONLY LINK RULE
# ============================================================

Readonly delivery link access must never expose:

- estimate edit
- memo edit
- share actions
- publication actions
- QA write
- template edit
- premium write actions

# ============================================================
# 5. DEEPLINK RULE
# ============================================================

Deeplink may provide context,
but must not elevate permission.

Readonly deeplink context must remain readonly.

# ============================================================
# 6. SHARE RULE
# ============================================================

Share visibility must not implicitly grant owner-level capability.

Shared users may be limited to:
- view only
or
- limited edit
according to explicit policy and object type.

# ============================================================
# 7. CUSTOMER VIEW RULE
# ============================================================

Customer-facing readonly viewing is not app-internal sharing.

It is a distinct permission route
with stricter capability limits.


# ============================================================
# ESTIMATE REVISION AUDIT POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Revision audit policy:

- meaningful estimate revisions must be snapshot-capable
- delivered customer-facing artifacts must reference a revision snapshot
- customer response must be traceable to a delivered revision basis
- publication revision and customer-delivery revision must remain distinguishable
- revision snapshots are immutable in meaning once captured


# ============================================================
# ESTIMATE DELIVERY STATE POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Delivery state policy:

- delivery state must be explicit
- delivery state must not be reused as publication state
- opened does not imply accepted
- expired does not imply rejected
- revoked must remain explicit where readonly link access is disabled
- resend must create traceable delivery history rather than overwrite prior delivery meaning

# ============================================================
# ESTIMATE CREATOR POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. ESTIMATE CLASS POLICY
# ============================================================

The default estimate class is rough_estimate.

Local formal usage is allowed only where operation explicitly permits it,
and must remain clearly marked and auditable.

# ============================================================
# 2. SHARING POLICY
# ============================================================

App-internal sharing is allowed only to preconfigured users
through the shared BusinessOS sharing pattern.

Shareable objects are limited to:

- opportunity memo
- meeting memo
- rough estimate

Unbounded public sharing is prohibited.

# ============================================================
# 3. ERP PUBLICATION POLICY
# ============================================================

ERP publication must use the shared BusinessOS publication capability.

EstimateCreator may prepare requests,
but must not privately bypass the shared publication path.

Published classification must remain explicit as rough_estimate
unless a separate authoritative policy defines another route.

# ============================================================
# 4. OFFLINE POLICY
# ============================================================

Offline mode is a drafting and preparation mode.

Offline mode must not represent
live publication,
live approval completion,
or live inventory truth
as completed facts.

# ============================================================
# 5. INVENTORY POLICY
# ============================================================

Inventory values shown by EstimateCreator are reference values.

Any UI or workflow using cached or stale values
must visually communicate reduced freshness.

# ============================================================
# 6. PREMIUM FEATURE POLICY
# ============================================================

Premium features are gated additions,
not separate architecture branches.

Premium-only write actions must fail closed
when entitlement state is inactive or unknown.


# ============================================================
# 7. ENTRY POLICY
# ============================================================

Standalone launch and deeplink launch are equally valid primary entry paths.

Standalone launch must remain fully operable.

Deeplink launch may skip redundant login UI
when shared authenticated BusinessOS session context is valid.

# ============================================================
# 8. SHARED SESSION POLICY
# ============================================================

Shared-session reuse must still enforce:

- session validation
- authorization checks
- company/workspace context checks
- premium entitlement checks where applicable

# ============================================================
# 9. DEEPLINK PARAMETER POLICY
# ============================================================

Deeplink context is advisory until validated.

Raw credentials must not be transported as deeplink business parameters.


# ============================================================
# 10. BILLING POLICY
# ============================================================

EstimateCreator uses a two-tier billing model:

- Free
- Premium

Recommended Premium price:

- 500 JPY per user per month

Free plan must preserve the essential rough estimate workflow.

Premium is reserved for structured and reusable productivity features.

# ============================================================
# 11. ENTITLEMENT POLICY
# ============================================================

Premium entitlement must be evaluated using explicit entitlement state.

Representative states:

- inactive
- active
- grace
- expired
- unknown

unknown must fail closed for premium-only write operations.


# ============================================================
# 12. MULTILINGUAL / MULTICURRENCY POLICY
# ============================================================

EstimateCreator must keep internal identifiers, payload fields,
and state codes language-neutral and fixed.

Only display/output resources are localized.

Currency support is display/output oriented in the current phase,
not full accounting-source-of-truth currency governance.

# ============================================================
# 13. CUSTOMER DELIVERY POLICY
# ============================================================

Customer delivery actions are distinct from ERP publication.

Readonly customer delivery must not expose write capability.

Customer response is initially manual-record based.


# ============================================================
# 14. PLATFORM AND DEVICE POLICY
# ============================================================

EstimateCreator must support:

- iOS
- Android
- phone form factor
- tablet form factor

Policy rules:

- payload contract is device-neutral
- state model is device-neutral
- platform differences must not change business meaning
- phone and tablet may differ in layout only
- readonly / premium / publication / sync semantics must remain identical across devices

# ============================================================
# ESTIMATE CREATOR POLICY INDEX
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

- 080_OVERVIEW.md
- 080_INDEX.md
- 080_ESTIMATE_CREATOR_POLICY.md
- 080110_ERP_WIDE_SHARE_APPROVAL_POLICY.md
- 080120_ESTIMATE_SYNC_CONFLICT_POLICY.md
- 080130_ESTIMATE_DATA_PROTECTION_POLICY.md
- 080140_ESTIMATE_RELATIONSHIP_VISIBILITY_POLICY.md
- 080150_ESTIMATE_AUDIT_AND_APPROVAL_POLICY.md
- 080160_ESTIMATE_APPROVAL_AND_AUDIT_CODE_POLICY.md
- 080170_ESTIMATE_ERROR_CODE_POLICY.md
- 080180_ESTIMATE_VALIDATION_CODE_POLICY.md
- 080190_ESTIMATE_OFFLINE_USAGE_POLICY.md
- 080200_ESTIMATE_INVENTORY_REFERENCE_POLICY.md
- 080210_ESTIMATE_PREMIUM_FEATURE_POLICY.md

# ============================================================
# ESTIMATE CREATOR POLICY OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator Policy defines the operational and governance rules
that constrain runtime and business use.

It covers:

- estimate class rules
- offline rules
- sharing rules
- ERP publication rules
- inventory reference rules
- premium feature rules
- data protection and audit rules

# ============================================================
# LOGIN SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Login screen provides authenticated entry to EstimateCreator.

It must support both:

- normal online login
- offline entry using valid cached auth context

# ============================================================
# 2. PRIMARY UI ELEMENTS
# ============================================================

- app title
- account input
- password or auth action
- login button
- offline available badge
- last successful login context
- error message area
- loading indicator

# ============================================================
# 3. DISPLAY STATES
# ============================================================

Representative states:

- online_ready
- login_processing
- login_failed
- offline_available
- offline_not_available

# ============================================================
# 4. USER MESSAGES
# ============================================================

Representative messages:

- Ready to sign in
- Signing in
- Offline access available
- Offline access unavailable
- Authentication failed

# ============================================================
# 5. ACTION RULES
# ============================================================

When offline cached access is allowed,
the screen must explicitly state that the user is entering
in offline mode rather than normal online mode.

# ============================================================
# ESTIMATE LIST SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Estimate list screen provides the main operational entry
to all estimates managed in the app.

# ============================================================
# 2. PRIMARY UI ELEMENTS
# ============================================================

- search field
- filter button
- create estimate button
- estimate list
- sync state banner
- offline banner
- pending operation badge

# ============================================================
# 3. LIST ROW FIELDS
# ============================================================

Each row should display:

- estimate number
- title
- customer name
- total amount
- estimate class
- sync state
- publication state
- updated time

# ============================================================
# 4. FILTERS
# ============================================================

Recommended filters:

- all
- drafts
- pending sync
- conflicts
- publication pending
- publication failed
- shared
- archived

# ============================================================
# 5. EMPTY STATES
# ============================================================

Representative empty states:

- No estimates yet
- No results for current filter
- Offline data unavailable
- Sync required to load more items



Tablet adaptation:
- allow wider row density
- allow side-by-side filter panel where useful
- allow detail preview pane where useful

Phone adaptation:
- keep filter and list flow compact
- prefer single-column navigation

# ============================================================
# ESTIMATE DETAIL SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Estimate detail screen is the primary business summary view
for a selected estimate.

# ============================================================
# 2. PRIMARY SECTIONS
# ============================================================

- header summary
- customer summary
- amount summary
- line item section
- opportunity memo summary
- meeting memo summary
- inventory summary
- QA summary
- state badge section
- action section

# ============================================================
# 3. HEADER SUMMARY
# ============================================================

Header should show:

- estimate number
- title
- estimate class
- issue date
- valid until
- customer snapshot name

# ============================================================
# 4. STATE BADGES
# ============================================================

Detail screen should visibly show:

- Draft
- Offline
- Pending Sync
- Shared
- Approval Pending
- Publication Pending
- Published
- Publication Failed
- Conflict

# ============================================================
# 5. PRIMARY ACTIONS
# ============================================================

- edit
- share
- revoke share
- request publication
- refresh inventory
- open memo
- open meeting memo
- open QA
- apply template

# ============================================================
# 6. UX RULE
# ============================================================

The screen must never visually imply that local save means
ERP publication completion.



# ============================================================
# 7. DELIVERY EXTENSIONS
# ============================================================

Estimate detail screen should additionally show:

- PDF export action
- email send action
- readonly link action
- delivery history summary
- open log summary
- customer response summary
- locale / currency summary



Tablet detail adaptation:
- allow summary and line items side by side
- allow memo / QA / inventory summary panel in parallel
- reduce screen hops for review work

Phone detail adaptation:
- keep stacked sections
- prioritize vertical reading flow



Permission-aware detail behavior:

- owner/editor may see editable actions where allowed
- viewer may see readonly content only
- customer_readonly_viewer must see readonly delivery presentation only
- publication button must appear only when permission allows
- premium actions must still respect entitlement in addition to permission

# ============================================================
# SETTINGS SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Settings screen provides account,
device,
offline,
sync,
and premium status visibility.

# ============================================================
# 2. PRIMARY SECTIONS
# ============================================================

- account section
- sync section
- offline section
- premium section
- storage section
- app information section

# ============================================================
# 3. REPRESENTATIVE FIELDS
# ============================================================

- current user
- workspace
- company context
- last sync time
- pending sync count
- offline enabled state
- premium plan state
- protected storage state



# ============================================================
# 4. PREMIUM SECTION DETAIL
# ============================================================

Settings screen premium section should show:

- current plan name
- entitlement state
- last verified time
- expiry or grace information where available
- upgrade entry point



# ============================================================
# 4. PREMIUM SECTION DETAIL
# ============================================================

Settings screen premium section should show:

- current plan name
- entitlement state
- last verified time
- expiry or grace information where available
- upgrade entry point



Additional settings should include:

- default UI locale
- default export locale
- default currency display locale

# ============================================================
# SHARE TARGET SETTING SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This screen manages preconfigured users
who may receive app-internal shared content.

# ============================================================
# 2. PRIMARY UI ELEMENTS
# ============================================================

- target list
- add target button
- enable/disable toggle
- target scope label
- remove or disable action

# ============================================================
# 3. ROW DISPLAY
# ============================================================

Each target row should show:

- display name
- target user identifier summary
- scope
- enabled state

# ============================================================
# 4. COMMON COMPONENT RULE
# ============================================================

This screen should reuse the same common UI approach
as NameCardManager.

# ============================================================
# ERP SETTING SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

ERP setting screen shows ERP-related operational context
used by EstimateCreator.

# ============================================================
# 2. PRIMARY UI ELEMENTS
# ============================================================

- company context summary
- publication channel summary
- publication readiness hint
- latest publication result
- inventory integration status

# ============================================================
# 3. REPRESENTATIVE BADGES
# ============================================================

- ERP Connected
- Publication Disabled
- Approval Required
- Inventory Online
- Inventory Unavailable

# ============================================================
# ESTIMATE RELATIONSHIP INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Relationship interface covers visible associations between:

- estimate and memo
- estimate and share state
- estimate and publication state
- estimate and QA
- estimate and inventory reference result

# ============================================================
# ESTIMATE UI STATE INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Representative UI states include:

- offline
- syncing
- conflict
- share_pending
- publication_pending
- publication_failed
- inventory_cached
- premium_locked

UI state naming must remain explicit and user-comprehensible.



Additional billing-oriented UI states include:

- premium_active
- premium_inactive
- premium_grace
- premium_expired
- premium_unknown
- premium_locked

These states must remain distinct from sync/publication states.



Additional billing-oriented UI states include:

- premium_active
- premium_inactive
- premium_grace
- premium_expired
- premium_unknown
- premium_locked

These states must remain distinct from sync/publication states.

# ============================================================
# ESTIMATE BADGE LABEL INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Recommended badge groups:

- Draft
- Offline
- Pending Sync
- Shared
- Publication Pending
- Published
- Publication Failed
- Inventory Cached
- Inventory Fresh
- Premium

Badge meanings must align with canonical runtime states.



Additional billing-related badges:

- Premium
- Premium Locked
- Premium Grace
- Premium Expired

These badges must be used only for entitlement-related meaning,
not for sync or publication meaning.

# ============================================================
# ESTIMATE UI MESSAGE INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

UI messages must distinguish clearly between:

- saved locally
- synced successfully
- shared successfully
- publication request accepted
- publication completed
- inventory reference refreshed
- premium feature unavailable

Misleading success phrasing is prohibited.



Representative premium UI messages include:

- Premium feature available
- Premium required for this action
- Premium plan expired
- Premium verification required
- Existing premium content can be viewed
- Editing requires Premium

These messages must distinguish:
- view allowed
- write denied
- entitlement unknown



Representative premium UI messages include:

- Premium feature available
- Premium required for this action
- Premium plan expired
- Premium verification required
- Existing premium content can be viewed
- Editing requires Premium

These messages must distinguish:
- view allowed
- write denied
- entitlement unknown

# ============================================================
# ESTIMATE EDITOR SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Estimate editor screen is the main create/edit workspace.

# ============================================================
# 2. PRIMARY INPUT GROUPS
# ============================================================

- estimate basic information
- customer selection
- issue/valid dates
- line item editor
- amount summary
- memo linkage
- template action
- publication readiness hints

# ============================================================
# 3. BASIC INFORMATION
# ============================================================

Recommended fields:

- title
- estimate class
- issue date
- valid until
- notes summary field when needed

# ============================================================
# 4. LINE ITEM UI
# ============================================================

Line item area should support:

- add line
- edit line
- delete line
- reorder line
- quick quantity update
- quick price update
- item code input
- description input

# ============================================================
# 5. AMOUNT SUMMARY UI
# ============================================================

Amount summary should show:

- subtotal
- tax
- total

# ============================================================
# 6. MOBILE RULE
# ============================================================

Editor should support efficient one-hand mobile operation
and avoid dense desktop-style forms.



Tablet editor adaptation:
- allow header + line item area in broader layout
- allow amount summary to remain visible while editing
- allow template/action side panel where useful

Phone editor adaptation:
- keep editor linear and touch-first
- avoid dense multi-panel editing

# ============================================================
# OPPORTUNITY MEMO SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Opportunity memo screen manages free-form sales notes.

# ============================================================
# 2. PRIMARY UI ELEMENTS
# ============================================================

- memo text area
- save button
- share button
- revoke share button
- sync state label
- history shortcut

# ============================================================
# 3. UX RULE
# ============================================================

The UI should remain simple and fast.
No structured format is required in standard use.

# ============================================================
# MEETING MEMO SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Meeting memo screen manages meeting-related notes
for estimate activity.

# ============================================================
# 2. MODES
# ============================================================

Supported modes:

- free_form
- structured

free_form is standard.
structured requires premium access.

# ============================================================
# 3. PRIMARY UI ELEMENTS
# ============================================================

- mode switch or mode badge
- memo editor area
- template selector for structured mode
- share button
- revoke share button
- sync state label

# ============================================================
# 4. PREMIUM RULE
# ============================================================

When structured mode is unavailable,
the screen must show a clear premium lock indication
instead of silently hiding the capability.



# ============================================================
# 5. STRUCTURED MODE BILLING SURFACE
# ============================================================

When structured mode is premium-locked,
the screen should show:

- Premium badge
- lock icon
- short upgrade hint
- free_form mode remains usable

If premium expired,
existing structured content may remain viewable where policy permits,
but structured editing must be blocked clearly.



# ============================================================
# 5. STRUCTURED MODE BILLING SURFACE
# ============================================================

When structured mode is premium-locked,
the screen should show:

- Premium badge
- lock icon
- short upgrade hint
- free_form mode remains usable

If premium expired,
existing structured content may remain viewable where policy permits,
but structured editing must be blocked clearly.

# ============================================================
# INVENTORY REFERENCE SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Inventory reference screen displays ERP-connected stock reference results
for selected items or estimate lines.

# ============================================================
# 2. PRIMARY UI ELEMENTS
# ============================================================

- item identity
- available quantity
- reserved quantity
- inbound quantity
- checked time
- freshness badge
- cache badge
- retry action

# ============================================================
# 3. REPRESENTATIVE BADGES
# ============================================================

- Fresh
- Cached
- Stale
- Failed
- Unknown

# ============================================================
# 4. UX RULE
# ============================================================

The screen must visually communicate
that the displayed numbers are reference values.

# ============================================================
# TEMPLATE SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Template screen manages default and user-defined estimate templates.

# ============================================================
# 2. PRIMARY UI ELEMENTS
# ============================================================

- template list
- category tabs or filter
- apply button
- create template button
- edit template button
- premium lock badge

# ============================================================
# 3. TEMPLATE ROW
# ============================================================

Each row should show:

- template name
- category
- owner scope
- app default or user template badge
- premium-only badge when applicable

# ============================================================
# 4. UX RULE
# ============================================================

Applying a template must feel fast,
while create/edit actions may remain premium-gated.



# ============================================================
# 5. TEMPLATE BILLING SURFACE
# ============================================================

Template screen should distinguish:

- app default free templates
- expanded premium templates
- user template create/edit actions

When Premium is inactive or expired:

- view of existing templates may remain allowed where policy permits
- create/edit actions must be locked clearly
- premium-only templates must display Premium lock state



# ============================================================
# 5. TEMPLATE BILLING SURFACE
# ============================================================

Template screen should distinguish:

- app default free templates
- expanded premium templates
- user template create/edit actions

When Premium is inactive or expired:

- view of existing templates may remain allowed where policy permits
- create/edit actions must be locked clearly
- premium-only templates must display Premium lock state



Additional template controls should include:

- locale filter
- industry category filter
- proposal summary template section

# ============================================================
# QA MANAGEMENT SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

QA management screen manages question-answer items
linked to an estimate.

# ============================================================
# 2. PRIMARY UI ELEMENTS
# ============================================================

- QA list
- create QA button
- status filter
- owner display
- due date display
- linked estimate summary
- premium lock badge

# ============================================================
# 3. QA ROW FIELDS
# ============================================================

Each QA row should show:

- question summary
- status
- owner
- due date
- last updated time

# ============================================================
# 4. DETAIL ACTIONS
# ============================================================

- open detail
- update answer
- change status
- assign owner where allowed

# ============================================================
# 5. PREMIUM RULE
# ============================================================

When premium is inactive,
create/edit actions must be blocked clearly.



# ============================================================
# 6. QA BILLING SURFACE
# ============================================================

QA management is premium-oriented.

When Premium is unavailable:

- existing QA visibility may remain allowed where policy permits
- create/edit/update actions must be blocked clearly
- the screen should show Premium lock indication
- the screen should not imply that QA write is part of the free plan



# ============================================================
# 6. QA BILLING SURFACE
# ============================================================

QA management is premium-oriented.

When Premium is unavailable:

- existing QA visibility may remain allowed where policy permits
- create/edit/update actions must be blocked clearly
- the screen should show Premium lock indication
- the screen should not imply that QA write is part of the free plan


# ============================================================
# ESTIMATE DEEPLINK ENTRY INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Deeplink entry interface behavior:

- do not show redundant login UI when shared session is valid
- show target screen directly after validation
- show contextual source/route hint where useful
- show fallback login only when shared session is invalid or expired

Representative contextual hints:

- Opened from [source_app]
- Customer context applied
- Estimate loaded from link
- Read-only mode



Premium deeplink rule:

- deeplink may skip redundant login UI when shared session is valid
- deeplink must still respect premium entitlement state
- premium-locked target actions must open in locked/view-safe mode when needed



Premium deeplink rule:

- deeplink may skip redundant login UI when shared session is valid
- deeplink must still respect premium entitlement state
- premium-locked target actions must open in locked/view-safe mode when needed



Permission-aware deeplink behavior:

- deeplink context does not grant permission
- readonly deeplink must open in readonly mode
- missing permission must produce safe locked or denied UI


# ============================================================
# ESTIMATE CUSTOMER DELIVERY INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Primary customer delivery surfaces:

- PDF export
- email send
- readonly link generation
- delivery history
- open log summary
- customer response record

Representative badges:

- Sent
- Opened
- Expiring Soon
- ERP Approval Pending
- ERP Linked
- Inventory Cached
- Inventory Fresh


# ============================================================
# ESTIMATE LOCALE INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Locale-aware UI should support:

- Japanese / English in phase 1
- locale-specific labels
- locale-specific messages
- locale-specific template selection
- customer preferred locale output override
- customer preferred currency display hint


# ============================================================
# ESTIMATE PERMISSION INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This interface document defines how permission differences
must appear in UI.

# ============================================================
# 2. UI PERMISSION STATES
# ============================================================

Representative permission UI states include:

- full_edit
- limited_edit
- readonly
- readonly_customer_view
- publication_allowed
- publication_denied
- premium_allowed
- premium_locked

# ============================================================
# 3. UI RULES
# ============================================================

The UI must clearly distinguish:

- hidden because not allowed
- visible but locked
- visible and readonly
- fully editable

# ============================================================
# 4. READONLY CUSTOMER VIEW
# ============================================================

Readonly customer view should:

- show estimate content
- show delivery-ready presentation
- hide internal operation actions
- hide share/publication/premium write actions
- avoid internal-only business wording where possible

# ============================================================
# 5. SHARED USER VIEW
# ============================================================

Shared internal users may see:

- bounded estimate content
- bounded memo content
- bounded action set

The interface must not imply owner-level authority
when the permission is shared-limited.


# ============================================================
# ESTIMATE REVISION HISTORY INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Revision history interface should show:

- revision_no
- snapshot_type
- created_at
- created_by
- locale
- currency_code
- subtotal / tax / total snapshot summary
- whether the revision was delivered
- whether customer response exists on that basis

The screen must help users understand
which version was delivered or responded to.


# ============================================================
# ESTIMATE DELIVERY HISTORY DETAIL INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Delivery history detail should show:

- delivery_channel
- delivery_state
- revision_snapshot_id or revision_no
- artifact_type
- locale_code
- currency_code
- presented_at
- latest_opened_at
- open_count
- related customer response state if any

The interface must distinguish:
- delivered
- opened
- accepted
- revision_requested
- rejected

# ============================================================
# ESTIMATE CREATOR INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PRIMARY INTERFACE PRINCIPLES
# ============================================================

The interface must prioritize:

- fast field use
- clear estimate status understanding
- explicit offline awareness
- explicit publication/share/sync state awareness
- low ambiguity for premium-gated functions

# ============================================================
# 2. PRIMARY SCREEN SET
# ============================================================

Primary screens:

- login
- estimate list
- estimate detail
- estimate editor
- opportunity memo
- meeting memo
- inventory reference
- share target setting
- ERP setting
- template
- QA management
- settings

# ============================================================
# 3. STATE VISIBILITY
# ============================================================

The interface must display at minimum:

- offline banner
- pending sync badge
- share state badge
- ERP publication state badge
- inventory freshness indicator
- premium availability indicator where needed


# ============================================================
# 4. ENTRY INTERFACE BEHAVIOR
# ============================================================

EstimateCreator interface must support both:

- standalone entry UX
- deeplink entry UX

Standalone launch may show login entry when needed.

Deeplink launch should not show redundant login UI
when valid shared BusinessOS session context is already available.

# ============================================================
# 5. DEEPLINK CONTEXT VISIBILITY
# ============================================================

When opened by deeplink,
the interface may show contextual hints such as:

- opened from source app
- customer context applied
- estimate context applied
- readonly mode

These hints must not misrepresent authority or completion state.


# ============================================================
# 6. BILLING UI PRINCIPLES
# ============================================================

Premium-only capabilities should generally remain visible
but clearly locked when unavailable.

The interface should prefer:

- visible Premium badge
- visible lock state
- understandable upgrade message
- non-misleading downgrade behavior

The interface must not imply that premium-only capability
is part of the free core workflow.

# ============================================================
# 7. PREMIUM-LOCKED SURFACES
# ============================================================

Representative premium-locked surfaces include:

- structured meeting memo mode
- QA create/edit actions
- template create/edit actions
- expanded default template access

# ============================================================
# 8. DOWNGRADE UI RULE
# ============================================================

After downgrade or expiry,
existing premium-created content may remain viewable where policy permits,
but premium-only write actions must clearly appear unavailable.


# ============================================================
# 9. MULTILINGUAL / DELIVERY UI
# ============================================================

The interface must additionally support:

- locale-aware labels and messages
- customer preferred locale / currency display
- delivery actions
- delivery history display
- open log summary
- customer response summary
- sent/opened/expiring badges


# ============================================================
# 10. PHONE / TABLET UI POLICY
# ============================================================

EstimateCreator interface must support both phone and tablet layouts.

Phone UI should prioritize:
- single-column flow
- simple action grouping
- compact navigation
- one-hand operability where practical

Tablet UI should support:
- wider information density
- split-view or master-detail patterns where useful
- faster cross-section review
- reduced screen switching for detail workflows

UI layout may differ by device class,
but meaning and action rules must remain identical.

# ============================================================
# ESTIMATE CREATOR INTERFACE INDEX
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

- 090_OVERVIEW.md
- 090_INDEX.md
- 090_ESTIMATE_CREATOR_INTERFACE.md
- 090100_LOGIN_SCREEN_INTERFACE.md
- 090110_ESTIMATE_LIST_SCREEN_INTERFACE.md
- 090120_ESTIMATE_DETAIL_SCREEN_INTERFACE.md
- 090130_SETTINGS_SCREEN_INTERFACE.md
- 090140_SHARE_TARGET_SETTING_SCREEN_INTERFACE.md
- 090150_ERP_SETTING_SCREEN_INTERFACE.md
- 090160_ESTIMATE_RELATIONSHIP_INTERFACE.md
- 090170_ESTIMATE_UI_STATE_INTERFACE.md
- 090180_ESTIMATE_BADGE_LABEL_INTERFACE.md
- 090190_ESTIMATE_UI_MESSAGE_INTERFACE.md
- 090200_ESTIMATE_EDITOR_SCREEN_INTERFACE.md
- 090210_OPPORTUNITY_MEMO_SCREEN_INTERFACE.md
- 090220_MEETING_MEMO_SCREEN_INTERFACE.md
- 090230_INVENTORY_REFERENCE_SCREEN_INTERFACE.md
- 090240_TEMPLATE_SCREEN_INTERFACE.md
- 090250_QA_MANAGEMENT_SCREEN_INTERFACE.md

# ============================================================
# ESTIMATE CREATOR INTERFACE OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator Interface defines the user-facing screen structure
and major interaction surfaces of the application.

The interface must make the following explicit:

- online vs offline state
- draft vs synced state
- shared vs private state
- publication state
- inventory freshness state
- premium feature availability state

# ============================================================
# ESTIMATE DATA ENCRYPTION SECURITY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator local data should be stored
using protected storage and encryption-capable device mechanisms
where available.

At minimum, the design expects protection for:

- local auth context
- estimate drafts
- memo content
- pending operations
- premium entitlement cache

# ============================================================
# ESTIMATE CREATOR SECURITY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. SECURITY OBJECTIVE
# ============================================================

EstimateCreator must protect estimate-related business data
in both online and offline usage.

# ============================================================
# 2. PRIMARY SECURITY TARGETS
# ============================================================

Primary targets:

- local auth context
- estimate records
- memo records
- share target records
- pending operation queue
- publication request data
- cached inventory reference data
- premium entitlement cache

# ============================================================
# 3. SECURITY PRINCIPLES
# ============================================================

Security must preserve:

- least necessary access
- protected local storage
- explicit share visibility
- explicit authority boundary
- fail closed on uncertain authority state

# ============================================================
# 4. OFFLINE SECURITY
# ============================================================

Offline security requires:

- protected device-local storage
- bounded cached auth validity
- no silent authority escalation
- no false completion signaling

# ============================================================
# ESTIMATE CREATOR SECURITY INDEX
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

- 100_OVERVIEW.md
- 100_INDEX.md
- 100_ESTIMATE_CREATOR_SECURITY.md
- 100110_ESTIMATE_DATA_ENCRYPTION_SECURITY.md

# ============================================================
# ESTIMATE CREATOR SECURITY OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator Security defines the protection rules for:

- login context
- protected local storage
- shared business content
- ERP publication requests
- premium entitlement state
- offline cached data

# ============================================================
# ESTIMATE PROTECTED STORAGE INFRASTRUCTURE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Protected storage infrastructure should support:

- estimate draft persistence
- memo persistence
- queue persistence
- sync metadata persistence
- cache freshness tracking
- entitlement cache tracking

The storage layer must allow safe recovery after app restart
without losing pending work unexpectedly.

# ============================================================
# ESTIMATE CREATOR INFRASTRUCTURE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. INFRASTRUCTURE ROLE
# ============================================================

EstimateCreator infrastructure supports
mobile business operation with offline-first capability.

# ============================================================
# 2. REQUIRED INFRASTRUCTURE ELEMENTS
# ============================================================

Required elements include:

- protected local storage
- local object cache
- pending operation queue store
- sync adapter access
- share adapter access
- publication adapter access
- inventory reference adapter access
- premium entitlement cache access

# ============================================================
# 3. INFRASTRUCTURE BOUNDARY
# ============================================================

EstimateCreator infrastructure supports local application execution,
but shared BusinessOS capability infrastructure remains external
to the local app-owned domain.

# ============================================================
# ESTIMATE CREATOR INFRASTRUCTURE INDEX
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

- 110_OVERVIEW.md
- 110_INDEX.md
- 110_ESTIMATE_CREATOR_INFRASTRUCTURE.md
- 110110_ESTIMATE_PROTECTED_STORAGE_INFRASTRUCTURE.md

# ============================================================
# ESTIMATE CREATOR INFRASTRUCTURE OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator Infrastructure defines the supporting technical base
required for application runtime.

It includes:

- protected local storage
- sync support components
- publication request support
- inventory reference support
- premium gate support

# ============================================================
# ESTIMATE API IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. API IMPLEMENTATION PURPOSE
# ============================================================

Estimate API implementation must expose stable, sync-friendly,
audit-friendly object handling for EstimateCreator business objects.

# ============================================================
# 2. PRIMARY OBJECTS
# ============================================================

Primary objects:

- estimate_record
- estimate_line_item
- opportunity_memo
- meeting_memo
- estimate_inventory_check
- estimate_qa_record
- estimate_template
- estimate_premium_feature_state
- estimate_launch_context

# ============================================================
# 3. API FIELD RULES
# ============================================================

API implementation must preserve:

- stable object id
- object type clarity
- required vs optional field clarity
- explicit state fields
- explicit created_at / updated_at handling
- explicit sync-related metadata where needed

# ============================================================
# 4. STATE SEPARATION RULE
# ============================================================

API fields must not overload:

- local business status
- sync state
- publication state
- approval state
- premium entitlement state

Each must remain independently addressable.

# ============================================================
# 5. MUTATION RULE
# ============================================================

Mutations should be object-oriented and explicit.

Examples:

- create_estimate
- update_estimate_header
- add_estimate_line
- update_opportunity_memo
- update_meeting_memo
- request_share
- request_publication
- refresh_inventory_reference
- create_qa
- apply_template

# ============================================================
# ESTIMATE AUDIT APPROVAL IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Implementation must preserve visible distinction between:

- local edit history
- approval-related actions
- publication-related actions
- sync-related actions

# ============================================================
# ESTIMATE APPROVAL AUDIT CODE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Approval and audit codes should be centralized,
stable,
and mapped to both operations and UI-safe explanations.

# ============================================================
# ESTIMATE ERROR CODE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Implementation should avoid opaque generic failures.

Errors should be mapped by explicit category and retryability.

# ============================================================
# ESTIMATE UI STATE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

UI state implementation must align with canonical runtime states.

The UI must not present local save as sync completion,
nor sync completion as ERP publication completion.

# ============================================================
# ESTIMATE PAYLOAD FIELD MAP IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Field mapping for ERP publication must remain explicit,
reviewable,
and versionable.

# ============================================================
# ESTIMATE API FIELD SCHEMA IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Field schema implementation should keep
required/optional boundaries explicit
and avoid ambiguous mixed-purpose fields.

# ============================================================
# ESTIMATE VALIDATION CODE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Validation code implementation should cover at least:

- required field validation
- amount consistency
- publication readiness
- share eligibility
- premium feature eligibility
- inventory lookup prerequisites

# ============================================================
# ESTIMATE UI LABEL IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

UI labels should remain short,
stable,
and aligned with canonical state meanings.

# ============================================================
# ESTIMATE OFFLINE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Offline implementation must support safe field usage
without falsely claiming external completion.

# ============================================================
# 2. REQUIRED LOCAL OBJECTS
# ============================================================

Local persistence should cover at minimum:

- estimate_record
- estimate_line_item
- opportunity_memo
- meeting_memo
- estimate_sync_state
- estimate_pending_operation
- estimate_launch_context
- cached premium entitlement
- cached inventory reference where needed

# ============================================================
# 3. REQUIRED OFFLINE CAPABILITIES
# ============================================================

Offline implementation should provide:

- local draft create/edit
- local pending queue
- restart-safe persistence
- replay-safe operation structure
- explicit offline banner/state
- conflict-aware replay handling

# ============================================================
# 4. OFFLINE PROHIBITIONS
# ============================================================

Offline implementation must not mark as completed:

- ERP publication
- authoritative approval completion
- authoritative inventory confirmation
- premium verification refresh

# ============================================================
# 5. REPLAY RULE
# ============================================================

Replay should process queued operations deterministically
and preserve explicit result state for each replayed operation.

# ============================================================
# ESTIMATE INVENTORY REFERENCE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Inventory reference implementation must expose current reference information
without claiming authoritative allocation or reservation truth.

# ============================================================
# 2. IMPLEMENTATION REQUIREMENTS
# ============================================================

Implementation should preserve:

- item identity
- available quantity
- reserved quantity when available
- inbound quantity when available
- checked_at
- source_system
- cache state
- freshness state

# ============================================================
# 3. DISPLAY RULE
# ============================================================

UI and implementation must preserve distinction between:

- fresh
- cached
- stale
- failed

# ============================================================
# 4. AUTHORITY RULE
# ============================================================

Inventory implementation must remain advisory-only
unless external authoritative policy explicitly states otherwise.

# ============================================================
# ESTIMATE PREMIUM FEATURE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Premium feature implementation must provide gated productivity features
without forking the canonical application architecture.

# ============================================================
# 2. PREMIUM FEATURES
# ============================================================

Premium-gated features include:

- structured meeting memo
- QA management
- estimate templates

# ============================================================
# 3. GATE RULE
# ============================================================

Premium-only writes require explicit entitlement state.

Allowed:
- active
- grace, where policy allows

Denied:
- inactive
- expired
- unknown

unknown must fail closed.

# ============================================================
# 4. DOWNGRADE RULE
# ============================================================

After downgrade or expiry:

- existing premium-created content may remain viewable where policy permits
- premium-only write actions must be blocked
- deeplink must not bypass entitlement checks

# ============================================================
# 5. OFFLINE RULE
# ============================================================

Offline premium behavior must rely on cached verified entitlement state.

# ============================================================
# ESTIMATE DEEPLINK IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide defines how deeplink entry should be implemented safely.

# ============================================================
# 2. REQUIRED DEEPLINK PARAMETERS
# ============================================================

Representative deeplink parameters:

- source_app
- source_screen
- mode
- estimate_id
- customer_id
- opportunity_id
- draft_id
- readonly

These parameters provide launch context only.

# ============================================================
# 3. SESSION RULE
# ============================================================

When opened by deeplink:

- shared BusinessOS session should be resolved
- redundant login UI should be skipped only when session is valid
- authorization checks must still run
- invalid shared session must fallback safely or fail closed

# ============================================================
# 4. SECURITY RULE
# ============================================================

Raw credentials must not be passed in deeplink business parameters.

# ============================================================
# 5. ROUTING RULE
# ============================================================

Validated deeplink context should route into the same canonical workspace logic
used after standalone entry.

# ============================================================
# ESTIMATE SHARED SESSION IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide defines session reuse behavior for app-to-app launch.

# ============================================================
# 2. REQUIRED BEHAVIOR
# ============================================================

Implementation should support:

- shared session lookup
- session validity check
- company/workspace context resolution
- authorization re-check
- safe fallback when invalid

# ============================================================
# 3. NON-GOALS
# ============================================================

Shared session reuse must not become:

- authorization bypass
- deeplink credential transport
- implicit premium entitlement bypass

# ============================================================
# ESTIMATE PUBLICATION IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Publication implementation must connect EstimateCreator
to the shared BusinessOS ERP publication path.

# ============================================================
# 2. REQUIRED IMPLEMENTATION BEHAVIOR
# ============================================================

Implementation should support:

- publication readiness validation
- request payload assembly
- request submission to shared path
- result state persistence
- publication badge/state refresh

# ============================================================
# 3. REQUIRED PAYLOAD CHARACTERISTICS
# ============================================================

Representative fields:

- source_system = business_os
- source_app = estimate_creator
- estimate_class = rough_estimate
- company_id
- estimate_id
- revision_no
- requesting_user_id

# ============================================================
# 4. PROHIBITION
# ============================================================

Implementation must not create a private authoritative ERP issuance path
inside the app.

# ============================================================
# ESTIMATE SHARE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Share implementation must reuse the common BusinessOS sharing pattern.

# ============================================================
# 2. SHAREABLE OBJECTS
# ============================================================

Shareable objects:

- opportunity_memo
- meeting_memo
- rough_estimate

# ============================================================
# 3. REQUIRED IMPLEMENTATION BEHAVIOR
# ============================================================

Implementation should support:

- preconfigured target selection
- share request creation
- revoke request creation
- share result reflection
- offline queueing where allowed

# ============================================================
# 4. PROHIBITION
# ============================================================

Implementation must not create unbounded public sharing
or bypass target validation.

# ============================================================
# ESTIMATE EXACT PAYLOAD IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide converts the exact payload contract
into implementation-side rules.

# ============================================================
# 2. ENVELOPE RULE
# ============================================================

All integration-facing responses should use the fixed envelope:

- success
- code
- message
- data
- error

Implementation should not return ad-hoc response shapes
for the same operation family.

# ============================================================
# 3. FIELD NAMING RULE
# ============================================================

Implementation should preserve exact field names
from the exact payload contract.

Do not mix alternative names such as:

- userId vs user_id
- estimateId vs estimate_id
- syncStatus vs sync_state

Choose one canonical naming rule and keep it fixed.

Recommended:
- snake_case in design and payload contract

# ============================================================
# 4. NULLABILITY RULE
# ============================================================

Implementation should preserve nullability exactly.

Examples:
- source_screen may be null
- estimate_id may be null in some entry flows
- checked_at may be null on failed inventory response

Do not silently omit required nullable fields
when the contract defines them.

# ============================================================
# 5. EXACT STATE RULE
# ============================================================

Implementation should not compress state values.

Examples:
- publication_pending is not the same as publication_completed
- success_cached is not the same as success_fresh
- unknown entitlement is not the same as inactive entitlement

# ============================================================
# 6. PREMIUM RULE
# ============================================================

Premium-gated operations must return a contract-consistent failure.

Recommended:
- success: false
- code: PREMIUM_REQUIRED
- message: explicit premium requirement message
- error.field: exact field or action source

# ============================================================
# 7. DEEPLINK RULE
# ============================================================

Deeplink implementation must not transport raw credentials
through business payload.

Session reuse should be resolved outside the business payload itself.

# ============================================================
# 8. OFFLINE RULE
# ============================================================

Offline-created objects may initially return:

- sync_state: local_only
or
- sync_state: pending_push

depending on implementation timing,
but the semantics must remain explicit and stable.

# ============================================================
# 9. VERSIONING RULE
# ============================================================

If payload evolution becomes necessary later,
version at the operation or contract layer explicitly.

Do not silently change field meaning in-place.

# ============================================================
# ESTIMATE SCREEN EXACT PAYLOAD IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide defines how screen-facing exact payload contracts
should be implemented.

# ============================================================
# 2. SCREEN ACTION RULE
# ============================================================

Each major screen action should map to one stable payload contract.

Examples:

- login_screen_submit
- deeplink_entry_open
- estimate_list_load
- estimate_detail_load
- estimate_editor_save
- share_action_submit
- erp_publication_submit
- inventory_refresh_submit
- premium_gate_check

Avoid mixing multiple unrelated screen actions
into one ambiguous endpoint or handler contract.

# ============================================================
# 3. UI-TO-CONTRACT RULE
# ============================================================

UI forms and actions should bind directly to exact contract field names.

Do not rename fields at random between:

- screen state
- action payload
- integration payload

# ============================================================
# 4. PREMIUM FAILURE RULE
# ============================================================

Premium-gated screen actions should fail with contract-consistent shape.

Recommended:

- success: false
- code: PREMIUM_REQUIRED
- message: explicit requirement message
- error.field: precise action source

# ============================================================
# 5. ENTRY RULE
# ============================================================

Standalone entry and deeplink entry are different screen actions,
but both must converge into the same canonical workspace logic
after validation.

# ============================================================
# 6. OFFLINE RULE
# ============================================================

Screen actions allowed offline may return:

- sync_state: local_only
or
- sync_state: pending_push

but must not claim external completion.

# ============================================================
# 7. UI STATE RULE
# ============================================================

The UI must render action results according to exact state values,
not approximate categories.

Examples:

- publication_pending must not render as published
- success_cached must not render as fresh
- premium_unknown must not render as inactive

# ============================================================
# ESTIMATE LOCAL STORE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide defines implementation rules for local persistence.

# ============================================================
# 2. LOCAL STORE RULE
# ============================================================

Implementation must persist canonical local objects separately.

Do not collapse:
- estimate header
- estimate lines
- memos
- sync state
- pending operations
- inventory cache
- premium entitlement cache

into one ambiguous storage blob.

# ============================================================
# 3. FIELD RULE
# ============================================================

Local store field names should remain aligned
with exact contract field names.

Avoid introducing parallel local aliases
unless unavoidable at storage layer,
and preserve clear mapping if so.

# ============================================================
# 4. RESTART SAFETY RULE
# ============================================================

Local persistence must survive restart without losing:

- local drafts
- pending operations
- sync state
- launch context where applicable
- cached entitlement state

# ============================================================
# 5. OFFLINE SAFETY RULE
# ============================================================

Local store must not create fake external completion.

Persist:
- local_only
- pending_push
- queued
- cached
- unknown

exactly as-is when those are the true local states.

# ============================================================
# ESTIMATE SYNC QUEUE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide defines implementation rules
for pending operation queue and replay.

# ============================================================
# 2. QUEUE ORDER RULE
# ============================================================

Queue execution should preserve deterministic behavior.

Recommended ordering:
- estimate core mutations first
- memo updates next
- share/publication requests after object persistence
- refresh-only operations after write-critical operations

# ============================================================
# 3. RETRY RULE
# ============================================================

Replay should record:
- attempt_count
- last_attempt_at
- last_error_code
- final queue_state

Implementation must not silently discard failed operations.

# ============================================================
# 4. CONFLICT RULE
# ============================================================

When replay detects conflict,
it must move into explicit conflict handling.

Do not auto-overwrite meaningful remote updates
without permitted resolution rule.

# ============================================================
# 5. UI RULE
# ============================================================

Queue and replay implementation must expose enough state
for UI to show:

- pending sync
- failed replay
- blocked replay
- conflict detected

# ============================================================
# ESTIMATE ENDPOINT IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide defines implementation rules
for endpoint structure and screen-action mapping.

# ============================================================
# 2. ENDPOINT RULE
# ============================================================

Each endpoint should own one coherent responsibility domain.

Avoid endpoints that mix:

- entry/session resolution
- estimate create/edit
- share
- publication
- inventory
- premium
- sync replay

# ============================================================
# 3. SCREEN ACTION RULE
# ============================================================

Each major screen action should map to one explicit endpoint set.

The screen should not have to guess among multiple hidden endpoint shapes.

# ============================================================
# 4. CREATE VS UPDATE RULE
# ============================================================

Use explicit create/update distinction.

Examples:
- POST /estimates for create
- PATCH /estimates/{estimate_id}/header for header update
- PUT /estimates/{estimate_id}/lines for full line replacement

# ============================================================
# 5. SESSION RULE
# ============================================================

Deeplink entry and shared session resolution
must stay explicit and separable.

Do not hide session reuse logic inside generic estimate endpoints.

# ============================================================
# 6. SYNC RULE
# ============================================================

Offline/sync support endpoints should remain clearly separated
from core business mutation endpoints.


# ============================================================
# ESTIMATE LOCALE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Implementation rules:

- keep internal codes English-fixed
- localize labels/messages only
- use key-based resource lookup
- support customer preferred locale for output
- support locale-specific template variants
- do not auto-translate free text


# ============================================================
# ESTIMATE CUSTOMER DELIVERY IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Implementation rules:

- delivery actions are distinct from ERP publication
- readonly links must not expose write actions
- persist delivery history explicitly
- persist open logs explicitly
- support manual customer response recording
- render sent/opened/expiring badges from explicit state

# ============================================================
# ESTIMATE DELIVERY LOCALE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide defines implementation rules
for multilingual, multicurrency-display,
customer delivery,
and customer response exact contracts.

# ============================================================
# 2. LOCALE RULE
# ============================================================

Implementation must preserve:

- ui_locale
- customer_preferred_locale
- template_locale
- export_locale

as explicit values.

Do not infer locale silently
without leaving a traceable resolved value.

# ============================================================
# 3. CURRENCY DISPLAY RULE
# ============================================================

Implementation must treat currency fields here
as display/output support fields.

Do not treat delivery_currency_code
as accounting source-of-truth replacement.

# ============================================================
# 4. DELIVERY RULE
# ============================================================

Customer delivery actions must remain separate from ERP publication.

Do not reuse ERP publication state
as customer delivery state.

# ============================================================
# 5. READONLY LINK RULE
# ============================================================

Readonly links must never expose write capability.

If insufficient permission or invalid link state exists,
render safe readonly denial or expired behavior.

# ============================================================
# 6. OPEN LOG RULE
# ============================================================

Open logging should remain explicit and append-only in meaning.

Do not collapse:
- first_opened_at
- latest_opened_at
- open_count
- detailed open log items

into one ambiguous last_seen field only.

# ============================================================
# 7. CUSTOMER RESPONSE RULE
# ============================================================

Customer response is manual-record based in current phase.

Implementation should make this explicit in UI and state handling,
rather than implying external automated approval capture.


# ============================================================
# ESTIMATE PERMISSION IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide defines implementation rules
for permission evaluation and UI gating.

# ============================================================
# 2. IMPLEMENTATION RULE
# ============================================================

Permission evaluation must be explicit and object-aware.

Do not infer full edit capability merely because:

- session is valid
- deeplink context exists
- premium entitlement is active

# ============================================================
# 3. SEPARATION RULE
# ============================================================

Keep separate:

- authentication
- authorization
- premium entitlement
- readonly launch context

These must not be merged into one generic access boolean.

# ============================================================
# 4. CUSTOMER READONLY RULE
# ============================================================

Readonly customer delivery access should use
a dedicated permission path and dedicated UI mode.

Do not treat it as normal shared-user access.

# ============================================================
# 5. ACTION GATING RULE
# ============================================================

Each sensitive action should be gated independently.

Examples:
- edit estimate
- edit memo
- request publication
- create share
- create QA
- edit template
- premium write


# ============================================================
# ESTIMATE REVISION SNAPSHOT IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Implementation rules:

- create immutable revision snapshots for meaningful delivery/publication milestones
- bind delivery artifacts to revision snapshots
- do not infer customer response basis from latest estimate state
- keep publication revision and customer-delivery revision separable
- preserve locale/currency as part of delivered revision meaning


# ============================================================
# ESTIMATE DELIVERY AUDIT IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Implementation rules:

- each resend should be a new delivery record or explicit delivery transition
- do not overwrite prior delivered artifact meaning
- opened events should append log history
- response recording should bind to delivery basis explicitly
- expired/revoked states should remain queryable for audit and UI

# ============================================================
# ESTIMATE DELIVERY STATE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide defines implementation rules
for delivery state handling and resend-safe behavior.

# ============================================================
# 2. STATE RULE
# ============================================================

Implementation must keep delivery state separate from:

- publication state
- customer response state
- readonly link state
- premium entitlement state

# ============================================================
# 3. RESEND RULE
# ============================================================

Resend must create a new traceable delivery meaning.

Do not overwrite:
- prior delivery_record_id
- prior presented_at
- prior delivery artifact meaning
- prior open history

# ============================================================
# 4. OPEN RULE
# ============================================================

Open events are append-only in meaning.

Implementation should preserve both:
- aggregate summary
- detailed open log history

# ============================================================
# 5. RESPONSE BASIS RULE
# ============================================================

Customer response must bind to:
- revision_snapshot_id
- delivery_record_id
and optionally
- delivery_artifact_id

Do not infer response basis from latest estimate state.

# ============================================================
# 6. READONLY LINK RULE
# ============================================================

Readonly link state transitions such as:
- expired
- revoked

must remain explicit and queryable.

# ============================================================
# ESTIMATE CREATOR IMPLEMENTATION
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. IMPLEMENTATION GOAL
# ============================================================

EstimateCreator implementation must deliver
a production-usable estimate workbench that supports:

- standalone launch
- deeplink launch
- shared session reuse on deeplink
- estimate create/edit/detail/list
- offline draft and replay
- app-internal sharing
- ERP rough estimate publication request
- inventory reference lookup
- premium-gated structured productivity features

# ============================================================
# 2. IMPLEMENTATION PRINCIPLE
# ============================================================

Implementation must preserve the following boundaries:

- rough_estimate remains default
- formal ERP authority remains outside the local app
- deeplink does not bypass validation
- shared session reuse does not bypass authorization
- offline mode does not claim external completion
- premium unknown fails closed for premium-only write

# ============================================================
# 3. IMPLEMENTATION BLOCKS
# ============================================================

Recommended implementation blocks:

1. entry and session block
2. core estimate block
3. local persistence block
4. offline/sync block
5. sharing block
6. ERP publication block
7. inventory reference block
8. premium entitlement block
9. premium feature block
10. audit/error/validation hardening block

# ============================================================
# 4. MINIMUM EXECUTABLE IMPLEMENTATION
# ============================================================

The minimum executable implementation should include:

- app shell
- standalone entry
- deeplink entry
- session validation
- estimate list/detail/editor
- local draft persistence
- basic sync state display

# ============================================================
# 5. IMPLEMENTATION NON-GOALS
# ============================================================

The following should not be treated as first mandatory implementation scope:

- authoritative ERP formal estimate issuance
- private replacement of common sync capability
- private replacement of common sharing capability
- private replacement of ERP publication path
- premium bypass through deeplink
- inventory reservation authority


# ============================================================
# 6. MULTILINGUAL / DELIVERY IMPLEMENTATION BLOCK
# ============================================================

Additional implementation block:

- locale resource layer
- locale-aware template variant layer
- customer preferred locale/currency application
- readonly delivery link handling
- delivery/open history persistence
- customer response persistence

# ============================================================
# ESTIMATE CREATOR IMPLEMENTATION INDEX
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

- 120_OVERVIEW.md
- 120_INDEX.md
- 120_ESTIMATE_CREATOR_IMPLEMENTATION.md
- 120110_ESTIMATE_API_IMPLEMENTATION_GUIDE.md
- 120120_ESTIMATE_AUDIT_APPROVAL_IMPLEMENTATION_GUIDE.md
- 120130_ESTIMATE_APPROVAL_AUDIT_CODE_IMPLEMENTATION_GUIDE.md
- 120140_ESTIMATE_ERROR_CODE_IMPLEMENTATION_GUIDE.md
- 120150_ESTIMATE_UI_STATE_IMPLEMENTATION_GUIDE.md
- 120160_ESTIMATE_PAYLOAD_FIELD_MAP_IMPLEMENTATION_GUIDE.md
- 120170_ESTIMATE_API_FIELD_SCHEMA_IMPLEMENTATION_GUIDE.md
- 120180_ESTIMATE_VALIDATION_CODE_IMPLEMENTATION_GUIDE.md
- 120190_ESTIMATE_UI_LABEL_IMPLEMENTATION_GUIDE.md
- 120200_ESTIMATE_OFFLINE_IMPLEMENTATION_GUIDE.md
- 120210_ESTIMATE_INVENTORY_REFERENCE_IMPLEMENTATION_GUIDE.md
- 120220_ESTIMATE_PREMIUM_FEATURE_IMPLEMENTATION_GUIDE.md

# ============================================================
# ESTIMATE CREATOR IMPLEMENTATION OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator Implementation defines implementation guidance
derived from constitution, architecture, runtime, and policy.

It guides how the application should be built
without violating canonical boundaries.

# ============================================================
# ESTIMATE CREATOR PHASE PLAN
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# PHASE 1
# ENTRY / SESSION / CORE ESTIMATE
# ============================================================

Target:
Establish the minimum executable app core.

Scope:
- standalone entry
- login-capable entry
- deeplink entry receive
- shared session validation
- estimate list
- estimate detail
- estimate create/edit
- core local storage

Exit condition:
- app can open from standalone and deeplink
- estimate create/edit works
- session handling is stable

# ============================================================
# PHASE 2
# OFFLINE / SYNC / PENDING OPERATION
# ============================================================

Target:
Make field usage safe.

Scope:
- offline draft persistence
- pending operation queue
- sync state display
- sync replay
- conflict detection
- fail-closed authority behavior

Exit condition:
- offline edits survive restart
- sync replay works
- conflict is explicit

# ============================================================
# PHASE 3
# SHARING / ERP PUBLICATION / INVENTORY REFERENCE
# ============================================================

Target:
Connect EstimateCreator to BusinessOS common capabilities.

Scope:
- preconfigured share target usage
- app-internal sharing
- ERP publication request
- publication result state handling
- inventory reference lookup
- inventory freshness state UI

Exit condition:
- share works through common pattern
- publication works through shared path
- inventory reference is visible as reference-only

# ============================================================
# PHASE 4
# PREMIUM GATE / STRUCTURED FEATURES
# ============================================================

Target:
Enable monetized productivity features safely.

Scope:
- premium entitlement state
- premium lock UI
- structured meeting memo
- QA management
- estimate templates
- downgrade-safe behavior
- offline premium entitlement handling

Exit condition:
- premium-only writes are gated
- downgrade behavior is safe
- deeplink does not bypass premium

# ============================================================
# PHASE 5
# HARDENING / RELEASE READINESS
# ============================================================

Target:
Prepare production-safe release behavior.

Scope:
- audit/history review
- error code review
- validation review
- edge-case session review
- deeplink fallback review
- UI wording review
- release checklist closure

Exit condition:
- release readiness checklist is satisfied
- no authority-sensitive ambiguity remains



# ============================================================
# PHASE 4A
# MULTILINGUAL / DELIVERY EXTENSION
# ============================================================

Target:
Strengthen customer-facing delivery and multilingual utility.

Scope:
- multilingual UI
- customer preferred locale/currency
- PDF export
- email send
- readonly link
- delivery history
- open logs
- customer response record
- business badge extension

Exit condition:
- multilingual UI works
- customer delivery actions work
- delivery/open/response visibility is explicit

# ============================================================
# ESTIMATE CREATOR DEVELOPMENT GUARDRAILS
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE GUARDRAILS
# ============================================================

Development must not violate the following:

- rough_estimate remains the default estimate class
- formal ERP authority remains outside the local app
- deeplink does not bypass validation
- shared session reuse does not bypass authorization
- offline mode does not claim external completion
- inventory remains reference-only
- premium unknown fails closed for premium-only writes

# ============================================================
# 2. COMMON COMPONENT GUARDRAILS
# ============================================================

The following must be reused,
not privately reinvented where common capability already exists:

- sharing pattern
- sync pattern
- ERP publication pattern
- shared session behavior
- premium entitlement semantics where standardized

# ============================================================
# 3. UI GUARDRAILS
# ============================================================

UI must not misrepresent:

- local save as sync completion
- sync completion as publication completion
- deeplink entry as authority grant
- premium visibility as premium entitlement success

# ============================================================
# ESTIMATE CREATOR IMPLEMENTATION ENTRY ORDER
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Recommended implementation entry order:

1. local app shell and entry routing
2. standalone login entry
3. deeplink route parsing
4. shared session validation
5. estimate core screens
6. estimate local model persistence
7. offline queue
8. sync state and replay
9. share integration
10. ERP publication request integration
11. inventory reference integration
12. premium entitlement model/runtime
13. structured meeting memo
14. QA management
15. estimate templates
16. release hardening

Reason:
This order minimizes breakage from dependent capability being built
before foundational state handling is stable.

# ============================================================
# ESTIMATE CREATOR INTEGRATION READINESS DEVELOPMENT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Integration readiness should be reviewed in this order:

1. shared session availability
2. deeplink parameter validation
3. sync contract readiness
4. share contract readiness
5. ERP publication contract readiness
6. inventory reference contract readiness
7. premium entitlement readiness

A later integration should not be treated as ready
only because the UI entry exists.

# ============================================================
# ESTIMATE CREATOR RELEASE READINESS DEVELOPMENT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Release readiness checklist should confirm:

- standalone launch works
- deeplink launch works
- shared session fallback works
- estimate create/edit is stable
- offline draft survives restart
- sync replay is stable
- sharing result is explicit
- ERP publication result is explicit
- inventory is clearly reference-only
- premium lock UI is correct
- downgrade-safe behavior is correct
- no raw credential travels through deeplink parameters
- user-facing status wording is not misleading

# ============================================================
# ESTIMATE CREATOR DEVELOPMENT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. DEVELOPMENT ROLE
# ============================================================

EstimateCreator Development controls
the order and discipline of development.

It exists to reduce architectural breakage
when implementing:

- standalone entry
- deeplink entry
- shared session reuse
- offline draft
- sync replay
- sharing
- ERP publication
- premium gating
- inventory reference

# ============================================================
# 2. DEVELOPMENT PRINCIPLE
# ============================================================

Development must proceed
from stable core capability
to dependent capability.

The recommended order is:

1. entry and session base
2. estimate core workflow
3. offline and sync safety
4. sharing and publication reuse
5. inventory reference
6. premium gate
7. premium business features
8. release hardening

# ============================================================
# 3. DEVELOPMENT SUCCESS CONDITION
# ============================================================

Development is considered structurally successful
only when the application preserves:

- rough_estimate default behavior
- ERP authority boundary
- offline fail-closed behavior
- explicit premium entitlement handling
- dual-entry consistency
- shared common-component reuse

# ============================================================
# ESTIMATE CREATOR DEVELOPMENT INDEX
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

- 130_OVERVIEW.md
- 130_INDEX.md
- 130_ESTIMATE_CREATOR_DEVELOPMENT.md
- 130110_ESTIMATE_CREATOR_PHASE_PLAN.md
- 130120_ESTIMATE_CREATOR_DEVELOPMENT_GUARDRAILS.md
- 130130_ESTIMATE_CREATOR_IMPLEMENTATION_ENTRY_ORDER.md
- 130140_ESTIMATE_CREATOR_INTEGRATION_READINESS_DEVELOPMENT.md
- 130150_ESTIMATE_CREATOR_RELEASE_READINESS_DEVELOPMENT.md

# ============================================================
# ESTIMATE CREATOR DEVELOPMENT OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator Development defines
how development should be staged,
reviewed,
and controlled.

This layer is not the implementation-detail layer itself.

Its role is to provide:

- phased delivery order
- development guardrails
- dependency-aware build order
- integration-safe rollout strategy
- implementation entry discipline

# ============================================================
# ESTIMATE SYNC CONFLICT META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# REVIEW FOCUS
# ============================================================

Sync conflict review must verify:

- local change and remote change are not silently merged
- conflict states are explicit in runtime and interface
- pending operation replay does not erase remote result visibility
- publication result and sync result are not confused
- share result and sync result are not confused

# ============================================================
# CHECKPOINTS
# ============================================================

- runtime conflict states exist
- flow conflict handling exists
- policy forbids silent overwrite
- interface exposes conflict clearly
- operations can track conflict events

# ============================================================
# ESTIMATE RELATIONSHIP META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# REVIEW FOCUS
# ============================================================

Relationship review must verify consistency between:

- estimate and line item
- estimate and opportunity memo
- estimate and meeting memo
- estimate and QA
- estimate and inventory reference
- estimate and publication state
- estimate and sync/share state

# ============================================================
# CHECKPOINTS
# ============================================================

- estimate_record remains the parent business object
- child objects do not replace estimate authority
- memo/share/publication/sync remain separate concerns
- inventory is linked as reference only

# ============================================================
# ESTIMATE API META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

API review must verify:

- stable identifiers
- version-aware sync handling
- explicit state separation
- explicit payload ownership
- no ambiguous field mixing local/sync/publication meaning

# ============================================================
# ESTIMATE AUDIT APPROVAL META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review must verify:

- audit and approval are both represented
- approval state is not collapsed into publication state
- local edit history remains distinguishable from approval activity
- publication activity remains distinguishable from approval activity

# ============================================================
# ESTIMATE APPROVAL AUDIT CODE META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review must verify:

- audit action codes are explicit
- approval-related business actions are not hidden in generic logs
- code naming is stable and human-reviewable
- UI-safe mapping is possible

# ============================================================
# ESTIMATE ERROR CODE META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review must verify:

- offline errors are distinct from auth errors
- publication rejected is distinct from publication failed
- premium inactive is distinct from premium unknown
- sync conflict is distinct from generic sync failure

# ============================================================
# ESTIMATE UI STATE META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review must verify UI distinction between:

- saved locally
- synced
- shared
- publication pending
- publication completed
- cached inventory
- fresh inventory
- premium locked

# ============================================================
# ESTIMATE PAYLOAD FIELD MAP META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review must verify:

- ERP publication fields are explicit
- rough_estimate classification is preserved
- source_app and source_system are explicit
- company context is preserved
- revision context is preserved where required

# ============================================================
# ESTIMATE API FIELD SCHEMA META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review must verify:

- required vs optional fields are clear
- enum-like states are explicit
- fields do not overload multiple meanings
- child objects preserve linkage identity

# ============================================================
# ESTIMATE VALIDATION CODE META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review must verify validation coverage for:

- estimate header required fields
- line item required fields
- amount consistency
- publication readiness
- share target eligibility
- premium feature eligibility
- inventory request eligibility
- local formal use eligibility

# ============================================================
# ESTIMATE UI LABEL META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review must verify labels are:

- concise
- stable
- mobile-readable
- aligned with runtime meaning
- non-misleading for authority-sensitive states

# ============================================================
# ESTIMATE CONSISTENCY CHECK META
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# REQUIRED CONSISTENCY AXES
# ============================================================

1. constitution -> architecture
2. architecture -> runtime
3. runtime -> flow
4. runtime -> interface
5. policy -> runtime
6. model -> integration
7. premium gate -> model/runtime/policy/interface
8. offline -> runtime/policy/interface
9. sharing -> model/runtime/integration/interface
10. ERP publication -> constitution/architecture/integration/interface
11. inventory reference -> model/runtime/policy/interface
12. rough_estimate default -> constitution/model/integration



13. entry and shared-session consistency
14. deeplink parameter safety
15. standalone/deeplink parity

# ============================================================
# ESTIMATE REVIEW CHECKLIST META
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# CHECKLIST
# ============================================================

- rough_estimate is the default class
- local_formal_estimate is explicitly exceptional
- ERP remains the normal formal authority
- sharing is limited to preconfigured users
- sharing follows NameCardManager common pattern
- sync follows NameCardManager common pattern
- ERP publication follows shared BusinessOS publication path
- offline mode is drafting/preparation only
- inventory is reference only
- premium features are gated, not forked
- interface states do not misrepresent authority
- model states remain separated
- auditability is preserved

# ============================================================
# ESTIMATE OFFLINE META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review must verify:

- offline entry condition exists
- offline allowed/disallowed operations are explicit
- pending operation model exists
- sync recovery flow exists
- UI shows offline and pending states clearly

# ============================================================
# ESTIMATE INVENTORY REFERENCE META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review must verify:

- inventory is modeled as reference-only
- fresh/cached/stale distinction exists
- UI shows freshness
- policy forbids authority overclaim
- integration defines source timestamp/result state

# ============================================================
# ESTIMATE PREMIUM FEATURE META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review must verify:

- premium features are explicitly listed
- premium gate exists in runtime
- premium policy exists
- premium UI lock indication exists
- premium state model exists
- unknown entitlement fails closed for write actions

# ============================================================
# ESTIMATE CREATOR FINAL CONSISTENCY REPORT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. TARGET
# ============================================================



Application path:
/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator

# ============================================================
# 2. TOTAL FILE COUNT
# ============================================================

156

# ============================================================
# 3. ROOT FILES
# ============================================================

/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator/000_ESTIMATE_CREATOR_INDEX.md
/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator/000_ESTIMATE_CREATOR_OVERVIEW.md

# ============================================================
# 4. LAYER DIRECTORIES
# ============================================================

/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator/010.constitution
/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator/020.architecture
/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator/030.model
/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator/040.runtime
/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator/050.flow
/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator/060.integration
/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator/070.operations
/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator/080.policy
/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator/090.interface
/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator/100.security
/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator/110.infrastructure
/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator/120.implementation
/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator/130.development
/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator/900.meta

# ============================================================
# 5. REQUIRED CHECKS
# ============================================================

- root overview/index present
- constitution exists
- architecture exists
- model exists
- runtime exists
- flow exists
- integration exists
- operations exists
- policy exists
- interface exists
- security exists
- infrastructure exists
- implementation exists
- development exists
- meta exists

# ============================================================
# 6. DOMAIN-SPECIFIC CHECKS
# ============================================================

- rough_estimate default preserved
- local_formal_estimate treated as exception
- sharing limited to preconfigured users
- sharing aligned with NameCardManager common approach
- sync aligned with NameCardManager common approach
- ERP publication aligned with shared BusinessOS publication path
- inventory treated as reference only
- offline treated as drafting/preparation only
- premium features gated consistently
- interface states distinguish local/sync/share/publication

# ============================================================
# 7. REVIEW RESULT TEMPLATE
# ============================================================

Use this section for manual review result marking:

- structure_check:
- model_check:
- runtime_check:
- integration_check:
- interface_check:
- premium_check:
- final_result:


# ============================================================
# ESTIMATE ENTRY AND SESSION META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review focus:

- standalone and deeplink are both first-class entry paths
- deeplink does not require redundant login UI when shared session is valid
- shared session reuse does not bypass authorization checks
- raw credentials are not carried in deeplink business parameters
- invalid shared session falls back safely or fails closed

# ============================================================
# ESTIMATE CREATOR FINAL MANUAL CHECK
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. APPLICATION PATH
# ============================================================

/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator

# ============================================================
# 2. FILE COUNTS
# ============================================================

total_files: 165
model_files: 35
runtime_files: 9
flow_files: 11
integration_files: 13
operations_files: 7
policy_files: 14
interface_files: 20
meta_files: 21

# ============================================================
# 3. REQUIRED DESIGN CHECKS
# ============================================================

[ ] EstimateCreator root overview exists
[ ] EstimateCreator root index exists
[ ] constitution exists
[ ] architecture exists
[ ] model exists
[ ] runtime exists
[ ] flow exists
[ ] integration exists
[ ] operations exists
[ ] policy exists
[ ] interface exists
[ ] security exists
[ ] infrastructure exists
[ ] implementation exists
[ ] development exists
[ ] meta exists

# ============================================================
# 4. BUSINESS CHECKS
# ============================================================

[ ] rough_estimate is the default class
[ ] local_formal_estimate is explicit and exceptional
[ ] sharing is limited to preconfigured users
[ ] shareable objects include opportunity memo / meeting memo / rough estimate
[ ] inventory is treated as reference only
[ ] premium features are gated and not forked
[ ] ERP publication uses shared BusinessOS publication path
[ ] sync follows common BusinessOS pattern
[ ] sharing follows NameCardManager common pattern

# ============================================================
# 5. ENTRY / SESSION CHECKS
# ============================================================

[ ] standalone launch is first-class
[ ] deeplink launch is first-class
[ ] standalone launch may use login entry
[ ] deeplink launch reuses shared BusinessOS session when valid
[ ] deeplink does not require redundant login UI when shared session is valid
[ ] deeplink does not bypass authorization checks
[ ] deeplink does not carry raw credentials as business parameters
[ ] invalid shared session falls back safely or fails closed

# ============================================================
# 6. OFFLINE CHECKS
# ============================================================

[ ] offline mode supports drafting
[ ] offline mode supports memo editing
[ ] offline mode supports pending queueing
[ ] offline mode does not complete live ERP publication
[ ] offline mode does not complete authoritative inventory confirmation
[ ] offline state is clearly visible in UI

# ============================================================
# 7. UI CHECKS
# ============================================================

[ ] list screen exists
[ ] detail screen exists
[ ] editor screen exists
[ ] opportunity memo screen exists
[ ] meeting memo screen exists
[ ] inventory reference screen exists
[ ] template screen exists
[ ] QA screen exists
[ ] settings screen exists
[ ] deeplink entry interface note exists

# ============================================================
# 8. 07.APPLICATIONS ROOT REFLECTION
# ============================================================

The following root markdown files currently contain "EstimateCreator":

/data/data/com.termux/files/home/01.civilization-system/07.applications/APPLICATION_LAYER_OVERVIEW.md

# ============================================================
# 9. FINAL REVIEW RESULT
# ============================================================

structure_result:
business_result:
entry_session_result:
offline_result:
ui_result:
applications_root_result:
final_result:

# ============================================================
# ESTIMATE CREATOR FINAL MANUAL CHECK (BASH ONLY)
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. APPLICATION PATH
# ============================================================

/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator

# ============================================================
# 2. FILE COUNTS
# ============================================================

total_files: 167
model_files: 35
runtime_files: 9
flow_files: 11
integration_files: 13
operations_files: 7
policy_files: 14
interface_files: 20
security_files: 4
infrastructure_files: 4
implementation_files: 15
development_files: 3
meta_files: 22

# ============================================================
# 3. STRUCTURE CHECK
# ============================================================

root_overview: OK
root_index: OK
constitution: OK
architecture: OK
model: OK
runtime: OK
flow: OK
integration: OK
operations: OK
policy: OK
interface: OK
security: OK
infrastructure: OK
implementation: OK
development: OK
meta: OK

# ============================================================
# 4. ENTRY / SESSION CHECK
# ============================================================

launch_context_model: OK
entry_runtime: OK
deeplink_contract: OK
deeplink_interface: OK

Required semantic checks (manual):
- standalone launch is first-class
- deeplink launch is first-class
- deeplink reuses shared BusinessOS session when valid
- deeplink does not require redundant login UI when shared session is valid
- authorization is still required
- raw credentials are not passed in deeplink business parameters

# ============================================================
# 5. BUSINESS CHECK
# ============================================================

Required semantic checks (manual):
- rough_estimate is the default class
- local_formal_estimate is explicit and exceptional
- sharing is limited to preconfigured users
- shareable objects include opportunity memo / meeting memo / rough estimate
- inventory is reference only
- premium features are gated and not forked
- ERP publication uses shared BusinessOS publication path
- sync follows common BusinessOS pattern
- sharing follows NameCardManager common pattern

# ============================================================
# 6. 07.APPLICATIONS ROOT REFLECTION
# ============================================================

The following root markdown files currently contain "EstimateCreator":

/data/data/com.termux/files/home/01.civilization-system/07.applications/APPLICATION_LAYER_OVERVIEW.md

# ============================================================
# 7. FINAL REVIEW RESULT
# ============================================================

structure_result: OK
entry_session_result: OK
business_result: OK
applications_root_result: PARTIAL_OK
final_result: OK

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

# ============================================================
# ESTIMATE CREATOR BILLING DESIGN NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This note defines the billing design of EstimateCreator.

The billing design must remain aligned with the application role:

- rough estimate creation
- sales and negotiation support
- offline-capable drafting
- BusinessOS-side shared capability reuse
- ERP rough estimate publication support

Billing must not block the essential estimate workflow unnecessarily.

# ============================================================
# 2. BILLING PRINCIPLE
# ============================================================

EstimateCreator uses a simple two-tier plan structure:

- Free
- Premium

Premium price:

- 500 JPY per user per month

The billing boundary is designed around business-efficiency features,
not around the core right to create a rough estimate.

# ============================================================
# 3. FREE PLAN
# ============================================================

Free plan includes the essential estimate workflow.

Free plan capabilities:

- rough estimate creation
- rough estimate editing
- standalone launch
- deeplink launch
- standalone login entry
- shared BusinessOS session reuse on deeplink when valid
- opportunity memo
- meeting memo in free_form mode
- app-internal sharing to preconfigured users
- ERP rough estimate publication request
- inventory reference lookup
- offline draft usage
- sync and pending operation handling
- basic audit/history visibility

# ============================================================
# 4. PREMIUM PLAN
# ============================================================

Premium plan unlocks structured and reusable productivity features.

Premium capabilities:

- structured meeting memo
- QA management
- estimate templates
- expanded app default template set
- user template registration
- user template editing

Premium is therefore positioned as a productivity enhancement tier,
not as the core estimate right itself.

# ============================================================
# 5. BILLING UNIT
# ============================================================

Recommended billing unit:

- per user
- monthly subscription
- 500 JPY / user / month

This is preferred because:

- EstimateCreator behavior is strongly user-centric
- template usage differs by operator
- QA ownership differs by operator
- deeplink and shared-session usage align naturally with user entitlement
- the plan remains easy to explain operationally

# ============================================================
# 6. ENTITLEMENT STATE MODEL
# ============================================================

Premium access must be controlled through entitlement state,
not by ad-hoc scattered feature flags only.

Representative entitlement states:

- inactive
- active
- grace
- expired
- unknown

Meaning:

- inactive:
  not subscribed

- active:
  premium usage is currently allowed

- grace:
  temporary continued access under grace handling

- expired:
  subscription ended and premium write access is no longer allowed

- unknown:
  premium state cannot currently be verified

# ============================================================
# 7. PREMIUM GATE RULE
# ============================================================

Premium-only write actions must require a valid premium entitlement state.

Allowed premium write:
- active
- grace, if policy permits

Denied premium write:
- inactive
- expired
- unknown

unknown must fail closed for premium-only write operations.

# ============================================================
# 8. OFFLINE BILLING RULE
# ============================================================

Offline premium behavior must use cached entitlement state.

Required fields for safe offline premium behavior include:

- premium_plan_code
- is_active
- activated_at
- expired_at
- last_verified_at
- grace_until, if used

Offline premium write may be allowed only when
cached entitlement state remains valid within policy bounds.

If entitlement state becomes unknown beyond acceptable bounds,
premium-only write must fail closed.

# ============================================================
# 9. DEEPLINK BILLING RULE
# ============================================================

Deeplink launch does not require redundant login UI
when shared BusinessOS session is valid.

However, deeplink launch must not bypass premium entitlement checks.

Therefore deeplink behavior is:

- reuse authenticated shared session where valid
- resolve entitlement state
- allow or deny premium capability accordingly

Deeplink is not a premium bypass path.

# ============================================================
# 10. CANCELLATION / DOWNGRADE RULE
# ============================================================

After premium cancellation or downgrade,
the application should preserve safe access to already existing data
while blocking premium-only new writes.

Recommended behavior after downgrade:

Allowed:
- view existing structured meeting memos
- view existing QA records
- view existing templates
- view premium-created historical content where policy permits

Denied:
- create new structured meeting memos
- edit structured meeting memos
- create new QA records
- update QA records
- create new user templates
- edit user templates
- apply premium-only templates where policy blocks it

This is a read-allowed / premium-write-denied model.

# ============================================================
# 11. UI BILLING SURFACE
# ============================================================

Premium features should generally be visible but locked,
rather than completely hidden.

Recommended UI behavior:

- show Premium badge
- show lock icon
- show upgrade prompt near premium actions
- allow user to understand what becomes available at 500 JPY

Representative premium-locked surfaces:

- structured mode in meeting memo
- QA screen create/edit actions
- template create/edit actions
- expanded template library

# ============================================================
# 12. PRICE SNAPSHOT AND CURRENCY
# ============================================================

Recommended billing-support fields include:

- premium_plan_code
- billing_cycle_type
- plan_price_snapshot
- currency_code
- purchased_at
- renewed_at
- canceled_at
- downgrade_effective_at
- source_of_truth
- last_verified_at

Even if billing source of truth is external,
the app should retain enough snapshot data
for clear local behavior and auditability.

# ============================================================
# 13. BILLING POLICY SUMMARY
# ============================================================

Billing policy summary:

- do not block core rough estimate workflow behind premium
- premium is for structure, reuse, and follow-up efficiency
- entitlement unknown fails closed for premium writes
- deeplink does not bypass premium checks
- offline premium use depends on cached verified entitlement state
- downgrade preserves read access where safe
- premium write is blocked after downgrade/expiry

# ============================================================
# 14. COMMON COMPONENT IMPLICATION
# ============================================================

EstimateCreator billing design suggests a reusable common pattern:

- Application Premium Entitlement Common

Candidate shared responsibilities:

- entitlement state model
- active / inactive / grace / expired / unknown semantics
- last_verified_at handling
- premium gate runtime
- premium lock UI
- downgrade read-allowed / write-denied handling

This pattern may become reusable across other applications.

# ============================================================
# 15. CONCLUSION
# ============================================================

EstimateCreator billing should remain simple:

- Free
- Premium 500 JPY / user / month

Free keeps the core estimate workflow available.

Premium unlocks:
- structured meeting memo
- QA management
- estimate templates

This achieves a clean balance between usability,
commercial value,
and architectural consistency.

# ============================================================
# ESTIMATE IMPLEMENTATION / DEVELOPMENT BOUNDARY NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This note clarifies the boundary between:

- 120.implementation
- 130.development

The purpose is to prevent confusion between
implementation-detail design
and development-process control.

# ============================================================
# 2. 120.IMPLEMENTATION ROLE
# ============================================================

120.implementation is the implementation design layer.

It defines:

- how something should be implemented
- technical implementation guidance
- implementation-side rules
- implementation contracts and mappings
- implementation handling of runtime/policy/model details

Representative contents:

- API implementation guide
- offline implementation guide
- premium feature implementation guide
- payload field map implementation guide
- UI state implementation guide
- validation / error implementation guide

Core question answered by 120:

"How should this be implemented?"

# ============================================================
# 3. 130.DEVELOPMENT ROLE
# ============================================================

130.development is the development progression layer.

It defines:

- in what order implementation should proceed
- which phase depends on which foundation
- what must not be broken during development
- what readiness is required before moving forward
- release hardening sequence

Representative contents:

- phase plan
- development guardrails
- implementation entry order
- integration readiness
- release readiness

Core question answered by 130:

"In what order and under what discipline should this be built?"

# ============================================================
# 4. SIMPLE BOUNDARY RULE
# ============================================================

Use 120 when the subject is:

- implementation method
- implementation detail
- implementation-side rule
- implementation mapping
- technical handling detail

Use 130 when the subject is:

- phase order
- development sequencing
- rollout dependency
- build progression
- readiness checkpoint
- release gating

# ============================================================
# 5. EXAMPLES
# ============================================================

## belongs to 120
- how deeplink parameters are validated
- how pending operation queue is implemented
- how premium entitlement is checked at runtime
- how inventory reference response is mapped
- how UI state codes are wired

## belongs to 130
- implement standalone/deeplink entry before premium features
- finish offline draft before share/publication rollout
- verify shared session before enabling deeplink production flow
- release premium only after downgrade-safe behavior is confirmed
- run hardening after integration phases stabilize

# ============================================================
# 6. PRACTICAL RULE FOR ESTIMATECREATOR
# ============================================================

For EstimateCreator:

- 120 should hold execution detail
- 130 should hold implementation order and control

Therefore 130 is not redundant.

EstimateCreator has enough complexity in:

- dual entry
- shared session reuse
- offline draft
- sync replay
- sharing
- ERP publication
- inventory reference
- premium entitlement

that development-order mistakes can break architecture.

# ============================================================
# 7. CONCLUSION
# ============================================================

120.implementation and 130.development should both exist.

Their roles are different:

- 120 = implementation design
- 130 = development control

This separation is appropriate for EstimateCreator.

# ============================================================
# ESTIMATE EXACT PAYLOAD META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review focus:

- request/response shapes are fixed
- state values are not collapsed
- deeplink payload carries context, not credentials
- premium failures are explicit
- inventory reference stays advisory-only
- publication request/result remain distinct
# ============================================================
# ESTIMATE SCREEN EXACT PAYLOAD META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review focus:

- each major screen action has one fixed payload
- login and deeplink entry remain separate actions
- screen payload field names align with integration payload names
- premium failures are explicit
- offline saves do not claim external completion
- UI rendering matches exact state values
# ============================================================
# ESTIMATE LOCAL STORE SYNC META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review focus:

- local object boundaries are explicit
- sync queue fields are fixed
- replay result states are explicit
- conflict is not silently overwritten
- local persistence does not fake external completion
# ============================================================
# ESTIMATE ENDPOINT META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review focus:

- endpoint ownership boundaries are explicit
- screen actions map cleanly to endpoint sets
- create/update distinctions are explicit
- deeplink/session endpoints are separated from business endpoints
- sync support endpoints are separated from core mutation endpoints

# ============================================================
# ESTIMATE MULTILINGUAL DELIVERY META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review focus:

- internal codes remain untranslated
- locale affects only UI/output resources
- customer preferred locale/currency are applied correctly
- delivery actions are distinct from ERP publication
- readonly links remain readonly
- delivery/open/response states are explicit

# ============================================================
# ESTIMATE DELIVERY LOCALE META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review focus:

- locale fields are explicit
- currency display fields are explicit
- customer delivery is separate from ERP publication
- readonly links stay readonly
- open logs are explicit and non-ambiguous
- customer response remains manual-record based
# ============================================================
# ESTIMATE CREATOR FINAL MANUAL CHECK EXPANDED
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. APPLICATION PATH
# ============================================================

/data/data/com.termux/files/home/01.civilization-system/07.applications/EstimateCreator

# ============================================================
# 2. FILE COUNTS
# ============================================================

total_files: 218
model_files: 44
runtime_files: 9
flow_files: 12
integration_files: 22
operations_files: 7
policy_files: 16
interface_files: 22
security_files: 4
infrastructure_files: 4
implementation_files: 27
development_files: 8
meta_files: 33

# ============================================================
# 3. ROOT CHECK
# ============================================================

root_overview: OK
root_index: OK
root_integrated: OK

# ============================================================
# 4. MULTILINGUAL / DELIVERY MODEL CHECK
# ============================================================

delivery_model: OK
share_link_model: OK
open_log_model: OK
customer_response_model: OK
template_locale_model: OK
template_industry_model: OK
proposal_summary_model: OK
customer_locale_model: OK
customer_currency_model: OK

# ============================================================
# 5. FLOW / INTEGRATION CHECK
# ============================================================

delivery_flow: OK
locale_contract: OK
delivery_contract: OK
delivery_payload_contract: OK

# ============================================================
# 6. POLICY / INTERFACE CHECK
# ============================================================

delivery_policy: OK
locale_policy: OK
delivery_interface: OK
locale_interface: OK

# ============================================================
# 7. IMPLEMENTATION / META CHECK
# ============================================================

locale_implementation: OK
customer_delivery_implementation: OK
delivery_locale_implementation: OK
multilingual_meta: OK
delivery_locale_meta: OK

# ============================================================
# 8. MANUAL SEMANTIC CHECKS
# ============================================================

[ ] internal codes remain untranslated
[ ] payload fields remain English-fixed
[ ] locale affects UI/output only
[ ] customer preferred locale is supported
[ ] customer preferred currency is supported
[ ] PDF export is supported
[ ] email send is supported
[ ] readonly delivery link is supported
[ ] customer delivery is distinct from ERP publication
[ ] open logs are explicit
[ ] customer response is manual-record based
[ ] locale-specific template variants exist
[ ] industry-specific template filtering exists
[ ] proposal summary templates exist
[ ] business delivery/open badges are explicit

# ============================================================
# 9. 07.APPLICATIONS ROOT REFLECTION
# ============================================================

The following root markdown files currently contain "EstimateCreator":

/data/data/com.termux/files/home/01.civilization-system/07.applications/APPLICATION_LAYER_OVERVIEW.md

# ============================================================
# 10. FINAL REVIEW RESULT
# ============================================================

structure_result: OK
multilingual_delivery_result: OK
integration_result: OK
applications_root_result: PARTIAL_OK
final_result: OK


# ============================================================
# 11. PLATFORM / DEVICE CHECK
# ============================================================

[ ] iPhone is supported
[ ] Android phone is supported
[ ] iPad / iOS tablet is supported
[ ] Android tablet is supported
[ ] phone and tablet share the same business meaning
[ ] phone and tablet differ only in presentation/layout
[ ] payload/state semantics are device-neutral
[ ] deeplink/shared-session semantics are identical across platforms

# ============================================================
# 12. UPDATED FINAL REVIEW RESULT GUIDE
# ============================================================

Recommended result interpretation:

- structure_result:
  OK when root / layers / integrated are present and valid

- multilingual_delivery_result:
  OK when locale / delivery / response extensions are all present

- integration_result:
  OK when exact payload / endpoint / local-store / sync / delivery contracts are present

- applications_root_result:
  PARTIAL_OK when overview only contains EstimateCreator
  OK when overview + index + integrated are all reflected

- final_result:
  OK when the above are acceptable and no blocking semantic contradiction remains


# ============================================================
# ESTIMATE PERMISSION META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review focus:

- readonly customer viewing is separate from internal sharing
- deeplink does not elevate permission
- premium entitlement does not replace authorization
- permission states are explicit in UI and runtime
- sensitive actions are individually gated


# ============================================================
# ESTIMATE REVISION DELIVERY META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review focus:

- delivered versions are snapshot-bound
- response basis is explicit
- resend does not overwrite prior delivery meaning
- delivery state remains separate from publication state
- locale/currency of delivered artifact remain auditable

# ============================================================
# ESTIMATE DELIVERY STATE META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review focus:

- delivery transitions are explicit
- resend creates new history instead of overwrite
- opened is distinct from accepted
- expired/revoked are explicit
- response basis points to delivered revision basis
# ============================================================
# ESTIMATE CREATOR META
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

This layer records review-oriented meta information for EstimateCreator.

Primary meta themes:

- consistency
- review checkpoints
- code system support
- interface state support
- offline support notes
- inventory reference notes
- premium feature notes

# ============================================================
# ESTIMATE CREATOR META INDEX
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

- 900_OVERVIEW.md
- 900_INDEX.md
- 900_ESTIMATE_CREATOR_META.md
- 900110_ESTIMATE_SYNC_CONFLICT_META_NOTE.md
- 900120_ESTIMATE_RELATIONSHIP_META_NOTE.md
- 900130_ESTIMATE_API_META_NOTE.md
- 900140_ESTIMATE_AUDIT_APPROVAL_META_NOTE.md
- 900150_ESTIMATE_APPROVAL_AUDIT_CODE_META_NOTE.md
- 900160_ESTIMATE_ERROR_CODE_META_NOTE.md
- 900170_ESTIMATE_UI_STATE_META_NOTE.md
- 900180_ESTIMATE_PAYLOAD_FIELD_MAP_META_NOTE.md
- 900190_ESTIMATE_API_FIELD_SCHEMA_META_NOTE.md
- 900200_ESTIMATE_VALIDATION_CODE_META_NOTE.md
- 900210_ESTIMATE_UI_LABEL_META_NOTE.md
- 900220_ESTIMATE_CONSISTENCY_CHECK_META.md
- 900230_ESTIMATE_REVIEW_CHECKLIST_META.md
- 900240_ESTIMATE_OFFLINE_META_NOTE.md
- 900250_ESTIMATE_INVENTORY_REFERENCE_META_NOTE.md
- 900260_ESTIMATE_PREMIUM_FEATURE_META_NOTE.md

# ============================================================
# ESTIMATE CREATOR META OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator Meta stores review notes,
consistency checks,
and implementation-support metadata.



<- headquarters snapshot/analytics = headquarters/operator summary visibility END FILE:  -->

