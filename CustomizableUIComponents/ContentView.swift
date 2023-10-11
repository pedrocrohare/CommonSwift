//
//  ContentView.swift
//  CustomizableUIComponents
//
//  Created by Pedro Crohare on 11/10/2023.
//

import SwiftUI

public struct CustomContentView: View {
    public var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, custom world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CustomContentView()
    }
}
