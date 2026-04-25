import type {
  AllowedActionsViewModel,
  AssetSummaryViewModel,
  ButtonStateViewModel,
} from "../../contracts/ui-types";
import { ScreenShell } from "../../components/common/ScreenShell";
import { AllowedActionsPanel } from "../../components/marketplace/AllowedActionsPanel";

export interface ProductDetailScreenProps {
  asset: AssetSummaryViewModel;
  allowedActions: AllowedActionsViewModel;
  fullOpenState: ButtonStateViewModel;
  favoriteState: ButtonStateViewModel;
}

export function ProductDetailScreen(props: ProductDetailScreenProps) {
  return (
    <ScreenShell
      shell={{
        title: props.asset.title,
        subtitle: props.asset.assetType,
        loadState: "ready",
      }}
    >
      <section>
        <p>{props.asset.lifecycleState}</p>
        <p>{props.asset.entitlementState ?? "none"}</p>
      </section>

      <AllowedActionsPanel
        allowed={props.allowedActions}
        fullOpenState={props.fullOpenState}
        favoriteState={props.favoriteState}
      />
    </ScreenShell>
  );
}
