//
//  ArticlesViewController.swift
//  SourceryDemo
//
//  Created by Vasile Morari on 19.02.2023.
//

import UIKit

// sourcery: AutoMockable
protocol ArticlesViewProtocol: AnyObject {
	func displayArticles(_ articles: [Article])
}

final class ArticlesViewController: UIViewController {
	
	// MARK: - View
	
	lazy var tableView: UITableView = setupTableView()
	
	// MARK: - Model
	
	var presenter: ArticlesPresenterProtocol
	var articles: [Article] = []
	
	// MARK: - Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setupUI()
		presenter.loadData()
	}
	
	// MARK: - Init
	
	init(presenter: ArticlesPresenterProtocol) {
		self.presenter = presenter
		
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

// MARK: - ArticlesViewProtocol

extension ArticlesViewController: ArticlesViewProtocol {
	func displayArticles(_ articles: [Article]) {
		self.articles = articles
		self.tableView.reloadData()
	}
}
