# ============================================================
# HOME AND LIVING ARCHITECTURE
# ============================================================

status: canonical-draft
system: life-os
layer: architecture
domain: home-and-living
owner: Boss
prepared_by: Zero

purpose:
Defines the canonical architecture for housework, shopping, daily supplies,
inventory, cleaning cycles, and home reminders in LifeOS.

summary:
home-and-living is the daily-life maintenance domain of LifeOS.
It structures the practical work required to keep living space functional,
supplies available, and recurring household activity sustainable.

# ============================================================
# 1. ARCHITECTURAL ROLE
# ============================================================

home-and-living is responsible for:
- home task management
- daily supply tracking
- shopping list support
- household routine support
- cleaning-cycle support
- low-stock detection
- replenishment reminder support

home-and-living is not responsible for:
- enterprise purchasing
- shared organization procurement
- business inventory
- smart-home hardware control as a primary duty

# ============================================================
# 2. CORE COMPONENTS
# ============================================================

1. home task manager
- stores household tasks
- stores due timing
- stores recurrence
- stores completion state

2. shopping manager
- stores shopping items
- stores grouped list views
- stores urgency and necessity

3. inventory tracker
- stores household inventory units
- stores expected depletion tendency
- stores replenishment thresholds

4. cleaning cycle tracker
- stores routine cleaning cycles
- stores elapsed time and due state

5. home reminder generator
- suggests action timing
- reminds before shortage or overdue maintenance

# ============================================================
# 3. DATA MOVEMENT
# ============================================================

input:
- direct user input
- routine templates
- completion actions
- stock refresh actions

processing:
- normalize household objects
- evaluate due state
- detect shortage signal
- build reminder candidates
- feed weekly review

output:
- dashboard task cards
- shopping list views
- stock warning candidates
- recurring home task reminders
- review summaries

# ============================================================
# 4. BOUNDARIES
# ============================================================

with personal-finance-lite:
- shopping cost may be linked, but home-and-living owns household necessity meaning
- finance domain owns expense interpretation

with family-household-boundary:
- shared and private household objects must be separable

with assistant-orchestration:
- reminders and gentle prompts are delivered through orchestration policy

# ============================================================
# 5. REQUIRED SUB-MODELS
# ============================================================

- life home task
- life shopping item
- life inventory item
- life cleaning cycle
- life home reminder
- life household routine
- life supply shortage signal

# ============================================================
# 6. ARCHITECTURAL PRINCIPLES
# ============================================================

- daily-life utility first
- low-friction input
- recurrence must be first-class
- stock meaning must remain simple
- shared/private scope must remain clear
