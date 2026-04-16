# ============================================================
# SHIFT MANAGER RLS AND AUTHORIZATION DDL POLICY
# ============================================================

status: draft-fixed-candidate
type: rls-and-authorization-ddl-policy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. BASIC POLICY
# ============================================================

ShiftManager requires three-layer access control:
1. company boundary
2. role boundary
3. share/view-scope boundary

principle:
Same company does not mean full visibility.
Visibility is limited by role and explicit share/view scope.

# ============================================================
# 2. PRIMARY RLS TARGET TABLES
# ============================================================

draft_side_tables:
- shift_schedule
- shift_assignment

published_side_tables:
- shift_publication
- shift_publication_assignment
- shift_share_rule
- shift_share_rule_target
- shift_view_scope

notification_linkage_audit_tables:
- shift_notification
- erp_linkage_state
- shift_publish_history
- shift_share_history
- shift_access_audit
- shift_generation_rule
- shift_generation_result
- shift_generation_warning

# ============================================================
# 3. SESSION CONTEXT MODEL
# ============================================================

recommended_session_values:
- app.current_company_id
- app.current_person_id
- app.current_roles
- app.is_enterprise_admin
- app.is_shift_admin
- app.is_department_manager
- app.is_team_leader
- app.is_integration_operator

recommended_helper_style:
Use current_setting(..., true) based helper functions.

# ============================================================
# 4. ACCESS PRINCIPLES
# ============================================================

access_principles:
- company_id equality is minimum requirement
- draft visibility is stricter than published visibility
- published visibility is based on evaluated view_scope
- share_rule visibility is manager-side only
- ERP linkage visibility is integration-role centered

# ============================================================
# 5. TABLE-BY-TABLE POLICY DIRECTION
# ============================================================

shift_schedule:
select:
- creator
- shift_admin
- permitted department_manager
- conditional team_leader
- enterprise_admin as needed

insert:
- shift_admin
- department_manager
- conditional team_leader

update:
- draft only
- authorized draft managers only

delete:
- prefer logical delete only

shift_assignment:
select:
- follow shift_schedule draft visibility

insert_update_delete:
- follow draft edit authority

shift_publication:
select:
- permitted published viewers
- upper managers by policy

insert:
- publish / republish authority only

shift_publication_assignment:
select:
- only when fn_can_view_person_in_publication(publication_id, person_id) is true
- or upper authority exception

update_delete:
- prohibited in principle

shift_share_rule:
select:
- enterprise_admin
- shift_admin
- permitted department_manager

insert_update_disable:
- share-management authority only

shift_share_rule_target:
- same direction as shift_share_rule

shift_view_scope:
select:
- viewer_person_id = current person
- or upper authority exception

write:
- internal rebuild process only

shift_notification:
select:
- target_person_id = current person
- or manager-side limited operation view

update:
- self read update
- permitted retry handling

erp_linkage_state:
select:
- enterprise_admin
- integration_operator
- conditional shift_admin
- conditional department_manager

write:
- export/retry internal process or permitted operator process only

shift_publish_history / shift_share_history:
select:
- manager-side only

shift_access_audit:
select:
- enterprise_admin
- upper shift_admin
- audit authority

shift_generation_rule / result / warning:
select:
- manager-side only
- no staff visibility
- no integration_operator broad visibility by default

# ============================================================
# 6. HELPER FUNCTION DIRECTION
# ============================================================

recommended_helpers:
- fn_current_person_id()
- fn_current_company_id()
- fn_has_role(role_name text)
- fn_can_manage_schedule(schedule_id uuid)
- fn_can_view_publication(publication_id uuid)
- fn_can_view_person_in_publication(publication_id uuid, visible_person_id uuid)

sample_helpers:

create or replace function app_shift_manager.fn_current_person_id()
returns uuid
language sql
stable
as $$
  select nullif(current_setting('app.current_person_id', true), '')::uuid
$$;

create or replace function app_shift_manager.fn_current_company_id()
returns uuid
language sql
stable
as $$
  select nullif(current_setting('app.current_company_id', true), '')::uuid
$$;

create or replace function app_shift_manager.fn_has_role(p_role text)
returns boolean
language sql
stable
as $$
  select coalesce(
    p_role = any(string_to_array(current_setting('app.current_roles', true), ',')),
    false
  )
$$;

# ============================================================
# 7. PUBLICATION VISIBILITY HELPERS
# ============================================================

sample_publication_view_helper:

create or replace function app_shift_manager.fn_can_view_publication(p_publication_id uuid)
returns boolean
language sql
stable
as $$
  select
    app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or exists (
      select 1
      from app_shift_manager.shift_view_scope vs
      where vs.publication_id = p_publication_id
        and vs.viewer_person_id = app_shift_manager.fn_current_person_id()
        and vs.active_flag = true
    )
$$;

sample_person_visibility_helper:

create or replace function app_shift_manager.fn_can_view_person_in_publication(
  p_publication_id uuid,
  p_visible_person_id uuid
)
returns boolean
language sql
stable
as $$
  select
    app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or exists (
      select 1
      from app_shift_manager.shift_view_scope vs
      where vs.publication_id = p_publication_id
        and vs.viewer_person_id = app_shift_manager.fn_current_person_id()
        and vs.visible_person_id = p_visible_person_id
        and vs.active_flag = true
    )
$$;

# ============================================================
# 8. ENABLE RLS DIRECTION
# ============================================================

recommended_rls_enable_targets:

alter table app_shift_manager.shift_schedule enable row level security;
alter table app_shift_manager.shift_assignment enable row level security;
alter table app_shift_manager.shift_publication enable row level security;
alter table app_shift_manager.shift_publication_assignment enable row level security;
alter table app_shift_manager.shift_share_rule enable row level security;
alter table app_shift_manager.shift_share_rule_target enable row level security;
alter table app_shift_manager.shift_view_scope enable row level security;
alter table app_shift_manager.shift_notification enable row level security;
alter table app_shift_manager.erp_linkage_state enable row level security;
alter table app_shift_manager.shift_publish_history enable row level security;
alter table app_shift_manager.shift_share_history enable row level security;
alter table app_shift_manager.shift_access_audit enable row level security;

# ============================================================
# 9. SAMPLE POLICIES
# ============================================================

notification_self_select:

create policy p_shift_notification_select_self
on app_shift_manager.shift_notification
for select
using (
  target_person_id = app_shift_manager.fn_current_person_id()
);

view_scope_self_select:

create policy p_shift_view_scope_select_self
on app_shift_manager.shift_view_scope
for select
using (
  viewer_person_id = app_shift_manager.fn_current_person_id()
  or app_shift_manager.fn_has_role('enterprise_admin')
  or app_shift_manager.fn_has_role('shift_admin')
);

publication_assignment_select:

create policy p_shift_publication_assignment_select
on app_shift_manager.shift_publication_assignment
for select
using (
  app_shift_manager.fn_can_view_person_in_publication(publication_id, person_id)
);

publication_select:

create policy p_shift_publication_select
on app_shift_manager.shift_publication
for select
using (
  app_shift_manager.fn_can_view_publication(publication_id)
);

draft_schedule_select_direction:

create policy p_shift_schedule_select_draft_manager
on app_shift_manager.shift_schedule
for select
using (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    created_by_person_id = app_shift_manager.fn_current_person_id()
    or app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
  )
);

share_rule_insert_direction:

create policy p_shift_share_rule_insert_manager
on app_shift_manager.shift_share_rule
for insert
with check (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
  )
);

# ============================================================
# 10. IMPORTANT IMPLEMENTATION NOTES
# ============================================================

important_notes:
- publish / republish should go through internal function or trusted API layer
- view_scope rebuild should be internal process, not arbitrary user update
- service-role/internal-role bypass must be tightly controlled
- API/application layer should still perform explicit permission checks in addition to RLS
- department_manager target-scope resolution should be provided by trusted context

# ============================================================
# 11. CRITICAL SECURITY GOALS
# ============================================================

critical_goals:
- staff must not gain uncontrolled access to other people's published data
- published visibility must depend on explicit view_scope evaluation
- draft data must remain manager-side only
- ERP linkage state must remain operator/manager centered
- auto generation rules/results must remain manager-side only

# ============================================================
# 12. CONCLUSION
# ============================================================

ShiftManager authorization should combine:
- company boundary
- role boundary
- explicit evaluated view scope

The two most critical helper functions are:
- fn_can_view_publication(publication_id)
- fn_can_view_person_in_publication(publication_id, visible_person_id)

