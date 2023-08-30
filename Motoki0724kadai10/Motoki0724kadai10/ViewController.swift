//
//  ViewController.swift
//  Motoki0724kadai10
//
//  Created by Motoki Okayasu on 2023/08/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //tableViewを接続
    @IBOutlet private weak var tableView: UITableView!
    
    //変数tableDataに47都道府県の文字列データを取得
    private var tableData = ["北海道","青森県","岩手県","宮城県","秋田県","山形県",
                     "福島県","茨城県","栃木県","群馬県","埼玉県","千葉県",
                     "東京都","神奈川県","新潟県","富山県","石川県","福井県",
                     "山梨県","長野県","岐阜県","静岡県","愛知県","三重県",
                     "滋賀県","京都府","大阪府","兵庫県","奈良県","和歌山県",
                     "鳥取県","島根県","岡山県","広島県","山口県","徳島県",
                     "香川県","愛媛県","高知県","福岡県","佐賀県","長崎県",
                     "熊本県","大分県","宮崎県","鹿児島県","沖縄県"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
    }
 
    //セルの行数を決める。
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //tableDataで設定した分の数を設定する
        tableData.count
    }
    //セルの中身を決めるメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //CustomTableViewCellで登録したCellを表示する
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        
        cell.setUpText(name: tableData[indexPath.row], row: indexPath.row)
        return cell
    }
}

