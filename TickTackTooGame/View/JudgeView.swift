//
//  JudgeView.swift
//  TickTackTooGame
//
//  Created by nekonlu on 2022/10/01.
//  
//

import SwiftUI

struct JudgeView: View {
    
    @ObservedObject var t: T3
    
    var body: some View {
        Text(toText(judge: t.status))
            .font(.title)
            .fontWeight(.bold)
    }
    
    func toText(judge: Int) -> String {
        if(judge == 1) {
            return "○ WIN!!"
        } else if(judge == 2) {
            return "× WIN!!"
        } else {
            return "DRAW"
        }
    }
}

struct JudgeView_Previews: PreviewProvider {
    static var previews: some View {
        JudgeView(t: T3())
    }
}
