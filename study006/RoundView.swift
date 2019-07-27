//
//  RoundView.swift
//  study006
//
//  Created by PeiYu Wang on 2019/7/27.
//  Copyright © 2019 PeiYu Wang. All rights reserved.
//

import Foundation
import UIKit

class RoundView: UIView {
    var color=UIColor.blue
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor=UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func draw(_ rect: CGRect) {
        let ctx=UIGraphicsGetCurrentContext()//获取当前的图形上下文
        ctx?.clear(self.frame)//擦除
        ctx?.setFillColor(color.cgColor)//填充颜色
        ctx?.fillEllipse(in: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))//绘制椭圆
    }
}
