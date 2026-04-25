export const STATICART_AUDIT_SQL = {
  insertAuditEvent: `
    insert into staticart.asset_audit_event (
      audit_event_id,
      asset_id,
      user_id,
      event_type,
      from_state,
      to_state,
      reason_code,
      external_ref,
      detail_json,
      created_at
    ) values (
      $1, $2, $3, $4, $5, $6, $7, $8, $9::jsonb, now()
    )
    returning *
  `,
} as const;
