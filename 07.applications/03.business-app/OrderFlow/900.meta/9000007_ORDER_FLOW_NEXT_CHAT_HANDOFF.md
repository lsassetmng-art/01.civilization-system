# ============================================================
# ORDER FLOW NEXT CHAT HANDOFF
# ============================================================

status: draft-handoff
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a clean handoff summary for the next chat.

handoff_summary:
  app_name:
    - OrderFlow

  app_definition:
    - order execution and delivery coordination front

  already_fixed:
    - positioning and boundaries
    - state and lifecycle
    - partial shipment / delivery
    - exact domain models
    - primary screens and dashboard
    - API payloads
    - validation and permission rules
    - query/filter/sort rules
    - notifications and overdue visibility
    - table/fk/ddl candidates
    - rls candidates
    - migration packaging
    - seed strategy
    - downstream invoice handoff boundary

  intentionally_separate:
    - common component exact design

  held_items:
    - final executable SQL
    - final seed insert SQL
    - final RLS claim mapping
    - final migration placement

recommended_next_chat_start:
  - reflect Sato review results
  - or create exact seed insert SQL
  - or define InvoiceFlow receiver-side exact handoff

one_line_start_prompt:
  - OrderFlow の現設計を前提に、次はレビュー反映または seed SQL exact 化に進めたい

