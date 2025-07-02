
import SwiftUI

/// Full‑screen placeholder that mimics the system launch screen,.
struct LaunchScreenView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Image("LaunchScreen")
                .resizable()
                .frame(width: 151, height: 151)
                .cornerRadius(20)
            
            Spacer()
        }
    }
}
