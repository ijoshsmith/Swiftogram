//
//  ChildrenPerStateHistogram.swift
//  Swiftogram
//
//  Created by Joshua Smith on 6/12/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

class ChildrenPerStateAnalyst : DataAnalyst
{
    func analyzeDataSet(dataSet: DataSet) -> [DataItem]
    {
        let dict = _groupChildrenByState(dataSet)
        let states = [String](dict.keys)
        return states.map { DataItem(id: $0, value: dict[$0]!) }
    }

    func _groupChildrenByState(dataSet: DataSet)
        -> [String : Int]
    {
        var dict = [String : Int]()
        for parent in dataSet.loadParents()
        {
            let stateObj: AnyObject? = parent[DataSet.Keys.State]
            let kidsObj: AnyObject?  = parent[DataSet.Keys.Children]
            let state = stateObj as! String
            let kids = kidsObj as! Int
            if let sum = dict[state] {dict[state] = kids + sum}
            else                     {dict[state] = kids}
        }
        return dict
    }
}
