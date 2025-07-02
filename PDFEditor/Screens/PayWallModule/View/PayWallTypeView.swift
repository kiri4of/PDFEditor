import SwiftUI
import ApphudSDK

struct PayWallTypeView: View {
    @StateObject var viewModel: PayWallViewModel
    @EnvironmentObject var premium: PremiumViewModel
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            // Header
            OnboardingDescriptionView(
                upperHeader: NSLocalizedString("Whick option fits", comment: "Paywall title part 1"),
                highlightWord: NSLocalizedString("fits", comment: "Paywall title part 1"),
                lowerHeader: NSLocalizedString("you best?", comment: "Paywall title part 2"),
                firstLine: NSLocalizedString("Multiple choices may be selected", comment: "Paywall subtitle line 1"),
                secondLine: NSLocalizedString("from the list below", comment: "Paywall subtitle line 2")
            )
            .padding(.top, 15)

            // Table view
           

            // Yearly (no trial)
            if let yearlyProduct = premium.products.first(where: { $0.productId.contains("year")}) {
                SubscriptionRowView(
                    isSelected: viewModel.selectedPlan == .yearly,
                    date: NSLocalizedString("Yearly", comment: ""),
                    description: yearlyProduct.display,
                    desctiptionColor: .gray,
                    price: yearlyProduct.weeklyEquivalentDisplay ?? yearlyProduct.display
                )
                .onTapGesture {
                    viewModel.select(plan: .yearly)
                }
            }

            // Weekly (with trial)
            if let weeklyProduct = premium.products.first(where: { $0.productId.contains("week")}) {
                SubscriptionRowView(
                    isSelected: viewModel.selectedPlan == .weekly,
                    date: NSLocalizedString("Weekly", comment: ""),
                    description: "3 day free",
                    desctiptionColor: AppColor.lightBlue,
                    price: weeklyProduct.display
                )
                .onTapGesture {
                    viewModel.select(plan: .weekly)
                }
            }

            // Toggle
                HStack {
                    Text(NSLocalizedString("Not sure yet? Enable free trial", comment: "Trial toggle label"))
                        .font(AppFonts.albert16SemiBold)
                        .foregroundColor(.primary)
                    Spacer()
                    Toggle("", isOn: $viewModel.enableTrial)
                        .labelsHidden()
                }
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
            
            
            // Continue
            Button(action: {
                UIImpactFeedbackGenerator(style: .light).impactOccurred()
                viewModel.continueTapped()
            }) {
                Text(NSLocalizedString("Continue", comment: "Continue button"))
                    .font(AppFonts.albert18SemiBold)
                    .foregroundColor(.white)
                    .frame(width: 344, height: 70)
                    .background(AppColor.lightBlue)
                    .cornerRadius(20)
                    .shadow(color: AppColor.lightBlue.opacity(0.27), radius: 11.3, x: 0, y: 10)
            }
            .padding(.top, 5)

            // Footer
            HStack(spacing: 35) {
                Button(NSLocalizedString("Privacy", comment: "")) {
                    UIImpactFeedbackGenerator(style: .light).impactOccurred()
                    viewModel.openPrivacyPolicy()
                }
                Button(NSLocalizedString("Restore", comment: "")) {
                    UIImpactFeedbackGenerator(style: .light).impactOccurred()
                    PremiumViewModel.shared.restore()
                }
                Button(NSLocalizedString("Terms", comment: "")) {
                    UIImpactFeedbackGenerator(style: .light).impactOccurred()
                    viewModel.openTermsOfUse()
                }
                Button(NSLocalizedString("Not now", comment: "")) {
                    UIImpactFeedbackGenerator(style: .light).impactOccurred()
                    viewModel.onClosed?()
                    dismiss()
                }
            }
            .font(AppFonts.albert18SemiBold)
            .foregroundColor(.gray)
            .padding(.top, 20)
            .padding(.horizontal, 15)
        }
    }
}


