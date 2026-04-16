# ============================================================
# PROJECT MEMBER AUTHORITY MATRIX COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
layer: meta
system: applications
application_origin: StreamStudio
component_name: Project Member Authority Matrix Common
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the promotion design
for Project Member Authority Matrix Common.

The purpose of this common component is to provide
a reusable scoped-authority contract and authority-matrix surface
for project-oriented applications, creator collaboration applications,
and team-based operational applications.

This component should not remain permanently StreamStudio-local
because project-member roles, authority scope, and action visibility
are structurally reusable across many collaborative apps.

---

## 2. Canonical Responsibility

Project Member Authority Matrix Common is responsible for:

- member-role structure exposure
- scoped authority definition
- action visibility matrix exposure
- role-to-permission mapping visibility
- project/member authority summary rendering
- authority change request surface exposure
- authority state normalization for app consumers

It is not responsible for:

- identity provider implementation
- global organization directory implementation
- business-specific approval logic
- payment execution
- app-specific collaboration wording
- backend permission engine implementation

---

## 3. Reuse Scope

reuse_scope:
- creator collaboration applications
- project-oriented applications
- team-based operational applications
- governance-aware editing applications
- shared workspace applications

likely_future_consumers:
- StreamStudio
- creator production tools
- collaboration-heavy creator apps
- project-based editorial tools
- future team-managed publishing apps

---

## 4. Core Responsibilities

- define project member roles
- define scoped permissions by role
- expose action visibility by role and context
- expose project-member authority summary
- support role assignment and role update entry points
- support project-level and item-level scope distinctions where enabled
- normalize authority state for app-local orchestration
- support additive role expansion without rewriting the base contract

---

## 5. Required Input Contract

required_inputs:
- project_or_workspace_id
- authority_profile
- member_list
- role_definitions
- permission_scope_definitions
- current_authority_assignments
- allowed_authority_actions
- permission_context
- item_scope_support_flag
- inherited_authority_context_or_null

input_notes:
- authority_profile defines the reusable role family for the consumer app
- role_definitions and permission_scope_definitions must remain normalized
- item_scope_support_flag distinguishes project-only from mixed-scope models
- inherited_authority_context_or_null allows reuse where parent workspace rules exist

---

## 6. Output / Event Contract

emitted_events:
- authority_matrix_opened
- member_role_view_opened
- authority_assignment_requested
- authority_assignment_changed
- authority_assignment_removed
- authority_validation_failed
- authority_validation_passed
- authority_save_requested
- authority_saved
- authority_save_failed
- authority_action_denied
- authority_matrix_closed

output_notes:
- assignment_requested and assignment_changed must remain separate
- denied actions must remain explicit
- validation failure must remain distinct from save failure
- authority changes should remain normalized for app-local orchestration

---

## 7. State Model

normalized_state_model:
- authority_not_loaded
- authority_viewing
- authority_editing
- authority_dirty
- authority_validation_failed
- authority_ready_to_save
- authority_saving
- authority_saved
- authority_save_failed
- authority_blocked

state_model_notes:
- authority_saved does not imply all members have equal scope
- authority_blocked is distinct from authority_action_denied
- authority_validation_failed must remain distinct from save failure
- inherited authority may exist without preventing local editing depending on profile

---

## 8. Permission Assumptions

permission_assumptions:
- caller must already be allowed to view project/member authority state
- caller must already be allowed to change member authority where applicable
- authority edit permission is not equivalent to project ownership
- authority edit permission is not equivalent to publish permission
- authority edit permission is not equivalent to settlement execution permission

permission_boundary_note:
This component assumes a validated permission context,
but it should not become the canonical global permission engine.

---

## 9. Authority Boundary

minimum_authority_concepts:
- member_id
- role_id
- role_scope
- permission_scope
- allowed_actions
- assignment_state
- save_allowed_flag
- authority_blockers_or_null

optional_authority_concepts_by_profile:
- temporary role grant
- delegated approval role
- restricted reviewer role
- item-level override role
- inherited parent-workspace restriction

authority_boundary_note:
Optional authority concepts may vary by app profile,
but the common contract should remain authority-matrix oriented
instead of app-screen oriented.

---

## 10. UI / Behavior Boundary

allowed_common_surface_behavior:
- member-role summary strip
- role assignment table or matrix
- scoped permission summary
- action visibility summary
- blocker summary
- save action area
- role update / removal entry points

must_not_be_baked_in:
- StreamStudio-specific wording
- StreamStudio-specific collaboration tab layout
- app-specific HR or organization directory assumptions
- identity provider implementation detail
- backend permission-engine implementation detail

---

## 11. Failure / Recovery Design Notes

failure_and_recovery_notes:
- denied authority actions must remain explicit
- save failure must not destroy current editing state
- validation failure must remain distinguishable from transport failure
- inherited-authority visibility should remain reviewable without corrupting local assignments
- role removal failure must not corrupt confirmed current assignments

---

## 12. Relationship to Other Common Candidates

related_common_candidates:
- Membership Program Manager Common
- Revenue Split Editor Common
- Approval Flow Common
- Collaboration Thread Common

relationship_notes:
- Membership Program Manager Common handles subscription program structure, not collaboration authority state
- Revenue Split Editor Common may depend on stable member-role identity and scoped edit rights
- Approval Flow Common handles decision progression, not role-to-permission modeling
- Collaboration Thread Common may use authority visibility, but should remain separate from authority state core

---

## 13. Promotion Caution

promotion_caution:
- do not merge authority matrix with identity provider logic
- do not merge authority matrix with approval flow semantics
- do not hard-code StreamStudio-specific role names
- do not embed app-specific collaboration copy in the common contract
- do not assume one fixed permission backend implementation

---

## 14. Initial Promotion Judgment

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
- recommended_next_relation_review:
  - Revenue Split Editor Common
  - Collaboration Thread Common
  - Approval Flow Common

---

## 15. Final Note

This design defines Project Member Authority Matrix Common
as a reusable contract-first common component candidate.

It is ready to be treated
as an official promotion-design unit
for later shared-component adoption review.
