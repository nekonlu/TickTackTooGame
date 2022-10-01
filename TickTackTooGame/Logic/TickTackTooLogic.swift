//
//  File.swift
//  TickTackTooGame
//
//  Created by nekonlu on 2022/09/23.
//  
//

import Foundation

class TTT: ObservableObject {
    @Published var position: [[Int]]
    @Published var x: Int = -1
    @Published var y: Int
    @Published var turn: Int
    @Published var table: [[String]]
    
    init() {
        self.x = -1
        self.y = -1
        self.turn = 0
        self.position = [
            [0, 0, 0],
            [0, 0, 0],
            [0, 0, 0]
        ]
        
        self.table = [
            ["-", "-", "-"],
            ["-", "-", "-"],
            ["-", "-", "-"]
        ]
    }
    
    func toPosition(intPosition: Int) {
        self.x = intPosition % 3
        self.y = intPosition / 3
        self.position[y][x] = currentPlayer()
        self.table[y][x] = player()
    }
    
    func getPlayer(intPosition: Int) -> String {
        self.x = intPosition % 3
        self.y = intPosition / 3
        return table[y][x]
    }
    
    func player() -> String {
        if(self.turn % 2 == 1) {
            return "o"
        } else {
            return "x"
        }
    }
    
    func currentPlayer() -> Int {
        self.turn += 1
        if(self.turn % 2 == 1) {
            return 1
        } else {
            return 2
        }
    }
    
    func judge() -> String {
        for player in [1, 2] {
            // Vertical Judge
            for i in 0..<3 {
                var judgeCount = 0
                for j in 0..<3 {
                    if(position[j][i] == player) {
                        judgeCount += 1
                    }
                }
                if(judgeCount == 3) {
                    return "\(player) WIN!"
                }
            }
            
            // Horizontal Judge
            for i in 0..<3 {
                var judgeCount = 0
                for j in 0..<3 {
                    if(position[i][j] == player) {
                        judgeCount += 1
                    }
                }
                if(judgeCount == 3) {
                    return "\(player) WIN!"
                }
            }
            
            // Diagonal Judge
            var judgeCount = 0
            for i in 0..<3 {
                if(position[i][i] == player) {
                    judgeCount += 1
                }
            }
            if(judgeCount == 3) {
                return "\(player) WIN!"
            } else {
                judgeCount = 0
            }
            
            for i in 0..<3 {
                if(position[i][2 - i] == player) {
                    judgeCount += 1
                }
            }
            if(judgeCount == 3) {
                return "\(player) WIN!"
            }
        }
        return "SAFE"
    }
}

