//
//  MainViewController.swift
//  myPlaces
//
//  Created by Kairat Zukhra on 22.10.2020.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantsNames = [
        "Doner", "Пицца Блюз", "KFC", "Meiman",
        "Sushimania", "Dodo Pizza", "barBQ", "Tulipark",
        "Lanzhou", "Waffle house", "Appetite", "Дастархан",
        "Crystal Detailing", "JOY VOSTOK", "Золотая Орда"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantsNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        cell.nameLabel.text = restaurantsNames[indexPath.row]
        cell.imageOfPlace.image = UIImage(named: restaurantsNames[indexPath.row])
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace.clipsToBounds = true

        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
