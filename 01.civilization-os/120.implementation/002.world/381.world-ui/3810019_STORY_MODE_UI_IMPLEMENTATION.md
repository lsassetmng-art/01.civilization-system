# ============================================================
# STORY MODE UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: story-mode-ui-implementation
component: story-mode-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for story-mode-related UI
inside Civilization.


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Story-mode UI must implement:

- story gate
- story selection
- story screen
- reserved extension posture for adventure screen
- reserved extension posture for mini-game screen

Story mode remains login-rooted only.


# ============================================================
# 3. ENTRY RULE
# ============================================================

Story mode entry exists only from:

- login_screen

It must not appear
as a common map route.


# ============================================================
# 4. RESERVED EXPANSION RULE
# ============================================================

Story family may later include:

- story screen
- adventure screen
- mini-game screen

Current implementation must preserve
architectural room for those routes
without mixing them into normal world routing.


# ============================================================
# 5. FINAL RULE
# ============================================================

Story-mode implementation must remain:

- login-rooted
- world-route-separated
- extensible to adventure and mini-game families
