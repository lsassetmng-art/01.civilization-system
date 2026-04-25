export type WatchSuccessEnvelope<T> = {
  ok: true;
  data: T;
  meta: { request_id: string };
};

export type WatchFailureEnvelope = {
  ok: false;
  error: { code: string; message: string; details?: Record<string, unknown> };
  meta: { request_id: string };
};

export type WatchApiEnvelope<T> = WatchSuccessEnvelope<T> | WatchFailureEnvelope;

export type ProfileSelectRequest = {
  actor_civilization_id: string;
  viewer_profile_id: string;
  device_mode?: string;
};

export type HomeFeedReadRequest = {
  actor_civilization_id: string;
  viewer_profile_id: string;
  feed_scope: string;
  limit: number;
  offset: number;
  device_mode: string;
};

export type ProgressUpsertRequest = {
  actor_civilization_id: string;
  viewer_profile_id: string;
  target_type: string;
  target_id: string;
  position_seconds: number;
  duration_seconds: number;
  completion_ratio: number;
  device_mode?: string;
  route_context?: Record<string, unknown>;
};

export type EntitlementReadRequest = {
  actor_civilization_id: string;
  viewer_profile_id: string;
  target_type: string;
  target_id: string;
};

export type MembershipJoinExecuteRequest = {
  actor_civilization_id: string;
  viewer_profile_id: string;
  target_type: string;
  target_id: string;
  membership_plan_id: string;
};

export type StreamWatchRouteCatalogEntry = {
  name: string;
  method: string;
  path: string;
  phase: "phase1" | "deferred_stub";
};

export const STREAMWATCH_PHASE1_ROUTE_CATALOG: StreamWatchRouteCatalogEntry[] = [
  { name: "profile_list", method: "GET", path: "/streamwatch/profile/list", phase: "phase1" },
  { name: "profile_select", method: "POST", path: "/streamwatch/profile/select", phase: "phase1" },
  { name: "home_feed_read", method: "POST", path: "/streamwatch/home-feed/read", phase: "phase1" },
  { name: "category_tree_read", method: "POST", path: "/streamwatch/category-tree/read", phase: "phase1" },
  { name: "search", method: "POST", path: "/streamwatch/search", phase: "phase1" },
  { name: "series_detail_read", method: "POST", path: "/streamwatch/series/detail/read", phase: "phase1" },
  { name: "library_read", method: "POST", path: "/streamwatch/library/read", phase: "phase1" },
  { name: "follow_upsert", method: "POST", path: "/streamwatch/follow/upsert", phase: "phase1" },
  { name: "saved_list_mutate", method: "POST", path: "/streamwatch/saved-list/mutate", phase: "phase1" },
  { name: "watch_queue_mutate", method: "POST", path: "/streamwatch/watch-queue/mutate", phase: "phase1" },
  { name: "progress_upsert", method: "POST", path: "/streamwatch/progress/upsert", phase: "phase1" },
  { name: "comment_submit", method: "POST", path: "/streamwatch/comment/submit", phase: "deferred_stub" },
  { name: "report_submit", method: "POST", path: "/streamwatch/report/submit", phase: "deferred_stub" },
  { name: "tv_handoff_start", method: "POST", path: "/streamwatch/tv-handoff/start", phase: "phase1" },
  { name: "tv_handoff_claim", method: "POST", path: "/streamwatch/tv-handoff/claim", phase: "phase1" },
  { name: "notifications_read", method: "POST", path: "/streamwatch/notifications/read", phase: "phase1" },
  { name: "entitlement_read", method: "POST", path: "/streamwatch/entitlement/read", phase: "phase1" },
  { name: "purchase_quote", method: "POST", path: "/streamwatch/purchase/quote", phase: "phase1" },
  { name: "purchase_execute", method: "POST", path: "/streamwatch/purchase/execute", phase: "phase1" },
  { name: "rental_execute", method: "POST", path: "/streamwatch/rental/execute", phase: "phase1" },
  { name: "membership_join_execute", method: "POST", path: "/streamwatch/membership/join/execute", phase: "phase1" },
];

