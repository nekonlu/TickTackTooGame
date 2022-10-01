//
//  GameView.swift
//  TickTackTooGame
//
//  Created by nekonlu on 2022/10/01.
//  
//

import SwiftUI

struct GameView: View {
    
    @ObservedObject var t = T3()
    
    var body: some View {
        VStack {
            JudgeView(t: t)
                
            HStack {
                GameButton(t: t, position: 0)
                GameButton(t: t, position: 1)
                GameButton(t: t, position: 2)
            }
            
            HStack {
                GameButton(t: t, position: 3)
                GameButton(t: t, position: 4)
                GameButton(t: t, position: 5)
            }
            
            HStack {
                GameButton(t: t, position: 6)
                GameButton(t: t, position: 7)
                GameButton(t: t, position: 8)
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
