# ============================================================
# PROJECT FLOW BUSINESSOS DEPENDENCY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines BusinessOS dependency points for ProjectFlow.

businessos_dependency_domains:
- ERP mediation boundary
- shared integration execution
- sync request routing
- reference master access when exposed through BusinessOS
- possible shared organizational/user context
- possible shared common component consumption

projectflow_depends_on_businessos_for:
- ERP-facing import request mediation
- ERP-facing export request mediation
- sync retry mediation
- sync status retrieval at mediated boundary
- ERP-side reference access through approved shared boundary

projectflow_does_not_depend_on_businessos_for:
- local project/task/milestone UI rendering
- local issue/risk handling
- local memo/comment handling
- local template/WBS proposal behavior
- local customer-facing material composition
- local multilingual label resolution

architecture_rules:
- BusinessOS is a mediation layer,
  not ProjectFlow local screen logic owner
- ProjectFlow local operational UX should remain operable
  even when mediated sync paths are unavailable where allowed
- local app scope and mediated external scope must remain separable
