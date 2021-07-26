//
//  MeViewController.swift
//  zlive
//
//  Created by bytedance on 2021/7/23.
//

import UIKit

class MeViewController: UIViewController {
    // 添加一个UIScrollView
    private lazy var scrollView : UIScrollView = {
        let view = UIScrollView()
        view.backgroundColor = UIColor.blue
        return view
    }()
    // 用户信息区域
    private lazy var userInfoArea : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.gray
        return view
    }()
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        self.setupUI()
        self.configUI()
    }
}

extension MeViewController {
    func setupUI() {
        self.view.addSubview(scrollView)
        self.scrollView.addSubview(userInfoArea)
    }
    
    func configUI() {
        scrollView.snp.makeConstraints { make in
            make.left.top.right.equalTo(self.view)
            make.height.equalTo(1800)
        }
        userInfoArea.snp.makeConstraints { make in
            make.left.top.right.equalTo(self.view)
            make.height.equalTo(200)
        }
    }
}
