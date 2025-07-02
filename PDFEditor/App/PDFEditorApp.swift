
import SwiftUI
//import RealmSwift
import ApphudSDK

@main
struct PDFEditorApp: SwiftUI.App {
    // app delegate
    //@UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @StateObject private var appState = AppState()
    @StateObject private var onboardingViewModel = OnboardingViewModel()
    @StateObject private var paywallViewModel = PayWallViewModel()
//    @StateObject private var mainViewModel = MainViewModel()

    init() {
//        setupRealm()
        Apphud.start(apiKey: Config.apphudAPIKey)
        PremiumViewModel.shared.load()
//        storePDFcoKeyIfNeeded()
    }

    var body: some Scene {
        WindowGroup {
            contentView
                .preferredColorScheme(.light)
        }
    }
    
    //MARK: - View builder
    @ViewBuilder
    private var contentView: some View {
        switch appState.flow {
        case .launching:
            LaunchScreenView()
        case .onboarding:
            OnboardingView(viewModel: onboardingViewModel)
                .onAppear {
                    onboardingViewModel.onFinish = { appState.finishOnboarding() }
                }
        case .paywall:
            PayWallView(viewModel: paywallViewModel)
                .environmentObject(PremiumViewModel.shared)
                .onAppear {
                    paywallViewModel.onClosed = {
                        appState.closePaywall()
                    }
                }
        case .main:
            EmptyView()
        }
    }

//    private func setupRealm() {
//        let config = Realm.Configuration(schemaVersion: 1)
//        Realm.Configuration.defaultConfiguration = config
//        print("Realm file at:", Realm.Configuration.defaultConfiguration.fileURL!)
//    }
//    
//    private func storePDFcoKeyIfNeeded() {
//        if KeychainManager.shared.load(for: "PDFCoApiKey") == nil {
//            let fullKey = Config.pdfcoAPIKey
//            KeychainManager.shared.save(fullKey, for: "PDFCoApiKey")
//        }
//    }
}
