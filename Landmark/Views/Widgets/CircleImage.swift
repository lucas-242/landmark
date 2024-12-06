//
//  CircleImage.swift
//  Landmark
//
//  Created by Lucas Matheus Guimarães on 04/12/24.
//
import SwiftUI

struct CircleImage : View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(.circle)
            .overlay{
                Circle().stroke(Color.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview { CircleImage(image: Image("turtlerock")) }
