# ============================================================
# PERSONA OS MODEL STRUCTURE
# ============================================================

status: formal
scope: persona-os
layer: model

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the formal canonical model structure
for PersonaOS.

This document fixes:

- model domain structure
- model granularity
- model numbering rule
- layer 1 core models
- layer 2 expansion models

This document is the canonical reference
for PersonaOS model design.


# ============================================================
# NUMBERING RULE
# ============================================================

Model ID format:

Ssddddmmmm

Where:

Ss
System number

dddd
Domain number

mmmm
Model number


# ============================================================
# SYSTEM NUMBER
# ============================================================

PersonaOS system number:

03


# ============================================================
# DOMAIN RULE
# ============================================================

Domain folders must use:

ddd.domain_name

Examples:

010.identity
020.cognition
030.emotion

Model files must use full model ID:

ssddddmmmm_model_name.md

Examples:

0300100001_persona.md
0300200001_cognition.md
0300800008_persona_memory.md


# ============================================================
# DOMAIN NUMBER RULE
# ============================================================

Domain numbers are 4 digits internally.

Examples:

0010 identity
0020 cognition
0030 emotion

Folders use 3-digit display prefixes.

Examples:

010.identity
020.cognition
030.emotion

Domains increment by 10.


# ============================================================
# MODEL GRANULARITY RULE
# ============================================================

One model represents one stable concept.

MODEL != table
MODEL != column
MODEL != field

A model must define a conceptual unit
within PersonaOS.

Examples of valid model granularity:

persona
persona_identity
reasoning
emotion
behavior
persona_memory
persona_relationship

Examples of invalid model granularity:

persona_name_field
persona_status_column
persona_table_row


# ============================================================
# FORMAL DOMAIN STRUCTURE
# ============================================================

010.identity
020.cognition
030.emotion
040.behavior
050.communication
060.social
070.capability
080.knowledge
090.schedule
100.finance
110.security
120.logs
130.simulation
140.visual
150.voice


# ============================================================
# LAYER STRUCTURE
# ============================================================

Layer 1:
Core conceptual models

Layer 2:
Expansion models derived from Layer 1
without descending into table/column granularity


# ============================================================
# 0010 IDENTITY
# ============================================================

Layer 1

0300100001 persona
0300100002 persona_identity
0300100003 persona_profile
0300100004 persona_state
0300100005 persona_lifecycle

Layer 2

0300100006 persona_role
0300100007 persona_trait
0300100008 persona_value
0300100009 persona_goal
0300100010 persona_alignment
0300100011 persona_objective
0300100012 persona_priority
0300100013 persona_strategy
0300100014 persona_self_model
0300100015 persona_self_awareness


# ============================================================
# 0020 COGNITION
# ============================================================

Layer 1

0300200001 cognition
0300200002 reasoning
0300200003 decision
0300200004 planning
0300200005 learning

Layer 2

0300200006 reasoning_strategy
0300200007 decision_context
0300200008 planning_goal
0300200009 learning_feedback
0300200010 attention
0300200011 decision_policy
0300200012 decision_option
0300200013 decision_evaluation
0300200014 goal_planning
0300200015 perception
0300200016 perception_event
0300200017 attention_context
0300200018 context_state
0300200019 learning_model
0300200020 learning_event
0300200021 persona_goal
0300200022 persona_strategy
0300200023 persona_decision
0300200024 decision_tree
0300200025 persona_learning_state
0300200026 persona_world_model


# ============================================================
# 0030 EMOTION
# ============================================================

Layer 1

0300300001 emotion
0300300002 mood
0300300003 motivation
0300300004 wellbeing

Layer 2

0300300005 emotion_state
0300300006 emotion_vector
0300300007 emotion_trigger
0300300008 emotion_history
0300300009 emotion_regulation
0300300010 emotion_expression


# ============================================================
# 0040 BEHAVIOR
# ============================================================

Layer 1

0300400001 behavior
0300400002 action
0300400003 task
0300400004 habit

Layer 2

0300400005 task_execution
0300400006 action_sequence


# ============================================================
# 0050 COMMUNICATION
# ============================================================

Layer 1

0300500001 communication
0300500002 message
0300500003 conversation

Layer 2

0300500005 dialogue_context
0300500006 message_intent
0300500007 message_response


# ============================================================
# 0060 SOCIAL
# ============================================================

Layer 1

0300600001 social_relation
0300600002 social_role
0300600003 group

Layer 2

0300600004 social_network
0300600005 social_trust
0300600006 social_influence
0300600007 persona_relationship
0300600008 relationship_state
0300600009 relationship_event
0300600010 social_interaction
0300600011 social_perception
0300600012 social_signal
0300600014 persona_trust


# ============================================================
# 0070 CAPABILITY
# ============================================================

Layer 1

0300700001 capability
0300700002 skill
0300700003 competency

Layer 2

0300700004 capability_profile
0300700005 capability_development


# ============================================================
# 0080 KNOWLEDGE
# ============================================================

Layer 1

0300800001 knowledge
0300800002 memory
0300800003 experience

Layer 2

0300800004 knowledge_graph
0300800005 knowledge_fact
0300800006 knowledge_rule
0300800007 knowledge_source
0300800008 persona_memory
0300800009 persona_event
0300800010 persona_snapshot
0300800011 persona_history
0300800012 persona_experience
0300800013 persona_growth
0300800014 memory_index
0300800015 memory_retrieval
0300800016 memory_decay
0300800017 persona_memory
0300800018 persona_experience


# ============================================================
# 0090 SCHEDULE
# ============================================================

Layer 1

0300900001 schedule
0300900002 event
0300900003 reminder

Layer 2

0300900004 schedule_plan
0300900005 schedule_event
0300900006 schedule_priority


# ============================================================
# 0100 FINANCE
# ============================================================

Layer 1

0301000001 finance_account
0301000002 transaction
0301000003 budget

Layer 2

0301000004 financial_activity
0301000005 resource_allocation


# ============================================================
# 0110 SECURITY
# ============================================================

Layer 1

0301100001 security_identity
0301100002 access_policy
0301100003 credential

Layer 2

0301100004 persona_guardrail
0301100005 behavior_constraint


# ============================================================
# 0120 LOGS
# ============================================================

Layer 1

0301200001 log_event
0301200002 audit_log
0301200003 event_stream

Layer 2

0301200004 persona_log
0301200005 decision_log


# ============================================================
# 0130 SIMULATION
# ============================================================

Layer 1

0301300001 simulation
0301300002 scenario
0301300003 simulation_event

Layer 2

0301300004 simulation_world
0301300005 simulation_actor
0301300006 simulation_outcome


# ============================================================
# 0140 VISUAL
# ============================================================

Layer 1

0301400001 visual_avatar
0301400002 visual_asset
0301400003 animation_profile

Layer 2

0301400004 visual_state
0301400005 visual_expression


# ============================================================
# 0150 VOICE
# ============================================================

Layer 1

0301500001 voice_profile
0301500002 voice_asset

Layer 2

0301500003 voice_state
0301500004 voice_expression


# ============================================================
# MINIMUM CANONICAL SET
# ============================================================

The following models define the minimum canonical core
of PersonaOS and must always exist conceptually.

persona
persona_identity
persona_profile
persona_state
persona_goal
cognition
reasoning
decision
planning
learning
emotion
mood
motivation
behavior
action
task
communication
message
conversation
social_relation
persona_relationship
capability
skill
knowledge
memory
persona_memory
persona_event
persona_history
schedule
event
reminder
security_identity
access_policy
audit_log
simulation
visual_avatar
voice_profile


# ============================================================
# STRUCTURAL PRINCIPLE
# ============================================================

PersonaOS is structured as a persona engine.

Core conceptual flow:

identity
↓
cognition
↓
emotion
↓
behavior

Supporting conceptual systems:

communication
social
capability
knowledge
schedule
finance
security
logs
simulation
visual
voice


# ============================================================
# BOUNDARY RULE
# ============================================================

PersonaOS defines micro-level persona models.

CivilizationOS defines macro-level civilization models.

PersonaOS models must not duplicate
CivilizationOS macro concepts such as:

world
civilization
institution
territory
population
law
market
governance

PersonaOS may reference those through persona-side concepts
but must remain persona-centered.


# ============================================================
# NOTES
# ============================================================

This document defines conceptual structure only.

Detailed table design,
runtime implementation,
event contracts,
and API structures
must be defined in separate documents.


# ============================================================
# STATUS
# ============================================================

This document is the formal canonical starting point
for PersonaOS model expansion.

