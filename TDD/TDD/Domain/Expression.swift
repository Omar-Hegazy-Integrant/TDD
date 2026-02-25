//
//  Expression.swift
//  TDD
//
//  Created by Omar Hegazy on 25/02/2026.
//


protocol Expression {
    func reduce(_ bank: Bank, to currency: String) -> Money
}