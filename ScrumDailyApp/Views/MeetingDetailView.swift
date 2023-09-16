//
//  ContentView.swift
//  ScrumDailyApp
//
//  Created by Mo Nash on 9/16/23.
//

import SwiftUI

struct MeetingDetailView: View {
    var body: some View {
        VStack {
            ProgressView(value: 10, total: 15)
            HStack{
                VStack(alignment: .leading){
                    Text("Time Elapsed").font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("Time Remaining: ").font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
                        .accessibilityLabel("Time remaining")
                        .accessibilityValue("10 minutes")
            Circle()
                            .strokeBorder(lineWidth: 24)
            HStack{
                Text("Speaker 1 of 3")
                                Button(action: {}) {
                                    Image(systemName: "forward.fill")
                                }
                                .accessibilityLabel("Next speaker")

            }
        }.padding()
        }
}

struct MeetingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingDetailView()
    }
}
