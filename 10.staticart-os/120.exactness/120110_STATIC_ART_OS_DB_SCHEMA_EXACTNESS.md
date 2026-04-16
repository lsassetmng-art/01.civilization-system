# ============================================================
# STATIC ART OS DB SCHEMA EXACTNESS
# ============================================================

status: implementation-ready
system: StaticArtOS
layer: exactness
owner: Boss
prepared_by: Zero

schema_name: staticart

enum_fixed:
  asset_type:
    - artwork
    - illustration
    - poster
    - photo_art
    - static_visual
    - book
    - ebook
    - booklet
    - catalog
    - collection_book
    - material_booklet

  lifecycle_state:
    - draft
    - files_uploaded
    - metadata_completed
    - self_check_passed
    - review_pending
    - approved
    - rejected
    - published_marketplace
    - published_library_only
    - delisted
    - restricted
    - replaced
    - archived

  sales_state:
    - not_for_sale
    - for_sale
    - preorder
    - sale_paused
    - sold_out_limited
    - sale_ended

  subscription_state:
    - not_included
    - included_scheduled
    - included_active
    - included_paused
    - included_ended

  entitlement_state:
    - none
    - sample_only
    - subscription_access
    - owned_permanent
    - owned_and_subscription_access
    - blocked_by_region
    - blocked_by_age_policy
    - blocked_by_rights_change

  review_status:
    - pending
    - approved
    - rejected
    - rework_required
    - restricted

  file_role:
    - master_original
    - master_publish
    - preview_image
    - thumbnail
    - sample_file
    - reader_package
    - viewer_image
    - viewer_bundle
    - supplemental_file

  projection_status:
    - eligible
    - ineligible
    - revoked

canonical_tables:
  - staticart.asset_master
  - staticart.asset_version
  - staticart.asset_file
  - staticart.asset_localization
  - staticart.asset_category_map
  - staticart.asset_tag_map
  - staticart.asset_rights_policy
  - staticart.asset_sales_offer
  - staticart.asset_subscription_rule
  - staticart.asset_review_request
  - staticart.asset_review_decision
  - staticart.user_asset_entitlement
  - staticart.user_library_projection
  - staticart.user_reader_progress
  - staticart.user_viewer_progress
  - staticart.user_asset_annotation
  - staticart.user_asset_favorite
  - staticart.asset_exhibition_projection
  - staticart.asset_audit_event

derived_surfaces:
  - user_library_projection
  - asset_exhibition_projection
  - entitlement_effective_snapshot

core_table_roles:
  asset_master:
    role: canonical anchor of asset identity and current lifecycle
    keys:
      - asset_id pk
      - asset_code unique
      - asset_type
      - creator_id
      - publisher_id
      - current_version_no
      - lifecycle_state
      - is_current_version_visible
      - created_at
      - updated_at
      - archived_at

  asset_version:
    role: per-version entity record
    keys:
      - asset_id
      - version_no
      - version_label
      - is_visible
      - is_replace_target
      - published_at
      - created_at
      - created_by

  asset_file:
    role: file registry by asset/version/file_role
    keys:
      - file_id pk
      - asset_id
      - version_no
      - file_role
      - storage_key
      - mime_type
      - file_size_bytes
      - sha256
      - page_count
      - width_px
      - height_px
      - duration_ms
      - created_at

  asset_localization:
    role: language-scoped metadata
    keys:
      - asset_id
      - version_no
      - language_code
      - title
      - subtitle
      - short_description
      - long_description
      - created_at
      - updated_at

  asset_rights_policy:
    role: rights, region, age, exhibition availability
    keys:
      - asset_id pk
      - version_no
      - exhibition_allowed
      - commercial_use_allowed
      - derivative_allowed
      - additional_license_required
      - age_rating
      - region_mode
      - region_codes
      - rights_summary
      - rights_state
      - effective_from
      - effective_to
      - updated_at

  asset_sales_offer:
    role: canonical sale condition
    keys:
      - asset_id pk
      - sale_type
      - sales_state
      - base_currency
      - base_price
      - price_label_override
      - sale_start_at
      - sale_end_at
      - limited_sale_flag
      - inventory_cap
      - updated_at

  asset_subscription_rule:
    role: canonical subscription inclusion rule
    keys:
      - asset_id pk
      - subscription_state
      - subscription_eligible
      - creator_opt_in
      - settlement_group_code
      - subscription_start_at
      - subscription_end_at
      - updated_at

  asset_review_request:
    role: review submission record
    keys:
      - review_request_id pk
      - asset_id
      - review_round_no
      - submitted_by
      - submitted_at
      - review_status
      - requested_review_types
      - self_check_passed
      - closed_at

  asset_review_decision:
    role: decision record
    keys:
      - review_decision_id pk
      - review_request_id
      - decision_by
      - decision_status
      - decision_reason_code
      - decision_comment
      - decided_at

  user_asset_entitlement:
    role: effective entitlement snapshot by user and asset
    keys:
      - user_id
      - asset_id
      - has_owned_permanent
      - has_subscription_access
      - sample_available
      - blocking_reason_code
      - effective_entitlement_state
      - last_external_transaction_id
      - computed_at

  user_reader_progress:
    role: publishing continuity
    keys:
      - user_id
      - asset_id
      - current_locator
      - progress_percent
      - sync_version
      - last_device_type
      - last_opened_at
      - updated_at

  user_viewer_progress:
    role: visual continuity
    keys:
      - user_id
      - asset_id
      - current_frame_ref
      - current_page_no
      - zoom_ratio
      - sync_version
      - last_device_type
      - last_opened_at
      - updated_at

  asset_exhibition_projection:
    role: Exhibition Builder projection
    keys:
      - asset_id pk
      - version_no
      - projection_status
      - usable_in_exhibition_builder
      - entitlement_state
      - exhibition_allowed
      - additional_license_required
      - price_label
      - rights_summary
      - reason_codes
      - projection_refreshed_at

  asset_audit_event:
    role: audit trail for state and governance events
    keys:
      - audit_event_id pk
      - asset_id
      - user_id
      - event_type
      - from_state
      - to_state
      - reason_code
      - external_ref
      - detail_json
      - created_at

refresh_triggers:
  library_projection:
    - purchase reflection success
    - subscription start
    - subscription expiry
    - rights policy change
    - lifecycle_state change
    - reader progress save
    - viewer progress save
    - favorite add/remove

  exhibition_projection:
    - publish
    - delist
    - restrict
    - archive
    - rights policy change
    - region policy change
    - age policy change
    - version visibility change
    - entitlement policy change

state_transition_matrix:
  lifecycle:
    draft:
      - files_uploaded
      - archived
    files_uploaded:
      - metadata_completed
      - archived
    metadata_completed:
      - self_check_passed
      - files_uploaded
      - archived
    self_check_passed:
      - review_pending
      - metadata_completed
      - archived
    review_pending:
      - approved
      - rejected
      - restricted
    approved:
      - published_marketplace
      - published_library_only
      - archived
    rejected:
      - metadata_completed
      - self_check_passed
      - archived
    published_marketplace:
      - delisted
      - restricted
      - replaced
      - archived
    published_library_only:
      - published_marketplace
      - restricted
      - replaced
      - archived
    delisted:
      - published_marketplace
      - published_library_only
      - restricted
      - archived
    restricted:
      - review_pending
      - delisted
      - archived
    replaced:
      - archived
    archived: []

  sales:
    not_for_sale:
      - for_sale
      - preorder
    for_sale:
      - sale_paused
      - sold_out_limited
      - sale_ended
    preorder:
      - for_sale
      - sale_paused
      - sale_ended
    sale_paused:
      - for_sale
      - sale_ended
    sold_out_limited:
      - sale_ended
    sale_ended: []

  subscription:
    not_included:
      - included_scheduled
      - included_active
    included_scheduled:
      - included_active
      - included_paused
      - included_ended
    included_active:
      - included_paused
      - included_ended
    included_paused:
      - included_active
      - included_ended
    included_ended:
      - included_scheduled
      - included_active

rules:
  - published_marketplace and published_library_only cannot coexist
  - archived cannot return to published state
  - review_pending blocks creator-side metadata/rights/sales/subscription edits
  - restricted blocks marketplace exposure, full access delivery, and exhibition projection
  - blocked_by_* entitlement states are effective blocks, not history deletion
