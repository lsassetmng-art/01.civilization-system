# ============================================================
# PROJECTFLOW PROJECT DELIVERY ORCHESTRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: ProjectFlow
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: project-delivery-orchestration-architecture

purpose:
Makes project delivery orchestration explicit in the current
ProjectFlow architecture.

architecture_intent:
- project work must be visible not only as tasks, but as delivery movement
- milestones, owners, blockers, and decision points must be reviewable together
- execution health must be queryable without reconstructing it from raw ticket state only

flow_layers:
- planning intake:
  - project setup
  - milestone definition
  - dependency registration
  - role assignment
- execution movement:
  - task progress change
  - milestone progress change
  - blocker detection
  - owner escalation
- delivery review:
  - status rollup
  - risk surfacing
  - dependency review
  - due-date pressure view
- control action:
  - reprioritize
  - reschedule
  - assign escalation
  - request decision
- closure:
  - delivery completion
  - retrospective or audit trace
  - project archive preparation

key_separations:
- raw task state is not the same as delivery health
- dependency registry is not the same as milestone plan
- risk surfacing is not the same as approval history
- project cockpit is not the same as detailed task editing screen

recommended_runtime_objects:
- project_delivery_signal
- milestone_dependency_link
- delivery_risk_review_item
- project_cockpit_summary
