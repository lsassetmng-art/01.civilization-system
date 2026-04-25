export const STATICART_GOVERNANCE_SQL = {
  selectLifecycleAndVersion: `
    select
      am.asset_id,
      am.current_version_no,
      am.lifecycle_state,
      am.is_current_version_visible,
      am.creator_id,
      am.publisher_id
    from staticart.asset_master am
    where am.asset_id = $1
  `,

  selectGovernedCompleteness: `
    select
      am.asset_id,
      am.current_version_no,
      exists (
        select 1
        from staticart.asset_localization al
        where al.asset_id = am.asset_id
          and al.version_no = am.current_version_no
      ) as has_localization,
      exists (
        select 1
        from staticart.asset_rights_policy arp
        where arp.asset_id = am.asset_id
          and arp.version_no = am.current_version_no
      ) as has_rights,
      exists (
        select 1
        from staticart.asset_sales_offer aso
        where aso.asset_id = am.asset_id
      ) as has_sales,
      exists (
        select 1
        from staticart.asset_subscription_rule asr
        where asr.asset_id = am.asset_id
      ) as has_subscription,
      exists (
        select 1
        from staticart.asset_file af
        where af.asset_id = am.asset_id
          and af.version_no = am.current_version_no
          and af.file_role = 'thumbnail'
      ) as has_thumbnail,
      exists (
        select 1
        from staticart.asset_file af
        where af.asset_id = am.asset_id
          and af.version_no = am.current_version_no
          and af.file_role = 'sample_file'
      ) as has_sample_file
    from staticart.asset_master am
    where am.asset_id = $1
  `,

  selectActivePendingReview: `
    select
      arr.review_request_id,
      arr.review_round_no,
      arr.review_status
    from staticart.asset_review_request arr
    where arr.asset_id = $1
      and arr.review_status = 'pending'
    order by arr.submitted_at desc
    limit 1
  `,

  insertReviewRequest: `
    insert into staticart.asset_review_request (
      review_request_id,
      asset_id,
      review_round_no,
      submitted_by,
      submitted_at,
      review_status,
      requested_review_types,
      self_check_passed
    ) values (
      $1, $2, $3, $4, now(), 'pending', $5, $6
    )
    returning *
  `,

  insertReviewDecision: `
    insert into staticart.asset_review_decision (
      review_decision_id,
      review_request_id,
      decision_by,
      decision_status,
      decision_reason_code,
      decision_comment,
      decided_at
    ) values (
      $1, $2, $3, $4, $5, $6, now()
    )
    returning *
  `,

  updateAssetLifecycleState: `
    update staticart.asset_master
    set
      lifecycle_state = $2,
      updated_at = now()
    where asset_id = $1
    returning
      asset_id,
      lifecycle_state,
      updated_at,
      current_version_no,
      is_current_version_visible
  `,

  updateAssetVisibility: `
    update staticart.asset_master
    set
      lifecycle_state = $2,
      is_current_version_visible = $3,
      updated_at = now()
    where asset_id = $1
    returning
      asset_id,
      lifecycle_state,
      is_current_version_visible,
      updated_at,
      current_version_no
  `,

  closeReviewRequest: `
    update staticart.asset_review_request
    set
      review_status = $2,
      closed_at = now()
    where review_request_id = $1
    returning *
  `,

  selectNextReviewRound: `
    select coalesce(max(review_round_no), 0) + 1 as next_round_no
    from staticart.asset_review_request
    where asset_id = $1
  `,
} as const;
