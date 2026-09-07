import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            // Modification 1: Added custom app title
            Text("My Scrumdinger")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom)

            ProgressView(value: 5, total: 15)

            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }

                Spacer()

                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }

            // Modification 2: Changed the progress circle color
            Circle()
                .strokeBorder(Color.blue, lineWidth: 24)

            HStack {
                Text("Speaker 1 of 3")
                Spacer()

                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
            }

            // Modification 3: Added a welcome message
            Text("Ready for today's scrum?")
                .font(.headline)
                .foregroundStyle(.secondary)
                .padding(.top)
        }
        .padding()
    }
}

#Preview {
    MeetingView()
}
