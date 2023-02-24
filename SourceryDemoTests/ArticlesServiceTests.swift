//
//  ArticlesServiceTests.swift
//  SourceryDemoTests
//
//  Created by Vasile Morari on 19.02.2023.
//

import XCTest

@testable import SourceryDemo

final class ArticlesServiceTests: XCTestCase {
	
	private var sut: ArticlesService!
	
	override func setUp() {
		super.setUp()
		
		sut = .init()
	}
	
	func testGetArticles() {
		let expectation = expectation(description: "Wait for completion")
		
		// when
		sut.getArticles { articles in
			
			// then
			XCTAssertEqual(articles, [.sample, .sample, .sample, .sample, .sample, .sample, .sample, .sample])
			
			expectation.fulfill()
		}
		
		wait(for: [expectation], timeout: 10)
	}
}
