# ============================================================
# TEMPLATE SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Template screen manages default and user-defined estimate templates.

# ============================================================
# 2. PRIMARY UI ELEMENTS
# ============================================================

- template list
- category tabs or filter
- apply button
- create template button
- edit template button
- premium lock badge

# ============================================================
# 3. TEMPLATE ROW
# ============================================================

Each row should show:

- template name
- category
- owner scope
- app default or user template badge
- premium-only badge when applicable

# ============================================================
# 4. UX RULE
# ============================================================

Applying a template must feel fast,
while create/edit actions may remain premium-gated.



# ============================================================
# 5. TEMPLATE BILLING SURFACE
# ============================================================

Template screen should distinguish:

- app default free templates
- expanded premium templates
- user template create/edit actions

When Premium is inactive or expired:

- view of existing templates may remain allowed where policy permits
- create/edit actions must be locked clearly
- premium-only templates must display Premium lock state



# ============================================================
# 5. TEMPLATE BILLING SURFACE
# ============================================================

Template screen should distinguish:

- app default free templates
- expanded premium templates
- user template create/edit actions

When Premium is inactive or expired:

- view of existing templates may remain allowed where policy permits
- create/edit actions must be locked clearly
- premium-only templates must display Premium lock state



Additional template controls should include:

- locale filter
- industry category filter
- proposal summary template section

