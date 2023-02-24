// Generated using Sourcery 2.0.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension ArticleState { 
    var isPublished: Bool { 
        switch self { 
            case .published: return true
            case .inReview: return false
            case .denied: return false
        }
    }
    var isInReview: Bool { 
        switch self { 
            case .inReview: return true
            case .published: return false
            case .denied: return false
        }
    }
    var isDenied: Bool { 
        switch self { 
            case .denied: return true
            case .published: return false
            case .inReview: return false
        }
    }
}
