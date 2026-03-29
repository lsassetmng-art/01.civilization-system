# ============================================================
# USER REGISTRATION SCREEN ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: user-registration-screen
component: user-registration-screen

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical new user registration screen
for Civilization Access Gateway.

This architecture defines:

- registration input structure
- validation rules
- legal acknowledgment handling
- registration submit flow
- success and failure routing


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Registration must remain simple,
safe,
and explicit.

The user must be able to understand:

- what information is required
- what must match
- whether legal acknowledgment is required
- whether registration succeeded or failed


# ============================================================
# 3. PRIMARY ACTIONS
# ============================================================

primary_actions:
- submit_registration
- cancel_registration
- open_legal_notice
- toggle_password_visibility


# ============================================================
# 4. FINAL RULE
# ============================================================

Registration must be
a first-class onboarding route,
not a hidden or overloaded login variation.
