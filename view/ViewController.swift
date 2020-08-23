//
//  ViewController.swift
//  view
//
//  Created by 維衣 on 2020/7/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numaberBtns: [UIButton]!
    @IBOutlet var imageView: [UIImageView]!
    
    @IBOutlet var slippersImageView: [UIImageView]!
    
    
    
    var password = ""

    func changeImage(){
        switch password.count-1{
        case 0:
            imageView[0].image = UIImage(named: "icon1.png")
            imageView[1].image = UIImage(named: "icon5.png")
            imageView[2].image = UIImage(named: "icon5.png")
            imageView[3].image = UIImage(named: "icon5.png")
            slippersImageView[0].isHidden = false
            
        case 1:
            imageView[0].image = UIImage(named: "icon1.png")
            imageView[1].image = UIImage(named: "icon2.png")
            imageView[2].image = UIImage(named: "icon5.png")
            imageView[3].image = UIImage(named: "icon5.png")
            slippersImageView[0].isHidden = false
            slippersImageView[1].isHidden = false
            
        case 2:
            imageView[0].image = UIImage(named: "icon1.png")
            imageView[1].image = UIImage(named: "icon2.png")
            imageView[2].image = UIImage(named: "icon3.png")
            imageView[3].image = UIImage(named: "icon5.png")
            slippersImageView[0].isHidden = false
            slippersImageView[1].isHidden = false
            slippersImageView[2].isHidden = false
            
        case 3:
            imageView[0].image = UIImage(named: "icon1.png")
            imageView[1].image = UIImage(named: "icon2.png")
            imageView[2].image = UIImage(named: "icon3.png")
            imageView[3].image = UIImage(named: "icon4.png")
            slippersImageView[0].isHidden = false
            slippersImageView[1].isHidden = false
            slippersImageView[2].isHidden = false
            slippersImageView[3].isHidden = false
            
        default:
            clearImage()
            
        }
    }
    
    func clearImage(){
        imageView[0].image = UIImage(named: "icon5.png")
        imageView[1].image = UIImage(named: "icon5.png")
        imageView[2].image = UIImage(named: "icon5.png")
        imageView[3].image = UIImage(named: "icon5.png")
        slippersImageView[0].isHidden = true
        slippersImageView[1].isHidden = true
        slippersImageView[2].isHidden = true
        slippersImageView[3].isHidden = true
    }
        

        func clearPassword(){
            password = ""
            changeImage()
            }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clearImage()
        slippersImageView[0].isHidden = true
        slippersImageView[0].transform = CGAffineTransform(rotationAngle: 295)
        slippersImageView[1].isHidden = true
        slippersImageView[1].transform = CGAffineTransform(rotationAngle: 225)
        slippersImageView[2].isHidden = true
        slippersImageView[2].transform = CGAffineTransform(rotationAngle: 294.55)
        slippersImageView[3].isHidden = true
        slippersImageView[3].transform = CGAffineTransform(rotationAngle: 225)
    }
    
    @IBAction func Buttons(_ sender: UIButton) {

        if let inputPassword = sender.titleLabel?.text {
            password.append(inputPassword)
            if password.count < 4{
                
                changeImage()
                
            }else if password.count == 4{
                changeImage()
                if password == "1225"{
                    let alert = UIAlertController(title: "解鎖成功!", message: "ＹＡ!", preferredStyle: .alert)
                    let action = UIAlertAction(title: "OK!", style: .cancel, handler: nil)
                        alert.addAction(action)
                        present(alert, animated: false, completion: clearPassword)
                }else{
                    let alert = UIAlertController(title: "解鎖失敗!", message: "請再試一次!", preferredStyle: .alert)
                    let action = UIAlertAction(title: "Try again", style: .cancel, handler: nil)
                        alert.addAction(action)
                        present(alert, animated: false, completion: clearPassword)
                    }
            }
        }
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        password = ""
        clearImage()
    }
}
