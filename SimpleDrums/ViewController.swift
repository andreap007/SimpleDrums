//
//  ViewController.swift
//  SimpleDrums
//
//  Created by Andrea on 15/11/2019.
//  Copyright © 2019 Andrea Peric. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var backgroundImage = UIImageView()
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBackground()
        
        
        
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
      
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "aif")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
  
    func setBackground() {
        
        view.addSubview(backgroundImage)
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImage.image = UIImage(named: "backgroundCarpet")
        view.sendSubviewToBack(backgroundImage)
        
    }
}
