# ============================================================
# VIEW ONLY MARKET AND BOARD SERVICES ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: view-only-market-and-board-services
component: view-only-market-and-board-services

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical architecture
for view-only market and board services
opened from field-map facilities in Civilization.

This architecture defines:

- national securities market board
- banking rate board
- real estate market board
- recruitment information board
- nation market information board
- transport and civic information boards


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

View-only facilities must separate:

- information display
- comparison display
- graph display
- ranking display
- notice display
- backlink to related actionable services

A board facility must not silently become
a transaction endpoint.


# ============================================================
# 3. VIEW-ONLY RULE
# ============================================================

Board facilities may provide:

- graphs
- rankings
- lists
- notices
- comparisons
- official announcements

Board facilities must not provide:

- direct purchase execution
- direct trade execution
- direct contract execution
- direct order placement

unless explicitly routed out
to a separate service UI.


# ============================================================
# 4. FINAL RULE
# ============================================================

View-only services exist
to expose market or civic state clearly
without confusing information access
with transaction execution.
