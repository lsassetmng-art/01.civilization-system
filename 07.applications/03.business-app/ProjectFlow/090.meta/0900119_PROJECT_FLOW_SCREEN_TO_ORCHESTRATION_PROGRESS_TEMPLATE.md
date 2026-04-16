# ============================================================
# PROJECT FLOW SCREEN TO ORCHESTRATION PROGRESS TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for tracking progress
from screen orchestration planning into package execution.

template_fields:
- screen_name
- primary_package
- secondary_packages
- orchestration_defined: yes_no
- shared_components_checked: yes_no
- local_sections_defined: yes_no
- action_routes_defined: yes_no
- state_binding_defined: yes_no
- ready_for_next_package_step: yes_no
- notes

rules:
- orchestration progress should be tracked per screen
- ready_for_next_package_step requires local structure clarity
- blocked boundary questions should be recorded explicitly
