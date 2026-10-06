# StaticArtOS asset.create SQL technical review

status: static-review-pass / runtime-not-verified
review_date: 2026-10-06
reviewer: Codex, delegated by Boss in place of Sato for this addition
scope: 122400 contract and sql/080_staticart_asset_create_idempotency.sql

## Evidence checked

- Current main at the start of review: `e35309d47231ddd29e779c1e7245664a5639c574`.
- Phase 1 `010_staticart_asset_master.sql` defines the referenced UUID primary key.
- Phase 1 `020_staticart_asset_version.sql` defines `(asset_id, version_no)` with the master foreign key.
- `120110_STATIC_ART_OS_DB_SCHEMA_EXACTNESS.md` keeps asset identity in `asset_master`; this table stores only a write response and its replay identity.
- `120120_STATIC_ART_OS_API_EXACTNESS.md`, `122140_STATIC_ART_OS_IDEMPOTENCY_AND_CONCURRENCY_SKELETON.md`, and `122390_STATIC_ART_OS_CREATOR_ASSET_LIST_AND_CREATE_CONTRACT.md` require same-key replay, 409 for changed request, and atomic initial draft/version.

## Review decisions

1. The table is a subsequent migration. It must never be added to the Phase 1 runner, which may have already run elsewhere. Plain `CREATE TABLE` fails if an unexpected table already exists; it does not silently accept an incompatible schema.
2. The primary key scopes a key by verified actor and operation. The API uses the same transaction for asset master, initial version, and completed replay result. Transaction-scoped advisory locking is required before reading the result, and the primary key remains the final uniqueness guard.
3. The 64-character lowercase hash and 255-byte key checks constrain the stored identity. The response must be a successful object whose `data.asset_id` matches the foreign key. The response including the first `meta.request_id` is replayed exactly.
4. The foreign key prevents deletion of an asset with a replay result; the trigger prevents updates/deletes to the result itself. No retention or cleanup job is authorized by this design.
5. The old `findByKey`/`save` skeleton is insufficient under concurrency. It cannot be promoted to runtime code without an atomic repository method and verified CivilizationOS actor integration.

## Review limit and apply gate

This is a source-level SQL and contract review. PostgreSQL execution, existing DB schema inspection, lock contention, and UI/API behavior were not tested here. This record does not claim that Phase 1 was reviewed, applied, or verified. It also does not impersonate a review by Sato.

Before DB apply: verify the Phase 1 operation manual's review gate separately, run its full verification successfully against `PERSONA_DATABASE_URL`, check that `staticart.api_idempotency_result` is absent, then apply this migration atomically with `psql -X -1 -v ON_ERROR_STOP=1`. Verify the resulting columns, key, foreign key, and trigger before enabling POST. Never use `DATABASE_URL` for this migration.
