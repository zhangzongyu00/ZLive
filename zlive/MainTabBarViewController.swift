//
//  MainTabBarViewController.swift
//  zlive
//
//  Created by bytedance on 2021/7/23.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let homeVC : HomeViewController = HomeViewController()
        let homeImg : UIImage? = UIImage.init(named: "首页.png")
        homeVC.tabBarItem = UITabBarItem.init(title: "首页", image: setTabBarItemImg(img: homeImg), selectedImage: nil)
        let meVC : MeViewController = MeViewController()
        let meImg : UIImage? = UIImage.init(named: "我的.png")
        meVC.tabBarItem = UITabBarItem.init(title: "我的", image: setTabBarItemImg(img: meImg), selectedImage: nil)
        self.viewControllers = [homeVC, meVC]
        
        // 修改tabbar的选中颜色
        UITabBar.appearance().tintColor = UIColor.orange
    }
}

// tabBarItem相关
extension MainTabBarViewController {
    // 图片过大，需要 切图 才能在区域内放得下
    func setTabBarItemImg(img:UIImage?) -> UIImage? {
        guard img != nil else { return nil }
        let size : CGSize = CGSize.init(width: 30, height: 30)
        UIGraphicsBeginImageContext(size)
        img?.draw(in: CGRect.init(x: 0, y: 0, width: size.width, height: size.height))
        let newImg : UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return newImg
    }
}
