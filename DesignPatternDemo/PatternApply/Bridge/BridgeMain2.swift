//
//  BridgeMain.swift
//  DesignPatternDemo
//
//  Created by wupeng on 2020/3/3.
//  Copyright © 2020 wupeng. All rights reserved.
//

import Foundation

class BridgeMain2: NSObject,IMain {
    func main() {
        let red = Red()
        let green = Green()
        let blue = Blue()
        
        var graphings:[BaseGraphing] = [BaseGraphing]()
        
        let redSquare = Square.init(color: red)
        let greenSquare = Square.init(color: green)
        let blueSquare = Square.init(color: blue)
        
        graphings.append(redSquare)
        graphings.append(greenSquare)
        graphings.append(blueSquare)
        
        let redCircle = Circle.init(color: red)
        let greenCircle = Circle.init(color: green)
        let blueCircle = Circle.init(color: blue)
        
        graphings.append(redCircle)
        graphings.append(greenCircle)
        graphings.append(blueCircle)
        
        let redRectangle = Rectangle.init(color: red)
        let greenRectangle = Rectangle.init(color: green)
        let blueRectangle = Rectangle.init(color: blue)
        
        graphings.append(redRectangle)
        graphings.append(greenRectangle)
        graphings.append(blueRectangle)
        
        let redElipse = Elipse.init(color: red)
        let greenElipse = Elipse.init(color: green)
        let blueElipse = Elipse.init(color: blue)
        
        graphings.append(redElipse)
        graphings.append(greenElipse)
        graphings.append(blueElipse)
        
        for graphing in graphings {
            graphing.drawShape()
        }
    }
}
