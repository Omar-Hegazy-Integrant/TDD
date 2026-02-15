//
//  Dollar.swift
//  TDD
//
//  Created by Omar Hegazy on 12/02/2026.
//

class Money: Equatable {
    let amount: Int
    
    init(_ amount: Int) {
        self.amount = amount
    }
    
    static func == (lhs: Money, rhs: Money) -> Bool {
        lhs.amount == rhs.amount && type(of: lhs) == type(of: rhs)
    }
}

final class Dollar: Money {
    func times(_ multiplier: Int) -> Dollar {
        Dollar(amount * multiplier)
    }
}


final class Franc: Money {
    func times(_ multiplier: Int) -> Franc {
        Franc(amount * multiplier)
    }
}
