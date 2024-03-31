//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Tamara Barišić on 10.03.2024..
//

import UIKit

class CardSelectionVC: UIViewController 
{

    @IBOutlet var cardImageView: UIImageView!
    @IBOutlet var buttons:[UIButton]!
    var cards:[ UIImage]=Card.allValues
    var timer:Timer!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        startTimer();
        for button in buttons
        {
            button.layer.cornerRadius=8
        }
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        timer.invalidate();
    }
    
    func startTimer()
    {
        timer=Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage()
    {
        cardImageView.image=cards.randomElement() ?? UIImage(named: "AS")
    }
    
    
    @IBAction func stapButtonTapped(_ sender: UIButton) {
        timer.invalidate();
    }
    
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate();
        startTimer();
    }
    
    
    @IBAction func rulesButtonTapped(_ sender: UIButton) {
    }
    
 

}
