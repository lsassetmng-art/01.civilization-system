-- StaticArtOS asset.create replay ledger; apply only after verified Phase 1.
-- Reviewed statically by Codex under Boss delegation on 2026-10-06.
-- Run with psql -X -1 -v ON_ERROR_STOP=1 against PERSONA_DATABASE_URL.

create table staticart.api_idempotency_result (
  actor_user_id uuid not null,
  operation_code text not null,
  idempotency_key text not null,
  request_sha256 text not null
    check (request_sha256 ~ '^[0-9a-f]{64}$'),
  response_status integer not null
    check (response_status between 200 and 299),
  response_body jsonb not null
    check (jsonb_typeof(response_body) = 'object'),
  asset_id uuid not null references staticart.asset_master(asset_id),
  created_at timestamptz not null default now(),
  primary key (actor_user_id, operation_code, idempotency_key),
  constraint api_idempotency_result_key_nonempty_ck
    check (octet_length(idempotency_key) between 1 and 255),
  constraint api_idempotency_result_body_ck check (
    coalesce(response_body ->> 'ok' = 'true', false)
    and coalesce(response_body #>> '{data,asset_id}' = asset_id::text, false)
  ),
  constraint api_idempotency_result_operation_ck
    check (operation_code = 'asset.create')
);

create function staticart.reject_idempotency_result_mutation()
returns trigger
language plpgsql
as $$
begin
  raise exception 'StaticArtOS idempotency result is immutable';
end;
$$;

create trigger api_idempotency_result_immutable
before update or delete on staticart.api_idempotency_result
for each row execute function staticart.reject_idempotency_result_mutation();
