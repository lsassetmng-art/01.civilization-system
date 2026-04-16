# ============================================================
# PERSONAL FINANCE LITE ARCHITECTURE
# ============================================================

status: canonical-draft
system: life-os
layer: architecture
domain: personal-finance-lite
owner: Boss
prepared_by: Zero

purpose:
Defines the lightweight personal spending and budget architecture inside LifeOS.

summary:
personal-finance-lite handles private daily-life spending meaning,
not enterprise accounting.
It supports simple expense capture, category grouping,
budget review, recurring cost awareness, and spending alerts.

# ============================================================
# 1. ARCHITECTURAL ROLE
# ============================================================

personal-finance-lite is responsible for:
- private expense recording
- budget recording
- recurring cost awareness
- spending category grouping
- spending trend summaries
- spending alert support

personal-finance-lite is not responsible for:
- bookkeeping
- tax calculation
- payroll
- business accounting
- ERP final truth

# ============================================================
# 2. CORE COMPONENTS
# ============================================================

1. expense recorder
- stores personal expense facts
- stores time, amount, category, optional note

2. budget manager
- stores target budget frames
- stores period meaning
- stores review comparison state

3. recurring cost tracker
- stores repeating private costs
- supports review of baseline burden

4. trend evaluator
- builds lightweight patterns
- compares recent periods
- produces understandable summaries

5. spending alert generator
- signals overspend risk
- signals unusual increase
- feeds review and reminder domains

# ============================================================
# 3. DATA MOVEMENT
# ============================================================

input:
- manual expense input
- quick-add expense input
- optional household-linked shopping cost input

processing:
- normalize spending categories
- attach period frame
- compare against budget
- produce trend summaries
- produce alert candidates

output:
- dashboard summaries
- weekly review inputs
- budget review cards
- spending alert candidates
- assistant explanation basis

# ============================================================
# 4. BOUNDARIES
# ============================================================

with BusinessOS:
- business spending and company accounting never belong here

with ERP:
- ERP is not downstream truth for ordinary private-life expenses by default

with home-and-living:
- household purchase context may connect
- finance meaning remains separate from home maintenance meaning

# ============================================================
# 5. REQUIRED SUB-MODELS
# ============================================================

- life personal expense
- life budget
- life spending category
- life recurring cost
- life spending alert
- life payment method
- life spending trend

# ============================================================
# 6. ARCHITECTURAL PRINCIPLES
# ============================================================

- lightweight by design
- daily usability over accounting perfection
- private-scope clarity
- summary over ledger complexity
