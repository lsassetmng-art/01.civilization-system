# ============================================================
# PERSONA BUILDER APPROVAL RULE
# ============================================================

status: canonical
scope: persona.builder.approval.rule
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the official approval rule of Persona Builder.


# RULE

Approval may be requested only when:

- latest validation has passed
- no blocking issue remains
- required release-facing fields are present where applicable

Approval must be explicit.

Approval must not be inferred.


# POST-RELEASE CHANGE RULE

If a post-release fix affects public-facing surfaces,
re-review is mandatory.

Examples include:
- public profile text
- marketplace description
- release description
- tags
- audience note
- content rating related text


# IDENTITY PROTECTION RULE

Post-release approval must protect:

- buyer protection
- copyright protection
- identity continuity
- marketplace safety

Image / visual replacement is prohibited.

Voice replacement is prohibited.


# FINAL DEFINITION

Approval is explicit, validation-dependent,
and must be rerun when public-facing changes occur after release.
