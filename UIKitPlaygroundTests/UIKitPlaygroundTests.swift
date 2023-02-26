//
//  UIKitPlaygroundTests.swift
//  UIKitPlaygroundTests
//
//  Created by Young Bin on 2023/02/25.
//

import XCTest
import RxSwift

final class UIKitPlaygroundTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let observable = Observable.of([1, 2, 3])
        
        let exp = XCTestExpectation()
        let observer = observable
            .subscribe(onNext: { _ in
                exp.fulfill()
            })
            .dispose()
        
        wait(for: [exp], timeout: 3)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
