//
//  ChangeLanguageDataManager.swift
//  TestInAppLanguage
//
//  Created Manish  Kumar on 02/03/19.
//  Copyright © 2019 Manish  Kumar. All rights reserved.
//
//

import UIKit


protocol ChangeLanguageDataManagerProtocol {
    
}

class ChangeLanguageDataManager {
    var datamanagerDelegate: ChangeLanguageDataManagerProtocol?
    var localDataFetch = ChangeLanguageLocalDataManager()
    var serverDataFetch = ChangeLanguageAPIDataManager()
    
    init() {}
    
    // Data fetch service methods goes here

}
