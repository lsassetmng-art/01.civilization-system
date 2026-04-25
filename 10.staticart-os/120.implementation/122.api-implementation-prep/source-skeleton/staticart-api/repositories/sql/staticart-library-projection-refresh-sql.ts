export const STATICART_LIBRARY_PROJECTION_REFRESH_SQL = {
  selectLibraryProjectionInputs: `
    select
      uae.user_id,
      uae.asset_id,
      uaf.asset_id is not null as favorite_state,
      urp.asset_id is not null as has_reader_progress,
      uvp.asset_id is not null as has_viewer_progress,
      (
        uae.effective_entitlement_state in (
          'owned_permanent',
          'subscription_access',
          'owned_and_subscription_access'
        )
      ) as entitlement_allows_library
    from staticart.user_asset_entitlement uae
    left join staticart.user_asset_favorite uaf
      on uaf.user_id = uae.user_id
     and uaf.asset_id = uae.asset_id
    left join staticart.user_reader_progress urp
      on urp.user_id = uae.user_id
     and urp.asset_id = uae.asset_id
    left join staticart.user_viewer_progress uvp
      on uvp.user_id = uae.user_id
     and uvp.asset_id = uae.asset_id
    where uae.user_id = $1
      and uae.asset_id = $2
  `,
  upsertLibraryProjectionSkeleton: `
    -- phase 5 actual library projection refresh persistence binds here
    select
      $1::uuid as user_id,
      $2::uuid as asset_id,
      $3::boolean as visible_in_library,
      $4::boolean as visible_in_continue_reading,
      $5::boolean as visible_in_continue_viewing,
      now() as projection_refreshed_at
  `,
} as const;
