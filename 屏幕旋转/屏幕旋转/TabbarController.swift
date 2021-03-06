//
//  TabbarController.swift
//  屏幕旋转
//
//  Created by 刘通超 on 2017/6/13.
//  Copyright © 2017年 北京京师乐学教育科技有限公司. All rights reserved.
//

import UIKit

class TabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var shouldAutorotate: Bool{
        guard let selectedController = selectedViewController else {
            return false
        }
        return selectedController.shouldAutorotate
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        guard let selectedController = selectedViewController else {
            return .all
        }

        return selectedController.supportedInterfaceOrientations
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        _ = self.shouldAutorotate
        _ = self.supportedInterfaceOrientations
        
        if item == tabBar.items?[1] {
             UIDevice.current.setValue(UIDeviceOrientation.portrait.rawValue, forKey: "orientation")
        }
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
