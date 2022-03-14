//
//  TwoVC.swift
//  OCDemo
//
//  Created by zz on 2022/3/11.
//

import Foundation
import UIKit


public class TwoViewController:UIViewController, ChartViewDelegate {
    
    
    open override func viewDidLoad() {
        view.backgroundColor = .purple
        
        let btn = UIButton(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        btn.setTitle("btnClick", for: .normal)
        view.addSubview(btn)
        btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        
        title = "Swift ViewController";
        
        
        let s = Student()
        s.score = 99.0

        SVProgressHUD.show();
        

        let p = Person()
        p.name = "dota"
        print("Swift ViewController p name is \(p.name)")
        
        
        let barChartView = BarChartView()
        barChartView.delegate = self
        
        
        
        
        
        
        
    }
    
    open override func viewDidLayoutSubviews() {


        
        
    }
    
    @objc open func btnClick()  {
        print("Swift ViewController button--btnClick")
        
        let s = Student()
        s.learn(withWord: "Swift two--hhhhh")
        
        let threeVC = ThreeViewController()
        
        SVProgressHUD.dismiss {
            self.navigationController!.pushViewController(threeVC, animated: true)

        }
        
    }
    
    
}
