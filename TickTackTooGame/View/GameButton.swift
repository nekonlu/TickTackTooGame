//
//  GameButton.swift
//  TickTackTooGame
//
//  Created by nekonlu on 2022/10/01.
//  
//

import SwiftUI

struct GameButton: View {
    
    @ObservedObject var t: T3
    @State var position: Int
    @State var enable: Bool = false
    
    
    var body: some View {
        Button {
            t.pushedButton(position: self.position)
            enable.toggle()
        } label: {
            Image(systemName: toImage(player: getPlayer(table: t.table)))
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 70, height: 70)
                .background {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(.black.gradient)
                }
        }
        .disabled(enable)
    }
    
    func getPlayer(table: [[Int]]) -> Int {
        return table[self.position / 3][self.position % 3]
    }
    
    func toImage(player: Int) -> String {
        if(getPlayer(table: t.table) == 1) {
            return "circle"
        } else if(getPlayer(table: t.table) == 2) {
            return "multiply"
        } else {
            return ""
        }
    }
}

struct GameButton_Previews: PreviewProvider {
    static var previews: some View {
        GameButton(t: T3(), position: 0)
    }
}
