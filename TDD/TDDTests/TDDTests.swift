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
    
    @Test func `test multiplication`() async throws {
        let five = Money.dollar(5)
        #expect(Money.dollar(10) == five.times(2))
        #expect(Money.dollar(15) == five.times(3))
    }
    
    @Test func equality() async throws {
        #expect(Money.dollar(5) == Money.dollar(5))
        #expect(Money.dollar(5) != Money.dollar(6))
    }
    
    /// 5 CHF x 2 = 10 CHF
    @Test func `test franc multiplication`() async throws {
        let five = Money.franc(5)
        #expect(Money.franc(10) == five.times(2))
        #expect(Money.franc(15) == five.times(3))
    }

    @Test func `compare francs with dollars`() async throws {
        #expect(Money.dollar(5) != Money.franc(5))
    }
    
    @Test func `test currency`() async throws {
        #expect("USD" == Money.dollar(1).currency)
        #expect("CHF" == Money.franc(1).currency)
    }
    
    @Test func `test simple addition`() async throws {
        let five = Money.dollar(5)
        let sum = five.plus(five) // expression
        let bank = Bank()
        let reduced = bank.reduce(sum, "USD") // Banck reduces the expression
        #expect(Money.dollar(10) == reduced)
    }
    
    @Test func `test plus returns sum`() async throws {
        let five = Money.dollar(10)
        let result = five.plus(five)
        let sum = try #require(result as? Sum)
        #expect(five == sum.augend)
        #expect(five == sum.addend)
    }
 }
