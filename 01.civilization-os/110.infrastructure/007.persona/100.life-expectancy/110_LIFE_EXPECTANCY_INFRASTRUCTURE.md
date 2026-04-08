# ============================================================
# LIFE EXPECTANCY
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for persona life expectancy.

# 2. INFRASTRUCTURE SCOPE

- expectancy-profile storage
- factor storage
- expectancy-state persistence
- adjustment/audit path

# 3. INFRASTRUCTURE RULES

- profile and factor provenance must remain durable
- expectancy state must persist before downstream publication
- adjustment must preserve reason durably
- infrastructure ambiguity must fail closed

