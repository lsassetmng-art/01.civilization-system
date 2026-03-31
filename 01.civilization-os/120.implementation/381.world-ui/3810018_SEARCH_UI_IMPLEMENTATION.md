# ============================================================
# SEARCH UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: search-ui-implementation
component: search-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for search UI
inside Civilization world context.


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Search UI must implement:

- free query entry
- target filter selection
- result list visibility
- result routing
- safe return to prior route


# ============================================================
# 3. SEARCH TARGET RULE
# ============================================================

Search must support at minimum:

- state
- city
- district
- facility
- company
- persona
- Marketplace-target item where supported

The visible label remains:

- search


# ============================================================
# 4. RESULT ROUTE RULE
# ============================================================

Search results may route to:

- state information
- city information
- district detail
- facility overview
- filtered Marketplace
- other supported target routes

Search must not be facility-only.


# ============================================================
# 5. FINAL RULE
# ============================================================

Search implementation must remain:

- multi-target
- result-oriented
- route-safe
- return-safe
