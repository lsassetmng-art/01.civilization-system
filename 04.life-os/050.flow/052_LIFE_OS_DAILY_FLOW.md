# ============================================================
# LIFE OS DAILY FLOW
# ============================================================

status: canonical
layer: 050.flow
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical daily cycle of Life OS.

daily_cycle:
1_capture_baseline:
- start day context
- carry over pending reminders
- initialize daily summary frame

2_collect_records:
- meal inputs
- water inputs
- health inputs
- activity inputs
- sleep closure or continuation
- habit completion inputs

3_validate_and_store:
- validate schema
- normalize timestamps
- classify source
- persist records

4_derive_state:
- update daily counters
- update streaks
- update summaries
- generate reminder relevance

5_reflect_and_sync:
- expose updated daily state
- emit allowed integration events
- prepare next reminders

completion_rule:
A day is logically complete when the daily summary has enough stable signals
or when the day-close job finalizes the summary.
