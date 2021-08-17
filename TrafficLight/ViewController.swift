//
//  ViewController.swift
//  TrafficLight
//
//  Created by Игорь Сысоев on 17.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var numberColor = 0
    
    @IBOutlet weak var redLightView: UIView!
    
    @IBOutlet weak var yellowLightView: UIView!
    
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var startPressButthonOutlet: UIButton!
    

    
    override func viewDidLoad() {
        createCornerRadius()
        super.viewDidLoad()
    }


        
    @IBAction func startPressButthon() {
        let lightArray = [redLightView, yellowLightView, greenLightView]
        
        switch numberColor {
        case 0:
            lightArray[2]?.alpha = 0.3
            lightArray[numberColor]?.alpha = 1
            numberColor += 1
        case 1:
            lightArray[numberColor - 1]?.alpha = 0.3
            lightArray[numberColor]?.alpha = 1
            numberColor += 1
        case 2:
            lightArray[numberColor - 1]?.alpha = 0.3
            lightArray[numberColor]?.alpha = 1
            numberColor = 0
        default:
            break
        }
    }
    
    fileprivate func createCornerRadius() {
        redLightView.layer.cornerRadius = 75
        yellowLightView.layer.cornerRadius = 75
        greenLightView.layer.cornerRadius = 75
        startPressButthonOutlet.layer.cornerRadius = 10
    }
    
    
    
    
}

