//
//  ViewController.swift
//  lucas
//
//  Created by Prijay Khadilkar on 2022-06-02.
//

import UIKit

class ViewController: UIViewController {
    
    var number = 3
    var count=0

    @IBOutlet weak var digitLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setText(text: 1)
        // Do any additional setup after loading the view.
    }

    private func setText(text:Int){
        digitLabel.text = String(text)
    }
    
    func lucasAlgorithm(_ number: Int) -> Int {
        number < 2 ? number : lucasAlgorithm(number - 1) + lucasAlgorithm(number - 2)
    }
    
    @IBAction func nextBtn(_ sender: UIButton) {
        
        var result: Int = lucasAlgorithm(number)
        setText(text: result)
        number=number+1
        count=count+1
        if(count==9){
            let alert = UIAlertController(title: "Lucas", message: "Still going strong", preferredStyle: .alert)
            let ok = UIAlertAction(title: "ok", style: .default){
                _ in print("ok pressed!")
            }
            alert.addAction(ok)
            self.show(alert, sender: nil)
        }
       
    }
    
    @IBAction func onAlertMeTapped(_ sender: UIButton){
        
    }
}

