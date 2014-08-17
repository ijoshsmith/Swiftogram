//
//  ChildCountFreqHistogram.swift
//  Swiftogram
//
//  Created by Joshua Smith on 6/12/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

import Foundation

class ChildCountFreqAnalyst : DataAnalyst
{
    func analyzeDataSet(dataSet: DataSet) -> [DataItem]
    {
        let parents   = dataSet.loadParents() as NSArray
        let key       = DataSet.Keys.Children
        let perParent = parents.valueForKey(key) as [AnyObject]
        let countsSet = NSCountedSet()
        countsSet.addObjectsFromArray(perParent)
        let kidCounts = countsSet.allObjects as [Int]
        var dataItems = [DataItem]()
        for kidCount in kidCounts
        {
            let occurrences = countsSet.countForObject(kidCount)
            dataItems.append(DataItem(id: kidCount, value: occurrences))
        }
        return dataItems
    }
}
