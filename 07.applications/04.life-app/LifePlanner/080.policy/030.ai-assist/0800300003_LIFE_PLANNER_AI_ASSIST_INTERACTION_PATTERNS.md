# ============================================================
# LIFE PLANNER AI ASSIST INTERACTION PATTERNS
# ============================================================

status: draft
system: LifePlanner
layer: 080.policy
subfolder: 030.ai-assist
owner: Boss
prepared_by: Zero
schema: life

interaction_patterns:
  - pattern_id: AI-LP-001
    name:
      - goal_refine
    user_intent:
      - 目標文を整理したい
    ai_output:
      - shorter clearer goal wording
      - optional milestone suggestion

  - pattern_id: AI-LP-002
    name:
      - review_prompt
    user_intent:
      - 何を見直せばいいか知りたい
    ai_output:
      - review checklist
      - likely affected categories
      - related goals/events

  - pattern_id: AI-LP-003
    name:
      - scenario_compare_help
    user_intent:
      - 選択肢の見方を整理したい
    ai_output:
      - compare dimensions
      - pros and concerns
      - note that final choice is user decision

  - pattern_id: AI-LP-004
    name:
      - family_meeting_summary
    user_intent:
      - 家族に見せる要約を作りたい
    ai_output:
      - short shareable summary within scope
      - discussion points
      - unresolved questions

  - pattern_id: AI-LP-005
    name:
      - reflection_candidate_explain
    user_intent:
      - 見直し候補の意味を理解したい
    ai_output:
      - plain language explanation
      - possible impacts
      - reminder that apply is explicit decision
