
# ============================================================
# ESTIMATE LAUNCH CONTEXT MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_launch_context stores normalized entry information
used when EstimateCreator is opened either by standalone launch
or by deeplink launch.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- launch_context_id
- launch_type
- source_app
- source_screen
- launch_mode
- estimate_id
- customer_id
- opportunity_id
- draft_id
- readonly
- received_at

# ============================================================
# 3. LAUNCH TYPE
# ============================================================

Representative launch_type values:

- standalone
- deeplink

# ============================================================
# 4. ROLE
# ============================================================

This model stores invocation context only.

It must not be treated as an authorization bypass mechanism.

