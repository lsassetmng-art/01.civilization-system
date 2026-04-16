# ============================================================
# STREAM STUDIO IMPLEMENTATION DEPENDENCY MEMO
# ============================================================

status: decision-memo
layer: implementation-dependency
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the practical implementation dependency order and blockers for StreamStudio.

dependency_principles:
- implement lowest shared foundations before domain-specific features
- avoid building listing, membership, and split flows before publish and authority foundations exist
- runtime visibility and audit must not be postponed to the very end
- common component candidates should be evaluated before repeated screen implementation

# ============================================================
# 1. FOUNDATION DEPENDENCIES
# ============================================================

foundation_dependencies:
- identity and role resolution
- scope-based permission resolution
- asset reference resolution
- standardized API envelope
- validation and error code framework
- audit event write path
- runtime job framework
- money and currency formatting core
- localized UI copy resolution

foundation_blocker_statement:
No publish, listing, membership, or split implementation
should proceed without permission, audit, and error framework baseline.

# ============================================================
# 2. PHASE DEPENDENCY ORDER
# ============================================================

phase_dependency_order:

  phase_1_creator_asset_base:
    delivers:
      - project
      - member assignment base
      - upload session
      - upload queue
      - video draft
      - metadata
      - thumbnail
      - subtitle
      - edit marker
    depends_on:
      - foundation_dependencies

  phase_2_review_and_publish_base:
    delivers:
      - review comment
      - revision request
      - approval request
      - publish setting
      - publish request
      - scheduled publish
    depends_on:
      - phase_1_creator_asset_base
      - audit event write path
      - runtime job framework

  phase_3_marketplace_and_paid_video:
    delivers:
      - marketplace listing draft
      - access mode binding
      - paid video offer
      - listing validation
      - listing activation / delist
    depends_on:
      - phase_2_review_and_publish_base
      - money and currency formatting core
      - split minimum viability if paid release requires it

  phase_4_membership:
    delivers:
      - membership program
      - tier
      - benefit
      - membership content rule
      - membership activation
    depends_on:
      - phase_3_marketplace_and_paid_video
      - entitlement rule support
      - runtime job framework for early access transitions

  phase_5_split_and_settlement:
    delivers:
      - split draft
      - split party lines
      - negotiation log
      - split approval
      - split activation
      - settlement reference visibility
    depends_on:
      - phase_3_marketplace_and_paid_video
      - money core
      - audit event write path

  phase_6_external_push_and_ops_hardening:
    delivers:
      - connector binding
      - external push dispatcher
      - retry / dead-letter surfaces
      - reconciliation surfaces
      - observability completion
    depends_on:
      - phase_2_review_and_publish_base
      - runtime job framework
      - audit event write path

# ============================================================
# 3. DOMAIN-SPECIFIC DEPENDENCY NOTES
# ============================================================

domain_notes:

  upload_and_draft:
    blockers:
      - asset reference standard unresolved
      - resumable upload contract unresolved
    recommended_first_components:
      - Upload Intake Common
      - Metadata Editing Common

  review_and_approval:
    blockers:
      - approval actor resolution unresolved
      - notification fanout unresolved
    recommended_first_components:
      - Timeline Review Comment Common
      - Revision Request Common
      - Approval Flow Common

  publish:
    blockers:
      - rights check resolver unresolved
      - publish idempotency unresolved
    recommended_first_components:
      - Publish Settings Common
      - Scheduled Publish Common

  marketplace:
    blockers:
      - commerce category mapping unresolved
      - access mode to entitlement mapping unresolved
      - paid listing split requirement policy unresolved
    recommended_first_components:
      - Marketplace Listing Editor Common
      - Paid Access Offer Common

  membership:
    blockers:
      - entitlement target model unresolved
      - early access transition executor unresolved
    recommended_first_components:
      - Membership Program Manager Common
      - Membership Tier Editor Common
      - Membership Content Rule Common

  split:
    blockers:
      - minimum required party rules unresolved
      - settlement source mapping unresolved
    recommended_first_components:
      - Revenue Split Editor Common
      - Fixed Fee and Percentage Allocation Common

  operations:
    blockers:
      - runtime job table not implemented
      - dead-letter operator surface not implemented
    recommended_first_components:
      - Retry and Dead-Letter Visibility Common
      - Audit Reconstruction Bundle Common

# ============================================================
# 4. PARALLELIZATION GUIDANCE
# ============================================================

parallelization_guidance:
- upload queue UI and upload API may proceed in parallel after session contract freeze
- review UI and approval API may proceed in parallel after state machine freeze
- marketplace screen and listing API may proceed in parallel after access_mode and price rules freeze
- membership screen and membership API may proceed in parallel after tier and content rule enums freeze
- split screen and split API may proceed in parallel after split rule table freeze
- runtime jobs and operations UI may proceed in parallel after job state contract freeze

do_not_parallelize_before_freeze:
- publish executor and external push dispatcher before idempotency freeze
- membership activation and early-access expiration before entitlement rule freeze
- paid listing activation before pricing and split dependency freeze

# ============================================================
# 5. SHARED COMPONENT DECISION GATES
# ============================================================

shared_component_decision_gates:
- Upload Intake Common should be decided before building second asset-oriented app
- Metadata Editing Common should be decided before duplicating metadata forms
- Approval Flow Common should be decided before membership and split approvals diverge
- Marketplace Listing Editor Common should be decided before other creator commerce apps emerge
- Membership Program Manager Common should be decided before another subscription-capable app is designed
- Revenue Split Editor Common should be decided before monetized collaboration expands
- Retry and Dead-Letter Visibility Common should be decided before connector implementations multiply

# ============================================================
# 6. MINIMUM VIABLE CROSS-DOMAIN CONTRACTS
# ============================================================

minimum_viable_cross_domain_contracts:
- project_ref to asset_ref relation
- draft_ref to publish_ref relation
- publish_ref to listing_ref relation
- asset_ref to membership_content_rule relation
- asset_ref to split_ref relation
- source_ref to settlement_reference relation
- target_ref to audit_event relation
- target_ref to runtime_job relation

# ============================================================
# 7. HIGH-RISK IMPLEMENTATION HOTSPOTS
# ============================================================

high_risk_hotspots:
- publish success vs external push failure split-brain handling
- paid listing with missing split rule
- membership-only and one-time paid dual binding conflict
- early-access expiration transitions
- idempotent scheduled publish and scheduled listing execution
- audit completeness across async retries
- stale UI state after approval completion

mitigation_direction:
- keep domain states separated
- require confirmation sheets for irreversible actions
- require audit writes before marking final success
- require reconciliation jobs for downstream-facing actions

# ============================================================
# 8. IMPLEMENTATION EXIT CHECKPOINTS
# ============================================================

exit_checkpoints:
- all frozen enums mapped
- all frozen field names mapped
- audit codes wired for high-risk actions
- runtime job visibility exists
- dead-letter visibility exists
- validation and business rule codes surface in UI
- publish, listing, membership, and split blockers appear distinctly
- root integrated doc regenerated after each freeze batch

# ============================================================
# 9. FIXED DEPENDENCY STATEMENT
# ============================================================

fixed_statement:
StreamStudio implementation shall proceed by foundation first,
publish before commerce, commerce before membership refinement,
and audit/runtime hardening no later than connector or monetization expansion.
