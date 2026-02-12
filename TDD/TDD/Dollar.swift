//
//  Dollar.swift
//  TDD
//
//  Created by Omar Hegazy on 12/02/2026.
//


final class Dollar: Equatable {
    let amount: Int
    
    init(_ amount: Int) {
        self.amount = amount
    }
    
    func times(_ multiplier: Int) -> Dollar {
        Dollar(amount * multiplier)
    }

    static func == (lhs: Dollar, rhs: Dollar) -> Bool {
        lhs.amount == rhs.amount
    }
}