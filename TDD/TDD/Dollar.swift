//
//  Dollar.swift
//  TDD
//
//  Created by Omar Hegazy on 12/02/2026.
//

class Money: Equatable {
    let amount: Int
    let currency: String
    
    init(_ amount: Int, currency: String) {
        self.amount = amount
        self.currency = currency
    }
    
    static func == (lhs: Money, rhs: Money) -> Bool {
        lhs.amount == rhs.amount && type(of: lhs) == type(of: rhs)
    }
    
    static func dollar(_ amount: Int) -> Money {
        Dollar(amount, currency: "USD")
    }
    
    static func franc(_ amount: Int) -> Money {
        Franc(amount, currency: "CHF")
    }
    
    func times(_ multiplier: Int) -> Money {
        fatalError("Subclass must implement this")
    }
}

final class Dollar: Money {
    
    override init(_ amount: Int, currency: String) {
        super.init(amount, currency: currency)
    }
    
    override func times(_ multiplier: Int) -> Money {
        Money.dollar(amount * multiplier)
    }
}


final class Franc: Money {
    
    override init(_ amount: Int, currency: String) {
        super.init(amount, currency: currency)
    }
    
    override func times(_ multiplier: Int) -> Money {
        Money.franc(amount * multiplier)
    }
}
