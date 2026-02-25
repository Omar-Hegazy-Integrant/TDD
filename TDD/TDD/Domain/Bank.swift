//
//  Bank.swift
//  TDD
//
//  Created by Omar Hegazy on 25/02/2026.
//


class Bank {
    func reduce(_ source: Expression, to newCurrency: String) -> Money {
        source.reduce(self, to: newCurrency)
    }
    
    func rate(from: String, to: String) -> Int {
        from == "CHF" && to == "USD" ? 2 : 1
    }
}