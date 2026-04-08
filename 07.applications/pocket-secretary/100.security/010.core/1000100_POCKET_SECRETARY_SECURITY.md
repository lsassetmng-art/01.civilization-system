# ============================================================
# POCKET SECRETARY SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the security layer of PocketSecretary.

scope:
The security layer defines protection boundaries for
local data, device capabilities, Persona-related presentation handling,
ERP-related request handling, sync safety, and critical action gating.

security_principles:
- privacy by default
- explicit permission
- minimum necessary exposure
- fail-closed critical paths
- explicit review for externally consequential actions
- separation of presentation and authority


# ============================================================
# 1. SECURITY DOMAINS
# ============================================================

PocketSecretary security domains include:

- local data protection
- permission control
- critical action gate control
- external request safety
- sync safety
- sensitive state handling
- integrity and validation protection


# ============================================================
# 2. SECURITY ROLE
# ============================================================

PocketSecretary security must protect:

- local secretary data
- private user content
- device capability usage
- pending external request content
- bounded Persona-linked local state
- execution control points

PocketSecretary security must not:

- rely on Persona presentation as authority
- equate local success with external success
- allow ambiguous critical execution
