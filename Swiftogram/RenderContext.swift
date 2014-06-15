//
//  RenderContext.swift
//  Swiftogram
//
//  Created by Joshua Smith on 6/14/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

/** Contains objects used when rendering a histogram. */
class RenderContext
{
    let
    histogram:    Histogram,
    textPalette:  TextPalette,
    xAxisLabeler: AxisLabeler,
    yAxisLabeler: AxisLabeler
    
    init(histogram: Histogram, glyph: Character)
    {
        self.histogram = histogram
        xAxisLabeler   = AxisLabeler(axis: histogram.xAxis)
        yAxisLabeler   = AxisLabeler(axis: histogram.yAxis)
        textPalette    = TextPalette(
            glyph:           glyph,
            xAxisLabelWidth: xAxisLabeler.labelWidth,
            yAxisLabelWidth: yAxisLabeler.labelWidth)
    }
}
