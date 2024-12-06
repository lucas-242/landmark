//
//  LandmarkRow.swift
//  Landmark
//
//  Created by Lucas Matheus Guimarães on 04/12/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image.resizable()
                .frame(width:50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

#Preview("Turtle") {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
