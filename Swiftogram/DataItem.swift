//
//  DataItem.swift
//  Swiftogram
//
//  Created by Joshua Smith on 6/12/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

import Foundation

/** 
 Represents a column of a histogram.
 Subclasses NSObject for KVC support.
*/
class DataItem : NSObject
{
    let id:    AnyObject
    let value: Int
    
    init(id: AnyObject, value: Int)
    {
        self.id = id
        self.value = value
    }
    
    enum Property : String
    {
        case id    = "id"
        case value = "value"
    }
}
