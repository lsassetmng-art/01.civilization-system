# ============================================================
# POCKETSECRETARY DAILY BRIEFING INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: PocketSecretary
directory: 090.interface
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: daily-briefing-interface

purpose:
Makes the daily briefing screen and card hierarchy explicit.

screen_goal:
- show the user what needs attention now
- unify today items, overdue items, and awaiting confirmations
- keep persona presence visible without hiding execution clarity

screen_sections:
- greeting and briefing summary
- today action stack
- overdue follow-through stack
- awaiting confirmation stack
- quick confirm and dismiss actions
- next suggested focus block

item_card_fields:
- action title
- short summary
- state badge
- due or schedule time
- quick action buttons
- trace link to source conversation when applicable

primary_actions:
- confirm
- dismiss
- mark done
- snooze
- open source context
- open downstream record

interface_rules:
- briefing must be scannable in one vertical pass
- overdue items must be visually separated from today items
- awaiting confirmation items must allow one-tap confirmation or dismissal
- persona panel may remain present, but must not obstruct action review
