export const STATICART_ACCESS_SESSION_SQL = {
  selectAccessSessionEligibility: `
    select
      am.asset_id,
      am.lifecycle_state,
      am.is_current_version_visible,
      uae.effective_entitlement_state,
      uae.sample_available
    from staticart.asset_master am
    left join staticart.user_asset_entitlement uae
      on uae.asset_id = am.asset_id
     and uae.user_id = $2
    where am.asset_id = $1
  `,
  createAccessSessionSkeleton: `
    -- phase 4 actual access-session persistence or tokenization binds here
    select
      $1::uuid as asset_id,
      $2::uuid as user_id,
      $3::text as access_mode,
      now() as created_at
  `,
} as const;
