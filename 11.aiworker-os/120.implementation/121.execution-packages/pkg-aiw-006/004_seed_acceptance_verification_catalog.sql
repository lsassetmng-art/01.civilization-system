begin;

insert into aiworker.acceptance_verification_item (
  acceptance_verification_item_code,
  bucket_code,
  acceptance_test_case_code,
  title,
  critical_flag,
  expected_result_code,
  active_flag,
  created_at
)
values
  ('VERIFY-BOUNDARY-001', 'BOUNDARY', 'ATC-BOUNDARY-001', 'Verify BusinessOS does not own worker mutable truth',                     true,  'PASS', true, now()),
  ('VERIFY-BOUNDARY-002', 'BOUNDARY', 'ATC-BOUNDARY-002', 'Verify AI worker runtime has no raw-table read path',                    true,  'PASS', true, now()),
  ('VERIFY-CF-001',       'CONTROLLED','ATC-CF-001',      'Verify official intake is required before canonical mutation',           true,  'PASS', true, now()),
  ('VERIFY-CF-002',       'CONTROLLED','ATC-CF-002',      'Verify illegal transition fails closed',                                 true,  'PASS', true, now()),
  ('VERIFY-PAYLOAD-001',  'PAYLOAD',  'ATC-PAYLOAD-001',  'Verify invalid official intake payload is rejected',                     true,  'PASS', true, now()),
  ('VERIFY-PAYLOAD-002',  'PAYLOAD',  'ATC-PAYLOAD-002',  'Verify result payload excludes raw payload_ref',                         true,  'PASS', true, now()),
  ('VERIFY-REPLAY-001',   'REPLAY',   'ATC-REPLAY-001',   'Verify duplicate identical request is NOOP or REDELIVER_ONLY',         true,  'PASS', true, now()),
  ('VERIFY-REPLAY-002',   'REPLAY',   'ATC-REPLAY-002',   'Verify replay mismatch fails closed',                                    true,  'PASS', true, now()),
  ('VERIFY-GRANT-001',    'GRANT',    'ATC-GRANT-001',    'Verify AI worker runtime raw-table grants are absent',                  true,  'PASS', true, now()),
  ('VERIFY-GRANT-002',    'GRANT',    'ATC-GRANT-002',    'Verify restricted and privileged reviewer separation holds',            true,  'PASS', true, now()),
  ('VERIFY-RECOVERY-001', 'RECOVERY', 'ATC-RECOVERY-001', 'Verify recovery dry-run is incident-linked',                             false, 'PASS', true, now()),
  ('VERIFY-RECOVERY-002', 'RECOVERY', 'ATC-RECOVERY-002', 'Verify event redelivery does not remutate canonical truth',            true,  'PASS', true, now()),
  ('VERIFY-EVENT-001',    'EVENT',    'ATC-EVENT-001',    'Verify required outbox rows are written',                               true,  'PASS', true, now()),
  ('VERIFY-EVENT-002',    'EVENT',    'ATC-EVENT-002',    'Verify delivery metadata updates remain narrow',                        true,  'PASS', true, now())
on conflict (acceptance_verification_item_code) do update
  set bucket_code = excluded.bucket_code,
      acceptance_test_case_code = excluded.acceptance_test_case_code,
      title = excluded.title,
      critical_flag = excluded.critical_flag,
      expected_result_code = excluded.expected_result_code,
      active_flag = excluded.active_flag;

commit;
