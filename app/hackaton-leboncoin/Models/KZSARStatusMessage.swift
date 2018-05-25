//
//  KZSARStatusMessage.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import KZSLAB_AR_View

extension KZSARStatus {
    var message: String {
        switch self {
        case .surfaceDetected(let plane):
            let p = plane == .vertical ? "Vertical" : "Horizontal"
            return p + " plane detected"
        case .imageDetected:
            return "Image detected"
        case .trackingNotAvailable:
            return "Tracking Unavailable"
        case .trackingNormal:
            return "Tracking normal"
        case .trackingLimitedInitializing:
            return "Initializing"
        case .trackingLimitedExcessiveMotion:
            return "Try slowing down your movement, or reset the session"
        case .trackingLimitedInsufficientFeatures:
            return "Try pointing at a flat surface, or reset the session"
        case .trackingLimitedRelocalizing:
            return "Return to the location where you left off or try resetting the session"
        }
    }
}
