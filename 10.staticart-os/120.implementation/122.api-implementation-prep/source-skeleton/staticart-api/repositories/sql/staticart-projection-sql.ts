export const STATICART_PROJECTION_SQL = {
  selectExhibitionProjection: `
    select
      asset_id,
      version_no,
      projection_status,
      usable_in_exhibition_builder,
      entitlement_state,
      exhibition_allowed,
      additional_license_required,
      price_label,
      rights_summary,
      reason_codes,
      projection_refreshed_at
    from staticart.asset_exhibition_projection
    where asset_id = $1
  `,
  enqueueProjectionRefreshSkeleton: `
    -- phase 3+ queue binding point
    select
      $1::uuid as asset_id,
      $2::text[] as targets
  `,
} as const;
