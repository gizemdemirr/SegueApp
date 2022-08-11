//
//  ViewController.swift
//  SegueApp
//
//  Created by Gizem on 10.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    
    @IBOutlet weak var nameText: UITextField!
    
//    appi ilk açtığında tetiklenir fakat başka sayfaya geçip döndüğünde tekrar çağrılmaz
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        lifecycle : yaşam döngüsü
        print("viewDidLoad function called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called")
    }
//    ekrandan çıkıp geri dönüldüğünde de tetiklenir
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        print("viewDidAppear function called")
    }
    
    var userName = ""


    @IBAction func nextButton(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
//    segue olmadan hemen önce yapılacak işlemler buraya yazılır
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
//            gidilen hedefi verir
//            as -- casting
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
    
}

