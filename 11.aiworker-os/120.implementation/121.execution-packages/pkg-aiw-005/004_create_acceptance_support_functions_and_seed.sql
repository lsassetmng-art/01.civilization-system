begin;

create or replace function aiworker.fn_record_acceptance_test_execution(
  p_acceptance_test_case_code text,
  p_execution_result_code text,
  p_note_text text,
  p_executed_by text
)
returns bigint
language plpgsql
as $$
declare
  v_execution_id bigint;
begin
  insert into aiworker.acceptance_test_execution (
    acceptance_test_case_code,
    execution_result_code,
    note_text,
    executed_at,
    executed_by
  )
  values (
    p_acceptance_test_case_code,
    p_execution_result_code,
    p_note_text,
    now(),
    coalesce(p_executed_by, 'SYSTEM')
  )
  returning acceptance_test_execution_id into v_execution_id;

  return v_execution_id;
end;
$$;

insert into aiworker.acceptance_test_case (
  acceptance_test_case_code,
  bucket_code,
  title,
  critical_flag,
  expected_result_code,
  active_flag,
  created_at
)
values
  ('ATC-BOUNDARY-001',   'BOUNDARY',    'BusinessOS must not own worker mutable truth',                     true,  'PASS', true, now()),
  ('ATC-BOUNDARY-002',   'BOUNDARY',    'AI worker runtime must not read raw aiworker tables',              true,  'PASS', true, now()),
  ('ATC-CF-001',         'CONTROLLED',  'Official intake required before canonical mutation',               true,  'PASS', true, now()),
  ('ATC-CF-002',         'CONTROLLED',  'Illegal transition must fail closed',                              true,  'PASS', true, now()),
  ('ATC-PAYLOAD-001',    'PAYLOAD',     'Official intake payload invalid shape must be rejected',           true,  'PASS', true, now()),
  ('ATC-PAYLOAD-002',    'PAYLOAD',     'Result payload must not expose raw payload_ref',                   true,  'PASS', true, now()),
  ('ATC-REPLAY-001',     'REPLAY',      'Duplicate identical request must return NOOP or REDELIVER_ONLY',  true,  'PASS', true, now()),
  ('ATC-REPLAY-002',     'REPLAY',      'Replay mismatch must fail closed',                                 true,  'PASS', true, now()),
  ('ATC-GRANT-001',      'GRANT',       'AI worker runtime raw-table grants must be absent',               true,  'PASS', true, now()),
  ('ATC-GRANT-002',      'GRANT',       'Restricted reviewer and privileged reviewer must remain separate', true,  'PASS', true, now()),
  ('ATC-RECOVERY-001',   'RECOVERY',    'Recovery dry-run must be incident-linked',                         false, 'PASS', true, now()),
  ('ATC-RECOVERY-002',   'RECOVERY',    'Event redelivery must not remutate canonical truth',              true,  'PASS', true, now()),
  ('ATC-EVENT-001',      'EVENT',       'Required outbox rows must be written',                             true,  'PASS', true, now()),
  ('ATC-EVENT-002',      'EVENT',       'Delivery metadata update must remain narrow',                      true,  'PASS', true, now())
on conflict (acceptance_test_case_code) do update
  set bucket_code = excluded.bucket_code,
      title = excluded.title,
      critical_flag = excluded.critical_flag,
      expected_result_code = excluded.expected_result_code,
      active_flag = excluded.active_flag;

commit;
