//
//  ArticlesService.swift
//  SourceryDemo
//
//  Created by Vasile Morari on 19.02.2023.
//

import Foundation

// sourcery: AutoMockable
protocol ArticlesServiceProtocol {
	func getArticles(_ completion: @escaping ([Article]) -> Void)
}

final class ArticlesService: ArticlesServiceProtocol {
	func getArticles(_ completion: @escaping (([Article]) -> Void)) {
		DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
			completion(
				[.approvedSample, .inReviewSample, .deniedSample, .approvedSample, .inReviewSample, .deniedSample]
			)
		}
	}
}
