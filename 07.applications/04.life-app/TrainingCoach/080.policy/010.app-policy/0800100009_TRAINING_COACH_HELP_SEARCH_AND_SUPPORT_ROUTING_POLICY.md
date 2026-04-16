# ============================================================
# TRAINING COACH HELP SEARCH AND SUPPORT ROUTING POLICY
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 080.policy
owner: Boss
prepared_by: Zero

purpose:
  - FAQ / help center / AI support / external support の振り分け方針を固定する
  - どの質問をどこに流すかの境界を明確にする

routing_policy:
  - simple product explanation は FAQ / help center 優先
  - context-heavy question は AI support 優先
  - safety concern は AI support + safety guidance 優先
  - billing platform issue は external help 候補
  - unsupported future share questions は design-only explanation に留める

routing_matrix:

faq_first:
  intents:
    - plan_change
    - streak_calculation
    - notification_setting
    - premium_difference
  route:
    - faq article
    - then ai support if unresolved

help_search_first:
  intents:
    - user types free text in help center
    - browse by category
  route:
    - ranked help results
    - ai support entry at bottom

ai_support_first:
  intents:
    - which plan should I use today
    - I lost my streak and feel discouraged
    - sync seems delayed and I am not sure why
    - I have discomfort / pain concerns
  route:
    - ai support response policy
    - faq links if helpful

external_support_candidate:
  intents:
    - store billing issue
    - account issue
    - subscription restore platform problem
  route:
    - platform billing help
    - account support candidate

medical_redirect:
  intents:
    - severe pain
    - breathing problem
    - persistent symptoms
  route:
    - safety guidance
    - medical consultation consideration wording

guardrails:
  - route_to_ai does not mean medical advice
  - faq does not override safety concerns
  - premium route does not override support clarity
  - future feature questions must be labeled as not-yet-implemented
