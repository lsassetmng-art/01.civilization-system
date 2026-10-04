# StaticArtOS creator asset registration and list contract

status: design-review-ready
system: StaticArtOS
scope: works_management
owner: Boss

## Existing canon

- `staticart.asset_master` owns asset identity, creator, current version, and lifecycle.
- `staticart.asset_version` owns version identity. `staticart.asset_file` records completed file uploads for a version; creating a draft does not create a file record.
- `POST /api/v1/staticart/assets` creates a draft and initial version in one transaction. `GET /api/v1/staticart/assets/{asset_id}` returns the authorized detail.
- Creator UI routes are `/creator/assets`, `/creator/assets/new`, and `/creator/assets/:assetId`. The main menu's `works_management` entry leads to `/creator/assets`.
- The older `/v1/staticart/assets/draft` example is not the selected exactness API. Clients must not send a creator ID as proof of ownership.

## Required API addition: GET /api/v1/staticart/assets

The caller is an authenticated `creator_owner` or an authorized `publisher_operator`. The server verifies the actor's identity and role with the CivilizationOS auth provider before querying StaticArtOS. The server resolves accessible creator IDs from verified authority; request parameters cannot broaden them. Authorization failures return 401 or 403, and no asset details are returned.

Query: `cursor` (optional opaque token), `limit` (default 30, maximum 100), `lifecycle_state` (optional exact filter), `asset_type` (optional exact filter). Offset pagination is prohibited. List ordering is `created_at DESC, asset_id DESC`; the cursor binds the verified actor, filters, and last tuple. A changed actor or filter invalidates the cursor with `STATICART_INVALID_CURSOR` (400).

Success: `{ "ok": true, "data": { "items": [...] }, "meta": { "request_id": "...", "next_cursor": null } }`. Each item contains `asset_id`, `asset_code`, `asset_type`, `creator_id`, `current_version_no`, `lifecycle_state`, `created_at`, `updated_at`, and a localized title when present. No file URL or storage key appears. If metadata has not been entered, the UI shows an explicit untitled draft label. An empty accessible set returns `items: []` and `next_cursor: null`.

The query is scoped to the verified creator ownership or separately verified publisher assignment before applying cursor, filter, and limit. The server does not infer ownership from a supplied `creator_id`. A missing `staticart` schema or unavailable auth provider fails closed with 503; it must not return an empty list or a successful write.

## Registration authority

The existing POST accepts a valid `asset_type` and `initial_language_code`. `creator_id`, if present for compatibility with the current request DTO, must match the actor's verified creator identity. `publisher_id` requires separately verified publisher authority. Both `X-Request-Id` and `Idempotency-Key` are required. Reusing the same key and body returns the original draft; the same key with a different body returns 409. The response contains the persisted `asset_id` and initial `version_no=1`. `asset_master` and `asset_version` are inserted atomically. No file or localization is represented as saved until its own write succeeds.

## UI behavior and acceptance

- The list distinguishes loading, empty, ready, forbidden, and retryable failure. It preserves the current filter on pagination and does not show another creator's work.
- The registration screen asks for type and initial language, shows field validation, prevents a duplicate request while submitting, and retains its idempotency key for retry. It does not expose editable owner identity.
- A confirmed registration navigates to the persisted asset detail. A failed request keeps entered fields and shows the returned error. Browser storage must not be treated as the asset canon.
- UI acceptance exercises registration, detail, list after reload, empty state, forbidden actor, duplicate retry, and failed DB/auth conditions. Verify the actual `staticart` rows and response envelopes; a page-only smoke test is insufficient.

## Prerequisites from the 2026-10-02 read-only audit

`PERSONA_DATABASE_URL` resolves none of `staticart.asset_master`, `asset_version`, and `asset_file`. The available Portal auth file constructs a login URL and does not validate a StaticArtOS actor. The Phase 1 operation manual requires Sato's SQL review before applying its existing SQL. Consequently the design can be adopted now; write access and a success-state UI cannot be enabled until the reviewed schema is applied and the verified actor contract is supplied.
