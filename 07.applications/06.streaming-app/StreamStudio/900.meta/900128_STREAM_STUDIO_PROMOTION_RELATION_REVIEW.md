# ============================================================
# STREAM STUDIO PROMOTION RELATION REVIEW
# ============================================================

status: relation-review
layer: meta
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Reviews the relationships among the completed StreamStudio promotion-design targets,
clarifies dependency and adjacency patterns,
and identifies where merge-review or layered ownership should be applied.

review_scope:
- 900114_UPLOAD_INTAKE_COMMON_PROMOTION_DESIGN.md
- 900115_METADATA_EDITING_COMMON_PROMOTION_DESIGN.md
- 900116_APPROVAL_FLOW_COMMON_PROMOTION_DESIGN.md
- 900117_PUBLISH_SETTINGS_COMMON_PROMOTION_DESIGN.md
- 900118_MARKETPLACE_LISTING_EDITOR_COMMON_PROMOTION_DESIGN.md
- 900119_MEMBERSHIP_PROGRAM_MANAGER_COMMON_PROMOTION_DESIGN.md
- 900120_PROJECT_MEMBER_AUTHORITY_MATRIX_COMMON_PROMOTION_DESIGN.md
- 900121_FIXED_FEE_AND_PERCENTAGE_ALLOCATION_COMMON_PROMOTION_DESIGN.md
- 900122_REVENUE_SPLIT_EDITOR_COMMON_PROMOTION_DESIGN.md
- 900123_MULTI_CURRENCY_MONETARY_CORE_PROMOTION_DESIGN.md
- 900124_RETRY_AND_DEAD_LETTER_VISIBILITY_COMMON_PROMOTION_DESIGN.md
- 900125_EXTERNAL_PUSH_CONNECTOR_COMMON_PROMOTION_DESIGN.md
- 900126_AUDIT_RECONSTRUCTION_BUNDLE_COMMON_PROMOTION_DESIGN.md

relationship_groups:

  ingest_to_edit_to_publish_chain:
    sequence:
      - Upload Intake Common
      - Metadata Editing Common
      - Approval Flow Common
      - Publish Settings Common
      - External Push Connector Common
    interpretation:
      - upload establishes intake boundary
      - metadata editing structures the editable record
      - approval flow governs decision progression
      - publish settings governs release configuration
      - external push handles outbound publication after intent is fixed
    anti_merge_rule:
      - keep each stage as a separate common
      - do not collapse ingest, edit, approval, publish, and push into one super-component

  marketplace_and_membership_commerce_family:
    sequence:
      - Marketplace Listing Editor Common
      - Membership Program Manager Common
      - Multi-Currency Monetary Core
    interpretation:
      - listing editor owns listing-facing commerce configuration
      - membership manager owns recurring/tiered access structure
      - monetary core provides currency-safe shared rules
    anti_merge_rule:
      - listing behavior and membership structure stay separate
      - monetary core stays foundational and should not be absorbed into listing or membership editors

  collaboration_and_allocation_family:
    sequence:
      - Project Member Authority Matrix Common
      - Fixed Fee and Percentage Allocation Common
      - Revenue Split Editor Common
    interpretation:
      - authority matrix defines who can act and at what scope
      - fixed fee / percentage allocation provides lower-level allocation rule structure
      - revenue split editor provides domain-facing split editing on top of or beside allocation structure
    anti_merge_rule:
      - authority remains separate from financial allocation
      - allocation rule foundation remains separate from split-facing editor surface

  reliability_and_traceability_family:
    sequence:
      - Retry and Dead-Letter Visibility Common
      - External Push Connector Common
      - Audit Reconstruction Bundle Common
    interpretation:
      - retry/dead-letter visibility exposes operational failure and recovery state
      - external push connector owns outbound connector boundary
      - audit reconstruction bundle assembles higher-level trace packages across systems
    anti_merge_rule:
      - reliability visibility is not connector ownership
      - audit reconstruction is not retry engine ownership
      - connector boundary is not audit storage ownership

key_relation_notes:

  upload_intake_common:
    strongest_relations:
      - Metadata Editing Common
      - Retry and Dead-Letter Visibility Common
      - Audit Reconstruction Bundle Common
    relation_note:
      intake is earliest boundary, but later failure visibility and reconstruction may reference it

  metadata_editing_common:
    strongest_relations:
      - Upload Intake Common
      - Publish Settings Common
      - Marketplace Listing Editor Common
      - Multi-Currency Monetary Core
    relation_note:
      metadata editing is structurally upstream of publish and listing editing,
      but does not absorb their decision domains

  approval_flow_common:
    strongest_relations:
      - Publish Settings Common
      - Audit Reconstruction Bundle Common
    relation_note:
      approval state progression often gates publish readiness and contributes reconstruction trace

  publish_settings_common:
    strongest_relations:
      - Approval Flow Common
      - Marketplace Listing Editor Common
      - External Push Connector Common
    relation_note:
      publish settings sits between approval and outbound execution,
      but does not absorb listing editor or push connector

  marketplace_listing_editor_common:
    strongest_relations:
      - Publish Settings Common
      - Membership Program Manager Common
      - Multi-Currency Monetary Core
    relation_note:
      listing editor is commerce-facing but not equivalent to full program management or monetary core

  membership_program_manager_common:
    strongest_relations:
      - Marketplace Listing Editor Common
      - Multi-Currency Monetary Core
    relation_note:
      membership program structure is adjacent to listing but should stay separately owned

  project_member_authority_matrix_common:
    strongest_relations:
      - Revenue Split Editor Common
      - Fixed Fee and Percentage Allocation Common
    relation_note:
      authority scope may constrain monetization editing, but authority logic remains independent

  fixed_fee_and_percentage_allocation_common:
    strongest_relations:
      - Revenue Split Editor Common
      - Multi-Currency Monetary Core
    relation_note:
      allocation is the lower-level rule family, while split editor is the more domain-facing editor family

  revenue_split_editor_common:
    strongest_relations:
      - Fixed Fee and Percentage Allocation Common
      - Project Member Authority Matrix Common
      - Multi-Currency Monetary Core
    relation_note:
      split editor should likely consume allocation-rule foundations and participant authority scope

  retry_and_dead_letter_visibility_common:
    strongest_relations:
      - External Push Connector Common
      - Upload Intake Common
      - Audit Reconstruction Bundle Common
    relation_note:
      retry/dead-letter visibility stays operational and cross-cutting

  external_push_connector_common:
    strongest_relations:
      - Publish Settings Common
      - Retry and Dead-Letter Visibility Common
      - Audit Reconstruction Bundle Common
    relation_note:
      push connector sits at outbound execution boundary and should hand off reliability concerns cleanly

  audit_reconstruction_bundle_common:
    strongest_relations:
      - Approval Flow Common
      - Retry and Dead-Letter Visibility Common
      - External Push Connector Common
      - Upload Intake Common
      - Revenue Split Editor Common
    relation_note:
      reconstruction bundle is the broadest cross-trace package,
      but must remain package-oriented rather than engine-oriented

merge_review_candidates:
- Revenue Split Editor Common <-> Fixed Fee and Percentage Allocation Common
- Marketplace Listing Editor Common <-> Membership Program Manager Common
- Upload Intake Common <-> Resumable Upload Queue Common
- Approval Flow Common <-> Revision Request Common
- Retry and Dead-Letter Visibility Common <-> External Push Connector Common

merge_review_judgment:
  - none of the completed promotion-design targets should be merged immediately
  - merge-review should remain a later architectural check, not an automatic merge action
  - current separation is structurally healthier than premature consolidation

final_relation_judgment:
  - the batch is internally coherent
  - dependencies are understandable
  - no completed target currently needs forced redesign before readiness review
