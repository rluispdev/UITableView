//
//  ViewController.swift
//  TabViewDemo
//
//  Created by Rafael Gonzaga on 10/02/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var strings: [String] = ["Alpha", "Beta", "Ulimited", "Recised"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
    
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     
       let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(withIdentifier: "testVC")
        
        vc.navigationItem.title = strings[indexPath.row]
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return strings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath)
        as!MyTableViewCell
        
        cell.customImagemView.image = UIImage(systemName: "square.fill")
        
        switch indexPath.row {
        case 0:
            cell.customImagemView.tintColor = .cyan
         case 1:
            cell.customImagemView.tintColor = .orange
        case 2:
            cell.customImagemView.tintColor = .black
        default:
            cell.customImagemView.tintColor = .magenta
      }
        
        cell.customLabel.text = strings[indexPath.row]

        return cell
    }
}
