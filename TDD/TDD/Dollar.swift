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
    
    static func dollar(_ amount: Int) -> Money {
        Dollar(amount)
    }
    
    static func franc(_ amount: Int) -> Money {
        Franc(amount)
    }
    
    func times(_ multiplier: Int) -> Money {
        fatalError("Subclass must implement this")
    }
}

final class Dollar: Money {
    override func times(_ multiplier: Int) -> Money {
        Dollar(amount * multiplier)
    }
}


final class Franc: Money {
    override func times(_ multiplier: Int) -> Money {
        Franc(amount * multiplier)
    }
}
