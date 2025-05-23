//
//  ContentView.swift
//  GoogleAuthExample
//
//  Created by MacBook on 4/29/25.
//

import SwiftUI

struct ContentView: View {
    @State private var err : String = ""
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button{
                Task{
                    do{
                        try await AuthenticationView().logout()
                    } catch let e {
                        
                        err = e.localizedDescription
                    }
                }
                } label: {
                    Text("Log Out").padding(8)
                }.buttonStyle(.borderedProminent)
                
                Text(err).foregroundColor(.red).font(.caption)
                
                
            }
            .padding()
    }
}

#Preview {
    ContentView()
}
