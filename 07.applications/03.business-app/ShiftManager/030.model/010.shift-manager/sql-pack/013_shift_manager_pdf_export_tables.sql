-- ============================================================
-- SHIFT MANAGER PDF EXPORT TABLES
-- ============================================================

create table if not exists app_shift_manager.shift_pdf_export_history (
  pdf_export_id uuid primary key,
  schedule_id uuid null,
  publication_id uuid null,
  export_type text not null,
  layout_type text not null,
  export_target_scope text null,
  exported_by_person_id uuid not null,
  file_name text not null,
  storage_path text not null,
  page_count integer not null default 1,
  generated_at timestamptz not null default now(),
  constraint ck_shift_pdf_export_type
    check (export_type in ('draft_pdf', 'publication_pdf', 'personal_pdf', 'department_pdf', 'board_pdf')),
  constraint ck_shift_pdf_layout_type
    check (layout_type in ('weekly_a4', 'monthly_a4', 'personal_compact', 'board_a4', 'board_a3')),
  constraint ck_shift_pdf_page_count
    check (page_count >= 1)
);
