export type RequestMeta = {
  requestId?: string;
  idempotencyKey?: string;
};

export type SuccessEnvelope<T> = {
  ok: true;
  data: T;
  meta: { request_id: string };
};

export type FailureEnvelope = {
  ok: false;
  error: { code: string; message: string; details?: Record<string, unknown> };
  meta: { request_id: string };
};

export type ApiEnvelope<T> = SuccessEnvelope<T> | FailureEnvelope;

export type CreateProjectRequest = {
  workspace_id: string;
  project_title: string;
  project_summary?: string;
  owner_creator_ref: string;
  default_language: string;
  initial_visibility_hint?: string;
};

export type CreateProjectResponse = ApiEnvelope<{
  project: {
    creator_project_id: string;
    project_code: string;
    project_title: string;
    project_status: string;
    owner_creator_ref: string;
    default_language: string;
    created_at: string;
    updated_at: string;
  };
}>;

export type CreateUploadSessionRequest = {
  creator_project_id: string;
  source_file_name: string;
  file_size_bytes: number;
  mime_type: string;
  target_asset_type: string;
  checksum_sha256?: string;
};

export type CreateVideoDraftRequest = {
  creator_project_id: string;
  asset_ref: string;
  title?: string;
  description?: string;
  default_language: string;
  tag_summary_json?: Record<string, unknown>;
};

export type UpsertPublishSettingRequest = {
  release_type: string;
  visibility_scope: string;
  scheduled_publish_at?: string | null;
  age_rating_code?: string | null;
  territory_rules?: unknown[];
  membership_gate_policy?: unknown | null;
  expected_version: number;
};

export type CreatePublishRequestRequest = {
  creator_project_id: string;
  publish_ref: string;
  request_note?: string;
  requested_by: string;
};

export type StudioRouteCatalogEntry = {
  name: string;
  method: string;
  path: string;
  phase: "phase1";
};

export const STUDIO_PHASE1_ROUTE_CATALOG: StudioRouteCatalogEntry[] = [
  { name: "create_project", method: "POST", path: "/api/stream-studio/projects", phase: "phase1" },
  { name: "list_projects", method: "GET", path: "/api/stream-studio/projects", phase: "phase1" },
  { name: "get_project_detail", method: "GET", path: "/api/stream-studio/projects/{creator_project_id}", phase: "phase1" },
  { name: "update_project", method: "PATCH", path: "/api/stream-studio/projects/{creator_project_id}", phase: "phase1" },
  { name: "create_upload_session", method: "POST", path: "/api/stream-studio/uploads/sessions", phase: "phase1" },
  { name: "complete_upload", method: "POST", path: "/api/stream-studio/uploads/{creator_upload_job_id}/complete", phase: "phase1" },
  { name: "get_upload_status", method: "GET", path: "/api/stream-studio/uploads/{creator_upload_job_id}", phase: "phase1" },
  { name: "retry_upload", method: "POST", path: "/api/stream-studio/uploads/{creator_upload_job_id}/retry", phase: "phase1" },
  { name: "create_video_draft", method: "POST", path: "/api/stream-studio/video-drafts", phase: "phase1" },
  { name: "update_metadata", method: "PATCH", path: "/api/stream-studio/video-drafts/{creator_video_draft_id}/metadata", phase: "phase1" },
  { name: "upsert_publish_setting", method: "PUT", path: "/api/stream-studio/publish-settings/{publish_ref}", phase: "phase1" },
  { name: "validate_publish_readiness", method: "POST", path: "/api/stream-studio/publish-settings/{publish_ref}/validate", phase: "phase1" },
  { name: "create_publish_request", method: "POST", path: "/api/stream-studio/publish-requests", phase: "phase1" },
  { name: "schedule_publish", method: "POST", path: "/api/stream-studio/publish-requests/schedule", phase: "phase1" },
  { name: "list_publish_history", method: "GET", path: "/api/stream-studio/publish-history", phase: "phase1" },
];

