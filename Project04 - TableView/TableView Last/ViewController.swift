//
//  ViewController.swift
//  TableView Last
//
//  Created by 付晓 on 2016/10/21.
//  Copyright © 2016年 付晓. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func clear(_ sender: AnyObject) {
        data.removeAll()
        tableView.reloadData()
    }
    var data = [  Post(top:"ImageView",avatar : "avatar",nikcname : "Mikael",username : "Gustafsson",content : "You will undoubtedly have dreams. ",created_at : "2 hours ago"),
                Post(top:"old_battlefield-1",avatar : "avatar 02",nikcname : "Adam Grason",username : "Kharazz",content : "yes! you can try your best ,just do it!",created_at : "2 hours ago"),
                Post(top:"old_battlefield",avatar : "avatar 03",nikcname : " Dmitrij",username : " Dmitrij ",content : "yes! you can try your best ,just do it!",created_at : "2 hours ago")
    ]
    
    var dispalyText : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource,UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NormalCell", for: indexPath) as! PostCell
        let post = data[indexPath.row]
        cell.postImageView.image = UIImage(named: post.top)
        cell.avatarImageView.image = UIImage(named:post.avatar)
        cell.nicknameLabel.text = post.nikcname
        cell.contentLabel.text = post.content
        cell.timeLabel.text = post.created_at
        cell.usernameLabel.text = post.username
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        dispalyText = cell?.textLabel?.text
        cell?.selectionStyle = UITableViewCellSelectionStyle.none
        performSegue(withIdentifier: "showContentViewController", sender: nil)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 280
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showContentViewController"{
        let viewController = segue.destination as! ContentViewController
            
        viewController.displayText = dispalyText
        }
    }
}
