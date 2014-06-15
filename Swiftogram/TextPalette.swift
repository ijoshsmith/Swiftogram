//
//  TextPalette.swift
//  Swiftogram
//
//  Created by Joshua Smith on 6/12/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

/** Has strings used when rendering a histogram. */
class TextPalette
{
    let
    columnGap:  String,
    emptyCell:  String,
    filledCell: String,
    yAxisGap:   String
    
    init(glyph:           Character,
         xAxisLabelWidth: Int,
         yAxisLabelWidth: Int)
    {
        columnGap  = xAxisLabelWidth * " "
        emptyCell  = xAxisLabelWidth * " "
        filledCell = xAxisLabelWidth * glyph
        yAxisGap   = yAxisLabelWidth * " "
    }
}
