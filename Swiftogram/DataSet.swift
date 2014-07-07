//
//  DataSet.swift
//  Swiftogram
//
//  Created by Joshua Smith on 6/12/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

class DataSet
{
    struct Keys
    {
        static let Children = "children"
        static let State    = "state"
    }
    
    func loadParents() -> [[String : AnyObject]]
    {
        return [
            [Keys.Children: 1, Keys.State: "CT"],
            [Keys.Children: 8, Keys.State: "AZ"],
            [Keys.Children: 2, Keys.State: "WA"],
            [Keys.Children: 5, Keys.State: "MA"],
            [Keys.Children: 3, Keys.State: "CT"],
            [Keys.Children: 2, Keys.State: "CT"],
            [Keys.Children: 1, Keys.State: "MA"],
            [Keys.Children: 2, Keys.State: "AZ"],
            [Keys.Children: 5, Keys.State: "WA"],
            [Keys.Children: 4, Keys.State: "NY"],
            [Keys.Children: 3, Keys.State: "CT"]
        ];
    }
}
