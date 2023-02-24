// Generated using Sourcery 2.0.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

@testable import SourceryDemo

class ArticlesPresenterProtocolMock: ArticlesPresenterProtocol {




    //MARK: - loadData

    var loadDataCallsCount = 0
    var loadDataCalled: Bool {
        return loadDataCallsCount > 0
    }
    var loadDataClosure: (() -> Void)?

    func loadData() {
        loadDataCallsCount += 1
        loadDataClosure?()
    }

}
