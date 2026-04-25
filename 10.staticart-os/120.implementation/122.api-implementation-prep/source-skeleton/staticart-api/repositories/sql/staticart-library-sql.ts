export const STATICART_LIBRARY_SQL = {
  selectLibrary: `
    select
      ulp.asset_id,
      ulp.visible_in_library,
      ulp.favorite_state,
      ulp.downloadable_now,
      ulp.last_opened_at,
      am.asset_type,
      am.lifecycle_state
    from staticart.user_library_projection ulp
    join staticart.asset_master am
      on am.asset_id = ulp.asset_id
    where ulp.user_id = $1
      and ulp.visible_in_library = true
    order by ulp.last_opened_at desc nulls last
    limit $2
  `,
  selectContinueReading: `
    select
      ulp.asset_id,
      urp.current_locator,
      urp.progress_percent,
      urp.last_opened_at
    from staticart.user_library_projection ulp
    join staticart.user_reader_progress urp
      on urp.user_id = ulp.user_id
     and urp.asset_id = ulp.asset_id
    where ulp.user_id = $1
      and ulp.visible_in_continue_reading = true
    order by urp.last_opened_at desc
    limit $2
  `,
  selectContinueViewing: `
    select
      ulp.asset_id,
      uvp.current_frame_ref,
      uvp.current_page_no,
      uvp.zoom_ratio,
      uvp.last_opened_at
    from staticart.user_library_projection ulp
    join staticart.user_viewer_progress uvp
      on uvp.user_id = ulp.user_id
     and uvp.asset_id = ulp.asset_id
    where ulp.user_id = $1
      and ulp.visible_in_continue_viewing = true
    order by uvp.last_opened_at desc
    limit $2
  `,
  upsertReaderProgress: `
    insert into staticart.user_reader_progress (
      user_id,
      asset_id,
      current_locator,
      progress_percent,
      sync_version,
      last_device_type,
      last_opened_at,
      updated_at
    ) values ($1,$2,$3,$4,$5,$6,now(),now())
    on conflict (user_id, asset_id)
    do update set
      current_locator = excluded.current_locator,
      progress_percent = excluded.progress_percent,
      sync_version = excluded.sync_version,
      last_device_type = excluded.last_device_type,
      last_opened_at = now(),
      updated_at = now()
    returning *
  `,
  upsertViewerProgress: `
    insert into staticart.user_viewer_progress (
      user_id,
      asset_id,
      current_frame_ref,
      current_page_no,
      zoom_ratio,
      sync_version,
      last_device_type,
      last_opened_at,
      updated_at
    ) values ($1,$2,$3,$4,$5,$6,$7,now(),now())
    on conflict (user_id, asset_id)
    do update set
      current_frame_ref = excluded.current_frame_ref,
      current_page_no = excluded.current_page_no,
      zoom_ratio = excluded.zoom_ratio,
      sync_version = excluded.sync_version,
      last_device_type = excluded.last_device_type,
      last_opened_at = now(),
      updated_at = now()
    returning *
  `,
  addFavorite: `
    insert into staticart.user_asset_favorite (
      user_id,
      asset_id,
      created_at
    ) values ($1,$2,now())
    on conflict (user_id, asset_id)
    do nothing
  `,
  deleteFavorite: `
    delete from staticart.user_asset_favorite
    where user_id = $1
      and asset_id = $2
  `,
  insertAnnotation: `
    insert into staticart.user_asset_annotation (
      annotation_id,
      user_id,
      asset_id,
      annotation_type,
      locator,
      payload_json,
      created_at,
      updated_at
    ) values ($1,$2,$3,$4,$5,$6::jsonb,now(),now())
    returning *
  `,
} as const;
