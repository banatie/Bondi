import SwiftUI

struct MeasuringView: View {
    @ObservedObject var viewModel: MeasurementViewModel
    
    var body: some View {
        VStack {
            Text("Measuring...")
                .font(.title)

            Button(action: {
                viewModel.appState = .initial
            }) {
                Text("Stop")
                    .font(.title)
                    .foregroundStyle(.white)
                    .frame(maxWidth: 300)
                    .padding()
                    .background(.blue)
                    .cornerRadius(12)
            }
            .padding()
        }
    }
}

#Preview {
    MeasuringView(viewModel: MeasurementViewModel())
}
