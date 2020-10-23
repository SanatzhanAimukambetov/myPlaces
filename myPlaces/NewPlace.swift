//
//  NewPlace.swift
//  myPlaces
//
//  Created by Kairat Zukhra on 23.10.2020.
//

import UIKit

class NewPlace: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        tableView.tableHeaderView = UIView()
        */
        tableView.tableFooterView = UIView()
    }
    
    // MARK: Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            
        } else {
            view.endEditing(true)
        }
    }
}

// MARK: Text Field Delegate

extension NewPlace: UITextFieldDelegate {
    
    //скрываем клавиатуру по нажатию Done
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
