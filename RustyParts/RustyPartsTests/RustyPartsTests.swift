//
//  RustyPartsTests.swift
//  RustyPartsTests
//
//  Created by Jeremy Skrdlant on 5/9/24.
//

import XCTest
@testable import RustyParts

final class RustyPartsTests: XCTestCase {

    

    func testCart() throws {
        //Should have 0 items.
        XCTAssert(Cart.main.getItemCount() == 0)
        Cart.main.addPart(part: Part(name: "Gear", cost: 1.50, imageName:"Gear"))
        XCTAssert(Cart.main.getItemCount() == 1)
        XCTAssert(Cart.main.getCost() == 1.50)
        Cart.main.addPart(part: Part(name: "Nail", cost: 0.25, imageName: "Nail"))
        XCTAssert(Cart.main.getItemCount() == 2)
        XCTAssert(Cart.main.getCost() == 1.75)
    }

    

}
