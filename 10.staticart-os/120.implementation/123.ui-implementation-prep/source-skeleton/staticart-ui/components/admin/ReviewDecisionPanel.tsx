import { ActionButton } from "../common/ActionButton";

export interface ReviewDecisionPanelProps {
  approveEnabled: boolean;
  rejectEnabled: boolean;
  reworkEnabled: boolean;
  restrictEnabled: boolean;
}

export function ReviewDecisionPanel(props: ReviewDecisionPanelProps) {
  return (
    <section>
      <ActionButton
        label="Approve"
        state={{ enabled: props.approveEnabled, reasonText: null }}
      />
      <ActionButton
        label="Reject"
        state={{ enabled: props.rejectEnabled, reasonText: null }}
      />
      <ActionButton
        label="Rework"
        state={{ enabled: props.reworkEnabled, reasonText: null }}
      />
      <ActionButton
        label="Restrict"
        state={{ enabled: props.restrictEnabled, reasonText: null }}
      />
    </section>
  );
}
