# ============================================================
# VALUE CONTROL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: civilization

# ============================================================
# DEFINITION
# ============================================================

All monetary values must be controlled by database.

No hardcoded values are allowed.

# ============================================================
# VALUE MASTER
# ============================================================

value_master:

- value_id
- value_type
- amount
- currency_type
- effective_from
- effective_to
- conditions

# ============================================================
# RULE
# ============================================================

- all values must be retrieved from DB
- logic-based calculation is prohibited
- condition-based evaluation must be supported
- time-based versioning must be supported

# ============================================================
# TARGET
# ============================================================

- salary
- item_price
- exam_fee
- tax_rate
- reward
- dividend

# ============================================================
# PURPOSE
# ============================================================

- enable dynamic economy control
- allow system-wide balancing
- support live tuning without code changes

