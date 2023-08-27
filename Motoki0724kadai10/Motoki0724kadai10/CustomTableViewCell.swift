//
//  CustomTableViewCell.swift
//  Motoki0724kadai10
//
//  Created by Motoki Okayasu on 2023/08/27.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    //〇〇番目の都道府県ですを表示するためのlabelを設置する
   
    @IBOutlet private weak var numberLabel: UILabel!
    
    @IBOutlet private weak var prefecturesLabel: UILabel!
    
    
    //表示する文字列とセルの背景色を設定するメソッド
    func setUpText(name: String, row: Int) {
        self.numberLabel.text = "\(row + 1)番目の都道府県です"
        self.prefecturesLabel.text = name
        
        switch row % 3 {
        case 0:
            backgroundColor = UIColor.init(red: 255/255, green: 180/255, blue: 180/255, alpha: 100/100)
        case 1:
            backgroundColor = UIColor.init(red: 180/255, green: 255/255, blue: 180/255, alpha: 100/100)
        default:
            backgroundColor = UIColor.init(red: 180/255, green: 180/255, blue: 255/255, alpha: 100/100)
        }
    }
        
}
    
    

