//
//  ChangeLanguageViewController.swift
//  TestInAppLanguage
//
//  Created Manish  Kumar on 02/03/19.
//  Copyright © 2019 Manish  Kumar. All rights reserved.
//
//

import UIKit

class ChangeLanguageViewController: UIViewController {

	lazy var dataManager = ChangeLanguageDataManager()
    
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
        backButton.setTitle("Back".localized, for: .normal)
    }

    
    @IBAction func backButtonClicked(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func changeLanguageButtonClicked(_ sender: UIButton) {
        let alert = UIAlertController(
            title: "Change Language",
            message: nil,
            preferredStyle: .actionSheet
        )
        
        func addActionLanguage(language: Language) {
            alert.addAction(
                UIAlertAction(
                    title: language.rawValue.localized,
                    style: UIAlertAction.Style.default,
                    handler: { _ in
                        Language.language = language
                })
            )
        }
        addActionLanguage(language: Language.english)
        addActionLanguage(language: Language.chineese)
        addActionLanguage(language: Language.portuguese)
        addActionLanguage(language: Language.dutch)
        addActionLanguage(language: Language.arabic)
        
        alert.addAction(
            UIAlertAction(
                title: "Cancel".localized,
                style: UIAlertAction.Style.cancel,
                handler: nil
            )
        )
        present(alert, animated: true, completion: nil)

    }
    
    
    
    
    // MARK: Deinitialization
    deinit {
       debugPrint("\(self) deinitialized")
    }
}

//MARK: Load from storyboard with dependency
extension ChangeLanguageViewController {
    class func load(with dependency: ChangeLanguageDependency?) -> ChangeLanguageViewController? {
        let storyboard = UIStoryboard(name: "ChangeLanguage", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "ChangeLanguageViewController") as? ChangeLanguageViewController else { return nil }
        
        // Do set up of values here.
        
        return vc
    }
}

//MARK: ChangeLanguageDataManagerProtocol
extension ChangeLanguageViewController : ChangeLanguageDataManagerProtocol {
    
    
}

