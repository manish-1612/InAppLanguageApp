//
//  HomeDataManager.swift
//  TestInAppLanguage
//
//  Created Manish  Kumar on 02/03/19.
//  Copyright © 2019 Manish  Kumar. All rights reserved.
//
//

import UIKit


protocol HomeDataManagerProtocol {
    
}

class HomeDataManager {
    var datamanagerDelegate: HomeDataManagerProtocol?
    var localDataFetch = HomeLocalDataManager()
    var serverDataFetch = HomeAPIDataManager()
    
    init() {}
    
    // Data fetch service methods goes here

}
