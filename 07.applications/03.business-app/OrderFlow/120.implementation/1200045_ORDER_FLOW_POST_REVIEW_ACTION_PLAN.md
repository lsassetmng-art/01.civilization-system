# ============================================================
# ORDER FLOW POST REVIEW ACTION PLAN
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the recommended order of work after review results arrive.

post_review_action_plan:

  step_1:
    - record Sato findings in review findings template

  step_2:
    - classify findings into:
      - must_fix_before_execution
      - should_fix_before_seed_use
      - can_defer

  step_3:
    - update structural docs first if model assumptions changed
    includes:
      - table candidates
      - fk candidates
      - ddl draft
      - rls draft

  step_4:
    - update implementation docs if API or validation changed
    includes:
      - api exact docs
      - validation docs
      - screen mapping docs

  step_5:
    - refresh integrated docs
    includes:
      - 000_COMMON_DESIGN_INDEX.md
      - 000_COMMON_DESIGN_OVERVIEW.md
      - 00_ORDER_FLOW_INTEGRATED.md
      - 9000001_ORDER_FLOW_DESIGN_BIBLE.md

  step_6:
    - regenerate or revise seed SQL if structural changes require it

  step_7:
    - prepare execution candidate only after review closure and go decision

priority_rule:
- structural consistency first
- implementation mapping second
- integrated refresh third
- execution candidate last

