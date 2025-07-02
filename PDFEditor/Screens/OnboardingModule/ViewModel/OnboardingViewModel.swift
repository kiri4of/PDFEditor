import Foundation
import SwiftUI
import StoreKit
import Combine

class OnboardingViewModel: ObservableObject {
    
    //array of data
    let pages: [OnboardingPage] = [
        OnboardingPage(
            upperHeader: NSLocalizedString("All-in-one: Scan.", comment: ""),
            highlightWord: NSLocalizedString("All-in-one", comment: ""),
            lowerHeader: NSLocalizedString("Edit. Share", comment: ""),
            firstLine: NSLocalizedString("Transform your document with", comment: ""),
            secondLine: NSLocalizedString("powerful editing tools", comment: ""),
            imageName: "onb1"
        ),
        OnboardingPage(
            upperHeader: NSLocalizedString("Convert and", comment: ""),
            highlightWord: NSLocalizedString("Convert", comment: ""),
            lowerHeader: NSLocalizedString("Compress PDF", comment: ""),
            firstLine: NSLocalizedString("PDF conversion made easy-one", comment: ""),
            secondLine: NSLocalizedString("click is all it takes", comment: ""),
            imageName: "onb2"
        ),
        OnboardingPage(
            upperHeader: NSLocalizedString("Trusted by users", comment: ""),
            highlightWord: NSLocalizedString("Trusted", comment: ""),
            lowerHeader: NSLocalizedString("worldwide", comment: ""),
            firstLine: NSLocalizedString("Focused on giving you best", comment: ""),
            secondLine: NSLocalizedString("experience", comment: ""),
            imageName: "onb3"
        ),
        OnboardingPage(
            upperHeader: NSLocalizedString("Whick option fits", comment: ""),
            highlightWord: NSLocalizedString("fits", comment: ""),
            lowerHeader: NSLocalizedString("you best?", comment: ""),
            firstLine: NSLocalizedString("Multiple choices may be selected", comment: ""),
            secondLine: NSLocalizedString("from the list below", comment: ""),
            imageName: ""
        ),
    ]
    
    @Published var currentPage: Int = 0
    
    private(set) var didShowRating = false
    
    //close onboarding
    var onFinish: (() -> Void)?
    
    func nextButtonTapped() {
        if currentPage < pages.count - 1 {
            currentPage += 1
        } else {
            if !didShowRating {
                SKStoreReviewController.requestReview()
                didShowRating = true
            } else {
                //last page
                onFinish?()
            }
        }
    }
    
    
    func openTermsOfUse() {
        //let url = Config.termsOfUseURL
        //UIApplication.shared.open(url)
    }
    
    func openPrivacyPolicy() {
       // let url = Config.privacyPolicyURL
       // UIApplication.shared.open(url)
    }
}

