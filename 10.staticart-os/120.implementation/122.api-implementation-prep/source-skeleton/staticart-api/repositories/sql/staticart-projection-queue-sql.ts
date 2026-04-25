export const STATICART_PROJECTION_QUEUE_SQL = {
  enqueueProjectionRefreshSkeleton: `
    select
      $1::uuid as asset_id,
      $2::text[] as targets,
      now() as enqueued_at
  `,
  enqueueCx22073jwPublishSkeleton: `
    select
      $1::uuid as asset_id,
      $2::text as publish_scope,
      now() as enqueued_at
  `,
} as const;
