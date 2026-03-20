# ============================================================
# EXAM TICKET ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: civilization

# ============================================================
# DEFINITION
# ============================================================

Exam ticket issuance is controlled entirely by database.

# ============================================================
# SCHEDULE
# ============================================================

exam_schedule:

- exam_id
- exam_date
- ticket_sale_start
- ticket_sale_end
- active

# ============================================================
# RULE
# ============================================================

- ticket availability must be controlled by DB
- no hardcoded schedules
- sale period and exam date must be independent

# ============================================================
# DISPLAY
# ============================================================

Tickets appear in shop only when:

current_time >= ticket_sale_start
AND current_time <= ticket_sale_end
AND active = true

# ============================================================
# PURPOSE
# ============================================================

- dynamic control
- event flexibility
- operational safety

