# ============================================================
# ORDER FLOW FINAL SCOPE AND HOLD SUMMARY
# ============================================================

status: draft-final-scope-summary
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a concise summary of what is in scope and what is held.

in_scope_now:
  - app-specific design completion candidate
  - API and screen contract design
  - table/fk/ddl candidate design
  - RLS candidate design
  - migration and seed direction
  - downstream billing handoff boundary

held_now:
  - final executable SQL
  - final DB approval
  - final migration execution
  - final InvoiceFlow-side receiver implementation
  - exact common component design in this chat

hold_reason:
  - review-first posture
  - explicit go-decision requirement
  - boundary discipline

