// Generated using Sourcery 2.0.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

@testable import SourceryDemo

class ArticlesViewProtocolMock: ArticlesViewProtocol {




    //MARK: - displayArticles

    var displayArticlesCallsCount = 0
    var displayArticlesCalled: Bool {
        return displayArticlesCallsCount > 0
    }
    var displayArticlesReceivedArticles: [Article]?
    var displayArticlesReceivedInvocations: [[Article]] = []
    var displayArticlesClosure: (([Article]) -> Void)?

    func displayArticles(_ articles: [Article]) {
        displayArticlesCallsCount += 1
        displayArticlesReceivedArticles = articles
        displayArticlesReceivedInvocations.append(articles)
        displayArticlesClosure?(articles)
    }

}
