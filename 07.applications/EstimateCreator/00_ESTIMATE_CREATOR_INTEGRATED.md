# ============================================================
# ESTIMATE CREATOR INDEX
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# ROOT
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

API implementation should preserve:

- stable identifiers
- explicit versions
- explicit sync metadata
- separated state fields
- deterministic validation behavior

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

Offline implementation should provide:

- reliable local draft persistence
- queued operation persistence
- explicit pending state display
- safe recovery after restart
- fail closed handling for live-authority actions

# ============================================================
# ESTIMATE INVENTORY REFERENCE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Inventory reference implementation should always preserve:

- freshness time
- cached vs fresh distinction
- source result state
- non-authoritative display semantics

# ============================================================
# ESTIMATE PREMIUM FEATURE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Premium feature implementation must not create
a separate architectural branch.

Instead it should layer gated capabilities
on the same canonical estimate workflow.

# ============================================================
# ESTIMATE CREATOR IMPLEMENTATION
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. IMPLEMENTATION GOAL
# ============================================================

Implementation must realize a mobile-friendly,
offline-capable estimate workflow
without breaking ERP authority boundaries.

# ============================================================
# 2. IMPLEMENTATION PRIORITIES
# ============================================================

Priority order:

1. login and protected local context
2. estimate core create/edit/list/detail
3. local queue and sync visibility
4. sharing integration reuse
5. ERP publication request integration reuse
6. inventory reference
7. premium feature gate
8. QA and template enhancements

# ============================================================
# 3. SHARED CAPABILITY REUSE
# ============================================================

Sharing, sync, and ERP publication logic
should reuse the same common approach as NameCardManager
rather than introducing app-private incompatible behavior.


# ============================================================
# 4. ENTRY IMPLEMENTATION
# ============================================================

Implementation must support dual-entry behavior.

Standalone launch uses normal login-capable entry.

Deeplink launch must resolve and validate shared BusinessOS session context
before route entry, without requiring redundant login UI when valid.

Implementation must avoid transporting raw credentials
inside deeplink business parameters.

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
# ESTIMATE CREATOR DEVELOPMENT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. DEVELOPMENT STRATEGY
# ============================================================

Recommended phased delivery:

Phase 1:
- login
- estimate core
- local storage
- offline draft
- sync status visibility

Phase 2:
- sharing reuse integration
- ERP publication request integration
- inventory reference

Phase 3:
- premium feature gate
- structured meeting memo
- QA management
- template management

# ============================================================
# 2. DEVELOPMENT GUARDRAILS
# ============================================================

Development must preserve:

- shared capability reuse
- explicit state separation
- offline safety
- ERP authority boundary
- auditability

# ============================================================
# ESTIMATE CREATOR DEVELOPMENT INDEX
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

- 130_OVERVIEW.md
- 130_INDEX.md
- 130_ESTIMATE_CREATOR_DEVELOPMENT.md

# ============================================================
# ESTIMATE CREATOR DEVELOPMENT OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator Development provides development-facing guidance
for phased delivery and controlled expansion.

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



<- END FILE:  -->

