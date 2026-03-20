# ============================================================
# GAZETTE DELIVERY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Gazette delivery surfaces official notices, public records,
and legally relevant publications to users.

content_types:
- law publication
- leadership change
- company dissolution warning
- war declaration
- sentence notice
- public policy notice

responsibilities:
- present official records in readable form
- maintain chronological accessibility
- distinguish public notice from ordinary notification

rules:
- gazette delivery is read-only
- gazette items must originate from explicit published events
- interface must preserve historical continuity

final_rule:
Gazette delivery is a public legal view,
not a direct action surface.
