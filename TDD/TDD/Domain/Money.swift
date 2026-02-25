//
//  Dollar.swift
//  TDD
//
//  Created by Omar Hegazy on 12/02/2026.
//

class Money: Equatable, Expression {
    let amount: Int
    let currency: String
    
    init(_ amount: Int, currency: String) {
        self.amount = amount
        self.currency = currency
    }
    
    static func == (lhs: Money, rhs: Money) -> Bool {
        lhs.amount == rhs.amount && lhs.currency == rhs.currency
    }
    
    static func dollar(_ amount: Int) -> Money {
        Money(amount, currency: "USD")
    }
    
    static func franc(_ amount: Int) -> Money {
        Money(amount, currency: "CHF")
    }
    
    final func times(_ multiplier: Int) -> Money {
        Money(amount * multiplier, currency: currency)
    }
    
    func plus(_ addend: Money) -> Expression {
        Sum(augend: self, addend: addend)
    }
    
    func reduce(_ bank: Bank, to newCurrency: String) -> Money {
        let rate = bank.rate(from: currency, to: newCurrency)
        return Money(amount / rate, currency: newCurrency)
    }
}
