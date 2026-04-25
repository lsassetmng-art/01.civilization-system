import { ScreenShell } from "../../components/common/ScreenShell";

export interface PurchaseResultOverlayScreenProps {
  title: string;
}

export function PurchaseResultOverlayScreen(
  props: PurchaseResultOverlayScreenProps,
) {
  return (
    <ScreenShell
      shell={{
        title: "Purchase Result",
        subtitle: props.title,
        loadState: "ready",
      }}
    >
      <section>
        <p>Purchase succeeded.</p>
        <button>Open Now</button>
        <button>Go To My Library</button>
      </section>
    </ScreenShell>
  );
}
