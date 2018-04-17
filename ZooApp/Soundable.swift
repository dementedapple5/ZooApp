//
//  Soundable.swift
//  ZooAPp
//
//  Created by Daniel de la Lastra on 10/04/2018.
//  Copyright © 2018 Daniel de la Lastra. All rights reserved.
//

import Foundation
import AudioToolbox

protocol Soundable {
    func makeSound(soundId: SystemSoundID)
}
