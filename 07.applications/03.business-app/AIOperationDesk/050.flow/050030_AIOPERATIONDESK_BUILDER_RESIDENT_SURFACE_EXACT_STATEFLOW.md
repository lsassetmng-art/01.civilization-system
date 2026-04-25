# ============================================================
# AI OPERATION DESK BUILDER RESIDENT SURFACE EXACT STATEFLOW
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: flow
owner: Boss
prepared_by: Zero

surface_goal:
Provide in-context support for Builder-family surfaces across OS domains.

builder_targets_v1:
- CivilizationOS Builder families
- PersonaOS Builder families
- BusinessOS Builder families
- LifeOS Builder families
- GameOS Builder families
- StreamingOS Builder families
- StaticArtOS Builder families

states:
1. collapsed_waiting
2. quick_open
3. asset_explanation_mode
4. field_explanation_mode
5. operation_qa_mode
6. draft_assist_mode
7. execution_request_mode
8. review_bridge_mode
9. closed_back_to_collapsed

stateflow:

collapsed_waiting:
- shows:
  - help icon
  - voice icon
  - review badge if relevant
- transitions:
  - tap_help -> quick_open
  - tap_voice -> quick_open

quick_open:
- shows:
  - explain this builder screen
  - explain this field
  - how do I do this builder action
  - create draft assist
  - create execution request
- transitions:
  - choose_screen_explain -> asset_explanation_mode
  - choose_field_explain -> field_explanation_mode
  - choose_qa -> operation_qa_mode
  - choose_draft -> draft_assist_mode
  - choose_execution -> execution_request_mode
  - close -> collapsed_waiting

asset_explanation_mode:
- output:
  - screen purpose
  - asset purpose
  - recommended next steps
- transitions:
  - ask_more -> operation_qa_mode
  - close -> collapsed_waiting

field_explanation_mode:
- output:
  - field meaning
  - value effect
  - related constraints
- transitions:
  - ask_more -> operation_qa_mode
  - close -> collapsed_waiting

operation_qa_mode:
- output:
  - builder operation steps
  - common mistakes
  - supported action scope
- transitions:
  - need_draft -> draft_assist_mode
  - need_execution -> execution_request_mode
  - close -> collapsed_waiting

draft_assist_mode:
- output:
  - draft assist request
  - provisional output package
- transitions:
  - review_needed -> review_bridge_mode
  - saved -> collapsed_waiting
  - cancel -> quick_open

execution_request_mode:
- output:
  - governed execution request
- transitions:
  - review_required -> review_bridge_mode
  - ready -> collapsed_waiting
  - cancel -> quick_open

review_bridge_mode:
- output:
  - review package created
- transitions:
  - submitted -> collapsed_waiting
  - cancel -> quick_open

rules:
- builder resident support is in-context only
- heavy queue / audit / retry stays in main console
- execution uses supported write surfaces only
