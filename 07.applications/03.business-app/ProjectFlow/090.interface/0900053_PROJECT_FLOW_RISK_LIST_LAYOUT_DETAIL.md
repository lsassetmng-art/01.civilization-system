# ============================================================
# PROJECT FLOW RISK LIST LAYOUT DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

material:
risk_list

layout:
1. header area
   - project name
   - open risk count
   - high risk count
2. filter and visibility row
   - probability filter
   - impact filter
   - status filter
3. risk table or list
   - title
   - probability
   - impact
   - risk score
   - status
   - owner
   - mitigation summary
4. explanation note area
5. export action area

pc_note:
Uses dense risk table with mitigation column.

smartphone_note:
Uses stacked risk cards with score emphasis.
