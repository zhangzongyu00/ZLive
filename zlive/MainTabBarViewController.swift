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
        // 首页
        let homeVC : HomeViewController = HomeViewController()
        let homeNav = UINavigationController(rootViewController: homeVC)
        addChildViewControllerToTabBar(vc: homeNav, vcTitle: "首页", vcImg: "首页.png", selectedImg: "")
        // 我的
        let meVC : MeViewController = MeViewController()
        let meNav = UINavigationController(rootViewController: meVC)
        meNav.isNavigationBarHidden = true
        addChildViewControllerToTabBar(vc: meNav, vcTitle: "我的", vcImg: "我的.png", selectedImg: "")
        
        // 修改tabbar的选中颜色
        UITabBar.appearance().tintColor = UIColor.orange
    }
    
    // 添加子控制器到底bar
    func addChildViewControllerToTabBar(vc : UIViewController,
                                        vcTitle : String,
                                        vcImg : String,
                                        selectedImg : String) {
        let img : UIImage? = UIImage.init(named: vcImg)
        let selectImg : UIImage? = UIImage.init(named: selectedImg)
        vc.tabBarItem = UITabBarItem.init(title: vcTitle, image: setTabBarItemImg(img: img), selectedImage: setTabBarItemImg(img: selectImg))
        self.addChild(vc)
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
