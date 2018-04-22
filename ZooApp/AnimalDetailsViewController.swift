//
//  AnimalDetailsViewController.swift
//  ZooAPp
//
//  Created by Daniel de la Lastra on 19/04/2018.
//  Copyright © 2018 Daniel de la Lastra. All rights reserved.
//

import UIKit

class AnimalDetailsViewController: UIViewController {

    @IBOutlet weak var mAnimalImage: UIImageView!
    @IBOutlet weak var mAnimalPopName: UILabel!
    @IBOutlet weak var mAnimalSciName: UILabel!
    @IBOutlet weak var mAnimalClass: UILabel!
    @IBOutlet weak var mAnimalGenus: UILabel!
    @IBOutlet weak var mAnimalFamily: UILabel!
    @IBOutlet weak var mAnimalOrder: UILabel!
    @IBOutlet weak var mAnimalDesc: UILabel!
    
    var animal: Animal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Asignamos los valores respectivos en cada sitio
        mAnimalImage.image = UIImage(named: animal!.img)
        mAnimalPopName.text = animal?.popularName
        mAnimalSciName.text = animal?.sciName
        mAnimalClass.text = animal?.classType
        mAnimalGenus.text = animal?.genus
        mAnimalFamily.text = animal?.family
        mAnimalOrder.text = animal?.order
        mAnimalDesc.text = animal?.desc
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
