# ============================================================
# POST REGISTRATION ONBOARDING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: post-registration-onboarding
component: post-registration-onboarding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical onboarding architecture
after successful new user registration
in Civilization Access Gateway.

This architecture defines:

- post-registration routing
- first profile setup
- first world introduction
- first access confirmation
- optional skip and deferral behavior


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Registration success must not end
in an ambiguous state.

The system must guide the user through:

- account created confirmation
- minimum profile initialization
- first entry orientation
- transition to usable home or gateway


# ============================================================
# 3. REQUIRED STAGES
# ============================================================

required_stages:
- registration_success
- initial_profile_setup
- first_entry_introduction
- first_route_selection
- onboarding_complete


# ============================================================
# 4. FINAL RULE
# ============================================================

Onboarding must feel continuous,
not like a separate disconnected product flow.
