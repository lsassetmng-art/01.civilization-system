# ============================================================
# NAMECARDMANAGER DB LOGICAL AND DDL EXACT
# ============================================================

status: canonical
app: NameCardManager
category: 03.business-app
db_execution: not_applied
db_environment_when_approved: PERSONA_DATABASE_URL

review_required:
- 佐藤(DB担当): required before DDL apply
- Boss: final GO required before DDL apply

schema_policy:
- This document is design exact, not an execution pack.
- Do not apply until 佐藤(DB担当) and Boss approve.
- This chat's DB work uses PERSONA_DATABASE_URL.

logical_entities:
- name_card_intake
- name_card_contact
- name_card_company
- name_card_relationship_event
- name_card_merge_review
- name_card_attachment_ref

table_design:
name_card_company:
  primary_key: company_id uuid
  columns:
    - company_id uuid
    - company_name text not null
    - company_name_kana text nullable
    - website_url text nullable
    - address_text text nullable
    - created_at timestamptz
    - updated_at timestamptz

name_card_contact:
  primary_key: contact_id uuid
  columns:
    - contact_id uuid
    - person_name text not null
    - company_id uuid nullable
    - department_name text nullable
    - title_name text nullable
    - email text nullable
    - phone text nullable
    - address_text text nullable
    - memo text nullable
    - relationship_status text
    - created_at timestamptz
    - updated_at timestamptz

name_card_intake:
  primary_key: intake_id uuid
  columns:
    - intake_id uuid
    - source_type text
    - image_attachment_id uuid nullable
    - raw_text text nullable
    - intake_status text
    - review_required boolean
    - local_draft_id text nullable
    - offline_queue_id text nullable
    - created_at timestamptz
    - updated_at timestamptz

name_card_relationship_event:
  primary_key: event_id uuid
  columns:
    - event_id uuid
    - contact_id uuid
    - company_id uuid nullable
    - event_type text
    - event_title text
    - event_note text nullable
    - event_at timestamptz
    - source_app text nullable
    - source_ref_id text nullable
    - created_at timestamptz

name_card_merge_review:
  primary_key: merge_review_id uuid
  columns:
    - merge_review_id uuid
    - primary_contact_id uuid
    - candidate_contact_id uuid
    - decision text
    - merge_status text
    - reason text nullable
    - resulting_contact_id uuid nullable
    - created_at timestamptz
    - decided_at timestamptz nullable

name_card_attachment_ref:
  primary_key: attachment_ref_id uuid
  columns:
    - attachment_ref_id uuid
    - owner_kind text
    - owner_id uuid
    - attachment_id uuid
    - attachment_kind text
    - created_at timestamptz

ddl_draft_plain_text:
  create schema if not exists business;

  create table if not exists business.name_card_company (
    company_id uuid primary key,
    company_name text not null,
    company_name_kana text,
    website_url text,
    address_text text,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
  );

  create table if not exists business.name_card_contact (
    contact_id uuid primary key,
    person_name text not null,
    company_id uuid references business.name_card_company(company_id),
    department_name text,
    title_name text,
    email text,
    phone text,
    address_text text,
    memo text,
    relationship_status text not null default 'unknown',
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
  );

  create table if not exists business.name_card_intake (
    intake_id uuid primary key,
    source_type text not null,
    image_attachment_id uuid,
    raw_text text,
    intake_status text not null default 'draft',
    review_required boolean not null default true,
    local_draft_id text,
    offline_queue_id text,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
  );

  create table if not exists business.name_card_relationship_event (
    event_id uuid primary key,
    contact_id uuid not null references business.name_card_contact(contact_id),
    company_id uuid references business.name_card_company(company_id),
    event_type text not null,
    event_title text not null,
    event_note text,
    event_at timestamptz not null,
    source_app text,
    source_ref_id text,
    created_at timestamptz not null default now()
  );

  create table if not exists business.name_card_merge_review (
    merge_review_id uuid primary key,
    primary_contact_id uuid not null references business.name_card_contact(contact_id),
    candidate_contact_id uuid not null references business.name_card_contact(contact_id),
    decision text not null default 'postpone',
    merge_status text not null default 'postponed',
    reason text,
    resulting_contact_id uuid references business.name_card_contact(contact_id),
    created_at timestamptz not null default now(),
    decided_at timestamptz
  );

  create table if not exists business.name_card_attachment_ref (
    attachment_ref_id uuid primary key,
    owner_kind text not null,
    owner_id uuid not null,
    attachment_id uuid not null,
    attachment_kind text not null,
    created_at timestamptz not null default now()
  );

  create index if not exists idx_name_card_contact_company
    on business.name_card_contact(company_id);

  create index if not exists idx_name_card_contact_person_name
    on business.name_card_contact(person_name);

  create index if not exists idx_name_card_relationship_event_contact_at
    on business.name_card_relationship_event(contact_id, event_at desc);

  create index if not exists idx_name_card_intake_status
    on business.name_card_intake(intake_status);
