# ============================================================
# FITNESS COMPANY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: fitness-and-training
component: fitness-company

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the official architecture for fitness_company.

fitness_company is a user-creatable company type
that provides physical training, conditioning,
wellness, and habit-building services for Persona growth.


# ============================================================
# 2. REQUIRED SITES
# ============================================================

Required:
- headquarters
- gym_site

Optional:
- branch
- training_facility_site
- fitness_studio_site


# ============================================================
# 3. PROVIDED SERVICES
# ============================================================

Supported services:
- gym_membership
- training_program
- personal_training_session
- group_fitness_session
- body_conditioning_program
- diet_support_program
- wellness_program
- fitness_event_access


# ============================================================
# 4. MEDICAL BOUNDARY
# ============================================================

fitness_company does not perform:
- diagnosis
- treatment
- prescription
- regulated medical service


# ============================================================
# 5. FINAL RULE
# ============================================================

fitness_company is a training and wellness company,
not a medical company.
