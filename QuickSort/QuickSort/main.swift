//
//  main.swift
//  QuickSort
//
//  Created by Mrlee on 2017. 11. 22..
//  Copyright © 2017년 Napster. All rights reserved.
//

import Foundation

func quicksort<T: Comparable>(_ a: [T]) -> [T] {
    guard a.count > 1 else { return a }
    let pivot = a[a.count/2]
    let less = a.filter{ $0 < pivot }
    let equal = a.filter{ $0 == pivot }
    let greater = a.filter{ $0 > pivot }
    return quicksort(less) + equal + quicksort(greater)
}

func partitionLomuto<T: Comparable>(_ a: inout[T], low: Int, high: Int) -> Int {
    let pivot = a[high]
    
    var i = low
    for j in low..<high {
        if a[j] <= pivot {
            (a[i], a[j]) = (a[j], a[i])
            i += 1
        }
    }
    (a[i], a[high]) = (a[high], a[i])
    return i
}

let testArr = [ 10, 0, 3, 9, 2, 14, 8, 27, 1, 5, 8, -1, 26 ]
let sortArr = quicksort(testArr)
print(sortArr)
