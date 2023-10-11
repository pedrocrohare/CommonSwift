//
//  ContentView.swift
//  CustomizableUIComponents
//
//  Created by Pedro Crohare on 11/10/2023.
//

import SwiftUI
import Lottie


struct LottieView: UIViewRepresentable {
    
    var name: String
    var loopMode: LottieLoopMode = .loop
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        
        let view = UIView(frame: .zero)
        
        let animationView = LottieAnimationView(name: self.name)
        animationView.loopMode = self.loopMode
        animationView.play()
        animationView.contentMode = .scaleAspectFit
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
    }
}

public struct CustomContentView: View {
    
    public init() {
        
    }
    public var body: some View {
        HStack {
            Spacer()
            Text("Hello, custom world!").padding(.all)
            Divider()
            LottieView(name: "bouncing", loopMode: .autoReverse)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CustomContentView()
    }
}
