//
//  HistogramLineRenderer.swift
//  Swiftogram
//
//  Created by Joshua Smith on 6/14/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

/** 
Renders one line of a histogram, after the Y axis label.
*/
class HistogramLineRenderer
{
    let _columnValues: Int?[]
    let _textPalette:  TextPalette
    
    init(context: RenderContext)
    {
        let histogram = context.histogram
        let columnIDs = histogram.xAxis.ticks;
        _columnValues = columnIDs.map { histogram[$0] }
        _textPalette  = context.textPalette
    }
    
    func renderLine(var line: String, at y: Int) -> String
    {
        for value in _columnValues
        {
            line += _textPalette.columnGap
            line += _cellInColumnOfValue(value, at: y)
        }
        return line
    }
  
    func _cellInColumnOfValue(value: Int?, at y: Int) -> String
    {
        return value && y <= value
            ? _textPalette.filledCell
            : _textPalette.emptyCell
    }
}
