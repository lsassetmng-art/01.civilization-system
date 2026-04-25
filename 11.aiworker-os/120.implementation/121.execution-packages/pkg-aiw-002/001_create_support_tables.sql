begin;

create table if not exists aiworker.state_transition_rule (
  state_transition_rule_id bigint generated always as identity primary key,
  state_family_code text not null,
  old_state_code text,
  new_state_code text not null,
  active_flag boolean not null default true,
  created_at timestamptz not null default now(),
  unique (state_family_code, old_state_code, new_state_code)
);

create table if not exists aiworker.result_correlation (
  result_correlation_id bigint generated always as identity primary key,
  intake_id uuid not null unique references aiworker.official_intake_request(intake_id),
  business_request_id uuid,
  worker_id uuid,
  related_entity_id uuid,
  event_id uuid,
  controlled_function_code text not null,
  result_code text not null,
  summary_code text not null,
  created_at timestamptz not null default now()
);

with assignment_states as (
  select state_code
  from (
    values
      (null::text),
      ('UNASSIGNED'),
      ('RESERVED'),
      ('ASSIGNED'),
      ('ACTIVE'),
      ('PAUSED'),
      ('COOLDOWN'),
      ('MAINTENANCE'),
      ('REPAIR'),
      ('REBUILD'),
      ('RETIRED')
  ) v(state_code)
),
assignment_news as (
  select state_code
  from (
    values
      ('UNASSIGNED'),
      ('RESERVED'),
      ('ASSIGNED'),
      ('ACTIVE'),
      ('PAUSED'),
      ('COOLDOWN'),
      ('MAINTENANCE'),
      ('REPAIR'),
      ('REBUILD'),
      ('RETIRED')
  ) v(state_code)
)
insert into aiworker.state_transition_rule (
  state_family_code,
  old_state_code,
  new_state_code
)
select
  'ASSIGNMENT',
  a.state_code,
  b.state_code
from assignment_states a
cross join assignment_news b
where coalesce(a.state_code, '') is distinct from b.state_code
on conflict (state_family_code, old_state_code, new_state_code) do nothing;

with availability_states as (
  select state_code
  from (
    values
      (null::text),
      ('AVAILABLE'),
      ('BUSY'),
      ('RESERVED'),
      ('UNAVAILABLE'),
      ('MAINTENANCE'),
      ('REPAIR'),
      ('REBUILD'),
      ('SUSPENDED')
  ) v(state_code)
),
availability_news as (
  select state_code
  from (
    values
      ('AVAILABLE'),
      ('BUSY'),
      ('RESERVED'),
      ('UNAVAILABLE'),
      ('MAINTENANCE'),
      ('REPAIR'),
      ('REBUILD'),
      ('SUSPENDED')
  ) v(state_code)
)
insert into aiworker.state_transition_rule (
  state_family_code,
  old_state_code,
  new_state_code
)
select
  'AVAILABILITY',
  a.state_code,
  b.state_code
from availability_states a
cross join availability_news b
where coalesce(a.state_code, '') is distinct from b.state_code
on conflict (state_family_code, old_state_code, new_state_code) do nothing;

insert into aiworker.state_transition_rule (
  state_family_code,
  old_state_code,
  new_state_code
)
values
  ('REPAIR', null,         'OPENED'),
  ('REPAIR', 'OPENED',     'IN_PROGRESS'),
  ('REPAIR', 'OPENED',     'CANCELLED'),
  ('REPAIR', 'IN_PROGRESS','COMPLETED'),
  ('REPAIR', 'IN_PROGRESS','CANCELLED'),

  ('REBUILD', null,         'OPENED'),
  ('REBUILD', 'OPENED',     'IN_PROGRESS'),
  ('REBUILD', 'OPENED',     'CANCELLED'),
  ('REBUILD', 'IN_PROGRESS','COMPLETED'),
  ('REBUILD', 'IN_PROGRESS','CANCELLED'),

  ('PRIVILEGED_CONTEXT', null,       'ACTIVE'),
  ('PRIVILEGED_CONTEXT', null,       'INACTIVE'),
  ('PRIVILEGED_CONTEXT', 'ACTIVE',   'INACTIVE'),
  ('PRIVILEGED_CONTEXT', 'INACTIVE', 'ACTIVE')
on conflict (state_family_code, old_state_code, new_state_code) do nothing;

commit;
