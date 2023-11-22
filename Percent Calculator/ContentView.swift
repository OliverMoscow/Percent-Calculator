//
//  ContentView.swift
//  Percent Calculator
//
//  Created by Oliver Moscow on 11/22/23.
//

import SwiftUI

struct ContentView: View {
    @State var location: String = "Colorado"
    @State var showingAlert: Bool = false
    var date: Date = Date()
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Your location", text: $location)
                    .padding()
                    .multilineTextAlignment(.center)
                    .background(.gray)
                    .cornerRadius(15)
                
                Text("Current time in: " + location)
                    .font(.title)
                Text(date.formatted(date: .abbreviated, time: .shortened))
                NavigationLink("Testing Navigation") {
                    SecondView()
                }
                .padding(.top, 50)
                Button {
                    showingAlert.toggle()
                } label: {
                    HStack {
                        Image(systemName: "hazardsign")
                        Text("Show alert!")
                            .bold()
                            .foregroundColor(showingAlert ? .blue : .red)
                    }
                    .alert("Important message", isPresented: $showingAlert) {
                        Button("OK", role: .cancel) {
                            
                        }
                    }
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(15)
                }
            }
            .padding()
            .accentColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
