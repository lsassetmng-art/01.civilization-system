# ============================================================
# EXAM CLASSIFICATION MODEL
# ============================================================

status: canonical
layer: model
scope: common-exam-and-replay-mode
component: exam-classification

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EXAM CLASSES
# ============================================================

exam_classes:
- school_exam
- individual_exam
- common_exam


# ============================================================
# 2. FINAL RULE
# ============================================================

Every exam
must belong to an explicit exam class.
