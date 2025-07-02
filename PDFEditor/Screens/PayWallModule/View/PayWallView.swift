

import SwiftUI

struct PayWallView: View {
    @ObservedObject var viewModel: PayWallViewModel

    var body: some View {
        Group {
            PayWallTypeView(viewModel: viewModel)
        }
    }
}
