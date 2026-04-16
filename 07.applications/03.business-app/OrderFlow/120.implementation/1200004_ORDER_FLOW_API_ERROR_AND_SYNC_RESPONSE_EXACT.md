# ============================================================
# ORDER FLOW API ERROR AND SYNC RESPONSE EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact response envelopes for success, validation failure,
authorization failure, and sync-related partial success.

# ============================================================
# 1. basic success envelope
# ============================================================

basic_success_envelope:
~~~json
{
  "ok": true,
  "message": "success",
  "data": {},
  "sync_state": {
    "sync_state_type": "local_only",
    "target_system_name": null
  }
}
~~~

# ============================================================
# 2. validation error envelope
# ============================================================

validation_error_envelope:
~~~json
{
  "ok": false,
  "error_code": "validation_error",
  "message": "required fields are missing or invalid",
  "field_errors": [
    {
      "field_name": "order_lines[0].ordered_quantity",
      "reason": "must be greater than zero"
    }
  ]
}
~~~

# ============================================================
# 3. authorization error envelope
# ============================================================

authorization_error_envelope:
~~~json
{
  "ok": false,
  "error_code": "authorization_error",
  "message": "access denied for this company or route"
}
~~~

# ============================================================
# 4. not found envelope
# ============================================================

not_found_envelope:
~~~json
{
  "ok": false,
  "error_code": "not_found",
  "message": "target order was not found"
}
~~~

# ============================================================
# 5. conflict envelope
# ============================================================

conflict_envelope:
~~~json
{
  "ok": false,
  "error_code": "state_conflict",
  "message": "operation is not allowed in current order state",
  "current_state": {
    "order_state": "draft",
    "shipment_status": "not_requested",
    "delivery_status": "not_confirmed"
  }
}
~~~

# ============================================================
# 6. sync partial success envelope
# ============================================================

sync_partial_success_envelope:
~~~json
{
  "ok": true,
  "message": "saved locally but ERP sync is pending",
  "data": {
    "order_id": "uuid"
  },
  "sync_state": {
    "sync_state_type": "pending",
    "target_system_name": "ERP"
  }
}
~~~

# ============================================================
# 7. sync failed envelope
# ============================================================

sync_failed_envelope:
~~~json
{
  "ok": true,
  "message": "saved locally but ERP sync failed",
  "data": {
    "order_id": "uuid"
  },
  "sync_state": {
    "sync_state_type": "failed",
    "target_system_name": "ERP",
    "last_error_code": "erp_timeout"
  }
}
~~~

# ============================================================
# 8. design rules
# ============================================================

rules:
  - business save success and sync success are separated
  - operator-visible sync meaning should remain explicit
  - validation errors should point to concrete fields
  - authorization failure should not leak sensitive details
