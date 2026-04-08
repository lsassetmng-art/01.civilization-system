# ============================================================
# PASSWORD RESET UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: password-reset-ui-implementation
component: password-reset-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for password reset UI
inside Civilization.

This document covers:

- password reset mail request
- password reset completion screen


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Password reset is a support flow,
not a world-navigation flow.

It must remain separate from:

- login success routing
- story routing
- map routing


# ============================================================
# 3. RESET REQUEST RULE
# ============================================================

Reset request screen must support:

- email or login identifier input
- explicit reset mail request
- explicit return to login
- request success posture
- request failure posture

Request success must not imply
password already changed.


# ============================================================
# 4. RESET COMPLETION RULE
# ============================================================

Reset completion screen must support:

- new password input
- password confirmation input
- explicit submit
- success route back to login
- failure visibility

Reset failure must remain distinct
from login failure.


# ============================================================
# 5. TOKEN / LINK POSTURE RULE
# ============================================================

If reset link or token posture is invalid,
the reset screen must show:

- invalid_link or expired_link posture
- safe route back to login
- retry guidance where supported


# ============================================================
# 6. FINAL RULE
# ============================================================

Password-reset implementation must remain:

- support-route-only
- state-explicit
- login-returning
- non-destructive to normal login route
