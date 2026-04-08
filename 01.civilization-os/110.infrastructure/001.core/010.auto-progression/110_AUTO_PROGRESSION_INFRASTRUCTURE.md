# ============================================================
# AUTO PROGRESSION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for automatic progression.

# 2. INFRASTRUCTURE SCOPE

- progression scheduler host
- checkpoint persistence dependency
- timing source dependency
- halt/restart recovery path

# 3. INFRASTRUCTURE RULES

- progression requires a stable scheduling source
- checkpoint storage must be durable before resume is allowed
- restart path must preserve last valid checkpoint
- infrastructure instability must halt progression rather than drift

