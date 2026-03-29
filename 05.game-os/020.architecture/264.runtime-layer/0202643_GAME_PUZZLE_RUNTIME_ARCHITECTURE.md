# ============================================================
# GAME PUZZLE RUNTIME ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official Puzzle runtime of GameOS.

This runtime family covers:

- stage-clear puzzle
- score attack puzzle
- time-limited puzzle
- combo puzzle
- collection puzzle
- light logic puzzle

This runtime is part of GameOS Runtime Layer.

It defines execution semantics for:
- stage lifecycle
- clear conditions
- fail conditions
- score calculation
- retry behavior
- reward interaction
- ranking interaction
- preview-safe sandbox execution


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The Puzzle Runtime is a declarative stage runtime.

Creators do not define arbitrary engine code.
Creators define:

- stage sequence
- stage rule set
- clear conditions
- fail conditions
- score rules
- retry rules
- reward rules
- ranking candidate rules
- asset bindings

The runtime interprets those declarations.

The Puzzle Runtime must support:

- beginner template puzzle creation
- standard multi-stage puzzle creation
- advanced but declarative scoring variation

without losing predictability.


# ============================================================
# 2. CORE EXECUTION OBJECTS
# ============================================================

The Puzzle Runtime must operate on the following execution objects:

- stage
- stage rule
- clear condition
- fail condition
- score rule
- retry rule
- reward rule
- ranking candidate state
- save candidate state

Minimum runtime truth objects:

- stage progression state
- score candidate state
- clear/fail resolution state
- retry resolution state


# ============================================================
# 3. STAGE MODEL
# ============================================================

A stage is the primary execution unit.

Each stage must define:

- stage_id
- stage_type
- entry_conditions
- stage_rule_set
- clear_conditions
- fail_conditions
- reward_rule
- next_stage_resolution_rule

stage_type examples:
- normal
- timed
- score_attack
- collection
- boss_puzzle
- tutorial
- challenge

A stage must remain self-descriptive.

A stage may not rely on hidden runtime mutation
outside approved Puzzle Runtime semantics.


# ============================================================
# 4. CLEAR CONDITION MODEL
# ============================================================

Clear conditions must be declarative.

Allowed clear condition categories:

- reach_score_threshold
- complete_pattern
- collect_target_count
- survive_until_timer_end
- remove_target_objects
- satisfy_board_state
- solve_logic_target

Each clear condition must define:

- condition_id
- condition_type
- threshold_or_target
- evaluation_timing
- combination_rule

Clear resolution must always be explainable
through explicit state.


# ============================================================
# 5. FAIL CONDITION MODEL
# ============================================================

Fail conditions must be declarative.

Allowed fail condition categories:

- timer_expired
- move_limit_exceeded
- board_locked
- invalid_state_reached
- survival_condition_failed
- objective_unreachable

Each fail condition must define:

- condition_id
- condition_type
- threshold_or_target
- evaluation_timing
- fail_priority_rule

Fail resolution must remain deterministic.


# ============================================================
# 6. SCORE MODEL
# ============================================================

Score calculation must be explicit.

Allowed score contributors:

- base_clear_score
- combo_score
- speed_bonus
- move_bonus
- collection_bonus
- chain_bonus
- no_fail_bonus
- hidden_condition_bonus

Each score rule must define:

- score_rule_id
- contributor_set
- formula_profile
- cap_rule
- tie_rule

The runtime must not allow hidden score mutation.

All ranking-relevant score output must be reproducible
from explicit state and telemetry candidates.


# ============================================================
# 7. RETRY MODEL
# ============================================================

Retry behavior must be formal.

Retry categories may include:

- immediate_retry
- limited_retry
- checkpoint_retry
- stage_restart_only
- no_retry

Each retry rule must define:

- retry_rule_id
- retry_mode
- retry_limit
- retry_cost_rule
- restore_state_rule

The runtime must make retry impact explicit.

Retry must not silently mutate production reward truth.


# ============================================================
# 8. STAGE PROGRESSION
# ============================================================

Puzzle Runtime must support explicit stage progression.

Progression may include:

- linear stage unlock
- star-based unlock
- score-based unlock
- collection-based unlock
- challenge unlock
- branch unlock

Unlock conditions must be explicit.

No hidden progression mutation is allowed.

Progression state must remain replayable
from accepted runtime outcomes.


# ============================================================
# 9. REWARD MODEL
# ============================================================

Rewards must be declarative.

Reward categories may include:

- stage clear reward
- perfect clear reward
- score threshold reward
- collection reward
- progression unlock reward
- cosmetic unlock reward

Each reward rule must define:
- reward source
- reward conditions
- reward payload
- reward eligibility rule

The runtime must keep reward generation explicit
for validation and anti-exploit purposes.


# ============================================================
# 10. RANKING INTERACTION
# ============================================================

Puzzle Runtime may produce ranking candidates.

Ranking candidates may include:

- high_score_candidate
- fastest_clear_candidate
- least_moves_candidate
- challenge_clear_candidate

Runtime must define:
- what values are candidate values
- what tie rules exist
- what conditions invalidate candidate submission

Client-side ranking results remain untrusted
until GameOS sync adjudication accepts them.


# ============================================================
# 11. SAVE CONTINUITY
# ============================================================

Puzzle Runtime may support formal save continuity.

Saveable categories may include:

- stage unlock state
- best score state
- reward unlock state
- challenge completion state
- collection progression state

Unsuitable direct-authority categories may include:
- raw in-stage transient board state
- unverified client perfect clear outcome
- unverified ranking finality

The runtime must make clear:
- what is saveable
- what is derived
- what is transient


# ============================================================
# 12. PREVIEW SANDBOX
# ============================================================

Preview must be sandboxed.

Preview may simulate:
- stage execution
- score accumulation
- clear/fail resolution
- retry behavior
- unlock behavior
- reward preview

Preview must not perform:
- production ranking mutation
- production achievement mutation
- production commerce mutation
- production entitlement mutation

Preview state must be discardable.


# ============================================================
# 13. EXPORT MODEL
# ============================================================

Puzzle export must freeze:

- runtime family
- ruleset profile
- stage sequence
- clear conditions
- fail conditions
- score rules
- retry rules
- reward rules
- ranking candidate rules
- asset bindings

A Puzzle export package must be runtime-unambiguous.

One export package may bind to only one active Puzzle runtime profile.


# ============================================================
# 14. VALIDATION RULES
# ============================================================

Puzzle Runtime must support three validation levels.

## Editing validation
- missing clear condition
- missing fail condition
- invalid score reference
- invalid reward reference
- invalid next stage target

## Export validation
- broken stage sequence
- unresolved condition reference
- conflicting clear/fail rules
- impossible unlock structure
- missing required assets
- invalid retry configuration

## Publish validation
- unresolved runtime metadata
- disallowed monetization linkage
- unresolved age/content flags
- invalid ranking candidate configuration

Blocking errors must prevent export.


# ============================================================
# 15. SYNC INTERACTION MODEL
# ============================================================

Puzzle Runtime may produce submit-worthy candidates only through approved boundaries.

Possible candidates:
- save snapshot candidate
- stage clear candidate
- score candidate
- achievement candidate
- ranking candidate
- replay candidate
- telemetry candidate

Client-side Puzzle outcomes remain untrusted
until GameOS sync adjudication accepts them.

Puzzle Runtime must not directly finalize:
- platform ranking truth
- platform achievement truth
- entitlement truth
- commerce truth


# ============================================================
# 16. TEMPLATE COMPATIBILITY
# ============================================================

Puzzle Runtime must support template-driven creation.

Required supported template families:
- stage clear puzzle
- score attack puzzle
- timed puzzle
- combo puzzle
- collection puzzle

Each template must declare:
- required stage blocks
- required clear conditions
- required fail conditions
- required score rules
- required reward definitions
- required asset families

Puzzle Runtime must expose editable zones safely
to Builder.


# ============================================================
# 17. CUSTOMIZATION RULE
# ============================================================

Allowed customization:
- stage expansion
- clear/fail tuning
- score formula tuning
- retry tuning
- reward tuning
- UI skin replacement
- challenge structure expansion

Prohibited customization:
- arbitrary execution code injection
- unrestricted state mutation
- hidden non-declarative scoring logic
- unrestricted ranking finalization

Advanced override is allowed only
through runtime-approved override zones.


# ============================================================
# 18. FINAL ARCHITECTURAL RULE
# ============================================================

The Puzzle Runtime is an official GameOS runtime family.

It defines how puzzle-like games execute safely and predictably
inside GameOS.

Core summary:

- stages are primary execution units
- clear/fail conditions are declarative
- score rules are explicit
- retry behavior is formal
- reward and ranking candidates are explicit
- preview is sandboxed
- export is runtime-frozen
