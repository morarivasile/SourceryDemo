//
//  ArticlesPresenterTests.swift
//  SourceryDemoTests
//
//  Created by Vasile Morari on 19.02.2023.
//

import XCTest

@testable import SourceryDemo

final class ArticlesPresenterTests: XCTestCase {
	
	private var sut: ArticlesPresenter!
	private var serviceMock: ArticlesServiceProtocolMock!
	private var viewMock: ArticlesViewProtocolMock!
	
	override func setUp() {
		super.setUp()
		
		serviceMock = .init()
		viewMock = .init()
		sut = .init(articlesService: serviceMock)
		sut.view = viewMock
	}
	
	func testLoadData() {
		// given
		let articles: [Article] = [.sample]
		
		serviceMock.getArticlesClosure = { completion in
			completion(articles)
		}
		
		// when
		sut.loadData()
		
		// then
		XCTAssertEqual(serviceMock.getArticlesCallsCount, 1)
		XCTAssertEqual(viewMock.displayArticlesCallsCount, 1)
		XCTAssertEqual(viewMock.displayArticlesReceivedArticles, articles)
	}
}
