# ============================================================
# BUSINESS CORE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for user, workspace, app, role, workflow, approval,
and metric handling inside BusinessOS.

BusinessOS is primarily user-scoped.
Company context is not a default runtime root.
Company context is attached only when an ERP-send-capable app flow
needs company-scoped outbound payload generation.

runtime_scope:
- validate business target
- validate user, workspace, app, and authority basis
- update core business lifecycle state
- preserve business traceability
- attach company context only for ERP-send-capable outbound flows

trigger_conditions:
- user active
- workspace activated
- app action invoked
- work request created
- approval recorded
- ERP-send requested where supported

processing_steps:
1 resolve business target
2 verify user, workspace, app, and authority basis
3 apply business state transition
4 if ERP-send is requested, verify company context and mapping basis
5 persist business result
6 preserve audit and business trace

state_rule:
Normal BusinessOS local behavior remains user/workspace-scoped.

erp_send_rule:
ERP-send is optional and must fail closed if required company context,
mapping profile, or payload type is unresolved.

truth_boundary:
BusinessOS truth is primarily user-scoped.
ERP payload truth becomes company-scoped only at outbound send time.
