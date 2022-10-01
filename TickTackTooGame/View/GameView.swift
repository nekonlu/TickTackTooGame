//
//  GameView.swift
//  TickTackTooGame
//
//  Created by nekonlu on 2022/10/01.
//  
//

import SwiftUI

struct GameView: View {
    
    @ObservedObject var ttt = TTT()
    
    var body: some View {
        Button {
            ttt.toPosition(intPosition: pos)
            pos += 1
            print(ttt.table)
        } label: {
            Text("\(ttt.table[0][0])")
        }

    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
