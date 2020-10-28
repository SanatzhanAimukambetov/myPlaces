//
//  PlaceModel.swift
//  myPlaces
//
//  Created by Kairat Zukhra on 23.10.2020.
//

import RealmSwift

class Place: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    
    let restaurantsNames = [
        "Doner", "Пицца Блюз", "KFC", "Meiman",
        "Sushimania", "Dodo Pizza", "barBQ", "Tulipark",
        "Lanzhou", "Waffle house", "Appetite", "Дастархан",
        "Crystal Detailing", "JOY VOSTOK", "Золотая Орда"
    ]
    
    func savePlaces() {
        
        for place in restaurantsNames {
            
            let image = UIImage(named: place)
            guard let imageData = image?.pngData() else { return }
            
            let newPlace = Place()
            
            newPlace.name = place
            newPlace.location = "Oskemen"
            newPlace.type = "Restaurant"
            newPlace.imageData = imageData
        }
    }
}
