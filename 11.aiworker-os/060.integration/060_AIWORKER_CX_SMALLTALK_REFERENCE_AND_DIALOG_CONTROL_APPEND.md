# AIWorkerOS / CX22073JW Smalltalk Reference Integration Append

status: appended-design
system: AIWorkerOS
linked_system: CX22073JW
owner: Boss
prepared_by: Zero

## 1. Boundary

AIWorkerOS controls how AI workers speak.
CX22073JW provides reusable knowledge and topic materials.

The bridge view belongs to AIWorkerOS because the consumer is AIWorkerOS.

## 2. AIWorkerOS owns dialog control

AIWorkerOS owns:
- forbidden / caution expression control
- prohibited topic categories
- redirect templates
- safety boundary rules
- dialog governance metadata
- conversation profile
- conversation profile steps
- conversation reference scope
- learning / growth delta logs

Canonical AIWorkerOS tables:
- aiworker.control_policy_package
- aiworker.conversation_profile
- aiworker.conversation_profile_step
- aiworker.expression_rule
- aiworker.topic_restriction
- aiworker.redirect_template
- aiworker.boundary_rule
- aiworker.learning_delta_log
- aiworker.conversation_reference_scope

Canonical AIWorkerOS views:
- aiworker.vw_dialog_policy_package_directory
- aiworker.vw_dialog_profile_catalog
- aiworker.vw_dialog_profile_step_catalog
- aiworker.vw_dialog_rule_catalog
- aiworker.vw_dialog_redirect_template_catalog
- aiworker.vw_model_growth_delta_summary
- aiworker.vw_dialog_reference_scope_catalog
- aiworker.vw_dialog_knowledge_reference

## 3. CX22073JW owns reusable materials

CX22073JW owns:
- smalltalk reusable knowledge
- light topic references
- topic materials
- season / weather / food / hobby / entertainment / daily-life reference material

Canonical CX tables:
- cx22073jw.knowledge_entry
- cx22073jw.topic_reference
- cx22073jw.topic_material

Canonical CX views:
- cx22073jw.vw_knowledge_directory
- cx22073jw.vw_topic_directory
- cx22073jw.vw_topic_material_catalog
- cx22073jw.vw_topic_material_summary

## 4. Bridge rule

The bridge view is:
- aiworker.vw_dialog_knowledge_reference

This view connects:
- aiworker dialog profile / service / model / style
- aiworker conversation_reference_scope
- CX reusable knowledge / topic material views

This view is scoped.
It must return only CX materials allowed by aiworker.conversation_reference_scope.

## 5. Responsibility rule

CX is the material provider.
AIWorkerOS is the behavior consumer.

Therefore:
- CX must not decide worker behavior.
- AIWorkerOS must not duplicate CX knowledge as canonical knowledge.
- AIWorkerOS may reference CX materials through scoped views.
- AIWorkerOS decides how and when to use those materials.

## 6. Runtime assembly concept

1. Select worker model.
2. Select service.
3. Resolve conversation profile.
4. Resolve interaction style.
5. Resolve dialog control rules.
6. Resolve allowed CX reference scope.
7. Read allowed knowledge/materials from aiworker.vw_dialog_knowledge_reference.
8. Apply topic bias and expression overlay.
9. Apply safety boundary and redirect controls.
10. Record learning/growth delta in aiworker.learning_delta_log.
