//
//  ViewController.swift
//  study006
//
//  Created by PeiYu Wang on 2019/7/21.
//  Copyright © 2019 PeiYu Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor=UIColor.gray

        let firstView=UIView(frame: CGRect(x: 40, y: 80, width: 100, height: 100))
        firstView.backgroundColor=UIColor.green
        firstView.alpha=0.3
        firstView.bounds=CGRect(x: -10, y: -10, width: 100, height: 100)
        //当alpha=0 时 当前的UIView及其子视图都会被隐藏，并且从响应链中移除
        firstView.clipsToBounds=true//子视图超过父视图被切除
        
        self.view.addSubview(firstView)
        
        let secondView=UIView(frame: CGRect(x: 40, y: 180, width: 100, height: 100))
        secondView.backgroundColor=UIColor.blue
//        secondView.isHidden=true
        //当前的UIView及其子视图都会被隐藏，并且从响应链中移除
        self.view.addSubview(secondView)
        
        let thirdView=UIView(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
        thirdView.backgroundColor=UIColor.purple
        let image=UIImage(named: "shouey_banner")
        thirdView.backgroundColor=UIColor.init(patternImage: image!)
        firstView.addSubview(thirdView)
        
       
        
        let testView1=UIView(frame: CGRect(x: 40, y: 300, width: 100, height: 100))
        testView1.backgroundColor=UIColor.green
        
        let testView2=UIView(frame: CGRect(x: 60, y: 320, width: 100, height: 100))
        testView2.backgroundColor=UIColor.red
        
        let testView3=UIView(frame: CGRect(x: 80, y: 340, width: 100, height: 100))
        testView3.backgroundColor=UIColor.blue
        
        self.view.addSubview(testView1)
        self.view.addSubview(testView2)
        self.view.addSubview(testView3)
        
        self.view.insertSubview(testView3, belowSubview: testView2)//将3移动到2下方
        self.view.insertSubview(testView3, aboveSubview: testView2)//将3移动到2上方
        self.view.bringSubviewToFront(testView1)//将1移动到顶部
        self.view.sendSubviewToBack(testView1)//将1移动到底部
        testView3.removeFromSuperview()//删除3
        
        let testView4=UIView(frame: CGRect(x: 40, y: 460, width: 100, height: 100))
        testView4.backgroundColor=UIColor.orange
        self.view.addSubview(testView4)
        
        let guesture=UITapGestureRecognizer(target: self, action: #selector(SingleTap))//手势对象
        testView4.addGestureRecognizer(guesture)//添加手势
        
        let testView5=UIView(frame: CGRect(x: 40, y: 580, width: 100, height: 100))
        testView5.backgroundColor=UIColor.black
        testView5.center=self.view.center
        self.view.addSubview(testView5)
        
        let transform=testView5.transform//映射
        testView5.transform=transform.translatedBy(x: 0, y: 100)//变换:平移
        testView5.transform=transform.scaledBy(x: 1.5, y: 1.5)//变换：缩放
        testView5.transform=transform.rotated(by: 3.14/4)//变换：旋转
        
        testView5.layer.borderWidth=20//边框宽
        testView5.layer.borderColor=UIColor.red.cgColor//边框颜色
        
        testView5.layer.shadowColor=UIColor.black.cgColor//阴影
        testView5.layer.shadowOffset=CGSize(width: 10.0, height: 10.0)//阴影偏移
        testView5.layer.shadowOpacity=0.45//不透明度
        testView5.layer.shadowRadius=5.0//模糊半径
        
        let testView6=UIView(frame: CGRect(x: 40, y: 580, width: 100, height: 100))
        testView6.backgroundColor=UIColor.black
        testView6.layer.cornerRadius=40//圆角
//        testView6.clipsToBounds=true///子视图超过父视图被切除
        testView6.layer.masksToBounds=true//裁切视图内容
        
        let testView7=UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        testView7.backgroundColor=UIColor.purple
        
        self.view.addSubview(testView6)
        testView6.addSubview(testView7)
        
        
        let testView8 = RoundView(frame: CGRect(x: 240, y: 80 ,width: 100, height: 100))//使用自定义视图类
        testView8.color=UIColor.red//修改自定义类变量
        self.view.addSubview(testView8)
        
        let testView9=UIView(frame: CGRect(x: 240, y: 200, width: 100, height: 100))
        testView9.backgroundColor=UIColor.orange
        
        let testView9Layer=CAGradientLayer()//渐变层
//        testView9Layer.frame=testView9.bounds
        testView9Layer.frame=CGRect(x: 10, y: 10, width: 100, height: 100)
        
        let fromColor=UIColor.yellow.cgColor
        let midColor=UIColor.blue.cgColor
        let toColor=UIColor.red.cgColor
        
        testView9Layer.colors=[fromColor,midColor,toColor]//渐变色
        testView9Layer.startPoint=CGPoint(x: 0, y: 0)//起始位置
        testView9Layer.endPoint=CGPoint(x: 1, y: 1)//结束位置
        testView9Layer.locations=[0,0.5,1]//渐变分布
        
        testView9.layer.addSublayer(testView9Layer)
        
        self.view.addSubview(testView9)
        
    }
    //手势响应
    @objc func SingleTap(){
        print("<#T##items: Any...##Any#>")
    }
}

