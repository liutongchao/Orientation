//
//  NavViewController.swift
//  屏幕旋转
//
//  Created by 刘通超 on 2017/6/13.
//  Copyright © 2017年 北京京师乐学教育科技有限公司. All rights reserved.
//

import UIKit

class NavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var shouldAutorotate: Bool{
        guard let topController = topViewController else {
            return false
        }
        return topController.shouldAutorotate
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        guard let topController = topViewController else {
            return .all
        }
        return topController.supportedInterfaceOrientations
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
