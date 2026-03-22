# ============================================================
# CIVILIZATION MODEL DEPENDENCY MATRIX
# ============================================================

status: canonical
layer: model
scope: civilization.model.dependencies

owner: Boss
prepared_by: Zero


# PURPOSE

Define the dependency structure between model domains.

Dependencies must follow layer rules.


# CORE DEPENDENCIES

person -> household
person -> labor
person -> education
person -> healthcare

household -> housing
household -> economy

labor -> industry
industry -> economy

economy -> nation
nation -> governance

governance -> law
law -> regulation

market -> finance
finance -> banking


# TECHNOLOGY DEPENDENCIES

technology -> industry
ai -> data
data -> computing
computing -> infrastructure


# CIVILIZATION DEPENDENCIES

civilization -> governance
civilization -> economy
civilization -> infrastructure
civilization -> culture


# RULES

No reverse dependencies.

Lower domain layers must not depend on higher meta layers.

Explicit dependencies only.


