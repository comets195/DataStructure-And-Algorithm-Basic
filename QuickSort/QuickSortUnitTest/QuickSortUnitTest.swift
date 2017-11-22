//
//  QuickSortUnitTest.swift
//  QuickSortUnitTest
//
//  Created by Mrlee on 2017. 11. 22..
//  Copyright © 2017년 Napster. All rights reserved.
//

import XCTest
@testable import QuickSort

class QuickSortUnitTest: XCTestCase {
    func testQuickSort() {
        let testArr = [ 10, 0, 3, 9, 2, 14, 8, 27, 1, 5, 8, -1, 26 ]
        let sortArr = [ -1, 0, 1, 2, 3, 5, 8, 8, 9, 10, 14, 26, 27 ]
        XCTAssertEqual(sortArr, quicksort(testArr))
    }
    
}
