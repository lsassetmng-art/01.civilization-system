# ============================================================
# PROJECT FLOW FOLLOW UP ACTION LIST MATERIAL DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

material_id:
follow_up_action_list

purpose:
Explains pending actions, owners, and expected due direction.

main_sections:
- action summary count
- follow-up table
- owner visibility
- due direction

candidate_source_data:
- open action-tagged tasks
- follow-up memo entries
- explicit follow-up records when later added

key_columns:
- action_title
- owner_name_snapshot
- due_date
- status
- related_entity_type
- related_entity_id

editing_points:
- visible actions
- customer wording
- grouping by owner or date
