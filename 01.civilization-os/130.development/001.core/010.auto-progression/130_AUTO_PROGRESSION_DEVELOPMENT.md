# ============================================================
# AUTO PROGRESSION
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines development work for automatic progression.

# 2. WORK BREAKDOWN

- progression controller design
- active session and checkpoint handling
- pause/resume/stop command path
- abnormal stop reason handling
- catchup safety validation

# 3. TEST VIEW

- valid start
- duplicate session rejection
- valid resume from checkpoint
- invalid checkpoint rejection
- unsafe catchup rejection

