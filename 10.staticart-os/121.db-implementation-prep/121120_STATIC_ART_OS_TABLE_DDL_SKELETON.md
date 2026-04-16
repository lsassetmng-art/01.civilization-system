# ============================================================
# STATIC ART OS TABLE DDL SKELETON
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
This file is the table-by-table DDL skeleton checklist
before actual SQL creation.

table_groups:
  canonical_anchor:
    - asset_master
    - asset_version

  files_metadata:
    - asset_file
    - asset_localization
    - asset_category_map
    - asset_tag_map

  policy_commerce:
    - asset_rights_policy
    - asset_sales_offer
    - asset_subscription_rule

  governance:
    - asset_review_request
    - asset_review_decision
    - asset_audit_event

  user_resolution_and_continuity:
    - user_asset_entitlement
    - user_library_projection
    - user_reader_progress
    - user_viewer_progress
    - user_asset_annotation
    - user_asset_favorite

  projection:
    - asset_exhibition_projection

ddl_checklist_template:
  required_items:
    - table purpose
    - primary key
    - foreign key
    - unique constraints
    - check constraints
    - nullable policy
    - created_at / updated_at policy
    - index plan
    - refresh or recompute dependency
    - audit impact

notes:
  - user_reader_progress and user_viewer_progress must remain separate.
  - user_library_projection is derived.
  - asset_exhibition_projection is derived and read only for downstream consumers.
