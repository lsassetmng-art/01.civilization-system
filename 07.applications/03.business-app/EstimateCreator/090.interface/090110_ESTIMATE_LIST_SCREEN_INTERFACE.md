# ============================================================
# ESTIMATE LIST SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Estimate list screen provides the main operational entry
to all estimates managed in the app.

# ============================================================
# 2. PRIMARY UI ELEMENTS
# ============================================================

- search field
- filter button
- create estimate button
- estimate list
- sync state banner
- offline banner
- pending operation badge

# ============================================================
# 3. LIST ROW FIELDS
# ============================================================

Each row should display:

- estimate number
- title
- customer name
- total amount
- estimate class
- sync state
- publication state
- updated time

# ============================================================
# 4. FILTERS
# ============================================================

Recommended filters:

- all
- drafts
- pending sync
- conflicts
- publication pending
- publication failed
- shared
- archived

# ============================================================
# 5. EMPTY STATES
# ============================================================

Representative empty states:

- No estimates yet
- No results for current filter
- Offline data unavailable
- Sync required to load more items



Tablet adaptation:
- allow wider row density
- allow side-by-side filter panel where useful
- allow detail preview pane where useful

Phone adaptation:
- keep filter and list flow compact
- prefer single-column navigation

