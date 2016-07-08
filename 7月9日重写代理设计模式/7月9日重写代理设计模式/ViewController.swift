//
//  ViewController.swift
//  7月9日重写代理设计模式
//
//  Created by 尹欢一 on 16/7/9.
//  Copyright © 2016年 hut. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
   lazy var items: [Item] = [
    Item(itemName: "卧槽", itemBrand: "大爷"),
    Item(itemName: "daxie", itemBrand: "的激发了"),
    Item(itemName: "撒地方", itemBrand: "是大法官"),
    Item(itemName: "撒地方", itemBrand: "4吧"),
    Item(itemName: "凤凰台", itemBrand: "天原集团"),
    Item(itemName: "玩儿", itemBrand: "研究院"),
    Item(itemName: "ujjut", itemBrand: "爷爷"),
    Item(itemName: "我二哥", itemBrand: "伍尔特"),
    Item(itemName: "瓦尔特别", itemBrand: "为儿童为儿童"),
    Item(itemName: "为儿童为儿童", itemBrand: "为儿童为儿童"),
    Item(itemName: "为儿童为儿童", itemBrand: "为儿童为儿童")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if cell == nil {
            
            cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "cell")
        }
        
        let item = items[indexPath.row]
        
        cell?.textLabel?.text = item.itemName
        
        cell?.detailTextLabel?.text = item.itemBrand
        
        return cell!
        
    }
    //当点击某一行之后，跳转
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "segue1", sender: indexPath.row)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }

}

