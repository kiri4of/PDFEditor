
import SwiftUI

struct OnboardingView: View {
    @ObservedObject var viewModel: OnboardingViewModel
    
    var body: some View {
        ZStack {
           
            TabView(selection: $viewModel.currentPage) {
                ForEach(0..<viewModel.pages.count, id: \.self) { index in
                    VStack {
                        OnboardingDescriptionView(
                            upperHeader: viewModel.pages[index].upperHeader, highlightWord: viewModel.pages[index].highlightWord,
                            lowerHeader: viewModel.pages[index].lowerHeader,
                            firstLine: viewModel.pages[index].firstLine,
                            secondLine: viewModel.pages[index].secondLine
                            )
                        .padding(.top, 10)
                        
                        if viewModel.currentPage == viewModel.pages.count - 1 {
                            TasksView()
                        } else {
                            Image(viewModel.pages[index].imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
             
                        }
                       
                        Button(action: {
                            UIImpactFeedbackGenerator(style: .light).impactOccurred()
                            viewModel.nextButtonTapped()
                        }) {
                            Text("Continue")
                                .font(AppFonts.albert18SemiBold)
                                .foregroundColor(.white)
                                .frame(width: 350, height: 68)
                                .background(AppColor.mainGradient)
                                .cornerRadius(25)
                                .shadow(color: AppColor.shadowColor, radius: 18.1, x: 0, y: 4)
                        }
                        .padding(.top, -8)

                        
                        HStack(spacing: 55) {
                            Button("Privacy") {
                                UIImpactFeedbackGenerator(style: .light).impactOccurred()
                                viewModel.openPrivacyPolicy()
                            }
                         
                            Button("Restore") {
                                UIImpactFeedbackGenerator(style: .light).impactOccurred()
                                //PremiumViewModel.shared.restore()
                            }
                            
                            Button("Terms") {
                                UIImpactFeedbackGenerator(style: .light).impactOccurred()
                                viewModel.openTermsOfUse()
                            }
                        }
                        .font(AppFonts.albert16SemiBold)
                        .foregroundColor(.gray)
                        .padding(.top, 15)
                    }
                }
            }
            .background(.white)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}


