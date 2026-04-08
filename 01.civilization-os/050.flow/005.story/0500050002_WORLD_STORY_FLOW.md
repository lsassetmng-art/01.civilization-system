# ============================================================
# WORLD STORY FLOW
# ============================================================

status: canonical
layer: flow
domain: story
subdomain: world-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines process flow for world-story handling.

scope:
Covers region, city, nation,
or civilization-level story resolution,
public-safe summary delivery,
internal richer delivery,
and historical replay.

required_behavior:
- Bind world scope.
- Resolve current world story.
- Validate stage and primary conflict.
- Deliver public-safe summary and/or internal richer story.
- Support replay path.

flow_state_model:
world_story_flow_state:
- requested
- world_bound
- story_resolved
- stage_validated
- public_delivered
- internal_delivered
- replay_delivered
- blocked

world_story_sequence:
1. receive world-story request
2. bind world scope
3. resolve active world story
4. validate stage and primary conflicts
5. select delivery projection
6. deliver public or internal path

failure_codes:
- WORLD_STORY_FLOW_SCOPE_MISSING
- WORLD_STORY_FLOW_STAGE_INVALID
- WORLD_STORY_FLOW_PRIMARY_CONFLICT
- WORLD_STORY_FLOW_PUBLIC_PROJECTION_VIOLATION

example_scenarios:
- A city reconstruction storyline is shown publicly as a safe summary.
- Internal operators see deeper active-stage details for the same story.

validation_rules:
- canonical scope binding is required
- invalid or ambiguous state must block delivery
- live and historical paths must remain distinct where applicable

decision_matrix:
- valid request + valid scope + valid path -> deliver
- invalid scope or invalid state -> block
- historical request without history path -> block
- restricted path without authority where relevant -> block
