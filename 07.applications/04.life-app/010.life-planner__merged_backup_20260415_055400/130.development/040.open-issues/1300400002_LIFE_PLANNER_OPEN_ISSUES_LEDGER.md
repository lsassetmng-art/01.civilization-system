# ============================================================
# LIFE PLANNER OPEN ISSUES LEDGER
# ============================================================

status: draft
system: LifePlanner
layer: 130.development
subfolder: 040.open-issues
owner: Boss
prepared_by: Zero
schema: life

open_issues:
  - issue_id: LP-ISSUE-001
    topic: plan category master
    current_state:
      - category examples exist
      - official fixed master not yet frozen
    recommended_direction:
      - define minimum category master for phase 1

  - issue_id: LP-ISSUE-002
    topic: reflection candidate physical source contract
    current_state:
      - logical contract exists
      - exact upstream contract per connected app not frozen
    recommended_direction:
      - align connected LifeOS apps later

  - issue_id: LP-ISSUE-003
    topic: family shared scope category granularity
    current_state:
      - category level sharing fixed
      - item-level granularity not fixed
    recommended_direction:
      - keep category-level first

  - issue_id: LP-ISSUE-004
    topic: scenario compare result persistence depth
    current_state:
      - compare result is derived by default
      - full compare snapshot persistence not fixed
    recommended_direction:
      - keep decision record only in initial design

  - issue_id: LP-ISSUE-005
    topic: archived plan edit detail
    current_state:
      - archived is read-heavy
      - exact limited edit exceptions not fixed
    recommended_direction:
      - default read only

  - issue_id: LP-ISSUE-006
    topic: age view base age source
    current_state:
      - age view exists as display concept
      - exact age calculation source not fixed
    recommended_direction:
      - treat as UI derived and freeze later

  - issue_id: LP-ISSUE-007
    topic: notification delivery channels
    current_state:
      - notification events defined
      - exact delivery mediums not frozen
    recommended_direction:
      - keep channel-agnostic in current design

  - issue_id: LP-ISSUE-008
    topic: template library
    current_state:
      - template idea exists
      - official template model not designed
    recommended_direction:
      - postpone until core design freeze
