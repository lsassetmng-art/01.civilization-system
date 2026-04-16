# ============================================================
# ORDER FLOW AUTHORIZATION AND SCOPE RULES
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines authorization and business-scope rules for OrderFlow.

authorization_rules:

  company_scope:
    rule:
      - actor must belong to or be allowed for target company scope
    forbidden:
      - cross-company access without explicit authorization

  route_scope:
    rule:
      - actor must be authorized for target route or screen
    forbidden:
      - deeplink bypass of route authorization

  order_scope:
    rule:
      - actor must have access to the target order record
    forbidden:
      - opening unrelated order by guessed identifier

  estimate_origin_scope:
    rule:
      - estimate-origin order creation requires access to source estimate context
    forbidden:
      - creating order from inaccessible estimate

  role_and_scope_combination:
    rule:
      - role alone is insufficient without correct company and record scope
      - scope alone is insufficient without required business role

  deeplink_entry:
    rule:
      - deeplink may reuse session context
      - deeplink must still validate authorization
    forbidden:
      - raw credential passing
      - silent trust of source app without checks

  closed_order_handling:
    rule:
      - closed order is view-heavy by default
      - edit or reopen needs elevated permission and explicit reason

  audit_visibility:
    rule:
      - privileged actions should remain audit-visible
      - state-changing administrative actions should carry explicit reason

summary_principle:
  Authorization in OrderFlow is role-based, scope-bound,
  and explicit about company, route, and record visibility.

