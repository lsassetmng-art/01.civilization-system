# ============================================================
# STATIC ART OS DDL MIGRATION ORDER
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

goal:
Define the safe creation order for the StaticArtOS schema and tables.

phase_order:
  - Phase 1: create schema and enums
  - Phase 2: create canonical anchor tables
  - Phase 3: create metadata and file tables
  - Phase 4: create rights/sales/subscription tables
  - Phase 5: create review and audit tables
  - Phase 6: create entitlement and continuity tables
  - Phase 7: create derived projection tables
  - Phase 8: create indexes and refresh jobs

detailed_order:
  - create schema staticart
  - create enum asset_type
  - create enum lifecycle_state
  - create enum sales_state
  - create enum subscription_state
  - create enum entitlement_state
  - create enum review_status
  - create enum file_role
  - create enum projection_status
  - create table asset_master
  - create table asset_version
  - create table asset_file
  - create table asset_localization
  - create table asset_category_map
  - create table asset_tag_map
  - create table asset_rights_policy
  - create table asset_sales_offer
  - create table asset_subscription_rule
  - create table asset_review_request
  - create table asset_review_decision
  - create table user_asset_entitlement
  - create table user_library_projection
  - create table user_reader_progress
  - create table user_viewer_progress
  - create table user_asset_annotation
  - create table user_asset_favorite
  - create table asset_exhibition_projection
  - create table asset_audit_event
  - create indexes
  - create refresh and recompute jobs

rules:
  - canonical tables must exist before derived projection tables
  - audit table must exist before production event wiring
  - enum changes are additive only
  - archived state must not require destructive migration rollback
