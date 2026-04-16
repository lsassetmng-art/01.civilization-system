# ============================================================
# LIFE PLANNER AI ASSIST SCOPE POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 080.policy
subfolder: 030.ai-assist
owner: Boss
prepared_by: Zero
schema: life

can_do:
  - goal wording support
  - category整理支援
  - review viewpoint suggestion
  - scenario comparison viewpoint suggestion
  - family discussion point summary
  - timeline summary wording
  - missing perspective prompts

must_not_do:
  - automatic final apply of reflection candidate
  - legal judgement
  - medical judgement
  - investment instruction
  - hidden sensitive data disclosure to unauthorized roles
  - family share scope override

data_scope_policy:
  - AI sees only current user-visible scope
  - shared roles never get AI output that leaks hidden categories
  - AI summary respects share scope and allow flags
