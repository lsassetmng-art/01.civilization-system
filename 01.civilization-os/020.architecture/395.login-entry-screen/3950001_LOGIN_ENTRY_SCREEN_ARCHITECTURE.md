# ============================================================
# LOGIN ENTRY SCREEN ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: login-entry-screen
component: login-entry-screen

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical top login entry screen
for Civilization.

This architecture defines:

- normal login entry
- new user registration entry
- cancel behavior
- CX22073JW access entry
- legal notice entry
- screen state transitions


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

The login entry screen must clearly separate:

- ordinary account login
- new user registration
- conditional story-mode access
- legal and copyright notice entry

The normal login path is primary.
New user registration is a formal main entry.
CX22073JW access is conditional and secondary.


# ============================================================
# 3. PRIMARY ACTIONS
# ============================================================

primary_actions:
- login
- register_new_user
- cancel
- cx22073jw_access
- legal_notice_entry


# ============================================================
# 4. TITLE RULE
# ============================================================

screen_title:
- Civilization Access Gateway


# ============================================================
# 5. FINAL RULE
# ============================================================

The top entry screen must remain simple,
explicit,
and safe enough for normal access,
new registration,
and special story access routing.
