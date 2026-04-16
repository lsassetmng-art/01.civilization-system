# ============================================================
# FORECAST DRAFT MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: forecast_draft
owner: Boss
prepared_by: Zero

purpose:
Represents a working forecast draft.

fields:
- forecast_id
- tier_code
- owner_user_id
- company_id
- title
- forecast_scope_code
- target_object_type
- target_object_id
- period_start
- period_end
- grain_code
- demand_direction_code
- demand_strength_code
- forecast_quantity
- forecast_amount
- confidence_code
- created_at
- updated_at
- deleted_at

notes:
This is a working forecast object,
not automatically an official enterprise authority record.
