# ============================================================
# POCKET SECRETARY HOME SUMMARY PRIORITY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines fixed priority architecture for the home speech bubble summary.

rule:
PocketSecretary home speech bubble shows one dominant message at a time.

priority order:
1. upcoming schedule within 30 minutes
2. due-today unfinished todo
3. important notification
4. unresolved travel expense
5. general secretary guidance

selection method:
Score-based dominant selection is required.

baseline scores:
- schedule within 30 minutes: 100
- due-today unfinished todo: 80
- important notification: 70
- unresolved travel expense: 60
- general secretary guidance: 10

tie-break order:
1. nearer deadline or start time
2. newer updated_at
3. item not shown most recently

suppression rules:
- repeated identical message should be suppressed for a bounded time
- quiet hours suppress non-urgent candidates
- summary and notification should avoid meaningless duplication

rules:
- summary selection must remain state-grounded
- summary output remains informational or advisory only
