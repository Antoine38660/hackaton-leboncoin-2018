//
//  LineView.swift
//  Schneider-Demo
//
//  Created by Ysée Monnier on 23/03/2018.
//  Copyright © 2018 Ysée Monnier. All rights reserved.
//

import UIKit

@IBDesignable
open class LineView: UIView {
    
    @IBInspectable open var lineWidth: CGFloat = 1.0
    @IBInspectable open var lineColor: UIColor? {
        didSet {
            lineCGColor = lineColor?.cgColor
        }
    }
    open var lineCGColor: CGColor?
    
    override open func draw(_ rect: CGRect) {
        // Draw a line from the left to the right at the midpoint of the view's rect height.
        let midpoint = self.bounds.size.height / 2.0
        if let context = UIGraphicsGetCurrentContext() {
            context.setLineWidth(lineWidth)
            if let lineCGColor = self.lineCGColor {
                context.setStrokeColor(lineCGColor)
            }
            else {
                context.setStrokeColor(UIColor.black.cgColor)
            }
            context.move(to: CGPoint(x: 0.0, y: midpoint))
            context.addLine(to: CGPoint(x: self.bounds.size.width, y: midpoint))
            context.strokePath()
        }
    }
}
