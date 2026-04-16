# ============================================================
# MULTILINGUAL MULTICURRENCY DISPLAY PRIORITY INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines display priority under multilingual and multicurrency conditions.

compact_priority:
1. primary business content
2. key status or summary
3. display currency rendering
4. language-variant switch access
5. source / base / display comparison access behind explicit reveal

expanded_priority:
1. primary business content
2. source and translated visibility together when useful
3. source / base / display currency visibility together when useful
4. basis and preview side-by-side when useful

rules:
- compact layouts favor sequential access
- expanded layouts may favor comparative access
- business meaning must remain identical across both
- hidden comparative sections must still remain reachable
