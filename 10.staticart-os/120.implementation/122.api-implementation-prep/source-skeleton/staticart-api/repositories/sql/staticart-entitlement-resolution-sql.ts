export const STATICART_ENTITLEMENT_RESOLUTION_SQL = {
  selectEntitlementResolutionInputs: `
    select
      uae.user_id,
      uae.asset_id,
      uae.has_owned_permanent,
      uae.has_subscription_access,
      uae.sample_available,
      (uae.effective_entitlement_state = 'blocked_by_region') as blocked_by_region,
      (uae.effective_entitlement_state = 'blocked_by_age_policy') as blocked_by_age_policy,
      (uae.effective_entitlement_state = 'blocked_by_rights_change') as blocked_by_rights_change,
      uae.computed_at
    from staticart.user_asset_entitlement uae
    where uae.asset_id = $1
      and uae.user_id = $2
  `,
  upsertEntitlementSnapshotSkeleton: `
    -- phase 4 actual entitlement recompute persistence binds here
    select
      $1::uuid as user_id,
      $2::uuid as asset_id,
      $3::text as effective_entitlement_state,
      now() as computed_at
  `,
} as const;
