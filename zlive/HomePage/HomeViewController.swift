//
//  HomeViewController.swift
//  zlive
//
//  Created by bytedance on 2021/7/23.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    // 添加一个UITableView
    private lazy var tableView : UITableView = {
        let view = UITableView()
        view.backgroundColor = UIColor.gray
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        self.title = "首页"
        self.configUI()
    }
}

extension HomeViewController {
    func configUI() {
        self.view.addSubview(tableView)
        
        tableView.snp.makeConstraints { make in
            make.left.top.right.equalTo(self.view)
            make.height.equalTo(800)
        }
    }
}
