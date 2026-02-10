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
        var product = five.times(2)
        #expect(product.amount == 10)
        
        product = five.times(3)
        #expect(product.amount == 15)
    }
}

final class Dollar {
    let amount: Int
    
    init(_ amount: Int) {
        self.amount = amount
    }
    
    func times(_ multiplier: Int) -> Dollar {
        Dollar(amount * multiplier)
    }
}
