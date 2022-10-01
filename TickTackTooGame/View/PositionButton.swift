//
//  PositionButton.swift
//  TickTackTooGame
//
//  Created by nekonlu on 2022/09/23.
//  
//

import SwiftUI

struct PositionButton: View {
    
    @EnvironmentObject var ttt: TTT
    let positionID: Int
    
    var body: some View {
        Button(action: {
            
        }) {
            Text("a")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.title)
                .frame(width: 100, height: 100)
                .background(.black)
                .cornerRadius(30)
        }
    }
}

struct PositionButton_Previews: PreviewProvider {
    static var previews: some View {
        PositionButton(positionID: 0)
    }
}
