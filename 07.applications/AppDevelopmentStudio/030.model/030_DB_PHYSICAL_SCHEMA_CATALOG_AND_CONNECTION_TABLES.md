# ============================================================
# DB PHYSICAL SCHEMA CATALOG AND CONNECTION TABLES
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

tables:

reusable_component:
  purpose: reusable engineering part
  pk: component_id
  columns:
    - component_id: uuid not null pk
    - component_name: text not null
    - component_type: text not null
    - source_scope: text not null
    - summary: text null
    - primary_use_case: text null
    - supported_environments: jsonb not null
    - supported_languages: jsonb not null
    - stability_level: text not null
    - current_version_id: uuid null
    - status: text not null
    - created_at: timestamptz not null
    - updated_at: timestamptz not null
  indexes:
    - component_name
    - component_type
    - source_scope
    - status

component_dependency:
  purpose: dependency mapping between reusable parts
  pk: component_dependency_id
  columns:
    - component_dependency_id: uuid not null pk
    - component_id: uuid not null fk reusable_component.component_id
    - depends_on_component_id: uuid not null fk reusable_component.component_id
    - dependency_type: text not null
    - created_at: timestamptz not null
  indexes:
    - component_id
    - depends_on_component_id

connection_profile:
  purpose: AI-friendly DB connection profile
  pk: connection_profile_id
  columns:
    - connection_profile_id: uuid not null pk
    - profile_name: text not null
    - db_type: text not null
    - host_or_data_source: text not null
    - port: integer null
    - database_name: text not null
    - schema_scope: text null
    - auth_type: text not null
    - secret_ref_id: uuid null
    - environment_scope: text not null
    - usage_purpose: text null
    - read_write_scope: text not null
    - ddl_allowed: boolean not null
    - production_allowed: boolean not null
    - status: text not null
    - created_at: timestamptz not null
    - updated_at: timestamptz not null
  indexes:
    - profile_name
    - environment_scope
    - read_write_scope
    - status

connection_selection_record:
  purpose: chosen DB connection trace
  pk: connection_selection_record_id
  columns:
    - connection_selection_record_id: uuid not null pk
    - request_id: uuid null fk development_request.request_id
    - connection_profile_id: uuid not null fk connection_profile.connection_profile_id
    - selection_reason: text null
    - selected_at: timestamptz not null
  indexes:
    - request_id
    - connection_profile_id
