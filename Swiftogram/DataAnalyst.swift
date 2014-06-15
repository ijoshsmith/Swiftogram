//
//  DataAnalyst.swift
//  Swiftogram
//
//  Created by Joshua Smith on 6/12/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

/** An object that makes data items for a histogram. */
protocol DataAnalyst
{
    func analyzeDataSet(dataSet: DataSet) -> DataItem[];
}
