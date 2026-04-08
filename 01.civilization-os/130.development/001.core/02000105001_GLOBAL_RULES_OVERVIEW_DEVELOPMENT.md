# ============================================================
# GLOBAL RULES OVERVIEW
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines rollout of global rule resolution.

# 2. BUILD ORDER

1. define rule registry schema
2. implement precedence resolver
3. add effective-window validation
4. add caller scope filter
5. add trace logging

# 3. TEST STRATEGY

- conflict detection test
- effective period resolution test
- unauthorized scope test
- fallback test

# 4. RELEASE

Migrate registry first, then enable lookup consumers.

# 5. RISKS

- conflicting active rules
- caller misuse of global scope
