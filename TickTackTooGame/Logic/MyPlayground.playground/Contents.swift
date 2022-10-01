import Foundation

class T3 {
    var table: [[Int]] = [
        [0, 0, 0],
        [0, 0, 0],
        [0, 0, 0]
    ]
    var currentPlayerID = 0
    var status: Int = 0
    var turn: Int = 0
    
    func pushedButton(position: Int) {
        updateTable(position: position)
        judge()
        print(table)
        print(status)
    }
    
    func updateTable(position: Int) {
        if(turn % 2 == 0) {
            table[position / 3][position % 3] = 1
        } else {
            table[position / 3][position % 3] = 2
        }
        turn += 1
    }
    
    func judge() {
        for player in [1, 2] {
            // Vertical Judge
            for i in 0..<3 {
                var judgeCount = 0
                for j in 0..<3 {
                    if(self.table[j][i] == player) {
                        judgeCount += 1
                    }
                }
                if(judgeCount == 3) {
                    self.status = player
                }
            }
            
            // Horizontal Judge
            for i in 0..<3 {
                var judgeCount = 0
                for j in 0..<3 {
                    if(self.table[i][j] == player) {
                        judgeCount += 1
                    }
                }
                if(judgeCount == 3) {
                    self.status = player
                }
            }
            
            // Diagonal Judge
            var judgeCount = 0
            for i in 0..<3 {
                if(self.table[i][i] == player) {
                    judgeCount += 1
                }
            }
            if(judgeCount == 3) {
                self.status = player
            } else {
                judgeCount = 0
            }
            
            for i in 0..<3 {
                if(self.table[i][2 - i] == player) {
                    judgeCount += 1
                }
            }
            if(judgeCount == 3) {
                self.status = player
            }
        }
    }
}


var t = T3()
t.pushedButton(position: 8)
t.pushedButton(position: 0)
t.pushedButton(position: 3)
t.pushedButton(position: 1)
t.pushedButton(position: 4)
t.pushedButton(position: 2)
