//
//  NewHomeViewController.swift
//  TestInAppLanguage
//
//  Created Manish  Kumar on 02/03/19.
//  Copyright © 2019 Manish  Kumar. All rights reserved.
//
//

import UIKit

class NewHomeViewController: UIViewController {

	lazy var dataManager = NewHomeDataManager()
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!

    
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
        backButton.setTitle("Back".localized, for: .normal)
    }

    
    @IBAction func backButtonClicked(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        guard let newHome1VC = NewHome1ViewController.load(with: nil) else{
            return
        }
        self.navigationController?.pushViewController(newHome1VC, animated: true)
    }
    // MARK: Deinitialization
    deinit {
       debugPrint("\(self) deinitialized")
    }
}

//MARK: Load from storyboard with dependency
extension NewHomeViewController {
    class func load(with dependency: NewHomeDependency? ) -> NewHomeViewController? {
        let storyboard = UIStoryboard(name: "NewHome", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "NewHomeViewController") as? NewHomeViewController else { return nil }
        
        // Do set up of values here.
        
        return vc
    }
}

//MARK: NewHomeDataManagerProtocol
extension NewHomeViewController : NewHomeDataManagerProtocol {
    
    
}

