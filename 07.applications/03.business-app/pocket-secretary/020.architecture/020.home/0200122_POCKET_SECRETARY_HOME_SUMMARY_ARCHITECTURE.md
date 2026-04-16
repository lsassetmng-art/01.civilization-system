# ============================================================
# POCKET SECRETARY HOME SUMMARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines PocketSecretary-specific application of the shared Summary Bubble Common.

common reference:
PersonaOS secretary interaction common defines:
- summary bubble common
- dominant summary selection common
- advisory/informational boundary of summary output

PocketSecretary-specific summary usage:
The home summary appears in the top-left speech bubble area.

PocketSecretary-specific summary priority order:
1. next schedule urgency
2. due todo urgency
3. pending notification summary
4. travel expense reminder
5. bounded secretary guidance

rules:
- PocketSecretary binds the common summary logic
  to its home-screen speech bubble
- one dominant summary should appear at a time
- summary remains informational or advisory only
