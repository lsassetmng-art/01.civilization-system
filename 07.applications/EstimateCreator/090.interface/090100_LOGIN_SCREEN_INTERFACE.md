# ============================================================
# LOGIN SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Login screen provides authenticated entry to EstimateCreator.

It must support both:

- normal online login
- offline entry using valid cached auth context

# ============================================================
# 2. PRIMARY UI ELEMENTS
# ============================================================

- app title
- account input
- password or auth action
- login button
- offline available badge
- last successful login context
- error message area
- loading indicator

# ============================================================
# 3. DISPLAY STATES
# ============================================================

Representative states:

- online_ready
- login_processing
- login_failed
- offline_available
- offline_not_available

# ============================================================
# 4. USER MESSAGES
# ============================================================

Representative messages:

- Ready to sign in
- Signing in
- Offline access available
- Offline access unavailable
- Authentication failed

# ============================================================
# 5. ACTION RULES
# ============================================================

When offline cached access is allowed,
the screen must explicitly state that the user is entering
in offline mode rather than normal online mode.

