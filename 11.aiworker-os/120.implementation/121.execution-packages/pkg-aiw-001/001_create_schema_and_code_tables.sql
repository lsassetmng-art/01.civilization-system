begin;

create schema if not exists aiworker;

create table if not exists aiworker.code_family (
  family_code text primary key,
  family_label text not null,
  active_flag boolean not null default true,
  created_at timestamptz not null default now()
);

create table if not exists aiworker.code_value (
  family_code text not null references aiworker.code_family(family_code),
  value_code text not null,
  display_label text not null,
  sort_order integer not null default 0,
  active_flag boolean not null default true,
  created_at timestamptz not null default now(),
  primary key (family_code, value_code)
);

insert into aiworker.code_family (family_code, family_label)
values
  ('company_style_profile_code', 'Company style profile'),
  ('lane_code', 'Runtime lane'),
  ('assignment_state_code', 'Assignment state'),
  ('availability_state_code', 'Availability state'),
  ('reservation_state_code', 'Reservation state'),
  ('gate_code', 'Gate family'),
  ('command_status', 'Command row status'),
  ('draft_status', 'Draft row status'),
  ('staging_status', 'Staging row status'),
  ('intake_status', 'Official intake status')
on conflict (family_code) do nothing;

insert into aiworker.code_value (family_code, value_code, display_label, sort_order)
values
  ('company_style_profile_code', 'AGGRESSIVE',   'Aggressive',   10),
  ('company_style_profile_code', 'BALANCED',     'Balanced',     20),
  ('company_style_profile_code', 'CONSERVATIVE', 'Conservative', 30),

  ('lane_code', 'OBSERVE',          'Observe',          10),
  ('lane_code', 'ADVISE',           'Advise',           20),
  ('lane_code', 'DRAFT',            'Draft',            30),
  ('lane_code', 'STAGING',          'Staging',          40),
  ('lane_code', 'OFFICIAL_REQUEST', 'Official request', 50),
  ('lane_code', 'OFFICIAL_APPLY',   'Official apply',   60),
  ('lane_code', 'AUDIT_ONLY',       'Audit only',       70),
  ('lane_code', 'REPAIR',           'Repair',           80),
  ('lane_code', 'REBUILD',          'Rebuild',          90),

  ('assignment_state_code', 'UNASSIGNED',  'Unassigned',  10),
  ('assignment_state_code', 'RESERVED',    'Reserved',    20),
  ('assignment_state_code', 'ASSIGNED',    'Assigned',    30),
  ('assignment_state_code', 'ACTIVE',      'Active',      40),
  ('assignment_state_code', 'PAUSED',      'Paused',      50),
  ('assignment_state_code', 'COOLDOWN',    'Cooldown',    60),
  ('assignment_state_code', 'MAINTENANCE', 'Maintenance', 70),
  ('assignment_state_code', 'REPAIR',      'Repair',      80),
  ('assignment_state_code', 'REBUILD',     'Rebuild',     90),
  ('assignment_state_code', 'RETIRED',     'Retired',    100),

  ('availability_state_code', 'AVAILABLE',   'Available',   10),
  ('availability_state_code', 'BUSY',        'Busy',        20),
  ('availability_state_code', 'RESERVED',    'Reserved',    30),
  ('availability_state_code', 'UNAVAILABLE', 'Unavailable', 40),
  ('availability_state_code', 'MAINTENANCE', 'Maintenance', 50),
  ('availability_state_code', 'REPAIR',      'Repair',      60),
  ('availability_state_code', 'REBUILD',     'Rebuild',     70),
  ('availability_state_code', 'SUSPENDED',   'Suspended',   80),

  ('reservation_state_code', 'RESERVED',  'Reserved', 10),
  ('reservation_state_code', 'ACTIVE',    'Active',   20),
  ('reservation_state_code', 'CANCELLED', 'Cancelled',30),
  ('reservation_state_code', 'EXPIRED',   'Expired',  40),

  ('gate_code', 'GATE_STANDARD',          'Standard gate',          10),
  ('gate_code', 'GATE_RESTRICTED',        'Restricted gate',        20),
  ('gate_code', 'GATE_PRIVILEGED',        'Privileged gate',        30),
  ('gate_code', 'GATE_APPROVAL_REQUIRED', 'Approval required',      40),
  ('gate_code', 'GATE_AUDIT_REQUIRED',    'Audit required',         50),
  ('gate_code', 'GATE_REPAIR',            'Repair gate',            60),
  ('gate_code', 'GATE_REBUILD',           'Rebuild gate',           70),

  ('command_status', 'RECEIVED',   'Received',   10),
  ('command_status', 'NORMALIZED', 'Normalized', 20),
  ('command_status', 'REJECTED',   'Rejected',   30),

  ('draft_status', 'OPEN',      'Open',      10),
  ('draft_status', 'REVIEWED',  'Reviewed',  20),
  ('draft_status', 'DISCARDED', 'Discarded', 30),

  ('staging_status', 'READY',      'Ready',      10),
  ('staging_status', 'VALIDATED',  'Validated',  20),
  ('staging_status', 'REJECTED',   'Rejected',   30),

  ('intake_status', 'RECEIVED',         'Received',         10),
  ('intake_status', 'VALIDATING',       'Validating',       20),
  ('intake_status', 'GATE_DENIED',      'Gate denied',      30),
  ('intake_status', 'APPROVAL_PENDING', 'Approval pending', 40),
  ('intake_status', 'AUDIT_PENDING',    'Audit pending',    50),
  ('intake_status', 'READY_TO_APPLY',   'Ready to apply',   60),
  ('intake_status', 'APPLYING',         'Applying',         70),
  ('intake_status', 'APPLIED',          'Applied',          80),
  ('intake_status', 'REJECTED',         'Rejected',         90),
  ('intake_status', 'FAILED',           'Failed',          100)
on conflict (family_code, value_code) do nothing;

commit;
