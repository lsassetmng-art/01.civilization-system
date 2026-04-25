# ============================================================
# K4 REVIEW PIPELINE EXACT PAYLOAD
# ============================================================

status: exact-payload
domain: review-pipeline
prepared_by: Zero
owner: Boss

supporting_canonical_objects:
- review_queue_item
- ai_review_job
- human_review_task
- review_decision_record
- review_dimension_result
- re_review_request
- restoration_review_record
- review_alert_projection

screen_support_projection_shape:
{
  success: true,
  data: {
    queue_scope?,
    queue_summary?: {
      pending_count?,
      overdue_count?,
      escalation_count?
    },
    items?: [
      {
        review_queue_item_id,
        target_type,
        target_id,
        priority_class,
        assignment_state,
        due_at?,
        created_at,
        updated_at
      }
    ]
  },
  meta?: {
    request_id?,
    projection_generated_at?
  }
}

review_alert_list_shape:
{
  success: true,
  data: {
    items: [
      {
        review_alert_record_id,
        alert_type,
        target_type,
        target_id,
        priority_class,
        due_at?,
        read_flag?,
        created_at,
        updated_at
      }
    ]
  },
  meta?: {
    limit?,
    offset?,
    cursor?,
    total_count?
  }
}

field_rules:
- review queue item identity remains distinct from review decision identity
- AI review, human review, and decision records remain distinct objects
- review alert is projection/alert object, not review decision object
- affected requester sees only limited outcome subset, not raw reviewer workspace

not_returned_publicly:
- raw AI scoring payload
- raw internal rule-evaluation matrix
- internal reviewer assignment notes
- internal escalation routing markers
