//
//  Histogram.swift
//  Swiftogram
//
//  Created by Joshua Smith on 6/12/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

/** 
The data model of a histogram. 
The subscript returns the Int value of the column
with a specified X axis tick, or nil if no value
exists for that column identifier.
*/
class Histogram
{
    let xAxis: Axis
    let yAxis: Axis
    
    init(dataSet: DataSet, analyst: DataAnalyst)
    {
        let items = analyst.analyzeDataSet(dataSet)
        _map  = Histogram._mapDataItems(items)
        xAxis = Axis.x(items)
        yAxis = Axis.y(items)
    }

    subscript(id: AnyObject) -> Int? { return _map["\(id)"] }
    
    let _map: _DataItemMap
    typealias _DataItemMap = [String : Int]
    class func _mapDataItems(items: [DataItem]) -> _DataItemMap
    {
        var map = _DataItemMap()
        for item in items
        {
            map["\(item.id)"] = item.value
        }
        return map
    }
}
