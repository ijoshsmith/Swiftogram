//
//  Axis.swift
//  Swiftogram
//
//  Created by Joshua Smith on 6/12/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

import Foundation

/** Represents the X or Y axis of a histogram. */
class Axis
{
    /** A sorted array of Int or String values, never both. */
    let ticks: [AnyObject]
    
    class func x(items: [DataItem]) -> Axis
    {
        return Axis(items: items, property: .id, ascending: true)
    }
    
    class func y(items: [DataItem]) -> Axis
    {
        return Axis(items: items, property: .value, ascending: false)
    }
    
    init(items: [DataItem], property: DataItem.Property, ascending: Bool)
    {
        self.ticks = Axis._makeTicks(items, property, ascending);
    }
    
    class func _makeTicks(
          items:     [DataItem],
        _ property:  DataItem.Property,
        _ ascending: Bool) -> [AnyObject]
    {
        if items.isEmpty { return [] }
        let propName = property.rawValue
        let nsArray  = items as NSArray
        let values   = nsArray.valueForKey(propName) as! [AnyObject]
        return values[0] is Int
            ? _numericTicks(values as! [Int],    ascending)
            : _textualTicks(values as! [String], ascending)
    }
    
    class func _numericTicks(nums: [Int], _ asc: Bool) -> [Int]
    {
        let range = [Int](nums.minElement()!...nums.maxElement()!)
        return asc ? range : Array(range.reverse())
    }
    
    class func _textualTicks(strs: [String], _ asc: Bool) -> [String]
    {
        return asc ? strs.sort(<) : strs.sort(>)
    }
}
