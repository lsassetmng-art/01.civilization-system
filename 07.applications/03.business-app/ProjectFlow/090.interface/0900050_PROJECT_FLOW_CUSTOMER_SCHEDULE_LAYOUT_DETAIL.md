# ============================================================
# PROJECT FLOW CUSTOMER SCHEDULE LAYOUT DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

material:
customer_facing_schedule

layout:
1. header area
   - project name
   - material type
   - source type
   - review state
2. summary strip
   - current phase
   - current milestone
   - next milestone
   - target completion
3. main preview area
   - phase list or grouped schedule table
   - milestone emphasis row
   - optional simplified timeline
4. wording and visibility adjustment area
   - visible phases
   - visible milestones
   - annotation note
5. export action area
   - xlsx
   - csv
   - explanation material output

pc_note:
May show schedule preview and wording editor side by side.

smartphone_note:
Uses stacked blocks with milestone summary above preview.
