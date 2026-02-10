//
//  TDDTests.swift
//  TDDTests
//
//  Created by Omar Hegazy on 10/02/2026.
//

import Testing

struct TDDTests {

    @Test func `test multiplication`() async throws {
        let five = Dollar(5)
        five.times(2)
        #expect(five.amount == 10)
    }
}

class Dollar {
    private(set) var amount: Int
    
    init(_ amount: Int) {
        self.amount = 0
    }
    
    func times(_ multiplier: Int) {
        amount = 10
    }
}
