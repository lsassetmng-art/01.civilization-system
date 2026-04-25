export const STATICART_ASSET_SQL = {
  insertAssetMaster: `
    insert into staticart.asset_master (
      asset_id,
      asset_code,
      asset_type,
      creator_id,
      publisher_id,
      current_version_no,
      lifecycle_state,
      is_current_version_visible
    ) values ($1, $2, $3, $4, $5, 1, 'draft', false)
    returning
      asset_id,
      asset_code,
      asset_type,
      creator_id,
      publisher_id,
      current_version_no,
      lifecycle_state,
      created_at
  `,
  insertAssetVersion: `
    insert into staticart.asset_version (
      asset_id,
      version_no,
      version_label,
      is_visible,
      is_replace_target,
      created_by
    ) values ($1, 1, $2, false, false, $3)
  `,
  selectAssetDetail: `
    select
      am.asset_id,
      am.asset_code,
      am.asset_type,
      am.creator_id,
      am.publisher_id,
      am.current_version_no,
      am.lifecycle_state,
      am.is_current_version_visible,
      am.created_at,
      am.updated_at
    from staticart.asset_master am
    where am.asset_id = $1
  `,
  upsertLocalization: `
    insert into staticart.asset_localization (
      asset_id,
      version_no,
      language_code,
      title,
      subtitle,
      short_description,
      long_description
    ) values ($1, $2, $3, $4, $5, $6, $7)
    on conflict (asset_id, version_no, language_code)
    do update set
      title = excluded.title,
      subtitle = excluded.subtitle,
      short_description = excluded.short_description,
      long_description = excluded.long_description,
      updated_at = now()
    returning
      asset_id,
      version_no,
      language_code,
      title,
      subtitle,
      short_description,
      long_description,
      updated_at
  `,
  upsertRightsPolicy: `
    insert into staticart.asset_rights_policy (
      asset_id,
      version_no,
      exhibition_allowed,
      commercial_use_allowed,
      derivative_allowed,
      additional_license_required,
      age_rating,
      region_mode,
      region_codes,
      rights_summary,
      rights_state,
      effective_from,
      updated_at
    ) values (
      $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, 'active', now(), now()
    )
    on conflict (asset_id)
    do update set
      version_no = excluded.version_no,
      exhibition_allowed = excluded.exhibition_allowed,
      commercial_use_allowed = excluded.commercial_use_allowed,
      derivative_allowed = excluded.derivative_allowed,
      additional_license_required = excluded.additional_license_required,
      age_rating = excluded.age_rating,
      region_mode = excluded.region_mode,
      region_codes = excluded.region_codes,
      rights_summary = excluded.rights_summary,
      updated_at = now()
    returning *
  `,
  upsertSalesOffer: `
    insert into staticart.asset_sales_offer (
      asset_id,
      sale_type,
      sales_state,
      base_currency,
      base_price,
      price_label_override,
      sale_start_at,
      sale_end_at,
      limited_sale_flag,
      inventory_cap,
      updated_at
    ) values ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,now())
    on conflict (asset_id)
    do update set
      sale_type = excluded.sale_type,
      sales_state = excluded.sales_state,
      base_currency = excluded.base_currency,
      base_price = excluded.base_price,
      price_label_override = excluded.price_label_override,
      sale_start_at = excluded.sale_start_at,
      sale_end_at = excluded.sale_end_at,
      limited_sale_flag = excluded.limited_sale_flag,
      inventory_cap = excluded.inventory_cap,
      updated_at = now()
    returning *
  `,
  upsertSubscriptionRule: `
    insert into staticart.asset_subscription_rule (
      asset_id,
      subscription_state,
      subscription_eligible,
      creator_opt_in,
      settlement_group_code,
      subscription_start_at,
      subscription_end_at,
      updated_at
    ) values ($1,$2,$3,$4,$5,$6,$7,now())
    on conflict (asset_id)
    do update set
      subscription_state = excluded.subscription_state,
      subscription_eligible = excluded.subscription_eligible,
      creator_opt_in = excluded.creator_opt_in,
      settlement_group_code = excluded.settlement_group_code,
      subscription_start_at = excluded.subscription_start_at,
      subscription_end_at = excluded.subscription_end_at,
      updated_at = now()
    returning *
  `,
} as const;
