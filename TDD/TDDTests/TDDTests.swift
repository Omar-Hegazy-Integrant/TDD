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
    /// ~~Make amount private~~
    /// ~~- equlity~~
    ///
    /// Equal null
    /// Equal object
    /// ~~remove duplication~~
    /// ~~common equals~~
    /// common `times(:int)`
    /// ~~compare francs to dollars~~
    /// Currency
    /// Delete test franc multiplication
    
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
    
    @Test func `test different class equality`() {
        let tenFrancs = Franc(10, currency: "CHF")
        let tenMoney = Money(10, currency: "CHF")
        #expect(tenMoney == tenFrancs)
    }
 }
