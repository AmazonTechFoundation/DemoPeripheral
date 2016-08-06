//
//  Async.swift
//
//
//  Created by Alsey Coleman Miller on 6/12/16.
//  Copyright © 2016 ColemanCDA. All rights reserved.
//

import Foundation

func mainQueue(_ block: @escaping () -> ()) {
    
    OperationQueue.main.addOperation(block)
}

/// Perform a task on the internal queue.
func async(_ block: @escaping () -> ()) {
    
    queue.async { block() }
}

private let queue = DispatchQueue(label: "Internal App Queue", attributes: [])
