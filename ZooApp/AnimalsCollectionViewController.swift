//
//  AnimalsCollectionViewController.swift
//  ZooAPp
//
//  Created by Daniel de la Lastra on 10/04/2018.
//  Copyright © 2018 Daniel de la Lastra. All rights reserved.
//

import UIKit

private let animalCellId = "animalCell"

class AnimalsCollectionViewController: UICollectionViewController {

    var animals: Array<Animal>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let lionDesc = "The lion (Panthera leo) is a species in the family Felidae and a member of the genus Panthera. It exhibits a pronounced sexual dimorphism; males are larger than females with a typical weight range of 150 to 250 kg (331 to 551 lb) for the former and 120 to 182 kg (265 to 401 lb) for the latter. In addition, male lions have a prominent mane, which is the most recognisable feature of the species. Both sexes have hairy tufts at the end of their tails."
        let elephantDesc = "Elephants are large mammals of the family Elephantidae and the order Proboscidea. Three species are currently recognised: the African bush elephant (Loxodonta africana), the African forest elephant (L. cyclotis), and the Asian elephant (Elephas maximus). Elephants are scattered throughout sub-Saharan Africa, South Asia, and Southeast Asia. Elephantidae is the only surviving family of the order Proboscidea; other, now extinct, members of the order include deinotheres, gomphotheres, mammoths, and mastodons."
        let dogDesc = "The domestic dog (Canis lupus familiaris or Canis familiaris) is a member of the genus Canis (canines), which forms part of the wolf-like canids, and is the most widely abundant terrestrial carnivore. The dog and the extant gray wolf are sister taxa as modern wolves are not closely related to the wolves that were first domesticated,[12][13] which implies that the direct ancestor of the dog is extinct.[14] The dog was the first species to be domesticated[13][15] and has been selectively bred over millennia for various behaviors, sensory capabilities, and physical attributes."
        let cowDesc = "attle—colloquially cows—are the most common type of large domesticated ungulates. They are a prominent modern member of the subfamily Bovinae, are the most widespread species of the genus Bos, and are most commonly classified collectively as Bos taurus.Cattle are commonly raised as livestock for meat (beef and veal), as dairy animals for milk and other dairy products, and as draft animals (oxen or bullocks that pull carts, plows and other implements). Other products include leather and dung for manure or fuel. In some regions, such as parts of India, cattle have significant religious meaning."
        let catDesc = "The domestic cat (Felis silvestris catus or Felis catus)[1][5] is a small, typically furry, carnivorous mammal. They are often called house cats[6] when kept as indoor pets or simply cats when there is no need to distinguish them from other felids and felines. They are often valued by humans for companionship and for their ability to hunt vermin. There are more than seventy cat breeds recognized by various cat registries."
        let roosterDesc = "A rooster, also known as a cockerel or cock, is a male gallinaceous bird, usually a male chicken (Gallus gallus domesticus).Mature male chickens less than one year old are called cockerels. The term rooster originates in the United States,[1] and the term is widely used throughout North America, as well as Australia and New Zealand.[citation needed] The older terms cock or cockerel, the latter denoting a young cock, are used in the United Kingdom and Ireland.[2]"
        
        

        animals = Array()
        animals?.append(Animal(popularName: "Leon",sciName: "Panthera Leo",classType: "Mamalia",order: "Carnivora",genus: "Panthera",family: "Felidae",desc: lionDesc ,img: "lion.jpg",sound: "lion.mp3"))
        
        animals?.append(Animal(popularName: "Elephant",sciName: "Elephantidae",classType: "Mammalia",order: "Proboscidea",genus: "Vertedrata",family: "Elephantidae",desc: elephantDesc ,img: "elephant.jpg",sound: "elephant.mp3"))
        
        animals?.append(Animal(popularName: "Dog",sciName: "Canis",classType: "Mammalia",order: "Carnivora",genus: "Canis",family: "Canidae",desc: dogDesc,img: "dog.jpg",sound: "dog.mp3"))
        
        animals?.append(Animal(popularName: "Cow",sciName: "Elephantidae",classType: "Mammalia",order: "Artiodactyla",genus: "Bos",family: "Bovidae",desc: cowDesc,img: "cow.jpg",sound: "cow.mp3"))
        
        animals?.append(Animal(popularName: "Cat",sciName: "Felis Silvestris Catus",classType: "Mammalia",order: "Carnivora",genus: "Felis",family: "Felidae",desc: catDesc ,img: "cat",sound: "cat.mp3"))
        
        animals?.append(Animal(popularName: "Rooster",sciName: "Gallus Gallus Domesticus",classType: "Aves",order: "Galliformes",genus: "Gallus",family: "Phasianidae",desc: roosterDesc,img: "rooster.jpg",sound: "rooster.mp3"))


        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: animalCellId)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return animals!.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: animalCellId, for: indexPath) as! AnimalCell
        cell.mCellImage.image = UIImage(named: animals![indexPath.row].img)
        cell.mAnimalName.text = animals![indexPath.row].popularName
        
        cell.mAnimalSciName.text = animals![indexPath.row].sciName
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dvc = segue.destination as? AnimalDetailsViewController {
            if let cell = sender as? AnimalCell {
                if let indexPath = collectionView?.indexPath(for: cell) {
                    dvc.animal = animals?[indexPath.row]
                }
            }
        }
    }

}
