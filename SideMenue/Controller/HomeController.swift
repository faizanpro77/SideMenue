//
//  HomeController.swift
//  SideMenue
//
//  Created by Yashom on 19/03/22.
//

import UIKit

class HomeController : UIViewController {
    
    //MARK: - Properties
    var delegate: HomeControllerDelegate?
    
    //MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureNavigationBar()
    }
    
    //MARK:- Handdlers
    @objc func handleMenuToggle(){
        delegate?.handleMenuToggle(forMenuOption: nil)
       // print("Toggle menu..")
    }
    
    
    
    //MARK:- Handlers
    func configureNavigationBar() {
//        navigationController?.navigationBar.barTintColor = .darkGray
//        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Side Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named:"menu"), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
}
