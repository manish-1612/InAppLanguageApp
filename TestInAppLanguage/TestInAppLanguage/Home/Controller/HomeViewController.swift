//
//  HomeViewController.swift
//  TestInAppLanguage
//
//  Created Manish  Kumar on 02/03/19.
//  Copyright © 2019 Manish  Kumar. All rights reserved.
//
//

import UIKit

class HomeViewController: UIViewController {

	lazy var dataManager = HomeDataManager()
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    // MARK: - View Life Cycle Methods
	override func viewDidLoad() {
        super.viewDidLoad()
        dataManager.datamanagerDelegate = self
        registerForNotification()
        setLanguage()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    func registerForNotification(){
        NotificationCenter.default.addObserver(self, selector: #selector(setLanguage), name: AppNotification.language.name, object: nil)
    }
    
    @objc func setLanguage(){
        UIView.appearance().semanticContentAttribute = Language.language.semantic

        label.text = "MainString".localized
        nextButton.setTitle("NextPage".localized, for: .normal)
    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        
        guard let homeNewVC = NewHomeViewController.load(with: nil) else{
            return
        }
        self.navigationController?.pushViewController(homeNewVC, animated: true)
    }
    
    
    // MARK: Deinitialization
    deinit {
       debugPrint("\(self) deinitialized")
    }
}

//MARK: Load from storyboard with dependency
extension HomeViewController {
    class func load(with dependency: HomeDependency? ) -> HomeViewController? {
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController else { return nil }
        
        // Do set up of values here.
        
        return vc
    }
}

//MARK: HomeDataManagerProtocol
extension HomeViewController : HomeDataManagerProtocol {
    
    
}

