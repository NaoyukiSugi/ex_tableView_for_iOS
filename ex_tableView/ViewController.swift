//
//  ViewController.swift
//  ex_tableView
//
//  Created by Naoyuki Sugi on 2015/06/06.
//  Copyright (c) 2015年 Naoyuki Sugi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
//UITableViewDataSource のメソッド
    
    //各セクションの行数を指定
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 3
        } else {
            return 5
        }
    }

    //各行に表示するセルの文字を指定
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // セル番号でセルを取り出す
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        // セルに表示するテキストを設定する
        cell.textLabel?.text = "セル" + (indexPath.row).description
        cell.detailTextLabel?.text = "サブタイトル"
        return cell
    }

    //セクションを3つ作る
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    //セクションのタイトルを指定
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "セクション" + section.description
    }

    //行が選択された
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("セクション\(indexPath.section)のセル\(indexPath.row)が選択された")
    }
    
}

