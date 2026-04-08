

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/000_NAME_CARD_MANAGER_OVERVIEW.md -->
# ============================================================
# NAME CARD MANAGER OVERVIEW
# ============================================================

status: draft
layer: overview
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Provides the top-level overview for NameCardManager.

summary:
NameCardManager is a BusinessOS-connected application for
managing business cards, person notes, responsibility scope,
business history, and visible relationships.

truth_model:
- BusinessOS is the source of truth.
- Local storage is a cache and offline work area.
- Offline operations are queued locally.
- Queued operations are applied to BusinessOS when online resumes.

sharing_model:
- app-internal sharing is explicit and revocable
- ERP-wide sharing is explicit and approval-governed
- ERP-wide sharing cannot be revoked by ordinary user action

screen_model:
- login
- name card list
- name card detail
- settings
- share target setting
- ERP setting

structure:
010.constitution
020.architecture
030.model
040.runtime
050.flow
060.integration
070.operations
080.policy
090.interface
100.security
110.infrastructure
120.implementation
130.development
900.meta

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/000_NAME_CARD_MANAGER_OVERVIEW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/000_NAME_CARD_MANAGER_INDEX.md -->
# ============================================================
# NAME CARD MANAGER INDEX
# ============================================================

status: draft
layer: index
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

# ============================================================
# ROOT FILES
# ============================================================

- 000_NAME_CARD_MANAGER_OVERVIEW.md
- 000_NAME_CARD_MANAGER_INDEX.md
- 00_NAME_CARD_MANAGER_INTEGRATED.md

# ============================================================
# MAIN DOCUMENTS
# ============================================================

- 010.constitution/010_NAME_CARD_MANAGER_CONSTITUTION.md
- 020.architecture/020_NAME_CARD_MANAGER_ARCHITECTURE.md
- 020.architecture/020110_SHARED_ERP_PUBLICATION_ARCHITECTURE.md
- 030.model/030_NAME_CARD_MANAGER_MODEL_OVERVIEW.md
- 030.model/030100_NAMECARD_RECORD_MODEL.md
- 030.model/030110_NAMECARD_DETAIL_PROFILE_MODEL.md
- 030.model/030120_NAMECARD_ORDER_HISTORY_MODEL.md
- 030.model/030130_NAMECARD_SHARE_TARGET_MODEL.md
- 030.model/030140_NAMECARD_ERP_PUBLISH_SETTING_MODEL.md
- 030.model/030150_NAMECARD_SYNC_STATE_MODEL.md
- 030.model/030160_NAMECARD_PENDING_OPERATION_MODEL.md
- 030.model/030170_NAMECARD_RELATIONSHIP_MODEL.md
- 030.model/030180_NAMECARD_RELATIONSHIP_VISIBILITY_MODEL.md
- 030.model/030190_NAMECARD_API_REQUEST_RESPONSE_MODEL.md
- 030.model/030200_NAMECARD_ERP_PUBLICATION_REQUEST_MODEL.md
- 030.model/030210_NAMECARD_ERP_PUBLICATION_RESULT_MODEL.md
- 030.model/030220_NAMECARD_AUDIT_LOG_MODEL.md
- 030.model/030230_NAMECARD_HISTORY_ENTRY_MODEL.md
- 030.model/030240_NAMECARD_APPROVAL_EVENT_MODEL.md
- 030.model/030250_NAMECARD_APPROVAL_STATE_TRANSITION_MODEL.md
- 030.model/030260_NAMECARD_AUDIT_ACTION_CODE_MODEL.md
- 030.model/030270_NAMECARD_ERROR_CODE_MODEL.md
- 030.model/030280_NAMECARD_UI_STATE_CODE_MODEL.md
- 030.model/030290_NAMECARD_ERP_PUBLICATION_PAYLOAD_FIELD_MAP_MODEL.md
- 030.model/030300_NAMECARD_API_FIELD_SCHEMA_MODEL.md
- 030.model/030310_NAMECARD_VALIDATION_CODE_MODEL.md
- 030.model/030320_NAMECARD_UI_LABEL_CODE_MODEL.md
- 040.runtime/040_NAME_CARD_MANAGER_RUNTIME.md
- 040.runtime/040110_NAMECARD_SYNC_CONFLICT_RUNTIME.md
- 040.runtime/040120_NAMECARD_RELATIONSHIP_VISIBILITY_RUNTIME.md
- 050.flow/050_NAME_CARD_MANAGER_FLOW.md
- 050.flow/050110_ERP_WIDE_SHARE_APPROVAL_FLOW.md
- 050.flow/050120_NAMECARD_SYNC_CONFLICT_RESOLUTION_FLOW.md
- 050.flow/050130_NAMECARD_APPROVAL_STATE_TRANSITION_FLOW.md
- 060.integration/060_NAME_CARD_MANAGER_INTEGRATION.md
- 060.integration/060110_NAMECARD_API_INTEGRATION_CONTRACT.md
- 060.integration/060120_NAMECARD_SYNC_API_CONTRACT.md
- 060.integration/060130_NAMECARD_SHARE_API_CONTRACT.md
- 060.integration/060140_NAMECARD_ERP_PUBLISH_API_CONTRACT.md
- 060.integration/060150_NAMECARD_SHARED_ERP_PUBLICATION_INTEGRATION.md
- 060.integration/060160_NAMECARD_ERP_PUBLICATION_PAYLOAD_FIELD_MAP.md
- 060.integration/060170_NAMECARD_API_FIELD_SCHEMA.md
- 070.operations/070_NAME_CARD_MANAGER_OPERATIONS.md
- 070.operations/070110_NAMECARD_AUDIT_AND_HISTORY_OPERATIONS.md
- 070.operations/070120_NAMECARD_AUDIT_ACTION_CODE_OPERATIONS.md
- 070.operations/070130_NAMECARD_ERROR_CODE_OPERATIONS.md
- 070.operations/070140_NAMECARD_VALIDATION_CODE_OPERATIONS.md
- 080.policy/080_NAME_CARD_MANAGER_POLICY.md
- 080.policy/080110_ERP_WIDE_SHARE_APPROVAL_POLICY.md
- 080.policy/080120_NAMECARD_SYNC_CONFLICT_POLICY.md
- 080.policy/080130_NAMECARD_DATA_PROTECTION_POLICY.md
- 080.policy/080140_NAMECARD_RELATIONSHIP_VISIBILITY_POLICY.md
- 080.policy/080150_NAMECARD_AUDIT_AND_APPROVAL_POLICY.md
- 080.policy/080160_NAMECARD_APPROVAL_AND_AUDIT_CODE_POLICY.md
- 080.policy/080170_NAMECARD_ERROR_CODE_POLICY.md
- 080.policy/080180_NAMECARD_VALIDATION_CODE_POLICY.md
- 090.interface/090_NAME_CARD_MANAGER_INTERFACE.md
- 090.interface/090100_LOGIN_SCREEN_INTERFACE.md
- 090.interface/090110_NAMECARD_LIST_SCREEN_INTERFACE.md
- 090.interface/090120_NAMECARD_DETAIL_SCREEN_INTERFACE.md
- 090.interface/090130_SETTINGS_SCREEN_INTERFACE.md
- 090.interface/090140_SHARE_TARGET_SETTING_SCREEN_INTERFACE.md
- 090.interface/090150_ERP_SETTING_SCREEN_INTERFACE.md
- 090.interface/090160_NAMECARD_RELATIONSHIP_INTERFACE.md
- 090.interface/090170_NAMECARD_UI_STATE_INTERFACE.md
- 090.interface/090180_NAMECARD_BADGE_LABEL_INTERFACE.md
- 090.interface/090190_NAMECARD_UI_MESSAGE_INTERFACE.md
- 100.security/100_NAME_CARD_MANAGER_SECURITY.md
- 100.security/100110_NAMECARD_DATA_ENCRYPTION_SECURITY.md
- 110.infrastructure/110_NAME_CARD_MANAGER_INFRASTRUCTURE.md
- 110.infrastructure/110110_NAMECARD_PROTECTED_STORAGE_INFRASTRUCTURE.md
- 120.implementation/120_NAME_CARD_MANAGER_IMPLEMENTATION.md
- 120.implementation/120110_NAMECARD_API_IMPLEMENTATION_GUIDE.md
- 120.implementation/120120_NAMECARD_AUDIT_APPROVAL_IMPLEMENTATION_GUIDE.md
- 120.implementation/120130_NAMECARD_APPROVAL_AUDIT_CODE_IMPLEMENTATION_GUIDE.md
- 120.implementation/120140_NAMECARD_ERROR_CODE_IMPLEMENTATION_GUIDE.md
- 120.implementation/120150_NAMECARD_UI_STATE_IMPLEMENTATION_GUIDE.md
- 120.implementation/120160_NAMECARD_PAYLOAD_FIELD_MAP_IMPLEMENTATION_GUIDE.md
- 120.implementation/120170_NAMECARD_API_FIELD_SCHEMA_IMPLEMENTATION_GUIDE.md
- 120.implementation/120180_NAMECARD_VALIDATION_CODE_IMPLEMENTATION_GUIDE.md
- 120.implementation/120190_NAMECARD_UI_LABEL_IMPLEMENTATION_GUIDE.md
- 130.development/130_NAME_CARD_MANAGER_DEVELOPMENT.md
- 900.meta/900_NAME_CARD_MANAGER_META.md
- 900.meta/900110_NAMECARD_SYNC_CONFLICT_META_NOTE.md
- 900.meta/900120_NAMECARD_RELATIONSHIP_META_NOTE.md
- 900.meta/900130_NAMECARD_API_META_NOTE.md
- 900.meta/900140_NAMECARD_AUDIT_APPROVAL_META_NOTE.md
- 900.meta/900150_NAMECARD_APPROVAL_AUDIT_CODE_META_NOTE.md
- 900.meta/900160_NAMECARD_ERROR_CODE_META_NOTE.md
- 900.meta/900170_NAMECARD_UI_STATE_META_NOTE.md
- 900.meta/900180_NAMECARD_PAYLOAD_FIELD_MAP_META_NOTE.md
- 900.meta/900190_NAMECARD_API_FIELD_SCHEMA_META_NOTE.md
- 900.meta/900200_NAMECARD_VALIDATION_CODE_META_NOTE.md
- 900.meta/900210_NAMECARD_UI_LABEL_META_NOTE.md
- 900.meta/900220_NAMECARD_CONSISTENCY_CHECK_META.md
- 900.meta/900230_NAMECARD_REVIEW_CHECKLIST_META.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/000_NAME_CARD_MANAGER_INDEX.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/010.constitution/010_OVERVIEW.md -->
# ============================================================
# 010 CONSTITUTION OVERVIEW
# ============================================================

status: draft
layer: overview
system: applications
application: NameCardManager
directory: 010.constitution
owner: Boss
prepared_by: Zero

summary:
Defines the constitutional principles of NameCardManager,
including truth source, local/offline role, explicit sharing,
and ERP-wide publication constraints.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/010.constitution/010_OVERVIEW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/010.constitution/010_INDEX.md -->
# ============================================================
# 010 CONSTITUTION INDEX
# ============================================================

status: draft
layer: index
system: applications
application: NameCardManager
directory: 010.constitution
owner: Boss
prepared_by: Zero

files:
- 010_NAME_CARD_MANAGER_CONSTITUTION.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/010.constitution/010_INDEX.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/010.constitution/010_NAME_CARD_MANAGER_CONSTITUTION.md -->
# ============================================================
# NAME CARD MANAGER CONSTITUTION
# ============================================================

status: draft
layer: constitution
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines the foundational principles of NameCardManager.

# ============================================================
# 1. MISSION
# ============================================================

NameCardManager is a business card management application
for storing, organizing, relating, and selectively sharing
name card information inside the civilization system.

# ============================================================
# 2. CORE PRINCIPLES
# ============================================================

1. BusinessOS is the source of truth.
2. Local storage exists for usability and offline operation.
3. Online state must synchronize with BusinessOS.
4. Offline local changes must be queued and applied later.
5. Sharing must always be explicit.
6. App-internal sharing can be revoked.
7. ERP-wide sharing cannot be revoked by normal users.
8. ERP-wide sharing is a controlled publication path.
9. Sensitive card-related information must be protected.
10. Relationship visibility must be supported where relevant.

# ============================================================
# 3. STORAGE PRINCIPLES
# ============================================================

- Local storage is not permanent truth.
- BusinessOS is the persistent truth holder.
- Online state performs:
  - local to BusinessOS save
  - BusinessOS to local sync
  - local action to BusinessOS apply
- Offline actions are stored locally and replayed later.

# ============================================================
# 4. SHARING PRINCIPLES
# ============================================================

Two sharing paths exist:

1. App-internal sharing
   - explicit only
   - limited to configured shared users
   - revocable

2. ERP-wide sharing
   - explicit only
   - approval-governed publication path
   - not revocable by ordinary user action

# ============================================================
# 5. INFORMATION PRINCIPLES
# ============================================================

NameCardManager may manage:

- basic business card information
- person tendency and personality notes
- authority and responsibility scope
- order and business history
- visible relationships among cards and related records

# ============================================================
# 6. SECURITY PRINCIPLES
# ============================================================

- Authentication is required.
- Password-based login is supported.
- Biometric login may be supported.
- BusinessOS-side stored data must be protected.
- Sensitive fields must not be exposed without authorization.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/010.constitution/010_NAME_CARD_MANAGER_CONSTITUTION.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/020.architecture/020_OVERVIEW.md -->
# ============================================================
# 020 ARCHITECTURE OVERVIEW
# ============================================================

status: draft
layer: overview
system: applications
application: NameCardManager
directory: 020.architecture
owner: Boss
prepared_by: Zero

summary:
Defines the logical architecture of NameCardManager,
including local store, sync coordinator, BusinessOS
persistence, share controller, relationship resolver,
and shared ERP publication architecture.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/020.architecture/020_OVERVIEW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/020.architecture/020_INDEX.md -->
# ============================================================
# 020 ARCHITECTURE INDEX
# ============================================================

status: draft
layer: index
system: applications
application: NameCardManager
directory: 020.architecture
owner: Boss
prepared_by: Zero

files:
- 020_NAME_CARD_MANAGER_ARCHITECTURE.md
- 020110_SHARED_ERP_PUBLICATION_ARCHITECTURE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/020.architecture/020_INDEX.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/020.architecture/020_NAME_CARD_MANAGER_ARCHITECTURE.md -->
# ============================================================
# NAME CARD MANAGER ARCHITECTURE
# ============================================================

status: draft
layer: architecture
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines the logical architecture of NameCardManager.

# ============================================================
# 1. ARCHITECTURAL POSITION
# ============================================================

NameCardManager is an application under 07.applications.
It operates as a BusinessOS-connected app with local runtime
capability.

# ============================================================
# 2. PRIMARY COMPONENTS
# ============================================================

1. Local Client Store
   - local cache
   - offline working set
   - pending operation queue

2. Sync Coordinator
   - online/offline detection
   - replay of pending operations
   - pull from BusinessOS
   - push to BusinessOS

3. BusinessOS Persistence Layer
   - canonical record persistence
   - sharing state persistence
   - relationship persistence

4. Share Controller
   - app-internal sharing execution
   - app-internal sharing revoke
   - ERP-wide publication request

5. Relationship Resolver
   - related card discovery
   - related person / account / order visibility

# ============================================================
# 3. SOURCE OF TRUTH
# ============================================================

BusinessOS is the source of truth.

Local data is subordinate and exists to support:
- offline usage
- fast display
- deferred synchronization

# ============================================================
# 4. SYNCHRONIZATION MODEL
# ============================================================

Online:
- local changes are applied to BusinessOS
- BusinessOS state is synchronized back to local
- unresolved conflicts are handled explicitly

Offline:
- local actions are stored in pending queue
- no ERP publication occurs
- queued actions are replayed when connectivity returns

# ============================================================
# 5. SHARING BOUNDARIES
# ============================================================

Boundary A: private
- visible only to owner scope

Boundary B: app-internal shared
- visible only to configured shared users inside BusinessOS

Boundary C: ERP-wide published
- published through ERP path
- visible at company-wide scope according to ERP rules

# ============================================================
# 6. RELATIONSHIP ARCHITECTURE
# ============================================================

NameCardManager must support visible relationship links among:

- cards belonging to same company
- reporting / managerial relations
- order and business history relations
- project or deal relations
- introducer / introduced relations

Relationship display is an application concern.
Canonical relationship storage may be held in BusinessOS.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/020.architecture/020_NAME_CARD_MANAGER_ARCHITECTURE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/020.architecture/020110_SHARED_ERP_PUBLICATION_ARCHITECTURE.md -->
# ============================================================
# SHARED ERP PUBLICATION ARCHITECTURE
# ============================================================

status: draft
layer: architecture
system: applications
application: NameCardManager
architecture_scope: shared_erp_publication
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture boundary where NameCardManager uses
shared BusinessOS ERP publication capability rather than
direct application-local ERP transmission.

# ============================================================
# 1. ARCHITECTURE GOAL
# ============================================================

NameCardManager must not own full ERP transmission logic.
It should issue publication requests and rely on shared
BusinessOS capability for ERP publication execution.

# ============================================================
# 2. APPLICATION RESPONSIBILITY
# ============================================================

NameCardManager is responsible for:
- selecting target name cards
- presenting ERP-wide share action
- collecting publication-relevant context
- calling shared publication capability
- showing publication result state

# ============================================================
# 3. SHARED BUSINESSOS RESPONSIBILITY
# ============================================================

Shared BusinessOS ERP publication capability is responsible for:
- eligibility check
- company context attachment
- approval boundary handling
- payload transformation
- ERP transmission execution
- transmission result capture
- audit trail capture

# ============================================================
# 4. ERP BOUNDARY
# ============================================================

ERP publication is not direct application-local integration.
It is a shared BusinessOS-controlled publication path.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/020.architecture/020110_SHARED_ERP_PUBLICATION_ARCHITECTURE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030_OVERVIEW.md -->
# ============================================================
# 030 MODEL OVERVIEW
# ============================================================

status: draft
layer: overview
system: applications
application: NameCardManager
directory: 030.model
owner: Boss
prepared_by: Zero

summary:
Defines the model families for name card basic data,
detail profile, order history, sharing, ERP publication,
sync state, pending operation queue, relationships,
relationship visibility, API request/response,
audit log, history entry, approval event,
approval state transition, audit action code,
error code, UI state code, payload field map,
API field schema, validation code, and UI label code models.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030_OVERVIEW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030_INDEX.md -->
# ============================================================
# 030 MODEL INDEX
# ============================================================

status: draft
layer: index
system: applications
application: NameCardManager
directory: 030.model
owner: Boss
prepared_by: Zero

files:
- 030_NAME_CARD_MANAGER_MODEL_OVERVIEW.md
- 030100_NAMECARD_RECORD_MODEL.md
- 030110_NAMECARD_DETAIL_PROFILE_MODEL.md
- 030120_NAMECARD_ORDER_HISTORY_MODEL.md
- 030130_NAMECARD_SHARE_TARGET_MODEL.md
- 030140_NAMECARD_ERP_PUBLISH_SETTING_MODEL.md
- 030150_NAMECARD_SYNC_STATE_MODEL.md
- 030160_NAMECARD_PENDING_OPERATION_MODEL.md
- 030170_NAMECARD_RELATIONSHIP_MODEL.md
- 030180_NAMECARD_RELATIONSHIP_VISIBILITY_MODEL.md
- 030190_NAMECARD_API_REQUEST_RESPONSE_MODEL.md
- 030200_NAMECARD_ERP_PUBLICATION_REQUEST_MODEL.md
- 030210_NAMECARD_ERP_PUBLICATION_RESULT_MODEL.md
- 030220_NAMECARD_AUDIT_LOG_MODEL.md
- 030230_NAMECARD_HISTORY_ENTRY_MODEL.md
- 030240_NAMECARD_APPROVAL_EVENT_MODEL.md
- 030250_NAMECARD_APPROVAL_STATE_TRANSITION_MODEL.md
- 030260_NAMECARD_AUDIT_ACTION_CODE_MODEL.md
- 030270_NAMECARD_ERROR_CODE_MODEL.md
- 030280_NAMECARD_UI_STATE_CODE_MODEL.md
- 030290_NAMECARD_ERP_PUBLICATION_PAYLOAD_FIELD_MAP_MODEL.md
- 030300_NAMECARD_API_FIELD_SCHEMA_MODEL.md
- 030310_NAMECARD_VALIDATION_CODE_MODEL.md
- 030320_NAMECARD_UI_LABEL_CODE_MODEL.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030_INDEX.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030_NAME_CARD_MANAGER_MODEL_OVERVIEW.md -->
# ============================================================
# NAME CARD MANAGER MODEL OVERVIEW
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines the core model families for NameCardManager.

model_families:
- namecard_record
- namecard_detail_profile
- namecard_share_rule
- namecard_share_target
- namecard_erp_publish_setting
- namecard_sync_state
- namecard_pending_operation
- namecard_relationship
- namecard_order_history

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030_NAME_CARD_MANAGER_MODEL_OVERVIEW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030100_NAMECARD_RECORD_MODEL.md -->
# ============================================================
# NAMECARD RECORD MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_record
owner: Boss
prepared_by: Zero

purpose:
Stores the basic identity and card information.

fields:
- namecard_id
- owner_user_id
- local_device_id
- full_name
- company_name
- department_name
- title_name
- email
- phone
- address_text
- website_url
- front_image_uri
- back_image_uri
- memo
- created_at
- updated_at
- deleted_at
- sync_state
- app_share_state
- erp_publish_state

notes:
- BusinessOS is canonical.
- deleted_at is logical delete oriented.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030100_NAMECARD_RECORD_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030110_NAMECARD_DETAIL_PROFILE_MODEL.md -->
# ============================================================
# NAMECARD DETAIL PROFILE MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_detail_profile
owner: Boss
prepared_by: Zero

purpose:
Stores expanded knowledge about the person and their role.

fields:
- detail_profile_id
- namecard_id
- tendency_note
- personality_note
- communication_note
- authority_scope_note
- decision_scope_note
- responsibility_scope_note
- work_scope_note
- work_content_note
- influence_scope_note
- relationship_note
- created_at
- updated_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030110_NAMECARD_DETAIL_PROFILE_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030120_NAMECARD_ORDER_HISTORY_MODEL.md -->
# ============================================================
# NAMECARD ORDER HISTORY MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_order_history
owner: Boss
prepared_by: Zero

purpose:
Stores order and business history related to the card.

fields:
- order_history_id
- namecard_id
- order_date
- order_type
- order_summary
- amount_note
- project_note
- contact_result_note
- created_at
- updated_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030120_NAMECARD_ORDER_HISTORY_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030130_NAMECARD_SHARE_TARGET_MODEL.md -->
# ============================================================
# NAMECARD SHARE TARGET MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_share_target
owner: Boss
prepared_by: Zero

purpose:
Defines share targets for app-internal sharing.

fields:
- share_target_id
- owner_user_id
- target_user_id
- target_scope
- is_enabled
- created_at
- updated_at

notes:
- Used only for app-internal sharing.
- ERP-wide publication does not use share_target.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030130_NAMECARD_SHARE_TARGET_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030140_NAMECARD_ERP_PUBLISH_SETTING_MODEL.md -->
# ============================================================
# NAMECARD ERP PUBLISH SETTING MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_erp_publish_setting
owner: Boss
prepared_by: Zero

purpose:
Defines ERP publication configuration and eligibility.

fields:
- erp_publish_setting_id
- owner_user_id
- company_id
- erp_use_enabled
- publication_policy_code
- approval_required
- created_at
- updated_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030140_NAMECARD_ERP_PUBLISH_SETTING_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030150_NAMECARD_SYNC_STATE_MODEL.md -->
# ============================================================
# NAMECARD SYNC STATE MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_sync_state
owner: Boss
prepared_by: Zero

purpose:
Tracks synchronization state between local and BusinessOS.

states:
- local_only
- pending_sync
- syncing
- synced
- sync_failed
- conflict

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030150_NAMECARD_SYNC_STATE_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030160_NAMECARD_PENDING_OPERATION_MODEL.md -->
# ============================================================
# NAMECARD PENDING OPERATION MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_pending_operation
owner: Boss
prepared_by: Zero

purpose:
Stores offline operations until they can be applied to BusinessOS.

fields:
- pending_operation_id
- local_device_id
- namecard_id
- operation_type
- operation_payload
- queued_at
- replay_status
- replayed_at
- last_error

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030160_NAMECARD_PENDING_OPERATION_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030170_NAMECARD_RELATIONSHIP_MODEL.md -->
# ============================================================
# NAMECARD RELATIONSHIP MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_relationship
owner: Boss
prepared_by: Zero

purpose:
Represents visible relationships between cards and related entities.

fields:
- relationship_id
- source_namecard_id
- target_namecard_id
- relationship_type
- relationship_strength
- relationship_note
- created_at
- updated_at

examples:
- same_company
- manager
- subordinate
- deal_related
- project_related
- introducer
- introduced
- decision_maker
- working_contact

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030170_NAMECARD_RELATIONSHIP_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030180_NAMECARD_RELATIONSHIP_VISIBILITY_MODEL.md -->
# ============================================================
# NAMECARD RELATIONSHIP VISIBILITY MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_relationship_visibility
owner: Boss
prepared_by: Zero

purpose:
Defines visibility-oriented relationship representation for
NameCardManager.

fields:
- relationship_visibility_id
- source_namecard_id
- target_entity_type
- target_namecard_id
- target_external_ref
- relationship_type
- relationship_label
- visibility_level
- evidence_source
- display_priority
- is_user_confirmed
- created_at
- updated_at

target_entity_type_examples:
- namecard
- company_contact
- project_party
- order_party
- external_entity

relationship_type_examples:
- same_company
- same_department
- manager
- subordinate
- decision_maker
- working_contact
- introducer
- introduced
- order_related
- project_related
- repeat_contact

visibility_level_examples:
- hidden
- minimal
- normal
- emphasized

evidence_source_examples:
- manual
- order_history
- project_context
- same_company_inference
- imported_link

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030180_NAMECARD_RELATIONSHIP_VISIBILITY_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030190_NAMECARD_API_REQUEST_RESPONSE_MODEL.md -->
# ============================================================
# NAMECARD API REQUEST RESPONSE MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_api_request_response
owner: Boss
prepared_by: Zero

purpose:
Defines request/response model families used across the
NameCardManager API boundary.

request_families:
- create_namecard_request
- update_namecard_request
- delete_namecard_request
- sync_pull_request
- sync_push_request
- app_share_request
- app_share_revoke_request
- erp_publish_request
- relationship_query_request

response_families:
- create_namecard_response
- update_namecard_response
- delete_namecard_response
- sync_pull_response
- sync_push_response
- app_share_response
- app_share_revoke_response
- erp_publish_response
- relationship_query_response

common_response_fields:
- success
- status_code
- error_code
- error_message
- canonical_version
- sync_state
- updated_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030190_NAMECARD_API_REQUEST_RESPONSE_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030200_NAMECARD_ERP_PUBLICATION_REQUEST_MODEL.md -->
# ============================================================
# NAMECARD ERP PUBLICATION REQUEST MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_erp_publication_request
owner: Boss
prepared_by: Zero

purpose:
Represents a request from NameCardManager into shared BusinessOS
ERP publication capability.

fields:
- publication_request_id
- requester_user_id
- namecard_id
- company_id
- publication_policy_code
- approval_required
- request_note
- request_status
- requested_at
- routed_to_shared_capability_at
- created_at
- updated_at

request_status_examples:
- draft
- submitted
- pending_approval
- accepted_for_publication
- rejected
- failed

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030200_NAMECARD_ERP_PUBLICATION_REQUEST_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030210_NAMECARD_ERP_PUBLICATION_RESULT_MODEL.md -->
# ============================================================
# NAMECARD ERP PUBLICATION RESULT MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_erp_publication_result
owner: Boss
prepared_by: Zero

purpose:
Represents the result returned from shared BusinessOS ERP
publication capability.

fields:
- publication_result_id
- publication_request_id
- namecard_id
- publication_state
- shared_capability_result_code
- erp_result_code
- erp_result_message
- published_at
- failed_at
- created_at
- updated_at

publication_state_examples:
- not_published
- publish_pending
- published
- publish_failed

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030210_NAMECARD_ERP_PUBLICATION_RESULT_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030220_NAMECARD_AUDIT_LOG_MODEL.md -->
# ============================================================
# NAMECARD AUDIT LOG MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_audit_log
owner: Boss
prepared_by: Zero

purpose:
Stores auditable action history for NameCardManager.

fields:
- audit_log_id
- actor_user_id
- target_namecard_id
- action_code
- action_scope
- action_result
- related_request_id
- related_result_id
- detail_payload
- occurred_at
- created_at

action_code_examples:
- create_namecard
- update_namecard
- delete_namecard
- sync_push
- sync_conflict
- app_share
- app_share_revoke
- erp_publish_request
- erp_publish_result
- approval_result

action_scope_examples:
- local
- businessos
- shared_erp_publication
- erp

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030220_NAMECARD_AUDIT_LOG_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030230_NAMECARD_HISTORY_ENTRY_MODEL.md -->
# ============================================================
# NAMECARD HISTORY ENTRY MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_history_entry
owner: Boss
prepared_by: Zero

purpose:
Stores user-facing history records for important name card events.

fields:
- history_entry_id
- namecard_id
- history_type
- summary_text
- related_actor_user_id
- related_request_id
- related_result_id
- occurred_at
- created_at

history_type_examples:
- created
- updated
- deleted
- shared_in_app
- share_revoked
- erp_publish_requested
- erp_publish_approved
- erp_publish_rejected
- erp_published
- erp_publish_failed

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030230_NAMECARD_HISTORY_ENTRY_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030240_NAMECARD_APPROVAL_EVENT_MODEL.md -->
# ============================================================
# NAMECARD APPROVAL EVENT MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_approval_event
owner: Boss
prepared_by: Zero

purpose:
Stores approval-related events connected to ERP-wide publication.

fields:
- approval_event_id
- publication_request_id
- namecard_id
- approval_flow_type
- approval_state
- approver_user_id
- approval_note
- approval_event_type
- occurred_at
- created_at

approval_flow_type_examples:
- shared_businessos_erp_publication

approval_state_examples:
- pending
- approved
- rejected
- returned_for_fix

approval_event_type_examples:
- request_created
- routed_for_approval
- approved
- rejected
- returned_for_fix

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030240_NAMECARD_APPROVAL_EVENT_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030250_NAMECARD_APPROVAL_STATE_TRANSITION_MODEL.md -->
# ============================================================
# NAMECARD APPROVAL STATE TRANSITION MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_approval_state_transition
owner: Boss
prepared_by: Zero

purpose:
Defines approval-related state transitions for ERP-wide publication
requests routed through shared BusinessOS publication capability.

states:
- draft
- submitted
- pending_approval
- approved
- rejected
- returned_for_fix
- accepted_for_publication
- published
- publish_failed

notes:
- approved is not equal to published
- published requires shared BusinessOS publication execution success
- ordinary user cannot force transition from pending_approval to published
- ordinary user cannot revoke published state

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030250_NAMECARD_APPROVAL_STATE_TRANSITION_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030260_NAMECARD_AUDIT_ACTION_CODE_MODEL.md -->
# ============================================================
# NAMECARD AUDIT ACTION CODE MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_audit_action_code
owner: Boss
prepared_by: Zero

purpose:
Defines canonical audit action codes used by NameCardManager.

action_codes:
- create_namecard
- update_namecard
- delete_namecard
- restore_namecard
- sync_pull
- sync_push
- sync_conflict_detected
- sync_conflict_resolved
- app_share_requested
- app_share_applied
- app_share_revoke_requested
- app_share_revoked
- erp_publish_requested
- erp_publish_routed_to_shared_capability
- erp_publish_approval_required
- erp_publish_approved
- erp_publish_rejected
- erp_publish_returned_for_fix
- erp_publish_submitted
- erp_publish_succeeded
- erp_publish_failed
- relationship_registered
- relationship_updated
- relationship_removed

notes:
- action codes should remain stable once adopted
- approval event and publication result event must remain distinguishable

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030260_NAMECARD_AUDIT_ACTION_CODE_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030270_NAMECARD_ERROR_CODE_MODEL.md -->
# ============================================================
# NAMECARD ERROR CODE MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_error_code
owner: Boss
prepared_by: Zero

purpose:
Defines canonical error codes for NameCardManager.

error_codes:

# ------------------------------------------------------------
# GENERAL
# ------------------------------------------------------------
- NCM_ERR_UNKNOWN
- NCM_ERR_INVALID_REQUEST
- NCM_ERR_VALIDATION_FAILED
- NCM_ERR_UNAUTHORIZED
- NCM_ERR_FORBIDDEN
- NCM_ERR_NOT_FOUND
- NCM_ERR_ALREADY_EXISTS
- NCM_ERR_UNSUPPORTED_OPERATION

# ------------------------------------------------------------
# LOCAL / SYNC
# ------------------------------------------------------------
- NCM_ERR_LOCAL_STORE_UNAVAILABLE
- NCM_ERR_PENDING_QUEUE_WRITE_FAILED
- NCM_ERR_SYNC_PUSH_FAILED
- NCM_ERR_SYNC_PULL_FAILED
- NCM_ERR_SYNC_CONFLICT_DETECTED
- NCM_ERR_SYNC_CONFLICT_UNRESOLVED
- NCM_ERR_CANONICAL_VERSION_MISMATCH

# ------------------------------------------------------------
# NAMECARD DATA
# ------------------------------------------------------------
- NCM_ERR_NAMECARD_CREATE_FAILED
- NCM_ERR_NAMECARD_UPDATE_FAILED
- NCM_ERR_NAMECARD_DELETE_FAILED
- NCM_ERR_NAMECARD_ALREADY_DELETED
- NCM_ERR_REQUIRED_FIELD_MISSING
- NCM_ERR_INVALID_FIELD_FORMAT

# ------------------------------------------------------------
# SHARE
# ------------------------------------------------------------
- NCM_ERR_SHARE_TARGET_INVALID
- NCM_ERR_SHARE_TARGET_MISSING
- NCM_ERR_APP_SHARE_APPLY_FAILED
- NCM_ERR_APP_SHARE_REVOKE_FAILED
- NCM_ERR_SHARE_NOT_ALLOWED

# ------------------------------------------------------------
# ERP PUBLICATION
# ------------------------------------------------------------
- NCM_ERR_ERP_USE_SETTING_MISSING
- NCM_ERR_ERP_COMPANY_CONTEXT_MISSING
- NCM_ERR_ERP_PUBLICATION_POLICY_BLOCKED
- NCM_ERR_ERP_APPROVAL_REQUIRED
- NCM_ERR_ERP_APPROVAL_REJECTED
- NCM_ERR_ERP_RETURNED_FOR_FIX
- NCM_ERR_ERP_PUBLICATION_SUBMIT_FAILED
- NCM_ERR_ERP_PUBLICATION_FAILED
- NCM_ERR_ERP_PUBLICATION_RESULT_UNKNOWN
- NCM_ERR_ERP_REVOKE_NOT_ALLOWED

# ------------------------------------------------------------
# SECURITY / PROTECTION
# ------------------------------------------------------------
- NCM_ERR_PROTECTED_ACCESS_DENIED
- NCM_ERR_ENCRYPTED_STORAGE_UNAVAILABLE
- NCM_ERR_PROTECTION_REQUIREMENT_UNMET
- NCM_ERR_FAIL_CLOSED_TRIGGERED

notes:
- codes should be stable after adoption
- codes are canonical identifiers, not end-user wording
- approval-required is distinct from approval-rejected

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030270_NAMECARD_ERROR_CODE_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030280_NAMECARD_UI_STATE_CODE_MODEL.md -->
# ============================================================
# NAMECARD UI STATE CODE MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_ui_state_code
owner: Boss
prepared_by: Zero

purpose:
Defines canonical UI state codes for visible status rendering.

# ============================================================
# 1. SYNC UI STATE CODES
# ============================================================

sync_ui_state_codes:
- UI_SYNC_LOCAL_ONLY
- UI_SYNC_PENDING
- UI_SYNC_SYNCING
- UI_SYNC_SYNCED
- UI_SYNC_CONFLICT
- UI_SYNC_FAILED

# ============================================================
# 2. APP SHARE UI STATE CODES
# ============================================================

app_share_ui_state_codes:
- UI_APP_SHARE_PRIVATE
- UI_APP_SHARE_SHARED_PARTIAL
- UI_APP_SHARE_SHARED_ACTIVE
- UI_APP_SHARE_REVOKED

# ============================================================
# 3. ERP PUBLICATION UI STATE CODES
# ============================================================

erp_publication_ui_state_codes:
- UI_ERP_NOT_PUBLISHED
- UI_ERP_PENDING_APPROVAL
- UI_ERP_APPROVED_NOT_PUBLISHED
- UI_ERP_RETURNED_FOR_FIX
- UI_ERP_REJECTED
- UI_ERP_PUBLISHED
- UI_ERP_PUBLISH_FAILED

# ============================================================
# 4. RELATIONSHIP UI STATE CODES
# ============================================================

relationship_ui_state_codes:
- UI_REL_NONE
- UI_REL_EXISTS
- UI_REL_IMPORTANT
- UI_REL_MULTIPLE

# ============================================================
# 5. PROTECTION UI STATE CODES
# ============================================================

protection_ui_state_codes:
- UI_PROTECTED_NORMAL
- UI_PROTECTED_RESTRICTED
- UI_PROTECTED_HIDDEN

notes:
- codes are canonical UI identifiers
- approval and publication must remain distinguishable
- UI state code is not equal to error code

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030280_NAMECARD_UI_STATE_CODE_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030290_NAMECARD_ERP_PUBLICATION_PAYLOAD_FIELD_MAP_MODEL.md -->
# ============================================================
# NAMECARD ERP PUBLICATION PAYLOAD FIELD MAP MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_erp_publication_payload_field_map
owner: Boss
prepared_by: Zero

purpose:
Defines field mapping between NameCardManager data,
shared BusinessOS ERP publication input,
and ERP-facing publication payload output.

# ============================================================
# 1. APPLICATION-SIDE INPUT FIELDS
# ============================================================

application_input_fields:
- requester_user_id
- namecard_id
- company_id
- publication_policy_code
- request_note
- full_name
- company_name
- department_name
- title_name
- email
- phone
- address_text
- website_url
- memo
- authority_scope_note
- decision_scope_note
- responsibility_scope_note
- work_scope_note
- work_content_note
- influence_scope_note
- relationship_note
- order_history_summary

# ============================================================
# 2. SHARED BUSINESSOS PUBLICATION INPUT FIELDS
# ============================================================

shared_publication_input_fields:
- publication_request_id
- requester_user_id
- source_application_code
- source_record_id
- company_id
- publication_policy_code
- approval_required
- canonical_version
- normalized_contact_payload
- supplemental_business_context
- audit_context

# ============================================================
# 3. ERP-FACING OUTPUT FIELDS
# ============================================================

erp_output_fields:
- erp_payload_type
- company_id
- source_application_code
- source_record_id
- contact_full_name
- contact_company_name
- contact_department_name
- contact_title_name
- contact_email
- contact_phone
- contact_address
- contact_website
- business_context_summary
- decision_scope_summary
- responsibility_scope_summary
- work_scope_summary
- relationship_summary
- order_history_summary
- publication_timestamp

# ============================================================
# 4. NOTES
# ============================================================

notes:
- application does not directly define final ERP payload shape alone
- shared BusinessOS capability performs normalization and transformation
- ERP-facing output is publication-oriented, not raw local model dump

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030290_NAMECARD_ERP_PUBLICATION_PAYLOAD_FIELD_MAP_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030300_NAMECARD_API_FIELD_SCHEMA_MODEL.md -->
# ============================================================
# NAMECARD API FIELD SCHEMA MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_api_field_schema
owner: Boss
prepared_by: Zero

purpose:
Defines canonical field schema families for NameCardManager API
requests and responses.

schema_families:
- create_namecard_request_schema
- create_namecard_response_schema
- update_namecard_request_schema
- update_namecard_response_schema
- delete_namecard_request_schema
- delete_namecard_response_schema
- sync_push_request_schema
- sync_push_response_schema
- sync_pull_request_schema
- sync_pull_response_schema
- app_share_request_schema
- app_share_response_schema
- app_share_revoke_request_schema
- app_share_revoke_response_schema
- erp_publish_request_schema
- erp_publish_response_schema
- relationship_query_request_schema
- relationship_query_response_schema

common_field_types:
- string
- uuid
- boolean
- integer
- timestamp
- enum
- object
- array
- nullable_string

notes:
- schema here is design schema, not language-specific implementation code
- request/response field meaning must remain canonical across clients

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030300_NAMECARD_API_FIELD_SCHEMA_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030310_NAMECARD_VALIDATION_CODE_MODEL.md -->
# ============================================================
# NAMECARD VALIDATION CODE MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_validation_code
owner: Boss
prepared_by: Zero

purpose:
Defines canonical validation codes used before action execution.

validation_codes:

# ------------------------------------------------------------
# GENERAL
# ------------------------------------------------------------
- NCM_VAL_OK
- NCM_VAL_REQUESTER_MISSING
- NCM_VAL_REQUESTER_INVALID
- NCM_VAL_OPERATION_NOT_ALLOWED
- NCM_VAL_TARGET_RECORD_MISSING
- NCM_VAL_TARGET_RECORD_INVALID
- NCM_VAL_CANONICAL_VERSION_REQUIRED
- NCM_VAL_CANONICAL_VERSION_STALE

# ------------------------------------------------------------
# CREATE / UPDATE
# ------------------------------------------------------------
- NCM_VAL_FULL_NAME_REQUIRED
- NCM_VAL_EMAIL_FORMAT_INVALID
- NCM_VAL_PHONE_FORMAT_INVALID
- NCM_VAL_FIELD_LENGTH_EXCEEDED
- NCM_VAL_DETAIL_PAYLOAD_INVALID
- NCM_VAL_DELETE_REASON_REQUIRED_WHEN_POLICY_APPLIES

# ------------------------------------------------------------
# SYNC
# ------------------------------------------------------------
- NCM_VAL_LOCAL_DEVICE_ID_REQUIRED
- NCM_VAL_PENDING_OPERATION_ID_REQUIRED
- NCM_VAL_OPERATION_TYPE_REQUIRED
- NCM_VAL_OPERATION_PAYLOAD_REQUIRED
- NCM_VAL_SYNC_CONTEXT_INVALID

# ------------------------------------------------------------
# APP SHARE
# ------------------------------------------------------------
- NCM_VAL_SHARE_TARGET_IDS_REQUIRED
- NCM_VAL_SHARE_TARGET_NOT_FOUND
- NCM_VAL_SHARE_TARGET_DISABLED
- NCM_VAL_APP_SHARE_TARGET_SCOPE_INVALID
- NCM_VAL_APP_SHARE_NOT_ALLOWED

# ------------------------------------------------------------
# ERP PUBLICATION
# ------------------------------------------------------------
- NCM_VAL_NAMECARD_IDS_REQUIRED
- NCM_VAL_COMPANY_ID_REQUIRED
- NCM_VAL_PUBLICATION_POLICY_CODE_REQUIRED
- NCM_VAL_ERP_USE_SETTING_REQUIRED
- NCM_VAL_ERP_PUBLICATION_NOT_ALLOWED
- NCM_VAL_ERP_APPROVAL_CONTEXT_REQUIRED
- NCM_VAL_ERP_PROTECTED_FIELD_BLOCKED
- NCM_VAL_ERP_REQUIRED_CONTACT_FIELD_MISSING

# ------------------------------------------------------------
# RELATIONSHIP
# ------------------------------------------------------------
- NCM_VAL_RELATIONSHIP_SCOPE_INVALID
- NCM_VAL_RELATIONSHIP_QUERY_NOT_ALLOWED

notes:
- validation codes are pre-execution or pre-transition signals
- validation code is distinct from error code
- a request may fail validation before any deeper error occurs

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030310_NAMECARD_VALIDATION_CODE_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030320_NAMECARD_UI_LABEL_CODE_MODEL.md -->
# ============================================================
# NAMECARD UI LABEL CODE MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_ui_label_code
owner: Boss
prepared_by: Zero

purpose:
Defines canonical UI label codes for badges and short UI text.

label_code_families:
- sync_badge_label_code
- app_share_badge_label_code
- erp_publication_badge_label_code
- relationship_badge_label_code
- protection_badge_label_code
- validation_message_label_code
- error_message_label_code

notes:
- label codes represent canonical UI wording targets
- label codes are separate from UI state codes
- one UI state may map to one or more label variants

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030320_NAMECARD_UI_LABEL_CODE_MODEL.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/040.runtime/040_OVERVIEW.md -->
# ============================================================
# 040 RUNTIME OVERVIEW
# ============================================================

status: draft
layer: overview
system: applications
application: NameCardManager
directory: 040.runtime
owner: Boss
prepared_by: Zero

summary:
Defines login, online sync, offline queueing, share execution,
delete behavior, relationship display runtime, sync conflict runtime,
and relationship visibility runtime.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/040.runtime/040_OVERVIEW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/040.runtime/040_INDEX.md -->
# ============================================================
# 040 RUNTIME INDEX
# ============================================================

status: draft
layer: index
system: applications
application: NameCardManager
directory: 040.runtime
owner: Boss
prepared_by: Zero

files:
- 040_NAME_CARD_MANAGER_RUNTIME.md
- 040110_NAMECARD_SYNC_CONFLICT_RUNTIME.md
- 040120_NAMECARD_RELATIONSHIP_VISIBILITY_RUNTIME.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/040.runtime/040_INDEX.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/040.runtime/040_NAME_CARD_MANAGER_RUNTIME.md -->
# ============================================================
# NAME CARD MANAGER RUNTIME
# ============================================================

status: draft
layer: runtime
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for local operation, synchronization,
sharing, and ERP publication.

# ============================================================
# 1. LOGIN RUNTIME
# ============================================================

Supported authentication:
- id and password
- biometric unlock support such as fingerprint or face

# ============================================================
# 2. ONLINE RUNTIME
# ============================================================

When online:
- local records are saved to BusinessOS
- BusinessOS state is synchronized to local
- local operations are applied to BusinessOS
- pending offline operations are replayed

# ============================================================
# 3. OFFLINE RUNTIME
# ============================================================

When offline:
- local view and local edit remain available
- operations are queued locally
- app-internal share execution is not completed remotely
- ERP-wide publication is not executed

# ============================================================
# 4. SHARE RUNTIME
# ============================================================

App-internal share:
- explicit user action required
- limited to configured share targets
- can be revoked

ERP-wide share:
- explicit user action required
- governed by ERP usage setting
- governed by approval policy
- cannot be revoked by ordinary user action

# ============================================================
# 5. DELETE RUNTIME
# ============================================================

Delete operations:
- may first be represented as logical deletion
- must synchronize to BusinessOS when online
- offline delete is queued for later apply

# ============================================================
# 6. RELATIONSHIP RUNTIME
# ============================================================

The application should surface visible related records where known.

Relationship signals may derive from:
- same company
- prior order history
- explicit relationship registration
- business context knowledge


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/040.runtime/040_NAME_CARD_MANAGER_RUNTIME.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/040.runtime/040110_NAMECARD_SYNC_CONFLICT_RUNTIME.md -->
# ============================================================
# NAMECARD SYNC CONFLICT RUNTIME
# ============================================================

status: draft
layer: runtime
system: applications
application: NameCardManager
runtime: sync_conflict
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior when local offline changes conflict
with the canonical BusinessOS state.

# ============================================================
# 1. RUNTIME GOAL
# ============================================================

Conflict runtime exists to prevent silent overwrite when
local deferred changes and BusinessOS canonical state differ
in incompatible ways.

# ============================================================
# 2. CONFLICT TRIGGERS
# ============================================================

Conflict may occur when:
- local offline update targets a card changed in BusinessOS
- local offline delete targets a card changed in BusinessOS
- local offline share-related action targets changed share state
- local offline detail fields differ from newer canonical fields
- local replay references record state no longer valid

# ============================================================
# 3. REQUIRED BEHAVIOR
# ============================================================

When conflict is detected:
- do not silently discard local change
- do not silently overwrite canonical BusinessOS state
- mark sync state as conflict
- preserve local pending operation visibility
- preserve canonical record visibility
- require explicit resolution path

# ============================================================
# 4. ALLOWED RUNTIME OUTCOMES
# ============================================================

Allowed outcomes:
- local change accepted and applied
- canonical state kept and local operation dropped with visibility
- manual merge required
- local record refresh from canonical after explicit resolution

# ============================================================
# 5. SHARE-RELATED CONFLICTS
# ============================================================

For app-internal sharing:
- target changes may require re-evaluation
- revoke and add operations must not be silently reordered

For ERP-wide sharing:
- pending or published ERP state must not be overwritten by
  ordinary offline local replay


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/040.runtime/040110_NAMECARD_SYNC_CONFLICT_RUNTIME.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/040.runtime/040120_NAMECARD_RELATIONSHIP_VISIBILITY_RUNTIME.md -->
# ============================================================
# NAMECARD RELATIONSHIP VISIBILITY RUNTIME
# ============================================================

status: draft
layer: runtime
system: applications
application: NameCardManager
runtime: relationship_visibility
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for surfacing visible relationships.

# ============================================================
# 1. RUNTIME GOAL
# ============================================================

When a name card has relevant relationships, the application
should surface them in a readable and controlled way.

# ============================================================
# 2. RUNTIME SOURCES
# ============================================================

Relationship visibility may derive from:
- explicit manual relationship registration
- same company grouping
- same department grouping
- order history relation
- project/deal relation
- introducer relation
- decision-maker / working-contact distinction

# ============================================================
# 3. REQUIRED BEHAVIOR
# ============================================================

The runtime should:
- load visible related entries for a selected card
- show readable labels for relationship type
- prioritize important relationships
- avoid unreadable clutter
- respect authorization and visibility constraints

# ============================================================
# 4. PRIORITY BEHAVIOR
# ============================================================

Higher display priority may be given to:
- same-company direct contacts
- decision makers
- current working contacts
- order-related contacts
- project-related contacts

# ============================================================
# 5. FAILURE BEHAVIOR
# ============================================================

If relationship evidence is incomplete:
- do not invent confirmed relationship
- allow limited or cautious visibility where policy allows
- preserve explicit/manual relationships over weak inference


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/040.runtime/040120_NAMECARD_RELATIONSHIP_VISIBILITY_RUNTIME.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/050.flow/050_OVERVIEW.md -->
# ============================================================
# 050 FLOW OVERVIEW
# ============================================================

status: draft
layer: overview
system: applications
application: NameCardManager
directory: 050.flow
owner: Boss
prepared_by: Zero

summary:
Defines login, online boot, offline boot, create, update,
delete, app-internal share, share revoke, ERP-wide share,
ERP-wide share approval, relationship view, sync conflict resolution,
and approval state transition flows.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/050.flow/050_OVERVIEW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/050.flow/050_INDEX.md -->
# ============================================================
# 050 FLOW INDEX
# ============================================================

status: draft
layer: index
system: applications
application: NameCardManager
directory: 050.flow
owner: Boss
prepared_by: Zero

files:
- 050_NAME_CARD_MANAGER_FLOW.md
- 050110_ERP_WIDE_SHARE_APPROVAL_FLOW.md
- 050120_NAMECARD_SYNC_CONFLICT_RESOLUTION_FLOW.md
- 050130_NAMECARD_APPROVAL_STATE_TRANSITION_FLOW.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/050.flow/050_INDEX.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/050.flow/050_NAME_CARD_MANAGER_FLOW.md -->
# ============================================================
# NAME CARD MANAGER FLOW
# ============================================================

status: draft
layer: flow
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines end-to-end operational flows for NameCardManager.

# ============================================================
# 1. LOGIN FLOW
# ============================================================

1. User opens the application.
2. User authenticates by:
   - id and password
   - fingerprint
   - face authentication
3. On success, the application opens the name card list.
4. On failure, access is denied.

# ============================================================
# 2. ONLINE BOOT FLOW
# ============================================================

1. Detect online state.
2. Pull canonical state from BusinessOS.
3. Synchronize BusinessOS state to local.
4. Replay pending offline operations to BusinessOS.
5. Refresh local state from BusinessOS after replay.

# ============================================================
# 3. OFFLINE BOOT FLOW
# ============================================================

1. Detect offline state.
2. Open local cached dataset.
3. Mark session as offline working mode.
4. Queue all mutating operations for later replay.

# ============================================================
# 4. NAME CARD CREATE FLOW
# ============================================================

1. User selects create.
2. User enters basic card information.
3. User may attach front/back image.
4. Record is saved locally.
5. If online, record is applied to BusinessOS.
6. If offline, create operation is queued.

# ============================================================
# 5. NAME CARD DETAIL UPDATE FLOW
# ============================================================

1. User opens a name card.
2. User edits detailed information:
   - tendency
   - personality
   - responsibility scope
   - work scope
   - order history
   - relationship note
3. Record is updated locally.
4. If online, update is applied to BusinessOS.
5. If offline, update operation is queued.

# ============================================================
# 6. NAME CARD DELETE FLOW
# ============================================================

1. User selects delete.
2. Confirmation is required.
3. Record is logically deleted locally.
4. If online, delete is applied to BusinessOS.
5. If offline, delete operation is queued.

# ============================================================
# 7. APP-INTERNAL SHARE FLOW
# ============================================================

1. User selects one or more target name cards.
2. User presses share button.
3. System verifies configured share targets.
4. System applies app-internal sharing to BusinessOS.
5. Share state becomes active for selected share targets.

# ============================================================
# 8. APP-INTERNAL SHARE REVOKE FLOW
# ============================================================

1. User opens share management.
2. User removes one or more share targets.
3. System updates share state in BusinessOS.
4. Removed targets lose access.

# ============================================================
# 9. ERP-WIDE SHARE FLOW
# ============================================================

1. User selects one or more target name cards.
2. User presses ERP-wide share button.
3. System checks ERP use setting.
4. System checks publication policy.
5. System checks approval requirement.
6. If requirements pass, publication request is sent.
7. ERP publication state is updated accordingly.

# ============================================================
# 10. RELATIONSHIP VIEW FLOW
# ============================================================

1. User opens a card detail.
2. System loads known related cards and related business context.
3. Related entries are shown visually in the detail view.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/050.flow/050_NAME_CARD_MANAGER_FLOW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/050.flow/050110_ERP_WIDE_SHARE_APPROVAL_FLOW.md -->
# ============================================================
# ERP WIDE SHARE APPROVAL FLOW
# ============================================================

status: draft
layer: flow
system: applications
application: NameCardManager
flow: erp_wide_share_approval
owner: Boss
prepared_by: Zero

purpose:
Defines the approval-oriented flow for ERP-wide sharing.

# ============================================================
# 1. FLOW GOAL
# ============================================================

ERP-wide sharing is not a simple share action.
It is a controlled publication path into ERP and may require
approval before publication is completed.

# ============================================================
# 2. PRECONDITIONS
# ============================================================

Before ERP-wide sharing proceeds, the system must verify:

- target name card exists
- target name card is not deleted
- ERP use setting is enabled where required
- required company context is available
- publication policy allows submission
- approval requirement is known

# ============================================================
# 3. FLOW
# ============================================================

1. User selects one or more target name cards.
2. User presses ERP-wide share.
3. System evaluates ERP publication eligibility.
4. System determines whether approval is required.
5. If approval is required:
   - create publication request
   - move state to publish_pending
   - wait for approval result
6. If approval is not required and policy permits:
   - submit publication directly
7. ERP returns publication result.
8. System updates ERP publication state.

# ============================================================
# 4. APPROVAL BRANCH
# ============================================================

Approval required branch:

- request created
- ordinary user cannot force publish
- ordinary user cannot revoke published ERP-wide data
- final publication depends on approval result

Possible approval outcomes:
- approved
- rejected
- returned_for_fix

# ============================================================
# 5. RESULTING STATES
# ============================================================

Possible resulting states:
- not_published
- publish_pending
- published
- publish_failed

# ============================================================
# 6. FAILURE HANDLING
# ============================================================

Failures must remain visible.

Examples:
- missing company context
- missing ERP usage setting
- approval rejection
- ERP publication failure
- transport or application error


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/050.flow/050110_ERP_WIDE_SHARE_APPROVAL_FLOW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/050.flow/050120_NAMECARD_SYNC_CONFLICT_RESOLUTION_FLOW.md -->
# ============================================================
# NAMECARD SYNC CONFLICT RESOLUTION FLOW
# ============================================================

status: draft
layer: flow
system: applications
application: NameCardManager
flow: sync_conflict_resolution
owner: Boss
prepared_by: Zero

purpose:
Defines the operational flow for handling sync conflict.

# ============================================================
# 1. FLOW GOAL
# ============================================================

The conflict resolution flow provides a safe path for handling
differences between deferred local operations and BusinessOS
canonical state.

# ============================================================
# 2. ENTRY CONDITIONS
# ============================================================

This flow begins when:
- replay starts after offline work
- system compares pending operations with canonical state
- conflict is detected

# ============================================================
# 3. FLOW
# ============================================================

1. System loads pending local operation.
2. System loads latest canonical BusinessOS state.
3. System compares affected fields and operational context.
4. If no conflict exists:
   - apply local operation
   - mark sync as synced
5. If conflict exists:
   - mark sync state as conflict
   - preserve pending operation
   - expose conflict visibility to user or administrator
   - wait for explicit resolution

# ============================================================
# 4. RESOLUTION PATHS
# ============================================================

Possible resolution paths:
- keep BusinessOS canonical state
- apply local version over canonical where policy allows
- manually merge selected fields
- cancel local pending operation

# ============================================================
# 5. POST-RESOLUTION FLOW
# ============================================================

After resolution:
- update canonical state where required
- clear or update pending operation
- refresh local state from BusinessOS
- remove conflict state if resolved successfully


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/050.flow/050120_NAMECARD_SYNC_CONFLICT_RESOLUTION_FLOW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/050.flow/050130_NAMECARD_APPROVAL_STATE_TRANSITION_FLOW.md -->
# ============================================================
# NAMECARD APPROVAL STATE TRANSITION FLOW
# ============================================================

status: draft
layer: flow
system: applications
application: NameCardManager
flow: approval_state_transition
owner: Boss
prepared_by: Zero

purpose:
Defines the allowed state progression for ERP-wide publication
requests and results.

# ============================================================
# 1. FLOW GOAL
# ============================================================

The flow ensures that approval state and publication state
do not collapse into one ambiguous path.

# ============================================================
# 2. MAIN TRANSITIONS
# ============================================================

Allowed primary transitions:

draft
 -> submitted

submitted
 -> pending_approval
 -> accepted_for_publication
 -> rejected
 -> publish_failed

pending_approval
 -> approved
 -> rejected
 -> returned_for_fix

approved
 -> accepted_for_publication

accepted_for_publication
 -> published
 -> publish_failed

returned_for_fix
 -> submitted
 -> rejected

# ============================================================
# 3. IMPORTANT RULES
# ============================================================

- approved does not mean published
- published requires shared BusinessOS ERP publication execution
- rejected must not transition directly to published
- ordinary user cannot bypass pending_approval
- ordinary user cannot move published back to not_published


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/050.flow/050130_NAMECARD_APPROVAL_STATE_TRANSITION_FLOW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060_OVERVIEW.md -->
# ============================================================
# 060 INTEGRATION OVERVIEW
# ============================================================

status: draft
layer: overview
system: applications
application: NameCardManager
directory: 060.integration
owner: Boss
prepared_by: Zero

summary:
Defines integration with local client storage, BusinessOS,
ERP publication boundary, authentication, relationship sources,
explicit API contracts, shared BusinessOS ERP publication integration,
ERP publication payload field mapping, and API field schema.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060_OVERVIEW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060_INDEX.md -->
# ============================================================
# 060 INTEGRATION INDEX
# ============================================================

status: draft
layer: index
system: applications
application: NameCardManager
directory: 060.integration
owner: Boss
prepared_by: Zero

files:
- 060_NAME_CARD_MANAGER_INTEGRATION.md
- 060110_NAMECARD_API_INTEGRATION_CONTRACT.md
- 060120_NAMECARD_SYNC_API_CONTRACT.md
- 060130_NAMECARD_SHARE_API_CONTRACT.md
- 060140_NAMECARD_ERP_PUBLISH_API_CONTRACT.md
- 060150_NAMECARD_SHARED_ERP_PUBLICATION_INTEGRATION.md
- 060160_NAMECARD_ERP_PUBLICATION_PAYLOAD_FIELD_MAP.md
- 060170_NAMECARD_API_FIELD_SCHEMA.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060_INDEX.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060_NAME_CARD_MANAGER_INTEGRATION.md -->
# ============================================================
# NAME CARD MANAGER INTEGRATION
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines integration boundaries for NameCardManager.

# ============================================================
# 1. BUSINESSOS INTEGRATION
# ============================================================

BusinessOS is the canonical persistence and sharing boundary.

Integration responsibilities:
- canonical persistence
- synchronization source
- app-internal share state persistence
- relationship persistence
- ERP publication request source

# ============================================================
# 2. LOCAL CLIENT INTEGRATION
# ============================================================

Local runtime integrates with:
- local encrypted store
- local pending operation queue
- local authentication/session layer
- local image storage for card images

# ============================================================
# 3. ERP INTEGRATION
# ============================================================

ERP integration is publication-oriented, not general local sync.

ERP integration responsibilities:
- ERP use eligibility check
- company context attachment
- approval-governed publication
- publication result handling

ERP integration principles:
- explicit only
- no automatic ERP publication
- ordinary users cannot revoke published ERP-wide sharing

# ============================================================
# 4. AUTHENTICATION INTEGRATION
# ============================================================

Authentication may integrate with:
- id/password authentication
- device biometric authentication
- session token or application session boundary

# ============================================================
# 5. RELATIONSHIP INTEGRATION
# ============================================================

Relationship visibility may integrate with:
- same company card grouping
- order history records
- project/deal context
- explicit relationship registration


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060_NAME_CARD_MANAGER_INTEGRATION.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060110_NAMECARD_API_INTEGRATION_CONTRACT.md -->
# ============================================================
# NAMECARD API INTEGRATION CONTRACT
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
integration_scope: api_contract
owner: Boss
prepared_by: Zero

purpose:
Defines the API contract boundary between local runtime,
BusinessOS, and ERP publication path.

# ============================================================
# 1. CONTRACT GOAL
# ============================================================

The API contract exists to make local actions, synchronization,
sharing, and ERP-wide publication explicit and bounded.

# ============================================================
# 2. MAIN API ACTIONS
# ============================================================

BusinessOS-oriented actions:
- create_namecard
- update_namecard
- delete_namecard
- sync_pull
- sync_push
- get_namecard_detail
- get_namecard_relationships
- app_share_namecard
- revoke_app_share_namecard

ERP publication-oriented action:
- request_erp_publish_namecard

# ============================================================
# 3. REQUEST RULES
# ============================================================

Each request should include:
- requester identity or session context
- target record identity where applicable
- operation payload appropriate to action
- version or sync context where required
- company context where ERP publication requires it

# ============================================================
# 4. RESPONSE RULES
# ============================================================

Each response should include:
- operation success/failure
- canonical state or resulting state where appropriate
- sync result where relevant
- conflict or validation signal where relevant
- publication result where relevant

# ============================================================
# 5. FAILURE RULES
# ============================================================

Failure must be explicit.

Examples:
- validation_failed
- unauthorized
- conflict_detected
- share_target_invalid
- erp_setting_missing
- approval_required
- publication_failed


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060110_NAMECARD_API_INTEGRATION_CONTRACT.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060120_NAMECARD_SYNC_API_CONTRACT.md -->
# ============================================================
# NAMECARD SYNC API CONTRACT
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
integration_scope: sync_api_contract
owner: Boss
prepared_by: Zero

purpose:
Defines sync-specific API expectations.

# ============================================================
# 1. SYNC PUSH
# ============================================================

sync_push submits local pending operations toward BusinessOS.

Expected request content may include:
- local_device_id
- pending_operation_id
- namecard_id
- operation_type
- operation_payload
- local_known_version

Expected response content may include:
- applied
- conflict_detected
- resulting_sync_state
- canonical_version
- canonical_updated_at

# ============================================================
# 2. SYNC PULL
# ============================================================

sync_pull retrieves canonical state from BusinessOS.

Expected request content may include:
- requester identity
- local_last_sync_at
- local_known_version_map

Expected response content may include:
- changed_records
- deleted_records
- relationship_updates
- publication_state_updates
- share_state_updates

# ============================================================
# 3. CONFLICT RULE
# ============================================================

If conflict is detected:
- response must explicitly indicate conflict
- local client must not assume successful apply
- canonical overwrite must not be implicit


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060120_NAMECARD_SYNC_API_CONTRACT.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060130_NAMECARD_SHARE_API_CONTRACT.md -->
# ============================================================
# NAMECARD SHARE API CONTRACT
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
integration_scope: share_api_contract
owner: Boss
prepared_by: Zero

purpose:
Defines API contract for app-internal sharing.

# ============================================================
# 1. APP SHARE REQUEST
# ============================================================

Expected request content may include:
- requester identity
- target namecard ids
- share target ids
- share mode
- operation timestamp

# ============================================================
# 2. APP SHARE RESPONSE
# ============================================================

Expected response content may include:
- applied_targets
- rejected_targets
- resulting_app_share_state
- validation_errors

# ============================================================
# 3. APP SHARE REVOKE REQUEST
# ============================================================

Expected request content may include:
- requester identity
- target namecard ids
- revoked share target ids

# ============================================================
# 4. APP SHARE REVOKE RESPONSE
# ============================================================

Expected response content may include:
- revoked_targets
- unchanged_targets
- resulting_app_share_state
- validation_errors


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060130_NAMECARD_SHARE_API_CONTRACT.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060140_NAMECARD_ERP_PUBLISH_API_CONTRACT.md -->
# ============================================================
# NAMECARD ERP PUBLISH API CONTRACT
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
integration_scope: erp_publish_api_contract
owner: Boss
prepared_by: Zero

purpose:
Defines API contract for ERP-wide publication requests.

# ============================================================
# 1. REQUEST GOAL
# ============================================================

ERP-wide publish request is a controlled publication request,
not ordinary app sharing.

# ============================================================
# 2. EXPECTED REQUEST CONTENT
# ============================================================

Request may include:
- requester identity
- target namecard ids
- company_id
- publication_policy_code
- approval_context
- requester note
- canonical version reference

# ============================================================
# 3. EXPECTED RESPONSE CONTENT
# ============================================================

Response may include:
- accepted_for_review
- approval_required
- publication_submitted
- publication_state
- rejection_reason
- validation_errors

# ============================================================
# 4. RULES
# ============================================================

- approval-required response must not be treated as published
- published response must indicate resulting published state
- ordinary user revoke is not part of this contract


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060140_NAMECARD_ERP_PUBLISH_API_CONTRACT.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060150_NAMECARD_SHARED_ERP_PUBLICATION_INTEGRATION.md -->
# ============================================================
# NAMECARD SHARED ERP PUBLICATION INTEGRATION
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
integration_scope: shared_erp_publication
owner: Boss
prepared_by: Zero

purpose:
Defines how NameCardManager integrates with shared BusinessOS
ERP publication capability.

# ============================================================
# 1. INTEGRATION GOAL
# ============================================================

NameCardManager requests ERP-wide publication through shared
BusinessOS capability rather than transmitting directly to ERP.

# ============================================================
# 2. REQUEST HANDOFF
# ============================================================

NameCardManager hands off:
- requester identity
- target namecard identity
- company context
- publication policy context
- approval-relevant context

# ============================================================
# 3. SHARED CAPABILITY HANDLING
# ============================================================

Shared capability performs:
- eligibility validation
- approval routing
- payload transformation
- ERP submission
- result return
- audit capture

# ============================================================
# 4. RESULT HANDLING
# ============================================================

NameCardManager receives:
- pending approval state
- approved/published state
- rejected state
- failed state

# ============================================================
# 5. RULE
# ============================================================

Ordinary-user revoke of published ERP-wide sharing is not part
of this integration boundary.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060150_NAMECARD_SHARED_ERP_PUBLICATION_INTEGRATION.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060160_NAMECARD_ERP_PUBLICATION_PAYLOAD_FIELD_MAP.md -->
# ============================================================
# NAMECARD ERP PUBLICATION PAYLOAD FIELD MAP
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
integration_scope: erp_publication_payload_field_map
owner: Boss
prepared_by: Zero

purpose:
Defines the handoff mapping from NameCardManager to shared
BusinessOS ERP publication capability and onward to ERP output.

# ============================================================
# 1. HANDOFF PRINCIPLE
# ============================================================

NameCardManager provides source fields and business context.
Shared BusinessOS capability transforms them into ERP-facing payload.

# ============================================================
# 2. EXAMPLE FIELD MAP
# ============================================================

application_to_shared_map:
- namecard_id -> source_record_id
- requester_user_id -> requester_user_id
- company_id -> company_id
- publication_policy_code -> publication_policy_code
- full_name -> normalized_contact_payload.full_name
- company_name -> normalized_contact_payload.company_name
- department_name -> normalized_contact_payload.department_name
- title_name -> normalized_contact_payload.title_name
- email -> normalized_contact_payload.email
- phone -> normalized_contact_payload.phone
- address_text -> normalized_contact_payload.address_text
- website_url -> normalized_contact_payload.website_url
- authority_scope_note -> supplemental_business_context.authority_scope
- decision_scope_note -> supplemental_business_context.decision_scope
- responsibility_scope_note -> supplemental_business_context.responsibility_scope
- work_scope_note -> supplemental_business_context.work_scope
- work_content_note -> supplemental_business_context.work_content
- influence_scope_note -> supplemental_business_context.influence_scope
- relationship_note -> supplemental_business_context.relationship_summary
- order_history_summary -> supplemental_business_context.order_history_summary

shared_to_erp_map:
- source_record_id -> source_record_id
- company_id -> company_id
- normalized_contact_payload.full_name -> contact_full_name
- normalized_contact_payload.company_name -> contact_company_name
- normalized_contact_payload.department_name -> contact_department_name
- normalized_contact_payload.title_name -> contact_title_name
- normalized_contact_payload.email -> contact_email
- normalized_contact_payload.phone -> contact_phone
- normalized_contact_payload.address_text -> contact_address
- normalized_contact_payload.website_url -> contact_website
- supplemental_business_context.decision_scope -> decision_scope_summary
- supplemental_business_context.responsibility_scope -> responsibility_scope_summary
- supplemental_business_context.work_scope -> work_scope_summary
- supplemental_business_context.relationship_summary -> relationship_summary
- supplemental_business_context.order_history_summary -> order_history_summary

# ============================================================
# 3. RULES
# ============================================================

- application must not bypass shared transformation layer
- shared capability may omit, redact, or normalize fields by policy
- ERP payload should use publication-safe normalized values
- protected fields must follow authorization and publication policy


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060160_NAMECARD_ERP_PUBLICATION_PAYLOAD_FIELD_MAP.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060170_NAMECARD_API_FIELD_SCHEMA.md -->
# ============================================================
# NAMECARD API FIELD SCHEMA
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
integration_scope: api_field_schema
owner: Boss
prepared_by: Zero

purpose:
Defines request and response field schema at the integration boundary.

# ============================================================
# 1. CREATE NAMECARD REQUEST SCHEMA
# ============================================================

fields:
- requester_user_id: uuid, required
- local_device_id: string, optional
- full_name: string, required
- company_name: string, optional
- department_name: string, optional
- title_name: string, optional
- email: string, optional
- phone: string, optional
- address_text: string, optional
- website_url: string, optional
- memo: string, optional

# ============================================================
# 2. CREATE NAMECARD RESPONSE SCHEMA
# ============================================================

fields:
- success: boolean, required
- namecard_id: uuid, required if success=true
- canonical_version: integer, optional
- sync_state: enum, optional
- error_code: string, optional
- error_message: string, optional
- updated_at: timestamp, optional

# ============================================================
# 3. UPDATE NAMECARD REQUEST SCHEMA
# ============================================================

fields:
- requester_user_id: uuid, required
- namecard_id: uuid, required
- canonical_version: integer, optional
- full_name: string, optional
- company_name: string, optional
- department_name: string, optional
- title_name: string, optional
- email: string, optional
- phone: string, optional
- address_text: string, optional
- website_url: string, optional
- memo: string, optional
- detail_payload: object, optional

# ============================================================
# 4. DELETE NAMECARD REQUEST SCHEMA
# ============================================================

fields:
- requester_user_id: uuid, required
- namecard_id: uuid, required
- canonical_version: integer, optional
- delete_reason: string, optional

# ============================================================
# 5. SYNC PUSH REQUEST SCHEMA
# ============================================================

fields:
- requester_user_id: uuid, required
- local_device_id: string, required
- pending_operation_id: uuid, required
- namecard_id: uuid, required
- operation_type: enum, required
- operation_payload: object, required
- local_known_version: integer, optional

# ============================================================
# 6. SYNC PUSH RESPONSE SCHEMA
# ============================================================

fields:
- success: boolean, required
- applied: boolean, required
- conflict_detected: boolean, required
- resulting_sync_state: enum, optional
- canonical_version: integer, optional
- error_code: string, optional
- error_message: string, optional

# ============================================================
# 7. SYNC PULL REQUEST SCHEMA
# ============================================================

fields:
- requester_user_id: uuid, required
- local_device_id: string, required
- local_last_sync_at: timestamp, optional
- local_known_version_map: object, optional

# ============================================================
# 8. SYNC PULL RESPONSE SCHEMA
# ============================================================

fields:
- success: boolean, required
- changed_records: array, optional
- deleted_records: array, optional
- share_state_updates: array, optional
- relationship_updates: array, optional
- publication_state_updates: array, optional
- error_code: string, optional
- error_message: string, optional

# ============================================================
# 9. APP SHARE REQUEST SCHEMA
# ============================================================

fields:
- requester_user_id: uuid, required
- namecard_ids: array, required
- share_target_ids: array, required
- operation_timestamp: timestamp, optional

# ============================================================
# 10. APP SHARE REVOKE REQUEST SCHEMA
# ============================================================

fields:
- requester_user_id: uuid, required
- namecard_ids: array, required
- revoked_share_target_ids: array, required
- operation_timestamp: timestamp, optional

# ============================================================
# 11. ERP PUBLISH REQUEST SCHEMA
# ============================================================

fields:
- requester_user_id: uuid, required
- namecard_ids: array, required
- company_id: uuid, required
- publication_policy_code: string, required
- request_note: string, optional
- canonical_version_map: object, optional
- publication_context: object, optional

# ============================================================
# 12. ERP PUBLISH RESPONSE SCHEMA
# ============================================================

fields:
- success: boolean, required
- approval_required: boolean, required
- accepted_for_review: boolean, optional
- publication_submitted: boolean, optional
- publication_state: enum, optional
- publication_request_ids: array, optional
- error_code: string, optional
- error_message: string, optional

# ============================================================
# 13. RELATIONSHIP QUERY REQUEST SCHEMA
# ============================================================

fields:
- requester_user_id: uuid, required
- namecard_id: uuid, required
- visibility_scope: enum, optional

# ============================================================
# 14. RELATIONSHIP QUERY RESPONSE SCHEMA
# ============================================================

fields:
- success: boolean, required
- relationship_entries: array, optional
- error_code: string, optional
- error_message: string, optional


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060170_NAMECARD_API_FIELD_SCHEMA.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/070.operations/070_OVERVIEW.md -->
# ============================================================
# 070 OPERATIONS OVERVIEW
# ============================================================

status: draft
layer: overview
system: applications
application: NameCardManager
directory: 070.operations
owner: Boss
prepared_by: Zero

summary:
Defines operational states, support actions, failure handling,
audit-relevant procedures, audit/history/approval operations,
audit action code operational usage, error code operations,
and validation code operations.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/070.operations/070_OVERVIEW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/070.operations/070_INDEX.md -->
# ============================================================
# 070 OPERATIONS INDEX
# ============================================================

status: draft
layer: index
system: applications
application: NameCardManager
directory: 070.operations
owner: Boss
prepared_by: Zero

files:
- 070_NAME_CARD_MANAGER_OPERATIONS.md
- 070110_NAMECARD_AUDIT_AND_HISTORY_OPERATIONS.md
- 070120_NAMECARD_AUDIT_ACTION_CODE_OPERATIONS.md
- 070130_NAMECARD_ERROR_CODE_OPERATIONS.md
- 070140_NAMECARD_VALIDATION_CODE_OPERATIONS.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/070.operations/070_INDEX.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/070.operations/070_NAME_CARD_MANAGER_OPERATIONS.md -->
# ============================================================
# NAME CARD MANAGER OPERATIONS
# ============================================================

status: draft
layer: operations
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling, support procedures, and runtime
administrative rules for NameCardManager.

# ============================================================
# 1. OPERATIONAL PRINCIPLES
# ============================================================

- BusinessOS is the operational truth source.
- Local state is recoverable working state.
- Sync failures must remain visible.
- Publication failures must remain visible.
- App-internal sharing changes must be traceable.
- ERP-wide publication must follow controlled handling.

# ============================================================
# 2. STANDARD OPERATIONAL STATES
# ============================================================

Supported operational states include:
- normal
- offline_working
- pending_sync
- sync_error
- publication_pending
- publication_error
- maintenance

# ============================================================
# 3. SUPPORT ACTIONS
# ============================================================

Support or administrator actions may include:
- inspect sync failure
- retry pending replay
- inspect publication failure
- confirm app share state
- confirm ERP publication state
- inspect relationship visibility issue

# ============================================================
# 4. USER SUPPORT GUIDANCE
# ============================================================

When user reports missing local data:
- verify BusinessOS canonical record first
- verify sync history
- verify device-local cache state
- restore local state from BusinessOS where possible

When user reports share issue:
- verify share target setting
- verify app-internal share state
- verify target authorization

When user reports ERP publication issue:
- verify ERP use setting
- verify approval requirement
- verify publication result and failure cause

# ============================================================
# 5. AUDIT-RELEVANT OPERATIONS
# ============================================================

Operationally important actions:
- create
- update
- delete
- app-internal share
- app-internal share revoke
- ERP publication request
- ERP publication success/failure
- sync replay success/failure


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/070.operations/070_NAME_CARD_MANAGER_OPERATIONS.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/070.operations/070110_NAMECARD_AUDIT_AND_HISTORY_OPERATIONS.md -->
# ============================================================
# NAMECARD AUDIT AND HISTORY OPERATIONS
# ============================================================

status: draft
layer: operations
system: applications
application: NameCardManager
operations_scope: audit_and_history
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for audit, history, and approval events.

# ============================================================
# 1. OPERATIONAL GOAL
# ============================================================

Audit and history records must support traceability for
user action, sync behavior, sharing, approval, and ERP publication.

# ============================================================
# 2. REQUIRED OPERATIONAL RECORDS
# ============================================================

Operationally important records include:
- audit log
- user-visible history entry
- approval event
- ERP publication result
- sync conflict event

# ============================================================
# 3. SUPPORT USAGE
# ============================================================

Support and operations may use these records to:
- investigate missing data
- inspect publication history
- inspect approval result path
- inspect who performed which action
- inspect why a publication failed


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/070.operations/070110_NAMECARD_AUDIT_AND_HISTORY_OPERATIONS.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/070.operations/070120_NAMECARD_AUDIT_ACTION_CODE_OPERATIONS.md -->
# ============================================================
# NAMECARD AUDIT ACTION CODE OPERATIONS
# ============================================================

status: draft
layer: operations
system: applications
application: NameCardManager
operations_scope: audit_action_code
owner: Boss
prepared_by: Zero

purpose:
Defines operational usage guidance for audit action codes.

# ============================================================
# 1. OPERATIONAL GOAL
# ============================================================

Audit action codes provide stable operational labels for
support, review, investigation, and reporting.

# ============================================================
# 2. OPERATIONAL RULES
# ============================================================

- Use canonical action codes consistently.
- Do not collapse approval and publication into one action.
- Distinguish request, approval, submission, success, and failure.
- Preserve sync conflict events distinctly.

# ============================================================
# 3. SUPPORT USAGE EXAMPLES
# ============================================================

Support may inspect:
- erp_publish_requested
- erp_publish_approval_required
- erp_publish_approved
- erp_publish_submitted
- erp_publish_succeeded
- erp_publish_failed
- sync_conflict_detected
- sync_conflict_resolved


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/070.operations/070120_NAMECARD_AUDIT_ACTION_CODE_OPERATIONS.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/070.operations/070130_NAMECARD_ERROR_CODE_OPERATIONS.md -->
# ============================================================
# NAMECARD ERROR CODE OPERATIONS
# ============================================================

status: draft
layer: operations
system: applications
application: NameCardManager
operations_scope: error_code
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling guidance for canonical error codes.

# ============================================================
# 1. OPERATIONAL GOAL
# ============================================================

Error codes provide stable diagnostic meaning across UI,
API, support, audit, and operations.

# ============================================================
# 2. OPERATIONAL RULES
# ============================================================

- Use canonical error codes consistently.
- Do not replace canonical code meaning with ad hoc text.
- Support may map codes to human-readable guidance separately.
- Conflict, approval-required, rejection, and publish-failure
  must remain distinct.

# ============================================================
# 3. SUPPORT EXAMPLES
# ============================================================

Examples:
- NCM_ERR_SYNC_CONFLICT_DETECTED
- NCM_ERR_ERP_APPROVAL_REQUIRED
- NCM_ERR_ERP_APPROVAL_REJECTED
- NCM_ERR_ERP_PUBLICATION_FAILED
- NCM_ERR_PROTECTED_ACCESS_DENIED
- NCM_ERR_FAIL_CLOSED_TRIGGERED


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/070.operations/070130_NAMECARD_ERROR_CODE_OPERATIONS.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/070.operations/070140_NAMECARD_VALIDATION_CODE_OPERATIONS.md -->
# ============================================================
# NAMECARD VALIDATION CODE OPERATIONS
# ============================================================

status: draft
layer: operations
system: applications
application: NameCardManager
operations_scope: validation_code
owner: Boss
prepared_by: Zero

purpose:
Defines operational usage guidance for validation codes.

# ============================================================
# 1. OPERATIONAL GOAL
# ============================================================

Validation codes allow support and operations to identify
what prerequisite failed before the request moved into
deeper processing.

# ============================================================
# 2. OPERATIONAL RULES
# ============================================================

- Use validation codes for unmet prerequisites.
- Use error codes for execution/path failures.
- Do not collapse validation failure into generic error prematurely.
- Preserve actionable validation meaning where possible.

# ============================================================
# 3. SUPPORT EXAMPLES
# ============================================================

Examples:
- NCM_VAL_COMPANY_ID_REQUIRED
- NCM_VAL_ERP_USE_SETTING_REQUIRED
- NCM_VAL_SHARE_TARGET_DISABLED
- NCM_VAL_FULL_NAME_REQUIRED
- NCM_VAL_OPERATION_PAYLOAD_REQUIRED


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/070.operations/070140_NAMECARD_VALIDATION_CODE_OPERATIONS.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080_OVERVIEW.md -->
# ============================================================
# 080 POLICY OVERVIEW
# ============================================================

status: draft
layer: overview
system: applications
application: NameCardManager
directory: 080.policy
owner: Boss
prepared_by: Zero

summary:
Defines source-of-truth policy, offline replay policy,
share policy, sensitivity policy, publication policy,
approval policy, sync conflict policy, data protection policy,
relationship visibility policy, audit/approval policy,
approval/audit code policy, error code policy,
validation code policy, and visibility policy.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080_OVERVIEW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080_INDEX.md -->
# ============================================================
# 080 POLICY INDEX
# ============================================================

status: draft
layer: index
system: applications
application: NameCardManager
directory: 080.policy
owner: Boss
prepared_by: Zero

files:
- 080_NAME_CARD_MANAGER_POLICY.md
- 080110_ERP_WIDE_SHARE_APPROVAL_POLICY.md
- 080120_NAMECARD_SYNC_CONFLICT_POLICY.md
- 080130_NAMECARD_DATA_PROTECTION_POLICY.md
- 080140_NAMECARD_RELATIONSHIP_VISIBILITY_POLICY.md
- 080150_NAMECARD_AUDIT_AND_APPROVAL_POLICY.md
- 080160_NAMECARD_APPROVAL_AND_AUDIT_CODE_POLICY.md
- 080170_NAMECARD_ERROR_CODE_POLICY.md
- 080180_NAMECARD_VALIDATION_CODE_POLICY.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080_INDEX.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080_NAME_CARD_MANAGER_POLICY.md -->
# ============================================================
# NAME CARD MANAGER POLICY
# ============================================================

status: draft
layer: policy
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules governing storage, synchronization,
sharing, and publication behavior.

# ============================================================
# 1. SOURCE OF TRUTH POLICY
# ============================================================

- BusinessOS is the source of truth.
- Local storage is not canonical truth.
- Local state must converge to BusinessOS state.

# ============================================================
# 2. OFFLINE POLICY
# ============================================================

- Offline local operation is allowed.
- Offline changes must be queued.
- Queued changes must be replayed when online resumes.
- If replay fails, the system must preserve failure visibility.

# ============================================================
# 3. SHARE POLICY
# ============================================================

App-internal sharing:
- explicit only
- limited to configured shared users
- revocable

ERP-wide sharing:
- explicit only
- ERP setting required
- approval policy required where applicable
- not revocable by ordinary user action

# ============================================================
# 4. DATA SENSITIVITY POLICY
# ============================================================

The following are sensitive and must be protected:
- personality note
- tendency note
- communication note
- authority and decision scope note
- order history and business history note
- relationship note

# ============================================================
# 5. PUBLICATION POLICY
# ============================================================

- ERP-wide publication is treated as controlled publication.
- Publication may require approval.
- Publication state change must be auditable.
- Publication must not be silently reversed by standard user action.

# ============================================================
# 6. VISIBILITY POLICY
# ============================================================

- Private data is owner-scoped by default.
- App-internal shared data is restricted to configured targets.
- ERP-wide shared data follows ERP-side visibility rules.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080_NAME_CARD_MANAGER_POLICY.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080110_ERP_WIDE_SHARE_APPROVAL_POLICY.md -->
# ============================================================
# ERP WIDE SHARE APPROVAL POLICY
# ============================================================

status: draft
layer: policy
system: applications
application: NameCardManager
policy: erp_wide_share_approval
owner: Boss
prepared_by: Zero

purpose:
Defines approval policy constraints for ERP-wide sharing.

# ============================================================
# 1. POLICY GOAL
# ============================================================

ERP-wide sharing is treated as controlled publication into ERP.
It must not be treated as ordinary app-level sharing.

# ============================================================
# 2. CORE RULES
# ============================================================

- ERP-wide sharing is explicit only.
- ERP-wide sharing may require approval.
- Approval requirement must be evaluated before publication.
- Ordinary users must not bypass required approval.
- Ordinary users must not revoke published ERP-wide data.

# ============================================================
# 3. APPROVAL POLICY RULES
# ============================================================

Where approval is required:
- publication must stop at pending state until decision
- approval outcome must be recorded
- rejected publication must not appear as published
- returned_for_fix must not appear as approved

# ============================================================
# 4. USER AUTHORITY RULES
# ============================================================

Ordinary user may:
- request ERP-wide publication
- inspect publication eligibility
- inspect publication state
- inspect approval requirement visibility

Ordinary user may not:
- force approval
- force publish where approval is required
- revoke already published ERP-wide data

# ============================================================
# 5. AUDIT RULES
# ============================================================

The following must be auditable:
- publication request creation
- approval requirement determination
- approval result
- final publication result
- publication failure

# ============================================================
# 6. STATE RULES
# ============================================================

Allowed ERP publication states:
- not_published
- publish_pending
- published
- publish_failed

No ordinary-user revoke state is provided for published ERP-wide sharing.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080110_ERP_WIDE_SHARE_APPROVAL_POLICY.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080120_NAMECARD_SYNC_CONFLICT_POLICY.md -->
# ============================================================
# NAMECARD SYNC CONFLICT POLICY
# ============================================================

status: draft
layer: policy
system: applications
application: NameCardManager
policy: sync_conflict
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for sync conflict handling.

# ============================================================
# 1. CORE POLICY
# ============================================================

- BusinessOS remains the source of truth.
- Local offline work is valid but not automatically authoritative.
- Conflict must not be resolved by silent overwrite.

# ============================================================
# 2. REQUIRED POLICY RULES
# ============================================================

- conflicting replay must remain visible
- pending local changes must remain visible
- canonical BusinessOS state must remain visible
- destructive overwrite without explicit resolution is prohibited

# ============================================================
# 3. PRIORITY RULES
# ============================================================

Default priority:
1. preserve canonical BusinessOS state
2. preserve local pending operation visibility
3. require explicit decision when overwrite risk exists

# ============================================================
# 4. ERP RULES
# ============================================================

- local replay must not silently change ERP published state
- local replay must not bypass ERP approval boundary
- local replay must not downgrade published ERP-wide state by accident

# ============================================================
# 5. SHARE RULES
# ============================================================

- app-internal share conflicts may be resolvable by explicit choice
- ERP-wide publication conflicts are constrained by ERP publication policy


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080120_NAMECARD_SYNC_CONFLICT_POLICY.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080130_NAMECARD_DATA_PROTECTION_POLICY.md -->
# ============================================================
# NAMECARD DATA PROTECTION POLICY
# ============================================================

status: draft
layer: policy
system: applications
application: NameCardManager
policy: data_protection
owner: Boss
prepared_by: Zero

purpose:
Defines protection policy for local and BusinessOS-stored
NameCardManager data.

# ============================================================
# 1. CORE POLICY
# ============================================================

- BusinessOS is the canonical storage boundary.
- Data stored in BusinessOS must be protected.
- Sensitive local data must also be protected.
- Protection requirements apply to both content and derived metadata
  where exposure would reveal protected information.

# ============================================================
# 2. PROTECTED DATA CLASSES
# ============================================================

Protected data includes:
- basic name card identity data where business-sensitive
- front and back card images
- tendency note
- personality note
- communication note
- authority scope note
- decision scope note
- responsibility scope note
- work scope note
- work content note
- influence scope note
- relationship note
- order and business history note
- publication eligibility context where sensitive
- pending operation payload where it contains protected fields

# ============================================================
# 3. STORAGE POLICY
# ============================================================

BusinessOS storage:
- protected at rest
- protected in access scope
- not exposed outside authorized boundaries

Local storage:
- treated as loss-risk and exposure-risk surface
- should minimize unnecessary long-term protected retention
- should use protected device storage where possible

# ============================================================
# 4. ACCESS POLICY
# ============================================================

- private data is owner-scoped by default
- app-internal shared data is restricted to configured targets
- ERP-wide published data follows ERP-side access rules
- protected detail notes must not be exposed without authorization

# ============================================================
# 5. FAILURE POLICY
# ============================================================

- failure to protect required fields must block unsafe exposure
- failure to resolve authorization must fail closed
- failure to confirm publication boundary must fail closed


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080130_NAMECARD_DATA_PROTECTION_POLICY.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080140_NAMECARD_RELATIONSHIP_VISIBILITY_POLICY.md -->
# ============================================================
# NAMECARD RELATIONSHIP VISIBILITY POLICY
# ============================================================

status: draft
layer: policy
system: applications
application: NameCardManager
policy: relationship_visibility
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for showing visible relationships in
NameCardManager.

# ============================================================
# 1. CORE POLICY
# ============================================================

- Related information may be shown where relevant.
- Relationship visibility must remain understandable.
- Relationship visibility must respect authorization boundaries.
- Weak inference must not be shown as confirmed fact.

# ============================================================
# 2. ALLOWED RELATIONSHIP SOURCES
# ============================================================

Allowed sources include:
- manually registered relationship
- same-company relation
- same-department relation
- order history relation
- project/deal relation
- introducer relation
- working-contact / decision-maker distinction

# ============================================================
# 3. CONFIDENCE POLICY
# ============================================================

- manual relationship may be treated as explicit
- inferred relationship must remain distinguishable from confirmed
- uncertain relation must not be overrepresented as fact

# ============================================================
# 4. VISIBILITY POLICY
# ============================================================

- show related entries only within authorized visibility scope
- do not expose hidden protected notes through relationship UI
- do not leak restricted ERP-only meaning into unauthorized screens

# ============================================================
# 5. PRESENTATION POLICY
# ============================================================

- relationship UI must prefer readability over density
- high-value relations may be emphasized
- low-confidence relations may be shown with reduced emphasis or withheld


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080140_NAMECARD_RELATIONSHIP_VISIBILITY_POLICY.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080150_NAMECARD_AUDIT_AND_APPROVAL_POLICY.md -->
# ============================================================
# NAMECARD AUDIT AND APPROVAL POLICY
# ============================================================

status: draft
layer: policy
system: applications
application: NameCardManager
policy: audit_and_approval
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for audit, history, and approval events,
including the use of shared BusinessOS ERP publication capability.

# ============================================================
# 1. CORE POLICY
# ============================================================

- ERP-wide publication must use shared BusinessOS capability.
- Important state transitions must be auditable.
- Approval events must remain distinguishable from publication result.
- User-facing history and audit records serve different purposes.

# ============================================================
# 2. AUDIT POLICY
# ============================================================

Audit is required for:
- create
- update
- delete
- app share
- app share revoke
- ERP publication request
- approval result
- ERP publication result
- sync conflict handling

# ============================================================
# 3. APPROVAL POLICY
# ============================================================

- approval event is not equal to final publication
- approved is not equal to published unless publication succeeds
- rejected must not appear as published
- returned_for_fix must remain distinguishable from rejected

# ============================================================
# 4. SHARED CAPABILITY POLICY
# ============================================================

- application must not bypass shared BusinessOS ERP publication capability
- application-local direct ERP transmission is prohibited by design
- company scoping, approval, payload transformation, and ERP execution
  are shared capability concerns


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080150_NAMECARD_AUDIT_AND_APPROVAL_POLICY.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080160_NAMECARD_APPROVAL_AND_AUDIT_CODE_POLICY.md -->
# ============================================================
# NAMECARD APPROVAL AND AUDIT CODE POLICY
# ============================================================

status: draft
layer: policy
system: applications
application: NameCardManager
policy: approval_and_audit_code
owner: Boss
prepared_by: Zero

purpose:
Defines policy constraints for approval state coding and
audit action code stability.

# ============================================================
# 1. CORE POLICY
# ============================================================

- approval state must remain distinct from publication result
- audit action codes must be canonical and stable
- shared BusinessOS publication routing must be auditable
- ERP publication success must be distinct from approval success

# ============================================================
# 2. STATE POLICY
# ============================================================

- pending_approval must remain visible as pending
- approved must not be displayed as published unless publication succeeded
- returned_for_fix must remain distinct from rejected
- published must only occur after shared capability execution success

# ============================================================
# 3. AUDIT CODE POLICY
# ============================================================

- canonical audit codes must be reused consistently
- renamed codes should be avoided once operationalized
- codes should describe meaningful boundary events


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080160_NAMECARD_APPROVAL_AND_AUDIT_CODE_POLICY.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080170_NAMECARD_ERROR_CODE_POLICY.md -->
# ============================================================
# NAMECARD ERROR CODE POLICY
# ============================================================

status: draft
layer: policy
system: applications
application: NameCardManager
policy: error_code
owner: Boss
prepared_by: Zero

purpose:
Defines policy constraints for error code usage.

# ============================================================
# 1. CORE POLICY
# ============================================================

- canonical error codes must be stable
- materially different failure meanings must use distinct codes
- protected-access failure must not be represented as generic success
- approval-required must not be represented as publish-failed
- publish-failed must not be represented as rejected unless actually rejected

# ============================================================
# 2. FAIL-CLOSED POLICY
# ============================================================

Where authorization, protection, or publication boundary cannot
be safely confirmed, fail-closed behavior is required and should
use the appropriate protective error code.

# ============================================================
# 3. UI POLICY
# ============================================================

UI may translate canonical codes into human-readable messages,
but must preserve their underlying meaning.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080170_NAMECARD_ERROR_CODE_POLICY.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080180_NAMECARD_VALIDATION_CODE_POLICY.md -->
# ============================================================
# NAMECARD VALIDATION CODE POLICY
# ============================================================

status: draft
layer: policy
system: applications
application: NameCardManager
policy: validation_code
owner: Boss
prepared_by: Zero

purpose:
Defines policy constraints for validation code usage.

# ============================================================
# 1. CORE POLICY
# ============================================================

- validation codes represent unmet prerequisites or invalid request shape
- validation should occur before unsafe execution proceeds
- fail-closed behavior may be preceded by validation failure where applicable
- validation meaning must remain distinct from execution failure meaning

# ============================================================
# 2. ERP PUBLICATION POLICY
# ============================================================

ERP publication must validate:
- requester identity
- target record presence
- company context
- publication policy code
- ERP use setting
- protected field eligibility

# ============================================================
# 3. SHARE POLICY
# ============================================================

App-internal share must validate:
- target card existence
- share target existence
- share target eligibility
- requester authority


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/080.policy/080180_NAMECARD_VALIDATION_CODE_POLICY.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090_OVERVIEW.md -->
# ============================================================
# 090 INTERFACE OVERVIEW
# ============================================================

status: draft
layer: overview
system: applications
application: NameCardManager
directory: 090.interface
owner: Boss
prepared_by: Zero

summary:
Defines the interface structure for login, name card list,
name card detail, settings, share target setting, ERP setting,
relationship display behavior, UI state rendering behavior,
badge labels, and UI messages.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090_OVERVIEW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090_INDEX.md -->
# ============================================================
# 090 INTERFACE INDEX
# ============================================================

status: draft
layer: index
system: applications
application: NameCardManager
directory: 090.interface
owner: Boss
prepared_by: Zero

files:
- 090_NAME_CARD_MANAGER_INTERFACE.md
- 090100_LOGIN_SCREEN_INTERFACE.md
- 090110_NAMECARD_LIST_SCREEN_INTERFACE.md
- 090120_NAMECARD_DETAIL_SCREEN_INTERFACE.md
- 090130_SETTINGS_SCREEN_INTERFACE.md
- 090140_SHARE_TARGET_SETTING_SCREEN_INTERFACE.md
- 090150_ERP_SETTING_SCREEN_INTERFACE.md
- 090160_NAMECARD_RELATIONSHIP_INTERFACE.md
- 090170_NAMECARD_UI_STATE_INTERFACE.md
- 090180_NAMECARD_BADGE_LABEL_INTERFACE.md
- 090190_NAMECARD_UI_MESSAGE_INTERFACE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090_INDEX.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090_NAME_CARD_MANAGER_INTERFACE.md -->
# ============================================================
# NAME CARD MANAGER INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines the primary user interface structure.

# ============================================================
# 1. LOGIN SCREEN
# ============================================================

Functions:
- id input
- password input
- fingerprint authentication
- face authentication

# ============================================================
# 2. NAME CARD LIST SCREEN
# ============================================================

Visible elements:
- basic name card list
- settings button
- share button
- ERP-wide share button
- app share state
- ERP publication state
- relationship indicator

Primary navigation:
- tap basic info -> detail screen
- tap settings -> settings screen
- tap share -> app-internal share
- tap ERP-wide share -> ERP publication flow

# ============================================================
# 3. NAME CARD DETAIL SCREEN
# ============================================================

Visible sections:
- basic information
- person information
- responsibility scope
- order history
- related entries
- memo
- app share state
- ERP publication state

Available actions:
- add detail
- update detail
- delete detail
- revoke app-internal share

# ============================================================
# 4. SETTINGS SCREEN
# ============================================================

Visible sections:
- share target setting
- ERP setting
- sync status
- pending sync count

# ============================================================
# 5. SHARE TARGET SETTING SCREEN
# ============================================================

Functions:
- add share target
- remove share target
- enable target
- disable target

# ============================================================
# 6. ERP SETTING SCREEN
# ============================================================

Functions:
- ERP use enable/disable
- publication eligibility display
- publication rule display


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090_NAME_CARD_MANAGER_INTERFACE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090100_LOGIN_SCREEN_INTERFACE.md -->
# ============================================================
# LOGIN SCREEN INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
screen: login
owner: Boss
prepared_by: Zero

purpose:
Defines the login screen for NameCardManager.

# ============================================================
# 1. SCREEN GOAL
# ============================================================

The login screen authenticates the user before access to
name card data and sharing functions is granted.

# ============================================================
# 2. MAIN COMPONENTS
# ============================================================

- id input field
- password input field
- login button
- fingerprint authentication trigger
- face authentication trigger
- authentication error message area

# ============================================================
# 3. MAIN ACTIONS
# ============================================================

- input id
- input password
- execute login
- execute fingerprint authentication
- execute face authentication

# ============================================================
# 4. RESULT
# ============================================================

On authentication success:
- open name card list screen

On authentication failure:
- remain on login screen
- show failure message


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090100_LOGIN_SCREEN_INTERFACE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090110_NAMECARD_LIST_SCREEN_INTERFACE.md -->
# ============================================================
# NAME CARD LIST SCREEN INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
screen: namecard_list
owner: Boss
prepared_by: Zero

purpose:
Defines the main list screen of NameCardManager.

# ============================================================
# 1. SCREEN GOAL
# ============================================================

The list screen provides overview, selection, and access to
primary actions for managed name cards.

# ============================================================
# 2. MAIN DISPLAY AREAS
# ============================================================

- list header
- search/filter area
- name card list area
- per-card state indicators
- action buttons area

# ============================================================
# 3. LIST ITEM FIELDS
# ============================================================

Each list entry may show:
- full name
- company name
- department name
- title name
- app share state
- ERP publication state
- relationship exists indicator
- sync state indicator

# ============================================================
# 4. MAIN ACTION BUTTONS
# ============================================================

- create button
- settings button
- share button
- ERP-wide share button
- delete button

# ============================================================
# 5. MAIN NAVIGATION
# ============================================================

- tap a card -> open detail screen
- tap settings -> open settings screen
- tap share -> execute app-internal share flow
- tap ERP-wide share -> execute ERP publication flow

# ============================================================
# 6. LIST BEHAVIOR
# ============================================================

The screen should support:
- simple search
- easy state visibility
- multi-selection where needed
- quick transition to detail


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090110_NAMECARD_LIST_SCREEN_INTERFACE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090120_NAMECARD_DETAIL_SCREEN_INTERFACE.md -->
# ============================================================
# NAME CARD DETAIL SCREEN INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
screen: namecard_detail
owner: Boss
prepared_by: Zero

purpose:
Defines the detail screen for a selected name card.

# ============================================================
# 1. SCREEN GOAL
# ============================================================

The detail screen provides full visibility and edit access
for the selected name card and related information.

# ============================================================
# 2. MAIN SECTIONS
# ============================================================

- basic information section
- person information section
- responsibility scope section
- order history section
- related entries section
- memo section
- sharing state section
- ERP publication state section

# ============================================================
# 3. BASIC INFORMATION SECTION
# ============================================================

May display:
- full name
- company name
- department name
- title name
- email
- phone
- address
- website
- front image
- back image

# ============================================================
# 4. PERSON INFORMATION SECTION
# ============================================================

May display:
- tendency note
- personality note
- communication note
- relationship note

# ============================================================
# 5. RESPONSIBILITY SCOPE SECTION
# ============================================================

May display:
- authority scope note
- decision scope note
- responsibility scope note
- work scope note
- work content note
- influence scope note

# ============================================================
# 6. ORDER HISTORY SECTION
# ============================================================

May display:
- order date
- order type
- order summary
- amount note
- project note
- contact result note

# ============================================================
# 7. RELATED ENTRIES SECTION
# ============================================================

May display:
- related name cards
- related same-company persons
- project/deal-related persons
- decision-maker / working-contact relation

# ============================================================
# 8. MAIN ACTIONS
# ============================================================

- add detail
- update detail
- delete detail
- revoke app-internal share
- navigate to related entry


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090120_NAMECARD_DETAIL_SCREEN_INTERFACE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090130_SETTINGS_SCREEN_INTERFACE.md -->
# ============================================================
# SETTINGS SCREEN INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
screen: settings
owner: Boss
prepared_by: Zero

purpose:
Defines the settings screen of NameCardManager.

# ============================================================
# 1. SCREEN GOAL
# ============================================================

The settings screen provides access to sharing and ERP-related
configuration, as well as synchronization visibility.

# ============================================================
# 2. MAIN SECTIONS
# ============================================================

- share target setting entry
- ERP setting entry
- sync status area
- pending sync count area

# ============================================================
# 3. MAIN ACTIONS
# ============================================================

- open share target setting screen
- open ERP setting screen
- inspect sync status
- inspect pending sync count


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090130_SETTINGS_SCREEN_INTERFACE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090140_SHARE_TARGET_SETTING_SCREEN_INTERFACE.md -->
# ============================================================
# SHARE TARGET SETTING SCREEN INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
screen: share_target_setting
owner: Boss
prepared_by: Zero

purpose:
Defines the screen used to manage app-internal share targets.

# ============================================================
# 1. SCREEN GOAL
# ============================================================

The share target setting screen manages the people who may
receive app-internal name card sharing.

# ============================================================
# 2. MAIN COMPONENTS
# ============================================================

- share target list
- add target action
- remove target action
- enable target toggle
- disable target toggle

# ============================================================
# 3. MAIN ACTIONS
# ============================================================

- add share target
- remove share target
- enable share target
- disable share target

# ============================================================
# 4. RULE
# ============================================================

This screen applies only to app-internal sharing.
It does not govern ERP-wide publication.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090140_SHARE_TARGET_SETTING_SCREEN_INTERFACE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090150_ERP_SETTING_SCREEN_INTERFACE.md -->
# ============================================================
# ERP SETTING SCREEN INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
screen: erp_setting
owner: Boss
prepared_by: Zero

purpose:
Defines the ERP setting screen for NameCardManager.

# ============================================================
# 1. SCREEN GOAL
# ============================================================

The ERP setting screen manages ERP usage eligibility and
publication-related visibility for ERP-wide sharing.

# ============================================================
# 2. MAIN COMPONENTS
# ============================================================

- ERP use enabled state
- publication eligibility display
- publication rule display
- approval requirement visibility
- company context visibility

# ============================================================
# 3. MAIN ACTIONS
# ============================================================

- enable ERP use where allowed
- disable ERP use where allowed
- inspect publication eligibility
- inspect approval requirement

# ============================================================
# 4. RULE
# ============================================================

This screen supports ERP-wide sharing preparation only.
It does not provide ordinary-user revoke for published ERP-wide data.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090150_ERP_SETTING_SCREEN_INTERFACE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090160_NAMECARD_RELATIONSHIP_INTERFACE.md -->
# ============================================================
# NAMECARD RELATIONSHIP INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
screen_scope: relationship_display
owner: Boss
prepared_by: Zero

purpose:
Defines interface behavior for showing related entries.

# ============================================================
# 1. UI GOAL
# ============================================================

The interface should allow the user to quickly recognize
important related people and business links for a selected card.

# ============================================================
# 2. DISPLAY LOCATIONS
# ============================================================

Relationship visibility may appear in:
- name card list screen as simple indicator
- name card detail screen as related entries section
- related entry navigation path

# ============================================================
# 3. DETAIL SCREEN DISPLAY
# ============================================================

The related entries section may show:
- same-company contacts
- same-department contacts
- decision makers
- working contacts
- project-related contacts
- order-related contacts
- introducer / introduced relation

# ============================================================
# 4. LIST SCREEN DISPLAY
# ============================================================

The list screen may show:
- relationship exists icon
- relationship count summary
- important relation indicator

# ============================================================
# 5. INTERACTION
# ============================================================

The user may:
- open related entries section
- tap related card
- move from one related card to another
- inspect relation label

# ============================================================
# 6. PRESENTATION RULE
# ============================================================

The interface should remain simple and readable.
It should not overload the screen with excessive graph complexity.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090160_NAMECARD_RELATIONSHIP_INTERFACE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090170_NAMECARD_UI_STATE_INTERFACE.md -->
# ============================================================
# NAMECARD UI STATE INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
screen_scope: ui_state
owner: Boss
prepared_by: Zero

purpose:
Defines how canonical UI state codes should appear across screens.

# ============================================================
# 1. LIST SCREEN STATE USAGE
# ============================================================

The list screen may display:
- sync state badge
- app share state badge
- ERP publication state badge
- relationship indicator

Recommended examples:
- pending sync
- conflict
- shared
- published
- approval pending
- related

# ============================================================
# 2. DETAIL SCREEN STATE USAGE
# ============================================================

The detail screen may display:
- full sync state
- full app share state
- full ERP publication state
- relationship visibility state
- protected-field visibility state

# ============================================================
# 3. SETTINGS SCREEN STATE USAGE
# ============================================================

The settings screen may display:
- pending sync count
- ERP eligibility status
- current ERP publication-related state
- protected access availability where relevant

# ============================================================
# 4. PRESENTATION RULE
# ============================================================

UI state should be:
- simple
- consistent
- readable
- non-ambiguous

Approval pending must not look identical to published.
Conflict must not look identical to generic failure.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090170_NAMECARD_UI_STATE_INTERFACE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090180_NAMECARD_BADGE_LABEL_INTERFACE.md -->
# ============================================================
# NAMECARD BADGE LABEL INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
screen_scope: badge_label
owner: Boss
prepared_by: Zero

purpose:
Defines canonical badge and short-label wording for UI states.

# ============================================================
# 1. SYNC BADGES
# ============================================================

UI_SYNC_LOCAL_ONLY:
- badge: Local only
- detail: Saved locally only

UI_SYNC_PENDING:
- badge: Pending sync
- detail: Waiting to sync

UI_SYNC_SYNCING:
- badge: Syncing
- detail: Synchronizing now

UI_SYNC_SYNCED:
- badge: Synced
- detail: Synchronized with BusinessOS

UI_SYNC_CONFLICT:
- badge: Conflict
- detail: Sync conflict needs resolution

UI_SYNC_FAILED:
- badge: Sync failed
- detail: Synchronization failed

# ============================================================
# 2. APP SHARE BADGES
# ============================================================

UI_APP_SHARE_PRIVATE:
- badge: Private
- detail: Visible only to you

UI_APP_SHARE_SHARED_PARTIAL:
- badge: Shared
- detail: Shared with selected users

UI_APP_SHARE_SHARED_ACTIVE:
- badge: Shared
- detail: App-internal sharing active

UI_APP_SHARE_REVOKED:
- badge: Share revoked
- detail: App-internal sharing removed

# ============================================================
# 3. ERP PUBLICATION BADGES
# ============================================================

UI_ERP_NOT_PUBLISHED:
- badge: Not published
- detail: Not shared company-wide

UI_ERP_PENDING_APPROVAL:
- badge: Approval pending
- detail: Waiting for approval

UI_ERP_APPROVED_NOT_PUBLISHED:
- badge: Approved
- detail: Approved, waiting for publication

UI_ERP_RETURNED_FOR_FIX:
- badge: Fix required
- detail: Returned for correction

UI_ERP_REJECTED:
- badge: Rejected
- detail: Publication request rejected

UI_ERP_PUBLISHED:
- badge: Published
- detail: Shared company-wide in ERP

UI_ERP_PUBLISH_FAILED:
- badge: Publish failed
- detail: ERP publication failed

# ============================================================
# 4. RELATIONSHIP BADGES
# ============================================================

UI_REL_NONE:
- badge: No relation
- detail: No related entry shown

UI_REL_EXISTS:
- badge: Related
- detail: Related entries available

UI_REL_IMPORTANT:
- badge: Important relation
- detail: Important related entry exists

UI_REL_MULTIPLE:
- badge: Multiple relations
- detail: Multiple related entries available

# ============================================================
# 5. PROTECTION BADGES
# ============================================================

UI_PROTECTED_NORMAL:
- badge: Visible
- detail: Field visible

UI_PROTECTED_RESTRICTED:
- badge: Restricted
- detail: Limited by access rules

UI_PROTECTED_HIDDEN:
- badge: Hidden
- detail: Hidden by protection policy


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090180_NAMECARD_BADGE_LABEL_INTERFACE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090190_NAMECARD_UI_MESSAGE_INTERFACE.md -->
# ============================================================
# NAMECARD UI MESSAGE INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
screen_scope: ui_message
owner: Boss
prepared_by: Zero

purpose:
Defines short user-facing message targets for validation and error situations.

# ============================================================
# 1. VALIDATION MESSAGE EXAMPLES
# ============================================================

NCM_VAL_FULL_NAME_REQUIRED:
- message: Full name is required

NCM_VAL_COMPANY_ID_REQUIRED:
- message: Company setting is required

NCM_VAL_PUBLICATION_POLICY_CODE_REQUIRED:
- message: Publication policy is required

NCM_VAL_ERP_USE_SETTING_REQUIRED:
- message: ERP use setting is required

NCM_VAL_SHARE_TARGET_IDS_REQUIRED:
- message: Select at least one share target

NCM_VAL_OPERATION_PAYLOAD_REQUIRED:
- message: Operation data is missing

# ============================================================
# 2. ERROR MESSAGE EXAMPLES
# ============================================================

NCM_ERR_SYNC_CONFLICT_DETECTED:
- message: Sync conflict detected

NCM_ERR_SYNC_PULL_FAILED:
- message: Failed to load latest data

NCM_ERR_APP_SHARE_APPLY_FAILED:
- message: Failed to apply sharing

NCM_ERR_ERP_APPROVAL_REQUIRED:
- message: Approval is required before publication

NCM_ERR_ERP_APPROVAL_REJECTED:
- message: Publication request was rejected

NCM_ERR_ERP_PUBLICATION_FAILED:
- message: Failed to publish to ERP

NCM_ERR_PROTECTED_ACCESS_DENIED:
- message: You do not have access to this information

NCM_ERR_FAIL_CLOSED_TRIGGERED:
- message: Action blocked for safety


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090190_NAMECARD_UI_MESSAGE_INTERFACE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/100.security/100_OVERVIEW.md -->
# ============================================================
# 100 SECURITY OVERVIEW
# ============================================================

status: draft
layer: overview
system: applications
application: NameCardManager
directory: 100.security
owner: Boss
prepared_by: Zero

summary:
Defines authentication, storage protection, encryption-oriented
controls, sharing control, auditability, and failure visibility
security requirements.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/100.security/100_OVERVIEW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/100.security/100_INDEX.md -->
# ============================================================
# 100 SECURITY INDEX
# ============================================================

status: draft
layer: index
system: applications
application: NameCardManager
directory: 100.security
owner: Boss
prepared_by: Zero

files:
- 100_NAME_CARD_MANAGER_SECURITY.md
- 100110_NAMECARD_DATA_ENCRYPTION_SECURITY.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/100.security/100_INDEX.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/100.security/100_NAME_CARD_MANAGER_SECURITY.md -->
# ============================================================
# NAME CARD MANAGER SECURITY
# ============================================================

status: draft
layer: security
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines security controls for NameCardManager.

# ============================================================
# 1. AUTHENTICATION SECURITY
# ============================================================

Supported controls:
- id/password authentication
- fingerprint authentication
- face authentication

Access is denied unless authentication succeeds.

# ============================================================
# 2. STORAGE SECURITY
# ============================================================

- BusinessOS-side stored data must be protected.
- Sensitive fields must not be exposed without authorization.
- Local storage should use protected storage where possible.
- Local pending operation data should be protected.

# ============================================================
# 3. SHARE SECURITY
# ============================================================

- App-internal sharing must be restricted to configured targets.
- ERP-wide publication must follow controlled publication rules.
- Standard users cannot silently revoke ERP-wide publication.

# ============================================================
# 4. AUDIT SECURITY
# ============================================================

The system should preserve auditability for:
- create
- update
- delete
- app-internal share
- app-internal share revoke
- ERP publication request
- ERP publication result

# ============================================================
# 5. FAILURE SECURITY
# ============================================================

- Failed sync must remain visible.
- Failed publication must remain visible.
- Failed authentication must not grant access.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/100.security/100_NAME_CARD_MANAGER_SECURITY.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/100.security/100110_NAMECARD_DATA_ENCRYPTION_SECURITY.md -->
# ============================================================
# NAMECARD DATA ENCRYPTION SECURITY
# ============================================================

status: draft
layer: security
system: applications
application: NameCardManager
security_scope: data_encryption
owner: Boss
prepared_by: Zero

purpose:
Defines encryption-oriented security requirements for
NameCardManager data.

# ============================================================
# 1. SECURITY GOAL
# ============================================================

The goal is to reduce exposure risk for protected name card data
stored locally and in BusinessOS-connected boundaries.

# ============================================================
# 2. BUSINESSOS-SIDE REQUIREMENTS
# ============================================================

BusinessOS-side protected data must be:
- protected at rest
- protected during authorized transport
- protected from unauthorized read paths
- scoped to authorized access boundaries

# ============================================================
# 3. LOCAL-SIDE REQUIREMENTS
# ============================================================

Local-side protected data should:
- use protected device storage where available
- avoid unnecessary plaintext retention
- protect pending operation payloads where feasible
- protect cached sensitive detail fields where feasible

# ============================================================
# 4. IMAGE PROTECTION
# ============================================================

Front and back name card images are protected data.

Requirements:
- avoid unnecessary uncontrolled duplication
- apply protected storage where possible
- do not expose images outside authorized app paths

# ============================================================
# 5. FAILURE SECURITY
# ============================================================

If required protection cannot be guaranteed:
- do not broaden exposure
- do not silently downgrade protection
- fail closed where authorization or protected access is uncertain


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/100.security/100110_NAMECARD_DATA_ENCRYPTION_SECURITY.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/110.infrastructure/110_OVERVIEW.md -->
# ============================================================
# 110 INFRASTRUCTURE OVERVIEW
# ============================================================

status: draft
layer: overview
system: applications
application: NameCardManager
directory: 110.infrastructure
owner: Boss
prepared_by: Zero

summary:
Defines local device, BusinessOS, network, ERP, and protected
storage infrastructure assumptions for NameCardManager.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/110.infrastructure/110_OVERVIEW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/110.infrastructure/110_INDEX.md -->
# ============================================================
# 110 INFRASTRUCTURE INDEX
# ============================================================

status: draft
layer: index
system: applications
application: NameCardManager
directory: 110.infrastructure
owner: Boss
prepared_by: Zero

files:
- 110_NAME_CARD_MANAGER_INFRASTRUCTURE.md
- 110110_NAMECARD_PROTECTED_STORAGE_INFRASTRUCTURE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/110.infrastructure/110_INDEX.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/110.infrastructure/110_NAME_CARD_MANAGER_INFRASTRUCTURE.md -->
# ============================================================
# NAME CARD MANAGER INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure assumptions and platform-level dependencies
for NameCardManager.

# ============================================================
# 1. INFRASTRUCTURE ASSUMPTIONS
# ============================================================

NameCardManager assumes the following infrastructure classes:

- local device runtime
- local protected storage
- BusinessOS persistence and API boundary
- network connectivity boundary
- ERP publication boundary
- authentication/session boundary

# ============================================================
# 2. LOCAL DEVICE INFRASTRUCTURE
# ============================================================

Local device responsibilities:
- store cached records
- store pending offline operations
- store card images temporarily or persistently
- provide biometric capability where available

# ============================================================
# 3. BUSINESSOS INFRASTRUCTURE
# ============================================================

BusinessOS responsibilities:
- canonical persistence
- synchronization source
- share state persistence
- relationship persistence
- ERP publication request staging

# ============================================================
# 4. NETWORK INFRASTRUCTURE
# ============================================================

Required network behaviors:
- online/offline detection
- retry-safe transmission for sync apply
- retry-safe publication request handling
- failure visibility preservation

# ============================================================
# 5. ERP INFRASTRUCTURE
# ============================================================

ERP-side infrastructure is assumed to support:
- company-scoped publication reception
- approval-governed publication path
- publication state return
- publication failure reporting


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/110.infrastructure/110_NAME_CARD_MANAGER_INFRASTRUCTURE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/110.infrastructure/110110_NAMECARD_PROTECTED_STORAGE_INFRASTRUCTURE.md -->
# ============================================================
# NAMECARD PROTECTED STORAGE INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
system: applications
application: NameCardManager
infrastructure_scope: protected_storage
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure assumptions for protected storage used by
NameCardManager.

# ============================================================
# 1. LOCAL STORAGE ASSUMPTIONS
# ============================================================

Local infrastructure should support:
- protected application storage
- controlled cache location
- protected image storage path
- protected pending operation storage path

# ============================================================
# 2. BUSINESSOS STORAGE ASSUMPTIONS
# ============================================================

BusinessOS infrastructure should support:
- protected canonical record storage
- protected detail note storage
- protected relationship note storage
- protected order history storage
- protected image reference handling
- authorized retrieval paths only

# ============================================================
# 3. TRANSPORT ASSUMPTIONS
# ============================================================

Transport between local and BusinessOS should support:
- authorized channel usage
- integrity-preserving request/response handling
- safe replay handling for pending operations
- failure visibility when protected transfer fails

# ============================================================
# 4. ERP BOUNDARY ASSUMPTIONS
# ============================================================

ERP-side handling assumes:
- publication goes only through authorized publication path
- data is scoped by ERP-side access rules after publication
- ordinary user local runtime cannot directly undo published ERP state


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/110.infrastructure/110110_NAMECARD_PROTECTED_STORAGE_INFRASTRUCTURE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120_OVERVIEW.md -->
# ============================================================
# 120 IMPLEMENTATION OVERVIEW
# ============================================================

status: draft
layer: overview
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero

summary:
Defines implementation guidance for local persistence,
sync coordinator, BusinessOS API client, shared ERP publication usage,
relationship rendering, UI modules, audit/approval implementation,
approval/audit code implementation, error code implementation,
UI state implementation, payload field mapping implementation,
API field schema implementation, validation code implementation,
and UI label implementation.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120_OVERVIEW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120_INDEX.md -->
# ============================================================
# 120 IMPLEMENTATION INDEX
# ============================================================

status: draft
layer: index
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero

files:
- 120_NAME_CARD_MANAGER_IMPLEMENTATION.md
- 120110_NAMECARD_API_IMPLEMENTATION_GUIDE.md
- 120120_NAMECARD_AUDIT_APPROVAL_IMPLEMENTATION_GUIDE.md
- 120130_NAMECARD_APPROVAL_AUDIT_CODE_IMPLEMENTATION_GUIDE.md
- 120140_NAMECARD_ERROR_CODE_IMPLEMENTATION_GUIDE.md
- 120150_NAMECARD_UI_STATE_IMPLEMENTATION_GUIDE.md
- 120160_NAMECARD_PAYLOAD_FIELD_MAP_IMPLEMENTATION_GUIDE.md
- 120170_NAMECARD_API_FIELD_SCHEMA_IMPLEMENTATION_GUIDE.md
- 120180_NAMECARD_VALIDATION_CODE_IMPLEMENTATION_GUIDE.md
- 120190_NAMECARD_UI_LABEL_IMPLEMENTATION_GUIDE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120_INDEX.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120_NAME_CARD_MANAGER_IMPLEMENTATION.md -->
# ============================================================
# NAME CARD MANAGER IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Provides implementation-oriented guidance for NameCardManager.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Recommended implementation areas:
- local persistence module
- sync coordinator module
- BusinessOS API client
- ERP publication client
- relationship rendering module
- authentication/session module

# ============================================================
# 2. LOCAL DATA HANDLING
# ============================================================

Recommended local responsibilities:
- cache canonical records
- store pending operations
- store temporary images
- keep offline-editable detail data

# ============================================================
# 3. SYNC IMPLEMENTATION
# ============================================================

Recommended behavior:
- detect connectivity
- push local pending operations
- pull latest canonical state
- reconcile and refresh local state
- preserve conflict visibility

# ============================================================
# 4. SHARE IMPLEMENTATION
# ============================================================

App-internal share:
- apply selected card share to configured targets
- support revoke for app-internal share only

ERP-wide share:
- require ERP usage setting
- require publication eligibility check
- require approval rule check where needed

# ============================================================
# 5. UI IMPLEMENTATION
# ============================================================

Minimum screens:
- login screen
- name card list screen
- name card detail screen
- settings screen
- share target setting screen
- ERP setting screen

# ============================================================
# 6. NON-FUNCTIONAL NOTES
# ============================================================

- Prefer logical delete over immediate destructive removal.
- Preserve sync failure visibility.
- Preserve publication failure visibility.
- Relationship rendering should stay readable and simple.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120_NAME_CARD_MANAGER_IMPLEMENTATION.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120110_NAMECARD_API_IMPLEMENTATION_GUIDE.md -->
# ============================================================
# NAMECARD API IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
implementation_scope: api_guide
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for NameCardManager API endpoints
and client integration.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Recommended separation:
- namecard command endpoints
- namecard query endpoints
- sync endpoints
- app share endpoints
- ERP publication endpoints
- relationship query endpoints

# ============================================================
# 2. VALIDATION DIRECTION
# ============================================================

Validate:
- requester authorization
- required identifiers
- allowed state transition
- share target eligibility
- ERP publication eligibility
- canonical version context where needed

# ============================================================
# 3. FAILURE DIRECTION
# ============================================================

Return explicit failures for:
- invalid payload
- unauthorized action
- state conflict
- missing ERP setting
- approval boundary stop
- protected access violation

# ============================================================
# 4. CLIENT DIRECTION
# ============================================================

Client implementation should:
- keep pending operations explicit
- treat conflict separately from generic failure
- treat approval-required separately from published
- refresh canonical state after successful mutation
- preserve failure visibility in UI


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120110_NAMECARD_API_IMPLEMENTATION_GUIDE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120120_NAMECARD_AUDIT_APPROVAL_IMPLEMENTATION_GUIDE.md -->
# ============================================================
# NAMECARD AUDIT APPROVAL IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
implementation_scope: audit_approval
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for audit logging, history entries,
approval events, and shared ERP publication integration.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Recommended separation:
- audit writer
- history writer
- approval event adapter
- shared ERP publication adapter

# ============================================================
# 2. LOGGING DIRECTION
# ============================================================

Implementation should separately capture:
- technical/audit event
- user-visible history summary
- approval workflow event
- ERP publication result event

# ============================================================
# 3. SHARED PUBLICATION DIRECTION
# ============================================================

Implementation should:
- call shared BusinessOS publication capability
- avoid direct ERP connector logic inside NameCardManager
- map shared capability result into NameCardManager states
- preserve approval-required vs published distinction


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120120_NAMECARD_AUDIT_APPROVAL_IMPLEMENTATION_GUIDE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120130_NAMECARD_APPROVAL_AUDIT_CODE_IMPLEMENTATION_GUIDE.md -->
# ============================================================
# NAMECARD APPROVAL AUDIT CODE IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
implementation_scope: approval_audit_code
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for approval state transitions
and audit action codes.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Implementation should:
- persist approval state separately from publication state
- emit stable audit action codes
- record shared BusinessOS publication routing explicitly
- keep approval result and publish result separate in UI and logs

# ============================================================
# 2. VALIDATION DIRECTION
# ============================================================

Validate:
- state transition legality
- non-bypass of approval boundary
- non-collapse of approved into published
- stable action code usage

# ============================================================
# 3. UI DIRECTION
# ============================================================

UI should show:
- pending approval
- approved but not yet published
- published
- rejected
- returned for fix
- publish failed


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120130_NAMECARD_APPROVAL_AUDIT_CODE_IMPLEMENTATION_GUIDE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120140_NAMECARD_ERROR_CODE_IMPLEMENTATION_GUIDE.md -->
# ============================================================
# NAMECARD ERROR CODE IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
implementation_scope: error_code
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for canonical error code usage.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Implementation should:
- emit canonical error codes from API and service boundaries
- preserve canonical error code through client handling where possible
- distinguish validation, authorization, conflict, approval,
  and publication failures

# ============================================================
# 2. UI DIRECTION
# ============================================================

UI should:
- map canonical codes to readable text
- show actionable guidance where relevant
- preserve special handling for:
  - sync conflict
  - approval required
  - approval rejected
  - returned for fix
  - publication failed

# ============================================================
# 3. LOGGING DIRECTION
# ============================================================

Audit and operational logs should store:
- canonical error code
- operation context
- related request or publication id where available


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120140_NAMECARD_ERROR_CODE_IMPLEMENTATION_GUIDE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120150_NAMECARD_UI_STATE_IMPLEMENTATION_GUIDE.md -->
# ============================================================
# NAMECARD UI STATE IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
implementation_scope: ui_state
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for canonical UI state rendering.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Implementation should:
- map backend state into canonical UI state codes
- avoid duplicating ad hoc state meanings per screen
- keep approval, publication, conflict, and protection distinct

# ============================================================
# 2. LIST SCREEN DIRECTION
# ============================================================

List screen should prefer compact state display:
- one sync badge
- one share badge
- one ERP publication badge
- one relationship indicator

# ============================================================
# 3. DETAIL SCREEN DIRECTION
# ============================================================

Detail screen may show richer state text:
- exact sync situation
- exact share status
- exact approval/publication stage
- exact relationship importance
- exact protection limitation

# ============================================================
# 4. FAILURE DIRECTION
# ============================================================

Do not collapse:
- pending approval into published
- conflict into generic failed
- protected hidden into missing data
- rejected into returned for fix


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120150_NAMECARD_UI_STATE_IMPLEMENTATION_GUIDE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120160_NAMECARD_PAYLOAD_FIELD_MAP_IMPLEMENTATION_GUIDE.md -->
# ============================================================
# NAMECARD PAYLOAD FIELD MAP IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
implementation_scope: payload_field_map
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for payload field mapping.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Implementation should:
- keep application-side field collection separate from ERP output shaping
- send normalized source data into shared publication capability
- let shared capability own final ERP payload transformation

# ============================================================
# 2. VALIDATION DIRECTION
# ============================================================

Validate before shared publication handoff:
- requester identity
- source record existence
- company context
- publication policy code
- required contact fields where applicable
- protected field eligibility

# ============================================================
# 3. TRANSFORMATION DIRECTION
# ============================================================

Transformation should:
- normalize contact fields
- summarize long-form business notes where needed
- avoid raw dump of local-only fields
- preserve source_record_id traceability

# ============================================================
# 4. UI / DEBUG DIRECTION
# ============================================================

Where preview is shown, UI may show:
- source fields selected for publication
- publication-safe normalized view
- omitted or blocked field notice where policy requires


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120160_NAMECARD_PAYLOAD_FIELD_MAP_IMPLEMENTATION_GUIDE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120170_NAMECARD_API_FIELD_SCHEMA_IMPLEMENTATION_GUIDE.md -->
# ============================================================
# NAMECARD API FIELD SCHEMA IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
implementation_scope: api_field_schema
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for request/response field schema.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Implementation should:
- treat canonical field schema as the contract source
- keep field naming stable
- distinguish required and optional fields explicitly
- validate enum and identifier fields early

# ============================================================
# 2. REQUEST VALIDATION DIRECTION
# ============================================================

Validate:
- requester_user_id existence and authority
- record identifiers
- array presence where batch operation is used
- required company_id for ERP publish
- required publication_policy_code for ERP publish
- operation_payload presence for sync push

# ============================================================
# 3. RESPONSE DIRECTION
# ============================================================

Responses should:
- always include success
- include canonical result identifiers where applicable
- include error_code on failure
- not blur approval-required with publish success
- not blur conflict with generic failure

# ============================================================
# 4. CLIENT DIRECTION
# ============================================================

Client should:
- respect required fields before request submission
- surface missing required fields clearly
- treat optional fields as absent rather than invented defaults
- preserve response error_code and state meaning in UI


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120170_NAMECARD_API_FIELD_SCHEMA_IMPLEMENTATION_GUIDE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120180_NAMECARD_VALIDATION_CODE_IMPLEMENTATION_GUIDE.md -->
# ============================================================
# NAMECARD VALIDATION CODE IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
implementation_scope: validation_code
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for validation code usage.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Implementation should:
- validate request prerequisites early
- return canonical validation code before deeper processing where possible
- separate validation result from later execution result

# ============================================================
# 2. UI DIRECTION
# ============================================================

UI should:
- surface actionable validation failures clearly
- distinguish missing prerequisite from processing failure
- guide user toward correction when validation fails

# ============================================================
# 3. API DIRECTION
# ============================================================

API may return:
- success=false
- validation_code
- error_code only when execution path has already failed or progressed
- field-level hints where useful


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120180_NAMECARD_VALIDATION_CODE_IMPLEMENTATION_GUIDE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120190_NAMECARD_UI_LABEL_IMPLEMENTATION_GUIDE.md -->
# ============================================================
# NAMECARD UI LABEL IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
implementation_scope: ui_label
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for badge labels and short UI messages.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Implementation should:
- map UI state codes to canonical badge labels
- map validation codes to canonical validation messages
- map error codes to canonical error messages
- preserve consistent wording across list/detail/settings screens

# ============================================================
# 2. PRESENTATION DIRECTION
# ============================================================

Prefer:
- short badge text on list screen
- slightly longer detail text on detail screen
- short corrective wording for validation failures
- distinct wording for approval, rejection, conflict, and failure

# ============================================================
# 3. DO NOT COLLAPSE
# ============================================================

Do not collapse:
- approval pending into published wording
- rejected into publish failed wording
- restricted into hidden wording
- conflict into generic failure wording


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120190_NAMECARD_UI_LABEL_IMPLEMENTATION_GUIDE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/130.development/130_OVERVIEW.md -->
# ============================================================
# 130 DEVELOPMENT OVERVIEW
# ============================================================

status: draft
layer: overview
system: applications
application: NameCardManager
directory: 130.development
owner: Boss
prepared_by: Zero

summary:
Defines development priorities, work packages, test focus,
and implementation guidance for engineering work.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/130.development/130_OVERVIEW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/130.development/130_INDEX.md -->
# ============================================================
# 130 DEVELOPMENT INDEX
# ============================================================

status: draft
layer: index
system: applications
application: NameCardManager
directory: 130.development
owner: Boss
prepared_by: Zero

files:
- 130_NAME_CARD_MANAGER_DEVELOPMENT.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/130.development/130_INDEX.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/130.development/130_NAME_CARD_MANAGER_DEVELOPMENT.md -->
# ============================================================
# NAME CARD MANAGER DEVELOPMENT
# ============================================================

status: draft
layer: development
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines development focus areas and engineering breakdown guidance
for NameCardManager.

# ============================================================
# 1. DEVELOPMENT PRIORITIES
# ============================================================

Priority order:

1. canonical data and sync correctness
2. local/offline reliability
3. app-internal share correctness
4. ERP publication correctness
5. relationship visibility usability
6. UI refinement

# ============================================================
# 2. RECOMMENDED WORK PACKAGES
# ============================================================

Recommended packages:
- login and session
- local storage
- sync coordinator
- name card list and detail UI
- share target management
- ERP setting and publication flow
- relationship rendering
- failure and retry visibility

# ============================================================
# 3. TEST FOCUS
# ============================================================

Test focus areas:
- online create/update/delete
- offline create/update/delete and replay
- share target add/remove
- app-internal share and revoke
- ERP publication eligibility
- ERP publication failure visibility
- BusinessOS restore to local after loss
- relationship display correctness

# ============================================================
# 4. DEVELOPMENT NOTES
# ============================================================

Development should preserve:
- simple readable UI
- explicit share actions
- visible sync state
- visible publication state
- recoverability from local loss via BusinessOS


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/130.development/130_NAME_CARD_MANAGER_DEVELOPMENT.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900_OVERVIEW.md -->
# ============================================================
# 900 META OVERVIEW
# ============================================================

status: draft
layer: overview
system: applications
application: NameCardManager
directory: 900.meta
owner: Boss
prepared_by: Zero

summary:
Captures current document status, open design areas,
maintenance rules, sync conflict meta notes,
relationship visibility meta notes, API contract meta notes,
audit/approval meta notes, approval/audit code meta notes,
error code meta notes, UI state meta notes,
payload field map meta notes, API field schema meta notes,
validation code meta notes, UI label meta notes,
consistency check meta, and review checklist meta.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900_OVERVIEW.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900_INDEX.md -->
# ============================================================
# 900 META INDEX
# ============================================================

status: draft
layer: index
system: applications
application: NameCardManager
directory: 900.meta
owner: Boss
prepared_by: Zero

files:
- 900_NAME_CARD_MANAGER_META.md
- 900110_NAMECARD_SYNC_CONFLICT_META_NOTE.md
- 900120_NAMECARD_RELATIONSHIP_META_NOTE.md
- 900130_NAMECARD_API_META_NOTE.md
- 900140_NAMECARD_AUDIT_APPROVAL_META_NOTE.md
- 900150_NAMECARD_APPROVAL_AUDIT_CODE_META_NOTE.md
- 900160_NAMECARD_ERROR_CODE_META_NOTE.md
- 900170_NAMECARD_UI_STATE_META_NOTE.md
- 900180_NAMECARD_PAYLOAD_FIELD_MAP_META_NOTE.md
- 900190_NAMECARD_API_FIELD_SCHEMA_META_NOTE.md
- 900200_NAMECARD_VALIDATION_CODE_META_NOTE.md
- 900210_NAMECARD_UI_LABEL_META_NOTE.md
- 900220_NAMECARD_CONSISTENCY_CHECK_META.md
- 900230_NAMECARD_REVIEW_CHECKLIST_META.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900_INDEX.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900_NAME_CARD_MANAGER_META.md -->
# ============================================================
# NAME CARD MANAGER META
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Captures meta-level maintenance notes for NameCardManager.

# ============================================================
# 1. CURRENT DOCUMENT STATUS
# ============================================================

Current state:
- foundational draft established
- main layers populated
- sync concept defined
- sharing model defined
- ERP publication constraint defined

# ============================================================
# 2. OPEN AREAS
# ============================================================

Areas that may be expanded later:
- conflict resolution detail
- exact approval handoff detail
- exact relationship scoring/ranking
- exact encryption/storage detail
- exact API contract detail
- detailed screen widgets and state transitions

# ============================================================
# 3. MAINTENANCE NOTES
# ============================================================

When updating this document set:
- keep BusinessOS as truth source
- keep local as cache/offline work area
- do not introduce silent automatic sharing
- do not allow ordinary ERP publication revoke
- preserve explicit boundary between app share and ERP publication


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900_NAME_CARD_MANAGER_META.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900110_NAMECARD_SYNC_CONFLICT_META_NOTE.md -->
# ============================================================
# NAMECARD SYNC CONFLICT META NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: sync_conflict
owner: Boss
prepared_by: Zero

purpose:
Captures open design notes around sync conflict handling.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current design decision:
- BusinessOS is canonical
- local deferred changes are preserved
- silent overwrite is prohibited
- explicit resolution path is required for conflict

# ============================================================
# 2. OPEN DETAIL AREAS
# ============================================================

May be detailed later:
- exact field-level merge rule
- exact UI for conflict comparison
- exact administrator intervention path
- exact retry thresholds before conflict promotion


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900110_NAMECARD_SYNC_CONFLICT_META_NOTE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900120_NAMECARD_RELATIONSHIP_META_NOTE.md -->
# ============================================================
# NAMECARD RELATIONSHIP META NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: relationship_visibility
owner: Boss
prepared_by: Zero

purpose:
Captures open design notes related to relationship visibility.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current design decision:
- related entries should be visible when relevant
- explicit and inferred relationships must remain distinguishable
- readability is prioritized over dense graph display

# ============================================================
# 2. OPEN DETAIL AREAS
# ============================================================

May be detailed later:
- exact scoring of relationship priority
- exact icon set or badge set
- exact visual grouping rules
- exact same-company inference thresholds


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900120_NAMECARD_RELATIONSHIP_META_NOTE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900130_NAMECARD_API_META_NOTE.md -->
# ============================================================
# NAMECARD API META NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: api_contract
owner: Boss
prepared_by: Zero

purpose:
Captures open design notes around API contract detail.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current design decision:
- API boundaries are explicit
- sync, share, and ERP publication are separated
- approval-required is distinct from published
- conflict is distinct from generic failure

# ============================================================
# 2. OPEN DETAIL AREAS
# ============================================================

May be detailed later:
- exact field schema
- exact error code catalog
- exact pagination/query rules
- exact batch request boundaries
- exact idempotency behavior


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900130_NAMECARD_API_META_NOTE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900140_NAMECARD_AUDIT_APPROVAL_META_NOTE.md -->
# ============================================================
# NAMECARD AUDIT APPROVAL META NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: audit_approval
owner: Boss
prepared_by: Zero

purpose:
Captures meta notes for audit, history, approval events,
and shared ERP publication usage.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current design decision:
- ERP-wide publication uses shared BusinessOS capability
- application-local direct ERP transmission is not the design
- audit, history, approval event, and publication result are separated

# ============================================================
# 2. OPEN DETAIL AREAS
# ============================================================

May be detailed later:
- exact audit action code catalog
- exact history summary wording rules
- exact approval event mapping from shared capability
- exact retention rules for audit/history records


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900140_NAMECARD_AUDIT_APPROVAL_META_NOTE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900150_NAMECARD_APPROVAL_AUDIT_CODE_META_NOTE.md -->
# ============================================================
# NAMECARD APPROVAL AUDIT CODE META NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: approval_audit_code
owner: Boss
prepared_by: Zero

purpose:
Captures meta notes for approval state coding and audit action codes.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current design decision:
- approval state and publication result stay separated
- audit action codes are canonicalized
- shared BusinessOS publication routing is explicitly auditable

# ============================================================
# 2. OPEN DETAIL AREAS
# ============================================================

May be detailed later:
- exact UI badge wording
- exact analytics aggregation by action code
- exact retention policy by action category


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900150_NAMECARD_APPROVAL_AUDIT_CODE_META_NOTE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900160_NAMECARD_ERROR_CODE_META_NOTE.md -->
# ============================================================
# NAMECARD ERROR CODE META NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: error_code
owner: Boss
prepared_by: Zero

purpose:
Captures meta notes for canonical error code design.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current design decision:
- error codes are canonical identifiers
- approval and publication failures remain separated
- conflict and protection failures remain separated
- fail-closed behavior should have explicit error representation

# ============================================================
# 2. OPEN DETAIL AREAS
# ============================================================

May be detailed later:
- exact HTTP/status mapping
- exact user-facing text catalog
- exact localization rules
- exact retryability flags by code


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900160_NAMECARD_ERROR_CODE_META_NOTE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900170_NAMECARD_UI_STATE_META_NOTE.md -->
# ============================================================
# NAMECARD UI STATE META NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: ui_state
owner: Boss
prepared_by: Zero

purpose:
Captures meta notes for UI state code design.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current design decision:
- UI uses canonical state codes
- approval and publication remain visually distinguishable
- sync conflict remains visually distinguishable from generic failure

# ============================================================
# 2. OPEN DETAIL AREAS
# ============================================================

May be detailed later:
- exact badge labels
- exact icon mapping
- exact color mapping
- exact compact/mobile rendering rules


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900170_NAMECARD_UI_STATE_META_NOTE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900180_NAMECARD_PAYLOAD_FIELD_MAP_META_NOTE.md -->
# ============================================================
# NAMECARD PAYLOAD FIELD MAP META NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: payload_field_map
owner: Boss
prepared_by: Zero

purpose:
Captures meta notes for payload field mapping.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current design decision:
- application-side source data and ERP-facing output are distinct
- shared BusinessOS capability owns final publication transformation
- publication-safe normalized output is preferred over raw record dump

# ============================================================
# 2. OPEN DETAIL AREAS
# ============================================================

May be detailed later:
- exact required/optional flags per field
- exact summary truncation rules
- exact redact/omit rules by publication policy
- exact ERP payload type variants


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900180_NAMECARD_PAYLOAD_FIELD_MAP_META_NOTE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900190_NAMECARD_API_FIELD_SCHEMA_META_NOTE.md -->
# ============================================================
# NAMECARD API FIELD SCHEMA META NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: api_field_schema
owner: Boss
prepared_by: Zero

purpose:
Captures meta notes for API field schema design.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current design decision:
- request/response schema is canonicalized
- required and optional fields are separated
- ERP publish schema targets shared BusinessOS capability,
  not direct application-to-ERP transmission

# ============================================================
# 2. OPEN DETAIL AREAS
# ============================================================

May be detailed later:
- exact field length constraints
- exact enum value catalogs
- exact nullability rules per client platform
- exact batch size limits


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900190_NAMECARD_API_FIELD_SCHEMA_META_NOTE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900200_NAMECARD_VALIDATION_CODE_META_NOTE.md -->
# ============================================================
# NAMECARD VALIDATION CODE META NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: validation_code
owner: Boss
prepared_by: Zero

purpose:
Captures meta notes for validation code design.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current design decision:
- validation codes are separate from error codes
- validation describes unmet prerequisites and invalid request shape
- validation should occur before deeper execution where possible

# ============================================================
# 2. OPEN DETAIL AREAS
# ============================================================

May be detailed later:
- exact field-level validation hint schema
- exact UI wording catalog for validation messages
- exact precedence rules when multiple validation issues exist


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900200_NAMECARD_VALIDATION_CODE_META_NOTE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900210_NAMECARD_UI_LABEL_META_NOTE.md -->
# ============================================================
# NAMECARD UI LABEL META NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: ui_label
owner: Boss
prepared_by: Zero

purpose:
Captures meta notes for UI labels and badge wording.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current design decision:
- badge labels are canonicalized
- detail wording may be slightly longer than badge wording
- validation and error wording remain separated from raw codes

# ============================================================
# 2. OPEN DETAIL AREAS
# ============================================================

May be detailed later:
- Japanese wording catalog
- platform-specific compact wording
- accessibility wording variants


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900210_NAMECARD_UI_LABEL_META_NOTE.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900220_NAMECARD_CONSISTENCY_CHECK_META.md -->
# ============================================================
# NAMECARD CONSISTENCY CHECK META
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: consistency_check
owner: Boss
prepared_by: Zero

purpose:
Provides consistency check checkpoints for NameCardManager.

# ============================================================
# 1. STRUCTURE CHECK
# ============================================================

checkpoints:
- root overview exists
- root index exists
- integrated document exists
- each layer directory exists
- each populated layer has overview
- each populated layer has index

# ============================================================
# 2. DOCUMENT COVERAGE CHECK
# ============================================================

confirm:
- constitution exists
- architecture exists
- model family is present
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
# 3. ERP BOUNDARY CHECK
# ============================================================

confirm:
- NameCardManager does not claim direct ERP transmission ownership
- shared BusinessOS ERP publication capability is referenced
- approval boundary is distinct from publication result
- revoke of published ERP-wide state is not exposed to ordinary user

# ============================================================
# 4. STATE CHECK
# ============================================================

confirm:
- sync state exists
- UI state exists
- approval state exists
- publication state exists
- error code exists
- validation code exists
- audit action code exists

# ============================================================
# 5. INTEGRATED DOCUMENT CHECK
# ============================================================

confirm:
- integrated document includes root overview/index
- integrated document includes each main design file
- integrated document ordering is stable
- integrated document does not omit newly added files

# ============================================================
# 6. MODEL/INTERFACE CONSISTENCY CHECK
# ============================================================

confirm:
- UI state model aligns with UI label documents
- validation code model aligns with validation policy/implementation
- error code model aligns with error policy/implementation
- payload field map aligns with shared ERP publication integration
- API field schema aligns with API contract docs

# ============================================================
# 7. OPEN REVIEW POINTS
# ============================================================

review_targets:
- naming stability
- numbering stability
- overlap reduction
- shared capability wording consistency
- approval/publication wording consistency


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900220_NAMECARD_CONSISTENCY_CHECK_META.md -->


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900230_NAMECARD_REVIEW_CHECKLIST_META.md -->
# ============================================================
# NAMECARD REVIEW CHECKLIST META
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: review_checklist
owner: Boss
prepared_by: Zero

purpose:
Provides a human review checklist for NameCardManager design review.

review_checklist:
- Is BusinessOS clearly the source of truth?
- Is local storage clearly treated as cache/offline work area?
- Is app-internal sharing clearly separated from ERP-wide publication?
- Is ERP-wide publication clearly routed through shared BusinessOS capability?
- Is approval clearly separated from publication success?
- Is published ERP-wide state clearly non-revocable by ordinary user?
- Are protected fields clearly handled?
- Are conflict, validation, and execution failure clearly separated?
- Are UI badges and messages consistent with state models?
- Does the integrated document reflect all current files?


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900230_NAMECARD_REVIEW_CHECKLIST_META.md -->

# ============================================================
# ESTIMATE CREATOR
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. POSITION
# ============================================================

EstimateCreator is an independent application under 07.applications.

It is positioned as a BusinessOS-side simplified ERP-front application
for estimate work.

# ============================================================
# 2. PRIMARY ROLE
# ============================================================

EstimateCreator provides:

- rough estimate creation
- offline estimate drafting
- opportunity memo handling
- meeting memo handling
- app-internal sharing to preconfigured users
- ERP rough estimate publication request
- ERP inventory reference lookup

# ============================================================
# 3. COMMON CAPABILITY ALIGNMENT
# ============================================================

EstimateCreator aligns with NameCardManager for:

- sharing pattern
- sync pattern
- ERP publication pattern

These are reused through common BusinessOS capability paths
rather than app-private incompatible logic.

# ============================================================
# 4. AUTHORITY BOUNDARY
# ============================================================

EstimateCreator is not the normal authoritative ERP formal estimate issuer.

Default estimate class:

- rough_estimate

Formal ERP estimate authority normally remains in ERP.

# ============================================================
# 5. OFFLINE POSITION
# ============================================================

EstimateCreator supports offline drafting and preparation.

Offline mode allows:

- local estimate editing
- local memo editing
- local queueing
- cached template usage

Offline mode does not complete:

- live ERP publication
- live authoritative inventory confirmation
- live external authority completion

# ============================================================
# 6. SHAREABLE OBJECTS
# ============================================================

App-internal shareable objects:

- opportunity memo
- meeting memo
- rough estimate

Sharing is limited to preconfigured users.

# ============================================================
# 7. PREMIUM FEATURES
# ============================================================

Premium option includes:

- structured meeting memo
- QA management
- estimate templates

Premium features are gated additions,
not a separate architecture branch.

