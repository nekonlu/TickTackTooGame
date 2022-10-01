//
//  ButtonModel.swift
//  TickTackTooGame
//
//  Created by nekonlu on 2022/10/01.
//  
//

import Foundation

struct button: Identifiable {
    var id = UUID()
    var ttt: TTT
    var pos: Int
}
