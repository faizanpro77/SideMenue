//
//  SettingsController.swift
//  SideMenue
//
//  Created by Yashom on 24/03/22.
//

import UIKit

class SettingsController: UIViewController {
    
    //MARK: - Properties
    var username: String?
    
    
    
    //MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        if let  username = username {
            print("username is \(username)")
        }
    }
    
    // MARK: - Selectors
    
    @objc func handleDismiss() {
        dismiss(animated: true,completion: nil)
    }
    
    //MARK: - Helper Functions
    
    func configureUI() {
        UINavigationBar.appearance().backgroundColor = .darkGray
        view.backgroundColor = .white
        //        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.prefersLargeTitles = true
//        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
        navigationItem.title = "Settings"
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "cross")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
        
        
        
    }
}
