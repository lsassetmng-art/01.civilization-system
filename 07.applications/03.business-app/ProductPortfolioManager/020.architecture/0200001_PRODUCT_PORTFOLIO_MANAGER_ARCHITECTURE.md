# ============================================================
# PRODUCT PORTFOLIO MANAGER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

major_modules:
1. portfolio dashboard
2. portfolio list
3. product detail
4. score detail
5. classification management
6. proposal management
7. review meeting management
8. approval queue
9. alert visibility
10. audit visibility
11. ERP reference gateway
12. forecast reference gateway

module_responsibilities:
portfolio_dashboard:
- show portfolio health summary
- surface top priorities
- link quickly to problem and review targets

portfolio_list:
- support cross-product comparison
- support search, filter, sort, and presets
- enable quick navigation to detail and comparison

product_detail:
- unify facts, scores, classifications, proposals, comments, and alerts
- make source-of-truth context visible

classification_management:
- support suggested and approved classification states
- preserve before/after visibility
- separate draft from final

review_meeting_management:
- gather review targets
- support comparison and decisions
- preserve responsibility and due dates
