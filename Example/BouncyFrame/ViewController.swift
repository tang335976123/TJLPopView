//
//  ViewController.swift
//  BouncyFrame
//
//  Created by tang335976123 on 03/10/2024.
//  Copyright (c) 2024 tang335976123. All rights reserved.
//

import UIKit
import BouncyFrame

class ViewController: UIViewController {

    let aleat = TJAleartManage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
        let btn = UIButton(type: .custom)
        btn.backgroundColor = .red
        btn.frame = CGRectMake(90, 90, 60, 60)
        self.view .addSubview(btn)
        btn.addTarget(self, action: #selector(clickbtn), for: .touchUpInside)
        
        
    }
    
    @objc func clickbtn(){
        TJDataManager.updataTitel(str: "登录提示")
        TJDataManager.updataContent(str: "用户密码错识")
        TJDataManager.updataOkbtn(str: "重新输入")
        TJSetingManager.updataAlignMentModel(alignent: .center)
        TJColorManager.updateTitelColor(color: "#88888")
        aleat.alearTypeSet(Type: .oneButtonOneMessage)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

