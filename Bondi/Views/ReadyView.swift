import SwiftUI

struct ReadyView: View {
    @ObservedObject var viewModel: MeasurementViewModel
    
    var body: some View {
        VStack {
            Text("Are you fully stopped, and the engine is turned on?")
                .font(.title)

            HStack {
                Button(action: {
                    viewModel.appState = .measuring
                }) {
                    Text("Yes")
                        .font(.title)
                        .foregroundStyle(.white)
                        .frame(maxWidth: 300)
                        .padding()
                        .background(.blue)
                        .cornerRadius(12)
                }
                .padding()
                
                Button(action: {
                    viewModel.appState = .initial
                }) {
                    Text("No")
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
}

#Preview {
    ReadyView(viewModel: MeasurementViewModel())
}
