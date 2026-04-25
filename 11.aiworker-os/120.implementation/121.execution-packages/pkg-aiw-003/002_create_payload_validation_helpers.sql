begin;

create or replace function aiworker.fn_payload_raise_invalid(
  p_note text default 'ERR_PAYLOAD_INVALID'
)
returns void
language plpgsql
as $$
begin
  raise exception '%', coalesce(p_note, 'ERR_PAYLOAD_INVALID');
end;
$$;

create or replace function aiworker.fn_payload_require_object(
  p_payload jsonb
)
returns void
language plpgsql
as $$
begin
  if p_payload is null or jsonb_typeof(p_payload) <> 'object' then
    perform aiworker.fn_payload_raise_invalid('ERR_PAYLOAD_INVALID');
  end if;
end;
$$;

create or replace function aiworker.fn_payload_require_keys(
  p_payload jsonb,
  p_keys text[]
)
returns void
language plpgsql
as $$
declare
  v_key text;
begin
  perform aiworker.fn_payload_require_object(p_payload);

  foreach v_key in array p_keys loop
    if not (p_payload ? v_key) then
      perform aiworker.fn_payload_raise_invalid('ERR_PAYLOAD_INVALID');
    end if;
  end loop;
end;
$$;

create or replace function aiworker.fn_payload_require_nested_object_key(
  p_payload jsonb,
  p_parent_key text,
  p_child_key text
)
returns void
language plpgsql
as $$
begin
  perform aiworker.fn_payload_require_object(p_payload);

  if not (p_payload ? p_parent_key) then
    perform aiworker.fn_payload_raise_invalid('ERR_PAYLOAD_INVALID');
  end if;

  if jsonb_typeof(p_payload -> p_parent_key) <> 'object' then
    perform aiworker.fn_payload_raise_invalid('ERR_PAYLOAD_INVALID');
  end if;

  if not ((p_payload -> p_parent_key) ? p_child_key) then
    perform aiworker.fn_payload_raise_invalid('ERR_PAYLOAD_INVALID');
  end if;
end;
$$;

create or replace function aiworker.fn_payload_require_string_value(
  p_payload jsonb,
  p_key text,
  p_expected_value text
)
returns void
language plpgsql
as $$
begin
  perform aiworker.fn_payload_require_object(p_payload);

  if not (p_payload ? p_key) then
    perform aiworker.fn_payload_raise_invalid('ERR_PAYLOAD_INVALID');
  end if;

  if coalesce(p_payload ->> p_key, '') <> p_expected_value then
    perform aiworker.fn_payload_raise_invalid('ERR_PAYLOAD_INVALID');
  end if;
end;
$$;

create or replace function aiworker.fn_payload_schema_is_active(
  p_payload_schema_name text
)
returns boolean
language sql
stable
as $$
  select exists (
    select 1
      from aiworker.payload_schema_catalog psc
     where psc.payload_schema_name = p_payload_schema_name
       and psc.active_flag = true
  )
$$;

create or replace function aiworker.fn_payload_validation_log_write(
  p_payload_ref text,
  p_payload_schema_name text,
  p_validation_result_code text,
  p_validation_note text
)
returns void
language plpgsql
as $$
begin
  insert into aiworker.payload_validation_log (
    payload_ref,
    payload_schema_name,
    validation_result_code,
    validation_note,
    validated_at
  )
  values (
    p_payload_ref,
    p_payload_schema_name,
    p_validation_result_code,
    p_validation_note,
    now()
  );
end;
$$;

commit;
