# ARTIST-ARCHITECTURE-BRAIN-0 candidate placement note

## Status

- DB_WRITE=NO
- DDL_APPLY=NO
- PATCH=NO
- API_POST=NO
- GIT_PUSH=NO
- This document is a read-only inventory output, not a DDL proposal.

---

# 1. Core decision

Architecture design should not be stored only under artist brain.

Correct split:

- Artist brain:
  - visual expression
  - style
  - color
  - atmosphere
  - composition
  - presentation image direction

- Architecture brain:
  - building type
  - spatial planning
  - zoning
  - flow/circulation
  - material
  - structure caution
  - environment design
  - safety/code caution
  - interior/landscape design knowledge

Architecture design should be:

- architecture brain as primary
- artist brain as visual/presentation support

---

# 2. CX22073JW responsibility

CX22073JW should hold non-agentic reference brain data.

## Artist reference candidates

- cx22073jw.artist_medium_taxonomy
- cx22073jw.artist_style_reference
- cx22073jw.artist_technique_reference
- cx22073jw.artist_genre_reference
- cx22073jw.artist_composition_pattern
- cx22073jw.artist_color_palette_reference
- cx22073jw.artist_music_theory_reference
- cx22073jw.artist_video_direction_reference
- cx22073jw.artist_commercial_use_caution
- cx22073jw.artist_rights_risk_reference
- cx22073jw.artist_quality_rubric_reference

## Architecture reference candidates

- cx22073jw.architecture_style_reference
- cx22073jw.architecture_space_planning_reference
- cx22073jw.architecture_building_type_reference
- cx22073jw.architecture_material_reference
- cx22073jw.architecture_structure_basic_reference
- cx22073jw.architecture_environment_design_reference
- cx22073jw.architecture_code_safety_caution
- cx22073jw.architecture_interior_design_reference
- cx22073jw.architecture_landscape_design_reference
- cx22073jw.architecture_presentation_reference
- cx22073jw.architecture_artist_style_bridge

CX22073JW must not execute workflows.
CX22073JW must not decide robot runtime permissions.
CX22073JW remains a reference/data/brain foundation.

---

# 3. AIWorkerOS responsibility

AIWorkerOS should hold robot execution control, analysis results, read policies, rights/safety checks, quality reviews, and deliverable packaging.

## Artist control/result candidates

- aiworker.artist_robot_capability_profile
- aiworker.artist_robot_read_policy
- aiworker.artist_generation_workflow
- aiworker.artist_media_analysis_result
- aiworker.artist_request_source_material
- aiworker.artist_rights_safety_check
- aiworker.artist_quality_review_result
- aiworker.artist_deliverable_plan
- aiworker.artist_deliverable_package

## Architecture control/result candidates

- aiworker.architecture_robot_capability_profile
- aiworker.architecture_robot_read_policy
- aiworker.architecture_design_workflow
- aiworker.architecture_design_analysis_result
- aiworker.architecture_safety_caution_check
- aiworker.architecture_quality_review_result
- aiworker.architecture_deliverable_plan
- aiworker.architecture_deliverable_package

AIWorkerOS controls:

- which robot can read which CX brain depth
- which robot can handle image/music/video/architecture/text tasks
- how user-provided source materials are analyzed
- how quality/risk/safety checks are attached to deliverables
- how zip deliverables are generated and returned

---

# 4. AICM / consuming app responsibility

AICM and other apps should remain consumers.

They may hold:

- request_id
- source_file_refs
- result_summary
- deliverable_zip_link
- review_status

They should not own:

- artist brain reference data
- architecture brain reference data
- media analysis engine
- architecture design decision core
- robot read policy
- rights/safety decision core
- deliverable body generation

---

# 5. Architecture safety boundary

Architecture outputs should include safety disclaimers and review gates.

Construction, structural design, legal compliance, fire safety, evacuation design, and final build decisions require human expert review.

AI outputs should be treated as:

- concept design
- planning support
- presentation support
- caution checklist
- non-final advisory material

They should not be treated as certified construction documents.
