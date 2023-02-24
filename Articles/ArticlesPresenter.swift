//
//  ArticlesPresenter.swift
//  SourceryDemo
//
//  Created by Vasile Morari on 19.02.2023.
//

import Foundation

// sourcery: AutoMockable
protocol ArticlesPresenterProtocol {
	func loadData()
}

final class ArticlesPresenter {
	let articlesService: ArticlesServiceProtocol
	
	weak var view: ArticlesViewProtocol?
	
	init(articlesService: ArticlesServiceProtocol) {
		self.articlesService = articlesService
	}
}

// MARK: - ArticlesPresenterProtocol

extension ArticlesPresenter: ArticlesPresenterProtocol {
	func loadData() {
		articlesService.getArticles { [weak self] articles in
			self?.view?.displayArticles(articles)
		}
	}
}
