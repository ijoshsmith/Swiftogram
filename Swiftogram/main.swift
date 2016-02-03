//
//  main.swift
//  Swiftogram
//
//  Created by Joshua Smith on 6/12/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

func printDataForAnalyst(analyst: DataAnalyst, glyph: Character)
{
    let dataSet   = DataSet()
    let histogram = Histogram(dataSet: dataSet, analyst: analyst)
    let renderer  = HistogramRenderer(glyph: glyph)
    let output    = renderer.renderHistogram(histogram)
    print("\n\(output)\n")
}

print("Child Count Frequency")
print("–––––––––––––––––––––")
printDataForAnalyst(ChildCountFreqAnalyst(), glyph: "○")
print("")
print("Children Per State")
print("––––––––––––––––––")
printDataForAnalyst(ChildrenPerStateAnalyst(), glyph: "◼")
print("")
