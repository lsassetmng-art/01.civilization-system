# ============================================================
# PERSONA VISUAL RUNTIME
# ============================================================

status: canonical
component: persona-visual-runtime

owner: Boss
prepared_by: Zero

# PURPOSE

Manage persona visual identity generation.

# FLOW

visual-generation-job-create
↓
visual-compose
↓
client render
↓
visual-render-result-commit

# STORAGE

final visual assets stored in storage buckets.

