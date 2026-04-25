export const STATICART_ENTITLEMENT_SQL = {
  selectEffectiveEntitlement: `
    select
      asset_id,
      effective_entitlement_state,
      has_owned_permanent,
      has_subscription_access,
      sample_available,
      blocking_reason_code,
      computed_at
    from staticart.user_asset_entitlement
    where asset_id = $1
      and user_id = $2
  `,
  upsertPurchaseGrantSkeleton: `
    -- phase 2+ actual purchase reflection logic binds here
    select
      $1::uuid as user_id,
      $2::uuid as asset_id,
      $3::text as transaction_id,
      $4::text as grant_type,
      $5::timestamptz as granted_at
  `,
  upsertSubscriptionGrantSkeleton: `
    -- phase 4 actual subscription reflection logic binds here
    select
      $1::uuid as user_id,
      $2::text as subscription_event_type,
      $3::timestamptz as effective_at
  `,
} as const;
