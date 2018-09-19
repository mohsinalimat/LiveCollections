//
//  SectionUpdate.swift
//  LiveCollections
//
//  Created by Stephane Magne on 7/11/18.
//  Copyright © 2018 Scribd. All rights reserved.
//

import Foundation

public struct SectionUpdate {
    let section: Int
    let delta: IndexDelta
    let update: () -> Void
    let delegate: DeltaUpdatableViewDelegate?
    let completion: (() -> Void)?
}

extension SectionUpdate {
    
    public static func reload(section: Int,
                              update: @escaping () -> Void,
                              completion: (() -> Void)?) -> SectionUpdate {
        
        return SectionUpdate(section: section,
                             delta: .empty,
                             update: update,
                             delegate: nil,
                             completion: completion)
    }
}