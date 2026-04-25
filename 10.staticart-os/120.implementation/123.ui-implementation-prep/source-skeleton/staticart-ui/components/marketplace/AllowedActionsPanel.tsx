import type { AllowedActionsViewModel, ButtonStateViewModel } from "../../contracts/ui-types";
import { ActionButton } from "../common/ActionButton";

export interface AllowedActionsPanelProps {
  allowed: AllowedActionsViewModel;
  fullOpenState: ButtonStateViewModel;
  favoriteState: ButtonStateViewModel;
}

export function AllowedActionsPanel(props: AllowedActionsPanelProps) {
  const { allowed, fullOpenState, favoriteState } = props;

  return (
    <section>
      {allowed.sampleOpen ? <button>Open Sample</button> : null}
      {allowed.purchase ? <button>Purchase</button> : null}
      {allowed.subscriptionOpen ? <button>Open With Subscription</button> : null}
      <ActionButton label="Full Open" state={fullOpenState} />
      {allowed.favoriteToggle ? (
        <ActionButton label="Favorite" state={favoriteState} />
      ) : null}
    </section>
  );
}
