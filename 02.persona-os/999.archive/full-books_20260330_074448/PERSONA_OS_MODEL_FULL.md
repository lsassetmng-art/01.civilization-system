# ============================================================
# PERSONA OS MODEL FULL
# ============================================================

--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100001_persona.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300100001
model_name: persona

domain: 0010.identity
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents a persona entity within PersonaOS.


# ============================================================
# DESCRIPTION
# ============================================================

Persona is the fundamental entity representing an
autonomous or semi-autonomous digital personality.

A persona can represent:

- AI assistant
- digital agent
- character
- simulated individual
- system operator


# ============================================================
# CORE CONCEPT
# ============================================================

Persona acts as the root identity container
for all persona-related systems.

All cognitive, emotional, behavioral,
and social models reference a persona.


# ============================================================
# RELATIONS
# ============================================================

persona
 -> persona_identity
 -> persona_profile
 -> persona_state
 -> persona_lifecycle
 -> persona_memory
 -> persona_relationship


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100002_persona_identity.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300100002
model_name: persona_identity

domain: 0010.identity
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Defines the identity attributes of a persona.


# ============================================================
# DESCRIPTION
# ============================================================

Persona identity defines the stable identity
characteristics of a persona.

This includes:

- name
- identity type
- origin
- classification
- identity references


# ============================================================
# RELATIONS
# ============================================================

persona_identity
 -> persona
 -> persona_profile
 -> persona_role


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100003_persona_profile.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300100003
model_name: persona_profile

domain: 0010.identity
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Defines public persona attributes.


# ============================================================
# DESCRIPTION
# ============================================================

Persona profile represents the descriptive
representation of a persona.

Examples include:

- biography
- avatar reference
- public attributes
- descriptive information


# ============================================================
# RELATIONS
# ============================================================

persona_profile
 -> persona
 -> persona_identity


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100004_persona_metadata.md
--------------------------------------------------------------------------------

# MODEL
persona_metadata

model_id: 0300100004
domain: identity
system: persona_os

Additional metadata associated with persona.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100005_persona_lifecycle.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300100005
model_name: persona_lifecycle

domain: 0010.identity
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Defines lifecycle stages of a persona.


# ============================================================
# DESCRIPTION
# ============================================================

Lifecycle represents the long-term state
transitions of a persona.

Examples:

- creation
- activation
- evolution
- retirement


# ============================================================
# RELATIONS
# ============================================================

persona_lifecycle
 -> persona
 -> persona_state


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100006_persona_origin.md
--------------------------------------------------------------------------------

# MODEL
persona_origin

model_id: 0300100006
domain: identity
system: persona_os

Origin source of the persona.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100007_persona_personality.md
--------------------------------------------------------------------------------

# MODEL
persona_personality

model_id: 0300100008
domain: identity
system: persona_os

Personality configuration of persona.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100008_persona_goal.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300100009
model_name: persona_goal
domain: 0010.identity
system: 03.persona_os

# PURPOSE
Represents goal of persona.

# DESCRIPTION
Defines long-term objective pursued by persona.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100009_persona_alignment.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300100010
model_name: persona_alignment
domain: 0010.identity
system: 03.persona_os

# PURPOSE
Represents alignment or orientation of persona.

# DESCRIPTION
Defines directional orientation such as ethical or strategic alignment.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100010_persona_objective.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300100011
model_name: persona_objective

domain: 0010.identity
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents concrete objective of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Objective represents measurable target
derived from persona goals.


# ============================================================
# RELATIONS
# ============================================================

persona_objective
 -> persona_goal
 -> planning


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100011_persona_priority.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300100012
model_name: persona_priority

domain: 0010.identity
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents priority ranking of goals.


# ============================================================
# DESCRIPTION
# ============================================================

Priority defines ordering of goals
based on importance or urgency.


# ============================================================
# RELATIONS
# ============================================================

persona_priority
 -> persona_goal
 -> decision


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100012_persona_strategy.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300100013
model_name: persona_strategy

domain: 0010.identity
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents strategy used by persona.


# ============================================================
# DESCRIPTION
# ============================================================

Strategy defines long-term behavioral
approach used to achieve goals.


# ============================================================
# RELATIONS
# ============================================================

persona_strategy
 -> planning
 -> persona_goal


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100013_persona_self_model.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300100014
model_name: persona_self_model

domain: 0010.identity
system: 03.persona_os

# PURPOSE
Represents internal self representation.

# DESCRIPTION
Self model represents how a persona
perceives its own identity, abilities
and current state.

# RELATIONS
persona_self_model
 -> persona_identity
 -> persona_state
 -> persona_memory


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100014_persona_self_awareness.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300100015
model_name: persona_self_awareness

domain: 0010.identity
system: 03.persona_os

# PURPOSE
Represents awareness of internal state.

# DESCRIPTION
Self awareness represents capability
to recognize internal cognition,
emotion and behavior states.

# RELATIONS
persona_self_awareness
 -> persona_self_model
 -> emotion_state
 -> cognition


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100015_persona_state.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300100004
model_name: persona_state

domain: 0010.identity
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents the current operational state of a persona.


# ============================================================
# DESCRIPTION
# ============================================================

Persona state captures dynamic runtime
conditions of a persona.

Examples:

- active
- inactive
- suspended
- degraded


# ============================================================
# RELATIONS
# ============================================================

persona_state
 -> persona
 -> persona_lifecycle


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100016_persona_status.md
--------------------------------------------------------------------------------

# MODEL
persona_status

model_id: 0300100005
domain: identity
system: persona_os

Operational status of the persona.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100017_persona_identity_role.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300100006
model_name: persona_role
domain: 0010.identity
system: 03.persona_os

# PURPOSE
Represents role of persona.

# DESCRIPTION
Defines functional or social role assigned to persona.

# RELATIONS
persona_role -> persona


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100018_persona_system_role.md
--------------------------------------------------------------------------------

# MODEL
persona_role

model_id: 0300100007
domain: identity
system: persona_os

Assigned role or function of persona.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100019_persona_trait.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300100007
model_name: persona_trait
domain: 0010.identity
system: 03.persona_os

# PURPOSE
Represents personality trait.

# DESCRIPTION
Defines persistent characteristics of persona.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100020_persona_value.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300100008
model_name: persona_value
domain: 0010.identity
system: 03.persona_os

# PURPOSE
Represents core value of persona.

# DESCRIPTION
Defines ethical or motivational value system.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100021_persona_trait_set.md
--------------------------------------------------------------------------------

# MODEL
persona_traits

model_id: 0300100009
domain: identity
system: persona_os

Trait definitions of persona.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/010.identity/0300100022_persona_preference.md
--------------------------------------------------------------------------------

# MODEL
persona_preferences

model_id: 0300100010
domain: identity
system: persona_os

Preference configuration for persona.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200001_cognition.md
--------------------------------------------------------------------------------

# MODEL
cognition
model_id: 0300200001


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200002_reasoning.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200002
model_name: reasoning

domain: 0020.cognition
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Defines reasoning capability of a persona.


# ============================================================
# DESCRIPTION
# ============================================================

Reasoning represents logical processing
and interpretation of knowledge.

Examples include:

- deduction
- inference
- logical evaluation


# ============================================================
# RELATIONS
# ============================================================

reasoning
 -> cognition
 -> decision


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200003_decision.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200003
model_name: decision

domain: 0020.cognition
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents the decision making process of a persona.


# ============================================================
# DESCRIPTION
# ============================================================

Decision defines how a persona selects
actions based on reasoning, goals and context.


# ============================================================
# RELATIONS
# ============================================================

decision
 -> reasoning
 -> planning
 -> behavior


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200004_planning.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200004
model_name: planning

domain: 0020.cognition
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents planning capability of a persona.


# ============================================================
# DESCRIPTION
# ============================================================

Planning defines how a persona organizes
future actions and goals.


# ============================================================
# RELATIONS
# ============================================================

planning
 -> decision
 -> behavior


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200005_learning.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200005
model_name: learning

domain: 0020.cognition
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents the learning capability of a persona.


# ============================================================
# DESCRIPTION
# ============================================================

Learning allows the persona to adapt and
improve behavior based on experience.


# ============================================================
# RELATIONS
# ============================================================

learning
 -> cognition
 -> knowledge


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200006_reasoning_strategy.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300200006
model_name: reasoning_strategy
domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents reasoning strategy.

# DESCRIPTION
Defines structured method used by persona for reasoning.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200007_decision_context.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300200007
model_name: decision_context
domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents decision environment.

# DESCRIPTION
Defines contextual information used during decision making.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200008_planning_goal.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300200008
model_name: planning_goal
domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents planning target.

# DESCRIPTION
Defines specific objective used during planning.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200009_learning_feedback.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300200009
model_name: learning_feedback
domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents feedback for learning.

# DESCRIPTION
Defines signals used to improve future reasoning or behavior.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200010_attention.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300200010
model_name: attention
domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents cognitive focus.

# DESCRIPTION
Defines allocation of cognitive resources.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200011_decision_policy.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200011
model_name: decision_policy

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Defines decision rules used by persona.

# DESCRIPTION
Decision policy defines how decisions are evaluated
based on goals, values and context.

# RELATIONS
decision_policy
 -> decision
 -> persona_value


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200012_decision_option.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200012
model_name: decision_option

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents possible decision choice.

# DESCRIPTION
Decision option represents candidate action
evaluated during decision making.

# RELATIONS
decision_option
 -> decision
 -> behavior


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200013_decision_evaluation.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200013
model_name: decision_evaluation

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents evaluation of decision options.

# DESCRIPTION
Decision evaluation scores possible options
using reasoning and value systems.

# RELATIONS
decision_evaluation
 -> decision_option
 -> reasoning


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200014_goal_planning.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200014
model_name: goal_planning

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents planning process for goals.

# DESCRIPTION
Goal planning defines sequences of actions
needed to achieve persona goals.

# RELATIONS
goal_planning
 -> planning
 -> persona_goal


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200015_perception.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200015
model_name: perception

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents perception capability.

# DESCRIPTION
Perception represents how persona observes
environmental information.

# RELATIONS
perception
 -> attention
 -> knowledge


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200016_perception_event.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200016
model_name: perception_event

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents sensory event detected by persona.

# DESCRIPTION
Perception event represents observed
environmental signal.

# RELATIONS
perception_event
 -> perception
 -> persona_event


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200017_attention_context.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200017
model_name: attention_context

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents contextual focus of persona.

# DESCRIPTION
Attention context defines the situation
or domain currently prioritized by persona.

# RELATIONS
attention_context
 -> attention
 -> perception
 -> decision


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200018_context_state.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200018
model_name: context_state

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents environment context.

# DESCRIPTION
Context state represents relevant
environmental and situational information.

# RELATIONS
context_state
 -> perception
 -> decision_context


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200019_learning_model.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200019
model_name: learning_model

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents learning model.

# DESCRIPTION
Learning model defines mechanism used
to update knowledge or behavior.

# RELATIONS
learning_model
 -> learning
 -> knowledge_graph


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200020_learning_event.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200020
model_name: learning_event

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents learning trigger.

# DESCRIPTION
Learning event represents stimulus
that updates knowledge or capability.

# RELATIONS
learning_event
 -> learning
 -> persona_event


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200021_persona_cognitive_goal.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200021
model_name: persona_goal

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents objective pursued by persona.

# DESCRIPTION
Persona goal defines desired future state
that guides decision making and behavior.

# RELATIONS
persona_goal
 -> decision
 -> planning


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200022_persona_cognitive_strategy.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200022
model_name: persona_strategy

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents strategy used to achieve goals.

# DESCRIPTION
Persona strategy defines long-term
approach used to reach objectives.

# RELATIONS
persona_strategy
 -> persona_goal
 -> planning


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200023_persona_decision.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200023
model_name: persona_decision

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents decision made by persona.

# DESCRIPTION
Persona decision represents
selected action from alternatives.

# RELATIONS
persona_decision
 -> decision_log
 -> behavior


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200024_decision_tree.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200024
model_name: decision_tree

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents structured decision model.

# DESCRIPTION
Decision tree represents branching
logic used during reasoning.

# RELATIONS
decision_tree
 -> persona_decision
 -> cognition


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200025_persona_learning_state.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200025
model_name: persona_learning_state

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents current learning progress.

# DESCRIPTION
Persona learning state represents
current stage of knowledge acquisition.

# RELATIONS
persona_learning_state
 -> learning
 -> persona_memory


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/020.cognition/0300200026_persona_world_model.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300200026
model_name: persona_world_model

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents internal model of world.

# DESCRIPTION
Persona world model represents
persona understanding of environment
and entities.

# RELATIONS
persona_world_model
 -> knowledge_graph
 -> perception


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/030.emotion/0300300001_emotion.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300300001
model_name: emotion

domain: 0030.emotion
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents the emotional system of a persona.


# ============================================================
# DESCRIPTION
# ============================================================

Emotion represents affective states that influence
persona behavior and cognition.

Emotion affects:

- motivation
- decision making
- interaction
- wellbeing


# ============================================================
# RELATIONS
# ============================================================

emotion
 -> mood
 -> motivation
 -> wellbeing
 -> behavior


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/030.emotion/0300300002_mood.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300300002
model_name: mood

domain: 0030.emotion
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents longer-term emotional state.


# ============================================================
# DESCRIPTION
# ============================================================

Mood represents persistent emotional background
states that influence cognition and behavior.

Examples:

- positive mood
- neutral mood
- negative mood


# ============================================================
# RELATIONS
# ============================================================

mood
 -> emotion
 -> behavior
 -> cognition


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/030.emotion/0300300003_motivation.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300300003
model_name: motivation

domain: 0030.emotion
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Defines motivational drivers of a persona.


# ============================================================
# DESCRIPTION
# ============================================================

Motivation represents internal drives
that guide behavior and goal selection.


# ============================================================
# RELATIONS
# ============================================================

motivation
 -> emotion
 -> behavior
 -> decision


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/030.emotion/0300300004_wellbeing.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300300004
model_name: wellbeing

domain: 0030.emotion
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents emotional and mental health state.


# ============================================================
# DESCRIPTION
# ============================================================

Wellbeing represents the general psychological
condition of a persona.


# ============================================================
# RELATIONS
# ============================================================

wellbeing
 -> emotion
 -> mood


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/030.emotion/0300300005_emotion_state.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300300005
model_name: emotion_state
domain: 0030.emotion
system: 03.persona_os

# PURPOSE
Represents current emotional condition.

# DESCRIPTION
Defines emotional configuration at runtime.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/030.emotion/0300300006_emotion_vector.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300300006
model_name: emotion_vector
domain: 0030.emotion
system: 03.persona_os

# PURPOSE
Represents emotional intensity dimensions.

# DESCRIPTION
Defines multidimensional emotion representation.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/030.emotion/0300300007_emotion_trigger.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300300007
model_name: emotion_trigger
domain: 0030.emotion
system: 03.persona_os

# PURPOSE
Represents cause of emotion.

# DESCRIPTION
Defines event or stimulus generating emotion.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/030.emotion/0300300008_emotion_history.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300300008
model_name: emotion_history
domain: 0030.emotion
system: 03.persona_os

# PURPOSE
Represents emotional timeline.

# DESCRIPTION
Records past emotional states.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/030.emotion/0300300009_emotion_regulation.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300300009
model_name: emotion_regulation

domain: 0030.emotion
system: 03.persona_os

# PURPOSE
Represents regulation of emotional states.

# DESCRIPTION
Emotion regulation defines how persona
adjusts emotional responses.

# RELATIONS
emotion_regulation
 -> emotion_state
 -> cognition


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/030.emotion/0300300010_emotion_expression.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300300010
model_name: emotion_expression

domain: 0030.emotion
system: 03.persona_os

# PURPOSE
Represents expression of emotion.

# DESCRIPTION
Emotion expression defines how emotional
states are externally communicated.

# RELATIONS
emotion_expression
 -> emotion_state
 -> communication


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/040.behavior/0300400001_behavior.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300400001
model_name: behavior

domain: 0040.behavior
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Defines the behavioral system of a persona.


# ============================================================
# DESCRIPTION
# ============================================================

Behavior represents observable actions performed by a persona.

It defines how internal cognition, emotion and motivation
translate into external actions.


# ============================================================
# RELATIONS
# ============================================================

behavior
 -> action
 -> task
 -> habit
 -> decision


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/040.behavior/0300400002_action.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300400002
model_name: action

domain: 0040.behavior
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents a discrete action performed by a persona.


# ============================================================
# DESCRIPTION
# ============================================================

An action is a single behavioral execution
initiated by a persona.


# ============================================================
# RELATIONS
# ============================================================

action
 -> behavior
 -> task
 -> decision


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/040.behavior/0300400003_task.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300400003
model_name: task

domain: 0040.behavior
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents structured work performed by persona.


# ============================================================
# DESCRIPTION
# ============================================================

A task is a planned behavioral unit composed
of one or more actions.


# ============================================================
# RELATIONS
# ============================================================

task
 -> action
 -> planning
 -> schedule


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/040.behavior/0300400004_habit.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300400004
model_name: habit

domain: 0040.behavior
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents repeated behavioral pattern.


# ============================================================
# DESCRIPTION
# ============================================================

Habit represents behavior that occurs automatically
based on learned patterns.


# ============================================================
# RELATIONS
# ============================================================

habit
 -> behavior
 -> learning


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/040.behavior/0300400005_task_execution.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300400005
model_name: task_execution

domain: 0040.behavior
system: 03.persona_os

# PURPOSE
Represents execution of task.

# DESCRIPTION
Task execution defines runtime behavior
while persona performs a task.

# RELATIONS
task_execution
 -> task
 -> action


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/040.behavior/0300400006_action_sequence.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300400006
model_name: action_sequence

domain: 0040.behavior
system: 03.persona_os

# PURPOSE
Represents ordered actions.

# DESCRIPTION
Action sequence represents ordered
execution chain of actions.

# RELATIONS
action_sequence
 -> action
 -> task


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/050.communication/0300500001_communication.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300500001
model_name: communication

domain: 0050.communication
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents communication capability of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Communication defines how personas exchange
information and interact through messages
and conversations.


# ============================================================
# RELATIONS
# ============================================================

communication
 -> message
 -> conversation
 -> social_relation


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/050.communication/0300500002_message.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300500002
model_name: message

domain: 0050.communication
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents a communication message.


# ============================================================
# DESCRIPTION
# ============================================================

A message is a unit of communication
transmitted between personas.


# ============================================================
# RELATIONS
# ============================================================

message
 -> conversation
 -> communication


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/050.communication/0300500003_conversation.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300500003
model_name: conversation

domain: 0050.communication
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents multi-message dialogue interaction.


# ============================================================
# DESCRIPTION
# ============================================================

Conversation represents structured dialogue
between two or more personas.


# ============================================================
# RELATIONS
# ============================================================

conversation
 -> message
 -> communication
 -> social_relation


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/050.communication/0300500004_dialogue_context.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300500005
model_name: dialogue_context

domain: 0050.communication
system: 03.persona_os

# PURPOSE
Represents dialogue context.

# DESCRIPTION
Dialogue context maintains current
conversation state between personas
or between persona and user.

# RELATIONS
dialogue_context
 -> communication
 -> conversation


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/050.communication/0300500005_message_intent.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300500006
model_name: message_intent

domain: 0050.communication
system: 03.persona_os

# PURPOSE
Represents intent of message.

# DESCRIPTION
Message intent represents underlying
purpose of a communication message.

# RELATIONS
message_intent
 -> communication
 -> cognition


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/050.communication/0300500006_message_response.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300500007
model_name: message_response

domain: 0050.communication
system: 03.persona_os

# PURPOSE
Represents response in communication.

# DESCRIPTION
Message response defines reply
generated during interaction.

# RELATIONS
message_response
 -> communication
 -> behavior


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/060.social/0300600001_social_relation.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300600001
model_name: social_relation

domain: 0060.social
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents relationship between personas.


# ============================================================
# DESCRIPTION
# ============================================================

Social relations represent connections
such as friendship, partnership,
hierarchy or collaboration.


# ============================================================
# RELATIONS
# ============================================================

social_relation
 -> persona
 -> group
 -> social_role


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/060.social/0300600002_social_role.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300600002
model_name: social_role

domain: 0060.social
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents role of persona in a social structure.


# ============================================================
# DESCRIPTION
# ============================================================

Social role defines responsibilities,
authority and expectations.


# ============================================================
# RELATIONS
# ============================================================

social_role
 -> social_relation
 -> group


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/060.social/0300600003_group.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300600003
model_name: group

domain: 0060.social
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents collective entity.


# ============================================================
# DESCRIPTION
# ============================================================

Group represents a set of personas
organized for collaboration
or social structure.


# ============================================================
# RELATIONS
# ============================================================

group
 -> persona
 -> social_role
 -> social_relation


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/060.social/0300600004_social_network.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300600004
model_name: social_network
domain: 0060.social
system: 03.persona_os

# PURPOSE
Represents network of social relations.

# DESCRIPTION
Defines graph of persona interactions.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/060.social/0300600005_social_trust.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300600005
model_name: social_trust
domain: 0060.social
system: 03.persona_os

# PURPOSE
Represents trust level between personas.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/060.social/0300600006_social_influence.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300600006
model_name: social_influence
domain: 0060.social
system: 03.persona_os

# PURPOSE
Represents influence relationships between personas.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/060.social/0300600007_persona_relationship.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300600007
model_name: persona_relationship

domain: 0060.social
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents relationship between personas.


# ============================================================
# DESCRIPTION
# ============================================================

Persona relationship represents structured
connection between two or more personas.

Relationships may represent collaboration,
friendship, hierarchy or affiliation.


# ============================================================
# RELATIONS
# ============================================================

persona_relationship
 -> persona
 -> social_relation
 -> social_network


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/060.social/0300600008_relationship_state.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300600008
model_name: relationship_state

domain: 0060.social
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents current condition of relationship.


# ============================================================
# DESCRIPTION
# ============================================================

Relationship state defines dynamic condition
such as trust, cooperation level or conflict.


# ============================================================
# RELATIONS
# ============================================================

relationship_state
 -> persona_relationship
 -> social_trust


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/060.social/0300600009_relationship_event.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300600009
model_name: relationship_event

domain: 0060.social
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents event affecting relationship.


# ============================================================
# DESCRIPTION
# ============================================================

Relationship event represents interaction
or incident that modifies relationship state.


# ============================================================
# RELATIONS
# ============================================================

relationship_event
 -> persona_relationship
 -> persona_event


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/060.social/0300600010_social_interaction.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300600010
model_name: social_interaction

domain: 0060.social
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents interaction between personas.


# ============================================================
# DESCRIPTION
# ============================================================

Social interaction represents exchange
of actions, communication or influence
between personas.


# ============================================================
# RELATIONS
# ============================================================

social_interaction
 -> persona_relationship
 -> communication
 -> behavior


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/060.social/0300600011_social_perception.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300600011
model_name: social_perception

domain: 0060.social
system: 03.persona_os

# PURPOSE
Represents perception of social context.

# DESCRIPTION
Social perception represents ability
to interpret social signals and
relationships between personas.

# RELATIONS
social_perception
 -> social_network
 -> social_interaction


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/060.social/0300600012_social_signal.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300600012
model_name: social_signal

domain: 0060.social
system: 03.persona_os

# PURPOSE
Represents observable social cue.

# DESCRIPTION
Social signal represents communicative
signal influencing social interaction.

# RELATIONS
social_signal
 -> social_interaction
 -> communication


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/060.social/0300600013_persona_relationship_profile.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300600013
model_name: persona_relationship

domain: 0060.social
system: 03.persona_os

# PURPOSE
Represents relationship between personas.

# DESCRIPTION
Persona relationship stores trust,
familiarity and interaction history.

# RELATIONS
persona_relationship
 -> social_network
 -> persona


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/060.social/0300600014_persona_trust.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300600014
model_name: persona_trust

domain: 0060.social
system: 03.persona_os

# PURPOSE
Represents trust level.

# DESCRIPTION
Persona trust measures reliability
assigned to another persona.

# RELATIONS
persona_trust
 -> persona_relationship
 -> social_interaction


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/070.capability/0300700001_capability.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300700001
model_name: capability

domain: 0070.capability
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents functional ability of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Capability represents what a persona
is able to do.


# ============================================================
# RELATIONS
# ============================================================

capability
 -> skill
 -> competency


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/070.capability/0300700002_skill.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300700002
model_name: skill

domain: 0070.capability
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents specific learned ability.


# ============================================================
# DESCRIPTION
# ============================================================

Skill represents a trainable capability
such as language, reasoning or
task execution.


# ============================================================
# RELATIONS
# ============================================================

skill
 -> capability
 -> learning


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/070.capability/0300700003_competency.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300700003
model_name: competency

domain: 0070.capability
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents measurable ability level.


# ============================================================
# DESCRIPTION
# ============================================================

Competency defines proficiency level
of a capability or skill.


# ============================================================
# RELATIONS
# ============================================================

competency
 -> skill
 -> capability


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/070.capability/0300700004_capability_profile.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300700004
model_name: capability_profile

domain: 0070.capability
system: 03.persona_os

# PURPOSE
Represents capability structure.

# DESCRIPTION
Capability profile defines set
of abilities possessed by persona.

# RELATIONS
capability_profile
 -> capability
 -> skill


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/070.capability/0300700005_capability_development.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300700005
model_name: capability_development

domain: 0070.capability
system: 03.persona_os

# PURPOSE
Represents growth of capabilities.

# DESCRIPTION
Capability development represents
improvement of skills over time.

# RELATIONS
capability_development
 -> learning
 -> persona_growth


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/080.knowledge/0300800001_knowledge.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300800001
model_name: knowledge

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents knowledge system of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Knowledge represents structured information
that a persona can access and use for reasoning,
decision making and learning.

Knowledge may include facts, concepts,
rules and learned information.


# ============================================================
# RELATIONS
# ============================================================

knowledge
 -> memory
 -> experience
 -> cognition


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/080.knowledge/0300800002_memory.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300800002
model_name: memory

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents stored information.


# ============================================================
# DESCRIPTION
# ============================================================

Memory represents stored information
about events, interactions or knowledge
that a persona can recall.


# ============================================================
# RELATIONS
# ============================================================

memory
 -> knowledge
 -> experience
 -> learning


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/080.knowledge/0300800003_experience.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300800003
model_name: experience

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents experiential knowledge.


# ============================================================
# DESCRIPTION
# ============================================================

Experience represents knowledge acquired
through events and interactions.


# ============================================================
# RELATIONS
# ============================================================

experience
 -> memory
 -> learning
 -> behavior


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/080.knowledge/0300800004_knowledge_graph.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300800004
model_name: knowledge_graph
domain: 0080.knowledge
system: 03.persona_os

# PURPOSE
Represents graph structure of knowledge.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/080.knowledge/0300800005_knowledge_fact.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300800005
model_name: knowledge_fact
domain: 0080.knowledge
system: 03.persona_os

# PURPOSE
Represents atomic knowledge element.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/080.knowledge/0300800006_knowledge_rule.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300800006
model_name: knowledge_rule
domain: 0080.knowledge
system: 03.persona_os

# PURPOSE
Represents logical rule.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/080.knowledge/0300800007_knowledge_source.md
--------------------------------------------------------------------------------

# MODEL
model_id: 0300800007
model_name: knowledge_source
domain: 0080.knowledge
system: 03.persona_os

# PURPOSE
Represents origin of knowledge.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/080.knowledge/0300800008_persona_memory.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300800008
model_name: persona_memory

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents memory system of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Persona memory represents stored experiences,
interactions and learned information associated
with a persona.

Memory enables learning, reasoning and
long-term identity continuity.


# ============================================================
# RELATIONS
# ============================================================

persona_memory
 -> memory
 -> experience
 -> persona_event


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/080.knowledge/0300800009_persona_event.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300800009
model_name: persona_event

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents event experienced by persona.


# ============================================================
# DESCRIPTION
# ============================================================

Persona event represents significant occurrence
involving persona such as interaction,
decision or environmental change.


# ============================================================
# RELATIONS
# ============================================================

persona_event
 -> persona_memory
 -> experience
 -> emotion_trigger


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/080.knowledge/0300800010_persona_snapshot.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300800010
model_name: persona_snapshot

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents state snapshot of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Persona snapshot represents recorded state
of persona at a specific time including
emotion, cognition and behavior.


# ============================================================
# RELATIONS
# ============================================================

persona_snapshot
 -> persona_state
 -> persona_memory


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/080.knowledge/0300800011_persona_history.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300800011
model_name: persona_history

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents historical record of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Persona history represents chronological
record of major events and transitions
experienced by persona.


# ============================================================
# RELATIONS
# ============================================================

persona_history
 -> persona_event
 -> persona_snapshot


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/080.knowledge/0300800012_persona_experience.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300800012
model_name: persona_experience

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents interpreted experience.


# ============================================================
# DESCRIPTION
# ============================================================

Persona experience represents internalized
interpretation of events and interactions.


# ============================================================
# RELATIONS
# ============================================================

persona_experience
 -> persona_memory
 -> learning


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/080.knowledge/0300800013_persona_growth.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300800013
model_name: persona_growth

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents long-term development of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Persona growth represents gradual change
in capability, knowledge and personality
over time.


# ============================================================
# RELATIONS
# ============================================================

persona_growth
 -> persona_experience
 -> learning
 -> capability


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/080.knowledge/0300800014_memory_index.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300800014
model_name: memory_index

domain: 0080.knowledge
system: 03.persona_os

# PURPOSE
Represents indexing of persona memories.

# DESCRIPTION
Memory index organizes stored memories
to support retrieval and reasoning.

# RELATIONS
memory_index
 -> persona_memory
 -> memory


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/080.knowledge/0300800015_memory_retrieval.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300800015
model_name: memory_retrieval

domain: 0080.knowledge
system: 03.persona_os

# PURPOSE
Represents retrieval of stored memories.

# DESCRIPTION
Memory retrieval defines mechanism used
to recall past experiences and events.

# RELATIONS
memory_retrieval
 -> persona_memory
 -> memory_index


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/080.knowledge/0300800016_memory_decay.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300800016
model_name: memory_decay

domain: 0080.knowledge
system: 03.persona_os

# PURPOSE
Represents memory fading process.

# DESCRIPTION
Memory decay defines how stored
memories weaken over time.

# RELATIONS
memory_decay
 -> persona_memory
 -> memory


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/080.knowledge/0300800017_persona_memory_archive.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300800017
model_name: persona_memory

domain: 0080.knowledge
system: 03.persona_os

# PURPOSE
Represents stored experience.

# DESCRIPTION
Persona memory stores events,
facts and interactions experienced
by persona.

# RELATIONS
persona_memory
 -> memory_index
 -> persona_event


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/080.knowledge/0300800018_persona_experience_archive.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300800018
model_name: persona_experience

domain: 0080.knowledge
system: 03.persona_os

# PURPOSE
Represents interpreted experience.

# DESCRIPTION
Persona experience represents
meaning extracted from past events.

# RELATIONS
persona_experience
 -> persona_memory
 -> learning


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/090.schedule/0300900001_schedule.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300900001
model_name: schedule

domain: 0090.schedule
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents temporal planning system.


# ============================================================
# DESCRIPTION
# ============================================================

Schedule defines temporal organization
of tasks, events and activities.


# ============================================================
# RELATIONS
# ============================================================

schedule
 -> event
 -> reminder
 -> task


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/090.schedule/0300900002_event.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300900002
model_name: event

domain: 0090.schedule
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents scheduled occurrence.


# ============================================================
# DESCRIPTION
# ============================================================

Event represents a time-bound activity
or occurrence associated with a persona.


# ============================================================
# RELATIONS
# ============================================================

event
 -> schedule
 -> reminder


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/090.schedule/0300900003_reminder.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300900003
model_name: reminder

domain: 0090.schedule
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents notification trigger.


# ============================================================
# DESCRIPTION
# ============================================================

Reminder represents a mechanism to notify
a persona about upcoming events or tasks.


# ============================================================
# RELATIONS
# ============================================================

reminder
 -> event
 -> schedule


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/090.schedule/0300900004_schedule_plan.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300900004
model_name: schedule_plan

domain: 0090.schedule
system: 03.persona_os

# PURPOSE
Represents planned schedule.

# DESCRIPTION
Schedule plan defines planned
activities for persona.

# RELATIONS
schedule_plan
 -> schedule
 -> task


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/090.schedule/0300900005_schedule_event.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300900005
model_name: schedule_event

domain: 0090.schedule
system: 03.persona_os

# PURPOSE
Represents event in schedule.

# DESCRIPTION
Schedule event represents time-bound
activity or appointment.

# RELATIONS
schedule_event
 -> schedule_plan
 -> task


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/090.schedule/0300900006_schedule_priority.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0300900006
model_name: schedule_priority

domain: 0090.schedule
system: 03.persona_os

# PURPOSE
Represents priority of schedule.

# DESCRIPTION
Schedule priority determines
importance or urgency of events.

# RELATIONS
schedule_priority
 -> schedule_event
 -> persona_priority


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/100.finance/0301000001_finance_account.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301000001
model_name: finance_account

domain: 0100.finance
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents financial identity of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Finance account represents financial
identity and account structure
associated with a persona.


# ============================================================
# RELATIONS
# ============================================================

finance_account
 -> transaction
 -> budget


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/100.finance/0301000002_transaction.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301000002
model_name: transaction

domain: 0100.finance
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents financial transaction.


# ============================================================
# DESCRIPTION
# ============================================================

Transaction represents financial
exchange such as payment,
transfer or settlement.


# ============================================================
# RELATIONS
# ============================================================

transaction
 -> finance_account


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/100.finance/0301000003_budget.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301000003
model_name: budget

domain: 0100.finance
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents financial planning unit.


# ============================================================
# DESCRIPTION
# ============================================================

Budget represents allocation and
management of financial resources
associated with a persona.


# ============================================================
# RELATIONS
# ============================================================

budget
 -> finance_account
 -> transaction


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/100.finance/0301000004_financial_activity.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301000004
model_name: financial_activity

domain: 0100.finance
system: 03.persona_os

# PURPOSE
Represents economic action of persona.

# DESCRIPTION
Financial activity represents
economic interactions such as
payments or exchanges.

# RELATIONS
financial_activity
 -> transaction
 -> finance_account


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/100.finance/0301000005_resource_allocation.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301000005
model_name: resource_allocation

domain: 0100.finance
system: 03.persona_os

# PURPOSE
Represents allocation of resources.

# DESCRIPTION
Resource allocation defines
distribution of financial
or economic resources.

# RELATIONS
resource_allocation
 -> budget
 -> financial_activity


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/110.security/0301100001_security_identity.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301100001
model_name: security_identity

domain: 0110.security
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents security identity of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Security identity defines authentication
and authorization identity associated
with a persona.


# ============================================================
# RELATIONS
# ============================================================

security_identity
 -> access_policy
 -> credential


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/110.security/0301100002_access_policy.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301100002
model_name: access_policy

domain: 0110.security
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Defines access control policies.


# ============================================================
# DESCRIPTION
# ============================================================

Access policy defines permissions
and access rules associated with
a persona.


# ============================================================
# RELATIONS
# ============================================================

access_policy
 -> security_identity
 -> credential


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/110.security/0301100003_credential.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301100003
model_name: credential

domain: 0110.security
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents authentication credential.


# ============================================================
# DESCRIPTION
# ============================================================

Credential represents authentication
mechanisms such as keys, tokens
or certificates.


# ============================================================
# RELATIONS
# ============================================================

credential
 -> security_identity


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/110.security/0301100004_persona_guardrail.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301100004
model_name: persona_guardrail

domain: 0110.security
system: 03.persona_os

# PURPOSE
Represents safety guardrails.

# DESCRIPTION
Persona guardrail defines restrictions
ensuring safe persona behavior.

# RELATIONS
persona_guardrail
 -> access_policy
 -> behavior


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/110.security/0301100005_behavior_constraint.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301100005
model_name: behavior_constraint

domain: 0110.security
system: 03.persona_os

# PURPOSE
Represents behavior limitation rules.

# DESCRIPTION
Behavior constraint restricts actions
based on policy or safety rules.

# RELATIONS
behavior_constraint
 -> behavior
 -> persona_guardrail


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/120.external_rights/0301200001_persona_snapshot_release.md
--------------------------------------------------------------------------------

# persona_snapshot_release

status: canonical
layer: model
domain: external_rights
owner: Boss
prepared_by: Zero

## PURPOSE
Represent a releasable externally usable Persona snapshot unit.

## FIELDS
- persona_snapshot_release_id
- persona_id
- snapshot_id
- release_code
- release_type
- release_state
- signature_state
- visibility_state
- issued_at
- revoked_at
- external_use_allowed


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/120.external_rights/0301200002_persona_license.md
--------------------------------------------------------------------------------

# persona_license

status: canonical
layer: model
domain: external_rights
owner: Boss
prepared_by: Zero

## PURPOSE
Represent canonical PersonaOS license authority.

## FIELDS
- persona_license_id
- persona_snapshot_release_id
- license_code
- license_type
- effective_from
- effective_to
- revoked
- suspended
- transfer_allowed
- access_scope
- issued_at


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/120.external_rights/0301200003_persona_access_grant.md
--------------------------------------------------------------------------------

# persona_access_grant

status: canonical
layer: model
domain: external_rights
owner: Boss
prepared_by: Zero

## PURPOSE
Represent granted external usage access.

## FIELDS
- persona_access_grant_id
- persona_snapshot_release_id
- holder_type
- holder_id
- access_scope
- grant_state
- granted_at
- expires_at
- revoked_at
- suspended_at


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/120.external_rights/0301200004_persona_transfer_rule.md
--------------------------------------------------------------------------------

# persona_transfer_rule

status: canonical
layer: model
domain: external_rights
owner: Boss
prepared_by: Zero

## PURPOSE
Represent transfer permissions and constraints.

## FIELDS
- persona_transfer_rule_id
- persona_snapshot_release_id
- transfer_allowed
- approval_required
- max_transfer_count
- rule_state
- updated_at


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/120.external_rights/0301200005_persona_transfer_record.md
--------------------------------------------------------------------------------

# persona_transfer_record

status: canonical
layer: model
domain: external_rights
owner: Boss
prepared_by: Zero

## PURPOSE
Represent executed or rejected transfer attempts.

## FIELDS
- persona_transfer_record_id
- persona_snapshot_release_id
- from_holder_type
- from_holder_id
- to_holder_type
- to_holder_id
- transfer_state
- approved
- decided_at
- transferred_at


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/120.external_rights/0301200006_persona_package.md
--------------------------------------------------------------------------------

# persona_package

status: canonical
layer: model
domain: external_rights
owner: Boss
prepared_by: Zero

## PURPOSE
Represent an externally distributable Persona package.

## FIELDS
- persona_package_id
- package_code
- package_name
- package_state
- visibility_state
- package_version
- issued_at
- revoked_at


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/120.external_rights/0301200007_persona_package_item.md
--------------------------------------------------------------------------------

# persona_package_item

status: canonical
layer: model
domain: external_rights
owner: Boss
prepared_by: Zero

## PURPOSE
Represent package membership of Persona-derived assets.

## FIELDS
- persona_package_item_id
- persona_package_id
- item_type
- item_ref_id
- item_role
- sort_order
- active


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/120.external_rights/0301200008_persona_distribution_record.md
--------------------------------------------------------------------------------

# persona_distribution_record

status: canonical
layer: model
domain: external_rights
owner: Boss
prepared_by: Zero

## PURPOSE
Represent publication of mirrorable metadata to external platforms.

## FIELDS
- persona_distribution_record_id
- distribution_target
- release_or_package_type
- release_or_package_id
- publication_state
- published_at
- unpublished_at
- synced_at


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/120.logs/0301210001_log_event.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301200001
model_name: log_event

domain: 0120.logs
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents logged event.


# ============================================================
# DESCRIPTION
# ============================================================

Log event represents recorded
system activity or persona activity.


# ============================================================
# RELATIONS
# ============================================================

log_event
 -> audit_log
 -> event_stream


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/120.logs/0301210002_audit_log.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301200002
model_name: audit_log

domain: 0120.logs
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents audit trail record.


# ============================================================
# DESCRIPTION
# ============================================================

Audit log records security
or governance relevant events.


# ============================================================
# RELATIONS
# ============================================================

audit_log
 -> log_event


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/120.logs/0301210003_event_stream.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301200003
model_name: event_stream

domain: 0120.logs
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents sequence of system events.


# ============================================================
# DESCRIPTION
# ============================================================

Event stream represents chronological
flow of system events generated
by personas or systems.


# ============================================================
# RELATIONS
# ============================================================

event_stream
 -> log_event


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/120.logs/0301210004_persona_log.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301200003
model_name: persona_log

domain: 0120.logs
system: 03.persona_os

# PURPOSE
Represents runtime log of persona.

# DESCRIPTION
Persona log records events,
actions and decisions executed
by persona.

# RELATIONS
persona_log
 -> persona_event
 -> behavior


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/120.logs/0301210005_decision_log.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301200004
model_name: decision_log

domain: 0120.logs
system: 03.persona_os

# PURPOSE
Represents decision history.

# DESCRIPTION
Decision log records decision
process and selected options.

# RELATIONS
decision_log
 -> decision
 -> decision_evaluation


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/130.integration/0301300001_persona_event_outbox.md
--------------------------------------------------------------------------------

# persona_event_outbox

status: canonical
layer: model
domain: integration
owner: Boss
prepared_by: Zero

## PURPOSE
Represent outbound integration events generated by PersonaOS.

## FIELDS
- persona_event_outbox_id
- event_type
- aggregate_type
- aggregate_id
- payload_json
- dispatch_state
- attempt_count
- next_retry_at
- created_at
- dispatched_at


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/130.integration/0301300002_persona_sync_event_contract.md
--------------------------------------------------------------------------------

# persona_sync_event_contract

status: canonical
layer: model
domain: integration
owner: Boss
prepared_by: Zero

## PURPOSE
Define canonical outbound sync event contract types from PersonaOS.

## EVENT TYPES
- PERSONA_RELEASE_ISSUED
- PERSONA_RELEASE_REVOKED
- PERSONA_LICENSE_CHANGED
- PERSONA_ACCESS_GRANT_CHANGED
- PERSONA_DISTRIBUTION_CHANGED

## RULE
Payloads must be deterministic and mirrorable.


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/130.integration/0301300003_persona_growth_request_inbox.md
--------------------------------------------------------------------------------

# persona_growth_request_inbox

status: canonical
layer: model
domain: integration
owner: Boss
prepared_by: Zero

## PURPOSE
Represent inbound Business-originated growth requests consumed by PersonaOS.

## FIELDS
- persona_growth_request_inbox_id
- source_system
- request_id
- event_type
- persona_id
- growth_dimension
- delta_value
- payload_json
- consume_state
- received_at
- consumed_at


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/130.integration/0301300004_persona_growth_result_contract.md
--------------------------------------------------------------------------------

# persona_growth_result_contract

status: canonical
layer: model
domain: integration
owner: Boss
prepared_by: Zero

## PURPOSE
Define the canonical result payload emitted after PersonaOS applies a growth request.

## FIELDS
- request_id
- persona_id
- growth_dimension
- previous_value
- new_value
- growth_version
- result_state
- applied_at


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/130.simulation/0301310001_simulation.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301300001
model_name: simulation

domain: 0130.simulation
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents simulation environment.


# ============================================================
# DESCRIPTION
# ============================================================

Simulation represents virtual environment
where personas can act, test
or simulate behavior.


# ============================================================
# RELATIONS
# ============================================================

simulation
 -> scenario
 -> simulation_event


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/130.simulation/0301310002_scenario.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301300002
model_name: scenario

domain: 0130.simulation
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents simulation scenario.


# ============================================================
# DESCRIPTION
# ============================================================

Scenario defines structured situation
used for simulation.


# ============================================================
# RELATIONS
# ============================================================

scenario
 -> simulation
 -> simulation_event


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/130.simulation/0301310003_simulation_event.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301300003
model_name: simulation_event

domain: 0130.simulation
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents event occurring during simulation.


# ============================================================
# DESCRIPTION
# ============================================================

Simulation event represents an
interaction or occurrence inside
simulation environment.


# ============================================================
# RELATIONS
# ============================================================

simulation_event
 -> simulation
 -> scenario


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/130.simulation/0301310004_simulation_world.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301300004
model_name: simulation_world

domain: 0130.simulation
system: 03.persona_os

# PURPOSE
Represents simulation environment.

# DESCRIPTION
Simulation world defines virtual
environment where personas interact.

# RELATIONS
simulation_world
 -> simulation
 -> scenario


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/130.simulation/0301310005_simulation_actor.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301300005
model_name: simulation_actor

domain: 0130.simulation
system: 03.persona_os

# PURPOSE
Represents participant in simulation.

# DESCRIPTION
Simulation actor represents persona
participating in simulated scenario.

# RELATIONS
simulation_actor
 -> simulation
 -> persona


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/130.simulation/0301310006_simulation_outcome.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301300006
model_name: simulation_outcome

domain: 0130.simulation
system: 03.persona_os

# PURPOSE
Represents result of simulation.

# DESCRIPTION
Simulation outcome records results
produced by simulation execution.

# RELATIONS
simulation_outcome
 -> simulation
 -> simulation_event


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/140.visual/0301400001_visual_avatar.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301400001
model_name: visual_avatar

domain: 0140.visual
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents visual avatar of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Visual avatar represents graphical
appearance of persona.


# ============================================================
# RELATIONS
# ============================================================

visual_avatar
 -> visual_asset


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/140.visual/0301400002_visual_asset.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301400002
model_name: visual_asset

domain: 0140.visual
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents visual asset resource.


# ============================================================
# DESCRIPTION
# ============================================================

Visual asset represents image,
model or animation used to
represent persona visually.


# ============================================================
# RELATIONS
# ============================================================

visual_asset
 -> visual_avatar


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/140.visual/0301400003_animation_profile.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301400003
model_name: animation_profile

domain: 0140.visual
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents animation configuration.


# ============================================================
# DESCRIPTION
# ============================================================

Animation profile defines animation
behavior for persona visual
representation.


# ============================================================
# RELATIONS
# ============================================================

animation_profile
 -> visual_avatar


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/140.visual/0301400004_visual_state.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301400004
model_name: visual_state

domain: 0140.visual
system: 03.persona_os

# PURPOSE
Represents visual state.

# DESCRIPTION
Visual state represents current
visual configuration of persona.

# RELATIONS
visual_state
 -> visual_avatar
 -> animation_profile


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/140.visual/0301400005_visual_expression.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301400005
model_name: visual_expression

domain: 0140.visual
system: 03.persona_os

# PURPOSE
Represents visual emotional expression.

# DESCRIPTION
Visual expression represents visible
emotion displayed by persona.

# RELATIONS
visual_expression
 -> visual_state
 -> emotion_expression


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/150.voice/0301500001_voice_profile.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301500001
model_name: voice_profile

domain: 0150.voice
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents voice identity.


# ============================================================
# DESCRIPTION
# ============================================================

Voice profile defines voice
characteristics of persona.


# ============================================================
# RELATIONS
# ============================================================

voice_profile
 -> voice_asset


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/150.voice/0301500002_voice_asset.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301500002
model_name: voice_asset

domain: 0150.voice
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents voice resource.


# ============================================================
# DESCRIPTION
# ============================================================

Voice asset represents audio
resource used by persona.


# ============================================================
# RELATIONS
# ============================================================

voice_asset
 -> voice_profile


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/150.voice/0301500003_voice_state.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301500003
model_name: voice_state

domain: 0150.voice
system: 03.persona_os

# PURPOSE
Represents voice runtime state.

# DESCRIPTION
Voice state represents voice output
configuration during communication.

# RELATIONS
voice_state
 -> voice_profile
 -> communication


--------------------------------------------------------------------------------
FILE: 030.model/010.canonical/150.voice/0301500004_voice_expression.md
--------------------------------------------------------------------------------

# ============================================================
# MODEL
# ============================================================

model_id: 0301500004
model_name: voice_expression

domain: 0150.voice
system: 03.persona_os

# PURPOSE
Represents emotional voice expression.

# DESCRIPTION
Voice expression represents emotional
tone in speech.

# RELATIONS
voice_expression
 -> voice_state
 -> emotion_expression


--------------------------------------------------------------------------------
FILE: 030.model/020.catalog/0300200001_PERSONA_MODEL_OVERVIEW.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA OS MODEL OVERVIEW
# ============================================================

PersonaOS model layer defines conceptual structures
used by the persona engine.

Model granularity rule:

MODEL = Concept
MODEL != Table
MODEL != Column

Model ID format:

Ss ddd mmmm

Ss   system
ddd  domain
mmmm model


--------------------------------------------------------------------------------
FILE: 030.model/020.catalog/0300200002_PERSONA_MODEL_INDEX.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA OS MODEL INDEX
# ============================================================

Domains

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


--------------------------------------------------------------------------------
FILE: 030.model/020.catalog/0300200003_PERSONA_MODEL_DEPENDENCY_MAP.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA MODEL DEPENDENCY MAP
# ============================================================

status: canonical
scope: persona-os
layer: model-validation

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define structural dependencies between
PersonaOS models.

This document ensures:

- model completeness
- dependency clarity
- stable base before operations layer


# ============================================================
# PERSONA KERNEL
# ============================================================

Core engine models.

These models define the Persona Engine.

persona
persona_state
persona_memory
persona_goal
persona_decision
persona_relationship
persona_event


# ============================================================
# KERNEL DEPENDENCIES
# ============================================================

persona
 ├ persona_identity
 ├ persona_profile
 └ persona_state


persona_state
 ├ cognition
 ├ emotion_state
 └ behavior


persona_memory
 ├ memory
 ├ persona_event
 └ experience


persona_goal
 ├ reasoning
 ├ planning
 └ motivation


persona_decision
 ├ reasoning
 ├ emotion_state
 ├ persona_goal
 └ context_state


persona_relationship
 ├ social_relation
 ├ social_network
 └ persona_trust


persona_event
 ├ event
 ├ persona_state
 └ persona_memory


# ============================================================
# COGNITION LAYER
# ============================================================

cognition
 ├ reasoning
 ├ decision
 ├ planning
 └ learning


reasoning
 ├ knowledge
 └ context_state


decision
 ├ decision_option
 ├ decision_evaluation
 └ persona_goal


planning
 ├ goal_planning
 └ task


learning
 ├ persona_memory
 └ experience


# ============================================================
# EMOTION LAYER
# ============================================================

emotion
 ├ mood
 ├ motivation
 └ emotion_state


emotion_state
 ├ emotion_vector
 ├ emotion_trigger
 └ emotion_history


# ============================================================
# BEHAVIOR LAYER
# ============================================================

behavior
 ├ action
 ├ task
 └ habit


action
 └ task_execution


task
 └ action_sequence


# ============================================================
# COMMUNICATION LAYER
# ============================================================

communication
 ├ message
 └ conversation


conversation
 ├ dialogue_context
 └ message_response


message
 └ message_intent


# ============================================================
# SOCIAL LAYER
# ============================================================

social_relation
 ├ social_network
 └ group


persona_relationship
 ├ relationship_state
 └ relationship_event


social_interaction
 ├ communication
 └ behavior


# ============================================================
# KNOWLEDGE LAYER
# ============================================================

knowledge
 ├ knowledge_graph
 ├ knowledge_fact
 └ knowledge_rule


memory
 ├ memory_index
 ├ memory_retrieval
 └ memory_decay


experience
 └ persona_memory


# ============================================================
# SUPPORT SYSTEMS
# ============================================================

schedule
 ├ event
 └ reminder


capability
 ├ skill
 └ competency


security_identity
 └ access_policy


audit_log
 └ event_stream


simulation
 ├ scenario
 └ simulation_event


visual_avatar
 └ visual_state


voice_profile
 └ voice_state


# ============================================================
# DESIGN PRINCIPLE
# ============================================================

Dependency direction:

identity
↓
cognition
↓
emotion
↓
behavior

Supporting systems attach to the core
without reversing dependency direction.


# ============================================================
# BOUNDARY RULE
# ============================================================

PersonaOS models represent micro-level agents.

CivilizationOS represents macro structures.

PersonaOS must not define models such as:

world
civilization
institution
territory
population
law
market
governance

Those belong to CivilizationOS.


# ============================================================
# STATUS
# ============================================================

This dependency map defines
the structural validation layer
for PersonaOS models.



--------------------------------------------------------------------------------
FILE: 030.model/020.catalog/0300200004_PERSONA_OS_MODEL_STRUCTURE.md
--------------------------------------------------------------------------------

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



--------------------------------------------------------------------------------
FILE: 030.model/020.catalog/0300200005_PERSONA_KERNEL_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA KERNEL MODEL
# ============================================================

status: canonical
scope: persona-os
layer: model-kernel

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the minimal kernel model set
required to operate the Persona Engine.

These models form the structural core
of PersonaOS.


# ============================================================
# PERSONA ENGINE
# ============================================================

The Persona Engine is defined by the
interaction of the following kernel models.

persona
persona_state
persona_memory
persona_goal
persona_decision
persona_relationship
persona_event


# ============================================================
# KERNEL MODEL DEFINITIONS
# ============================================================


# ------------------------------------------------------------
# persona
# ------------------------------------------------------------

Represents the agent entity.

Dependencies

persona_identity
persona_profile
persona_state


# ------------------------------------------------------------
# persona_state
# ------------------------------------------------------------

Represents the current internal state
of the persona.

Includes:

cognition
emotion_state
behavior


# ------------------------------------------------------------
# persona_memory
# ------------------------------------------------------------

Stores past events and experiences.

Dependencies

memory
persona_event
experience


# ------------------------------------------------------------
# persona_goal
# ------------------------------------------------------------

Represents the objectives
guiding persona behavior.

Dependencies

reasoning
planning
motivation


# ------------------------------------------------------------
# persona_decision
# ------------------------------------------------------------

Represents decision output
of the cognition system.

Dependencies

reasoning
emotion_state
persona_goal
context_state


# ------------------------------------------------------------
# persona_relationship
# ------------------------------------------------------------

Represents social relationships
with other personas.

Dependencies

social_relation
social_network
persona_trust


# ------------------------------------------------------------
# persona_event
# ------------------------------------------------------------

Represents events affecting
the persona.

Dependencies

event
persona_state
persona_memory


# ============================================================
# ENGINE LOOP
# ============================================================

Persona Engine conceptual loop.

persona_event
↓
perception
↓
reasoning
↓
persona_decision
↓
behavior
↓
environment change
↓
persona_memory update


# ============================================================
# MODEL HIERARCHY
# ============================================================

Kernel models sit above all other
PersonaOS models.

Hierarchy

persona
 ├ cognition
 ├ emotion
 ├ behavior
 ├ communication
 ├ social
 ├ knowledge
 └ capability


# ============================================================
# DESIGN PRINCIPLE
# ============================================================

The kernel models define the
minimum structure required for
a functioning persona system.

All additional models must
extend these kernel models
without redefining them.


# ============================================================
# STATUS
# ============================================================

PersonaOS Kernel Model finalized.

Model validation phase complete.

Next layer:

operations



--------------------------------------------------------------------------------
FILE: 030.model/030.binding/0300300001_PERSONA_CIVILIZATION_MODEL_BOUNDARY.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA ↔ CIVILIZATION MODEL BOUNDARY
# ============================================================

status: canonical
scope: cross-system
layer: model-validation

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define clear conceptual boundaries
between PersonaOS models and
CivilizationOS models.

This document prevents:

- conceptual duplication
- model conflicts
- responsibility overlap


# ============================================================
# CORE PRINCIPLE
# ============================================================

CivilizationOS defines macro structures.

PersonaOS defines micro agents.

Macro structures must never be defined
inside PersonaOS.

Micro agents must never be defined
inside CivilizationOS.


# ============================================================
# CIVILIZATIONOS DOMAIN
# ============================================================

CivilizationOS models represent
civilization-scale structures.

Examples:

world
civilization
nation
territory
population
economy
market
resource
technology
law
institution
organization
governance
culture


# ============================================================
# PERSONAOS DOMAIN
# ============================================================

PersonaOS models represent
individual-level agents.

Examples:

persona
persona_identity
persona_state
persona_memory
persona_goal
persona_decision
persona_relationship
persona_event


# ============================================================
# ALLOWED REFERENCES
# ============================================================

PersonaOS may reference CivilizationOS
through participation concepts.

Examples:

persona_role
persona_affiliation
persona_membership
persona_position
persona_participation


Example relationships:

persona
 └ participates_in → institution

persona
 └ member_of → organization

persona
 └ citizen_of → nation


# ============================================================
# FORBIDDEN MODELS IN PERSONAOS
# ============================================================

The following concepts must never
be defined as models in PersonaOS.

world
civilization
nation
territory
population
law
market
economy
governance
institution
organization


These belong exclusively
to CivilizationOS.


# ============================================================
# PERSONA-SIDE REPRESENTATIONS
# ============================================================

If PersonaOS needs to reference
Civilization structures,
persona-side models must be used.

Examples:

persona_membership
persona_role
persona_position
persona_affiliation
persona_activity


Example structure:

persona_membership
 ├ persona
 └ organization_id


persona_role
 ├ persona
 └ institution_role


# ============================================================
# DESIGN RULE
# ============================================================

CivilizationOS defines systems.

PersonaOS defines actors.


Example conceptual flow:

CivilizationOS

institution
organization
economy
law


PersonaOS

persona
persona_goal
persona_decision
persona_action


Interaction:

persona
 → participates in → organization

persona
 → acts under → law

persona
 → operates within → economy


# ============================================================
# ARCHITECTURE PRINCIPLE
# ============================================================

CivilizationOS
defines the world.

PersonaOS
defines the agents.


Agents act inside the world,
but do not define it.


# ============================================================
# STATUS
# ============================================================

This document defines
the canonical boundary
between PersonaOS and CivilizationOS.



--------------------------------------------------------------------------------
FILE: 030.model/0300000_MODEL_INDEX.md
--------------------------------------------------------------------------------

030.model/010.canonical/010.identity/0300100001_persona.md
030.model/010.canonical/010.identity/0300100002_persona_identity.md
030.model/010.canonical/010.identity/0300100003_persona_profile.md
030.model/010.canonical/010.identity/0300100004_persona_metadata.md
030.model/010.canonical/010.identity/0300100005_persona_lifecycle.md
030.model/010.canonical/010.identity/0300100006_persona_origin.md
030.model/010.canonical/010.identity/0300100007_persona_personality.md
030.model/010.canonical/010.identity/0300100008_persona_goal.md
030.model/010.canonical/010.identity/0300100009_persona_alignment.md
030.model/010.canonical/010.identity/0300100010_persona_objective.md
030.model/010.canonical/010.identity/0300100011_persona_priority.md
030.model/010.canonical/010.identity/0300100012_persona_strategy.md
030.model/010.canonical/010.identity/0300100013_persona_self_model.md
030.model/010.canonical/010.identity/0300100014_persona_self_awareness.md
030.model/010.canonical/010.identity/0300100015_persona_state.md
030.model/010.canonical/010.identity/0300100016_persona_status.md
030.model/010.canonical/010.identity/0300100017_persona_identity_role.md
030.model/010.canonical/010.identity/0300100018_persona_system_role.md
030.model/010.canonical/010.identity/0300100019_persona_trait.md
030.model/010.canonical/010.identity/0300100020_persona_value.md
030.model/010.canonical/010.identity/0300100021_persona_trait_set.md
030.model/010.canonical/010.identity/0300100022_persona_preference.md
030.model/010.canonical/020.cognition/0300200001_cognition.md
030.model/010.canonical/020.cognition/0300200002_reasoning.md
030.model/010.canonical/020.cognition/0300200003_decision.md
030.model/010.canonical/020.cognition/0300200004_planning.md
030.model/010.canonical/020.cognition/0300200005_learning.md
030.model/010.canonical/020.cognition/0300200006_reasoning_strategy.md
030.model/010.canonical/020.cognition/0300200007_decision_context.md
030.model/010.canonical/020.cognition/0300200008_planning_goal.md
030.model/010.canonical/020.cognition/0300200009_learning_feedback.md
030.model/010.canonical/020.cognition/0300200010_attention.md
030.model/010.canonical/020.cognition/0300200011_decision_policy.md
030.model/010.canonical/020.cognition/0300200012_decision_option.md
030.model/010.canonical/020.cognition/0300200013_decision_evaluation.md
030.model/010.canonical/020.cognition/0300200014_goal_planning.md
030.model/010.canonical/020.cognition/0300200015_perception.md
030.model/010.canonical/020.cognition/0300200016_perception_event.md
030.model/010.canonical/020.cognition/0300200017_attention_context.md
030.model/010.canonical/020.cognition/0300200018_context_state.md
030.model/010.canonical/020.cognition/0300200019_learning_model.md
030.model/010.canonical/020.cognition/0300200020_learning_event.md
030.model/010.canonical/020.cognition/0300200021_persona_cognitive_goal.md
030.model/010.canonical/020.cognition/0300200022_persona_cognitive_strategy.md
030.model/010.canonical/020.cognition/0300200023_persona_decision.md
030.model/010.canonical/020.cognition/0300200024_decision_tree.md
030.model/010.canonical/020.cognition/0300200025_persona_learning_state.md
030.model/010.canonical/020.cognition/0300200026_persona_world_model.md
030.model/010.canonical/030.emotion/0300300001_emotion.md
030.model/010.canonical/030.emotion/0300300002_mood.md
030.model/010.canonical/030.emotion/0300300003_motivation.md
030.model/010.canonical/030.emotion/0300300004_wellbeing.md
030.model/010.canonical/030.emotion/0300300005_emotion_state.md
030.model/010.canonical/030.emotion/0300300006_emotion_vector.md
030.model/010.canonical/030.emotion/0300300007_emotion_trigger.md
030.model/010.canonical/030.emotion/0300300008_emotion_history.md
030.model/010.canonical/030.emotion/0300300009_emotion_regulation.md
030.model/010.canonical/030.emotion/0300300010_emotion_expression.md
030.model/010.canonical/040.behavior/0300400001_behavior.md
030.model/010.canonical/040.behavior/0300400002_action.md
030.model/010.canonical/040.behavior/0300400003_task.md
030.model/010.canonical/040.behavior/0300400004_habit.md
030.model/010.canonical/040.behavior/0300400005_task_execution.md
030.model/010.canonical/040.behavior/0300400006_action_sequence.md
030.model/010.canonical/050.communication/0300500001_communication.md
030.model/010.canonical/050.communication/0300500002_message.md
030.model/010.canonical/050.communication/0300500003_conversation.md
030.model/010.canonical/050.communication/0300500004_dialogue_context.md
030.model/010.canonical/050.communication/0300500005_message_intent.md
030.model/010.canonical/050.communication/0300500006_message_response.md
030.model/010.canonical/060.social/0300600001_social_relation.md
030.model/010.canonical/060.social/0300600002_social_role.md
030.model/010.canonical/060.social/0300600003_group.md
030.model/010.canonical/060.social/0300600004_social_network.md
030.model/010.canonical/060.social/0300600005_social_trust.md
030.model/010.canonical/060.social/0300600006_social_influence.md
030.model/010.canonical/060.social/0300600007_persona_relationship.md
030.model/010.canonical/060.social/0300600008_relationship_state.md
030.model/010.canonical/060.social/0300600009_relationship_event.md
030.model/010.canonical/060.social/0300600010_social_interaction.md
030.model/010.canonical/060.social/0300600011_social_perception.md
030.model/010.canonical/060.social/0300600012_social_signal.md
030.model/010.canonical/060.social/0300600013_persona_relationship_profile.md
030.model/010.canonical/060.social/0300600014_persona_trust.md
030.model/010.canonical/070.capability/0300700001_capability.md
030.model/010.canonical/070.capability/0300700002_skill.md
030.model/010.canonical/070.capability/0300700003_competency.md
030.model/010.canonical/070.capability/0300700004_capability_profile.md
030.model/010.canonical/070.capability/0300700005_capability_development.md
030.model/010.canonical/080.knowledge/0300800001_knowledge.md
030.model/010.canonical/080.knowledge/0300800002_memory.md
030.model/010.canonical/080.knowledge/0300800003_experience.md
030.model/010.canonical/080.knowledge/0300800004_knowledge_graph.md
030.model/010.canonical/080.knowledge/0300800005_knowledge_fact.md
030.model/010.canonical/080.knowledge/0300800006_knowledge_rule.md
030.model/010.canonical/080.knowledge/0300800007_knowledge_source.md
030.model/010.canonical/080.knowledge/0300800008_persona_memory.md
030.model/010.canonical/080.knowledge/0300800009_persona_event.md
030.model/010.canonical/080.knowledge/0300800010_persona_snapshot.md
030.model/010.canonical/080.knowledge/0300800011_persona_history.md
030.model/010.canonical/080.knowledge/0300800012_persona_experience.md
030.model/010.canonical/080.knowledge/0300800013_persona_growth.md
030.model/010.canonical/080.knowledge/0300800014_memory_index.md
030.model/010.canonical/080.knowledge/0300800015_memory_retrieval.md
030.model/010.canonical/080.knowledge/0300800016_memory_decay.md
030.model/010.canonical/080.knowledge/0300800017_persona_memory_archive.md
030.model/010.canonical/080.knowledge/0300800018_persona_experience_archive.md
030.model/010.canonical/090.schedule/0300900001_schedule.md
030.model/010.canonical/090.schedule/0300900002_event.md
030.model/010.canonical/090.schedule/0300900003_reminder.md
030.model/010.canonical/090.schedule/0300900004_schedule_plan.md
030.model/010.canonical/090.schedule/0300900005_schedule_event.md
030.model/010.canonical/090.schedule/0300900006_schedule_priority.md
030.model/010.canonical/100.finance/0301000001_finance_account.md
030.model/010.canonical/100.finance/0301000002_transaction.md
030.model/010.canonical/100.finance/0301000003_budget.md
030.model/010.canonical/100.finance/0301000004_financial_activity.md
030.model/010.canonical/100.finance/0301000005_resource_allocation.md
030.model/010.canonical/110.security/0301100001_security_identity.md
030.model/010.canonical/110.security/0301100002_access_policy.md
030.model/010.canonical/110.security/0301100003_credential.md
030.model/010.canonical/110.security/0301100004_persona_guardrail.md
030.model/010.canonical/110.security/0301100005_behavior_constraint.md
030.model/010.canonical/120.external_rights/0301200001_persona_snapshot_release.md
030.model/010.canonical/120.external_rights/0301200002_persona_license.md
030.model/010.canonical/120.external_rights/0301200003_persona_access_grant.md
030.model/010.canonical/120.external_rights/0301200004_persona_transfer_rule.md
030.model/010.canonical/120.external_rights/0301200005_persona_transfer_record.md
030.model/010.canonical/120.external_rights/0301200006_persona_package.md
030.model/010.canonical/120.external_rights/0301200007_persona_package_item.md
030.model/010.canonical/120.external_rights/0301200008_persona_distribution_record.md
030.model/010.canonical/120.logs/0301210001_log_event.md
030.model/010.canonical/120.logs/0301210002_audit_log.md
030.model/010.canonical/120.logs/0301210003_event_stream.md
030.model/010.canonical/120.logs/0301210004_persona_log.md
030.model/010.canonical/120.logs/0301210005_decision_log.md
030.model/010.canonical/130.integration/0301300001_persona_event_outbox.md
030.model/010.canonical/130.integration/0301300002_persona_sync_event_contract.md
030.model/010.canonical/130.integration/0301300003_persona_growth_request_inbox.md
030.model/010.canonical/130.integration/0301300004_persona_growth_result_contract.md
030.model/010.canonical/130.simulation/0301310001_simulation.md
030.model/010.canonical/130.simulation/0301310002_scenario.md
030.model/010.canonical/130.simulation/0301310003_simulation_event.md
030.model/010.canonical/130.simulation/0301310004_simulation_world.md
030.model/010.canonical/130.simulation/0301310005_simulation_actor.md
030.model/010.canonical/130.simulation/0301310006_simulation_outcome.md
030.model/010.canonical/140.visual/0301400001_visual_avatar.md
030.model/010.canonical/140.visual/0301400002_visual_asset.md
030.model/010.canonical/140.visual/0301400003_animation_profile.md
030.model/010.canonical/140.visual/0301400004_visual_state.md
030.model/010.canonical/140.visual/0301400005_visual_expression.md
030.model/010.canonical/150.voice/0301500001_voice_profile.md
030.model/010.canonical/150.voice/0301500002_voice_asset.md
030.model/010.canonical/150.voice/0301500003_voice_state.md
030.model/010.canonical/150.voice/0301500004_voice_expression.md
030.model/020.catalog/0300200001_PERSONA_MODEL_OVERVIEW.md
030.model/020.catalog/0300200002_PERSONA_MODEL_INDEX.md
030.model/020.catalog/0300200003_PERSONA_MODEL_DEPENDENCY_MAP.md
030.model/020.catalog/0300200004_PERSONA_OS_MODEL_STRUCTURE.md
030.model/020.catalog/0300200005_PERSONA_KERNEL_MODEL.md
030.model/030.binding/0300300001_PERSONA_CIVILIZATION_MODEL_BOUNDARY.md
030.model/0300000_MODEL_INDEX.md
030.model/100.integration/0300500010_PERSONA_EXTERNAL_GROWTH_REQUEST_INBOX_MODEL.md
030.model/100.integration/0300500011_PERSONA_EXTERNAL_USAGE_RESULT_CONTRACT_MODEL.md
030.model/100.integration/0300500012_PERSONA_EXTERNAL_TRUST_RESULT_CONTRACT_MODEL.md
030.model/100.integration/0300500013_PERSONA_EXTERNAL_SYNC_OUTBOX_MODEL.md
030.model/130.builder/0301600001_persona_builder_draft.md
030.model/130.builder/0301600002_persona_builder_section_state.md
030.model/130.builder/0301600003_persona_builder_validation_result.md
030.model/130.builder/0301600004_persona_builder_approval_request.md
030.model/130.builder/0301600005_persona_builder_publish_candidate.md
030.model/130.builder/0301600006_persona_builder_asset_binding.md
030.model/130.builder/0301600007_persona_builder_visual_manifest_candidate.md
030.model/130.builder/0301600008_persona_builder_change_set.md
030.model/130.builder/0301600009_persona_builder_audit_record.md
030.model/210.persona-core/0302100_PERSONA_CORE_IDENTITY_MODEL.md
030.model/210.persona-core/0302101_PERSONA_STATE_MODEL.md
030.model/210.persona-core/0302102_PERSONA_GROWTH_MODEL.md
030.model/210.persona-core/0302103_PERSONA_TRUST_MODEL.md
030.model/210.persona-core/0302104_PERSONA_SNAPSHOT_MODEL.md
030.model/220.rights-external/0302200_PERSONA_LICENSE_MODEL.md
030.model/220.rights-external/0302201_PERSONA_ACCESS_GRANT_MODEL.md
030.model/220.rights-external/0302202_PERSONA_TRANSFER_RECORD_MODEL.md
030.model/220.rights-external/0302203_PERSONA_EXTERNAL_RELEASE_MODEL.md
030.model/220.rights-external/0302204_PERSONA_PACKAGE_MODEL.md
030.model/230.external-sync/0302300_PERSONA_EXTERNAL_CONTRACT_REGISTRY_MODEL.md
030.model/230.external-sync/0302301_PERSONA_EXTERNAL_COMPATIBILITY_REVIEW_MODEL.md
030.model/230.external-sync/0302302_PERSONA_EXTERNAL_USAGE_RESULT_CONTRACT_MODEL.md
030.model/230.external-sync/0302303_PERSONA_EXTERNAL_TRUST_RESULT_CONTRACT_MODEL.md
030.model/230.external-sync/0302304_PERSONA_EXTERNAL_SYNC_EVENT_MODEL.md
030.model/230.external-sync/0302305_PERSONA_EXTERNAL_SYNC_INBOX_MODEL.md
030.model/230.external-sync/0302306_PERSONA_EXTERNAL_SYNC_OUTBOX_MODEL.md
030.model/230.external-sync/0302307_PERSONA_SYNC_FAILURE_RECORD_MODEL.md
030.model/230.external-sync/0302308_PERSONA_SYNC_RETRY_PROFILE_MODEL.md
030.model/230.external-sync/0302309_PERSONA_SYNC_DEAD_LETTER_RECORD_MODEL.md
030.model/240.expression-composition/0302400_PERSONA_VISUAL_PROFILE_MODEL.md
030.model/240.expression-composition/0302401_PERSONA_VOICE_PROFILE_MODEL.md
030.model/240.expression-composition/0302402_PERSONA_SKILL_PROFILE_MODEL.md
030.model/240.expression-composition/0302403_PERSONA_ANIMATION_PROFILE_MODEL.md
030.model/240.expression-composition/0302404_PERSONA_PACKAGE_ITEM_MODEL.md
030.model/240.expression-composition/0302405_PERSONA_PACKAGE_COMPOSITION_MODEL.md
030.model/240.expression-composition/0302406_PERSONA_DELIVERY_MANIFEST_MODEL.md
030.model/240.expression-composition/0302407_PERSONA_MANIFEST_PROJECTION_MODEL.md
030.model/240.expression-composition/0302408_PERSONA_BUNDLE_DELIVERY_RECORD_MODEL.md
030.model/240.expression-composition/0302409_PERSONA_COMPOSITION_VALIDATION_RECORD_MODEL.md
030.model/250.cross-cutting-completion/0302500_PERSONA_LIFECYCLE_STATE_PROFILE_MODEL.md
030.model/250.cross-cutting-completion/0302501_PERSONA_AUTHORITY_DECISION_RECORD_MODEL.md
030.model/250.cross-cutting-completion/0302502_PERSONA_APPROVAL_TRAIL_MODEL.md
030.model/250.cross-cutting-completion/0302503_PERSONA_EVIDENCE_LINKAGE_MODEL.md
030.model/250.cross-cutting-completion/0302504_PERSONA_RETRY_PROFILE_MODEL.md
030.model/250.cross-cutting-completion/0302505_PERSONA_DEAD_LETTER_RECORD_MODEL.md
030.model/250.cross-cutting-completion/0302506_PERSONA_OWNERSHIP_BOUNDARY_RECORD_MODEL.md
030.model/250.cross-cutting-completion/0302507_PERSONA_COMPATIBILITY_RECORD_MODEL.md


--------------------------------------------------------------------------------
FILE: 030.model/100.integration/0300500010_PERSONA_EXTERNAL_GROWTH_REQUEST_INBOX_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EXTERNAL GROWTH REQUEST INBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Store inbound growth requests received from external OS domains.

role:
Canonical receive model for external growth requests.
This model stores external intake state, not Persona truth.

primary_key:
- inbox_request_id

natural_key:
- source_os
- source_event_id

fields:
- inbox_request_id
- source_event_id
- source_os
- source_company_id
- source_user_id
- persona_id
- growth_event_type
- growth_context_projection
- projection_hash
- source_projection_version
- request_status
- request_idempotency_key
- correlation_id
- causation_id
- received_at
- consumed_at
- dead_lettered_at
- last_error_code
- last_error_message
- consume_attempt_count
- created_at
- updated_at

source_os_enum:
- business-os
- life-os
- game-os
- streaming-os
- other-approved-os

request_status_enum:
- pending
- consuming
- consumed
- rejected
- failed
- dead_lettered
- ignored_duplicate

state_transition:
- pending -> consuming
- consuming -> consumed
- consuming -> rejected
- consuming -> failed
- failed -> consuming
- failed -> dead_lettered
- pending -> ignored_duplicate

duplicate_rule:
The same source_os + source_event_id must not produce duplicate effective growth application.

idempotency_rule:
request_idempotency_key must suppress duplicate effective processing
even when transport retries occur.

truth_boundary:
External OS sends growth projection only.
Persona truth must never be overwritten directly from inbox payload.

source_os_notes:
business-os:
- business milestone or quality projection
life-os:
- life continuity or condition projection
game-os:
- progression or interaction projection
streaming-os:
- stream continuity or audience interaction projection


--------------------------------------------------------------------------------
FILE: 030.model/100.integration/0300500011_PERSONA_EXTERNAL_USAGE_RESULT_CONTRACT_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EXTERNAL USAGE RESULT CONTRACT MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Represent outbound usage-related sync results returned by PersonaOS.

role:
Canonical outbound contract for permission, access, release,
and binding state.

primary_key:
- result_contract_id

natural_key:
- target_os
- target_user_id
- persona_id
- correlation_id
- result_contract_type

fields:
- result_contract_id
- target_os
- target_company_id
- target_user_id
- persona_id
- result_contract_type
- usage_permission_status
- access_state
- release_validity
- binding_state
- granted_scope
- denied_scope
- invalid_reason
- source_persona_state_version
- source_persona_release_version
- contract_version
- correlation_id
- causation_id
- built_at
- created_at

target_os_enum:
- business-os
- life-os
- game-os
- streaming-os
- other-approved-os

result_contract_type_enum:
- usage_permission_result
- access_state_result
- release_validity_result
- usage_binding_result

usage_permission_status_enum:
- pending
- granted
- denied
- revoked
- expired

state_transition_note:
Usage result contracts are immutable snapshots.
A new Persona-side state change produces a new contract rather than mutating an old one.

contract_version_rule:
External OS must treat contract_version as explicit contract schema version.

versioning_rule:
source_persona_state_version must identify the Persona-side state basis
used to build the result.

idempotency_rule:
The same effective Persona-side state version for the same target context
must not emit duplicate effective contracts without explicit rebroadcast intent.

truth_boundary:
External OS consumes reflected usage state only.
PersonaOS remains truth holder.

rules:
- permission and trust must be separate contracts
- target OS consumes this as reflected state, not truth ownership
- PersonaOS remains truth holder


--------------------------------------------------------------------------------
FILE: 030.model/100.integration/0300500012_PERSONA_EXTERNAL_TRUST_RESULT_CONTRACT_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EXTERNAL TRUST RESULT CONTRACT MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Represent outbound trust-related sync results returned by PersonaOS.

role:
Canonical outbound contract for trust gating values used by external OS domains.

primary_key:
- trust_contract_id

natural_key:
- target_os
- target_user_id
- persona_id
- correlation_id

fields:
- trust_contract_id
- target_os
- target_company_id
- target_user_id
- persona_id
- trust_score
- trust_level
- safety_score
- stability_score
- consistency_score
- evaluation_basis
- source_persona_state_version
- contract_version
- correlation_id
- causation_id
- last_evaluated_at
- built_at
- created_at

trust_level_enum:
- blocked
- low
- medium
- high
- privileged

state_transition_note:
Trust result contracts are immutable snapshots.
Updated trust requires a newly built contract.

contract_version_rule:
Trust result contracts must carry explicit contract_version.

versioning_rule:
source_persona_state_version must identify the Persona-side state basis
used to derive trust values.

idempotency_rule:
The same trust basis for the same target context must not emit duplicate
effective trust contracts without explicit rebroadcast intent.

truth_boundary:
External OS consumes reflected trust state only.
PersonaOS remains truth holder.

rules:
- trust values must not be merged into permission semantics
- external OS must combine trust with permission on its side
- PersonaOS is truth holder for trust values


--------------------------------------------------------------------------------
FILE: 030.model/100.integration/0300500013_PERSONA_EXTERNAL_SYNC_OUTBOX_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EXTERNAL SYNC OUTBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Store outbound sync results emitted by PersonaOS to external OS domains.

role:
Canonical dispatch queue for outbound usage and trust sync results.

primary_key:
- outbox_event_id

natural_key:
- event_idempotency_key

fields:
- outbox_event_id
- target_os
- target_company_id
- target_user_id
- sync_event_type
- payload
- payload_hash
- payload_contract_version
- dispatch_status
- retry_count
- next_retry_at
- dead_lettered_at
- last_error_code
- last_error_message
- source_persona_state_version
- correlation_id
- causation_id
- event_idempotency_key
- created_at
- dispatched_at
- updated_at

dispatch_status_enum:
- pending
- dispatching
- dispatched
- failed
- dead_lettered
- cancelled

state_transition:
- pending -> dispatching
- dispatching -> dispatched
- dispatching -> failed
- failed -> dispatching
- failed -> dead_lettered
- pending -> cancelled

trigger_conditions:
- usage result contract built
- trust result contract built
- rebroadcast required after material Persona-side state change
- target-specific repair sync approved

idempotency_rule:
event_idempotency_key must suppress duplicate effective sends.

immutability_rule:
Successfully dispatched payload must be immutable.

dead_letter_conditions:
- unrecoverable contract incompatibility
- unauthorized target
- retry budget exhausted with terminal classification


--------------------------------------------------------------------------------
FILE: 030.model/130.builder/0301600001_persona_builder_draft.md
--------------------------------------------------------------------------------

# ============================================================
# persona_builder_draft
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Represent the canonical draft truth
used only inside Persona Builder space.

This model is not final Persona mutable truth.


# MODEL TYPE

builder draft model


# PRIMARY KEY

- persona_builder_draft_id


# NATURAL KEY

- draft_scope
- draft_code
- draft_version


# FIELDS

- persona_builder_draft_id
- target_persona_ref
- draft_scope
- draft_code
- draft_version
- draft_status
- creator_identity
- latest_change_set_ref
- latest_validation_result_ref
- latest_approval_request_ref
- latest_publish_candidate_ref
- audit_bundle_ref
- created_at
- updated_at


# STATUS ENUM

- draft
- editing
- validated
- validation_failed
- approval_requested
- approval_rejected
- approved
- publish_prepared
- archived


# TRUTH BOUNDARY

This model belongs only to Builder domain.
It must not replace PersonaOS final mutable truth.


--------------------------------------------------------------------------------
FILE: 030.model/130.builder/0301600002_persona_builder_section_state.md
--------------------------------------------------------------------------------

# ============================================================
# persona_builder_section_state
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Represent per-section draft state inside Builder.


# PRIMARY KEY

- persona_builder_section_state_id


# FIELDS

- persona_builder_section_state_id
- persona_builder_draft_id
- section_scope
- section_status
- section_version
- material_change_flag
- latest_change_set_ref
- latest_validation_result_ref
- last_edited_at
- updated_at


# SECTION STATUS ENUM

- empty
- in_progress
- structurally_complete
- validated
- invalid
- approval_sensitive
- archived


--------------------------------------------------------------------------------
FILE: 030.model/130.builder/0301600003_persona_builder_validation_result.md
--------------------------------------------------------------------------------

# ============================================================
# persona_builder_validation_result
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Represent the result of a Builder validation run.


# PRIMARY KEY

- persona_builder_validation_result_id


# FIELDS

- persona_builder_validation_result_id
- persona_builder_draft_id
- validation_scope
- validation_stage
- overall_status
- issue_count
- blocking_issue_count
- warning_count
- validator_version
- evidence_reference
- generated_at
- created_at


# STATUS ENUM

- passed
- passed_with_warnings
- failed


--------------------------------------------------------------------------------
FILE: 030.model/130.builder/0301600004_persona_builder_approval_request.md
--------------------------------------------------------------------------------

# ============================================================
# persona_builder_approval_request
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Represent a governed approval request
for Builder draft progression.


# PRIMARY KEY

- persona_builder_approval_request_id


# FIELDS

- persona_builder_approval_request_id
- persona_builder_draft_id
- target_persona_ref
- request_scope
- request_reason
- requester_identity
- validation_result_ref
- approval_status
- review_deadline
- evidence_bundle_ref
- requested_at
- decided_at
- created_at
- updated_at


# STATUS ENUM

- approval_not_requested
- approval_requested
- under_review
- approved
- rejected
- returned_for_rework
- approval_expired
- archived


--------------------------------------------------------------------------------
FILE: 030.model/130.builder/0301600005_persona_builder_publish_candidate.md
--------------------------------------------------------------------------------

# ============================================================
# persona_builder_publish_candidate
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Represent a release-facing candidate
prepared by Builder after approval.


# PRIMARY KEY

- persona_builder_publish_candidate_id


# FIELDS

- persona_builder_publish_candidate_id
- target_persona_ref
- source_draft_id
- approval_request_ref
- candidate_scope
- candidate_status
- candidate_summary
- dependency_summary
- public_surface_summary
- release_dependency_flags
- handoff_target
- created_at
- updated_at


# CANDIDATE SCOPE ENUM

- snapshot
- package
- distribution
- marketplace
- visual_release
- voice_release


# STATUS ENUM

- publish_not_ready
- publish_candidate_prepared
- publish_candidate_invalid
- publish_ready_for_handoff
- handoff_requested
- handoff_completed
- handoff_failed
- archived


--------------------------------------------------------------------------------
FILE: 030.model/130.builder/0301600006_persona_builder_asset_binding.md
--------------------------------------------------------------------------------

# ============================================================
# persona_builder_asset_binding
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Represent Builder-side visual asset binding.


# PRIMARY KEY

- persona_builder_asset_binding_id


# FIELDS

- persona_builder_asset_binding_id
- bound_persona_ref
- visual_avatar_ref
- visual_asset_ref
- binding_role
- slot_ref
- state_scope
- expression_scope
- animation_scope
- binding_status
- created_at
- updated_at


# STATUS ENUM

- binding_draft
- binding_incomplete
- binding_validated
- binding_invalid
- binding_approved
- binding_publish_ready
- archived


--------------------------------------------------------------------------------
FILE: 030.model/130.builder/0301600007_persona_builder_visual_manifest_candidate.md
--------------------------------------------------------------------------------

# ============================================================
# persona_builder_visual_manifest_candidate
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Represent Builder-side visual manifest candidate
for runtime and release preparation.


# PRIMARY KEY

- persona_builder_visual_manifest_candidate_id


# FIELDS

- persona_builder_visual_manifest_candidate_id
- target_persona_ref
- visual_avatar_ref
- asset_binding_set_ref
- state_expression_map_ref
- state_animation_map_ref
- anchor_metadata_ref
- manifest_status
- summary
- created_at
- updated_at


# STATUS ENUM

- draft
- validated
- invalid
- approved
- publish_ready
- archived


--------------------------------------------------------------------------------
FILE: 030.model/130.builder/0301600008_persona_builder_change_set.md
--------------------------------------------------------------------------------

# ============================================================
# persona_builder_change_set
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Represent a scoped set of edits
applied to a Builder draft.


# PRIMARY KEY

- persona_builder_change_set_id


# FIELDS

- persona_builder_change_set_id
- persona_builder_draft_id
- actor_identity
- section_scope
- change_summary
- material_change_flag
- prior_state_ref
- new_state_ref
- created_at


--------------------------------------------------------------------------------
FILE: 030.model/130.builder/0301600009_persona_builder_audit_record.md
--------------------------------------------------------------------------------

# ============================================================
# persona_builder_audit_record
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Represent auditable Builder actions.


# PRIMARY KEY

- persona_builder_audit_record_id


# FIELDS

- persona_builder_audit_record_id
- target_draft_id
- actor_identity
- action_type
- action_scope
- action_summary
- related_validation_ref
- related_approval_ref
- related_publish_candidate_ref
- occurred_at
- created_at


--------------------------------------------------------------------------------
FILE: 030.model/210.persona-core/0302100_PERSONA_CORE_IDENTITY_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA CORE IDENTITY MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical core identity model for PersonaOS.

model_type:
- persona identity truth model

primary_key:
- persona_core_identity_id

natural_key:
- persona_id
- persona_code
- identity_version

fields:
- persona_core_identity_id
- persona_id
- persona_code
- identity_version
- identity_status
- canonical_name
- origin_scope
- lifecycle_class
- effective_from
- effective_until
- created_at
- updated_at

identity_status_enum:
- draft
- active
- suspended
- archived

contract_version_rule:
Persona core identity must expose explicit version semantics.

truth_boundary:
Persona core identity truth belongs to PersonaOS persona-core domain.


--------------------------------------------------------------------------------
FILE: 030.model/210.persona-core/0302101_PERSONA_STATE_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA STATE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona state model.

model_type:
- persona state truth model

primary_key:
- persona_state_id

natural_key:
- persona_id
- state_scope
- state_version

fields:
- persona_state_id
- persona_id
- state_scope
- state_version
- state_status
- current_mode
- emotional_state
- cognitive_state
- source_state_version
- observed_at
- created_at
- updated_at

state_status_enum:
- active
- projected
- constrained
- archived

truth_boundary:
Persona state truth belongs to PersonaOS persona-core domain.


--------------------------------------------------------------------------------
FILE: 030.model/210.persona-core/0302102_PERSONA_GROWTH_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA GROWTH MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona growth model.

model_type:
- persona growth truth model

primary_key:
- persona_growth_id

natural_key:
- persona_id
- growth_scope
- growth_version

fields:
- persona_growth_id
- persona_id
- growth_scope
- growth_version
- growth_status
- growth_value
- growth_reason_summary
- source_state_version
- measured_at
- created_at
- updated_at

growth_status_enum:
- active
- revised
- frozen
- archived

truth_boundary:
Persona growth truth belongs to PersonaOS persona-core domain.


--------------------------------------------------------------------------------
FILE: 030.model/210.persona-core/0302103_PERSONA_TRUST_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA TRUST MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona trust model.

model_type:
- persona trust truth model

primary_key:
- persona_trust_id

natural_key:
- persona_id
- trust_scope
- trust_version

fields:
- persona_trust_id
- persona_id
- trust_scope
- trust_version
- trust_status
- trust_value
- trust_reason_summary
- source_state_version
- measured_at
- created_at
- updated_at

trust_status_enum:
- active
- revised
- frozen
- archived

truth_boundary:
Persona trust truth belongs to PersonaOS persona-core domain.


--------------------------------------------------------------------------------
FILE: 030.model/210.persona-core/0302104_PERSONA_SNAPSHOT_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA SNAPSHOT MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona snapshot model.

model_type:
- persona snapshot truth model

primary_key:
- persona_snapshot_id

natural_key:
- persona_id
- snapshot_ref
- snapshot_version

fields:
- persona_snapshot_id
- persona_id
- snapshot_ref
- snapshot_version
- snapshot_status
- snapshot_hash
- source_lineage
- source_state_version
- captured_at
- created_at
- updated_at

snapshot_status_enum:
- captured
- superseded
- invalidated
- archived

truth_boundary:
Persona snapshot truth belongs to PersonaOS persona-core domain.


--------------------------------------------------------------------------------
FILE: 030.model/220.rights-external/0302200_PERSONA_LICENSE_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA LICENSE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona license model.

model_type:
- persona rights truth model

primary_key:
- persona_license_id

natural_key:
- license_scope
- license_code
- license_version

fields:
- persona_license_id
- license_scope
- license_code
- license_version
- license_status
- licensor_scope
- licensee_scope
- rights_summary
- effective_from
- effective_until
- created_at
- updated_at

license_status_enum:
- draft
- approved
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
Persona licenses must expose explicit version semantics.

truth_boundary:
Persona license truth belongs to PersonaOS rights-external domain.


--------------------------------------------------------------------------------
FILE: 030.model/220.rights-external/0302201_PERSONA_ACCESS_GRANT_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA ACCESS GRANT MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona access grant model.

model_type:
- persona access truth model

primary_key:
- persona_access_grant_id

natural_key:
- grant_scope
- grant_code
- grant_version

fields:
- persona_access_grant_id
- grant_scope
- grant_code
- grant_version
- grant_status
- grantee_scope
- access_summary
- source_license_code
- effective_from
- effective_until
- created_at
- updated_at

grant_status_enum:
- draft
- approved
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
Persona access grants must expose explicit version semantics.

truth_boundary:
Persona access-grant truth belongs to PersonaOS rights-external domain.


--------------------------------------------------------------------------------
FILE: 030.model/220.rights-external/0302202_PERSONA_TRANSFER_RECORD_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA TRANSFER RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona transfer record model.

model_type:
- persona transfer truth model

primary_key:
- persona_transfer_record_id

natural_key:
- transfer_scope
- transfer_ref
- correlation_id

fields:
- persona_transfer_record_id
- transfer_scope
- transfer_ref
- correlation_id
- transfer_status
- source_owner_scope
- target_owner_scope
- transfer_summary
- source_state_version
- transferred_at
- created_at
- updated_at

transfer_status_enum:
- proposed
- approved
- transferred
- failed
- reversed
- archived

idempotency_rule:
transfer_scope + transfer_ref must suppress duplicate effective persona transfer.

truth_boundary:
Persona transfer truth belongs to PersonaOS rights-external domain.


--------------------------------------------------------------------------------
FILE: 030.model/220.rights-external/0302203_PERSONA_EXTERNAL_RELEASE_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EXTERNAL RELEASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona external release model.

model_type:
- persona release truth model

primary_key:
- persona_external_release_id

natural_key:
- release_scope
- release_code
- release_version

fields:
- persona_external_release_id
- release_scope
- release_code
- release_version
- release_status
- source_persona_id
- release_summary
- release_hash
- effective_from
- effective_until
- created_at
- updated_at

release_status_enum:
- draft
- approved
- published
- suspended
- revoked
- archived

contract_version_rule:
Persona external releases must expose explicit version semantics.

truth_boundary:
Persona external release truth belongs to PersonaOS rights-external domain.


--------------------------------------------------------------------------------
FILE: 030.model/220.rights-external/0302204_PERSONA_PACKAGE_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA PACKAGE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona package model.

model_type:
- persona package truth model

primary_key:
- persona_package_id

natural_key:
- package_scope
- package_code
- package_version

fields:
- persona_package_id
- package_scope
- package_code
- package_version
- package_status
- source_persona_id
- package_summary
- package_hash
- effective_from
- effective_until
- created_at
- updated_at

package_status_enum:
- draft
- approved
- published
- superseded
- revoked
- archived

contract_version_rule:
Persona packages must expose explicit version semantics.

truth_boundary:
Persona package truth belongs to PersonaOS rights-external domain.


--------------------------------------------------------------------------------
FILE: 030.model/230.external-sync/0302300_PERSONA_EXTERNAL_CONTRACT_REGISTRY_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EXTERNAL CONTRACT REGISTRY MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical external contract registry model.

model_type:
- external contract truth model

primary_key:
- persona_external_contract_registry_id

natural_key:
- contract_scope
- contract_code
- contract_version

fields:
- persona_external_contract_registry_id
- contract_scope
- contract_code
- contract_version
- contract_status
- producer_scope
- consumer_scope
- schema_hash
- compatibility_status
- created_at
- updated_at

contract_status_enum:
- draft
- approved
- active
- superseded
- revoked
- archived

compatibility_status_enum:
- compatible
- limited
- incompatible

contract_version_rule:
Persona external contracts must expose explicit version semantics.

truth_boundary:
Persona external contract truth belongs to PersonaOS external-sync domain.


--------------------------------------------------------------------------------
FILE: 030.model/230.external-sync/0302301_PERSONA_EXTERNAL_COMPATIBILITY_REVIEW_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EXTERNAL COMPATIBILITY REVIEW MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical external compatibility review model.

model_type:
- contract review truth model

primary_key:
- persona_external_compatibility_review_id

natural_key:
- review_scope
- review_ref
- contract_code

fields:
- persona_external_compatibility_review_id
- review_scope
- review_ref
- contract_code
- review_status
- compatibility_status
- reviewer_scope
- source_state_version
- reviewed_at
- created_at
- updated_at

review_status_enum:
- pending
- completed
- superseded
- archived

compatibility_status_enum:
- compatible
- limited
- incompatible

truth_boundary:
Persona compatibility review truth belongs to PersonaOS external-sync domain.


--------------------------------------------------------------------------------
FILE: 030.model/230.external-sync/0302302_PERSONA_EXTERNAL_USAGE_RESULT_CONTRACT_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EXTERNAL USAGE RESULT CONTRACT MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical external usage result contract model.

model_type:
- usage contract truth model

primary_key:
- persona_external_usage_result_contract_id

natural_key:
- contract_scope
- contract_code
- contract_version

fields:
- persona_external_usage_result_contract_id
- contract_scope
- contract_code
- contract_version
- contract_status
- producer_scope
- consumer_scope
- required_field_summary
- schema_hash
- created_at
- updated_at

contract_status_enum:
- draft
- approved
- active
- superseded
- revoked
- archived

contract_version_rule:
External usage result contracts must expose explicit version semantics.

truth_boundary:
Usage result contract truth belongs to PersonaOS external-sync domain.


--------------------------------------------------------------------------------
FILE: 030.model/230.external-sync/0302303_PERSONA_EXTERNAL_TRUST_RESULT_CONTRACT_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EXTERNAL TRUST RESULT CONTRACT MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical external trust result contract model.

model_type:
- trust contract truth model

primary_key:
- persona_external_trust_result_contract_id

natural_key:
- contract_scope
- contract_code
- contract_version

fields:
- persona_external_trust_result_contract_id
- contract_scope
- contract_code
- contract_version
- contract_status
- producer_scope
- consumer_scope
- required_field_summary
- schema_hash
- created_at
- updated_at

contract_status_enum:
- draft
- approved
- active
- superseded
- revoked
- archived

contract_version_rule:
External trust result contracts must expose explicit version semantics.

truth_boundary:
Trust result contract truth belongs to PersonaOS external-sync domain.


--------------------------------------------------------------------------------
FILE: 030.model/230.external-sync/0302304_PERSONA_EXTERNAL_SYNC_EVENT_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EXTERNAL SYNC EVENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical external sync event model.

model_type:
- sync event truth model

primary_key:
- persona_external_sync_event_id

natural_key:
- event_scope
- event_ref
- correlation_id

fields:
- persona_external_sync_event_id
- event_scope
- event_ref
- correlation_id
- event_status
- event_type
- source_contract_code
- payload_hash
- source_state_version
- occurred_at
- created_at
- updated_at

event_status_enum:
- created
- dispatched
- consumed
- failed
- archived

truth_boundary:
External sync event truth belongs to PersonaOS external-sync domain.


--------------------------------------------------------------------------------
FILE: 030.model/230.external-sync/0302305_PERSONA_EXTERNAL_SYNC_INBOX_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EXTERNAL SYNC INBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical external sync inbox model.

model_type:
- sync intake truth model

primary_key:
- persona_external_sync_inbox_id

natural_key:
- inbox_scope
- inbox_ref
- correlation_id

fields:
- persona_external_sync_inbox_id
- inbox_scope
- inbox_ref
- correlation_id
- inbox_status
- source_scope
- payload_hash
- source_state_version
- received_at
- created_at
- updated_at

inbox_status_enum:
- pending
- consumed
- ignored_duplicate
- failed
- archived

idempotency_rule:
inbox_scope + inbox_ref must suppress duplicate effective sync consumption.

truth_boundary:
External sync inbox truth belongs to PersonaOS external-sync domain.


--------------------------------------------------------------------------------
FILE: 030.model/230.external-sync/0302306_PERSONA_EXTERNAL_SYNC_OUTBOX_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EXTERNAL SYNC OUTBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical external sync outbox model.

model_type:
- sync dispatch truth model

primary_key:
- persona_external_sync_outbox_id

natural_key:
- outbox_scope
- outbox_ref
- correlation_id

fields:
- persona_external_sync_outbox_id
- outbox_scope
- outbox_ref
- correlation_id
- outbox_status
- target_scope
- payload_hash
- source_state_version
- queued_at
- created_at
- updated_at

outbox_status_enum:
- pending
- dispatched
- failed
- dead_lettered
- archived

idempotency_rule:
outbox_scope + outbox_ref must suppress duplicate effective sync dispatch.

truth_boundary:
External sync outbox truth belongs to PersonaOS external-sync domain.


--------------------------------------------------------------------------------
FILE: 030.model/230.external-sync/0302307_PERSONA_SYNC_FAILURE_RECORD_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA SYNC FAILURE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical sync failure record model.

model_type:
- sync failure truth model

primary_key:
- persona_sync_failure_record_id

natural_key:
- failure_scope
- failure_ref
- correlation_id

fields:
- persona_sync_failure_record_id
- failure_scope
- failure_ref
- correlation_id
- failure_status
- failure_type
- source_contract_code
- failure_summary
- source_state_version
- occurred_at
- created_at
- updated_at

failure_status_enum:
- active
- retriable
- dead_lettered
- restored
- archived

truth_boundary:
Sync failure truth belongs to PersonaOS external-sync domain.


--------------------------------------------------------------------------------
FILE: 030.model/230.external-sync/0302308_PERSONA_SYNC_RETRY_PROFILE_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA SYNC RETRY PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical sync retry profile model.

model_type:
- retry governance truth model

primary_key:
- persona_sync_retry_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- persona_sync_retry_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- retry_summary
- backoff_summary
- terminal_cutoff_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Sync retry profiles must expose explicit version semantics.

truth_boundary:
Sync retry profile truth belongs to PersonaOS external-sync domain.


--------------------------------------------------------------------------------
FILE: 030.model/230.external-sync/0302309_PERSONA_SYNC_DEAD_LETTER_RECORD_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA SYNC DEAD LETTER RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical sync dead letter record model.

model_type:
- terminal sync failure truth model

primary_key:
- persona_sync_dead_letter_record_id

natural_key:
- dead_letter_scope
- dead_letter_ref
- correlation_id

fields:
- persona_sync_dead_letter_record_id
- dead_letter_scope
- dead_letter_ref
- correlation_id
- dead_letter_status
- source_failure_ref
- dead_letter_summary
- source_state_version
- recorded_at
- created_at
- updated_at

dead_letter_status_enum:
- quarantined
- restored
- invalidated
- archived

truth_boundary:
Sync dead letter truth belongs to PersonaOS external-sync domain.


--------------------------------------------------------------------------------
FILE: 030.model/240.expression-composition/0302400_PERSONA_VISUAL_PROFILE_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA VISUAL PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical visual profile model.

model_type:
- visual identity truth model

primary_key:
- persona_visual_profile_id

natural_key:
- persona_id
- visual_profile_code
- visual_profile_version

fields:
- persona_visual_profile_id
- persona_id
- visual_profile_code
- visual_profile_version
- profile_status
- character_code
- expression_summary
- visual_hash
- effective_from
- effective_until
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- revoked
- archived

contract_version_rule:
Visual profiles must expose explicit version semantics.

truth_boundary:
Visual profile truth belongs to PersonaOS expression-composition domain.


--------------------------------------------------------------------------------
FILE: 030.model/240.expression-composition/0302401_PERSONA_VOICE_PROFILE_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA VOICE PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical voice profile model.

model_type:
- voice identity truth model

primary_key:
- persona_voice_profile_id

natural_key:
- persona_id
- voice_profile_code
- voice_profile_version

fields:
- persona_voice_profile_id
- persona_id
- voice_profile_code
- voice_profile_version
- profile_status
- voice_class
- speech_summary
- voice_hash
- effective_from
- effective_until
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- revoked
- archived

contract_version_rule:
Voice profiles must expose explicit version semantics.

truth_boundary:
Voice profile truth belongs to PersonaOS expression-composition domain.


--------------------------------------------------------------------------------
FILE: 030.model/240.expression-composition/0302402_PERSONA_SKILL_PROFILE_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA SKILL PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical skill profile model.

model_type:
- capability truth model

primary_key:
- persona_skill_profile_id

natural_key:
- persona_id
- skill_profile_code
- skill_profile_version

fields:
- persona_skill_profile_id
- persona_id
- skill_profile_code
- skill_profile_version
- profile_status
- skill_summary
- capability_hash
- source_state_version
- effective_from
- effective_until
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- revoked
- archived

contract_version_rule:
Skill profiles must expose explicit version semantics.

truth_boundary:
Skill profile truth belongs to PersonaOS expression-composition domain.


--------------------------------------------------------------------------------
FILE: 030.model/240.expression-composition/0302403_PERSONA_ANIMATION_PROFILE_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA ANIMATION PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical animation profile model.

model_type:
- motion expression truth model

primary_key:
- persona_animation_profile_id

natural_key:
- persona_id
- animation_profile_code
- animation_profile_version

fields:
- persona_animation_profile_id
- persona_id
- animation_profile_code
- animation_profile_version
- profile_status
- motion_summary
- animation_hash
- effective_from
- effective_until
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- revoked
- archived

contract_version_rule:
Animation profiles must expose explicit version semantics.

truth_boundary:
Animation profile truth belongs to PersonaOS expression-composition domain.


--------------------------------------------------------------------------------
FILE: 030.model/240.expression-composition/0302404_PERSONA_PACKAGE_ITEM_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA PACKAGE ITEM MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona package item model.

model_type:
- package item truth model

primary_key:
- persona_package_item_id

natural_key:
- package_code
- item_ref
- item_version

fields:
- persona_package_item_id
- package_code
- item_ref
- item_version
- item_status
- item_type
- source_component_code
- inclusion_summary
- created_at
- updated_at

item_status_enum:
- draft
- approved
- active
- removed
- archived

contract_version_rule:
Persona package items must expose explicit version semantics.

truth_boundary:
Persona package item truth belongs to PersonaOS expression-composition domain.


--------------------------------------------------------------------------------
FILE: 030.model/240.expression-composition/0302405_PERSONA_PACKAGE_COMPOSITION_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA PACKAGE COMPOSITION MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona package composition model.

model_type:
- package composition truth model

primary_key:
- persona_package_composition_id

natural_key:
- package_code
- composition_code
- composition_version

fields:
- persona_package_composition_id
- package_code
- composition_code
- composition_version
- composition_status
- composition_summary
- composition_hash
- source_state_version
- effective_from
- effective_until
- created_at
- updated_at

composition_status_enum:
- draft
- approved
- active
- superseded
- invalidated
- archived

contract_version_rule:
Package compositions must expose explicit version semantics.

truth_boundary:
Package composition truth belongs to PersonaOS expression-composition domain.


--------------------------------------------------------------------------------
FILE: 030.model/240.expression-composition/0302406_PERSONA_DELIVERY_MANIFEST_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA DELIVERY MANIFEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona delivery manifest model.

model_type:
- delivery manifest truth model

primary_key:
- persona_delivery_manifest_id

natural_key:
- manifest_scope
- manifest_code
- manifest_version

fields:
- persona_delivery_manifest_id
- manifest_scope
- manifest_code
- manifest_version
- manifest_status
- source_package_code
- required_field_summary
- manifest_hash
- created_at
- updated_at

manifest_status_enum:
- draft
- approved
- published
- superseded
- revoked
- archived

contract_version_rule:
Delivery manifests must expose explicit version semantics.

truth_boundary:
Delivery manifest truth belongs to PersonaOS expression-composition domain.


--------------------------------------------------------------------------------
FILE: 030.model/240.expression-composition/0302407_PERSONA_MANIFEST_PROJECTION_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA MANIFEST PROJECTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona manifest projection model.

model_type:
- projection truth model

primary_key:
- persona_manifest_projection_id

natural_key:
- projection_scope
- projection_ref
- manifest_code

fields:
- persona_manifest_projection_id
- projection_scope
- projection_ref
- manifest_code
- projection_status
- target_scope
- projection_hash
- source_state_version
- projected_at
- created_at
- updated_at

projection_status_enum:
- pending
- built
- delivered
- failed
- archived

truth_boundary:
Manifest projection truth belongs to PersonaOS expression-composition domain.


--------------------------------------------------------------------------------
FILE: 030.model/240.expression-composition/0302408_PERSONA_BUNDLE_DELIVERY_RECORD_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA BUNDLE DELIVERY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona bundle delivery record model.

model_type:
- bundle delivery truth model

primary_key:
- persona_bundle_delivery_record_id

natural_key:
- delivery_scope
- delivery_ref
- correlation_id

fields:
- persona_bundle_delivery_record_id
- delivery_scope
- delivery_ref
- correlation_id
- delivery_status
- target_scope
- bundle_hash
- source_state_version
- delivered_at
- created_at
- updated_at

delivery_status_enum:
- pending
- delivered
- failed
- reversed
- archived

idempotency_rule:
delivery_scope + delivery_ref must suppress duplicate effective bundle delivery.

truth_boundary:
Bundle delivery truth belongs to PersonaOS expression-composition domain.


--------------------------------------------------------------------------------
FILE: 030.model/240.expression-composition/0302409_PERSONA_COMPOSITION_VALIDATION_RECORD_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA COMPOSITION VALIDATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona composition validation record model.

model_type:
- composition validation truth model

primary_key:
- persona_composition_validation_record_id

natural_key:
- validation_scope
- validation_ref
- composition_code

fields:
- persona_composition_validation_record_id
- validation_scope
- validation_ref
- composition_code
- validation_status
- validation_result
- source_state_version
- validated_at
- created_at
- updated_at

validation_status_enum:
- pending
- passed
- failed
- superseded
- archived

truth_boundary:
Composition validation truth belongs to PersonaOS expression-composition domain.


--------------------------------------------------------------------------------
FILE: 030.model/250.cross-cutting-completion/0302500_PERSONA_LIFECYCLE_STATE_PROFILE_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA LIFECYCLE STATE PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical lifecycle state profile model for PersonaOS.

model_type:
- lifecycle governance truth model

primary_key:
- persona_lifecycle_state_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- persona_lifecycle_state_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- state_machine_summary
- allowed_transition_summary
- terminal_state_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Persona lifecycle state profiles must expose explicit version semantics.

truth_boundary:
Persona lifecycle state profile truth belongs to PersonaOS cross-cutting-completion domain.


--------------------------------------------------------------------------------
FILE: 030.model/250.cross-cutting-completion/0302501_PERSONA_AUTHORITY_DECISION_RECORD_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA AUTHORITY DECISION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical authority decision record model for PersonaOS.

model_type:
- authority trace truth model

primary_key:
- persona_authority_decision_record_id

natural_key:
- decision_scope
- decision_ref
- correlation_id

fields:
- persona_authority_decision_record_id
- decision_scope
- decision_ref
- correlation_id
- decision_status
- deciding_scope
- authority_basis
- decision_summary
- source_state_version
- decided_at
- created_at
- updated_at

decision_status_enum:
- proposed
- approved
- rejected
- executed
- superseded
- archived

truth_boundary:
Persona authority decision truth belongs to PersonaOS cross-cutting-completion domain.


--------------------------------------------------------------------------------
FILE: 030.model/250.cross-cutting-completion/0302502_PERSONA_APPROVAL_TRAIL_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA APPROVAL TRAIL MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical approval trail model for PersonaOS.

model_type:
- approval lineage truth model

primary_key:
- persona_approval_trail_id

natural_key:
- trail_scope
- trail_ref
- correlation_id

fields:
- persona_approval_trail_id
- trail_scope
- trail_ref
- correlation_id
- trail_status
- approver_scope
- approval_summary
- source_state_version
- approved_at
- created_at
- updated_at

trail_status_enum:
- recorded
- superseded
- invalidated
- archived

truth_boundary:
Persona approval trail truth belongs to PersonaOS cross-cutting-completion domain.


--------------------------------------------------------------------------------
FILE: 030.model/250.cross-cutting-completion/0302503_PERSONA_EVIDENCE_LINKAGE_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA EVIDENCE LINKAGE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical evidence linkage model for PersonaOS.

model_type:
- cross-domain evidence truth model

primary_key:
- persona_evidence_linkage_id

natural_key:
- linkage_scope
- linkage_ref
- evidence_hash

fields:
- persona_evidence_linkage_id
- linkage_scope
- linkage_ref
- evidence_hash
- linkage_status
- source_record_ref
- target_record_ref
- source_state_version
- linked_at
- created_at
- updated_at

linkage_status_enum:
- recorded
- superseded
- invalidated
- archived

truth_boundary:
Persona evidence linkage truth belongs to PersonaOS cross-cutting-completion domain.


--------------------------------------------------------------------------------
FILE: 030.model/250.cross-cutting-completion/0302504_PERSONA_RETRY_PROFILE_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA RETRY PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical retry profile model for PersonaOS.

model_type:
- retry governance truth model

primary_key:
- persona_retry_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- persona_retry_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- retry_summary
- backoff_summary
- terminal_cutoff_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Persona retry profiles must expose explicit version semantics.

truth_boundary:
Persona retry profile truth belongs to PersonaOS cross-cutting-completion domain.


--------------------------------------------------------------------------------
FILE: 030.model/250.cross-cutting-completion/0302505_PERSONA_DEAD_LETTER_RECORD_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA DEAD LETTER RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical dead letter record model for PersonaOS.

model_type:
- terminal failure truth model

primary_key:
- persona_dead_letter_record_id

natural_key:
- dead_letter_scope
- dead_letter_ref
- correlation_id

fields:
- persona_dead_letter_record_id
- dead_letter_scope
- dead_letter_ref
- correlation_id
- dead_letter_status
- source_failure_ref
- dead_letter_summary
- source_state_version
- recorded_at
- created_at
- updated_at

dead_letter_status_enum:
- quarantined
- restored
- invalidated
- archived

truth_boundary:
Persona dead letter truth belongs to PersonaOS cross-cutting-completion domain.


--------------------------------------------------------------------------------
FILE: 030.model/250.cross-cutting-completion/0302506_PERSONA_OWNERSHIP_BOUNDARY_RECORD_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA OWNERSHIP BOUNDARY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical ownership boundary record model for PersonaOS.

model_type:
- truth-boundary governance model

primary_key:
- persona_ownership_boundary_record_id

natural_key:
- boundary_scope
- boundary_ref
- correlation_id

fields:
- persona_ownership_boundary_record_id
- boundary_scope
- boundary_ref
- correlation_id
- boundary_status
- owner_domain_code
- consumer_domain_code
- truth_boundary_summary
- source_state_version
- recorded_at
- created_at
- updated_at

boundary_status_enum:
- active
- revised
- superseded
- archived

truth_boundary:
Persona ownership boundary truth belongs to PersonaOS cross-cutting-completion domain.


--------------------------------------------------------------------------------
FILE: 030.model/250.cross-cutting-completion/0302507_PERSONA_COMPATIBILITY_RECORD_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA COMPATIBILITY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical compatibility record model for PersonaOS.

model_type:
- compatibility governance truth model

primary_key:
- persona_compatibility_record_id

natural_key:
- compatibility_scope
- source_version_code
- target_version_code

fields:
- persona_compatibility_record_id
- compatibility_scope
- source_version_code
- target_version_code
- compatibility_status
- compatibility_summary
- source_state_version
- recorded_at
- created_at
- updated_at

compatibility_status_enum:
- compatible
- limited
- incompatible
- superseded
- archived

truth_boundary:
Persona compatibility truth belongs to PersonaOS cross-cutting-completion domain.


