# ============================================================
# CREATE NEW USER UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: create-new-user-ui-implementation
component: create-new-user-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for create-new-user UI
inside Civilization.

This document must align with:

- LOGIN_AND_AUTH_UI_INTERFACE
- LOGIN_AND_AUTH_UI_IMPLEMENTATION
- WORLD_ENTRY_AND_MAP_FUNCTIONAL_DESIGN


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Create new user UI is a support route
from login.

It must implement:

- account creation input
- explicit submit
- explicit cancel back to login
- duplicate-user prevention entry checks
- readable blocked / review posture


# ============================================================
# 3. SCREEN INITIALIZATION RULE
# ============================================================

On entry,
the screen should initialize:

- empty create-user fields
- provider-link visibility where supported
- duplicate-check posture as not_yet_evaluated
- submit disabled until minimum required fields are valid


# ============================================================
# 4. FIELD GROUP RULE
# ============================================================

Representative field groups may include:

- account identity inputs
- contact inputs
- password inputs
- agreement posture where required

The exact field set may evolve,
but submission must remain explicit.


# ============================================================
# 5. DUPLICATE CHECK RULE
# ============================================================

Create-user flow must integrate
duplicate-user protection.

Possible outcomes include:

- proceed
- block as duplicate
- review_hold
- link_to_existing_identity where policy allows

Duplicate checks must not be hidden.


# ============================================================
# 6. SUBMIT RULE
# ============================================================

Submit must be explicit.

Successful creation should route to:

- login_screen

Immediate direct login is not required
by this design.


# ============================================================
# 7. ERROR / BLOCKED RULE
# ============================================================

The screen must distinguish:

- validation error
- duplicate block
- review hold
- system error

These states must not be conflated.


# ============================================================
# 8. FINAL RULE
# ============================================================

Create-new-user implementation must remain:

- login-rooted
- duplicate-aware
- state-explicit
- return-safe
