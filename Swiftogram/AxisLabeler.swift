//
//  AxisLabeler.swift
//  Swiftogram
//
//  Created by Joshua Smith on 6/12/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

/** 
Creates uniform-length, right-aligned labels for an axis
sorted in the same order as the axis's `ticks` array.
*/
class AxisLabeler
{
    let labels:     [String]
    let labelWidth: Int
    
    init(axis: Axis)
    {
        labelWidth = AxisLabeler._labelWidthForAxis(axis)
        labels = AxisLabeler._labelsForAxis(axis, labelWidth)
    }
    
    class func _labelWidthForAxis(axis: Axis) -> Int
    {
        let widths = axis.ticks.map { ("\($0)").characters.count }
        return widths.count != 0 ? widths.maxElement()! : 0
    }
    
    class func _labelsForAxis(axis: Axis, _ width: Int) -> [String]
    {
        var labels = [String]()
        for tick: AnyObject in axis.ticks
        {
            let label = "\(tick)"
            let padding = width - label.characters.count
            labels.append((" " * padding) + label)
        }
        return labels
    }
}
