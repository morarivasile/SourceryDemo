//
//  ArticlesViewController+Extensions.swift
//  SourceryDemo
//
//  Created by Vasile Morari on 19.02.2023.
//

import UIKit

// MARK: - UITableViewDataSource

extension ArticlesViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		articles.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
		let article = articles[indexPath.item]
		
		var configuration = cell.defaultContentConfiguration()
		configuration.text = article.title
		configuration.secondaryText = article.body
		
		cell.contentConfiguration = configuration
		cell.selectionStyle = .none
		
		switch article.state {
		case .published:
			cell.backgroundColor = .systemGreen.withAlphaComponent(0.2)
		case .inReview:
			cell.backgroundColor = .systemYellow.withAlphaComponent(0.2)
		case .denied:
			cell.backgroundColor = .systemRed.withAlphaComponent(0.2)
		}
		
		return cell
	}
}

// MARK: - UI

extension ArticlesViewController {
	func setupUI() {
		setTitle()
		setupLayout()
		view.backgroundColor = .white
	}
	
	func setupTableView() -> UITableView {
		let tableView = UITableView()
		tableView.translatesAutoresizingMaskIntoConstraints = false
		tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
		tableView.dataSource = self
		return tableView
	}
	
	private func setTitle() {
		title = "Articles"
	}
	
	private func setupLayout() {
		view.addSubview(tableView)
		
		NSLayoutConstraint.activate([
			tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
			tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
		])
	}
}
