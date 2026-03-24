# ============================================================
# GAME PROGRESSION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for quest, mission progress, reward grant,
inventory item, crafting result, progression, and ranking handling.

runtime_scope:
- validate progression target
- validate player, quest, and reward basis
- enforce idempotent reward and crafting updates
- preserve progression traceability

trigger_conditions:
- quest activated
- mission progress recorded
- reward requested
- crafting requested
- ranking updated

processing_steps:
1 resolve progression target
2 verify player, quest, reward, and source-state basis
3 verify idempotency basis where applicable
4 apply progression state transition
5 persist progression result
6 preserve audit and progression trace

state_transition:
- draft -> approved
- approved -> active
- active -> retired
- current -> revised
- revised -> completed
- pending -> granted
- pending -> failed
- granted -> reversed
- pending -> crafted
- crafted -> reversed
- current -> level_up
- current -> locked

success_condition:
- game progression lifecycle handled once effectively

failure_condition:
- invalid target
- player, quest, or reward basis unresolved
- duplicate effective reward or crafting action
- persistence failure
