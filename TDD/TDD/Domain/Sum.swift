//
//  Sum.swift
//  TDD
//
//  Created by Omar Hegazy on 25/02/2026.
//


struct Sum: Expression {
    let augend: Money
    let addend: Money
    
    func reduce(_ bank: Bank, to newCurrency: String) -> Money {
        let amount = augend.amount + addend.amount
        return Money(amount, currency: newCurrency)
    }
}