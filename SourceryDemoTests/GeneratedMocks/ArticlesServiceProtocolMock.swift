// Generated using Sourcery 2.0.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

@testable import SourceryDemo

class ArticlesServiceProtocolMock: ArticlesServiceProtocol {




    //MARK: - getArticles

    var getArticlesCallsCount = 0
    var getArticlesCalled: Bool {
        return getArticlesCallsCount > 0
    }
    var getArticlesReceivedCompletion: (([Article]) -> Void)?
    var getArticlesReceivedInvocations: [(([Article]) -> Void)] = []
    var getArticlesClosure: ((@escaping ([Article]) -> Void) -> Void)?

    func getArticles(_ completion: @escaping ([Article]) -> Void) {
        getArticlesCallsCount += 1
        getArticlesReceivedCompletion = completion
        getArticlesReceivedInvocations.append(completion)
        getArticlesClosure?(completion)
    }

}
