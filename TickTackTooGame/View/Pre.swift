//
//  Pre.swift
//  TickTackTooGame
//
//  Created by nekonlu on 2022/09/23.
//  
//

import SwiftUI

struct Pre: View {
    
    @EnvironmentObject var ttt: TTT
    
    var body: some View {
        Button(action: {
            ttt.turn += 1
            print(ttt.turn)
        }) {
            Text("\(ttt.player())")
        }
    }
}

struct Pre_Previews: PreviewProvider {
    static var previews: some View {
        Pre()
            .environmentObject(TTT())
    }
}
