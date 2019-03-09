//
//  NewHomeDataManager.swift
//  TestInAppLanguage
//
//  Created Manish  Kumar on 02/03/19.
//  Copyright © 2019 Manish  Kumar. All rights reserved.
//
//

import UIKit


protocol NewHomeDataManagerProtocol {
    
}

class NewHomeDataManager {
    var datamanagerDelegate: NewHomeDataManagerProtocol?
    var localDataFetch = NewHomeLocalDataManager()
    var serverDataFetch = NewHomeAPIDataManager()
    
    init() {}
    
    // Data fetch service methods goes here

}
