//
//  TableViewController.swift
//  shoppingApp
//
//  Created by Lun H on 2020/3/18.
//  Copyright © 2020 Lun H. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    
    let formatter = NumberFormatter()
    var totalMoney:Int = 0
    var money1 = 0
    var money2 = 0
    var money3 = 0
    var money4 = 0
    
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var number1: UILabel!
    @IBOutlet weak var number2: UILabel!
    @IBOutlet weak var number3: UILabel!
    @IBOutlet weak var number4: UILabel!
    
    
    //第1件商品的按鈕
    @IBAction func buy1(_ sender: UIStepper) {
        number1.text = "數量\(Int(sender.value))"
        money1 = 1600 * Int(sender.value)
        totalMoney = money1+money2+money3+money4
        changeToString(money: totalMoney)
    }
    
    //第2件商品的按鈕
    @IBAction func buy2(_ sender: UIStepper) {
        number2.text = "數量\(Int(sender.value))"
        money2 = 1800 * Int(sender.value)
        totalMoney = money1+money2+money3+money4
        changeToString(money: totalMoney)
    }
    
    //第3件商品的按鈕
    @IBAction func buy3(_ sender: UIStepper) {
        money3 = 2000 * Int(sender.value)
        number3.text = "數量\(Int(sender.value))"
        totalMoney = money1+money2+money3+money4
        changeToString(money: totalMoney)
    }
    
    //第4件商品的按鈕
    @IBAction func buy4(_ sender: UIStepper) {
        money4 = 2200 * Int(sender.value)
        number4.text = "數量\(Int(sender.value))"
        totalMoney = money1+money2+money3+money4
        changeToString(money: totalMoney)
    }
    
    
    func changeToString(money:Int){
        total.text = formatter.string(from: NSNumber(value: totalMoney))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formatter.numberStyle = .currency  
        formatter.maximumFractionDigits = 0 
    }

    // MARK: - Table view data source

    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
