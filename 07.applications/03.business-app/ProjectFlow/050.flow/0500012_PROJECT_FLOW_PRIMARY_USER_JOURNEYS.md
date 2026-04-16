# ============================================================
# PROJECT FLOW PRIMARY USER JOURNEYS
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines main user journeys for daily operation.

journey_1_daily_manager_check:
1. open dashboard
2. review overdue and high risk summary
3. open project detail or task list
4. update status or assign follow-up
5. open report editor if reporting is needed

journey_2_member_daily_update:
1. open task list
2. open assigned task
3. update progress or status
4. register time entry
5. return to task list

journey_3_customer_explanation_preparation:
1. open project detail or project list
2. open export
3. generate spreadsheet output
4. open report editor
5. generate and edit progress report draft
6. finalize explanation material after review

journey_4_sync_failure_review:
1. open sync status
2. inspect failed or partially failed request
3. review error detail
4. retry when allowed
5. return to related project detail

journey_5_unpaid_read_only_user:
1. open dashboard or list
2. browse project and task details
3. see disabled actions for blocked operations
4. remain in view-only mode until entitlement changes
