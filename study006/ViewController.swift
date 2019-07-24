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
        firstView.clipsToBounds=true
        //子视图超过父视图被切除
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
        testView5.transform=transform.translatedBy(x: 0, y: 100)//变换
        testView5.transform=transform.scaledBy(x: 1.5, y: 1.5)//变换
    }
    //手势响应
    @objc func SingleTap(){
        print("<#T##items: Any...##Any#>")
    }
}

