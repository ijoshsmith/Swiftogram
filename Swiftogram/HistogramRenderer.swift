//
//  HistogramRenderer.swift
//  Swiftogram
//
//  Created by Joshua Smith on 6/12/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

/** Renders a histogram as a multi-line string. */
class HistogramRenderer
{
    let _glyph: Character
    
    init(glyph: Character) { _glyph = glyph }
    
    func renderHistogram(histo: Histogram) -> String
    {
        let context = RenderContext(histogram: histo, glyph: _glyph)
        var lines = context.yAxisLabeler.labels + [_xAxisLine(context)]
        _renderColumns(&lines, context)
        return lines.joinWithSeparator("\n")
    }

    func _xAxisLine(context: RenderContext) -> String
    {
        let palette = context.textPalette
        let labels = context.xAxisLabeler.labels
        let labelsAndGaps = labels.joinWithSeparator(palette.columnGap)
        return palette.yAxisGap + palette.columnGap + labelsAndGaps
    }
    
    func _renderColumns(inout lines: [String], _ context: RenderContext)
    {
        print("Entering function _renderColumns...")
        var i = 0
        let lineRenderer = HistogramLineRenderer(context: context)
        print("RC Context Y: ", context.histogram.yAxis.ticks)
        for y in context.histogram.yAxis.ticks as! [Int]
        {
            print("RC Y is now: ", y)
            print("RC i is now: ", i)
            print("RC value for lines: ", lines)
            print("RC value for lines[i]: ", lines[i])
            print("Swift is incrementing i before calling lineRenderer")
            lines[i++] = lineRenderer.renderLine(lines[i], at: y)
            print("RCend lines[i]: ", lines[i])
            print("RCend Y is still: ", y)
            print("RCend i: ", i)
            print("RCend Line s: ", lines)
        }
    }
}
