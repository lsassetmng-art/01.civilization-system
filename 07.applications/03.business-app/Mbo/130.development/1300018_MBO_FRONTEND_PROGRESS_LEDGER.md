# ============================================================
# MBO FRONTEND PROGRESS LEDGER
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Provides a day-to-day frontend progress ledger
for implementation execution.

ledger_items:

  - item_id: FE-L01
    area: objective_list_screen
    status: not_started
    done_definition:
      - list loads
      - filter works
      - empty/error states work
      - detail navigation works

  - item_id: FE-L02
    area: objective_create_edit_screen
    status: not_started
    done_definition:
      - create works
      - update works
      - validation error display works
      - activate action works

  - item_id: FE-L03
    area: objective_detail_screen
    status: not_started
    done_definition:
      - summary renders
      - latest progress renders
      - lock badge renders

  - item_id: FE-L04
    area: action_plan_list_create_screen
    status: not_started
    done_definition:
      - list renders
      - create works
      - locked state blocks create visibly

  - item_id: FE-L05
    area: progress_update_history_screen
    status: not_started
    done_definition:
      - history renders newest-first
      - create works
      - locked state blocks create visibly

  - item_id: FE-L06
    area: dashboard_summary_shell
    status: not_started
    done_definition:
      - summary cards render
      - navigation entry works
      - alert-like cards are visually distinct

  - item_id: FE-L07
    area: multilingual_resource_baseline
    status: not_started
    done_definition:
      - labels externalized
      - language switch path possible

  - item_id: FE-L08
    area: responsive_layout_baseline
    status: not_started
    done_definition:
      - iphone layout usable
      - android layout usable
      - pc layout usable
      - tablet layout usable

status_candidates:
- not_started
- in_progress
- blocked
- review_ready
- done

update_rule:
Each item should be updated only with
screen-level verifiable progress.
