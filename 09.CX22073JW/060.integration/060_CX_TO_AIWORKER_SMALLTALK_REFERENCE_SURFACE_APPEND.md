# CX22073JW to AIWorkerOS Smalltalk Reference Surface Append

status: appended-design
system: CX22073JW
consumer_system: AIWorkerOS
owner: Boss
prepared_by: Zero

## 1. Provider / consumer rule

CX22073JW is the provider of reusable knowledge/materials.
AIWorkerOS is the consumer that decides behavior.

Therefore, bridge views that combine AIWorker behavior with CX knowledge belong on the AIWorkerOS side.

## 2. CX provider surfaces

Provider views:
- cx22073jw.vw_knowledge_directory
- cx22073jw.vw_topic_directory
- cx22073jw.vw_topic_material_catalog
- cx22073jw.vw_topic_material_summary

## 3. AIWorker consumer bridge

Consumer bridge:
- aiworker.vw_dialog_knowledge_reference

The bridge reads CX provider views through the scope defined in:
- aiworker.conversation_reference_scope

## 4. Scope rule

AIWorkerOS controls which CX materials are available to a conversation profile.

The scope may filter by:
- domain_code
- topic_code
- topic_group_code
- material_kind_code
- season_code

## 5. Example meaning

A casual smalltalk profile may allow:
- domain_code = casual_talk
- topic_group_code = daily_light
- topic_group_code = interest

Then aiworker.vw_dialog_knowledge_reference returns only the matching CX materials for that profile.

## 6. Design decision

Do not duplicate CX topic materials in AIWorkerOS.
Do not move AIWorker behavior controls into CX22073JW.
