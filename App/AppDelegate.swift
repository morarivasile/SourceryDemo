//
//  AppDelegate.swift
//  SourceryDemo
//
//  Created by Vasile Morari on 19.02.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		
		window = UIWindow(frame: UIScreen.main.bounds)
		
		let service = ArticlesService()
		let presenter = ArticlesPresenter(articlesService: service)
		let viewController = ArticlesViewController(presenter: presenter)
		let navController = UINavigationController(rootViewController: viewController)
		
		presenter.view = viewController
		
		window?.rootViewController = navController
		window?.makeKeyAndVisible()
		
		return true
	}
}
