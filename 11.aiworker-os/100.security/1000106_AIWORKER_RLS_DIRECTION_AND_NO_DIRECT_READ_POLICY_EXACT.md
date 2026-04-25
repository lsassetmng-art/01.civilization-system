# ============================================================
# AIWORKER RLS DIRECTION AND NO DIRECT READ POLICY EXACT
# ============================================================

status: exact-security
system: AiworkerOS
layer: 100.security
owner: Boss
prepared_by: Zero

purpose:
Freeze the RLS direction and no-direct-read realization for AiworkerOS.

no_direct_read_policy:
- AI worker runtime actors do not query aiworker raw tables directly
- AI worker runtime actors use external read surfaces only
- raw tables are deny-by-default at grant level
- RLS is defense-in-depth, not a replacement for deny-by-default grants

rls_direction_by_family:
- worker master and lifecycle:
  rls_direction:
  - optional for internal service roles
  - not exposed to AI worker runtime roles
  rationale:
  Internal canonical truth, not a direct read surface.

- company and user tendency:
  rls_direction:
  - tenant-scoped filtering required when read is granted to reviewer/service roles
  policy_key_examples:
  - tenant_company_id
  - tenant_user_id

- assignment and availability:
  rls_direction:
  - tenant- and app-scope-aware filtering where review/service read is granted
  policy_key_examples:
  - tenant_company_id
  - tenant_user_id
  - assigned_app_scope_code

- affinity and fit:
  rls_direction:
  - tenant-scoped filtering required

- audit and history:
  rls_direction:
  - narrower read than standard raw truth
  - reviewer roles only
  - delivery roles excluded

- restricted and privileged:
  rls_direction:
  - dedicated reviewer roles only
  - stricter filters than standard review
  - no broad inheritance

- official intake and outbox:
  rls_direction:
  - workflow-state-aware filtering where applicable
  - delivery role limited to undelivered or delivery-relevant rows
  - intake writer limited to rows it created or workflow states allowed by policy

security_definer_direction:
- controlled functions may use reviewed SECURITY DEFINER direction if required
- SECURITY DEFINER is allowed only for controlled function path
- ad hoc runtime use of elevated definers is prohibited

hard_rules:
- grant deny remains primary boundary
- RLS must not be relied on as the only protection
- no policy may widen access for AI worker runtime actors to raw truth tables
