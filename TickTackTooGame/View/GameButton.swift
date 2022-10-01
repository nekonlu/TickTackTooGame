//
//  GameButton.swift
//  TickTackTooGame
//
//  Created by nekonlu on 2022/10/01.
//  
//

import SwiftUI

struct GameButton: View {
    
    @ObservedObject var ttt: TTT
    @State var pos: Int
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct GameButton_Previews: PreviewProvider {
    static var previews: some View {
        GameButton(ttt: TTT(), pos: 0)
    }
}
