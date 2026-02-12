//
//  TDDTests.swift
//  TDDTests
//
//  Created by Omar Hegazy on 10/02/2026.
//

@testable import TDD
import Testing

@MainActor
struct TDDTests {

     /// - $5 + 10 CHF = $10 if rate is 2:1
        /// ~~- $5 x 2 = $10~~
        /// ~~- Dollar side effects?~~
        /// - Money rounding?
    @Test func `test multiplication`() async throws {
        let five = Dollar(5)
        var product = five.times(2)
        #expect(product.amount == 10)
        
        product = five.times(3)
        #expect(product.amount == 15)
    }
    
    /// ~~- equlity
    @Test func equality() async throws {
        #expect(Dollar(5) == Dollar(5))
        #expect(Dollar(5) != Dollar(6))
    }
 }
