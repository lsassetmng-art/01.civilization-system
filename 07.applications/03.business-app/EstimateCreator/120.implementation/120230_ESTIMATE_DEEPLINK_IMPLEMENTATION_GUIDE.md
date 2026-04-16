# ============================================================
# ESTIMATE DEEPLINK IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide defines how deeplink entry should be implemented safely.

# ============================================================
# 2. REQUIRED DEEPLINK PARAMETERS
# ============================================================

Representative deeplink parameters:

- source_app
- source_screen
- mode
- estimate_id
- customer_id
- opportunity_id
- draft_id
- readonly

These parameters provide launch context only.

# ============================================================
# 3. SESSION RULE
# ============================================================

When opened by deeplink:

- shared BusinessOS session should be resolved
- redundant login UI should be skipped only when session is valid
- authorization checks must still run
- invalid shared session must fallback safely or fail closed

# ============================================================
# 4. SECURITY RULE
# ============================================================

Raw credentials must not be passed in deeplink business parameters.

# ============================================================
# 5. ROUTING RULE
# ============================================================

Validated deeplink context should route into the same canonical workspace logic
used after standalone entry.

