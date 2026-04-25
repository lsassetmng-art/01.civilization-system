# ============================================================
# AIWORKER SQL DDL CODE TABLES AND SEEDS EXACT
# ============================================================

status: exact-sql-ddl
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact additive code-table strategy for AiworkerOS.

design_decisions:
- use table-driven codes, not PostgreSQL enum types
- all code families are additive
- seed rows provide the initial authoritative code set
- operational tables store code values as text
- controlled functions validate allowed values against seed tables

sql_code_tables:
```sql
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
```

minimum_seed_families:
- rank_code
- domain_code
- role_code
- lifecycle_status
- company_style_profile_code
- assignment_state_code
- availability_state_code
- reservation_state_code
- queue_family_code
- queue_priority_band_code
- capability_band_code
- score_band_code
- privileged_context_code
- gate_code
- lane_code
- output_policy_code
- summary_code
- change_reason_code
- exception_state_code
- handling_policy_code
- command_status
- draft_status
- staging_status
- intake_status

sql_seed_examples:
```sql
insert into aiworker.code_family (family_code, family_label)
values
  ('company_style_profile_code', 'Company style profile'),
  ('lane_code', 'Runtime lane'),
  ('assignment_state_code', 'Assignment state'),
  ('availability_state_code', 'Availability state'),
  ('gate_code', 'Gate family')
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

  ('gate_code', 'GATE_STANDARD',          'Standard gate',          10),
  ('gate_code', 'GATE_RESTRICTED',        'Restricted gate',        20),
  ('gate_code', 'GATE_PRIVILEGED',        'Privileged gate',        30),
  ('gate_code', 'GATE_APPROVAL_REQUIRED', 'Approval required',      40),
  ('gate_code', 'GATE_AUDIT_REQUIRED',    'Audit required',         50),
  ('gate_code', 'GATE_REPAIR',            'Repair gate',            60),
  ('gate_code', 'GATE_REBUILD',           'Rebuild gate',           70)
on conflict (family_code, value_code) do nothing;
```

rank_policy:
- rank_code seed values must reuse the already-established official rank names
- rank list is not redefined in this WB01 document
- rank seed execution is deferred until the official rank catalog is imported as-is

hard_rule:
Style codes represent behavior tendency only.
They never represent authority, write privilege, or gate bypass.
