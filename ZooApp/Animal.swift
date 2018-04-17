//
//  Animal.swift
//  ZooAPp
//
//  Created by Daniel de la Lastra on 10/04/2018.
//  Copyright © 2018 Daniel de la Lastra. All rights reserved.
//

import Foundation
import AudioToolbox

class Animal: Soundable {
    
    var popularName: String
    var sciName: String
    var classType: String
    var order: String
    var genus: String
    var family: String
    var desc: String
    var img: String
    var sound: String
    var soundId: SystemSoundID = 0
    
    init(popularName: String, sciName: String, classType: String, order: String, genus: String, family: String, desc: String, img: String, sound: String) {
        self.popularName = popularName
        self.sciName = sciName
        self.classType = classType
        self.order = order
        self.genus = genus
        self.family = family
        self.desc = desc
        self.img = img
        self.sound = sound
        createSoundId()
    }
    
    func makeSound(soundId: SystemSoundID) {
        AudioServicesPlaySystemSound(soundId)
    }
    
    func createSoundId() {
        if let soundUrl = Bundle.main.url(forResource: sound, withExtension: "mp3") {
            AudioServicesCreateSystemSoundID(soundUrl as CFURL, &soundId)
        }
    }
    
}
