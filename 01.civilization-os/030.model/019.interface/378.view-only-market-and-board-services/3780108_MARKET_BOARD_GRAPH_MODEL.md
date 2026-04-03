# ============================================================
# MARKET BOARD GRAPH MODEL
# ============================================================

status: canonical
layer: model
scope: view-only-market-and-board-services
component: market-board-graph

owner: Boss
prepared_by: Zero


# ============================================================
# 1. GRAPH TYPES
# ============================================================

graph_types:
- line_graph
- area_graph
- bar_graph
- heatmap
- ranking_strip
- sector_distribution_graph


# ============================================================
# 2. GRAPH RULES
# ============================================================

graph_rules:
- securities market boards prioritize line_graph and sector_distribution_graph
- bank rate boards prioritize line_graph and comparison tables
- real estate boards prioritize heatmap and trend graphs
- nation market boards prioritize ranking_strip and category trend graphs
- graphs are view surfaces only and do not imply executable trade action


# ============================================================
# 3. FINAL RULE
# ============================================================

Graphs are primary information objects
for board facilities
and must remain non-transactional by default.
